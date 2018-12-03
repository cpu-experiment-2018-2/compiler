open Llvm
open Syntax
open Closure
open Type

let context = global_context ()

let the_module = create_module context ""

let builder = builder context

let env : (string, llvalue) Hashtbl.t = Hashtbl.create 10

let float_type = float_type context

let i32_type = i32_type context

let i1_type = i1_type context

let void_type = void_type context

type name = Syntax.var

type cmpty = F | I [@@deriving show]

type op = Syntax.op

type u =
  | C of Syntax.c
  | Var of name
  | Op of op * name list
  | Load of name * int
  | Store of name * name * int
  | If of Knormal.cmp * name * name * v * v * cmpty
  | Call of name * name list

and v = Ans of u | Let of name * u * v

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)

let rec closure_to_ir = function
  | Const (CInt x, d) -> Ans (C (CInt x))
  | Const (CFloat x, d) -> Ans (C (CFloat x))
  | Const (CBool x, d) -> Ans (C (CBool x))
  | Const (CUnit, d) -> Ans (C CUnit)
  (*| Op(ArrayPut _, [x;y;z], d) -> let a = Sytax.genvar() in Let(a, Op(Primitive Add, [x;y]), Ans(Store(z,a,0)))*)
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

let fzero = const_float float_type 0.0

let i32zero = const_int i32_type 0

let i1zero = const_int i1_type 0

let const_to_llvalue dest = function
  | CFloat x -> build_fadd (const_float float_type x) fzero dest builder
  | CInt x -> build_add (const_int i32_type x) i32zero dest builder
  | CBool x ->
      build_add (const_int i1_type (if x then 1 else 0)) i1zero dest builder
  | CUnit -> failwith "void has not value"

let find x = Hashtbl.find env x.name
let gencond x y cmp ty = 
    let lhs = find x in
    let rhs = find y in

    
let to_llvalue dest x =
  let unary f x = f (Hashtbl.find env x.name) dest builder in
  let binary f x y =
    f (Hashtbl.find env x.name) (Hashtbl.find env y.name) dest builder
  in
  match x with
  | C y -> const_to_llvalue dest y
  | Op (Primitive Add, [x; y]) -> binary build_add x y
  | Op (Primitive Sub, [x; y]) -> binary build_sub x y
  | Op (Primitive FAdd, [x; y]) -> binary build_fadd x y
  | Op (Primitive FDiv, [x; y]) -> binary build_fdiv x y
  | Op (Primitive FMul, [x; y]) -> binary build_fmul x y
  | Op (Primitive FSub, [x; y]) -> binary build_fsub x y
  | Op (Primitive Neg, [x]) -> unary build_neg x
  | Op (Primitive FNeg, [x]) -> unary build_fneg x
  | Call (f, args) ->
      let Some(f) = lookup_function f.name the_module in
      build_call f (Array.of_list (List.map find args)) dest builder
  | If(cmp,x,y,e1,e2,ty) -> 
      (* let xbb = append_block context (dest^".true")  in *)
      (* let xvalue = codegen' e1 Value in *)
      (* let ybb = append_block context (dest^".false")  in *)
      (* let yvalue = codegen' e2 Value in *)
      binary build_fdiv x y


let rec codegen dest x =
  let v = to_llvalue dest x in
  v

type ret = 
    Ret | Value

let rec codegen_ret x =
  match x with
  | C CUnit -> build_ret_void builder
  | Var x -> build_ret (Hashtbl.find env x.name) builder
  | _ ->
      let a = Syntax.alpha () in
      codegen' (Let (a, x, Ans (Var a))) Ret

and codegen' x ret_type =
  match x with
  | Ans u -> 
          (
          match ret_type with 
          | Ret -> codegen_ret u 
          | Value -> 
      let a = Syntax.genvar() in
      codegen a u 
          )
  | Let (n, e1, e2) ->
      let v = codegen n.name e1  in
      let _ = Hashtbl.add env n.name v in
      codegen' e2 ret_type

let type_to_lltype = function
  | TyUnit -> void_type
  | TyBool -> i1_type
  | TyInt -> i32_type
  | TyFloat -> float_type
  | TyTuple _ | TyArray _ -> pointer_type i32_type

let fundef_to_ir fd =
  let (TyFun (args, ret)) = fd.f.ty in
  let body = closure_to_ir fd.body in
  let args = Array.of_list (List.map type_to_lltype args) in
  let ret = type_to_lltype ret in
  let ft = function_type ret args in
  let f = declare_function fd.f.name ft the_module in
  let _ =
    Array.iter2
      (fun a n -> set_value_name n a ; Hashtbl.add env n a)
      (params f)
      (Array.of_list (List.map (fun x -> x.name) fd.args))
  in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let value = codegen' body Ret in
  ()

let main_to_ir main =
  let main = closure_to_ir main in
  let m = Array.make 0 void_type in
  let ft = function_type void_type m in
  let f = declare_function "main" ft the_module in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let value = codegen' main Ret in
  ()

let f name (main, functions) =
  let _ = List.iter fundef_to_ir functions in
  let _ = main_to_ir main in
  let _ = print_module name the_module in
  ()
