open Syntax
open Type

type cmp = LE | EQ [@@deriving show]

type 'a u =
  | Const of c * 'a
  | Op of op * var list * 'a
  | If of cmp * var * var * 'a u * 'a u * 'a
  | Let of var * 'a u * 'a u * 'a
  | Var of var * 'a
  | LetRec of 'a fundef * 'a u * 'a
  | App of var * var list * 'a
  | Tuple of var list * 'a
  | LetTuple of var list * var * 'a u * 'a
[@@deriving show]

and 'a fundef = {f: var; args: var list; body: 'a u; info: 'a}
[@@deriving show]

type t = debug u [@@deriving show]

let get_debug e =
  match e with
  | Const (_, d)
   |Op (_, _, d)
   |If (_, _, _, _, _, d)
   |Let (_, _, _, d)
   |Var (_, d)
   |LetRec (_, _, d)
   |App (_, _, d)
   |Tuple (_, d)
   |LetTuple (_, _, _, d) ->
      d

let insert_let (e, ty) k =
  match e with
  | Var (x, d) -> k x
  | _ ->
      let alpha = {name= Syntax.genvar (); debug= get_debug e; ty} in
      let e', t = k alpha in
      (Let (alpha, e, e', get_debug e), t)

let rec list_to_let (es: (t * ty) list) knormalize =
  let res =
    List.map
      (fun (e, ty) ->
        match e with
        | Var (e, d) -> (e, None)
        | _ ->
            let d = get_debug e in
            let alpha = {name= Syntax.genvar (); debug= get_debug e; ty} in
            (alpha, Some e) )
      es
  in
  ( List.fold_right
      (fun (var, opt) acc ->
        match opt with Some nf -> Let (var, nf, acc, var.debug) | None -> acc
        )
      res
  , List.map fst res )

let rec knormalize (e: Syntax.t) =
  match e with
  | Const (CInt x, d) -> (Const (CInt x, d), TyInt)
  | Const (CFloat x, d) -> (Const (CFloat x, d), TyFloat)
  | Const (CBool x, d) -> (Const (CInt (if x then 1 else 0), d), TyInt)
  | Const (CUnit, d) -> (Const (CInt 0, d), TyInt)
  | Op (op, l, d) ->
      let args = List.map knormalize l in
      let k, names = list_to_let args knormalize in
      (k (Op (op, names, d)), TyInt)
  | If (Op (Primitive EQ, [u1; u2], d0), e2, e3, d1) ->
      insert_let (knormalize u1) (fun x ->
          insert_let (knormalize u2) (fun y ->
              let e2, t2 = knormalize e2 in
              let e3, t3 = knormalize e3 in
              (If (EQ, x, y, e2, e3, d1), t2) ) )
  | Var (x, d) -> (Var (x, d), x.ty)
  | If (e1, e2, e3, d) ->
      let e1, t1 = knormalize e1 in
      let e2, t2 = knormalize e2 in
      let e3, t3 = knormalize e3 in
      insert_let (e1, t1) (fun x ->
          insert_let
            (Const (CBool true, d), TyBool)
            (fun y -> (If (EQ, x, y, e2, e3, d), t2)) )
  | Let (var, e1, e2, d) ->
      let e1, t1 = knormalize e1 in
      let e2, t2 = knormalize e2 in
      (Let (var, e1, e2, d), t2)
  | LetRec (fundef, e1, d) ->
      let e0, t0 = knormalize fundef.body in
      let e1, t1 = knormalize e1 in
      ( LetRec
          ({f= fundef.f; args= fundef.args; body= e0; info= fundef.info}, e1, d)
      , t1 )
  | Tuple (l, d) ->
      let args = List.map knormalize l in
      let k, names = list_to_let args knormalize in
      (k (Tuple (names, d)), TyTuple (List.map snd args))
  | LetTuple (vars, e1, e2, d) ->
      insert_let (knormalize e1) (fun x ->
          let e2, t2 = knormalize e2 in
          (LetTuple (vars, x, e2, d), t2) )
  | App (f, l, d) ->
      (*とりあえず部分適用はないものとする*)
      let args = List.map knormalize (f :: l) in
      let _, TyFun (_, ty) = knormalize f in
      let k, f :: names = list_to_let args knormalize in
      (k (App (f, names, d)), ty)

let f x = fst (knormalize x)
