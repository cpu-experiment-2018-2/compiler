open Knormal

let selfapp (x, f) = f x

let rec anormalize e =
  match e with
  | Let (var, e1, e2, d) ->
      let a1, f1 = anormalize e1 in
      let a2, f2 = anormalize e2 in
      (a2, fun x -> f1 (Let (var, a1, f2 x, d)))
  | (Const _ | Var _ | Op _ | App _ | Tuple _) as self -> (self, fun x -> x)
  | If (cmp, x, y, e1, e2, d) ->
      ( If (cmp, x, y, selfapp (anormalize e1), selfapp (anormalize e2), d)
      , fun x -> x )
  | LetRec (fd, u, d) ->
      ( LetRec
          ( {fd with body= selfapp (anormalize fd.body)}
          , selfapp (anormalize u)
          , d )
      , fun x -> x )

let f x = selfapp (anormalize x)
