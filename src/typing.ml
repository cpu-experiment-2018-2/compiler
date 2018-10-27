type type_equation = {left: Type.t; right: Type.t; debug: Syntax.debug}
[@@deriving show]

open Syntax
open Type

exception TypingError of string

exception UnifyError of string * string

let empty = []

let get_eq l r d =
    match l, r with
    | TyInt  ,TyInt 
    | TyFloat ,TyFloat
    | TyUnit,TyUnit
    | TyBool,TyBool   -> []
    | _ -> 
            [ {left= l; right= r; debug= d}]

module StringMap = Map.Make (struct
  type t = string

  let compare = compare 
end)

module IntMap = Map.Make (struct
  type t = int

  let compare = compare 
end)

let rec ty_subst sigma t =
  match t with
  | (TyInt | TyUnit | TyBool | TyFloat) as self -> self
  | TyFun (a, b) -> TyFun (List.map (ty_subst sigma) a, ty_subst sigma b)
  | TyVar alpha ->
          (
      match IntMap.find_opt alpha sigma with
      | Some(x) -> x
      | None -> TyVar alpha
      )
  | TyTuple a -> TyTuple (List.map (ty_subst sigma) a)
  | TyArray ty -> TyArray (ty_subst sigma ty)

let subst_equations tyvar ty equations =
  List.map
    (fun x ->
      { x with
        left= ty_subst (IntMap.add tyvar ty IntMap.empty) x.left
      ; right= ty_subst (IntMap.add tyvar ty IntMap.empty) x.right } )
    equations

let rec compose sigma2 sigma1 =
  let sigma11 = IntMap.fold (fun tx t acc -> IntMap.add tx (ty_subst sigma2 t) acc )sigma1  IntMap.empty  in
  IntMap.fold 
    (fun tx t tau ->
      if IntMap.mem tx sigma1 then tau else IntMap.add tx t tau
      )
     sigma2 sigma11

let rec occur a t =
  match t with
  | TyUnit | TyBool | TyInt | TyFloat -> false
  | TyFun (b, c) -> List.exists (fun d -> occur a d) b || occur a c
  | TyTuple b -> List.exists (fun d -> occur a d) b
  | TyVar b -> if a = b then true else false
  | TyArray c -> occur a c

let same_len l1 l2 eq =
  if List.length l1 <> List.length l2 then
    raise (UnifyError (show_type_equation eq, "should have same length"))
  else ()

let rec (ty_unify: type_equation list -> Type.t IntMap.t) =
 fun equations ->
  match equations with
  | [] -> IntMap.empty
  | eq :: rest ->
    match (eq.left, eq.right) with
    | TyVar a, TyVar b ->
        if a = b then ty_unify rest
        else
          compose (ty_unify (subst_equations a eq.right rest)) (IntMap.singleton a eq.right)
    | TyFun (s, t), TyFun (s', t') ->
        let _ = same_len s s' in
        let args = List.concat (List.map2 (fun x y -> get_eq x y eq.debug) s s') in
        ty_unify (args @ (get_eq t t' eq.debug) @ rest)
    | TyTuple s, TyTuple s' ->
        let _ = same_len s s' in
        let args = List.concat (List.map2 (fun x y -> get_eq x y eq.debug) s s') in
        ty_unify (args @ rest)
    | TyBool, TyBool | TyUnit, TyUnit | TyFloat, TyFloat | TyInt, TyInt ->
        ty_unify rest
    | TyVar a, _ ->
        if occur a eq.right then
          raise (UnifyError (show_type_equation eq, "occurence check"))
        else
          compose (ty_unify (subst_equations a eq.right rest)) (IntMap.singleton a eq.right)
    | _, TyVar a ->
        if occur a eq.left then
          raise (UnifyError (show_type_equation eq, "occurence check"))
        else compose (ty_unify (subst_equations a eq.left rest)) (IntMap.singleton a eq.left)
    | TyArray a, TyArray b -> ty_unify ((get_eq a b eq.debug) @ rest)
    | _ -> raise (UnifyError (show_type_equation eq, "unify failed"))

let builtin_function' =
  [ ("print_int", ([], [TyInt], TyUnit))
  ; ("print_newline", ([], [TyUnit], TyUnit))
  ; ("print_char", ([], [TyInt], TyUnit))
  ; ("truncate", ([], [TyFloat], TyInt))
  ; ("print_float", ([], [TyFloat], TyUnit))
  ; ("fless", ([], [TyFloat; TyFloat], TyBool))
  ; ("fneg", ([], [TyFloat], TyFloat))
  ; ("div2", ([], [TyInt], TyInt))
  ; ("Obj.magic", ([], [TyInt], TyInt))
  ; ("read_int", ([], [TyUnit], TyInt))
  ; ("read_float", ([], [TyUnit], TyFloat))
  ; ("fabs", ([], [TyFloat], TyFloat))
  ; ("abs_float", ([], [TyFloat], TyFloat))
  ; ("abs", ([], [TyFloat], TyFloat))
  ; ("reduction", ([], [TyFloat], TyFloat))
  ; ("kernel_cos", ([], [TyFloat], TyFloat))
  ; ("kernel_sin", ([], [TyFloat], TyFloat))
  ; ("kernel_atan", ([], [TyFloat], TyFloat))
  ; ("fsqr", ([], [TyFloat], TyFloat))
  ; ("fhalf", ([], [TyFloat], TyFloat))
  ; ("fisneg", ([], [TyFloat], TyBool))
  ; ("fiszero", ([], [TyFloat], TyBool))
  ; ("floor", ([], [TyFloat], TyFloat))
  ; ("fispos", ([], [TyFloat], TyBool))
  ; ("cos", ([], [TyFloat], TyFloat))
  ; ("sin", ([], [TyFloat], TyFloat))
  ; ("tan", ([], [TyFloat], TyFloat))
  ; ("atan", ([], [TyFloat], TyFloat))
  ; ("sqrt", ([], [TyFloat], TyFloat))
  ; ("invsqrt", ([], [TyFloat], TyFloat))
  ; ("itof", ([], [TyInt], TyFloat))
  ; ("ftoi", ([], [TyFloat], TyInt))
  ; ("float_of_int", ([], [TyInt], TyFloat))
  ; ("int_of_float", ([], [TyFloat], TyInt))
  ; ( "create_array"
    , let s = Type.genvar () in
      ([s], [TyInt; TyVar s], TyArray (TyVar s)) ) ]

let builtin_vars =
  List.map
    (fun (x, _) -> {name= x; ty= TyInt; debug= {pos= Global}})
    builtin_function'

let instanciate_builtin name varenv =
  match name.name with
  | "create_array" ->
      let s = Type.genvar () in
      TyFun ([TyInt; TyVar s], TyArray (TyVar s))
  | "Obj.magic" ->
      let s = Type.genvar () in
      let t = Type.genvar () in
      TyFun ([TyVar s], TyVar t)
  | _ ->
    try
      let a, b, c = List.assoc name.name builtin_function' in
      TyFun (b, c)
    with _ ->
      if VarSet.mem name varenv then TyInt
      else raise (TypingError ("unbound " ^ name.name))

let subst_var sigma v varenv =
  let (TyVar tyvar) = v.ty in
  match IntMap.find_opt tyvar sigma with
  | Some ( ty) -> {v with ty = ty}
  | None ->
      let ty = instanciate_builtin v varenv in
      {v with ty = ty}

let rec gather_eq' type_env e =
  let gather_eq = gather_eq' type_env in
  match e with
  | Const (CInt _, d) -> (TyInt, empty)
  | Const (CFloat _, d) -> (TyFloat, empty)
  | Const (CUnit, d) -> (TyUnit, empty)
  | Const (CBool _, d) -> (TyBool, empty)
  | Op (Projection (idx, all, ty), [tup], d) -> (
      let t1, c1 = gather_eq tup in
      match t1 with
      | TyVar v ->
          let rec f x =
            if x = 0 then [] else TyVar (Type.genvar ()) :: f (x - 1)
          in
          let t = f all in
          let beta = List.nth t idx in
          (beta, (get_eq ty beta d ) @ (get_eq (TyTuple t) t1 d) @ c1)
      | TyTuple t ->
          let beta = List.nth t idx in
          (beta, get_eq ty beta d @ c1)
      | _ -> raise (TypingError ("type error tuple at " ^ show_debug d)) )
  | Op (ArrayGet alpha, [arr; idx], d) ->
      let t1, c1 = gather_eq arr in
      let t2, c2 = gather_eq idx in
      (alpha, (get_eq t1 (TyArray alpha) d) @ (get_eq t2 TyInt d ) @ (c1 @ c2))
  | Op (ArrayPut alpha, [arr; idx; elem], d) ->
      let t1, c1 = gather_eq arr in
      let t2, c2 = gather_eq idx in
      let t3, c3 = gather_eq elem in
      ( TyUnit
      , get_eq t1 (TyArray alpha) d
        @ get_eq t2 TyInt d @ get_eq t3 alpha d
        @ (c1 @ c2 @ c3) )
  | Op (Primitive x, l, d) ->
      let info = get_o_info x in
      let res = List.map gather_eq l in
      let c = List.concat (List.map snd res) in
      let ts = List.map fst res in
      let new_c =
        List.map2 (fun l r -> {left= l; right= r; debug= d}) ts info.args
      in
      (info.ret, new_c @ c)
  | If (e1, e2, e3, d) ->
      let t1, c1 = gather_eq e1 in
      let t2, c2 = gather_eq e2 in
      let t3, c3 = gather_eq e3 in
      (t2, get_eq TyBool t1 d @ get_eq t2 t3 d @ List.concat [c1; c2; c3])
  | LetRec (fundef, e1, d) ->
      let alpha = fundef.f.ty in
      let args_var = List.map (fun x -> x.ty) fundef.args in
      let beta = TyVar (Type.genvar ()) in
      let ty = TyFun (args_var, beta) in
      let tmp = List.map (fun x -> (x, x.ty)) fundef.args
          @ [(fundef.f, ty)] in
      let newtypeenv = List.fold_left (fun acc (p,ty) -> 
        VarMap.add p ty acc 
      ) type_env tmp in
      let t1, c1 =
        gather_eq'
         newtypeenv
          fundef.body
      in
      let t2, c2 = gather_eq' (VarMap.add  fundef.f  ty  type_env) e1 in
      (t2, get_eq ty alpha d @ get_eq t1 beta d @ (c1 @ c2))
      (* (t2, get_eq ty alpha d :: (c1 @ c2)) *)
  | Let (var, e1, e2, d) ->
      let t1, c1 = gather_eq e1 in
      (*
            let多相はあとからやる
        *)
      (* let env = (var.name, var.ty) :: type_env in *)
      let env = VarMap.add var var.ty type_env in
      (*
         あとのことを考えて
        *)
      let t2, c2 = gather_eq' env e2 in
      (t2, (get_eq var.ty t1 d @ c1) @ c2)
  | Var (name, d) -> (
    match
      (*
        globalでinstanciate は実装する必要がある
        create_arrayの第二引数は多相になってるから
        *)
      VarMap.find_opt name type_env
    with
    | Some (ty) -> (ty, get_eq ty name.ty d)
    | None ->
        let ty = instanciate_builtin name VarSet.empty in
        (ty, get_eq ty name.ty d) )
  | Tuple (ts, d) ->
      let res = List.map gather_eq ts in
      let types = List.map fst res in
      let constraints = List.concat (List.map snd res) in
      (TyTuple types, constraints)
  | App (e1, e2, d) ->
      let t1, c1 = gather_eq e1 in
      let res = List.map gather_eq e2 in
      let ts = List.map fst res in
      let cs = List.concat (List.map snd res) in
      let alpha = TyVar (Type.genvar ()) in
      (alpha, get_eq (TyFun (ts, alpha)) t1 d @ (c1 @ cs))

let rec subst_ast sigma varenv s =
  let f = subst_ast sigma varenv in
  let g = ty_subst sigma in
  match s with
  | Const _ as self -> self
  | Op (ArrayGet t, ts, d) -> Op (ArrayGet (g t), List.map f ts, d)
  | Op (ArrayPut t, ts, d) -> Op (ArrayPut (g t), List.map f ts, d)
  | Op (Projection (idx, all, t), ts, d) ->
      Op (Projection (idx, all, g t), List.map f ts, d)
  | Op (op, ts, d) -> Op (op, List.map f ts, d)
  | If (t0, t1, t2, d) -> If (f t0, f t1, f t2, d)
  | Let (var, t0, t1, d) ->
      let k = subst_ast sigma (VarSet.add var varenv) in
      Let (subst_var sigma var varenv, f t0, k t1, d)
  | Var (var, d) -> Var (subst_var sigma var varenv, d)
  | LetRec (fundef, t0, d) ->
      LetRec
        ( { fundef with
            f= subst_var sigma fundef.f varenv
          ; args= List.map (fun x -> subst_var sigma x varenv) fundef.args
          ; body=
              subst_ast sigma (VarSet.union (VarSet.of_list (fundef.f :: fundef.args))  varenv) fundef.body
          }
        , subst_ast sigma (VarSet.add  fundef.f varenv) t0
        , d )
  | App (t0, ts, d) -> App (f t0, List.map f ts, d)
  | Tuple (ts, d) -> Tuple (List.map f ts, d)

let f e =
  let ty, equations = gather_eq' VarMap.empty e in

  let _ = print_string "get_equations\n" in
  let sigma = ty_unify equations in
  let _ = print_string "get_subst\n" in
  let e = subst_ast sigma VarSet.empty e in
  e
