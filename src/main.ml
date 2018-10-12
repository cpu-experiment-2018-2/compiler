let show_ast = true

let show_typed = false

let show_knormal = true

let show_alpha = true

let show_closure = false

let show_virtual = true

let lexbuf oc l =
  let p = Parser.top_exp Lexer.token l in
  let _ = print_newline () in
  let _ = print_string "parse succeed\n" in
  let _ = if show_ast then print_string (Syntax.show p) else () in
  let p = Typing.f p in
  let _ = print_string "type check succeed\n" in
  let _ = if show_typed then print_string (Syntax.show p) else () in
  let p = Knormal.f p in
  let _ = print_string "\nknormalized\n" in
  let _ = if show_knormal then Knormal.myprint p 0 else () in
  let p = Alpha.f p in
  let _ = print_string "\nalpha conversion\n" in
  let _ = if show_alpha then Knormal.myprint p 0 else () in
  let p = Closure.f p in
  let _ = print_string "closure conversion succeed\n" in
  let _ = if show_closure then print_string (Closure.show (fst p)) else () in
  let p, func = Virtual.f p in
  let _ = print_string "to virtual succeed\n" in
  let _ = if show_virtual then print_string (Virtual.show p) else () in
  Asm.asm_emit p func oc

let _ = print_string "usage: ./compiler filename\n\toutputed to filename.s\n"

let _ =
  let filename = Sys.argv.(1) in
  let ic = open_in filename in
  let oname = filename ^ ".s" in
  let oc = open_out oname in
  let _ = lexbuf oc (Lexing.from_channel ic) in
  print_string ("success\nassembly is outputed to " ^ oname)
