open Syntax
open Closure

type label = string [@@deriving show]

type 'a u =
  | Nop of 'a
  | Li of int * 'a
  | FLi of float * 'a
  | Var of var * 'a
  | Op of op * var list * 'a
  | Load of var * var * 'a
  | Store of var * var * 'a
  | If of Knormal.cmp * var * var * 'a v * 'a v * 'a
  | CallCls of var * var list * 'a
  | CallDir of label * var list * 'a
[@@deriving show]

and 'a v = Ans of 'a u | Let of var * 'a u * 'a v [@@deriving show]

and 'a prog = (string * 'a v)

type t = Syntax.debug v [@@deriving show]

type fundef = {label: string; args: var list; body: debug v}

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)

let rec closure_to_virtual (e: Closure.t) =
  match e with
  | Const (CUnit, d) -> Ans (Nop d)
  | Const (CInt x, d) -> Ans (Li (x, d))
  | Const (CFloat x, d) -> Ans (FLi (x, d))
  | Const (CBool x, d) -> Ans (Li ((if x then 1 else 0), d))
  | Op (op, l, d) -> Ans (Op (op, l, d))
  | If (cmp, x, y, e1, e2, d) -> (
    match x.ty with
    | Type.TyBool | Type.TyInt ->
        Ans (If (cmp, x, y, closure_to_virtual e1, closure_to_virtual e2, d))
    | _ -> failwith "equality is only bool and int" )
  | Let (var, e1, e2, d) ->
      concat var (closure_to_virtual e1) (closure_to_virtual e2)
  | Var (var, d) -> Ans (Var (var, d))
  | Closure (fundef, d) ->
      (* 一旦忘れる *)
      let body = closure_to_virtual fundef.body in
      Ans (Nop d)
  | AppDir (var, ys, d) -> Ans (CallDir (var.name, ys, d))
  | _ -> failwith "it is not support"

let f (x, y) = closure_to_virtual x

let rec function_to_virtual (fundef: debug Closure.fundef) =
  let body = closure_to_virtual fundef.body in
  {label= fundef.f.name; args= fundef.args; body}
