open Virtual

let hp  = 2
let global_name = ref "g.ml"

let x86 = ref false

let fname = ref ""

let llvm_ir = ref false
let noopt = ref false


let allow_partial = ref false

let show_ast = ref false

let show_typed = ref false

let show_knormal = ref false

let show_alpha = ref false

let show_anormal = ref false

let show_afeter_lambda_lifting = ref false

let show_optimized = ref false

let show_closure = ref false 

let show_virtual = ref false

let optimize p =
  p |> Inline.f |> ConstantFold.f |> CseElimination.f |> RemoveLet.f

let opt_after_closure p = p

let rec optimtime x p = if x = 0 then p else optimtime (x - 1) (optimize p)

let lexbuf oc l =

  let p = Parser.top_exp Lexer.token l in
 (* global *)
  let g = if Sys.file_exists !global_name then
  let ic = open_in !global_name in
  let l =   (Lexing.from_channel ic) in
  let g = Parser.top_exp Lexer.token l in
  let g = Typing.f g in
  let g = Knormal.f g in
   HpAlloc.f hp g 
  else
      (hp,Syntax.VarMap.empty)
  in
 (* end global *)
  let _ = print_newline () in
  let _ = print_string "parse succeed\n" in
  let _ = if !show_ast then print_string (Syntax.show p) else () in
  let p = if !allow_partial then Ptyping.f p else Typing.f p in
  let _ = print_string "type check succeed\n" in
  let _ = if !show_typed then print_string (Syntax.show p) else () in
  let p = Knormal.f p in
  let _ = print_string "\nknormalized\n" in
  let _ = if !show_knormal then print_string (Knormal.show p) else () in
  let p = Alpha.f p in
  let _ = print_string "\nalpha conversion\n" in
  let _ = if !show_alpha then Knormal.myprint p 0 else () in
  let p = Anormal.f p in
  let _ = print_string "\nanormalized\n" in
  let _ = if !show_anormal then Knormal.myprint p 0 else () in
  (* let p = LambdaLifting.f p in *)
  let p = Alpha.f p in
  let _ = if !show_afeter_lambda_lifting then Knormal.myprint p 0 else () in
  let p = if !noopt then p else optimtime 100 p in
  let _ = print_string "\noptimized\n" in
  let _ = if !show_optimized then Knormal.myprint p 0 else () in

  let p = Closure.f p opt_after_closure in
  let _ = print_string "closure conversion succeed\n" in
  let _ = if !show_closure then List.iter (fun x -> Printf.printf "%s \n"(Closure.show_l x)) (snd p)else () in 
  (* let _ = if !show_closure then Closure.myprint (fst p) "" else () in *)
  if !x86 then
    let _ = print_string "Target architecture : x86-64\n" in
    let p = X86virtual.f p in
    let p = X86regAlloc.f p in
    let p = X86simm.f p in
    let p = X86emit.f oc p in
    ()
  else if !llvm_ir then
    LlvmCodegen.f !fname p g
  else
    let _ = print_string "Target architecture : elmo\n" in
    let p, func = Scheduling.h p in
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

let init = 0

let _ = print_string "usage: ./compiler filename\n\toutputed to filename.s\n"

let analyze_cmd () =
  x86 := Array.exists (fun x -> x = "-x86") Sys.argv ;
  allow_partial := Array.exists (fun x -> x = "-allow-partial") Sys.argv ;
  llvm_ir := Array.exists (fun x -> x = "-llvm-ir") Sys.argv;
  noopt := Array.exists (fun x -> x = "-noopt") Sys.argv


let _ =
  let _ = analyze_cmd () in
  let filename = Sys.argv.(1) in
  let ic = open_in filename in
  let oname = if not !llvm_ir then filename ^ ".s" else filename ^ ".ll" in
  let _ = fname := oname in
  let oc = open_out oname in
  let _ = lexbuf oc (Lexing.from_channel ic) in
  print_string ("success\nassembly is outputed to " ^ oname)
