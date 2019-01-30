open IR

(* Forに対して繰越依存が存在しない
 * <= 
 * 1. ループの内部にインデックスに依存する変数が存在しない(強い).
 * 2. ループの内部にインデックスに依存するがそれらが交差しない
 *  ex) a.(i) , a.(i+1) , ...
 * 3. 中でreadするだけならOK
 * 4. 中で同じものにwriteする場合がある.
 *    足しこむだけなら遅延して行ってもよい.
 *
 * 存在する
 * <= 
  1. io
 * 2. localでmallocした領域が再帰される場合はめんどいので無理にする
 * 3. 引数にarrayがあってそこに書きこむ場合もめんどいので無理にする(2と同じ）(readはOK)
*)
module S = Set.Make (struct
  type t = string

  let compare = compare
end)

module M = Map.Make (struct
  type t = string

  let compare = compare
end)

type array_wr =
  | Glb of string * string
  | Loc of string * string
  | Arg of string * string
  | Call of string
[@@deriving show]

type wr_info = array_wr list [@@deriving show]

(* 関数名からそれがwriteする可能性がある変数を集める *)
let write_mem : (string, wr_info) Hashtbl.t = Hashtbl.create 10

let read_mem : (string, wr_info) Hashtbl.t = Hashtbl.create 10

let rec collect_write_u cur env functions x =
  match x with
  | Store (ptr, idx, src)
    when Type.is_array ptr.ty && VarSet.mem ptr (VarSet.of_list cur.args_ir) ->
      [Arg (ptr.name, idx.name)]
  | Store (ptr, idx, src) when Type.is_array ptr.ty && VarSet.mem ptr env ->
      [Loc (ptr.name, idx.name)]
  | Store (ptr, idx, src) when Type.is_array ptr.ty ->
      [Glb (ptr.name, idx.name)]
  | If (cmp, x, y, u, v, cmpty) ->
      collect_write_v cur env functions u @ collect_write_v cur env functions v
  | Call (f, vars) -> [Call f.name]
  | _ -> []

and collect_write_v cur env functions u =
  match u with
  | Ans u -> collect_write_u cur env functions u
  | Let (u, v, x) ->
      collect_write_u cur env functions v
      @ collect_write_v cur (VarSet.add u env) functions x

and collect_write fname functions =
  if Hashtbl.mem write_mem fname then Hashtbl.find write_mem fname
  else if M.mem fname functions then (
    let f = M.find fname functions in
    let u = g_write f functions in
    Hashtbl.add write_mem fname u ;
    u )
  else []

and collect_read_u cur env functions x =
  match x with
  | Load (ptr, idx)
    when Type.is_array ptr.ty && VarSet.mem ptr (VarSet.of_list cur.args_ir) ->
      [Arg (ptr.name, idx.name)]
  | Load (ptr, idx) when Type.is_array ptr.ty && VarSet.mem ptr env ->
      [Loc (ptr.name, idx.name)]
  | Load (ptr, idx) when Type.is_array ptr.ty -> [Glb (ptr.name, idx.name)]
  | If (cmp, x, y, u, v, cmpty) ->
      collect_read_v cur env functions u @ collect_read_v cur env functions v
  | Call (f, vars) -> [Call f.name]
  | _ -> []

and collect_read_v cur env functions u =
  match u with
  | Ans u -> collect_read_u cur env functions u
  | Let (u, v, x) ->
      collect_read_u cur env functions v
      @ collect_read_v cur (VarSet.add u env) functions x

and collect_read fname functions =
  Printf.printf "%s" fname ;
  if Hashtbl.mem read_mem fname then Hashtbl.find read_mem fname
  else if M.mem fname functions then (
    let f = M.find fname functions in
    let u = g_read f functions in
    Hashtbl.add read_mem fname u ;
    u )
  else []

and g_write fd functions =
  collect_write_v fd (VarSet.of_list fd.args_ir) functions fd.body_ir

and g_read fd functions =
  collect_read_v fd (VarSet.of_list fd.args_ir) functions fd.body_ir

let g (main, functions) =
  let fmap =
    List.fold_left (fun acc p -> M.add p.f_ir.name p acc) M.empty functions
  in
  let writes = List.map (fun x -> (x.f_ir.name, g_write x fmap)) functions in
  let reads = List.map (fun x -> (x.f_ir.name, g_read x fmap)) functions in
  let _ =
    List.iter
      (fun (name, x) ->
        Printf.printf "write in %s\n" name ;
        Printf.printf "%s\n" (show_wr_info x) )
      writes
  in
  let _ =
    List.iter
      (fun (name, x) ->
        Printf.printf "read in %s\n" name ;
        Printf.printf "%s\n" (show_wr_info x) )
      reads
  in
  List.map2 (fun x y -> (x, y)) writes reads