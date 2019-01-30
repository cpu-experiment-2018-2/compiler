let is_tailrec' fd x =
  let rec sub x cnt =
    match x with
    | Const _ | Op _ | Var _ | Closure _ | Tuple _ -> false
    | Let (_, _, u, _) -> sub u cnt
    | If (_, _, _, u, v, d) -> sub u (cnt + 1) || sub v (cnt + 1)
    | AppDir (f, _, _) -> f.name = fd.f.name && cnt < 2
    | AppCls (f, _, _) -> false
    (* めんどいので *)
  in
  sub x 0
