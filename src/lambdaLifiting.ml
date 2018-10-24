(** lambda liftingの実装.closure変換の前に挟む.*)

open Syntax
open Knormal

(** 自由変数を含む関数fについて変換する.考える必要があるのはletで束縛するのが関数の場合である.例えば
{[ let f = if x = y then g else h]} 
でgとhは関数とであるときliftすると
{[ let rec f x y x' = if x = y then g x' else h x']}となる.
liftされる関数が乱立しそうだがlet f = g とかはletが消去されているから大丈夫である.
問題はLetTupleのときで右側に関数があったりするとかなりしんどくなるためクロージャを作るのが簡単な解決ではある.
overheadは明らかにこっちのほうが小さい説があるからminrtに上がない場合はlambda liftingしてからでよいかも
{{:https://www.microsoft.com/en-us/research/wp-content/uploads/1992/01/student.pdf}参考} .*)
let rec lifiting lifted_env varenv e =
  let g = lifiting lifted_env varenv in
  match e with
  | (Const _ | Op _ | Tuple _) as self -> self
  | If (cmp, x, y, e1, e2, d) -> If (cmp, x, y, g e1, g e2, d)
  | Let (var, e1, e2, d) -> e
  (* let e1 = g e1 in
    match e1 with
    | LetRec(fundef, e, d) ->  *)
  | Var (var, d) ->
      Var (var, d)
  | LetRec (fd, e1, d) ->
      let fv = Knormal.fundef_fv fd in
      match fv with
      | [] -> LetRec (fd, e1, d)
      | _ ->
          let newenv = (fd.f.name, fv) :: lifted_env in
          LetRec ({fd with body= g e; args= fd.args @ fv}, g e1, d)
let rec fv e   =
    match e with
    | Const _  -> VarSet.empty
    | Op(_,vars,_)  
    | Tuple(vars,_)  -> VarSet.of_list vars
    | If(cmp,x,y,e1,e2,d) -> 
            VarSet.union (VarSet.union (fv e1) (fv e2)) (VarSet.of_list [x;y])
    | Var(var,d) -> VarSet.singleton var
    | LetRec(fd,e,_) -> VarSet.union (VarSet.diff (fv e) (VarSet.singleton fd.f)) (VarSet.diff (fv fd.body) (VarSet.of_list (fd.f::fd.args)))
    | Let(var,e1,e2,d) -> VarSet.union (VarSet.diff (fv e2) (VarSet.singleton var)) (fv e1)
    | App(var,vars,_) -> VarSet.of_list (var::vars)

(* let rec fv' env e   = *)
(*     let fv e = fv' env e in  *)
(*     match e with *)
(*     | Const _  -> VarSet.empty *)
(*     | Op(_,vars,_)   *)
(*     | Tuple(vars,_)  -> VarSet.of_list vars *)
(*     | If(cmp,x,y,e1,e2,d) ->  *)
(*             VarSet.union (VarSet.union (fv e1) (fv e2)) (VarSet.of_list [x;y]) *)
(*     | Var(var,d) -> if VarMap2.mem var env then VarMap2.find var env else VarSet.singleton var *)
(*     | LetRec(fd,e,_) -> VarSet.union (VarSet.diff (fv e) (VarSet.singleton fd.f)) (VarSet.diff (fv fd.body) (VarSet.of_list (fd.f::fd.args))) *)
(*     | Let(var,e1,e2,d) -> VarSet.union (VarSet.diff (fv e2) (VarSet.singleton var)) (fv e1) *)
(*     | App(var,vars,_) -> if VarMap2.mem var env then VarMap2.find var env else VarSet.of_list (var::vars) *)
(*  *)

(** fenv : 関数の変数からそれのもつ変数の写像 **)
(* let rec lift fenv e main_arg =  *)
(*     let lift' = lift fenv in *)
(*     let var_lift var d main_arg = if VarMap.mem var fenv then App(var,main_arg @ (VarMap.find var fenv),d) else Var(var,d)in *)
(*     match e with *)
(*     | Const _ | Op(_) -> e *)
(*     | If(cmp,x,y, e1,e2,d) -> If(cmp,x,y, lift' e1,lift' e2,d) *)
(*     | Var(var,d) -> Var(var,d) *)
(*     | Let(var,e1,e2,d) ->  *)
(*             match var.ty with *)
(*             | TyFun(_) -> LetRec(var, e1, e2, d) *)
(*             | _ -> Let(var,lift' env,lift' env) *)
(*  *)
        

