let lexbuf outchan l =
  let p = Parser.top_exp Lexer.token l in
  let _ = print_string (Syntax.show p) in
  let _ = print_newline () in
  let _ = print_string "parse succeed\n" in
  let p = Typing.f p in
  let _ = print_string "type check succeed\n" in
  let p = Knormal.f p in
  let _ = print_string "knormalized\n" in
  let p = Alpha.f p in
  let _ = print_string "alpha conversion\n" in
  let p = Closure.f p in
  print_string (Closure.show p)

let _ = lexbuf stdout (Lexing.from_channel stdin)
