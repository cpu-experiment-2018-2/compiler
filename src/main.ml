let lexbuf outchan l =
  let p = Parser.top_exp Lexer.token l in
  let _ = print_string (Syntax.show p) in
  let _ = print_string "parse succeed\n" in
  let p = Typing.f p in
  let _ = print_string "type check succeed\n" in
  let p = Knormal.f p in
  let _ = print_string "knormalized\n" in
  print_string (Knormal.show p)

let _ = lexbuf stdout (Lexing.from_channel stdin)
