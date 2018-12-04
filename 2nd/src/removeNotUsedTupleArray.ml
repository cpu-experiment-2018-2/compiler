open Syntax
open Closure

(* 関数の引数や返り値に含まれるとき,arrayならプットされた場合 はだめ
 * arrayに関しては不毛すぎるのでは??????
 * *)

let rec used = function
  | Const _ -> VarSet.empty
  | Op (ArrayPut _, vars, _) -> VarSet.of_list vars
  | If (cmp, x, y, e1, e2, _) -> VarSet.union (used e1) (used e2)
  | Let (var, e1, e2, _) ->
      VarSet.union (used e1) (used e2)
  | Var (x, _) -> VarSet.singleton x
  | Closure (f, e) -> VarSet.union (VarSet.of_list f.closure_fv) (used e)
  | AppDir (x, xs, _) -> VarSet.of_list xs
  | AppCls (y, ys, _) -> VarSet.of_list (y :: ys)
  | Tuple (x, _) -> VarSet.of_list x
  | _ -> VarSet.empty

let rec remove tuple_env array_env check e =
  let g = remove tuple_env array_env check in
  match e with
  | Let (v, e1, e2, d) -> (
    match e1 with
    | Tuple (l, d) when check v ->
            let _ = 
                Printf.printf "%s is erased[tuple]\n" v.name
            in
        remove (VarMap.add v l tuple_env) array_env check e2
    | AppDir ({name= "create_array"}, [_; init], _)
     |AppDir ({name= "Array.make"}, [_; init], _)
     |AppDir ({name= "Array.create"}, [_; init], _)
      when check v ->
            let _ = 
                Printf.printf "%s is erased[array]\n" v.name
            in

        remove tuple_env (VarMap.add v init array_env) check e2
    | _ -> Let (v, g e1, g e2, d) )
  | If (cmp, x, y, e1, e2, d) -> If (cmp, x, y, e1, e2, d)
  | Op (ArrayGet _, [x; _], d) when VarMap.mem x array_env -> Var (VarMap.find x array_env, d)
  | Op (Projection (idx, all, ty), [x], d) when VarMap.mem x tuple_env ->
      Var (List.nth (VarMap.find x tuple_env) idx, d)
  | _ -> e
let rec f cnt e  =
    let rec f' cnt e = 
    let tmp = used e in
    if cnt = 0 then e else (
    let check v = not (VarSet.mem v tmp) in
    f' (cnt-1) ( RemoveLetCls.f (remove  VarMap.empty VarMap.empty check e)))
    in
    f' cnt e
