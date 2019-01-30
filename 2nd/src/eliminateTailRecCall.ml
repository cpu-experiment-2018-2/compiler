open IR

let rec flatten v =
  match v with Ans v -> [] | Let (n, u, v) -> (n, u) :: flatten v

let is_tailrec' fd x =
  let rec sub_u x cnt =
    match x with
    | If (_, _, _, u, v, ty) -> sub_v u (cnt + 1) || sub_v v (cnt + 1)
    | Call (f, _) -> f.name = fd.f_ir.name && cnt < 2
    | _ -> false
  and sub_v x cnt =
    match x with Ans u -> sub_u u cnt | Let (y, t1, u) -> sub_v u cnt
  in
  sub_v x 0

let is_tailrec fd = is_tailrec' fd fd.body_ir

let get_update_pair fd =
  let rec get_args_u = function
    | Call (f, args) ->
        if f.name = fd.f_ir.name then args else failwith "unreachble"
    | If (_, _, _, u, v, ty) ->
        if is_tailrec' fd u then get_args_v u else get_args_v v
    | _ -> failwith "unreachble"
  and get_args_v = function
    | Let (_, _, v) -> get_args_v v
    | Ans v -> get_args_u v
  in
  List.map2 (fun x y -> (x, y)) fd.args_ir (get_args_v fd.body_ir)

let convert fd =
  if is_tailrec fd then
    let _ =
      Printf.printf "[eliminateTailRecCall.ml] found while %s\n" fd.f_ir.name
    in
    let pair = get_update_pair fd in
    let rec change_v x =
      match x with
      | Let (a, b, u) -> Let (a, b, change_v u)
      | Ans u -> Ans (change_u u)
    and change_u x =
      match x with
      | If (cmp, x, y, u, v, ty) ->
          if is_tailrec' fd u then While (cmp, ty, x, y, pair, flatten u, v)
          else While (Knormal.opposite cmp, ty, x, y, pair, flatten v, u)
      | _ -> x
    in
    {fd with body_ir= change_v fd.body_ir}
  else fd

let f (main, fds) = (main, List.map convert fds)
