open Syntax
open Asm
open Virtual

type t = (Syntax.debug, int) Virtual.v [@@deriving show]

let mymemmap v map =
  match v with Syntax.Int y -> true | _ -> VarMap2.mem v map

let mymemset v map =
  match v with Syntax.Int y -> false | _ -> VarSet2.mem v map

let last_gr_reg = 29

let first_user_reg = 3

let show_stackmap (e, _) =
  let _ =
    VarMap2.fold
      (fun key v acc -> Printf.printf "\nstack[%d] = %s ;" v (Syntax.g2s key))
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
        | Some y -> Printf.printf "reg[%d] = %s ;" x (Syntax.g2s y)
        | None -> Printf.printf "reg[%d] = None ;" x )
      e
  in
  let _ = print_newline () in
  ()

let show_state (f, regmap, stackmap) =
  let _ = show_regmap regmap in
  show_stackmap stackmap

let tmp_reg = 30

let failwith_message message = function Some x -> x | _ -> failwith message

let rec get_liveu' e =
  match e with
  | Nop _ | Li _ | FLi _ | Lil _ -> VarSet2.empty
  | CallDir (_, vars, _) | Op (_, vars, _) -> VarSet2.of_list vars
  | CallCls (f, vars, _) -> VarSet2.of_list (f :: vars)
  | Load (x, y, _, _) | Store (x, y, _, _) -> VarSet2.of_list [x; y]
  | If (_, x, y, e1, e2, d) ->
      VarSet2.union
        (VarSet2.union (VarSet2.of_list [x; y]) (get_livev' e1))
        (get_livev' e2)
  | Var (x, d) -> VarSet2.singleton x

and get_livev' e =
  match e with
  | Ans u -> get_liveu' u
  | Let (var, u, v) ->
      VarSet2.union
        (VarSet2.diff (get_livev' v) (VarSet2.singleton var))
        (* (get_livev' v) *)
        (get_liveu' u)

let get_liveu e =
  VarSet2.filter
    (fun x -> match x with Var x -> true | _ -> false)
    (get_liveu' e)

let get_livev e =
  VarSet2.filter
    (fun x -> match x with Var x -> true | _ -> false)
    (get_livev' e)

let gr =
  let rec f x = if x = last_gr_reg then [] else x :: f (x + 1) in
  f 3

let init = List.map (fun x -> (x, None)) gr

let rec liveness_after_call e =
  let g vars v =
    ( fst
        (List.fold_left
           (fun (acc, counter) x -> ((counter, x) :: acc, counter + 1))
           ([], 3) vars)
    , (match v with Some v -> get_livev v | None -> VarSet2.empty)
    , true )
  in
  match e with
  | Let (_, u, v) -> (
    match u with
    | CallDir (_, vars, _) -> g vars (Some v)
    | CallCls (var, vars, _) -> g (var :: vars) (Some v)
    | If (cmp, _, _, e1, e2, d) ->
        let x1, l1, f1 = liveness_after_call e1 in
        let x2, l2, f2 = liveness_after_call e2 in
        if f1 && f2 then (x1, VarSet2.union l1 l2, true)
        else
          let x3, l3, f3 = liveness_after_call v in
          (x3, VarSet2.union l3 (VarSet2.union l1 l2), f1 || f2 || f3)
    | _ -> liveness_after_call v )
  | Ans u -> (
    match u with
    | CallDir (_, vars, _) -> g vars None
    | CallCls (var, vars, _) -> g (var :: vars) None
    | If (cmp, _, _, e1, e2, d) ->
        let x1, l1, f1 = liveness_after_call e1 in
        let x2, l2, f2 = liveness_after_call e2 in
        if f1 || f2 then (x1, VarSet2.union l1 l2, true)
        else (x1, VarSet2.union l1 l2, false)
    | _ -> ([], VarSet2.empty, false) )

let update idx u l = (idx, Some u) :: List.filter (fun (x, y) -> x <> idx) l

let forget idx l = (idx, None) :: List.filter (fun (x, y) -> x <> idx) l

let getreg_by_val_opt var l =
  match var with
  | Int x -> Some x
  | _ -> (
    match
      List.find_opt
        (fun (x, y) ->
          match y with Some y -> compare_g y var = 0 | None -> false )
        l
    with
    | Some (idx, var) -> Some idx
    | None -> None )

let getreg_by_val var l =
  match var with
  | Int x -> x
  | _ ->
      fst
        (failwith_message
           ("getreg_by_val " ^ Syntax.g2s var)
           (List.find_opt
              (fun (x, y) ->
                match y with Some y -> compare_g y var = 0 | None -> false )
              l))

let is_on_reg l var =
  match var with
  | Int x -> true
  | _ ->
      List.exists
        (fun (x, y) ->
          match y with Some y -> compare_g y var = 0 | _ -> false )
        l

let forget_f var (f, regmap, stackamp) =
  (f, forget (getreg_by_val var regmap) regmap, stackamp)

let spill_not_forget var (f, regmap, (stackmap, sz)) =
  if mymemmap var stackmap then (f, regmap, (stackmap, sz))
  else
    let reg = getreg_by_val var regmap in
    ( (fun x -> f (Let (0, Store (reg, framep, sz + 2, tmp_debug), x)))
    , regmap
    , (VarMap2.add var (sz + 2) stackmap, sz + 1) )

let spill_not_forget_f vars (f, regmap, stackmap) =
  List.fold_left (fun p x -> spill_not_forget x p) (f, regmap, stackmap) vars

let spill var (f, regmap, (stackmap, sz)) =
  if mymemmap var stackmap then (f, regmap, (stackmap, sz))
  else
    let reg = getreg_by_val var regmap in
    let _, regmap, _ = forget_f var (f, regmap, stackmap) in
    ( (fun x -> f (Let (0, Store (reg, framep, sz + 2, tmp_debug), x)))
    , regmap
    , (VarMap2.add var (sz + 2) stackmap, sz + 1) )

let spill_f vars (f, regmap, stackmap) =
  List.fold_left (fun p x -> spill x p) (f, regmap, stackmap) vars

let id x = x

let ( >>= ) x f = f x

let max_empty_reg regmap =
  let regmap = List.sort (fun (x, _) (y, _) -> y - x) regmap in
  let idx, _ =
    match
      List.find_opt
        (fun (_, x) -> match x with None -> true | _ -> false)
        regmap
    with
    | Some x -> x
    | None -> failwith "register is filled"
  in
  idx

let get_loader idx var (stackmap, sz) =
  Load
    ( idx
    , framep
    , failwith_message "get_loader" (VarMap2.find_opt var stackmap)
    , tmp_debug )

let make_var_on_reg var (f, regmap, stackmap) =
  if is_on_reg regmap var then (f, regmap, stackmap)
  else
    let idx = max_empty_reg regmap in
    let _ = print_string (Syntax.g2s var) in
    let stack_load = get_loader idx var stackmap in
    let f x = f (Let (idx, stack_load, x)) in
    (f, update idx var regmap, stackmap)

let make_vars_on_reg vars (f, regmap, stackmap) =
  List.fold_right (fun p x -> make_var_on_reg p x) vars (f, regmap, stackmap)

let move var dest (f, regmap, stackmap) =
  let reg = getreg_by_val var regmap in
  let f, regmap, stackmap = forget_f var (f, regmap, stackmap) in
  let regmap = update dest var regmap in
  (* let f, regmap, stackmap = forget_f var (f, regmap, stackmap) in *)
  ((fun x -> Let (dest, Var (reg, tmp_debug), x)), regmap, stackmap)

let with_idx vars =
  fst (List.fold_left (fun (p, c) x -> ((c, x) :: p, c + 1)) ([], 3) vars)

let put_arg (f, regmap, (stackmap, sz)) args =
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
                     , Load (idx, framep, VarMap2.find x stackmap, tmp_debug)
                     , y )) )
            , update idx x regmap ) )
      (f, regmap) wi
  in
  (f, regmap, (stackmap, sz))

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
     (ii) 関数の引数でないのなら%r29,..のうちあいてるところに入れる
    *)
let rec alloc var u cont (f, regmap, stackmap) last =
  let normal_live = get_livev cont in
  let nextfun_arg, liveness, flag = liveness_after_call cont in
  let tar =
    match var with
    | Int x -> x
    | _ -> (
      match last with
      | Some id -> id
      | _ -> (
        match
          List.find_opt (fun (y, x) -> compare_g x var = 0) nextfun_arg
        with
        | Some (y, x) -> y
        | None ->
            let regmap = List.sort (fun (x, _) (y, _) -> y - x) regmap in
            let idx, _ =
              List.find
                (fun (_, x) -> match x with None -> true | _ -> false)
                regmap
            in
            (* 死んでるもののうち一番インデックスが大きい物 *)
            idx ) )
  in
  let cur = (f, regmap, stackmap) in
  let u, (f, regmap, stackmap) =
    match u with
    | Nop x -> (Nop x, cur)
    | Li (x, d) -> (Li (x, d), cur)
    | FLi (x, d) -> (FLi (x, d), cur)
    | Lil (x, d) -> (Lil (x, d), cur)
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
        let f x =
          f
            (Let
               ( 3
               , CallDir
                   (label, List.map (fun x -> getreg_by_val x regmap) vars, d)
               , x ))
        in
        (Var (3, tmp_debug), (f, update 3 var init, stackmap))
    | CallCls (label, vars, d) ->
        let f, regmap, stackmap =
          put_arg (f, regmap, stackmap) (label :: vars)
        in
        let f x =
          f
            (Let
               ( 3
               , CallCls
                   ( getreg_by_val label regmap
                   , List.map (fun x -> getreg_by_val x regmap) vars
                   , d )
               , x ))
        in
        (Var (3, tmp_debug), (f, update 3 var init, stackmap))
    | If (cmp, x, y, e1, e2, d) ->
        let f', regmap, stackmap =
          make_vars_on_reg [x; y] ((fun x -> x), regmap, stackmap)
        in
        let f1, r1, s1 = regalloc e1 ((fun x -> x), regmap, stackmap) tar in
        let f2, r2, s2 = regalloc e2 ((fun x -> x), regmap, stackmap) tar in
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
        let f1, r1, s1 = regalloc e1 ((fun x -> x), regmap, stackmap) tar in
        let f2, r2, s2 = regalloc e2 ((fun x -> x), regmap, stackmap) tar in
        let regafter =
          List.map2
            (fun (i, x) (_, y) -> if x = y then (i, x) else (i, None))
            r1 r2
        in
        let f x = f (f' x) in
        ( If
            ( cmp
            , getreg_by_val x regmap
            , getreg_by_val y regmap
            , f1 (Ans (Nop tmp_debug))
            , f2 (Ans (Nop tmp_debug))
            , d )
        , (f, regafter, (fst stackmap, max (snd s2) (snd s1))) )
  in
  let f, regmap, stackmap =
    ((fun x -> f (Let (tar, u, x))), regmap, stackmap)
  in
  let regmap = update tar var regmap in
  let f, regmap, stackmap =
    if mymemset var liveness then spill var (f, regmap, stackmap)
    else (f, regmap, stackmap)
  in
  let regmap =
    List.map
      (fun (idx, x) ->
        match x with
        | Some x when VarSet2.mem x normal_live -> (idx, Some x)
        | _ -> (idx, None) )
      regmap
  in
  let regmap = List.sort (fun (x, _) (y, _) -> y - x) regmap in
  (f, regmap, stackmap)

and regalloc e (f, regmap, stackmap) last =
  let _ = show_state (f, regmap, stackmap) in
  let _ = print_string (Virtual.show_k e) in
  match e with
  | Let (var, u, v) ->
      alloc var u v (f, regmap, stackmap) None >>= fun x -> regalloc v x last
  | Ans u ->
      let en = Ans (Nop tmp_debug) in
      alloc (Var (tmp_var ())) u en (f, regmap, stackmap) (Some last)

let rec spill_reg_not_forget vars (f, regmap, stackmap) =
  let onreg =
    List.concat
      (List.map (fun (x, y) -> match y with Some y -> [y] | _ -> []) regmap)
  in
  let should_spill =
    List.filter (fun x -> not (VarMap2.mem x (fst stackmap))) onreg
  in
  spill_not_forget_f should_spill (f, regmap, stackmap)

let convert e fstreg args =
  (* let _ =  Printf.printf "%s" (Virtual.show e) in *)
  (* let _ = List.iter (fun x->Printf.printf "%s "  x.name) args in *)
  let cur =
    spill_reg_not_forget args ((fun x -> x), fstreg, (VarMap2.empty, 0))
  in
  (* let _ =  *)
  (* show_state cur in *)
  let f, _, (_, size) = regalloc e cur 3 in
  (f (Ans (Nop tmp_debug)), size)

let first_reg args =
  let hoge = with_idx args in
  let rec f x = if x = last_gr_reg then [] else (x, None) :: f (x + 1) in
  let rec g x =
    match x with
    | [] -> f (List.length args + 3)
    | (idx, v) :: y -> (idx, Some v) :: g y
  in
  g hoge

open Asm

type hoge = (debug, int) Virtual.u [@@deriving show]

let rec conv (order : hoge) var =
  match order with
  | Nop x -> [Nop x]
  | Li (x, d) -> [Li (var, x, d)]
  | FLi (x, d) -> [Li (var, getint x, d)]
  | Lil (x, d) -> [Lil (var, x, d)]
  | Op (Primitive Add, [x; y], d) -> [Op (Add, var, x, y, d)]
  | Op (Primitive Sub, [x; y], d) -> [Op (Sub, var, x, y, d)]
  | Op (Primitive Mul, [x; y], d) -> [Op (Mul, var, x, y, d)]
  | Op (Primitive Div, [x; y], d) -> [Op (Div, var, x, y, d)]
  | Op (Primitive FMul, [x; y], d) -> [FOp (Mul, var, x, y, d)]
  | Op (Primitive FAdd, [x; y], d) -> [FOp (Add, var, x, y, d)]
  | Op (Primitive FSub, [x; y], d) -> [FOp (Sub, var, x, y, d)]
  | Op (Primitive FDiv, [x; y], d) -> [FOp (Div, var, x, y, d)]
  | Op (Primitive Neg, [x], d) -> [Li (var, 0, d); Op (Sub, var, var, x, d)]
  | Op (Primitive Not, [x], d) -> conv (CallDir ("not", [x], d)) var
  | Op (Projection (idx, all, ty), [tup], d) -> [Load (var, tup, idx, d)]
  | Op (ArrayPut ty, [arr; idx; elem], d) ->
      [Op (Add, tmp_reg, arr, idx, d); Store (elem, tmp_reg, 0, d)]
  | Op (ArrayGet ty, [arr; idx], d) ->
      [Op (Add, tmp_reg, arr, idx, d); Load (var, tmp_reg, 0, d)]
  | Load (t, s, off, d) -> [Load (t, s, off, d)]
  | Store (t, s, off, d) -> [Store (t, s, off, d)]
  | If (cmp, x, y, tr, fa, d) ->
      let sy = "label" ^ Syntax.genvar () in
      let t = "label" ^ Syntax.genvar () in
      let p1 = SetLabel (sy ^ ".if.true", Other, d) :: virtual_to_var tr var in
      let p2 =
        (SetLabel (sy ^ ".if.false", Other, d) :: virtual_to_var fa var)
        @ [Jump (t, d)]
      in
      Cmpd (x, y, d)
      :: ( match cmp with
         | EQ -> BEQ (sy ^ ".if.true", d)
         | LE -> BLE (sy ^ ".if.true", d) )
      :: (p2 @ p1 @ [SetLabel (t, Other, d)])
  | Var (x, d) -> [Opi (Add, var, x, 0, d)]
  | CallDir (label, args, d) -> [BL (label, d)]
  | CallCls (var, args, d) ->
      let a = List.length args in
      [ Op (Add, a + 3, var, 0, tmp_debug)
      ; Load (30, var, 0, tmp_debug)
      ; BLRR 30 ]
  | _ -> failwith (show_hoge order)

and virtual_to_var e ret =
  match e with
  | Let (var, order, v) -> conv order var @ virtual_to_var v ret
  | Ans order -> conv order ret

let get_closure_pro arg varg =
  let rec f l =
    if l = 0 then []
    else
      Load
        (first_user_reg + arg + l - 1, first_user_reg + arg, l - 1, tmp_debug)
      :: f (l - 1)
  in
  f varg

let rec top (main, toplevel) =
  let main =
    { label= "main"
    ; body= main
    ; args= []
    ; local= 0
    ; ret= Syntax.Var (tmp_var ())
    ; fv= [] }
  in
  let li = main :: toplevel in
  let li =
    List.map
      (fun g ->
        let body, size =
          convert g.body (first_reg (g.args @ g.fv)) (g.args @ g.fv)
        in
        let _ = print_string ("ANSWER : " ^ g.label) in
        let _ = print_string (show body) in
        let body = virtual_to_var body 3 in
        let pro, epi = proepi tmp_debug (size + 2) in
        let a = get_closure_pro (List.length g.args) (List.length g.fv) in
        (SetLabel (g.label, FunCall, tmp_debug) :: pro) @ a @ body @ epi )
      li
  in
  List.concat li

let emit li stack_start memory_start oc =
  let _ = Printf.fprintf oc "return:\n \tend\n" in
  let _ = Printf.fprintf oc "init:\n" in
  let _ = Printf.fprintf oc "\tlil %%lr,return\n" in
  let _ = Printf.fprintf oc "\tli %%r0,%d\n" 0 in
  let _ = Printf.fprintf oc "\tli %%fp,%d\n" stack_start in
  let _ = Printf.fprintf oc "\tli %%sp,%d\n" stack_start in
  let _ = Printf.fprintf oc "\tli %%r3,%d\n" memory_start in
  let _ = Printf.fprintf oc "\tstore %%r3, %%r0,%d\n" 0 in
  let _ = Printf.fprintf oc "\tjump main\n" in
  let p = List.map reg2regstr li in
  let ch = record p in
  let _ = List.iter (emit_sugar oc ch) p in
  ()
