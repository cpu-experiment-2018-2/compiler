(** 
 * minimal llvm ir code generator
 *)
open Syntax

open Closure
open Type

type name = Syntax.var

type cmpty = F | I [@@deriving show]

type op = Syntax.op

type u =
  | Li of int
  | FLi of float
  | Var of name
  | Op of op * name list
  | Load of name * name * int
  | Store of name * name * int
  | If of Knormal.cmp * name * name * v * v * cmpty
  | Call of name * name list

and v = Ans of u | Let of name * u * v

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)

let rec closure_to_ir = function
  | Const (CUnit, d) -> Ans (Li 0)
  | Const (CInt x, d) -> Ans (Li x)
  | Const (CFloat x, d) -> Ans (FLi x)
  | Const (CBool x, d) -> Ans (Li (if x then 1 else 0))
  | Op (op, l, d) -> Ans (Op (op, l))
  | If (cmp, x, y, e1, e2, d) -> (
    match x.ty with
    | Type.TyBool | Type.TyInt ->
        Ans (If (cmp, x, y, closure_to_ir e1, closure_to_ir e2, I))
    | Type.TyFloat ->
        Ans (If (cmp, x, y, closure_to_ir e1, closure_to_ir e2, F))
    | _ -> failwith "equality is only bool and int" )
  | Let (var, e1, e2, d) -> concat var (closure_to_ir e1) (closure_to_ir e2)
  | Var (var, d) -> Ans (Var var)
  | AppDir (var, ys, d) -> Ans (Call (var, ys))

let primitve_to_str = function
  | Add -> "add"
  | Sub -> "sub"
  | FMul -> "fmul"
  | FDiv -> "fdiv"
  | FAdd -> "fadd"
  | FSub -> "fsub"

let ty_to_str = function
  | TyFloat -> "double"
  | TyInt | TyBool | TyUnit -> "i32"
  | _ -> "i32*"

let print_subst oc v x =
  match x with
  | Li y -> Printf.fprintf oc "%s = add i32 0,%d\n" v.name y
  | FLi y -> Printf.fprintf oc "%s = fadd double 0.0, %f\n" v.name y
  | Var y ->
      Printf.fprintf oc "%s = add %s 0, %s\n" v.name (ty_to_str y.ty) y.name
  | Op (Primitive op, [y; z]) ->
      Printf.fprintf oc "%s = %s %s %s, %s\n" v.name (primitve_to_str op)
        (ty_to_str y.ty) y.name z.name
  | _ -> failwith "not implemented"

type either = V of name | R of Type.t

let rec emit' oc dest x =
  match dest with
  | V y -> print_subst oc y x
  | R t ->
      let al = Syntax.alpha () in
      let al = {al with name= "%tmp." ^ al.name} in
      let _ = print_subst oc al x in
      Printf.fprintf oc "ret %s %s\n" (ty_to_str t) al.name

and emit oc x res_type =
  match x with
  | Let (x, y, z) -> emit' oc (V x) y ; emit oc z res_type
  | Ans z -> emit' oc (R res_type) z

let g oc x ret =
  let x =
    closure_to_ir (Closure.apply (fun x -> {x with name= "%" ^ x.name}) x)
  in
  emit oc x ret

let emit_func oc fd =
  let (TyFun (_, ret)) = fd.f.ty in
  let _ = Printf.fprintf oc "define %s @%s(" (ty_to_str ret) fd.f.name in
  let _ =
    match fd.args with
    | [] -> Printf.fprintf oc "){\n"
    | x :: y ->
        Printf.fprintf oc "%s %s" (ty_to_str x.ty) x.name ;
        List.iter
          (fun x -> Printf.fprintf oc ",%s %s" (ty_to_str x.ty) x.name)
          y
  in
  let _ = Printf.fprintf oc "){\n" in
  let _ = g oc fd.body ret in
  Printf.fprintf oc "}\n"

let f oc (main, functions) =
  let _ = Printf.fprintf oc "define i32 @main() {\n" in
  let _ = g oc main TyUnit in
  let _ = Printf.fprintf oc "}\n" in
  List.iter (emit_func oc) functions
