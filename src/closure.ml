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

let remove fv known =
  List.filter
    (fun x ->
      not
        (List.exists
           (fun y -> y = x.name)
           (known @ List.map fst Typing.builtin_function')) )
    fv

(* let rec fv =  function *)
(* | Const(_) -> [] *)
(* | Op(_,y,_) ->  y *)
(* | If(_,x,y,e1,e2,_)  ->   *)
(*   x::y::(fv e1) @ (fv e2) *)
(* | Let(var, e1,e2,_) ->  *)
(*   fv e1 @ (remove (fv e2) [var.name]) *)
(* | Var(x,d) -> [x] *)
(* | Closure (fundef , d) ->  *)
(*  *)
(*  *)

type t = debug u [@@deriving show]

let (toplevel: debug fundef list ref) = ref []

let add_toplevel fundef = toplevel := fundef :: !toplevel

let find_toplevel var =
  match List.find_opt (fun x -> x.f.name = var.name) !toplevel with
  | None -> List.exists (fun x -> fst x = var.name) Typing.builtin_function'
  | Some x -> true

let f =
  let _ = toplevel := [] in
  let rec closure_conversion' (e: Knormal.t) known =
    let closure_conversion x = closure_conversion' x known in
    match e with
    | Const (x, d) -> Const (x, d)
    | Op (op, l, d) -> Op (op, l, d)
    | If (cmp, n1, n2, e1, e2, d) ->
        If (cmp, n1, n2, closure_conversion e1, closure_conversion e2, d)
    | Var (name, d) -> Var (name, d)
    | LetRec (fundef, e1, d) ->
        let fv = Knormal.fundef_fv fundef in
        let fv = remove fv known in
        let _ =
          List.iter (fun x -> print_string x.name ; print_newline ()) fv
        in
        let is_closure = List.length fv <> 0 in
        if is_closure then
          let e1 = closure_conversion e1 in
          let body = closure_conversion fundef.body in
          Let
            ( fundef.f
            , Closure
                ( {f= fundef.f; args= fundef.args; fv; body; info= fundef.info}
                , d )
            , e1
            , d )
        else
          let body =
            closure_conversion' fundef.body (fundef.f.name :: known)
          in
          let _ =
            add_toplevel
              {f= fundef.f; args= fundef.args; fv; body; info= fundef.info}
          in
          closure_conversion' e1 (fundef.f.name :: known)
    | Let (var, e1, e2, d) ->
        Let (var, closure_conversion e1, closure_conversion e2, d)
    | App (f, args, d) ->
        if
          (* 先にalpha変換しないとバグりそう *)
          (* alpha変換してる体で行く*)
          List.exists (fun x -> f.name = x) known
        then AppDir (f, args, d)
        else if find_toplevel f then AppDir (f, args, d)
        else AppCls (f, args, d)
    | Tuple (names, d) -> Tuple (names, d)
  in
  fun x ->
    let tmp = closure_conversion' x [] in
    (tmp, !toplevel)
