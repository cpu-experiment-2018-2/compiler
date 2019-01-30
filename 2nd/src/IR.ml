open Closure
open Type

type cmpty = F | I [@@deriving show]

type op = Syntax.op [@@deriving show]

type var = {name: string; ty: Type.t} [@@deriving show]

module VarMap = Map.Make (struct
  type t = var

  let compare x y = compare x.name y.name
end)

module VarSet = Set.Make (struct
  type t = var

  let compare x y = compare x.name y.name
end)

let beta ty =
  let a = Syntax.genvar () in
  {name= a; ty}

let alpha () =
  let a = Syntax.genvar () in
  {name= a; ty= TyInt}

let (f : Syntax.var -> var) = fun x -> {name= x.name; ty= x.ty}

type u =
  | C of Syntax.c
  | Var of var
  | Op of op * var list
  | Load of var * var
  | Store of var * var * var
  | If of Knormal.cmp * var * var * v * v * cmpty
  | Call of var * var list
  | While of
      Knormal.cmp * cmpty * var * var * (var * var) list * (var * u) list * v
  | For of
      Knormal.cmp
      * cmpty
      * var
      * var
      * int
      * (var * var) list
      * (var * u) list
      * v
  | PararellFor of
      Knormal.cmp
      * cmpty
      * var
      * var
      * int
      * (var * var) list
      * (var * u) list
      * v
[@@deriving show]

and v = Ans of u | Let of var * u * v [@@deriving show]

type fundef = {f_ir: var; args_ir: var list; body_ir: v} [@@deriving show]

type prog = v * fundef list [@@deriving show]

let find_or env x = match VarMap.find_opt x env with Some y -> y | None -> x

let rec alpha_conv_u env u =
  match u with
  | Op (op, vars) -> Op (op, List.map (find_or env) vars)
  | Load (v1, v2) -> Load (find_or env v1, find_or env v2)
  | Store (v1, v2, v3) -> Store (find_or env v1, find_or env v2, find_or env v3)
  | If (cmp, v1, v2, e1, e2, cmpty) ->
      If
        ( cmp
        , find_or env v1
        , find_or env v2
        , alpha_conv_v env e1
        , alpha_conv_v env e2
        , cmpty )
  | Call (f, vars) -> Call (find_or env f, List.map (find_or env) vars)
  | While (cmp, cmpty, v1, v2, pairs, updates, v) ->
      While
        ( cmp
        , cmpty
        , find_or env v1
        , find_or env v2
        , List.map (fun (x, y) -> (find_or env x, find_or env y)) pairs
        , List.map (fun (x, y) -> (x, alpha_conv_u env y)) updates
        , alpha_conv_v env v )
  | For (cmp, cmpty, v1, v2, diff, pairs, updates, v) ->
      For
        ( cmp
        , cmpty
        , find_or env v1
        , find_or env v2
        , diff
        , List.map (fun (x, y) -> (find_or env x, find_or env y)) pairs
        , List.map (fun (x, y) -> (x, alpha_conv_u env y)) updates
        , alpha_conv_v env v )
  | Var u -> Var (find_or env u)
  | _ -> u

and alpha_conv_v env u =
  match u with
  | Ans u -> Ans (alpha_conv_u env u)
  | Let (x, u, v) -> Let (x, alpha_conv_u env u, alpha_conv_v env v)

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
  | Op (ArrayGet _, [x; y], d) -> Ans (Load (f x, f y))
  | Op (ArrayPut _, [x; y; z], d) -> Ans (Store (f x, f y, f z))
  | Op (Projection (idx, _, _), [x], d) ->
      let a = beta TyInt in
      Let (a, C (CInt idx), Ans (Load (f x, a)))
  | Tuple (l, d) ->
      let l = List.map f l in
      let ty = TyTuple (List.map (fun x -> x.ty) l) in
      let base = beta (TyTuple (List.map (fun x -> x.ty) l)) in
      let hoge =
        snd
          (List.fold_right
             (fun p (idx, acc) ->
               let a = beta TyUnit in
               let idx' = beta TyInt in
               ( idx - 1
               , Let (idx', C (CInt idx), Let (a, Store (base, idx', p), acc))
               ) )
             l
             (List.length l - 1, Ans (Var base)))
      in
      let f' = alpha () in
      let f' =
        {f' with name= "create_tuple"; ty= TyFun ([TyInt], TyTuple [])}
      in
      let a = beta TyInt in
      Let (a, C (CInt (List.length l)), Let (base, Call (f', [a]), hoge))
  | Op (op, l, d) -> Ans (Op (op, List.map f l))
  | If (cmp, x, y, e1, e2, d) -> (
    match x.ty with
    | Type.TyBool | Type.TyInt -> Ans (If (cmp, f x, f y, g e1, g e2, I))
    | Type.TyFloat -> Ans (If (cmp, f x, f y, g e1, g e2, F))
    | _ -> failwith "equality is only bool and int" )
  | Let (var, e1, e2, d) -> concat (f var) (g e1) (g e2)
  | Var (var, d) -> Ans (Var (f var))
  | AppDir (var, ys, d) -> Ans (Call (f var, List.map f ys))
  | _ -> failwith (Closure.show x)

let rename = f

let rec f (main, functions) =
  ( g main
  , List.map
      (fun x ->
        {f_ir= rename x.f; body_ir= g x.body; args_ir= List.map rename x.args}
        )
      functions )

(* let rec to_string x =  *)
(*     match x with *)
(*   | C (c) -> Syntax.show_c x *)
(*   | Var var -> var.name *)
(*   | Op (op,vars) -> Printf.sprintf "%s "  *)
(*   | Load of var * var *)
(*   | Store of var * var * var *)
(*   | If of Knormal.cmp * var * var * v * v * cmpty *)
(*   | Call of var * var list *)
(*   | While of Knormal.cmp * cmpty * var * var * ( var * var ) list * (var * u) list * v  *)
(*   | For of Knormal.cmp * cmpty * var * var * int * ( var * var ) list * (var * u) list * v  *)
(*  *)
(*  *)
