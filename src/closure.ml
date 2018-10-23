open Syntax
open Type
open Knormal

type 'a u =
  | Const of c * 'a
  | Op of op * var list * 'a
  | If of cmp * var * var * 'a u * 'a u * 'a
  | Let of var * 'a u * 'a u * 'a
  | Var of var * 'a
  | Closure of 'a closure * 'a u
  | AppCls of var * var list * 'a
  | AppDir of var * var list * 'a
  | Tuple of var list * 'a
[@@deriving show]

and 'a fundef = {f: var; args: var list; fv: var list; body: 'a u; info: 'a}
[@@deriving show]

and 'a closure = {label: var; closure_fv: var list} [@@deriving show]

let rec fv = function
  | Const _ -> VarSet.empty
  | Op (_, vars, _) -> VarSet.of_list vars
  | If (cmp, x, y, e1, e2, _) ->
      VarSet.add x (VarSet.add y (VarSet.union (fv e1) (fv e2)))
  | Let (var, e1, e2, _) -> VarSet.union (fv e1) (VarSet.remove var (fv e2))
  | Var (x, _) -> VarSet.singleton x
  | Closure (f, e) ->
      VarSet.remove f.label (VarSet.union (VarSet.of_list f.closure_fv) (fv e))
  | AppDir (x, xs, _) -> VarSet.of_list xs
  | AppCls (y, ys, _) -> VarSet.of_list (y :: ys)
  | Tuple (x, _) -> VarSet.of_list x

type t = debug u [@@deriving show]

let (toplevel: debug fundef list ref) = ref []

let add_toplevel fundef = toplevel := fundef :: !toplevel

(* let find_toplevel var =
  match List.find_opt (fun x -> x.f.name = var.name) !toplevel with
  | None -> List.exists (fun x -> fst x = var.name) Typing.builtin_function'
  | Some x -> true *)

let f =
  let _ = toplevel := [] in
  let rec closure_conversion' known (e: Knormal.t) =
    let closure_conversion x = closure_conversion' known x in
    match e with
    | Const (x, d) -> Const (x, d)
    | Op (op, l, d) -> Op (op, l, d)
    | If (cmp, n1, n2, e1, e2, d) ->
        If (cmp, n1, n2, closure_conversion e1, closure_conversion e2, d)
    | Var (name, d) -> Var (name, d)
    | LetRec (f, e2, d) ->
        let toplevel_backup = !toplevel in
        let known' = VarSet.add f.f known in
        let e1' = closure_conversion' known' f.body in
        let zs = VarSet.diff (fv e1') (VarSet.of_list f.args) in
        let known', e1' =
          if VarSet.is_empty zs then (known', e1')
          else (
            toplevel := toplevel_backup ;
            let e1' = closure_conversion' known f.body in
            (known, e1') )
        in
        (* let fv' = *)
        (*   VarSet.elements *)
        (*     (VarSet.diff (fv e1') (VarSet.of_list (f.f :: f.args))) *)
        (* in *)
        let fv' =
          VarSet.elements (VarSet.diff (fv e1') (VarSet.of_list f.args))
        in
        let _ =
          add_toplevel {f= f.f; args= f.args; fv= fv'; body= e1'; info= f.info}
        in
        let e2' = closure_conversion' known' e2 in
        if VarSet.mem f.f (fv e2') then
          let _ = Printf.printf "%s is closure fv is " f.f.name in
          let _ = List.iter (fun x -> Printf.printf " %s " x.name) fv' in
          let _ = print_newline () in
          Closure ({label= f.f; closure_fv= fv' @ [f.f]}, e2')
        else e2'
    | Let (var, e1, e2, d) ->
        Let (var, closure_conversion e1, closure_conversion e2, d)
    | App (f, args, d) when VarSet.mem f known -> AppDir (f, args, d)
    | App (f, args, d) -> AppCls (f, args, d)
    | Tuple (names, d) -> Tuple (names, d)
  in
  fun x ->
    let tmp =
      closure_conversion'
        (VarSet.of_list
           (List.map
              (fun (x, (_, y, z)) ->
                {name= x; debug= {pos= Global}; ty= Type.TyFun (y, z)} )
              Typing.builtin_function'))
        x
    in
    (tmp, !toplevel)
