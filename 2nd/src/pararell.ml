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

type ptr = string 
type idx = Var of string | Const of int [@@deriving show]
type write_info  = ( ptr * idx ) list  [@@deriving show]

(* 関数名からそれがwriteする可能性がある変数を集める *)
let write_mem : (string, write_info) Hashtbl.t = Hashtbl.create 10
let read_mem : (string, read_info) Hashtbl.t = Hashtbl.create 10
let rec collect_write fname functions= 
    if Hashtbl.mem fname write_mem  then 
     Hashtbl.find fname write_mem 
    else 
     Hashtbl.find



let rec collect_write_u env cenv x = 
    match u with 
    | Store (ptr,idx, src) when VarMap.mem ptr env  && when VarMap.mem cenv env -> 
            [(Local(ptr.name), )]
    | Store (ptr,idx, src) -> 




    VarMap.mem env x 
let rec collect_write x = ()
(* 繰越依存が存在しない *)
let rec has_loop_dep iter update ans = ()


