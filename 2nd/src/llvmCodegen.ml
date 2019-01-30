open Llvm
open Syntax
open HpAlloc
open Type
open IR

let context = global_context ()

let the_module = create_module context ""

let _ = set_data_layout "e-m:e-p:32:32" the_module

let builder = builder context

let env : (string, llvalue) Hashtbl.t = Hashtbl.create 10

let env_constant : (string, llvalue) Hashtbl.t = Hashtbl.create 10

let float_type = float_type context

let i32_type = i32_type context

let i8_type = i8_type context

let i1_type = i1_type context

let void_type = void_type context

let type_to_lltype = function
  | TyUnit -> void_type
  | TyBool -> i1_type
  | TyInt -> i32_type
  | TyFloat -> float_type
  | TyTuple _ | TyArray _ -> pointer_type i32_type
  | TyVar x -> i32_type

let incre_ptr_and_cast ptr destty idx =
  let type_to_lltype2 x = type_to_lltype (if x = TyBool then TyInt else x) in
  let ptr = build_ptrtoint ptr i32_type (Syntax.genvar ()) builder in
  let ptr = build_add ptr idx (Syntax.genvar ()) builder in
  let ptr =
    build_inttoptr ptr
      (pointer_type (type_to_lltype2 destty))
      (Syntax.genvar ()) builder
  in
  ptr

let fzero = const_float float_type 0.0

let i32zero = const_int i32_type 0

let i1zero = const_int i1_type 0

let ptrzero = const_pointer_null i32_type

let nop () = build_add i32zero i32zero "" builder

let filter_unit = List.filter (fun x -> x.ty <> TyUnit)

let const_to_llvalue dest = function
  | CFloat x -> build_fadd (const_float float_type x) fzero dest builder
  | CInt x -> build_add (const_int i32_type x) i32zero dest builder
  | CBool x ->
      build_add (const_int i1_type (if x then 1 else 0)) i1zero dest builder
  | CUnit -> nop ()

let find x =
  (* let _ = Printf.printf "%s\n" x.name in *)
  match Hashtbl.find_opt env x.name with
  | Some y -> y
  | None -> Hashtbl.find env_constant x.name

let cmp_to_Icmp = function
  | Knormal.LE -> Icmp.Sle
  | Knormal.LT -> Icmp.Slt
  | Knormal.EQ -> Icmp.Eq
  | Knormal.GE -> Icmp.Sge
  | Knormal.GT -> Icmp.Sgt
  | Knormal.NE -> Icmp.Ne

let cmp_to_Fcmp = function
  | Knormal.LE -> Fcmp.Ole
  | Knormal.LT -> Fcmp.Olt
  | Knormal.EQ -> Fcmp.Oeq
  | Knormal.GE -> Fcmp.Oge
  | Knormal.GT -> Fcmp.Ogt
  | Knormal.NE -> Fcmp.One

let gencond x y cmp ty =
  let lhs = find x in
  let rhs = find y in
  let condi = cmp_to_Icmp cmp in
  let condf = cmp_to_Fcmp cmp in
  match ty with
  | F -> build_fcmp condf lhs rhs "" builder
  | I -> build_icmp condi lhs rhs "" builder

type ret = Ret of Type.t | Value of Type.t | Void

let rec codegen_ret x ty =
  match x with
  | C CUnit -> build_ret_void builder
  | Var x -> build_ret (find x) builder
  | _ -> (
      let a = IR.alpha () in
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
    | Void ->
        let a = IR.alpha () in
        let a = {a with ty= TyUnit; name= ""} in
        codegen a u
    | Value ty ->
        let a = IR.alpha () in
        let a = {a with ty} in
        codegen a u )
  | Let (n, e1, e2) ->
      let n = {n with name= (if n.ty = TyUnit then "" else n.name)} in
      let v = codegen n e1 in
      let _ = Hashtbl.add env n.name v in
      codegen' e2 ret_type

and to_llvalue dest x =
  let destty = dest.ty in
  let dest = dest.name in
  let unary f x = f (find x) dest builder in
  let binary f x y = f (find x) (find y) dest builder in
  (* let rec cast x =  *)
  (*     let v_ = Syntax.genvar () in *)
  (*     match x.ty with *)
  (*     |  TyArray _ *)
  (*     |  TyTuple _  ->  *)
  (*             (build_ptrtoint (find x) (i32_type)  v_ builder) *)
  (*     | _ ->  *)
  (*             (build_bitcast (find x) (type_to_lltype (dest)) v_ builder)  *)
  match x with
  | C y -> const_to_llvalue dest y
  | Var x -> find x
  | Store (ptr, idx, v) ->
      let arr = find idx in
      let v_ = Syntax.genvar () in
      let v =
        match v.ty with
        | TyArray _ | TyTuple _ -> build_ptrtoint (find v) i32_type v_ builder
        | _ -> build_zext_or_bitcast (find v) i32_type v_ builder
      in
      let x = incre_ptr_and_cast (find ptr) TyInt arr in
      (* let a = Syntax.genvar () in *)
      (* let x = build_in_bounds_gep (find ptr) arr a builder in *)
      build_store v x builder
  | Load (ptr, idx) ->
      let arr = find idx in
      let v_ = Syntax.genvar () in
      let x = incre_ptr_and_cast (find ptr) destty arr in
      let v = build_load x (Syntax.genvar ()) builder in
      let v_ = Syntax.genvar () in
      build_trunc_or_bitcast v (type_to_lltype destty) v_ builder
  (*  *)
  (* | Store (ptr, idx, v) -> *)
  (*     let arr = [|find idx|] in *)
  (*     let v_ = Syntax.genvar () in *)
  (*     let v =( match v.ty with  *)
  (*       | TyArray _ | TyTuple _ ->   *)
  (*        build_ptrtoint (find v) i32_type v_ builder *)
  (*       | _ -> build_zext_or_bitcast (find v) i32_type v_ builder  *)
  (*     ) in *)
  (*     let a = Syntax.genvar () in *)
  (*     let x = build_in_bounds_gep (find ptr) arr a builder in *)
  (*     build_store v x builder *)
  (* | Load (ptr, idx) -> *)
  (*     let arr = [|find idx|] in *)
  (*     let v_ = Syntax.genvar () in *)
  (*     let type_to_lltype2 x =  *)
  (*         type_to_lltype(if x = TyBool then TyInt else x) in *)
  (*     let v = build_bitcast (find ptr) (pointer_type (type_to_lltype2 destty)) v_ builder in *)
  (*     let a = Syntax.genvar () in *)
  (*     let x = build_in_bounds_gep v arr a builder in *)
  (*     let v = build_load x a builder in *)
  (*     let v_ = Syntax.genvar () in *)
  (*     build_trunc_or_bitcast v (type_to_lltype destty) v_ builder *)
  | Op (Primitive Add, [x; y]) -> binary build_add x y
  | Op (Primitive Sub, [x; y]) -> binary build_sub x y
  | Op (Primitive Mul, [x; y]) -> binary build_mul x y
  | Op (Primitive Div, [x; y]) -> binary build_udiv x y
  | Op (Primitive Not, [x]) -> unary build_not x
  | Op (Primitive FAdd, [x; y]) -> binary build_fadd x y
  | Op (Primitive FDiv, [x; y]) -> binary build_fdiv x y
  | Op (Primitive FMul, [x; y]) -> binary build_fmul x y
  | Op (Primitive FSub, [x; y]) -> binary build_fsub x y
  | Op (Primitive Neg, [x]) -> unary build_neg x
  | Op (Primitive FNeg, [x]) -> unary build_fneg x
  | Call (f, args) ->
      (* let _ = *)
      (*   Printf.printf "call %s -> %s ty=%s\n" f.name dest (Type.show f.ty) *)
      (* in *)
      let (TyFun (_, ret)) = f.ty in
      let (Some fv) = lookup_function f.name the_module in
      if f.name = "create_array" then
        let [x; y] = args in
        let v =
          match y.ty with
          | TyArray _ | TyTuple _ ->
              build_ptrtoint (find y) i32_type (Syntax.genvar ()) builder
          | _ -> build_bitcast (find y) i32_type (Syntax.genvar ()) builder
        in
        build_call fv (Array.of_list [find x; v]) dest builder
      else
        build_call fv
          (Array.of_list (List.map find (filter_unit args)))
          dest builder
  | While (cmp, ty, x, y, pairs1, updates, cont)
   |For (cmp, ty, x, y, _, pairs1, updates, cont) ->
      let used = List.map fst pairs1 in
      let rename =
        List.fold_left
          (fun acc a ->
            let name = a.name ^ "." ^ Syntax.genvar () in
            VarMap.add a {a with name} acc )
          VarMap.empty used
      in
      (* let start_bb = insertion_block in *)
      (* let the_function = block_parent start_bb in *)
      (* let for_start = append_block context "for_start_dummy" the_function in *)
      (* let _ = position_at_end for_start builder in *)
      (* let for_body = append_block context "for_body_dummy" the_function in *)
      (* let pairs' = *)
      (*   List.map (fun (x, y) -> (IR.find_or rename x, x, y)) pairs1 *)
      (* in *)
      (* let _ = *)
      (*   List.iter *)
      (*     (fun (x, y, z) -> *)
      (*       let dummy = match x.ty with | TyBool -> i1zero | TyInt -> i32zero | TyFloat -> fzero | _ -> ptrzero in *)
      (*       let incoming = [(dummy, start_bb); (dummy, for_body)] in *)
      (*       let phi = *)
      (*         if y.ty = TyUnit then nop () *)
      (*         else build_phi incoming x.name builder *)
      (*       in *)
      (*       Hashtbl.add env x.name phi ) *)
      (*     pairs' *)
      (* in *)
      (* let updates' = *)
      (*   List.map (fun (x, y) -> (IR.find_or rename x, IR.alpha_conv_u rename y)) updates *)
      (* in *)
      (* let _ = position_at_end for_body builder in *)
      (* let _ = *)
      (*   List.iter (fun (x, y) -> Hashtbl.add env x.name (codegen x y)) updates' *)
      (* in *)
      (* let _ = delete_block for_start  in *)
      (* let for_start' = append_block context "for_start" the_function in *)
      (* let _ = position_at_end for_start' builder in *)
      (* let _ = *)
      (*   List.iter *)
      (*     (fun (x, y, z) -> *)
      (*       let incoming = [(find y, start_bb); (find z, for_body)] in *)
      (*       let phi = *)
      (*         if y.ty = TyUnit then nop () *)
      (*         else build_phi incoming x.name builder *)
      (*       in *)
      (*       Hashtbl.add env x.name phi ) *)
      (*     pairs' *)
      (* in *)
      (*  *)
      (* let for_body' = append_block context "for_body" the_function in *)
      (* let _ = position_at_end for_body' builder in *)
      (* let _ = *)
      (*   List.iter (fun (x, y) -> Hashtbl.add env x.name (codegen x y)) updates' in *)
      (* let _ = build_br for_start' builder in *)
      (* let _ = delete_block for_body builder in *)
      (* let _ = position_at_end for_start' builder in *)
      (* let cont_bb = append_block context "cont" the_function in *)
      (* let cond_val = gencond (IR.find_or rename x) (IR.find_or rename y) cmp ty in *)
      (* let  _ = build_cond_br cond_val for_body' cont_bb builder in *)
      (* let _ = position_at_end start_bb builder in *)
      (* let _ = build_br for_start' builder in *)
      (* let _ = position_at_end cont_bb builder in *)
      let ret = if dest = "" then Void else Value destty in
      codegen' (IR.alpha_conv_v rename cont) ret
  | If (cmp, x, y, e1, e2, ty) ->
      (* let _ = Printf.printf "cmp %s %s -> dest %s\n" x.name y.name dest in *)
      let cond_val = gencond x y cmp ty in
      let start_bb = insertion_block builder in
      let the_function = block_parent start_bb in
      let then_bb = append_block context "then" the_function in
      let _ = position_at_end then_bb builder in
      let ret = if dest = "" then Void else Value destty in
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
  let args = List.map (fun x -> x.ty) (filter_unit fd.args_ir) in
  let (TyFun (_, ret)) = fd.f_ir.ty in
  let args = Array.of_list (List.map type_to_lltype args) in
  let ret = type_to_lltype ret in
  let ft = function_type ret args in
  let f = declare_function fd.f_ir.name ft the_module in
  ()

let fundef_to_ir fd =
  let args = List.map (fun x -> x.ty) fd.args_ir in
  let (TyFun (_, ret)) = fd.f_ir.ty in
  let (Some f) = lookup_function fd.f_ir.name the_module in
  let body = fd.body_ir in
  (* let _ = List.iter (fun x -> Printf.printf "%s " x.name) fd.args_ir in *)
  (* let _ = *)
  (*   Printf.printf "%s %d %d\n" fd.f.name *)
  (*     (Array.length (params f)) *)
  (*     (List.length (filter_unit fd.args)) *)
  (* in *)
  let _ =
    Array.iter2
      (fun a n -> set_value_name n a ; Hashtbl.add env n a)
      (params f)
      (Array.of_list (List.map (fun x -> x.name) (filter_unit fd.args_ir)))
  in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let value = codegen' body (Ret ret) in
  ()

(* dump_value value *)

let main_to_ir main (hp, global) =
  (* let main = closure_to_ir main in *)
  let m = Array.make 0 i32_type in
  let ft = function_type void_type m in
  let f = declare_function "main" ft the_module in
  let _ = add_function_attr f (create_string_attr context "nouwind" "") in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let ptr = const_inttoptr (const_int i32_type 1) (pointer_type i32_type) in
  let _ = ignore (build_store (const_int i32_type hp) ptr builder) in
  let (Some fv) = lookup_function "set_hp" the_module in
  (* let _ = build_call fv (Array.of_list [(const_int i32_type hp)]) ("") builder  in  *)
  let _ =
    VarMap.iter
      (fun key v ->
        match v with
        | Arr (k, init, len) ->
            Hashtbl.add env_constant key.name
              (const_inttoptr (const_int i32_type k) (pointer_type i32_type)) ;
            let v = const_int i32_type (HpAlloc.get_int_value init) in
            for i = k to k + len - 1 do
              let ptr =
                const_inttoptr (const_int i32_type i) (pointer_type i32_type)
              in
              let _ = ignore (build_store v ptr builder) in
              ()
            done
        | Tup (k, tup) ->
            Hashtbl.add env_constant key.name
              (const_inttoptr (const_int i32_type k) (pointer_type i32_type)) ;
            let vs =
              Array.of_list
                (List.map
                   (fun x -> const_int i32_type (HpAlloc.get_int_value x))
                   tup)
            in
            let len = List.length tup in
            for i = 0 to len - 1 do
              let _ = Printf.printf "generating %d\n" k in
              let v = vs.(i) in
              let i = i + k in
              let ptr =
                const_inttoptr (const_int i32_type i) (pointer_type i32_type)
              in
              let _ = ignore (build_store v ptr builder) in
              ()
            done )
      global
  in
  let value = codegen' main (Ret TyUnit) in
  ()

(* dump_value value *)

let f name (main, functions) (hp, global) =
  let _ =
    VarMap.iter
      (fun key v ->
        match v with
        | Arr (k, init, len) ->
            Hashtbl.add env_constant key.name
              (const_inttoptr (const_int i32_type k) (pointer_type i32_type))
        | Tup (k, tup) ->
            Hashtbl.add env_constant key.name
              (const_inttoptr (const_int i32_type k) (pointer_type i32_type))
        )
      global
  in
  let _ = List.iter fundef_proto functions in
  let _ = List.iter fundef_to_ir functions in
  let _ = main_to_ir main (hp, global) in
  let _ = print_module name the_module in
  ()
