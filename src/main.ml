open Virtual

let show_ast = ref false

let show_typed = ref false

let show_knormal = ref false

let show_alpha = ref false

let show_anormal = ref false

let show_optimized = ref false

let show_closure = ref false

let show_virtual = ref false

let optimize p =
  p |> Inline.f |> ConstantFold.f |> CseElimination.f |> RemoveLet.f

let rec optimtime x p = if x = 0 then p else optimtime (x - 1) (optimize p)

let lexbuf oc l =
  let p = Parser.top_exp Lexer.token l in
  let _ = print_newline () in
  let _ = print_string "parse succeed\n" in
  let _ = if !show_ast then print_string (Syntax.show p) else () in
  let p = Typing.f p in
  let _ = print_string "type check succeed\n" in
  let _ = if !show_typed then print_string (Syntax.show p) else () in
  let p = Knormal.f p in
  let _ = print_string "\nknormalized\n" in
  let _ = if !show_knormal then Knormal.myprint p 0 else () in
  let p = Alpha.f p in
  let _ = print_string "\nalpha conversion\n" in
  let _ = if !show_alpha then Knormal.myprint p 0 else () in
  let p = Anormal.f p in
  let _ = print_string "\nanormalized\n" in
  let _ = if !show_anormal then Knormal.myprint p 0 else () in
  let p = optimtime 0 p in
  let _ = print_string "\noptimized\n" in
  let _ = if !show_optimized then Knormal.myprint p 0 else () in
  let p = Closure.f p in
  let _ = print_string "closure conversion succeed\n" in
  let _ = if !show_closure then print_string (Closure.show (fst p)) else () in
  let p, func = Virtual.h p in
  let _ = print_string "to virtual succeed\n" in
  let _ = if !show_virtual then print_string (Virtual.show_k p) else () in
  let _ =
    if !show_virtual then
      List.iter
        (fun x ->
          print_string x.label ;
          print_newline () ;
          print_string (Virtual.show_k x.body) )
        func
    else ()
  in
  let p'' = Regalloc.top (p, func) in
  Regalloc.emit p'' 3 (500 * 1000) oc

(* Asm.asm_emit p func oc *)

let init = 0

let _ = print_string "usage: ./compiler filename\n\toutputed to filename.s\n"

let _ =
  let filename = Sys.argv.(1) in
  let ic = open_in filename in
  let oname = filename ^ ".st" in
  let oc = open_out oname in
  let _ = lexbuf oc (Lexing.from_channel ic) in
  print_string ("success\nassembly is outputed to " ^ oname)
