open Syntax
open Knormal

let threshold = 35

let rec size = function
  | If (_, _, _, e1, e2, _) | Let (_, e1, e2, _) | LetRec ({body= e1}, e2, _) ->
      1 + size e1 + size e2
  | _ -> 1

let rec inline env e =
  match e with
  | If (cmp, x, y, e1, e2, d) -> If (cmp, x, y, inline env e1, inline env e2, d)
  | Let (v, e1, e2, d) -> Let (v, inline env e1, inline env e2, d)
  | LetRec (fd, e1, d) ->
      let newenv =
        if size fd.body > threshold then env else (fd.f.name, fd) :: env
      in
      LetRec ({fd with body= inline newenv fd.body}, inline newenv e1, d)
  | App (y, ys, d) -> (
    match Common.assoc_opt y.name env with
    | Some fd ->
        let _ = Printf.printf "%s is inlined\n" fd.f.name in
        let bind = List.map2 (fun x y -> (x.name, y.name)) fd.args ys in
        Alpha.g bind fd.body
    | None ->
        (* グローバルな関数に関してもinlineしたさがある *)
        e )
  | _ -> e

let f = inline []
