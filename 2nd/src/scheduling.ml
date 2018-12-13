open Syntax
open Virtual

module S = Set.Make (struct
  type t = string

  let compare x y = compare x y
end)

let conv (GVar x) = x.name

let rec str = function
  | Nop _ -> "nop"
  | CallDir (_, x, _) ->
      "calldir "
      ^ List.fold_right (fun x acc -> x ^ "," ^ acc) (List.map conv x) ""
  | Li (x, d) -> "li " ^ string_of_int x
  | FLi (x, d) -> "fli " ^ string_of_float x
  | Var (x, _) -> "var " ^ conv x
  | Op (Primitive op, x, _) ->
      Syntax.show_primitive op
      ^ List.fold_right (fun x acc -> x ^ "," ^ acc) (List.map conv x) ""
  | Op (ArrayGet _, x, _) ->
      "arrayget "
      ^ List.fold_right (fun x acc -> x ^ "," ^ acc) (List.map conv x) ""
  | _ -> failwith "operation which has sideeffct is not supportd yet"

let get_latency = function
  | Nop _ -> 1
  | CallDir (_, x, _) -> 1
  | Li _ -> 1
  | FLi _ -> 1
  | Lil _ -> 1
  | Var (x, _) -> 1
  | Op (Primitive op, _, _) -> (
    match op with FAdd | FMul | FSub | FDiv | FNeg -> 1 | _ -> 1 )
  | Op (ArrayGet _, _, _) -> 1
  | _ -> failwith "operation which has sideeffct is not supportd yet"

let extract = function
  | Nop _ | Li _ | FLi _ | Lil _ -> []
  | Var (x, _) -> [conv x]
  | Op (_, x, _) | CallDir (_, x, _) -> List.map conv x
  | _ -> failwith "operation which has sideeffct is not supportd yet"

let idx_opt name arr =
  let _, y =
    Array.fold_left
      (fun (idx, ans) (n, v) ->
        match ans with
        | Some x -> (idx + 1, ans)
        | None -> (idx + 1, if name = n then Some idx else None) )
      (0, None) arr
  in
  y

let idx name arr =
  let _, Some y =
    Array.fold_left
      (fun (idx, ans) (n, v) ->
        match ans with
        | Some x -> (idx + 1, ans)
        | None -> (idx + 1, if name = n then Some idx else None) )
      (0, None) arr
  in
  y

let g priority e =
  let block = ref [] in
  let add x = block := !block @ [x] in
  let var_map = ref M.empty in
  let add_var (x, y) = var_map := M.add x y !var_map in
  let ans = ref (fun x -> x) in
  let tmp = ref [] in
  let clear () =
    var_map := M.empty ;
    block := [] ;
    (ans := fun x -> x) ;
    tmp := []
  in
  let schedule_block () =
    let arr = Array.of_list !block in
    let get name = snd arr.(idx name arr) in
    let n = Array.length arr in
    let will_defined_set = S.of_list (Array.to_list (Array.map fst arr)) in
    let select_order ready_set run_set =
      let run_set = S.union ready_set run_set in
      let candicates =
        List.filter
          (fun (name, u) ->
            (not (S.mem name run_set))
            && List.for_all
                 (fun x -> S.mem x ready_set || not (S.mem x will_defined_set))
                 (extract u) )
          !block
      in
      (* let _ = Printf.printf "candicates %d\n" (List.length candicates) in *)
      if List.length candicates = 0 then None
      else
        let priorities =
          List.map (fun (x, u) -> (x, priority x ready_set arr)) candicates
        in
        let ((x, _) :: _) =
          List.sort (fun (_, x) (_, y) -> x - y) priorities
        in
        Some x
    in
    let rec loop ready_set latency_list =
      (* let _ =   print_string "start"  in *)
      let _ = Printf.printf "hoge %d %d \n" n (S.cardinal ready_set) in
      if S.cardinal ready_set = n then print_string "end"
      else
        let st =
          match
            select_order ready_set (S.of_list (List.map fst latency_list))
          with
          | None -> []
          | Some name ->
              let _ = tmp := (M.find name !var_map, get name) :: !tmp in
              [(name, get_latency (get name) - 1)]
        in
        let next = st @ List.map (fun (a, b) -> (a, b - 1)) latency_list in
        (* let _ = *)
        (*   List.iter *)
        (*     (fun (x, y) -> Printf.printf "%s latency %d \n" x y) *)
        (*    next  *)
        (* in *)
        (*  *)
        let ok =
          S.of_list (List.map fst (List.filter (fun (x, b) -> b <= 0) next))
        in
        let next = List.filter (fun (x, b) -> b > 0) next in
        let next_set = S.union ok ready_set in
        loop next_set next
    in
    let _ = loop S.empty [] in
    ans :=
      List.fold_right
        (fun (n, v) acc z -> acc (Let (GVar n, v, z)))
        !tmp
        (fun x -> x)
  in
  let rec schedule e =
    match e with
    | Let (Syntax.GVar var, u, v) -> (
      match u with
      | If (c, x, y, e1, e2, cc, d) ->
          schedule_block () ;
          let f = !tmp in
          let tmpv = !var_map in
          let _ = clear () in
          let e1 = schedule e1 in
          let _ = clear () in
          let e2 = schedule e2 in
          let _ = clear () in
          let _ = var_map := tmpv in
          let f =
            List.fold_right
              (fun (n, v) acc z -> acc (Let (GVar n, v, z)))
              f
              (fun x -> x)
          in
          f (Let (Syntax.GVar var, If (c, x, y, e1, e2, cc, d), schedule v))
      | _ ->
          add (var.name, u) ;
          add_var (var.name, var) ;
          schedule v )
    | Ans u -> (
        schedule_block () ;
        match u with
        | If (c, x, y, e1, e2, cc, d) ->
          let f = !tmp in
          let tmpv = !var_map in
          let _ = clear () in
          let e1 = schedule e1 in
          let _ = clear () in
          let e2 = schedule e2 in
          let _ = clear () in
          let _ = var_map := tmpv in
          let f =
            List.fold_right
              (fun (n, v) acc z -> acc (Let (GVar n, v, z)))
              f
              (fun x -> x)
          in
          f (Ans(If (c, x, y, e1, e2, cc, d)))
        | _ ->
            let f =
            List.fold_right
              (fun (n, v) acc z -> acc (Let (GVar n, v, z)))
              !tmp 
              (fun x -> x) in
            let e = f (Ans u) in
            let _ = clear () in
            e )
  in
  schedule e

let resource_saving x ready arr =
  let memo = Array.make (Array.length arr) 0 in
  for i = 0 to Array.length arr - 1 do
    let name, u = arr.(i) in
    for j = i + 1 to Array.length arr - 1 do
      let (_,u) = arr.(j) in
      let from = extract u in
      if List.exists (fun x -> name = x) from then
        memo.(j) <- max (memo.(i) + 1) memo.(j)
      else ()
    done
  done ;
  let v = -memo.(idx x arr) in
  let _ = Printf.printf "%s %d\n" x v in v
 
let execution_time x ready arr =
  let memo = Array.make (Array.length arr) 0 in
  for l = 0 to Array.length arr - 1 do
    let i = Array.length arr - 1 - l in
    let name, u = arr.(i) in
    let from = extract u in
    let _ =
      List.iter
        (fun x ->
          let y = idx_opt x arr in
          match y with
          | Some(y) -> 
          let _ = memo.(y) <- max (get_latency u + memo.(i)) memo.(y) in
          ()
          | None -> ()
           )
        from
    in
    ()
  done ;
  let v = -memo.(idx x arr) in
  let _ = Printf.printf "nyan %s %d\n" x v in v 

let f = g execution_time

let rec print_order = function
  | Let (GVar x, If (_, x', y, e1, e2, cmpty, d), t) ->
      let _ = Printf.printf "%s = If(\n" x.name in
      let _ = print_order e1 in
      let _ = print_order e2 in
      let _ = print_order t in
      ()
  | Let (GVar x, v, t) ->
      let _ = Printf.printf "%s = %s\n" x.name (str v) in
      print_order t
  | Ans (If (_, x', y, e1, e2, cmpty, d)) ->
      let _ = Printf.printf "If(\n" in
      let _ = print_order e1 in
      let _ = print_order e2 in
      ()
  | Ans u -> Printf.printf "%s\n" (str u)

let closure_to_virtual' x =
  let e = f (closure_to_virtual' x) in
  let _ = print_order e in
  e

let rec function_to_virtual2 (fundef : debug Closure.fundef) =
  let body = closure_to_virtual' fundef.body in
  let conv = Virtual.conv in
  { label= fundef.f.name
  ; args= List.map conv fundef.args
  ; body
  ; fv= List.map conv fundef.fv
  ; ret= Syntax.GVar (tmp_var ())
  ; local= 0 }

let h (x, y) = (closure_to_virtual' x, List.map function_to_virtual2 y)
