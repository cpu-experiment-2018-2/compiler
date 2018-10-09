let lexbuf outchan l =
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
  let _ = print_string "\n\tjump main\n" in
  let _ = Asm.emit_normal Virtual.globals in
  let _ = Asm.emit_normal func in
  let _ = print_string "main:\n" in
  let p =
    Asm.register_alloc_tmp (Asm.virtual_to_var p (func @ Virtual.globals))
  in
  let _ = List.iter Asm.emit p in
  ()

let _ = lexbuf stdout (Lexing.from_channel stdin)
