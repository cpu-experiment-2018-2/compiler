(** lambda liftingの実装.closure変換の前に挟む.*)

open Syntax
open Knormal

(** 
 * lambda lifting をすることによって値として関数が後に出現しない場合は自由変数を含んでいたとしてもクロージャが生成されないようにすることができた.
*)
let rec fv e =
  match e with
  | Const _ -> VarSet.empty
  | Op (_, vars, _) | Tuple (vars, _) -> VarSet.of_list vars
  | If (cmp, x, y, e1, e2, d) ->
      VarSet.union (VarSet.union (fv e1) (fv e2)) (VarSet.of_list [x; y])
  | Var (var, d) -> VarSet.singleton var
  | LetRec (fd, e, _) ->
      VarSet.union
        (VarSet.diff (fv e) (VarSet.singleton fd.f))
        (VarSet.diff (fv fd.body) (VarSet.of_list (fd.f :: fd.args)))
  | Let (var, e1, e2, d) ->
      VarSet.union (VarSet.diff (fv e2) (VarSet.singleton var)) (fv e1)
  | App (var, vars, _) -> VarSet.of_list (var :: vars)

let rec fv2 e =
  match e with
  | Const _ -> VarSet.empty
  | Op (_, vars, _) | Tuple (vars, _) -> VarSet.of_list vars
  | If (cmp, x, y, e1, e2, d) ->
      VarSet.union (VarSet.union (fv2 e1) (fv2 e2)) (VarSet.of_list [x; y])
  | Var (var, d) -> VarSet.singleton var
  | LetRec (fd, e, _) ->
      VarSet.union
        (VarSet.diff (fv2 e) (VarSet.singleton fd.f))
        (VarSet.diff (fv2 fd.body) (VarSet.of_list (fd.f :: fd.args)))
  | Let (var, e1, e2, d) ->
      VarSet.union (VarSet.diff (fv2 e2) (VarSet.singleton var)) (fv2 e1)
  | App (_, vars, _) -> VarSet.of_list vars

(** alpha変換なされているものとする.
    fv_envはダイレクトに呼べる関数から自由変数への写像
    **)
let rec lifting fv_env e =
  let g = lifting fv_env in
  match e with
  | If (cmp, x, y, e1, e2, d) -> If (cmp, x, y, g e1, g e2, d)
  | Let (var, e1, e2, d) -> Let (var, g e1, g e2, d)
  | LetRec (fd, e1, d) ->
      let used_as_value = VarSet.union (fv2 e1) (fv2 fd.body) in
      if VarSet.mem fd.f used_as_value then
        let _ = Printf.printf "function %s is closure\n" fd.f.name in
        LetRec (fd, lifting fv_env e1, d)
      else
        let fvs =
          VarSet.elements
            (VarSet.diff (fv fd.body) (VarSet.of_list (fd.f :: fd.args)))
        in
        if List.length fvs > 20 then
          let _ =
            Printf.printf
              "function %s is not closure, it has too many argument. So \
               closure will be made \n"
              fd.f.name
          in
          LetRec (fd, lifting fv_env e1, d)
        else
          let _ =
            Printf.printf
              "function %s is not closure, it is defined in toplevel\n"
              fd.f.name
          in
          let newargs = fd.args @ fvs in
          (* 型の更新はめんどいからとばす *)
          let newenv = VarMap.add fd.f fvs fv_env in
          let newfd = {fd with args= newargs; body= lifting newenv fd.body} in
          LetRec (newfd, lifting newenv e1, d)
  | App (var, vars, d) when VarMap.mem var fv_env ->
      App (var, vars @ VarMap.find var fv_env, d)
  | _ -> e

let rec (f : Knormal.t -> Knormal.t) =
  lifting
    (List.fold_left
       (fun acc x -> VarMap.add x [] acc)
       VarMap.empty Typing.builtin_vars)
