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
let alpha ty = 
    let a = Syntax.alpha() in
    { a with ty = ty }
type u =
  | C of Syntax.c
  | Var of name
  | Op of op * name list
  | Load of  name * name 
  | Store of name * name  * name
  | If of Knormal.cmp * name * name * v * v * cmpty
  | Call of name * name list
[@@deriving show]

and v = Ans of u | Let of name * u * v

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)

let rec closure_to_ir x=match x with 
  | Const (CInt x, d) -> Ans (C (CInt x))
  | Const (CFloat x, d) -> Ans (C (CFloat x))
  | Const (CBool x, d) -> Ans (C (CBool x))
  | Const (CUnit, d) -> Ans (C CUnit)
  | Op(ArrayGet _, [x;y], d) -> Ans(Load(x,y))
  | Op(ArrayPut _, [x;y;z], d) -> Ans(Store(x,y,z))
  | Op(Projection (idx,_,_), [x], d) -> let a = alpha TyInt in Let(a, C(CInt idx), Ans(Load(x,a)))
  | Tuple(l,d) -> 
          let ty = (TyTuple(List.map (fun x -> x.ty) l)) in
          let base= alpha (TyTuple(List.map (fun x -> x.ty) l)) in
          let hoge = snd(
          List.fold_right
          (
              fun  p (idx,acc) -> 
                  let a = alpha TyUnit in
                  let idx' = alpha TyInt in
                  (idx - 1,Let(idx', C(CInt idx),Let(a, Store(base, idx', p), acc)))
          ) 
          l
          ((List.length l) - 1, Ans(Var(base)))
          )
          in 
          let f = Syntax.alpha() in 
          let f = { f with name = "create_tuple"; ty = TyFun([TyInt],TyTuple[]) } in
          let a = alpha TyInt in 
          Let(a, C(CInt (List.length l)), Let(base , Call(f,[a]), hoge))
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
  | _ -> failwith  (Closure.show x)

let fzero = const_float float_type 0.0

let i32zero = const_int i32_type 0

let i1zero = const_int i1_type 0

let nop () = build_add i32zero i32zero "" builder

let filter_unit = List.filter (fun x -> x.ty <> TyUnit)

let const_to_llvalue dest = function
  | CFloat x -> build_fadd (const_float float_type x) fzero dest builder
  | CInt x -> build_add (const_int i32_type x) i32zero dest builder
  | CBool x ->
      build_add (const_int i1_type (if x then 1 else 0)) i1zero dest builder
  | CUnit -> nop ()

let find x =
  let _ = Printf.printf "%s\n" x.name in
  Hashtbl.find env x.name

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

type ret = Ret of Type.t | Value | Void

let rec codegen_ret x ty =
  match x with
  | C CUnit -> build_ret_void builder
  | Var x -> build_ret (find x) builder
  | _ -> (
      let a = Syntax.alpha () in
      let a = {a with ty} in
      match ty with
      | TyUnit -> codegen' (Let (a, x, Ans (C CUnit))) (Ret ty)
      | _ -> codegen' (Let (a, x, Ans (Var a))) (Ret ty) )

and codegen dest x =
  let v = to_llvalue dest x in
  v

and codegen' x ret_type =
  match x with
  | Ans u -> (
    match ret_type with
    | Ret ty -> codegen_ret u ty
    | Void -> codegen "" u
    | Value ->
        let a = Syntax.genvar () in
        codegen a u )
  | Let (n, e1, e2) ->
      let n = {n with name= (if n.ty = TyUnit then "" else n.name)} in
      let v = codegen n.name e1 in
      let _ = Hashtbl.add env n.name v in
      codegen' e2 ret_type

and to_llvalue dest x =
  let unary f x = f (find x) dest builder in
  let binary f x y = f (find x) (find y) dest builder in
  match x with
  | C y -> const_to_llvalue dest y
  | Var x -> find x
  | Store(ptr,idx,v) -> 
          let arr = [|find idx|] in
          let a = Syntax.genvar() in
          let x = build_in_bounds_gep (find ptr) arr a builder in
          build_store (find v) x builder
  | Load(ptr,idx) -> 
          let arr = [|find idx|] in
          let a = Syntax.genvar() in
          let x = build_in_bounds_gep (find ptr) arr a builder in
          build_load x a builder
  | Op (Primitive Add, [x; y]) -> binary build_add x y
  | Op (Primitive Sub, [x; y]) -> binary build_sub x y
  | Op (Primitive FAdd, [x; y]) -> binary build_fadd x y
  | Op (Primitive FDiv, [x; y]) -> binary build_fdiv x y
  | Op (Primitive FMul, [x; y]) -> binary build_fmul x y
  | Op (Primitive FSub, [x; y]) -> binary build_fsub x y
  | Op (Primitive Neg, [x]) -> unary build_neg x
  | Op (Primitive FNeg, [x]) -> unary build_fneg x
  | Call (f, args) ->
      let _ =
        Printf.printf "call %s -> %s ty=%s\n" f.name dest (Type.show f.ty)
      in
      let (TyFun (_, ret)) = f.ty in
      let (Some f) = lookup_function f.name the_module in
      build_call f
        (Array.of_list (List.map find (filter_unit args)))
        dest builder
  | If (cmp, x, y, e1, e2, ty) ->
      let _ = Printf.printf "cmp %s %s -> dest %s\n" x.name y.name dest in
      let cond_val = gencond x y cmp ty in
      let start_bb = insertion_block builder in
      let the_function = block_parent start_bb in
      let then_bb = append_block context "then" the_function in
      let _ = position_at_end then_bb builder in
      let ret = if dest = "" then Void else Value in
      let then_val = codegen' e1 ret in
      let new_then_bb = insertion_block builder in
      let else_bb = append_block context "else" the_function in
      let _ = position_at_end else_bb builder in
      let else_val = codegen' e2 ret in
      let new_else_bb = insertion_block builder in
      (* Emit merge block. *)
      let merge_bb = append_block context "ifcont" the_function in
      position_at_end merge_bb builder ;
      let incoming = [(then_val, new_then_bb); (else_val, new_else_bb)] in
      let phi =
        if dest = "" then nop () else build_phi incoming dest builder
      in
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
  | TyVar x -> i32_type

let fundef_global_proto =
  let f (name, (_, args, ret)) =
    let args =
      Array.of_list
        (List.map type_to_lltype (List.filter (fun x -> x <> TyUnit) args))
    in
    let ret = type_to_lltype ret in
    let ft = function_type ret args in
    let f = declare_function name ft the_module in
    ()
  in
  List.iter f Typing.builtin_function'

let fundef_proto fd =
  let args = List.map (fun x -> x.ty) fd.args in
  let (TyFun (_, ret)) = fd.f.ty in
  let args = Array.of_list (List.map type_to_lltype args) in
  let ret = type_to_lltype ret in
  let ft = function_type ret args in
  let f = declare_function fd.f.name ft the_module in
  ()

let fundef_to_ir fd =
  let _ = Printf.printf "define %s\n" fd.f.name in
  let args = List.map (fun x -> x.ty) fd.args in
  let (TyFun (_, ret)) = fd.f.ty in
  let (Some f) = lookup_function fd.f.name the_module in
  let body = closure_to_ir fd.body in
  let _ = List.iter (fun x -> Printf.printf "%s " x.name) fd.args in
  let _ =
    Printf.printf "%d %d"
      (Array.length (params f))
      (List.length (filter_unit fd.args))
  in
  let _ =
    Array.iter2
      (fun a n -> set_value_name n a ; Hashtbl.add env n a)
      (params f)
      (Array.of_list (List.map (fun x -> x.name) (filter_unit fd.args)))
  in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let value = codegen' body (Ret ret) in
  dump_value value

let main_to_ir main =
  let main = closure_to_ir main in
  let m = Array.make 0 i32_type in
  let ft = function_type void_type m in
  let f = declare_function "main" ft the_module in
  let _ = add_function_attr f (create_string_attr context "nouwind" "") in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let value = codegen' main (Ret TyUnit) in
  dump_value value

let f name (main, functions) =
  let _ = List.iter fundef_proto functions in
  let _ = List.iter fundef_to_ir functions in
  let _ = main_to_ir main in
  let _ = print_module name the_module in
  ()
