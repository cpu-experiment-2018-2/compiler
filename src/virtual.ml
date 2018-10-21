open Syntax
open Closure

type label = string [@@deriving show]

let tmp_var () = {name= Syntax.genvar (); debug= {pos= Global}; ty= TyInt}

type bitpos = LL | LH | UL | UH [@@deriving show]

let mem = ref 30000

let get () =
  let tmp = !mem in
  mem := !mem + 1 ;
  tmp

let malloc size =
  let tmp = !mem in
  mem := size + !mem ;
  tmp

type 'a u =
  | Nop of 'a
  | Li of int * 'a
  | FLi of float * 'a
  | Var of var * 'a
  | Op of op * var list * 'a
  | Load of var * var * int * 'a
  | Store of var * var * int * 'a
  | If of Knormal.cmp * var * var * 'a v * 'a v * 'a
  | CallDir of label * var list * 'a
  | In of var * 'a
  | Out of var * 'a
  | OutPos of var * bitpos * 'a
[@@deriving show]

and 'a v = Ans of 'a u | Let of var * 'a u * 'a v [@@deriving show]

type tmp = Syntax.debug u [@@deriving show]

and 'a prog = string * 'a v

type t = Syntax.debug v [@@deriving show]

type fundef =
  {label: string; args: var list; body: debug v; ret: var; local: int}

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
