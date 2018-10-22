open Syntax
open Asm

open Virtual

type t = (Syntax.debug, int) Virtual.v [@@deriving show]

let rec get_liveu e =
  match e with
  | Nop _ | Li _ | FLi _ -> VarSet.empty
  | CallDir (_, vars, _) | CallCls (_, vars, _) | Op (_, vars, _) ->
      VarSet.of_list vars
  | Load (x, y, _, _) | Store (x, y, _, _) -> VarSet.of_list [x; y]
  | If (_, x, y, e1, e2, d) ->
      VarSet.union
        (VarSet.union (VarSet.of_list [x; y]) (get_livev e1))
        (get_livev e2)
  | Var (x, d) -> VarSet.singleton x

and get_livev e =
  match e with
  | Ans u -> get_liveu u
  | Let (var, u, v) ->
      VarSet.union
        (VarSet.diff (get_livev v) (VarSet.singleton var))
        (get_liveu u)

let gr =
  [ 3
  ; 4
  ; 5
  ; 6
  ; 7
  ; 8
  ; 9
  ; 10
  ; 11
  ; 12
  ; 13
  ; 14
  ; 15
  ; 16
  ; 17
  ; 18
  ; 19
  ; 20
  ; 21
  ; 22
  ; 23
  ; 24
  ; 25
  ; 26
  ; 27
  ; 28
  ; 29
  ; 30 ]

let init = List.map (fun x -> (x, None)) gr

let rec liveness_after_call e =
  match e with
  | Let (_, u, v) -> (
    match u with
    | CallDir (_, vars, _) | CallCls (_, vars, _) ->
        ( fst
            (List.fold_left
               (fun (acc, counter) x -> ((counter, x) :: acc, counter + 1))
               ([], 3) vars)
        , get_livev v )
    | _ -> liveness_after_call v )
  | Ans u ->
    match u with
    | CallDir (_, vars, _) | CallCls (_, vars, _) ->
        ( fst
            (List.fold_left
               (fun (acc, counter) x -> ((counter, x) :: acc, counter + 1))
               ([], 3) vars)
        , VarSet.empty )
    | _ -> ([], VarSet.empty)

let update idx u l = (idx, Some u) :: List.filter (fun (x, y) -> x <> idx) l

let forget idx l = (idx, None) :: List.filter (fun (x, y) -> x <> idx) l

let getreg_by_val_opt var l =
  match
    List.find_opt
      (fun (x, y) -> match y with Some y -> y.name = var.name | None -> false)
      l
  with
  | Some (idx, var) -> Some idx
  | None -> None

let getreg_by_val var l =
  fst
    (List.find
       (fun (x, y) ->
         match y with Some y -> y.name = var.name | None -> false )
       l)

let is_on_reg l var =
  print_string var.name ;
  List.exists
    (fun (x, y) -> match y with Some y -> y.name = var.name | _ -> false)
    l

let forget_f var (f, regmap, stackamp) =
  (f, forget (getreg_by_val var regmap) regmap, stackamp)

let spill_not_forget var (f, regmap, stackmap) =
  if VarMap.mem var stackmap then (f, regmap, stackmap)
  else
    let sz = VarMap.cardinal stackmap in
    let reg = getreg_by_val var regmap in
    ( (fun x -> f (Let (0, Store (reg, framep, sz + 2, tmp_debug), x)))
    , regmap
    , VarMap.add var (sz + 2) stackmap )

let spill_not_forget_f vars (f, regmap, stackmap) =
  List.fold_left (fun p x -> spill_not_forget x p) (f, regmap, stackmap) vars

let spill var (f, regmap, stackmap) =
  if VarMap.mem var stackmap then (f, regmap, stackmap)
  else
    let sz = VarMap.cardinal stackmap in
    let reg = getreg_by_val var regmap in
    let _, regmap, _ = forget_f var (f, regmap, stackmap) in
    ( (fun x -> f (Let (0, Store (reg, framep, sz + 2, tmp_debug), x)))
    , regmap
    , VarMap.add var (sz + 2) stackmap )

let spill_f vars (f, regmap, stackmap) =
  List.fold_left (fun p x -> spill x p) (f, regmap, stackmap) vars

let id x = x

let ( >>= ) x f = f x

let max_empty_reg regmap =
  let regmap = List.sort (fun (x, _) (y, _) -> y - x) regmap in
  let idx, _ =
    List.find (fun (_, x) -> match x with None -> true | _ -> false) regmap
  in
  idx

let get_loader idx var stackmap =
  Load (idx, framep, VarMap.find var stackmap, tmp_debug)

let make_var_on_reg var (f, regmap, stackmap) =
  if is_on_reg regmap var then (f, regmap, stackmap)
  else
    let idx = max_empty_reg regmap in
    let stack_load = get_loader idx var stackmap in
    let f x = f (Let (idx, stack_load, x)) in
    (f, update idx var regmap, stackmap)

let make_vars_on_reg vars (f, regmap, stackmap) =
  List.fold_right (fun p x -> make_var_on_reg p x) vars (f, regmap, stackmap)

let move var dest (f, regmap, stackmap) =
  let reg = getreg_by_val var regmap in
  let f, regmap, stackmap = forget_f var (f, regmap, stackmap) in
  let regmap = update dest var regmap in
  let f, regmap, stackmap = forget_f var (f, regmap, stackmap) in
  ((fun x -> Let (dest, Var (reg, tmp_debug), x)), regmap, stackmap)

let show_stackmap e =
  let _ =
    VarMap.fold
      (fun key v acc -> Printf.printf "var %s is %d @ stack\n" key.name v)
      e ()
  in
  ()

let show_regmap e =
  let e = List.sort (fun (x, _) (y, _) -> compare x y) e in
  let _ = print_newline () in
  let _ =
    List.map
      (fun (x, y) ->
        match y with
        | Some y -> Printf.printf "reg[%d] = %s ;" x y.name
        | None -> Printf.printf "reg[%d] = None ;" x )
      e
  in
  let _ = print_newline () in
  ()

let with_idx vars =
  fst (List.fold_left (fun (p, c) x -> ((c, x) :: p, c + 1)) ([], 3) vars)

let put_arg (f, regmap, stackmap) args =
  let wi = with_idx args in
  let f, regmap =
    List.fold_left
      (fun (f, regmap) (idx, x) ->
        match getreg_by_val_opt x regmap with
        | Some l when l = idx -> (f, regmap)
        | _ ->
            ( (fun y ->
                f
                  (Let
                     ( 0
                     , Load (idx, framep, VarMap.find x stackmap, tmp_debug)
                     , y )) )
            , update idx x regmap ) )
      (f, regmap) wi
  in
  (f, regmap, stackmap)

let put_args (f, regmap, stackmap) var reg args =
  let f, regmap, stackmap = make_vars_on_reg args (f, regmap, stackmap) in
  let cur = getreg_by_val var regmap in
  if cur = reg then (f, regmap, stackmap)
  else move var reg (f, regmap, stackmap)

(* let make_vars_args vars (f,regmap,stackmap) = *)
(*     fst(List.fold_left (fun (p,acc) x -> *)
(*         (put_args p x acc vars,acc+1) ) ((f, regmap, stackmap),3) vars) *)

(** varをレジスタとしたいか
     (i) 次の関数の引数になるのなら%r3,%r4,...に入れたい
     (ii) 関数の引数でないのなら%r30,%r29,..のうちあいてるところに入れる
    *)
let rec alloc var u cont (f, regmap, stackmap) =
  let normal_live = get_livev cont in
  let nextfun_arg, liveness = liveness_after_call cont in
  let _ =
    List.iter
      (fun (x, y) -> print_string y.name ; print_newline ())
      nextfun_arg
  in
  let tar =
    match List.find_opt (fun (y, x) -> x.name = var.name) nextfun_arg with
    | Some (y, x) -> y
    | None ->
        let regmap = List.sort (fun (x, _) (y, _) -> y - x) regmap in
        let idx, _ =
          List.find
            (fun (_, x) -> match x with None -> true | _ -> false)
            regmap
        in
        (* 死んでるもののうち一番インデックスが大きい物 *)
        idx
  in
  let _ = Printf.printf "%s wants %d\n" var.name tar in
  let cur = (f, regmap, stackmap) in
  let _ = print_string (Virtual.show (Ans u)) in
  let u, (f, regmap, stackmap) =
    match u with
    | Nop x -> (Nop x, cur)
    | Li (x, d) -> (Li (x, d), cur)
    | FLi (x, d) -> (FLi (x, d), cur)
    | Var (x, d) ->
        let f, regmap, stackmap = make_var_on_reg x cur in
        (Var (getreg_by_val x regmap, d), (f, regmap, stackmap))
    | Op (op, vars, d) ->
        let f, regmap, stackmap = make_vars_on_reg vars cur in
        ( Op (op, List.map (fun x -> getreg_by_val x regmap) vars, d)
        , (f, regmap, stackmap) )
    | Load (x, y, off, d) ->
        let f, regmap, stackmap = make_vars_on_reg [x; y] cur in
        ( Load (getreg_by_val x regmap, getreg_by_val y regmap, off, d)
        , (f, regmap, stackmap) )
    | Store (x, y, off, d) ->
        let f, regmap, stackmap = make_vars_on_reg [x; y] cur in
        ( Store (getreg_by_val x regmap, getreg_by_val y regmap, off, d)
        , (f, regmap, stackmap) )
    | CallDir (label, vars, d) ->
        let f, regmap, stackmap = put_arg (f, regmap, stackmap) vars in
        let _ = show_regmap regmap in
        (* let _ = show_regmap regmap in *)
        (* let (f,regmap, stackmap) = make_vars_args vars cur in *)
        (* let _ = show_regmap regmap in *)
        ( CallDir (label, List.map (fun x -> getreg_by_val x regmap) vars, d)
        , (f, init, stackmap) )
    | CallCls (label, vars, d) ->
        let _ = show_regmap regmap in
        let f, regmap, stackmap = put_arg (f, regmap, stackmap) vars in
        (* let (f,regmap, stackmap) = make_vars_args vars cur in *)
        ( CallCls (label, List.map (fun x -> getreg_by_val x regmap) vars, d)
        , (f, init, stackmap) )
    | If (cmp, x, y, e1, e2, d) ->
        let (f1, r1, s1), l1 = regalloc e1 ((fun x -> x), regmap, stackmap) in
        let (f2, r2, s2), l2 = regalloc e2 ((fun x -> x), regmap, stackmap) in
        let regafter =
          List.map2
            (fun (i, x) (_, y) -> if x = y then (i, x) else (i, None))
            r1 r2
        in
        let onreg =
          List.concat
            (List.map
               (fun (x, y) -> match y with Some y -> [y] | _ -> [])
               regmap)
        in
        let should_spill =
          List.filter (fun x -> not (is_on_reg regafter x)) onreg
        in
        let f, regmap, stackmap =
          spill_not_forget_f should_spill (f, regmap, stackmap)
        in
        let (f1, r1, s1), l1 = regalloc e1 ((fun x -> x), regmap, stackmap) in
        let (f2, r2, s2), l2 = regalloc e2 ((fun x -> x), regmap, stackmap) in
        let f', regmap, stackmap = make_vars_on_reg [x; y] cur in
        let f x = f' (f x) in
        ( If
            ( cmp
            , getreg_by_val x regmap
            , getreg_by_val y regmap
            , f1 (Ans (Var (getreg_by_val l1 r1, tmp_debug)))
            , f2 (Ans (Var (getreg_by_val l2 r2, tmp_debug)))
            , d )
        , (f, regmap, stackmap) )
  in
  let f, regmap, stackmap =
    ((fun x -> f (Let (tar, u, x))), regmap, stackmap)
  in
  let _ = show_regmap regmap in
  let regmap = update tar var regmap in
  let f, regmap, stackmap =
    if VarSet.mem var liveness then (
      Printf.printf "%s is spilled" var.name ;
      spill var (f, regmap, stackmap) )
    else (
      Printf.printf "%s should be forgot" var.name ;
      (f, regmap, stackmap) )
  in
  let regmap =
    List.map
      (fun (idx, x) ->
        match x with
        | Some x when VarSet.mem x normal_live -> (idx, Some x)
        | _ -> (idx, None) )
      regmap
  in
  let regmap = List.sort (fun (x, _) (y, _) -> y - x) regmap in
  (f, regmap, stackmap)

and regalloc e (f, regmap, stackmap) =
  match e with
  | Let (var, u, v) ->
      alloc var u v (f, regmap, stackmap) >>= fun x -> regalloc v x
  | Ans u ->
      let last = tmp_var () in
      let en = Ans (Var (last, tmp_debug)) in
      (alloc last u en (f, regmap, stackmap), last)

let f e fstreg =
  let (f, _, _), _ = regalloc e ((fun x -> x), init, VarMap.empty) in
  f (Ans (Nop tmp_debug))

let first_reg args = 

  let hoge = with_idx args in
  let rec f x = if x = 31 then [] else  (x,None) :: (f (x-1)) in 
  let rec g x = 
  match x with 
    | [] -> (f (List.length args + 3))
    | (idx,v) :: y -> (idx,Some(v)) :: (g y)
  in 
    g hoge 


let rec functions (main ,toplevel) =
 
 (f main init,
 List.map (fun g -> 
 (
    g.label,
    f g.body (first_reg g.args)
 ))
 toplevel
 )

