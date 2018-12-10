open Syntax
let hp = ref 0 
type t = Arr of int * t | Tup of int * (t list) | Int of int | Float of float [@@deriving show]

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
            let Arr (x,init) = VarMap.find x !res in init 
    | Let (name, u, v, d)  -> 
            let u = alloc u in
            let _ = res := VarMap.add name u !res in
            alloc v
    | App (f, [x;y],d) when f.name = "create_array" -> 
    (* | App (f, [x;y],d) ->  *)
            let Int(len) = VarMap.find x (!res) in
            let y = VarMap.find y (!res) in
            let v = (Arr(!hp,y)) in
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


let f offset x = 
    let _ =  hp := offset in
    let _ = res := VarMap.empty in
    let v = alloc x in
    let ans = VarMap.filter (fun key v -> match v with 
    | Arr  _ | Tup _ -> true
    | _ -> false) !res in
    let binded = VarMap.fold (fun key v acc -> 
        VarSet.add key acc ) !res VarSet.empty in 
    let _ = Typing.binded := binded in
    let _ = VarMap.iter (fun key v -> 
        Printf.printf "%s %s\n" key.name (showf v)) ans in 
    (!hp,ans)
