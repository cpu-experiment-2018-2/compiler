open Syntax
open Knormal
open Closure
open IR

type label = string [@@deriving show]

type name = Syntax.var [@@deriving show]

type u =
  | SC of Syntax.c
  | SVar of name
  | SOp of op * name list
  | SLoad of name * name
  | SStore of name * name * name
  | SPhi of (label * name) list
  | SCallDir of name * name list
[@@deriving show]

type v =
  | SRet of name
  | SBr of Knormal.cmp * name * name * label * label * cmpty
  | SJump of label
[@@deriving show]

type block = label * (name * u) list * v [@@deriving show]

let entry = "entry"
let current_label = ref entry
let current_funname = ref entry

let buf = ref []

let blocks = ref []

let clear () = buf := []
let print_u = 
    function 
    | SC (CInt(x)) -> Printf.printf "int %d" x
    | SC (CFloat(x)) -> Printf.printf "float %.3f" x
    | SC (CBool(x)) -> Printf.printf "bool %s" (string_of_bool x) 
    | SC (CUnit) -> Printf.printf "unit"  
    | SVar(x) -> Printf.printf "%s" x.name
    | SOp(op,names) -> Printf.printf "%s" (Syntax.show_op op) ; List.iter(fun x -> Printf.printf "%s " x.name) names 
    | SLoad(x,y) -> Printf.printf "LOAD "  ; List.iter(fun x -> Printf.printf "%s " x.name) [x;y]
    | SStore(x,y,z) -> Printf.printf "STORE "  ; List.iter(fun x -> Printf.printf "%s " x.name) [x;y;z]
    | SPhi(x) -> Printf.printf "phi ";List.iter(fun (x,y) -> Printf.printf "[%s,%s]" x y.name) x
    | SCallDir(f,names) -> Printf.printf "CALL %s " f.name; List.iter(fun x -> Printf.printf "%s " x.name) names 
let print_v = 
    function
    | SRet (x) -> Printf.printf "RET %s" x.name
    | SBr (cmp,x,y,e1,e2,ty) -> Printf.printf "SBr %s %s %s %s" x.name y.name e1 e2
    | SJump x -> Printf.printf "Jump %s" x


let print (label,opts,ans) = 
    let _ = Printf.printf ("%s: \n") label in
    let _ = List.iter(fun (x,u) -> Printf.printf "\t%s = " x.name; print_u u;print_newline()) opts in
    let _ = print_string "\t";print_v ans in
    print_newline()

type if_last = Ret of Type.t | Dest of name
let add dest x = 
  match dest with
  | Ret t ->
      let y = Syntax.alpha () in
      let y = {y with ty= t} in
      blocks := (!current_label, List.rev ((y, x) :: !buf), SRet y) :: !blocks ;
      clear ()
  | Dest name -> buf := (name, x) :: !buf

let rec f dest x =
  let add = add dest in
  match x with
  | C x -> add (SC x)
  | Var x -> add (SVar x)
  | Op (op, names) -> add (SOp (op, names))
  | Load (x, y) -> add (SLoad (x, y))
  | Store (x, y, z) -> add (SStore (x, y, z))
  | Call (x, y) -> add (SCallDir (x, y))
  | If (c, x, y, e1, e2, ty) -> (
    match dest with
    | Dest n ->
        let a = Syntax.genvar () in
        let true_block = "true_" ^ a in
        let false_block = "false_" ^ a in
        let cont_block = "cont_" ^ a in
        let _ =
          blocks :=
            (!current_label, List.rev !buf, SBr (c, x, y, true_block, false_block, ty))
            :: !blocks
        in
        let _ = buf := [] in
        let truev = {n with name= "true_" ^ n.name} in
        let falsev = {n with name= "false_" ^ n.name} in
        let _ = current_label := true_block in
        let _ = f' (Dest truev) e1 in
      let _ =
          blocks :=
            (!current_label,  List.rev !buf, SJump (cont_block))
            :: !blocks;clear()
        in

        let _ = current_label := false_block in
        let _ = f' (Dest falsev) e2 in
      let _ =
          blocks :=
            (!current_label,  List.rev !buf, SJump (cont_block))
            :: !blocks;clear()
        in

        let _ = current_label := cont_block in
        add (SPhi ([(true_block, truev);( false_block, falsev)]))
    | Ret t ->
        let a = Syntax.genvar () in
        let true_block = "true_" ^ a in
        let false_block = "false_" ^ a in
        let cont_block = "cont_" ^ a in
        let _ =
          blocks :=
            (!current_label,  List.rev !buf, SBr (c, x, y, true_block, false_block, ty))
            :: !blocks
        in
        let _ = buf := [] in
        let n = Syntax.alpha () in
        let truev = {n with name= "true_" ^ n.name; ty= t} in
        let falsev = {n with name= "false_" ^ n.name; ty= t} in
        let _ = current_label := true_block in
        let _ = f' (Dest truev) e1 in
        let _ =
          blocks :=
            (!current_label,  List.rev !buf, SJump (cont_block))
            :: !blocks;clear()
        in
        let _ = current_label := false_block in
        let _ = f' (Dest falsev) e2 in
        let _ =
          blocks :=
            (!current_label,  List.rev !buf, SJump (cont_block))
            :: !blocks;clear()
        in
        let _ = current_label := cont_block in
        add (SPhi ([(true_block, truev);( false_block, falsev)])))

and f' dest x =
  match x with
  | Let (name, u, v) -> f (Dest name) u ; f' dest v
  | Ans u -> f dest u
let g' def = 
    let body = def.body_ir in
    let Type.TyFun(_,ret) = def.f_ir.ty in
    let _ = current_label := def.f_ir.name ^"_"^ entry in
    let _ = current_funname := def.f_ir.name in
    let _ = f' (Ret ret) body in
    let _ = List.iter print (List.rev !blocks) in
    clear()

let g (main, functions) =
  let _ = f' (Ret TyUnit) main in
  let _ = List.iter g' functions in
  ()
