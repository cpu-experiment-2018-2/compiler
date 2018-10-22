open Syntax
open Virtual

external getint : float -> int = "getint"

type iop = Mul | Add | Sub | Div


let alpha () = {name= Syntax.genvar (); debug= tmp_debug; ty= TyInt}

let iop_to_str = function
  | Mul -> "mul"
  | Add -> "add"
  | Sub -> "sub"
  | Div -> "div"

type fop = Mul | Add | Sub | Div

let fop_to_str = function
  | Mul -> "fmul"
  | Add -> "fadd"
  | Sub -> "fsub"
  | Div -> "fdiv"

type label = string

type labelType = FunCall | Other [@@deriving show]

type 'reg u =
  | Nop of Syntax.debug
  | Op of iop * 'reg * 'reg * 'reg * Syntax.debug
  | Li of 'reg * int * Syntax.debug
  | Lil of 'reg * string * Syntax.debug
  | Opi of iop * 'reg * 'reg * int * Syntax.debug
  | FOp of fop * 'reg * 'reg * 'reg * Syntax.debug
  | FOpi of fop * 'reg * 'reg * float * Syntax.debug
  | Load of 'reg * 'reg * int * Syntax.debug
  | Store of 'reg * 'reg * int * Syntax.debug
  | Cmpd of 'reg * 'reg * Syntax.debug
  | BEQ of label * Syntax.debug
  | BLE of label * Syntax.debug
  | Jump of label * Syntax.debug
  | SetLabel of string * labelType * Syntax.debug
  | BLR
  | BL of label * Syntax.debug

type var_or_reg = Reg of int | Var of var

let linkreg = 31

let framep = 2

let stackp = 1

let move reg1 reg2 = Opi (Add, reg1, reg2, 0, tmp_debug)

let proepi d localsize =
  ( [ move framep stackp
    ; Store (linkreg, framep, 1, d)
    ; Opi (Add, stackp, stackp, localsize + 2, d)
    ; Store (framep, stackp, 0, d) ]
  , [ Load (linkreg, framep, 1, d)
    ; Opi (Add, stackp, framep, 0, d)
    ; Load (framep, framep, 0, d)
    ; BLR ] )

let evacuate local saved =
  let a, b =
    ( List.fold_left
        (fun (counter, orders) var ->
          ( counter + 1
          , if not (List.exists (fun x -> x.name = var.name) saved) then
              (var.name, Store (Var var, Reg framep, counter, var.debug))
              :: orders
            else orders ) )
        (2, []) local
    , List.fold_left
        (fun (counter, orders) var ->
          ( counter + 1
          , (var.name, Load (Var var, Reg framep, counter, var.debug))
            :: orders ) )
        (2, []) local )
  in
  (snd a, snd b)

let move v1 v2 d = Opi (Add, v1, v2, 0, d)

let rec record (e: string u list) =
  let f acc s =
    match s with SetLabel (label, Other, l) -> label :: acc | _ -> acc
  in
  let ans = List.fold_left f [] e in
  fun x -> if List.exists (fun y -> x = y) ans then "@@" ^ x else x

let rec emit_sugar oc ch (e: string u) =
  match e with
  | Nop d -> ()
  (*  Printf.fprintf oc "\tnop (* %s *)" (Syntax.pos_to_str d.pos) *)
  | Li (reg, x, d) ->
      Printf.fprintf oc "\tli %s,%d (* %s *)\n" reg x (Syntax.pos_to_str d.pos)
  | Lil (reg, x, d) ->
      Printf.fprintf oc "\tlil %s,%s (* %s *)\n" reg x (Syntax.pos_to_str d.pos)

  | Op (op, rt, ra, rb, d) ->
      Printf.fprintf oc "\t%s %s,%s,%s (* %s *)\n" (iop_to_str op) rt ra rb
        (Syntax.pos_to_str d.pos)
  | Opi (op, rt, ra, offset, d) ->
      Printf.fprintf oc "\t%si %s,%s,%d (* %s *)\n" (iop_to_str op) rt ra
        offset (Syntax.pos_to_str d.pos)
  | FOp (op, rt, ra, rb, d) ->
      Printf.fprintf oc "\t%s %s, %s,%s (* %s *)\n" (fop_to_str op) rt ra rb
        (Syntax.pos_to_str d.pos)
  | FOpi (op, rt, ra, offset, d) -> failwith "not implemented fopi"
  | SetLabel (label, Other, d) ->
      Printf.fprintf oc "@@%s : (* %s %s *)\n" label "Local Label"
        (Syntax.pos_to_str d.pos)
  | SetLabel (label, FunCall, d) ->
      Printf.fprintf oc "%s : (* %s %s *)\n" label "Global Fun"
        (Syntax.pos_to_str d.pos)
  | Load (rt, rs, offset, d) ->
      Printf.fprintf oc "\tload %s, %s ,%d (* %s *)\n" rt rs offset
        (Syntax.pos_to_str d.pos)
  | Store (rt, rs, offset, d) ->
      Printf.fprintf oc "\tstore %s,%s, %d (* %s *)\n" rt rs offset
        (Syntax.pos_to_str d.pos)
  | Cmpd (ra, rb, d) ->
      Printf.fprintf oc "\tcmpd %s,%s(* %s *)\n" ra rb
        (Syntax.pos_to_str d.pos)
  | BEQ (label, d) ->
      Printf.fprintf oc "\tbeq %s (* %s *)\n" (ch label)
        (Syntax.pos_to_str d.pos)
  | BLE (label, d) ->
      Printf.fprintf oc "\tble %s (* %s *)\n" (ch label)
        (Syntax.pos_to_str d.pos)
  | Jump (label, d) ->
      Printf.fprintf oc "\tjump %s (* %s *)\n" (ch label)
        (Syntax.pos_to_str d.pos)
  | BLR -> Printf.fprintf oc "\tblr\n"
  | BL (label, d) ->
      Printf.fprintf oc "\tbl %s (* %s *)\n" (ch label)
        (Syntax.pos_to_str d.pos)

let rec apply f = function
  | Nop x -> Nop x
  | Li (var, x, d) -> Li (f var, x, d)
  | Lil (var, x, d) -> Lil (f var, x, d)
  | Opi (iop, x, y, z, d) -> Opi (iop, f x, f y, z, d)
  | Op (op, x, y, z, d) -> Op (op, f x, f y, f z, d)
  | FOp (op, x, y, z, d) -> FOp (op, f x, f y, f z, d)
  | FOpi (op, x, y, z, d) -> FOpi (op, f x, f y, z, d)
  | Load (x, y, z, d) -> Load (f x, f y, z, d)
  | Store (x, y, z, d) -> Store (f x, f y, z, d)
  | Cmpd (x, y, d) -> Cmpd (f x, f y, d)
  | BEQ (label, d) -> BEQ (label, d)
  | BLE (label, d) -> BLE (label, d)
  | BL (label, d) -> BL (label, d)
  | Jump (label, d) -> Jump (label, d)
  | SetLabel (label, t, d) -> SetLabel (label, t, d)
  | BLR -> BLR

let var2var_or_im = apply (fun x -> Var x)

let reg2regstr =
  apply (fun x ->
      match x with
      | 1 -> "%sp"
      | 2 -> "%fp"
      | 31 -> "%lr"
      | _ -> "%r" ^ string_of_int x )

let al = alpha ()

let rec conv (order: (debug, var) Virtual.u) var local saved =
  let change = List.map var2var_or_im in
  match order with
  | Nop x -> change [Nop x]
  | Li (x, d) -> change [Li (var, x, d)]
  | FLi (x, d) -> change [Li (var, getint x, d)]
  | Op (Primitive Add, [x; y], d) -> change [Op (Add, var, x, y, d)]
  | Op (Primitive Sub, [x; y], d) -> change [Op (Sub, var, x, y, d)]
  | Op (Primitive Mul, [x; y], d) -> change [Op (Mul, var, x, y, d)]
  | Op (Primitive Div, [x; y], d) -> change [Op (Div, var, x, y, d)]
  | Op (Primitive FMul, [x; y], d) -> change [FOp (Mul, var, x, y, d)]
  | Op (Primitive FAdd, [x; y], d) -> change [FOp (Add, var, x, y, d)]
  | Op (Primitive FSub, [x; y], d) -> change [FOp (Sub, var, x, y, d)]
  | Op (Primitive FDiv, [x; y], d) -> change [FOp (Div, var, x, y, d)]
  | Op (Primitive Neg, [x], d) ->
      change [Li (var, 0, d); Op (Sub, var, var, x, d)]
  | Op (Primitive Not, [x], d) ->
      conv (CallDir ("not", [x], d)) var local saved
  | Op (Projection (idx, all, ty), [tup], d) -> change [Load (var, tup, idx, d)]
  | Op (ArrayPut ty, [arr; idx; elem], d) ->
      change [Op (Add, al, arr, idx, d); Store (elem, al, 0, d)]
  | Op (ArrayGet ty, [arr; idx], d) ->
      change [Op (Add, al, arr, idx, d); Load (var, al, 0, d)]
  | Load (t, s, off, d) -> change [Load (t, s, off, d)]
  | Store (t, s, off, d) -> change [Store (t, s, off, d)]
  | If (cmp, x, y, tr, fa, d) ->
      let sy = "label" ^ Syntax.genvar () in
      let t = "label" ^ Syntax.genvar () in
      let p1 =
        SetLabel (sy ^ ".if.true", Other, d)
        :: virtual_to_var tr var local saved
      in
      let p2 =
        SetLabel (sy ^ ".if.false", Other, d)
        :: virtual_to_var fa var local saved
        @ [Jump (t, d)]
      in
      Cmpd (Var x, Var y, d)
      :: ( match cmp with
         | EQ -> BEQ (sy ^ ".if.true", d)
         | LE -> BLE (sy ^ ".if.true", d) )
      :: (p2 @ p1 @ [SetLabel (t, Other, d)])
  | Var (x, d) -> change [Opi (Add, var, x, 0, d)]
  | CallDir (label, args, d) ->
      let _ = Printf.printf "call %s\n" label in
      let before, after = evacuate local saved in
      let b1, a1 = (List.map snd before, List.map snd after) in
      let c = ref 2 in
      let find_var var local =
        let rec inner li acc =
          match li with
          | [] -> failwith ("unsaved local variables " ^ var.name)
          | x :: y -> if x.name = var.name then acc else inner y (acc + 1)
        in
        inner local 2
      in
      let ops =
        List.map
          (fun y ->
            c := !c + 1 ;
            Load (Reg !c, Reg framep, find_var y local, d) )
          args
      in
      b1 @ ops
      @ [BL (label, d)]
      @ [Opi (Add, Var var, Reg 3, 0, d)]
      @ ( match List.find_opt (fun (x, y) -> x = var.name) before with
        | Some (x, y) -> [y]
        | None -> [] )
      @ a1
  | _ -> failwith (Virtual.show_tmp order)

and virtual_to_var e ret local saved =
  match e with
  | Let (var, order, v) -> (
    match order with
    | CallDir _ ->
        conv order var local saved @ virtual_to_var v ret (local @ [var]) local
    | _ ->
        conv order var local saved @ virtual_to_var v ret (local @ [var]) saved
    )
  | Ans order -> conv order ret local saved

let ( >>= ) (name, env) f = f (name, env)

let register_alloc_fun (func: Virtual.fundef_t) =
  let c = ref 2 in
  let r = ref [] in
  let find_or name =
    match name with
    | Var name -> (
      match List.find_opt (fun (x, y) -> x = name.name) !r with
      | Some (x, y) -> y
      | None ->
          c := !c + 1 ;
          let _ = if !c = 31 then c := 32 else () in
          r := (name.name, !c) :: !r ;
          !c )
    | Reg x -> x
  in
  let _ = List.map (fun x -> find_or (Var x)) func.args in
  let _ = (fun x -> find_or (Var x)) func.ret in
  let pro, epi = proepi tmp_debug func.local in
  let body =
    List.map (apply find_or) (virtual_to_var func.body func.ret func.args [])
  in
  let body =
    (SetLabel (func.label, FunCall, tmp_debug) :: pro)
    @ body
    @ [move 3 (find_or (Var func.ret)) tmp_debug]
    @ epi
  in
  body

let register_alloc_tmp () =
  let c = ref 2 in
  let r = ref [] in
  let find_or name =
    match name with
    | Var name -> (
      match List.find_opt (fun (x, y) -> x = name.name) !r with
      | Some (x, y) -> y
      | None ->
          c := !c + 1 ;
          let _ = if !c = 31 then c := 32 else () in
          r := (name.name, !c) :: !r ;
          !c )
    | Reg x -> x
  in
  let rec f l =
    match l with
    | [] -> []
    | x :: y ->
        ( match x with
        | Op (op, a, b, c, d) -> Op (op, find_or a, find_or b, find_or c, d)
        | Opi (op, a, b, n, d) -> Opi (op, find_or a, find_or b, n, d)
        | FOp (op, a, b, c, d) -> FOp (op, find_or a, find_or b, find_or c, d)
        | FOpi (op, a, b, n, d) -> FOpi (op, find_or a, find_or b, n, d)
        | Li (r, num, d) -> Li (find_or r, num, d)
        | Load (a, b, n, d) -> Load (find_or a, find_or b, n, d)
        | Store (a, b, n, d) -> Store (find_or a, find_or b, n, d)
        | Cmpd (a, b, d) -> Cmpd (find_or a, find_or b, d)
        | Nop x -> Nop x
        | BLR -> BLR
        | Nop d -> Nop d
        | BEQ (s, d) -> BEQ (s, d)
        | BLE (s, d) -> BLE (s, d)
        | Jump (s, d) -> Jump (s, d)
        | BL (s, d) -> BL (s, d)
        | SetLabel (s, t, d) -> SetLabel (s, t, d) )
        :: f y
  in
  fun l ->
    let ans = f l in
    (ans, !r)

let emit_normal functions oc =
  (* let lis =
    List.map
      (fun x ->
        let pro, epi = proepi tmp_debug (List.length x.local) in
        (SetLabel (x.label, FunCall, tmp_debug)
        :: (pro @ virtual_to_var x.body functions x.ret x.local)  
        @ [move (Reg(3)) (Var(x.ret))] @  epi , x))
      functions
  in
  let ans = List.map (fun (orders,func) -> 
      let ans,map = (register_alloc_tmp()) orders
      in 
      (ans,funcmap map func)
      )  
      lis in
  let lis = List.map fst ans in  
  let newfunc = List.map snd ans in  *)
  let lis = List.map register_alloc_fun functions in
  let lis = List.map (List.map reg2regstr) lis in
  let ch = record (List.concat lis) in
  List.iter (List.iter (emit_sugar oc ch)) lis

let asm_emit p func oc =
  (* let _ = Printf.fprintf oc "\tjump main\n" in *)
  (* let _ = emit_normal Virtual.globals oc in *)
  (* let newfunc = emit_normal (Virtual.globals @ func) oc in *)
  let newfunc = emit_normal func oc in
  let local = collect_local p in
  let var = {name= Syntax.genvar (); debug= tmp_debug; ty= TyInt} in
  let offset = 3 in
  let memory_start = 500 * 1000 in
  let local = local + 3 in
  let _ = Printf.fprintf oc "main:\n" in
  let _ = Printf.fprintf oc "\tli %%fp,%d\n" offset in
  let _ = Printf.fprintf oc "\tli %%r31,%d\n" 0 in
  let _ = Printf.fprintf oc "\tli %%r0,%d\n" 0 in
  let _ = Printf.fprintf oc "\tli %%r3,%d\n" memory_start in
  let _ = Printf.fprintf oc "\tstore %%r3, %%r0,%d\n" 0 in
  let _ = Printf.fprintf oc "\tli %%sp,%d\n" (local + 2 + offset) in
  let _ = Printf.fprintf oc "\tstore %%fp,%%sp,0\n" in
  let _ = Printf.fprintf oc "\tstore %%r31,%%fp,1\n" in
  let p = register_alloc_tmp () (virtual_to_var p var [] []) in
  let p = List.map reg2regstr (fst p) in
  let ch = record p in
  let _ = List.iter (emit_sugar oc ch) p in
  Printf.fprintf oc "\tend"
