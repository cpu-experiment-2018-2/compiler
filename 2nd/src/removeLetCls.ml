open Syntax
open Closure

let rec change env x =
    if VarMap.mem x env then change env (VarMap.find x env) else x

let rec remove_alias_let env e =
  (*
LET x = Var(y) IN M
を
M[y/x]にする 
*)
  match e with
  | Let (var, Var (x, d1), e2, d2) -> remove_alias_let (VarMap.add var x env) e2
  | Let (var, e1, e2, d2) ->
      Let (change env var, remove_alias_let env e1, remove_alias_let env e2, d2)
  | If (cmp, x, y, e1, e2, d) ->
      If
        ( cmp
        , change env x
        , change env y
        , remove_alias_let env e1
        , remove_alias_let env e2
        , d )
  | Closure(fd, e) -> Closure ({fd with label = change env fd.label; closure_fv = List.map (change env ) fd.closure_fv},remove_alias_let env e)

  | _ -> Closure.apply (change env) e

let (f: Closure.t -> Closure.t) = remove_alias_let VarMap.empty
