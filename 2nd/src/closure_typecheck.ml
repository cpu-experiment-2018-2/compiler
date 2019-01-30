open Type
open Syntax
open Typing
open Closure

let tmp_debug = {pos= Global}

(* env には変数と変数の対応*)
let rec closure_typecheck env x =
  let g x = closure_typecheck env x in
  let find x = 
  if VarMap.mem x env then
    VarMap.find x env 
    else
        instanciate_builtin x.name []
 in
  match x with
  | Const (CInt _, d) -> (TyInt, empty)
  | Const (CFloat _, d) -> (TyFloat, empty)
  | Const (CUnit, d) -> (TyUnit, empty)
  | Const (CBool _, d) -> (TyBool, empty)
  | Op (Projection (idx, all, ty), [tup], d) -> (
      let t1= find tup in
      match t1 with
      | TyVar v ->
          let rec f x =
            if x = 0 then [] else TyVar (Type.genvar ()) :: f (x - 1)
          in
          let t = f all in
          let beta = List.nth t idx in
          (beta, get_eq ty beta d :: get_eq (TyTuple t) t1 d::[])
      | TyTuple t ->
          let beta = List.nth t idx in
          (beta, get_eq ty beta d :: [])
      | _ -> raise (TypingError ("type error tuple at " ^ show_debug d)) )
  | Op (ArrayGet alpha, [arr; idx], d) ->
      let t1= find arr in
      let t2 = find idx in
      (alpha, get_eq t1 (TyArray alpha) d :: get_eq t2 TyInt d::[])

  | Op (ArrayPut alpha, [arr; idx; elem], d) ->
      let t1= find arr in
      let t2= find idx in
      let t3 = find elem in
      ( TyUnit
      , get_eq t1 (TyArray alpha) d
        :: get_eq t2 TyInt d :: get_eq t3 alpha d :: []
      )
  | Op (Primitive op, args, d) ->
      let info = get_o_info op in
      let argsty = List.map (fun x -> find x) args in
      let c =
        List.map2 (fun l r -> {left= l; right= r; debug= d}) argsty info.args
      in
      (info.ret, c)
  | If (cmp, x, y, e1, e2, d) ->
      let t1, c1 = g e1 in
      let t2, c2 = g e2 in
      (t1, get_eq (find y) (find x) d :: (c1 @ c2))
  | Let (u, v, w, d) ->
      let t1, c1 = g v in
      let env = VarMap.add u t1 env in
      let t2, c2 = closure_typecheck env w in
      (t2, c1 @ c2)
  | Var (x, d) -> (find x, [])
  | AppDir (f, args, d) | AppCls (f, args, d) ->
      let t1 = find f in
      let argsty = List.map (fun x -> find x) args in
      let ret = TyVar (Type.genvar ()) in
      (ret, [get_eq (TyFun (argsty, ret)) t1 d])
  | Tuple (args, d) ->
      let argsty = List.map (fun x -> find x) args in
      (TyTuple argsty, [])
  | Closure (cls, cont) ->
      let f = find cls.label in
      let l = List.map find cls.closure_fv in
      let closure_fvs = List.map find (toplevel_find cls.label).fv in
      let c =
        List.map2
          (fun l r -> {left= l; right= r; debug= tmp_debug})
          closure_fvs l
      in
      let t', c' = g cont in
      (t', c @ c')

let add x m =
  List.fold_left (fun a p -> VarMap.add p (TyVar (Type.genvar ())) a) m x

let rec assign_var fd m =
  let m = add fd.args m in
  let m = add fd.fv m in
  let args = List.map (fun x -> VarMap.find x m) fd.args in
  VarMap.add fd.f (TyFun (args, TyVar (Type.genvar ()))) m

let f (main, functions) =
  Closure.toplevel := functions ;
  let env =
    List.fold_left (fun acc p -> assign_var p acc) VarMap.empty functions
  in
  let c =
    List.concat
      (List.map
         (fun x ->
           let ty, c = closure_typecheck env x.body in
           let (TyFun (_, ret)) = VarMap.find x.f env in
           get_eq ty ret tmp_debug :: c )
         functions)
  in
  let c = c @ snd (closure_typecheck env main) in
  ty_unify c 
