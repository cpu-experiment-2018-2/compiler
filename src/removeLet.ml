open Syntax
open Knormal

let change env x =
  match List.find_opt (fun (y, z) -> y.name = x.name) env with
  | Some (y, z) -> z
  | None -> x

let rec remove_alias_let env e =
  (*
LET x = Var(y) IN M
を
M[y/x]にする 
*)
  match e with
  | Let (var, Var (x, d1), e2, d2) -> remove_alias_let ((var, x) :: env) e2
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
  | LetRec (fd, e1, d) ->
      LetRec
        ( { fd with
            f= change env fd.f
          ; args= List.map (change env) fd.args
          ; body= remove_alias_let env fd.body }
        , remove_alias_let env e1
        , d )
  | _ -> Knormal.apply (change env) e

let (f: Knormal.t -> Knormal.t) = remove_alias_let []
