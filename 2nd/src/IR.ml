open Syntax
open Closure
open Type

type cmpty = F | I [@@deriving show]

type op = Syntax.op [@@deriving show]

let alpha ty =
  let a = Syntax.alpha () in
  {a with ty}

type u =
  | C of Syntax.c
  | Var of var
  | Op of op * var list
  | Load of var * var
  | Store of var * var * var
  | If of Knormal.cmp * var * var * v * v * cmpty
  | Call of var * var list
  | While of Knormal.cmp * cmpty * var * var * ( var * var ) list * (var * u) list * v 
  | For of Knormal.cmp * cmpty * var * var * int * ( var * var ) list * (var * u) list * v 


[@@deriving show]

and v = Ans of u | Let of var * u * v
[@@deriving show]


type fundef = {f_ir: var; args_ir: var list; body_ir: v;  } 
[@@deriving show]

type prog = v * fundef list
[@@deriving show]

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)

let rec g x =
  match x with
  | Const (CInt x, d) -> Ans (C (CInt x))
  | Const (CFloat x, d) -> Ans (C (CFloat x))
  | Const (CBool x, d) -> Ans (C (CBool x))
  | Const (CUnit, d) -> Ans (C CUnit)
  | Op (ArrayGet _, [x; y], d) -> Ans (Load (x, y))
  | Op (ArrayPut _, [x; y; z], d) -> Ans (Store (x, y, z))
  | Op (Projection (idx, _, _), [x], d) ->
      let a = alpha TyInt in
      Let (a, C (CInt idx), Ans (Load (x, a)))
  | Tuple (l, d) ->
      let ty = TyTuple (List.map (fun x -> x.ty) l) in
      let base = alpha (TyTuple (List.map (fun x -> x.ty) l)) in
      let hoge =
        snd
          (List.fold_right
             (fun p (idx, acc) ->
               let a = alpha TyUnit in
               let idx' = alpha TyInt in
               ( idx - 1
               , Let (idx', C (CInt idx), Let (a, Store (base, idx', p), acc))
               ) )
             l
             (List.length l - 1, Ans (Var base)))
      in
      let f = Syntax.alpha () in
      let f = {f with name= "create_tuple"; ty= TyFun ([TyInt], TyTuple [])} in
      let a = alpha TyInt in
      Let (a, C (CInt (List.length l)), Let (base, Call (f, [a]), hoge))
  | Op (op, l, d) -> Ans (Op (op, l))
  | If (cmp, x, y, e1, e2, d) -> (
    match x.ty with
    | Type.TyBool | Type.TyInt ->
        Ans (If (cmp, x, y, g e1, g e2, I))
    | Type.TyFloat ->
        Ans (If (cmp, x, y, g e1, g e2, F))
    | _ -> failwith "equality is only bool and int" )
  | Let (var, e1, e2, d) -> concat var (g e1) (g e2)
  | Var (var, d) -> Ans (Var var)
  | AppDir (var, ys, d) -> Ans (Call (var, ys))
  | _ -> failwith (Closure.show x)
let rec f (main,functions) = 
    (g main, List.map (fun x ->  {f_ir = x.f; body_ir = g x.body;args_ir= x.args;  }) functions )

