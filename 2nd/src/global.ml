open Syntax
open Type
open Knormal
type ty = Bool | Int | Float | Array of ty * int  | Tuple of ty list

let rec convert x =
  match x with | TyBool -> Bool | TyInt -> Int  | TyFloat -> Float

(* let buf = ref [] *)
(* let ans = ref VarMap.emtpy  *)
(*  *)
(* let find y ty_env =  *)
(*     match y.ty with *)
(*     | TyBool | TyInt -> convert y.ty *)
(*     | _ -> VarMap.find y ty_env *)
(* let rec g int_env ty_env x = *)
(*   match x with *)
(*   | Let (z, e1, e2, _) -> ( *)
(*     match e1 with *)
(*     | Const (CInt x, _) -> g (VarMap.add z x int_env) (ty_env) e2 *)
(*     | App (f, [x; y], _) when f.name = "create_array" -> *)
(*         let _ = *)
(*           buf := *)
(*             (z.name, Array (find y ty_env, VarMap.find x int_env),VarMap.find x int_env) *)
(*             :: !buf *)
(*         in *)
(*         g int_env (VarMap.add z *)
(*              (Array (find y ty_env, VarMap.find x int_env)) *)
(*              ty_env) e2 *)
(*     | Tuple (l, _) -> *)
(*         g int_env *)
(*           (VarMap.add z *)
(*              (Tuple (List.map (fun x -> find x ty_env) l)) *)
(*              ty_env) *)
(*           e2 *)
(*     | _ -> g int_env (VarMap.add z (convert z.ty) ty_env) e2 ) *)
(*   | _ -> !buf *)
(*  *)
(* let f x main = *)
(*     () *)
(*   (* let _ = buf := [] in *) *)
(*   (* let t = g VarMap.empty VarMap.empty x in *) *)
(*   (* let map = List.fold_left (fun (var,_,len) (acc,sum) ->  *) *)
(*   (*     VarMap.add *) *)
(*   (* ) *) *)
