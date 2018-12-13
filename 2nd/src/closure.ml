open Syntax
open Type
open Knormal
open HpAlloc
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

let rec apply f e =
  match e with
  | Const _ as self -> self
  | Op (op, vars, d) -> Op (op, List.map f vars, d)
  | If (cmp, x, y, e1, e2, d) -> If (cmp, f x, f y, apply f e1, apply f e2, d)
  | Let (var, e1, e2, d) -> Let (f var, apply f e1, apply f e2, d)
  | Var (var, d) -> Var (f var, d)
  | Closure (fd, e) ->
      Closure
        ( {fd with label= f fd.label; closure_fv= List.map f fd.closure_fv}
        , apply f e )
  | AppCls (var, vars, d) -> AppCls (f var, List.map f vars, d)
  | AppDir (var, vars, d) -> AppDir (f var, List.map f vars, d)
  | Tuple (vars, d) -> Tuple (List.map f vars, d)

let rec myprint e level =
  print_string level ;
  match e with
  | Const (CInt x, d) -> Printf.printf "const %d\n" x
  | Op (Projection (x, y, t), [z], d) ->
      Printf.printf "proj^%d_%d %s\n" x y z.name
  | Op _ -> print_string "op\n"
  | If (cmp, x, y, e1, e2, d) ->
      print_string "If\n" ;
      myprint e1 ("  " ^ level) ;
      myprint e2 ("  " ^ level)
  | Let (x, e1, e2, d) ->
      Printf.printf "Let %s = \n" x.name ;
      myprint e1 ("  " ^ level) ;
      print_string level ;
      print_string "IN\n" ;
      myprint e2 ("  " ^ level)
  | Tuple (l, d) ->
      print_string "Tuple " ;
      List.map (fun x -> Printf.printf "%s " x.name) l ;
      print_newline ()
  | AppDir _ | AppCls _ -> print_string "APP\n"
  | Var (x, d) -> Printf.printf "var %s\n" x.name
  | Closure (x, e) ->
      print_string "Closure\n" ;
      myprint e ("  " ^ level)

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
type l = debug fundef [@@deriving show]


let (toplevel : debug fundef list ref) = ref []

let add_toplevel fundef = toplevel := fundef :: !toplevel

let f =
  let _ = toplevel := [] in
  let rec closure_conversion' known (e : Knormal.t) =
    let closure_conversion x = closure_conversion' known x in
    match e with
    | Const (x, d) -> Const (x, d)
    (* | Op (Primitive Not, [x], d) -> *)
    (*     AppDir ({name= "not"; debug= d; ty= Type.TyInt}, [x], d) *)
    | Op (op, l, d) -> Op (op, l, d)
    | If (cmp, n1, n2, e1, e2, d) ->
        If (cmp, n1, n2, closure_conversion e1, closure_conversion e2, d)
    | Var (name, d) -> Var (name, d)
    | LetRec (f, e2, d) ->
        let toplevel_backup = !toplevel in
        let known' = VarSet.add f.f known in
        let e1' = closure_conversion' known' f.body in
        let zs = VarSet.diff (fv e1') (VarSet.union(VarSet.of_list f.args) !Typing.binded) in
        let known', e1' =
          if VarSet.is_empty zs then (known', e1')
          else (
            toplevel := toplevel_backup ;
            let e1' = closure_conversion' known f.body in
            (known, e1') )
        in
        let fv' =
          VarSet.elements (VarSet.diff (fv e1') (VarSet.union (VarSet.of_list f.args) !Typing.binded))
        in
        let _ =
          add_toplevel {f= f.f; args= f.args; fv= fv'; body= e1'; info= f.info}
        in
        let e2' = closure_conversion' known' e2 in
        if VarSet.mem f.f (fv e2') then
          let _ = Printf.printf "%s is closure fv is " f.f.name in
          let _ = List.iter (fun x -> Printf.printf " %s " x.name) fv' in
          let _ = print_newline () in
          Closure ({label= f.f; closure_fv= fv'}, e2')
        else e2'
    | Let (var, e1, e2, d) ->
        Let (var, closure_conversion e1, closure_conversion e2, d)
    | App (f, args, d) when VarSet.mem f known -> AppDir (f, args, d)
    | App (f, args, d) -> AppCls (f, args, d)
    | Tuple (names, d) -> Tuple (names, d)
  in
  fun x f ->
    let tmp =
      closure_conversion'
        (VarSet.of_list
           (List.map
              (fun (x, (_, y, z)) ->
                {name= x; debug= {pos= Global}; ty= Type.TyFun (y, z)} )
              Typing.builtin_function'))
        x
    in
    (f tmp, List.map (fun x -> {x with body= f x.body}) !toplevel)
