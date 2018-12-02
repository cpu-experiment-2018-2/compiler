open Syntax
open Knormal

type key = Syntax.primitive * string list [@@deriving ord]

module M = Map.Make (struct
  type t = key

  let compare = compare_key
end)

let get_str = List.map (fun x -> x.name)

let rec cseEliminate map e =
  match e with
  | (Const _ | Var _ | App _ | Tuple _ | Op _) as self -> self
  | If (cmp, v1, v2, e1, e2, d) ->
      If (cmp, v1, v2, cseEliminate map e1, cseEliminate map e2, d)
  | Let (var, Op (Primitive x, vars, d1), e2, d2) -> (
    match M.find_opt (x, get_str vars) map with
    | Some y ->
        let _ = Printf.printf "found cse %s" y.name in
        Let (var, Var (y, d1), e2, d2)
    | None ->
        let newmap = M.add (x, get_str vars) var map in
        Let (var, Op (Primitive x, vars, d1), cseEliminate newmap e2, d2) )
  | Let (var, e1, e2, d2) ->
      (* A正規化の後なのでe1には副作用がありそうなものしか入ってないので無視する*)
      Let (var, e1, cseEliminate map e2, d2)
  | LetRec (fundef, e1, d) ->
      LetRec
        ( {fundef with body= cseEliminate map fundef.body}
        , cseEliminate map e1
        , d )

(* | LetTuple (vars, var, e1, d) -> LetTuple (vars, var, cseEliminate map e1, d) *)

let (f : Knormal.t -> Knormal.t) = cseEliminate M.empty
