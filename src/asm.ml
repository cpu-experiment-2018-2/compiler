type reg = int

type iop = Mul | Add | Sub | Div

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
  | Op of iop * reg * reg * reg * Syntax.debug
  | Opi of iop * reg * reg * int * Syntax.debug
  | FOp of fop * reg * reg * reg * Syntax.debug
  | FOpi of fop * reg * reg * float * Syntax.debug
  | Load of reg * reg * int * Syntax.debug
  | Store of reg * reg * int * Syntax.debug
  | Cmpd of reg * reg * Syntax.debug
  | BEQ of label * Syntax.debug
  | BLE of label * Syntax.debug
  | Jump of label * Syntax.debug
  | In of reg * Syntax.debug
  | Out of reg * Syntax.debug

type 'reg routine = label * reg u list

type 'a program = 'a routine list * 'a routine list

type virtual_program = Syntax.var program

type t = int program

let rec emit (e: int u) =
  match e with
  | Op (op, rt, ra, rb, d) ->
      Printf.printf "\t%s %%r%d,%%r%d,%%r%d (* %s *)\n" (iop_to_str op) rt ra
        rb (Syntax.pos_to_str d.pos)
  | Opi (op, rt, ra, offset, d) ->
      Printf.printf "\t%si %%r%d,%%r%d,%d (* %s *)\n" (iop_to_str op) rt ra
        offset (Syntax.pos_to_str d.pos)
  | FOp (op, rt, ra, rb, d) ->
      Printf.printf "\t%s %%r%d,%%r%d,%%r%d (* %s *)\n" (fop_to_str op) rt ra
        rb (Syntax.pos_to_str d.pos)
  | FOpi (op, rt, ra, offset, d) -> failwith "not implemented fopi"
  | Load (rt, rs, offset, d) ->
      Printf.printf "\tload %%r%d,%%r%d,%d (* %s *)\n" rt rs offset
        (Syntax.pos_to_str d.pos)
  | Store (rt, rs, offset, d) ->
      Printf.printf "\tstore %%r%d,%%r%d,%d (* %s *)\n" rt rs offset
        (Syntax.pos_to_str d.pos)
  | Cmpd (ra, rb, d) ->
      Printf.printf "\tcmpd %%r%d,%%r%d(* %s *)\n" ra rb
        (Syntax.pos_to_str d.pos)
  | BEQ (label, d) ->
      Printf.printf "\tbeq %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | BLE (label, d) ->
      Printf.printf "\tble %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | Jump (label, d) ->
      Printf.printf "\tjump %s (* %s *)\n" label (Syntax.pos_to_str d.pos)
  | In (rt, d) ->
      Printf.printf "\tin %%r%d (* %s *)\n" rt (Syntax.pos_to_str d.pos)
  | Out (rt, d) ->
      Printf.printf "\tout %%r%d (* %s *)\n" rt (Syntax.pos_to_str d.pos)

let rec emit_routine ((label, es): int routine) =
  let _ = Printf.printf "%s:" label in
  List.iter (fun x -> emit x) es

let rec emit_program (global, main) =
  let _ = emit_routine main in
  let _ = emit_routine global in
  ()
