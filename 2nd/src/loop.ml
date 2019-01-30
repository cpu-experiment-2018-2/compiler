open Syntax
open Knormal
open Closure

(* 
 * 一旦self tail raecをwhileに変換する
 * ２回Ifを通ったら諦める
 *
 *)
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

let is_tailrec fd = is_tailrec' fd fd.body

let get_update_pair fd =
  let rec get_args = function
    | Const _ | Op _ | Var _ | Closure _ | Tuple _ -> failwith "unreachble"
    | AppDir (f, args, _) ->
        if f.name = fd.f.name then args else failwith "unreachble"
    | Let (_, _, u, _) -> get_args u
    | If (_, _, _, u, v, d) ->
        if is_tailrec' fd u then get_args u else get_args v
  in
  List.map2 (fun x y -> (x, y)) fd.args (get_args fd.body)

(* let erase_tail_call =  *)
(*     let rec sub x =  *)
(*         match x with *)
(*         | Const _ | Op _ | Var _ | Closure _ | Tuple _ | If _ | AppCls _ -> failwith "unreachble" *)
(*         | Let(a,b,c,d)  -> Let(a,b,c,d) *)
(*         | AppDir(f,_,_) -> Const (CUnit)  *)
(*     in *)
(*     sub x 0 *)

let convert fd =
  if is_tailrec fd then
    let pair = get_update_pair fd in
    let rec change x =
      match x with
      | Let (a, b, u, d) -> Let (a, b, change u, d)
      | If (cmp, x, y, u, v, d) ->
          if is_tailrec' fd u then While (cmp, x, y, pair, u, v)
          else While (opposite cmp, x, y, pair, v, u)
      | _ -> x
    in
    {fd with body= change fd.body}
  else fd

let f (main, fds) = (main, List.map convert fds)
