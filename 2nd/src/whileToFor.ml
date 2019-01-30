(**
 * forに変更できる <-> 
 **)

(**
 * varが帰納的変数か判定する
 *)

open IR

let fname = ref ""

let convert_while_to_for cmp cmpty lhs rhs pairs updates cont =
  if cmpty = F then While (cmp, cmpty, lhs, rhs, pairs, updates, cont)
  else
    let pairm =
      List.fold_left (fun a (b, c) -> VarMap.add b c a) VarMap.empty pairs
    in
    let vm =
      List.fold_left (fun a (b, c) -> VarMap.add b c a) VarMap.empty updates
    in
    let rec is_constant var =
      (* ループに含まれない *)
      not (VarMap.mem var pairm)
    in
    let rec is_constantint var =
      (* ループに含まれない *)
      (not (VarMap.mem var pairm))
      &&
      if VarMap.mem var vm then
        let u = VarMap.find var vm in
        match u with C (CInt _) -> true | _ -> false
      else false
    in
    let rec get_constantint_val var =
      (* ループに含まれない *)
      let u = VarMap.find var vm in
      match u with C (CInt x) -> x | _ -> failwith "unreachble"
    in
    let rec is_induction_variable var =
      (* 
       *)
      if not (VarMap.mem var pairm) then false
      else
        let pair = VarMap.find var pairm in
        if not (VarMap.mem pair vm) then false
        else
          let u = VarMap.find pair vm in
          match u with
          | (IR.Op (Primitive Sub, [x; y]) | IR.Op (Primitive Add, [x; y]))
            when x.name = var.name && is_constantint y ->
              true
          | IR.Op (Primitive Add, [x; y])
            when y.name = var.name && is_constantint x ->
              true
          | _ -> false
    in
    let rec get_diff var =
      (* pairがupdatesの左辺に含まれて右辺のオペランドの
         *)
      let pair = VarMap.find var pairm in
      let u = VarMap.find pair vm in
      match u with
      | IR.Op (Primitive Sub, [x; y])
        when x.name = var.name && is_constantint y ->
          -get_constantint_val y
      | IR.Op (Primitive Add, [x; y])
        when x.name = var.name && is_constantint y ->
          get_constantint_val y
      | IR.Op (Primitive Add, [x; y])
        when y.name = var.name && is_constantint x ->
          get_constantint_val x
    in
    if is_induction_variable lhs && is_constant rhs then
      let _ =
        Printf.printf
          "[whileToFor.ml] found For loop %s. indcution: %s rhs: %s\n" !fname
          lhs.name rhs.name
      in
      For (cmp, cmpty, lhs, rhs, get_diff lhs, pairs, updates, cont)
    else if is_induction_variable rhs && is_constant lhs then
      let _ =
        Printf.printf
          "[whileToFor.ml] found For loop %s. indcution: %s rhs: %s\n" !fname
          rhs.name lhs.name
      in
      For
        (Knormal.gyaku cmp, cmpty, rhs, lhs, get_diff rhs, pairs, updates, cont)
    else While (cmp, cmpty, lhs, rhs, pairs, updates, cont)

let rec replace v =
  match v with
  | Ans (While (cmp, cmpty, lhs, rhs, pairs, updates, cont)) ->
      Ans (convert_while_to_for cmp cmpty lhs rhs pairs updates cont)
  | Ans u -> v
  | Let (x, While (cmp, cmpty, lhs, rhs, pairs, updates, cont), v) ->
      Let
        ( x
        , convert_while_to_for cmp cmpty lhs rhs pairs updates cont
        , replace v )
  | Let (x, y, v) -> Let (x, y, replace v)

let convert fd =
  let _ = fname := fd.f_ir.name in
  {fd with body_ir= replace fd.body_ir}

let f (main, fds) = (main, List.map convert fds)
