open Syntax

external getint : float -> int = "getint"
let hp = ref 0
type t = Arr of int * t * int | Tup of int * (t list) | Int of int | Float of float | TupArray of int * int * t list * int[@@deriving show] 

let get_int_value t = 
    match t with 
    | Arr (x,_,_) 
    | Tup(x,_) 
    | TupArray(x,_,_,_)
    | Int(x) -> x
    | Float(x) -> getint x




let (res: t VarMap.t ref) = ref VarMap.empty 

let showf = show

open Knormal
let rec alloc x = 
    match x with
    | Const (CInt x , d) -> Int(x)
    | Const (CUnit , d) -> Int(0)
    | Const (CFloat x , d) -> Float(x)
    | Const (CBool x , d) -> Int(if x then 1 else 0)
    | Op(ArrayGet _, [x;y],d) -> 
            let Arr (x,init,_) = VarMap.find x !res in init 
    | Let (name, u, v, d)  -> 
            let u = alloc u in
            let _ = res := VarMap.add name u !res in
            alloc v
    | App (f, [x;y],d) when f.name = "create_array" -> 
            let Int(len) = VarMap.find x (!res) in
            let y = VarMap.find y (!res) in
            let v = (Arr(!hp,y,len)) in
            let _ = hp:= !hp + len in
            v
    | Tuple (l, d) -> 
            let len = List.length l in
            let l = List.map (fun x -> VarMap.find x (!res)) l in
            let v = (Tup(!hp, l)) in
            let _ = hp:= !hp + len in
            v
    | Var (x,d) -> VarMap.find x !res
    | _ -> failwith (Knormal.show x)


let to_2beki x= 
    let rec sub y x = 
        if y * 2 >= x then 
            y * 2
        else sub (y*2) x 
    in
    sub 1 x


(* 200-300 freeされない領域があるが木にしない**)
let conv global=
    VarMap.map (fun v -> 
    match v with
    |  Arr(x, Tup(y, z), len) -> 
            let tmp = !hp in
            let _ = hp := tmp + len * (to_2beki (List.length z)) in
            TupArray(tmp, y, z , len)
    | _ ->  v
    ) global 
        
    
let f offset x = 
    let _ =  hp := offset in
    let _ = res := VarMap.empty in
    let v = alloc x in
    let ans = conv !res in
    let ans = VarMap.filter (fun key v -> match v with 
    | Arr  _ | Tup _ | TupArray _  -> true
    | _ -> false) ans in
    let binded = VarMap.fold (fun key v acc -> 
        VarSet.add key acc ) !res VarSet.empty in 
    let _ = Typing.binded := binded in
    let _ = VarMap.iter (fun key v -> 
        Printf.printf "%s %s\n" key.name (showf v)) ans in 
    (!hp,ans)
