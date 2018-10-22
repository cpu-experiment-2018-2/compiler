open Syntax
open Closure

type label = string [@@deriving show]

let tmp_var () = {name= Syntax.genvar (); debug= {pos= Global}; ty= TyInt}

let mem = ref 30000

let get () =
  let tmp = !mem in
  mem := !mem + 1 ;
  tmp

let malloc size =
  let tmp = !mem in
  mem := size + !mem ;
  tmp

type ('a, 'b) u =
  | Nop of 'a
  | Li of int * 'a
  | FLi of float * 'a
  | Var of 'b * 'a
  | Op of op * 'b list * 'a
  | Load of 'b * 'b * int * 'a
  | Store of 'b * 'b * int * 'a
  | If of Knormal.cmp * 'b * 'b * ('a, 'b) v * ('a, 'b) v * 'a
  | CallDir of label * 'b list * 'a
  | CallCls of string * 'b list * 'a
[@@deriving show]

and ('a, 'b) v = Ans of ('a, 'b) u | Let of 'b * ('a, 'b) u * ('a, 'b) v
[@@deriving show]


let rec apply f f' e =
  match e with
  | Nop x -> Nop x
  | Li (x, d) -> Li (x, d)
  | FLi (x, d) -> FLi (x, d)
  | Var (x, d) -> Var (f x, d)
  | Op (op, vars, d) -> Op (op, List.map f vars, d)
  | Load (x, y, off, d) -> Load (x, y, off, d)
  | Store (x, y, off, d) -> Store (x, y, off, d)
  | If (cmp, x, y, e1, e2, d) ->
      If (cmp, f x, f y, apply' f f' e1, apply' f f' e2, d)
  | CallDir (l, vars, d) -> CallDir (l, List.map f vars, d)
  | CallCls (l, vars, d) -> CallCls (l, List.map f vars, d)

and apply' f f' e =
  match e with
  | Let (var, u, v) -> Let (f var, apply f f' u, apply' f f' v)
  | Ans u -> Ans (apply f f' u)

type tmp = (Syntax.debug, Syntax.var) u [@@deriving show]

type t = (Syntax.debug, Syntax.var) v [@@deriving show]

type ('a,'b) fundef = {label: string; args: 'b list; body: ('a,'b) v; ret: 'b; local: int}

type  fundef_t = (Syntax.debug , Syntax.var) fundef

let unique left right = left @ right

let rec collect_local x =
  match x with
  | Ans (If (_, x, y, e1, e2, d)) -> max (collect_local e1) (collect_local e2)
  | Ans _ -> 0
  | Let (x, x1, x2) -> 1 + collect_local (Ans x1) + collect_local x2

let rec concat var e1 e2 =
  match e1 with
  | Ans x -> Let (var, x, e2)
  | Let (y, t1, t2) -> Let (y, t1, concat var t2 e2)

let rec closure_to_virtual' (e: Closure.t) =
  let closure_to_virtual x = closure_to_virtual' x in
  match e with
  | Const (CUnit, d) -> Ans (Nop d)
  | Const (CInt x, d) -> Ans (Li (x, d))
  | Const (CFloat x, d) -> Ans (FLi (x, d))
  | Const (CBool x, d) -> Ans (Li ((if x then 1 else 0), d))
  | Op (op, l, d) -> Ans (Op (op, l, d))
  | If (cmp, x, y, e1, e2, d) -> (
    match x.ty with
    | Type.TyBool | Type.TyInt | Type.TyFloat ->
        Ans (If (cmp, x, y, closure_to_virtual e1, closure_to_virtual e2, d))
    | _ -> failwith "equality is only bool and int" )
  | Let (var, e1, e2, d) ->
      concat var (closure_to_virtual e1) (closure_to_virtual e2)
  | Var (var, d) -> Ans (Var (var, d))
  | Closure (fundef, d) ->
      let body = closure_to_virtual fundef.body in
      Ans (Nop d)
  (* | AppCls (var, ys, d) -> Ans (CallCls (var, ys, d))  *)
  | AppDir (var, ys, d) ->
      Ans (CallDir (var.name, ys, d))
  (*  *)
  | Tuple (names, d) ->
      let ( >>= ) x f = f x in
      tmp_var ()
      >>= fun x ->
      Let
        ( x
        , Li (List.length names, d)
        , tmp_var ()
          >>= fun y ->
          Let
            ( y
            , CallDir ("alloc", [x], d)
            , fst
                (List.fold_right
                   (fun z (acc, counter) ->
                     ( Let (tmp_var (), Store (z, y, counter, d), acc)
                     , counter - 1 ) )
                   names
                   (Ans (Var (y, d)), List.length names - 1)) ) )
  | _ -> failwith (Closure.show e)

let rec g_last_var = function
  | Let (x, y, t) ->
      let p, var = g_last_var t in
      (Let (x, y, p), var)
  | Ans (Var (x, t)) -> (Ans (Var (x, t)), x)
  | Ans s ->
      let x = tmp_var () in
      (Let (x, s, Ans (Var (x, x.debug))), x)

let rec function_to_virtual (fundef: debug Closure.fundef) =
  let body = closure_to_virtual' fundef.body in
  let body, last_var = g_last_var body in
  let l = collect_local body in
  { label= fundef.f.name
  ; args= fundef.args
  ; body
  ; ret= last_var
  ; local= l + List.length fundef.args }

let f (x, y) = (closure_to_virtual' x, List.map function_to_virtual y)
