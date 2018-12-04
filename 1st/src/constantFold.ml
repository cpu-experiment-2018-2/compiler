open Syntax
open Knormal

let calc op args =
  match (op, args) with
  | Add, [CInt x; CInt y] -> CInt (x + y)
  | Sub, [CInt x; CInt y] -> CInt (x - y)
  | Div, [CInt x; CInt y] -> CInt (x / y)
  | EQ, [CInt x; CInt y] -> CBool (x = y)
  | LE, [CInt x; CInt y] -> CBool (x <= y)
  | GE, [CInt x; CInt y] -> CBool (x >= y)
  | FAdd, [CFloat x; CFloat y] -> CFloat (x +. y)
  | FSub, [CFloat x; CFloat y] -> CFloat (x -. y)
  | FMul, [CFloat x; CFloat y] -> CFloat (x *. y)
  | FDiv, [CFloat x; CFloat y] -> CFloat (x /. y)
  | Neg, [CInt x] -> CInt (-x)
  | FNeg, [CFloat x] -> CFloat ~-.x
  | Not, [CBool x] -> CBool (not x)
  | _ -> failwith "unreachble if type check is sound"

let rec constantFold map e =
  let g = constantFold map in
  let canFold args map =
    List.for_all (fun x -> List.exists (fun (y, z) -> y = x) map) args
  in
  match e with
  | Op (Primitive op, args, d) ->
      if canFold (List.map (fun x -> x.name) args) map then
        Const (calc op (List.map (fun x -> List.assoc x.name map) args), d)
      else e
  | Const _ | App _ | Tuple _ | Var _ | Op _ -> e
  | If (cmp, x, y, e1, e2, d) -> If (cmp, x, y, g e1, g e2, d)
  | Let (var, e1, e2, d) -> (
      let e = g e1 in
      match e with
      | Const (y, d) -> Let (var, e, constantFold ((var.name, y) :: map) e2, d)
      | _ -> Let (var, e, g e2, d) )
  | LetRec (fd, e, d) -> LetRec ({fd with body= g fd.body}, g e, d)

let (f: Knormal.t -> Knormal.t) = constantFold []
