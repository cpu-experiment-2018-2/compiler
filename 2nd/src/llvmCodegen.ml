open Llvm
open Syntax
open HpAlloc
open Closure
open Type

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
let to_2beki x= 
    let rec sub y x = 
        if y * 2 >= x then 
            y * 2
        else sub (y*2) x 
    in
    sub 1 x

    

let type_to_lltype = function
  | TyUnit -> void_type
  | TyBool -> i1_type
  | TyInt -> i32_type
  | TyFloat -> float_type
  | TyTuple _ | TyArray _ -> pointer_type i32_type
  | TyVar x -> i32_type


let type_to_lltype2 x = type_to_lltype (if x = TyBool then TyInt else x)

let incre_ptr_and_cast ptr destty idx =
  let ptr = build_ptrtoint ptr i32_type (Syntax.genvar ()) builder in
  let ptr = build_add ptr idx (Syntax.genvar ()) builder in
  let ptr =
    build_inttoptr ptr
      (pointer_type (type_to_lltype2 destty))
      (Syntax.genvar ()) builder
  in
  ptr

(* let ptr = *)
(*   build_bitcast ptr (pointer_type i8_type) (Syntax.genvar ()) builder *)
(* in *)
(* let ptr = build_in_bounds_gep ptr arr (Syntax.genvar ()) builder in *)
(* let ptr = *)
(*   build_bitcast ptr *)
(*     (pointer_type (type_to_lltype2 destty)) *)
(*     (Syntax.genvar ()) builder *)
(* in *)
(* ptr *)

type name = Syntax.var [@@deriving show]

type cmpty = F | I [@@deriving show]

type op = Syntax.op [@@deriving show]

let alpha ty =
  let a = Syntax.alpha () in
  {a with ty}

type u =
  | C of Syntax.c
  | Var of name
  | Op of op * name list
  | Load of name * name
  | Store of name * name * name
  | If of Knormal.cmp * name * name * v * v * cmpty
  | Call of name * name list
[@@deriving show]

and v = Ans of u | Let of name * u * v

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)



let ans = ref (0,"",0) 
let global_global = ref VarMap.empty 
let global_load_tmp = ref VarMap.empty 

let rec subst_to_global_v name e  = 
    match e with
    | Let (x, Var(y), z) when y.name = name.name -> 
 subst_to_global_v name z || 
 subst_to_global_v x z
    | Let (x, y, z) -> 
            subst_to_global_u name y || subst_to_global_v name z
    | Ans(u) -> 
            subst_to_global_u name u
and subst_to_global_u name e = 
    (* let _ = Printf.printf "%s %s\n" (name.name) (show_u e)  in *)
    match e with
    | Store(a,b,c) when VarMap.mem a !global_global && c.name = name.name -> 
    ( 
        match VarMap.find a !global_global with
        | TupArray(w,x,y,z) -> let _ = Printf.printf "found\n" in let _ = ans := (w,b.name,List.length y) in true
        | _ -> let _ = Printf.printf "dame\n" in false
    )
    | If(_,_,_,x,y,_) -> subst_to_global_v name x || subst_to_global_v name y
    | _ -> false

(* let rec replace_v x =  *)
(*     ( *)
(*     match x with *)
(*     | Let (y, Call(f,[a]), t2) when f.name = "create_tuple" && subst_to_global_v y t2 -> *)
(*             Let (y, C(CInt !ans),  replace_v t2) *)
(*     | Let (x,y,z) -> Let(x,replace_u y,replace_v z) *)
(*     | Ans(u) -> Ans(replace_u u) *)
(*     ) *)
(* and replace_u x =  *)
(*     ( *)
(*     match x with *)
(*     | If(a,b,c,x,y,d) -> If(a,b,c,replace_v x, replace_v y,d) *)
(*     | _ -> x *)
(*     ) *)


let rec closure_to_ir x =
  match x with
  | Const (CInt x, d) -> Ans (C (CInt x))
  | Const (CFloat x, d) -> Ans (C (CFloat x))
  | Const (CBool x, d) -> Ans (C (CBool x))
  | Const (CUnit, d) -> Ans (C CUnit)
  | Op (ArrayGet _, [x; y], d) -> Ans (Load (x, y))
  | Op (ArrayPut _, [x; y; z], d) -> Ans (Store (x, y, z))
  | Op (Projection (idx, _, _), [x], d) ->
      let a = alpha TyInt in
      Let (a, C (CInt idx), Ans (Load (x, a)))
  | Tuple (l, d) ->
      let ty = TyTuple (List.map (fun x -> x.ty) l) in
      let base = alpha (TyTuple (List.map (fun x -> x.ty) l)) in
      let hoge =
        snd
          (List.fold_right
             (fun p (idx, acc) ->
               let a = alpha TyUnit in
               let idx' = alpha TyInt in
               ( idx - 1
               , Let (idx', C (CInt idx), Let (a, Store (base, idx', p), acc))
               ) )
             l
             (List.length l - 1, Ans (Var base)))
      in
      let f = Syntax.alpha () in
      let f = {f with name= "create_tuple"; ty= TyFun ([TyInt], TyTuple [])} in
      let a = alpha TyInt in
      Let (a, C (CInt (List.length l)), Let (base, Call (f, [a]), hoge))
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
  | _ -> failwith (Closure.show x)

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
  (* let _ = Printf.printf "%s\n" x.name in *)
  match Hashtbl.find_opt env x.name with
  | Some y -> y
  | None -> Hashtbl.find env_constant x.name

let find_str x =
  (* let _ = Printf.printf "%s\n" x.name in *)
  match Hashtbl.find_opt env x with
  | Some y -> y
  | None -> Hashtbl.find env_constant x


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

type ret = Ret of Type.t | Value of Type.t | Void

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

and codegen dest x cont=
  let v = to_llvalue dest x cont in
  v

and codegen' x ret_type =
  match x with
  | Ans u -> (
    match ret_type with
    | Ret ty -> codegen_ret u ty
    | Void ->
        let a = Syntax.alpha () in
        let a = {a with ty= TyUnit; name= ""} in
        codegen a u (Ans(C(CInt 0)))
    | Value ty ->
        let a = Syntax.alpha () in
        let a = {a with ty} in
        codegen a u (Ans(C(CInt 0)))
  )
  | Let (n, e1, e2) ->
      let n = {n with name= (if n.ty = TyUnit then "" else n.name)} in
      let v = codegen n e1 e2 in
      let _ = Hashtbl.add env n.name v in
      codegen' e2 ret_type
and to_llvalue dest x cont=
  let n = dest in
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
  | Store(ptr,idx,v) when VarMap.mem  ptr !global_global && (match v.ty with TyTuple(_) -> true  | _ -> false) ->  nop()
  | Load(ptr,idx) when VarMap.mem  ptr !global_global && (match ptr.ty with TyArray(TyTuple(_)) -> true  | _ -> false) ->  
          let _ = global_load_tmp := VarMap.add n (ptr,idx) !global_load_tmp in
          let TyTuple(x) = destty in 
          let offset = to_2beki(List.length x) in
          let x = build_add (build_mul (find idx) (const_int i32_type offset) (Syntax.genvar()) builder)  (build_ptrtoint (find ptr) i32_type (Syntax.genvar()) builder) dest builder  in
          let x = build_inttoptr x (type_to_lltype2 destty) (Syntax.genvar ()) builder in
          x
  | Load(ptr,idx2) when VarMap.mem ptr !global_load_tmp  -> 
          let (p,idx1) = VarMap.find ptr !global_load_tmp in
          let TyTuple(x) = ptr.ty in
          let offset = to_2beki(List.length x) in
          let fuga = build_add (build_mul (find idx1) (const_int i32_type offset) (Syntax.genvar()) builder)  (build_ptrtoint (find p) i32_type (Syntax.genvar()) builder) dest builder  in
          let fuga = build_add fuga  (find idx2) (Syntax.genvar()) builder  in
          let x = build_inttoptr fuga (pointer_type (type_to_lltype2 destty)) (Syntax.genvar ()) builder in
          let v = build_load x (Syntax.genvar ()) builder in
          let v_ = Syntax.genvar () in
          build_trunc_or_bitcast v (type_to_lltype destty) v_ builder

  | Store (ptr, idx, v) ->
      let arr = find idx in
      let v_ = Syntax.genvar () in
      let v =
        match v.ty with
        | TyArray _ | TyTuple _ -> build_ptrtoint (find v) i32_type v_ builder
        | _ -> build_zext_or_bitcast (find v) i32_type v_ builder
      in
      let x = incre_ptr_and_cast (find ptr) TyInt arr in
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
      else if f.name = "create_tuple" then
        let _ = Printf.printf "FUGA\n" in
        if subst_to_global_v n cont then
            let (glob,idx,len ) =  !ans in
            (* dest = len * idx + glob  *)
            let _ = print_string "piyo" in
            let _ = Printf.printf "%d %s %d\n" glob idx len in
            let fuga = build_add (build_mul (find_str idx) (const_int i32_type (to_2beki len)) (Syntax.genvar()) builder)  (const_int i32_type glob) dest builder  in
            let _ = print_string "piyo2" in
            fuga

        else
            build_call fv
            (Array.of_list (List.map find (filter_unit args)))
            dest builder

      else
        build_call fv
          (Array.of_list (List.map find (filter_unit args)))
          dest builder
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
  let args = List.map (fun x -> x.ty) (filter_unit fd.args) in
  let (TyFun (_, ret)) = fd.f.ty in
  let args = Array.of_list (List.map type_to_lltype args) in
  let ret = type_to_lltype ret in
  let ft = function_type ret args in
  let f = declare_function fd.f.name ft the_module in
  ()

let fundef_to_ir fd global =
  (* let _ = Printf.printf "define %s\n" fd.f.name in *)
  let args = List.map (fun x -> x.ty) fd.args in
  let (TyFun (_, ret)) = fd.f.ty in
  let (Some f) = lookup_function fd.f.name the_module in
  let body = closure_to_ir fd.body in 
  let _ =
    Array.iter2
      (fun a n -> set_value_name n a ; Hashtbl.add env n a)
      (params f)
      (Array.of_list (List.map (fun x -> x.name) (filter_unit fd.args)))
  in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let value = codegen' body (Ret ret) in
  ()

(* dump_value value *)

let main_to_ir main (hp, global) =
  let main = closure_to_ir main in
  let _ = Printf.printf "%s" (show_v main) in
  let m = Array.make 0 i32_type in
  let ft = function_type void_type m in
  let f = declare_function "main" ft the_module in
  let _ = add_function_attr f (create_string_attr context "nouwind" "") in
  let bb = append_block context "entry" f in
  let _ = position_at_end bb builder in
  let ptr = const_inttoptr (const_int i32_type 1) (pointer_type i32_type) in
  let _ = ignore (build_store (const_int i32_type hp) ptr builder) in
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
            done
        | TupArray (k, init_adder, tup, len) ->
            Hashtbl.add env_constant key.name
              (const_inttoptr (const_int i32_type k) (pointer_type i32_type)) ;
            let vs =
              Array.of_list
                (List.map
                   (fun x -> const_int i32_type (HpAlloc.get_int_value x))
                   tup)
            in
            for iter = 0 to len - 1 do
              for i = 0 to List.length tup - 1 do
                let _ = Printf.printf "generating tup arr%d\n" k in
                let v = vs.(i) in
                let i = i + (iter *(to_2beki (List.length tup))) + k in
                let ptr =
                  const_inttoptr (const_int i32_type i) (pointer_type i32_type)
                in
                let _ = ignore (build_store v ptr builder) in
                ()
              done
            done )
      global
  in
  let value = codegen' main (Ret TyUnit) in
  ()

(* dump_value value *)

let f name (main, functions) (hp, global) =
  let _ = global_global := global in
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
        | TupArray (k, init_adder, tup, len) ->
            Hashtbl.add env_constant key.name
              (const_inttoptr (const_int i32_type k) (pointer_type i32_type))
        )
      global
  in
  let _ = List.iter fundef_proto functions in
  let _ = List.iter (fun x -> fundef_to_ir x global) functions  in
  let _ = main_to_ir main (hp, global) in
  let _ = print_module name the_module in
  ()
