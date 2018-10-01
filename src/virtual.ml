open Syntax
open Closure
open Asm

type label = string [@@deriving show]

type 'a u =
  | Nop of 'a
  | Li of int * 'a
  | FLi of float * 'a
  | Mr of var * 'a
  | FMr of var * 'a
  | Op of op * var list * 'a
  | Load of var * var * 'a
  | Store of var * var * var * 'a
  | If of Knormal.cmp * var * var * 'a v * 'a v * 'a
  | CallCls of var * var list * 'a
  | CallDir of label * var list * 'a
[@@deriving show]

and 'a v = Ans of 'a u | Let of var * 'a u * 'a v [@@deriving show]

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
  | Op (op, l, d) -> Ans (Op (op, l, d))
  | If (cmp, x, y, e1, e2, d) -> (
    match x.ty with
    | Type.TyBool | Type.TyInt ->
        Ans (If (cmp, x, y, closure_to_virtual e1, closure_to_virtual e2, d))
    | _ -> failwith "equality is only bool and int" )
  | Let (var, e1, e2, d) ->
      concat var (closure_to_virtual e1) (closure_to_virtual e2)
  | Var (var, d) -> (
    match var.ty with
    | Type.TyUnit -> Ans (Nop d)
    | Type.TyFloat -> Ans (FMr (var, d))
    | _ -> Ans (Mr (var, d)) )
  | Closure (fundef, d) ->
      (* 一旦忘れる *)
      let body = closure_to_virtual fundef.body in
      Ans (Mr (fundef.f, d))
  | AppDir (var, ys, d) -> Ans (CallDir (var.name, ys, d))
  | _ ->
      failwith
        "とりあえずクロージャなしの整数演算を実装する"

let f = closure_to_virtual

let rec function_to_virtual (fundef: debug Closure.fundef) =
  let body = closure_to_virtual fundef.body in
  {label= fundef.f.name; args= fundef.args; body}
