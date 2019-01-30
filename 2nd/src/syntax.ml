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

let pos_to_str = function
  | Global -> " ? somewhere "
  | Source x -> "at line " ^ string_of_int x.line

type debug = {pos: def} [@@deriving show]

type var = {name: string; debug: debug; ty: ty} [@@deriving show]

let alpha () = {name= genvar (); debug= {pos= Global}; ty= TyInt}

type c = CInt of int | CBool of bool | CFloat of float | CUnit
[@@deriving show]

type primitive =
  | Add
  | Mul
  | Sub
  | Div
  | EQ
  | LE
  | LT
  | GE
  | GT
  | FAdd
  | FMul
  | FSub
  | FDiv
  | Neg
  | FNeg
  | Not
[@@deriving show, ord]

type adhoc = AAdd [@@deriving show, ord]

type op =
  | Primitive of primitive
  | ArrayPut of Type.t
  | ArrayGet of Type.t
  | Projection of int * int * Type.t
  | Adhoc of adhoc
[@@deriving show]

type primitive_info = {args: ty list; ret: ty} [@@deriving show]

let get_o_info p =
  let pi (a, b) = {args= a; ret= b} in
  let tmp =
    match p with
    | Add | Mul | Sub | Div -> ([TyInt; TyInt], TyInt)
    | EQ | LE | LT | GE | GT ->
        let v = TyVar (Type.genvar ()) in
        ([v; v], TyBool)
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
[@@deriving show]

and 'a fundef = {f: var; args: var list; body: 'a u; info: 'a}
[@@deriving show]

type t = debug u [@@deriving show]

module M = Map.Make (struct
  type t = string

  let compare x y = compare x y
end)

module VarMap = Map.Make (struct
  type t = var

  let compare x y = compare x.name y.name
end)

type g = GVar of var | Int of int [@@deriving show]

let compare_g x y =
  match (x, y) with
  | GVar _, Int _ -> 1
  | Int _, GVar _ -> -1
  | GVar x, GVar y -> compare x.name y.name
  | Int x, Int y -> compare x y

let g2s x = match x with Int y -> "REG " ^ string_of_int y | GVar y -> y.name

module VarMap2 = Map.Make (struct
  type t = g

  let compare = compare_g
end)

module VarSet2 = Set.Make (struct
  type t = g

  let compare = compare_g
end)

module VarSet = Set.Make (struct
  type t = var

  let compare x y = compare x.name y.name
end)
