open Syntax
open Virtual

type iop = Mul | Add | Sub | Div

let tmp_debug = {pos= Global}

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

type 'reg u =
  | Nop of Syntax.debug
  | Op of iop * 'reg * 'reg * 'reg * Syntax.debug
  | Li of 'reg * int * Syntax.debug
  | Opi of iop * 'reg * 'reg * int * Syntax.debug
  | FOp of fop * 'reg * 'reg * 'reg * Syntax.debug
  | FOpi of fop * 'reg * 'reg * float * Syntax.debug
  | Load of 'reg * 'reg * int * Syntax.debug
  | Store of 'reg * 'reg * int * Syntax.debug
  | Cmpd of 'reg * 'reg * Syntax.debug
  | BEQ of label * Syntax.debug
  | BLE of label * Syntax.debug
  | Jump of label * Syntax.debug
  | SetLabel of string * Syntax.debug
  | In of 'reg * Syntax.debug
  | Out of 'reg * Syntax.debug
  | BLR
  | BL of label * Syntax.debug

let lr = 31

let fp = 30

type var_or_reg = Reg of int | Var of var

type pro = var u list

type 'reg routine = label * 'reg u list

type 'reg p = 'reg routine list

type 'a program = 'a p * 'a p

type var_program = Syntax.var program

type t = int program

let move v1 v2 d = Opi (Add, v1, v2, 0, d)

let rec emit_var (e: var u) =
  match e with
  | Nop d -> Printf.printf "\tnop (* %s *)" (Syntax.pos_to_str d.pos)
  | Li (reg, x, d) ->
      Printf.printf "\tli %%r%s,%d (* %s *)\n" reg.name x
        (Syntax.pos_to_str d.pos)
  | Op (op, rt, ra, rb, d) ->
      Printf.printf "\t%s %%r%s,%%r%s,%%r%s (* %s *)\n" (iop_to_str op) rt.name
        ra.name rb.name (Syntax.pos_to_str d.pos)
  | Opi (op, rt, ra, offset, d) ->
      Printf.printf "\t%si %%r%s,%%r%s,%d (* %s *)\n" (iop_to_str op) rt.name
        ra.name offset (Syntax.pos_to_str d.pos)
  | FOp (op, rt, ra, rb, d) ->
      Printf.printf "\t%s %%r%s,%%r%s,%%r%s (* %s *)\n" (fop_to_str op) rt.name
        ra.name rb.name (Syntax.pos_to_str d.pos)
  | FOpi (op, rt, ra, offset, d) -> failwith "not implemented fopi"
  | SetLabel (label, d) ->
      Printf.printf "%s : (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | Load (rt, rs, offset, d) ->
      Printf.printf "\tload %%r%s,%%r%s,%d (* %s *)\n" rt.name rs.name offset
        (Syntax.pos_to_str d.pos)
  | Store (rt, rs, offset, d) ->
      Printf.printf "\tstore %%r%s,%%r%s,%d (* %s *)\n" rt.name rs.name offset
        (Syntax.pos_to_str d.pos)
  | Cmpd (ra, rb, d) ->
      Printf.printf "\tcmpd %%r%s,%%r%s(* %s *)\n" ra.name rb.name
        (Syntax.pos_to_str d.pos)
  | BEQ (label, d) ->
      Printf.printf "\tbeq %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | BLE (label, d) ->
      Printf.printf "\tble %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | Jump (label, d) ->
      Printf.printf "\tjump %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | In (rt, d) ->
      Printf.printf "\tin %%r%s (* %s *)\n" rt.name (Syntax.pos_to_str d.pos)
  | Out (rt, d) ->
      Printf.printf "\tout %%r%s (* %s *)\n" rt.name (Syntax.pos_to_str d.pos)
  | BLR -> Printf.printf "\tblr\n"
  | BL (label, d) ->
      Printf.printf "\tbl %s (* %s *)\n" label (Syntax.pos_to_str d.pos)

let rec emit oc (e: int u) =
  match e with
  | Nop d -> Printf.fprintf oc "\tnop (* %s *)" (Syntax.pos_to_str d.pos)
  | Li (reg, x, d) ->
      Printf.fprintf oc "\tli %%r%d,%d (* %s *)\n" reg x
        (Syntax.pos_to_str d.pos)
  | Op (op, rt, ra, rb, d) ->
      Printf.fprintf oc "\t%s %%r%d,%%r%d,%%r%d (* %s *)\n" (iop_to_str op) rt
        ra rb (Syntax.pos_to_str d.pos)
  | Opi (op, rt, ra, offset, d) ->
      Printf.fprintf oc "\t%si %%r%d,%%r%d,%d (* %s *)\n" (iop_to_str op) rt ra
        offset (Syntax.pos_to_str d.pos)
  | FOp (op, rt, ra, rb, d) ->
      Printf.fprintf oc "\t%s %%r%d,%%r%d,%%r%d (* %s *)\n" (fop_to_str op) rt
        ra rb (Syntax.pos_to_str d.pos)
  | FOpi (op, rt, ra, offset, d) -> failwith "not implemented fopi"
  | SetLabel (label, d) ->
      Printf.fprintf oc "%s : (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | Load (rt, rs, offset, d) ->
      Printf.fprintf oc "\tload %%r%d,%%r%d,%d (* %s *)\n" rt rs offset
        (Syntax.pos_to_str d.pos)
  | Store (rt, rs, offset, d) ->
      Printf.fprintf oc "\tstore %%r%d,%%r%d,%d (* %s *)\n" rt rs offset
        (Syntax.pos_to_str d.pos)
  | Cmpd (ra, rb, d) ->
      Printf.fprintf oc "\tcmpd %%r%d,%%r%d(* %s *)\n" ra rb
        (Syntax.pos_to_str d.pos)
  | BEQ (label, d) ->
      Printf.fprintf oc "\tbeq %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | BLE (label, d) ->
      Printf.fprintf oc "\tble %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | Jump (label, d) ->
      Printf.fprintf oc "\tjump %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | In (rt, d) ->
      Printf.fprintf oc "\tin %%r%d (* %s *)\n" rt (Syntax.pos_to_str d.pos)
  | Out (rt, d) ->
      Printf.fprintf oc "\tout %%r%d (* %s *)\n" rt (Syntax.pos_to_str d.pos)
  | BLR -> Printf.fprintf oc "\tblr\n"
  | BL (label, d) ->
      Printf.fprintf oc "\tbl %s (* %s *)\n" label (Syntax.pos_to_str d.pos)

(* let rec emit_routine ( es : pro) =
  List.iter (fun x -> emit x) es

let rec emit_program (global, main) =
  let _ = emit_routine main in
  let _ = emit_routine global in *)
let lr = {name= "lr"; debug= tmp_debug; ty= TyInt}

let rec apply f = function
  | Nop x -> Nop x
  | Li (var, x, d) -> Li (f var, x, d)
  | Opi (iop, x, y, z, d) -> Opi (iop, f x, f y, z, d)
  | Op (op, x, y, z, d) -> Op (op, f x, f y, f z, d)
  | FOp (op, x, y, z, d) -> FOp (op, f x, f y, f z, d)
  | FOpi (op, x, y, z, d) -> FOpi (op, f x, f y, z, d)
  | Load (x, y, z, d) -> Load (f x, f y, z, d)
  | Store (x, y, z, d) -> Store (f x, f y, z, d)
  | Cmpd (x, y, d) -> Cmpd (f x, f y, d)

let rec conv (order: debug Virtual.u) var functions =
  match order with
  | Nop x -> [Nop x]
  | Li (x, d) -> [Li (var, x, d)]
  | FLi (x, d) -> failwith "yet implemented fli"
  | Op (Primitive Add, [x; y], d) -> [Op (Add, var, x, y, d)]
  | Op (Primitive Sub, [x; y], d) -> [Op (Sub, var, x, y, d)]
  | Op (Primitive Mul, [x; y], d) -> [Op (Mul, var, x, y, d)]
  | Op (Primitive Div, [x; y], d) -> [Op (Div, var, x, y, d)]
  | Op (Primitive FMul, [x; y], d) -> [Op (Mul, var, x, y, d)]
  | Op (Primitive FAdd, [x; y], d) -> [Op (Add, var, x, y, d)]
  | Op (Primitive FSub, [x; y], d) -> [Op (Sub, var, x, y, d)]
  | Op (Primitive FDiv, [x; y], d) -> [Op (Div, var, x, y, d)]
  | Load (t, s, d) -> [Load (t, s, 0, d)]
  | Store (t, s, d) -> [Store (t, s, 0, d)]
  | If (cmp, x, y, tr, fa, d) ->
      let sy = "label" ^ Syntax.genvar () in
      let t = "label" ^ Syntax.genvar () in
      let p1 =
        SetLabel (sy ^ ".if.true", d) :: virtual_to_var tr functions var
      in
      let p2 =
        (SetLabel (sy ^ ".if.false", d) :: virtual_to_var fa functions var)
        @ [Jump (t, d)]
      in
      Cmpd (x, y, d)
      :: ( match cmp with
         | EQ -> BEQ (sy ^ ".if.true", d)
         | LE -> BLE (sy ^ ".if.true", d) )
      :: (p2 @ p1 @ [SetLabel (t, d)])
  | Var (x, d) -> (* move *)
                  [Opi (Add, var, x, 0, d)]
  | CallDir (label, args, d) ->
      let func = List.find (fun x -> x.label = label) functions in
      let ops = List.map2 (fun x y -> Opi (Add, x, y, 0, d)) func.args args in
      ops @ [BL (label, d)]
  | Out (reg, d) -> [Out (reg, d)]
  | In (reg, d) -> [In (reg, d)]
  | _ -> failwith "yet implemented"

and virtual_to_var e functions ret =
  match e with
  | Let (var, order, v) ->
      conv order var functions @ virtual_to_var v functions ret
  | Ans order ->
      (* let ret = {name= "ret"; debug= tmp_debug; ty= TyInt} in *)
      conv order ret functions

let ( >>= ) (name, env) f = f (name, env)

let register_alloc_tmp =
  let r = ref [] in
  let find_or =
    let c = ref (-1) in
    fun name ->
      match List.find_opt (fun (x, y) -> x = name.name) !r with
      | Some (x, y) -> y
      | None ->
          c := !c + 1 ;
          r := (name.name, !c) :: !r ;
          !c
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
        | In (a, d) -> In (find_or a, d)
        | Out (a, d) -> Out (find_or a, d)
        | Nop x -> Nop x
        | BLR -> BLR
        | Nop d -> Nop d
        | BEQ (s, d) -> BEQ (s, d)
        | BLE (s, d) -> BLE (s, d)
        | Jump (s, d) -> Jump (s, d)
        | BL (s, d) -> BL (s, d)
        | SetLabel (s, d) -> SetLabel (s, d) )
        :: f y
  in
  f

let emit_functions functions =
  let lis =
    List.map
      (fun x ->
        (SetLabel (x.label, tmp_debug) :: virtual_to_var x.body functions x.ret)
        @ [BLR] )
      functions
  in
  List.iter (List.iter emit_var) lis

let emit_normal functions oc =
  let lis =
    List.map
      (fun x ->
        (SetLabel (x.label, tmp_debug) :: virtual_to_var x.body functions x.ret)
        @ [BLR] )
      functions
  in
  let lis = List.map register_alloc_tmp lis in
  List.iter (List.iter (emit oc)) lis

let asm_var_emit p func =
  let _ = print_string "\tjump main\n" in
  let _ = emit_functions Virtual.globals in
  let _ = emit_functions func in
  let _ = print_string "main:\n" in
  let p = virtual_to_var p (func @ Virtual.globals) (tmp_var ()) in
  let _ = List.iter emit_var p in
  print_string "\tend"

let asm_emit p func oc =
  let _ = Printf.fprintf oc "\tjump main\n" in
  let _ = emit_normal Virtual.globals oc in
  let _ = emit_normal func oc in
  let _ = Printf.fprintf oc "main:\n" in
  let var = {name= Syntax.genvar (); debug= tmp_debug; ty= TyInt} in
  let p = register_alloc_tmp (virtual_to_var p (func @ Virtual.globals) var) in
  let _ = List.iter (emit oc) p in
  Printf.fprintf oc "\tend"
