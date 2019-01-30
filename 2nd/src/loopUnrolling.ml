open IR

let fname = ref ""

let loop_unrolling_size = 2

let rec cpy_times n y = if n = 0 then [] else y :: cpy_times (n - 1) y

let loop_unroll2 cmp cmpty lhs rhs diff pairs updates1 cont =
  let used = List.map fst updates1 in
  let updates1' = updates1 in
  let rename1 =
    List.fold_left
      (fun acc a ->
        let name = a.name ^ "." ^ Syntax.genvar () in
        VarMap.add a {a with name} acc )
      VarMap.empty used
  in
  let updates2 =
    List.map (fun (x, y) -> (x, IR.alpha_conv_u rename1 y)) updates1
  in
  let updates1 = List.map (fun (x, y) -> (IR.find_or rename1 x, y)) updates1 in
  let rename2 =
    List.fold_left
      (fun acc a ->
        let name = a.name ^ "." ^ Syntax.genvar () in
        VarMap.add a {a with name} acc )
      VarMap.empty used
  in
  let updates2 = List.map (fun (x, y) -> (IR.find_or rename2 x, y)) updates2 in
  let pairs = List.map (fun (x, y) -> (x, IR.find_or rename2 y)) pairs in
  let update = updates1 @ updates2 in
  let rhs' = {rhs with name= rhs.name ^ "." ^ Syntax.genvar ()} in
  let rest = For (cmp, cmpty, lhs, rhs, diff, pairs, updates1', cont) in
  let tmp' = IR.beta TyInt in
  Let
    ( tmp'
    , IR.C (Syntax.CInt diff)
    , Let
        ( rhs'
        , IR.Op (Primitive Sub, [rhs; tmp'])
        , Ans
            (For
               ( Knormal.lower cmp
               , cmpty
               , lhs
               , rhs'
               , 2 * diff
               , pairs
               , update
               , Ans rest )) ) )

(* let used = List.map fst updates2 in
    let rename = List.fold_left (fun acc (a,c) -> 
        let name = a.name ^ "." ^ Syntax.genvar()  in
        VarMap.add a {a with name}  acc 
     ) VarMap.empty used in *)

let rec replace v =
  match v with
  | Ans (For (cmp, cmpty, lhs, rhs, diff, pairs, updates, cont)) ->
      loop_unroll2 cmp cmpty lhs rhs diff pairs updates cont
  | Ans u -> v
  | Let (x, y, v) -> Let (x, y, replace v)

let convert fd =
  let _ = fname := fd.f_ir.name in
  {fd with body_ir= replace fd.body_ir}

let f (main, fds) = (main, List.map convert fds)
