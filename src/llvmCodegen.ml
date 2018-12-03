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

type name = Syntax.var [@@deriving show]

type cmpty = F | I [@@deriving show]

type op = Syntax.op [@@deriving show]

type u =
  | C of Syntax.c
  | Var of name
  | Op of op * name list
  | Load of name * int
  | Store of name * name * int
  | If of Knormal.cmp * name * name * v * v * cmpty
  | Call of name * name list
[@@deriving show]

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

let cmp_to_Icmp = function
  | Knormal.LE -> Icmp.Sle
  | Knormal.LT -> Icmp.Slt
  | Knormal.EQ -> Icmp.Eq

let cmp_to_Fcmp = function
  | Knormal.LE -> Fcmp.Ole
  | Knormal.LT -> Fcmp.Olt
  | Knormal.EQ -> Fcmp.Oeq

let gencond x y cmp ty =
  let lhs = find x in
  let rhs = find y in
  let condi = cmp_to_Icmp cmp in
  let condf = cmp_to_Fcmp cmp in
  match ty with
  | F -> build_fcmp condf lhs rhs "" builder
  | I -> build_icmp condi lhs rhs "" builder

type ret = Ret | Value

let rec codegen_ret x =
  match x with
  | C CUnit -> build_ret_void builder
  | Var x -> build_ret (Hashtbl.find env x.name) builder
  | _ ->
      let a = Syntax.alpha () in
      codegen' (Let (a, x, Ans (Var a))) Ret

and codegen dest x =
  let v = to_llvalue dest x in
  v

and codegen' x ret_type =
  match x with
  | Ans u -> (
    match ret_type with
    | Ret -> codegen_ret u
    | Value ->
        let a = Syntax.genvar () in
        codegen a u )
  | Let (n, e1, e2) ->
      let v = codegen n.name e1 in
      let _ = Hashtbl.add env n.name v in
      codegen' e2 ret_type

and to_llvalue dest x =
  let unary f x = f (Hashtbl.find env x.name) dest builder in
  let binary f x y =
    f (Hashtbl.find env x.name) (Hashtbl.find env y.name) dest builder
  in
  match x with
  | C y -> const_to_llvalue dest y
  | Var x -> find x
  | Op (Primitive Add, [x; y]) -> binary build_add x y
  | Op (Primitive Sub, [x; y]) -> binary build_sub x y
  | Op (Primitive FAdd, [x; y]) -> binary build_fadd x y
  | Op (Primitive FDiv, [x; y]) -> binary build_fdiv x y
  | Op (Primitive FMul, [x; y]) -> binary build_fmul x y
  | Op (Primitive FSub, [x; y]) -> binary build_fsub x y
  | Op (Primitive Neg, [x]) -> unary build_neg x
  | Op (Primitive FNeg, [x]) -> unary build_fneg x
  | Call (f, args) ->
      let _ = Printf.printf "call %s\n" f.name in
      let (TyFun (_, ret)) = f.ty in
      let (Some f) = lookup_function f.name the_module in
      build_call f (Array.of_list (List.map find args)) dest builder
  | If (cmp, x, y, e1, e2, ty) ->
      let cond_val = gencond x y cmp ty in
      let start_bb = insertion_block builder in
      let the_function = block_parent start_bb in
      let then_bb = append_block context "then" the_function in
      let _ = position_at_end then_bb builder in
      let then_val = codegen' e1 Value in
      let new_then_bb = insertion_block builder in
      let else_bb = append_block context "else" the_function in
      let _ = position_at_end else_bb builder in
      let else_val = codegen' e2 Value in
      let new_else_bb = insertion_block builder in
      let merge_bb = append_block context "ifcont" the_function in
      let _ = position_at_end merge_bb builder in
      let incoming = [(then_val, new_then_bb); (else_val, new_else_bb)] in
      let phi = build_phi incoming "iftmp" builder in
      (* Return to the start block to add the conditional branch. *)
      position_at_end start_bb builder ;
      ignore (build_cond_br cond_val then_bb else_bb builder) ;
      (* Set a unconditional branch at the end of the 'then' block and the
       * 'else' block to the 'merge' block. *)
      position_at_end new_then_bb builder ;
      ignore (build_br merge_bb builder) ;
      position_at_end new_else_bb builder ;
      ignore (build_br merge_bb builder) ;
      (* Finally, set the builder to the end of the merge block. *)
      position_at_end merge_bb builder ;
      phi
  | _ -> failwith (show_u x)

let type_to_lltype = function
  | TyUnit -> void_type
  | TyBool -> i1_type
  | TyInt -> i32_type
  | TyFloat -> float_type
  | TyTuple _ | TyArray _ -> pointer_type i32_type

let fundef_proto fd =
  let (TyFun (args, ret)) = fd.f.ty in
  let body = closure_to_ir fd.body in
  let args = Array.of_list (List.map type_to_lltype args) in
  let ret = type_to_lltype ret in
  let ft = function_type ret args in
  let f = declare_function fd.f.name ft the_module in
  ()

let fundef_to_ir fd =
  (* let (TyFun (args, ret)) = fd.f.ty in *)
  (* let args = Array.of_list (List.map type_to_lltype args) in *)
  (* let ret = type_to_lltype ret in *)
  (* let ft = function_type ret args in *)
  (* let f = declare_function fd.f.name ft the_module in *)
  let (Some f) = lookup_function fd.f.name the_module in
  let body = closure_to_ir fd.body in
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
  let _ = List.iter fundef_proto functions in
  let _ = List.iter fundef_to_ir functions in
  let _ = main_to_ir main in
  let _ = print_module name the_module in
  ()
