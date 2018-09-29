let lexbuf outchan l =
  let p = Parser.top_exp Lexer.token l in
  let _ = print_string "parse succeed\n" in
  let p = Typing.f p in
  let _ = print_string "type check succeed\n" in
  print_string (Syntax.show p)

let _ = lexbuf stdout (Lexing.from_channel stdin)
