open Syntax
open Type
open Knormal

type 'a u =
  | Const of c * 'a
  | Op of op * var list * 'a
  | If of cmp * var * var * 'a u * 'a u * 'a
  | Let of var * 'a u * 'a u * 'a
  | Var of var * 'a
  | Closure of 'a fundef * 'a
  | AppCls of var * var list * 'a
  | AppDir of var * var list * 'a
  | Tuple of var list * 'a
  | LetTuple of var list * var * 'a u * 'a
[@@deriving show]

and 'a fundef = {f: var; args: var list; fv: var list; body: 'a u; info: 'a}
[@@deriving show]

type t = debug u [@@deriving show]

let (toplevel: debug fundef list ref) = ref []

let add_toplevel fundef = toplevel := fundef :: !toplevel

let find_toplevel var = List.find_opt (fun x -> x.f.name = var.name) !toplevel

let f =
  let _ = toplevel := [] in
  let rec closure_conversion (e: Knormal.t) =
    match e with
    | Const (x, d) -> Const (x, d)
    | Op (op, l, d) -> Op (op, l, d)
    | If (cmp, n1, n2, e1, e2, d) ->
        If (cmp, n1, n2, closure_conversion e1, closure_conversion e2, d)
    | Var (name, d) -> Var (name, d)
    | LetRec (fundef, e1, d) ->
        let fv = Knormal.fundef_fv fundef in
        let is_closure = List.length fv <> 0 in
        let body = closure_conversion fundef.body in
        if is_closure then
          let e1 = closure_conversion e1 in
          Let
            ( fundef.f
            , Closure
                ( {f= fundef.f; args= fundef.args; fv; body; info= fundef.info}
                , d )
            , e1
            , d )
        else
          let _ =
            add_toplevel
              {f= fundef.f; args= fundef.args; fv; body; info= fundef.info}
          in
          closure_conversion e1
    | Let (var, e1, e2, d) ->
        Let (var, closure_conversion e1, closure_conversion e2, d)
    | App (f, args, d) -> (
      match
        (* 先にalpha変換しないとバグりそう *)
        (* alpha変換してる体で行く*)
        find_toplevel f
      with
      | Some y -> AppDir (f, args, d)
      | None -> AppCls (f, args, d) )
    | Tuple (names, d) -> Tuple (names, d)
    | LetTuple (names, name, e, d) ->
        LetTuple (names, name, closure_conversion e, d)
  in
  fun x -> (closure_conversion x, !toplevel)
