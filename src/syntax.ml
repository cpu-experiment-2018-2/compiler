open Type

type ty = Type.t [@@deriving show]

let genvar =
  let r = ref 0 in
  fun () ->
    let tmp = !r in
    let _ = r := tmp + 1 in
    string_of_int tmp

type pos = {line: int; col: int; bol: int} [@@deriving show]

type def = Global | Source of pos [@@deriving show]

type debug = {pos: def} [@@deriving show]

type var = {name: string; debug: debug; ty: ty} [@@deriving show]

type c = CInt of int | CBool of bool | CFloat of float | CUnit
[@@deriving show]

type primitive =
  | Add
  | Mul
  | Sub
  | Div
  | EQ
  | LE
  | GE
  | FAdd
  | FMul
  | FSub
  | FDiv
  | Neg
  | FNeg
  | Not
[@@deriving show]

type op = Primitive of primitive | ArrayPut of Type.t | ArrayGet of Type.t
[@@deriving show]

type primitive_info = {args: ty list; ret: ty} [@@deriving show]

let get_o_info p =
  let pi (a, b) = {args= a; ret= b} in
  let tmp =
    match p with
    | Add | Mul | Sub | Div -> ([TyInt; TyInt], TyInt)
    | EQ | LE | GE -> ([TyInt; TyInt], TyBool)
    | FAdd | FMul | FSub | FDiv -> ([TyFloat; TyFloat], TyFloat)
    | Neg -> ([TyInt], TyInt)
    | FNeg -> ([TyFloat], TyFloat)
    | Not -> ([TyBool], TyBool)
  in
  pi tmp

type 'a u =
  | Const of c * 'a
  | Op of op * 'a u list * 'a
  | If of 'a u * 'a u * 'a u * 'a
  | Let of var * 'a u * 'a u * 'a
  | Var of var * 'a
  | LetRec of 'a fundef * 'a u * 'a
  | App of 'a u * 'a u list * 'a
  | Tuple of 'a u list * 'a
  | LetTuple of var list * 'a u * 'a u * 'a
[@@deriving show]

and 'a fundef = {f: var; args: var list; body: 'a u; info: 'a}
[@@deriving show]

type t = debug u [@@deriving show]
