open Syntax
open Type

type cmp = LE | EQ [@@deriving show]

type 'a u =
  | Const of c * 'a
  | Op of op * var list * 'a
  | If of cmp * var * var * 'a u * 'a u * 'a
  | Let of var * 'a u * 'a u * 'a
  | Var of var * 'a
  | LetRec of 'a fundef * 'a u * 'a
  | App of var * var list * 'a
  | Tuple of var list * 'a
[@@deriving show]

and 'a fundef = {f: var; args: var list; body: 'a u; info: 'a}
[@@deriving show]

type t = debug u [@@deriving show]

let rec apply f e =
  match e with
  | Const _ as self -> self
  | Op (op, vars, d) -> Op (op, List.map f vars, d)
  | If (cmp, x, y, e1, e2, d) -> If (cmp, f x, f y, apply f e1, apply f e2, d)
  | Let (var, e1, e2, d) -> Let (var, apply f e1, apply f e2, d)
  | Var (var, d) -> Var (f var, d)
  | LetRec (fd, e1, d) ->
      LetRec
        ( {fd with f= f fd.f; args= List.map f fd.args; body= apply f fd.body}
        , apply f e1
        , d )
  | App (var, vars, d) -> App (f var, List.map f vars, d)
  | Tuple (vars, d) -> Tuple (List.map f vars, d)

let erase var = List.filter (fun x -> x.name <> var.name)

let erase_list vars l = List.fold_left (fun acc var -> erase var acc) l vars

let rec myprint k indent =
  let rec id x =
    if x = 0 then ()
    else (
      print_string "  " ;
      id (x - 1) )
  in
  print_newline () ;
  id indent ;
  match k with
  | Const (c, d) -> print_string "constant\n"
  | Op (c, vars, d) ->
      print_string (Syntax.show_op c) ;
      print_string " " ;
      List.iter (fun x -> print_string x.name ; print_string " ") vars ;
      print_newline ()
  | If (cmp, a, b, e1, e2, d) ->
      Printf.printf "%s %s %s %s {\n" "IF" (show_cmp cmp) a.name b.name ;
      myprint e1 (indent + 1) ;
      id indent ;
      print_string "}\n" ;
      id indent ;
      print_string "{\n" ;
      myprint e2 (indent + 1) ;
      id indent ;
      print_string "}\n"
  | Let (var, e1, e2, d) ->
      print_string ("LET " ^ var.name ^ " = ") ;
      myprint e1 (indent + 1) ;
      id indent ;
      print_string "IN" ;
      myprint e2 (indent + 1)
  | Var (var, d) -> print_string ("VAR " ^ var.name)
  | LetRec (fundef, e1, d) ->
      print_string ("LET REC " ^ fundef.f.name ^ " ") ;
      List.iter (fun x -> print_string (x.name ^ " ")) fundef.args ;
      print_string " = " ;
      myprint fundef.body (indent + 1) ;
      id indent ;
      print_string "IN" ;
      myprint e1 (indent + 1)
  | App (var, vars, d) ->
      print_string "APP " ;
      print_string (var.name ^ " ") ;
      List.iter (fun x -> print_string (x.name ^ " ")) vars ;
      print_newline ()

let rec fv = function
  | Const _ -> []
  | Op (_, vars, _) -> vars
  | If (_, x, y, e1, e2, d) -> x :: y :: (fv e1 @ fv e2)
  | Var (x, d) -> [x]
  | App (f, args, d) -> f :: args
  | Tuple (ts, d) -> ts
  | Let (var, e0, e1, d) -> fv e0 @ erase var (fv e1)
  | LetRec (fundef, e1, d) ->
      erase fundef.f (erase_list fundef.args (fv fundef.body) @ fv e1)

let fundef_fv fundef = erase_list (fundef.f :: fundef.args) (fv fundef.body)

let get_debug e =
  match e with
  | Const (_, d)
   |Op (_, _, d)
   |If (_, _, _, _, _, d)
   |Let (_, _, _, d)
   |Var (_, d)
   |LetRec (_, _, d)
   |App (_, _, d)
   |Tuple (_, d) ->
      d

let insert_let (e, ty) k =
  match e with
  | Var (x, d) -> k x
  | _ ->
      let alpha = {name= Syntax.genvar (); debug= get_debug e; ty} in
      let e', t = k alpha in
      (Let (alpha, e, e', get_debug e), t)

let rec list_to_let (es: (t * ty) list) knormalize =
  let res =
    List.map
      (fun (e, ty) ->
        match e with
        | Var (e, d) -> (e, None)
        | _ ->
            let alpha = {name= Syntax.genvar (); debug= get_debug e; ty} in
            (alpha, Some e) )
      es
  in
  ( List.fold_right
      (fun (var, opt) acc ->
        match opt with Some nf -> Let (var, nf, acc, var.debug) | None -> acc
        )
      res
  , List.map fst res )

let rec knormalize (e: Syntax.t) =
  match e with
  | Const (CInt x, d) -> (Const (CInt x, d), TyInt)
  | Const (CFloat x, d) -> (Const (CFloat x, d), TyFloat)
  | Const (CBool x, d) -> (Const (CInt (if x then 1 else 0), d), TyInt)
  | Const (CUnit, d) -> (Const (CInt 0, d), TyInt)
  | Op (Primitive x, l, d) ->
      let ty =
        match x with FAdd | FMul | FSub | FDiv | FNeg -> TyFloat | _ -> TyInt
      in
      let args = List.map knormalize l in
      let k, names = list_to_let args knormalize in
      (k (Op (Primitive x, names, d)), ty)
  | Op (ArrayGet ty, l, d) ->
      let args = List.map knormalize l in
      let k, names = list_to_let args knormalize in
      (k (Op (ArrayGet ty, names, d)), ty)
  | Op (ArrayPut x, l, d) ->
      let args = List.map knormalize l in
      let k, names = list_to_let args knormalize in
      (k (Op (ArrayPut x, names, d)), TyInt)
  | Op (Projection (a, b, ty), l, d) ->
      let args = List.map knormalize l in
      let k, names = list_to_let args knormalize in
      (k (Op (Projection (a, b, ty), names, d)), ty)
  | If (Op (Primitive EQ, [u1; u2], d0), e2, e3, d1) ->
      insert_let (knormalize u1) (fun x ->
          insert_let (knormalize u2) (fun y ->
              let e2, t2 = knormalize e2 in
              let e3, t3 = knormalize e3 in
              (If (EQ, x, y, e2, e3, d1), t2) ) )
  | If (Op (Primitive LE, [u1; u2], d0), e2, e3, d1) ->
      insert_let (knormalize u1) (fun x ->
          insert_let (knormalize u2) (fun y ->
              let e2, t2 = knormalize e2 in
              let e3, t3 = knormalize e3 in
              (If (LE, x, y, e2, e3, d1), t2) ) )
  | If (Op (Primitive GE, [u1; u2], d0), e2, e3, d1) ->
      insert_let (knormalize u1) (fun x ->
          insert_let (knormalize u2) (fun y ->
              let e2, t2 = knormalize e2 in
              let e3, t3 = knormalize e3 in
              (If (LE, y, x, e2, e3, d1), t2) ) )
  | Var (x, d) -> (Var (x, d), x.ty)
  | If (e1, e2, e3, d) ->
      let e1, t1 = knormalize e1 in
      let e2, t2 = knormalize e2 in
      let e3, t3 = knormalize e3 in
      insert_let (e1, t1) (fun x ->
          insert_let
            (Const (CBool false, d), TyBool)
            (fun y -> (If (EQ, x, y, e3, e2, d), t2)) )
  | Let (var, e1, e2, d) ->
      let e1, t1 = knormalize e1 in
      let e2, t2 = knormalize e2 in
      (Let (var, e1, e2, d), t2)
  | LetRec (fundef, e1, d) ->
      let e0, t0 = knormalize fundef.body in
      let e1, t1 = knormalize e1 in
      ( LetRec
          ({f= fundef.f; args= fundef.args; body= e0; info= fundef.info}, e1, d)
      , t1 )
  | Tuple (l, d) ->
      let args = List.map knormalize l in
      let k, names = list_to_let args knormalize in
      (k (Tuple (names, d)), TyTuple (List.map snd args))
  | App (f, l, d) ->
      (*とりあえず部分適用はないものとする*)
      let args = List.map knormalize (f :: l) in
      let _, TyFun (_, ty) = knormalize f in
      let k, f :: names = list_to_let args knormalize in
      (k (App (f, names, d)), ty)

let f x = fst (knormalize x)
