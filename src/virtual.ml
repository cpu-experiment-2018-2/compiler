open Syntax
open Closure

type label = string [@@deriving show]

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
  | Load of var * var * 'a
  | Store of var * var * 'a
  | If of Knormal.cmp * var * var * 'a v * 'a v * 'a
  | CallDir of label * var list * 'a
  | In of var * 'a
  | Out of var * 'a
  | OutPos of var * bitpos * 'a
  | CallAsm of var list * string
[@@deriving show]

and 'a v = Ans of 'a u | Let of var * 'a u * 'a v [@@deriving show]

type tmp = Syntax.debug u [@@deriving show]

and 'a prog = string * 'a v

type t = Syntax.debug v [@@deriving show]

type fundef =
  {label: string; args: var list; body: debug v; ret: var; local: var list}

let unique left right = left @ right

let rec collect_local x =
  match x with
  | Ans (If (_, x, y, e1, e2, d)) -> collect_local e1 @ collect_local e2
  | Ans _ -> []
  | Let (x, x1, x2) -> (x :: collect_local (Ans x1)) @ collect_local x2

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
    | Type.TyBool | Type.TyInt ->
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
  | _ -> failwith (Closure.show e)

let tmp_var () = {name= Syntax.genvar (); debug= {pos= Global}; ty= TyInt}

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
  let localvars = collect_local body in
  { label= fundef.f.name
  ; args= fundef.args
  ; body
  ; ret= last_var
  ; local= fundef.args @ localvars }

let f (x, y) = (closure_to_virtual' x, List.map function_to_virtual y)

let globals =
  [ (let v = tmp_var () in
     { label= "print_int"
     ; args= [v]
     ; body= Ans (Out (v, v.debug))
     ; ret= v
     ; local= [] })
  ; (let v = tmp_var () in
     { label= "print_char"
     ; args= [v]
     ; body= Ans (OutPos (v, LL, v.debug))
     ; ret= v
     ; local= [] })
  ; (let v2 = tmp_var () in
     let v1 = tmp_var () in
     let v = tmp_var () in
     { label= "fless"
     ; args= [v1; v2]
     ; body=
         Let
           ( v
           , If
               ( Knormal.LE
               , v1
               , v2
               , Ans (Li (1, v1.debug))
               , Ans (Li (0, v1.debug))
               , v1.debug )
           , Ans (Var (v, v.debug)) )
     ; ret= v
     ; local= [] })
  ; (let v = tmp_var () in
     { label= "float_of_int"
     ; args= [v]
     ; body= Let (v, CallAsm ([v], "itof"), Ans (Var (v, v.debug)))
     ; ret= v
     ; local= [] })
  ; (let v = tmp_var () in
     { label= "int_of_float"
     ; args= [v]
     ; body= Let (v, CallAsm ([v], "ftoi"), Ans (Var (v, v.debug)))
     ; ret= v
     ; local= [] }) ]
