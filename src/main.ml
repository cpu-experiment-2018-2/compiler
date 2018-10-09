let lexbuf oc l =
  let p = Parser.top_exp Lexer.token l in
  let _ = print_newline () in
  let _ = print_string "parse succeed\n" in
  let p = Typing.f p in
  let _ = print_string "type check succeed\n" in
  let p = Knormal.f p in
  let _ = print_string "knormalized\n" in
  let p = Alpha.f p in
  let _ = print_string "alpha conversion\n" in
  let p = Closure.f p in
  let _ = print_string "closure conversion succeed\n" in
  let p, func = Virtual.f p in
  let _ = print_string (Virtual.show p) in
  let _ = Asm.asm_var_emit p func in
  Asm.asm_emit p func oc

let _ = print_string "usage: ./compiler filename\n\toutputed to filename.s"

let _ =
  let filename = Sys.argv.(1) in
  let ic = open_in filename in
  let oname = filename ^ ".s" in
  let oc = open_out oname in
  let _ = lexbuf oc (Lexing.from_channel ic) in
  print_string "success"
