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
  | Cmpf of 'reg * 'reg * Syntax.debug
  | BEQ of label * Syntax.debug
  | BLE of label * Syntax.debug
  | BLT of label * Syntax.debug
  | Jump of label * Syntax.debug
  | SetLabel of string * labelType * Syntax.debug
  | BLR
  | BLRR of 'reg
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
      Printf.fprintf oc "\tlil %s,%s (* %s *)\n" reg x
        (Syntax.pos_to_str d.pos)
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
  | Cmpf (ra, rb, d) ->
       Printf.fprintf oc "\tcmpf %s,%s(* %s *)\n" ra rb
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
  | BLT (label, d) ->
      Printf.fprintf oc "\tblt %s (* %s *)\n" (ch label)
        (Syntax.pos_to_str d.pos)

  | Jump (label, d) ->
      Printf.fprintf oc "\tjump %s (* %s *)\n" (ch label)
        (Syntax.pos_to_str d.pos)
  | BLR -> Printf.fprintf oc "\tblr\n"
  | BLRR v -> Printf.fprintf oc "\tblrr %s\n" v
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
  | Cmpf (x, y, d) -> Cmpf (f x, f y, d)
  | BEQ (label, d) -> BEQ (label, d)
  | BLE (label, d) -> BLE (label, d)
  | BLT (label, d) -> BLT (label, d)
  | BL (label, d) -> BL (label, d)
  | Jump (label, d) -> Jump (label, d)
  | SetLabel (label, t, d) -> SetLabel (label, t, d)
  | BLRR x -> BLRR (f x)
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
