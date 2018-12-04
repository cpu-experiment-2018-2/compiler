open Syntax
open Closure

let tmp_debug = {pos= Global}

type label = string [@@deriving show]

let tmp_var () = {name= Syntax.genvar (); debug= {pos= Global}; ty= TyInt}

type cmpty = F | I [@@deriving show]

type ('a, 'b) u =
  | Nop of 'a
  | Li of int * 'a
  | FLi of float * 'a
  | Lil of string * 'a
  | Var of 'b * 'a
  | Op of op * 'b list * 'a
  | Load of 'b * 'b * int * 'a
  | LetLoad of 'b * int * 'a
  | Store of 'b * 'b * int * 'a
  | If of Knormal.cmp * 'b * 'b * ('a, 'b) v * ('a, 'b) v * cmpty * 'a
  | CallDir of label * 'b list * 'a
  | CallCls of 'b * 'b list * 'a
[@@deriving show]

and ('a, 'b) v = Ans of ('a, 'b) u | Let of 'b * ('a, 'b) u * ('a, 'b) v
[@@deriving show]

let insert_alloc x y z =
  Let
    ( y
    , LetLoad (Int 0, 0, tmp_debug)
    , Let
        ( Int 29
        , Op (Primitive Add, [x; y], tmp_debug)
        , Let (Int 0, Store (Int 29, Int 0, 0, tmp_debug), z) ) )

let rec apply f e =
  match e with
  | Nop x -> Nop x
  | Li (x, d) -> Li (x, d)
  | FLi (x, d) -> FLi (x, d)
  | Var (x, d) -> Var (f x, d)
  | Op (op, vars, d) -> Op (op, List.map f vars, d)
  | Load (x, y, off, d) -> Load (f x, f y, off, d)
  | LetLoad (y, off, d) -> LetLoad (f y, off, d)
  | Store (x, y, off, d) -> Store (f x, f y, off, d)
  | If (cmp, x, y, e1, e2, c, d) ->
      If (cmp, f x, f y, apply' f e1, apply' f e2, c, d)
  | CallDir (l, vars, d) -> CallDir (l, List.map f vars, d)
  | CallCls (l, vars, d) -> CallCls (f l, List.map f vars, d)

and apply' f e =
  match e with
  | Let (var, u, v) -> Let (f var, apply f u, apply' f v)
  | Ans u -> Ans (apply f u)

let conv x = Syntax.Var x

let ap = apply' conv

type tmp = (Syntax.debug, Syntax.var) u [@@deriving show]

type t = (Syntax.debug, Syntax.var) v [@@deriving show]

type k = (Syntax.debug, Syntax.g) v [@@deriving show]

type ('a, 'b) fundef =
  { label: string
  ; args: 'b list
  ; body: ('a, 'b) v
  ; ret: 'b
  ; local: int
  ; fv: 'b list }

type fundef_t = (Syntax.debug, Syntax.var) fundef

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)

let to_g = ap

let rec closure_to_virtual' (e : Closure.t) =
  let closure_to_virtual x = closure_to_virtual' x in
  match e with
  | Const (CUnit, d) -> Ans (Nop d)
  | Const (CInt x, d) -> Ans (Li (x, d))
  | Const (CFloat x, d) -> Ans (FLi (x, d))
  | Const (CBool x, d) -> Ans (Li ((if x then 1 else 0), d))
  | Op (op, l, d) -> to_g (Ans (Op (op, l, d)))
  | If (cmp, x, y, e1, e2, d) -> (
    match x.ty with
    | Type.TyBool | Type.TyInt ->
        Ans
          (If
             ( cmp
             , conv x
             , conv y
             , closure_to_virtual e1
             , closure_to_virtual e2
             , I
             , d ))
    | Type.TyFloat ->
        Ans
          (If
             ( cmp
             , conv x
             , conv y
             , closure_to_virtual e1
             , closure_to_virtual e2
             , F
             , d ))
    | _ -> failwith "equality is only bool and int" )
  | Let (var, e1, e2, d) ->
      concat (conv var) (closure_to_virtual e1) (closure_to_virtual e2)
  | Var (var, d) -> to_g (Ans (Var (var, d)))
  | Closure (fundef, e) ->
      let fptr = Syntax.Var fundef.label in
      let ops x =
        Let
          ( Int 29
          , Lil (fundef.label.name, tmp_debug)
          , Let
              ( fptr
              , LetLoad (Int 0, 0, tmp_debug)
              , Let
                  ( Int 0
                  , Store (Int 29, fptr, 0, tmp_debug)
                  , fst
                      (List.fold_left
                         (fun (f, counter) x ->
                           ( (fun y ->
                               f
                                 (Let
                                    ( Int 0
                                    , Store (Var x, fptr, counter, tmp_debug)
                                    , y )) )
                           , counter + 1 ) )
                         ((fun x -> x), 1)
                         fundef.closure_fv)
                      x ) ) )
      in
      ops
        (Let
           ( Int 29
           , Li (List.length fundef.closure_fv + 1, tmp_debug)
           , Let
               ( Int 29
               , Op (Primitive Add, [fptr; Int 29], tmp_debug)
               , Let
                   ( Int 0
                   , Store (Int 29, Int 0, 0, tmp_debug)
                   , closure_to_virtual e ) ) ))
  | AppDir (var, ys, d) -> to_g (Ans (CallDir (var.name, ys, d)))
  | AppCls (var, ys, d) -> to_g (Ans (CallCls (var, ys, d)))
  | Tuple (names, d) ->
      let ( >>= ) x f = f x in
      Syntax.Var (tmp_var ())
      >>= fun x ->
      Let
        ( x
        , Li (List.length names, d)
        , Syntax.Var (tmp_var ())
          >>= fun y ->
          insert_alloc x y
            (fst
               (List.fold_right
                  (fun z (acc, counter) ->
                    ( Let
                        ( Syntax.Var (tmp_var ())
                        , Store (Var z, y, counter, d)
                        , acc )
                    , counter - 1 ) )
                  names
                  (Ans (Var (y, d)), List.length names - 1))) )
  | _ -> failwith (Closure.show e)

let rec function_to_virtual2 (fundef : debug Closure.fundef) =
  let body = closure_to_virtual' fundef.body in
  { label= fundef.f.name
  ; args= List.map conv fundef.args
  ; body
  ; fv= List.map conv fundef.fv
  ; ret= Syntax.Var (tmp_var ())
  ; local= 0 }

let h (x, y) = (closure_to_virtual' x, List.map function_to_virtual2 y)
