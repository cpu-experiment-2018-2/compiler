open Type
open Syntax
open Closure

(* 任意のタプルが平坦化されているものとする.
   let rec f x y = 
   let (a,b,c) = x in
   (x,y)
   のようなコード(ただしxはタプル)が
   let rec f x y = 
   let (a,b,c) = x in
   (a,b,c,y)
   のように変換されるため処理効率は上がらないと思う?
   ただしタプルのタプルにアクセスするような操作が静的にかなり軽い操作に変換することができる.
   let (a,b,c) = x in
   let (d,e) = a in
   とかがアドレスのオフセットの足し算に変換できる. これはかなりのケースで静的に解決できそう.
   つまり
   LetTupleをパースの段階でLetの列とプリミティブな操作に変換している状況で
   let (a,b,c) = x  in
   が
   let a = Proj^3_0 x in
   let b = Proj^3_1 x in
   let c = Proj^3_2 x in
   に変換されているため
   let (d,e) = a in
   が
   let d = Proj^2_0 (Proj^3_0 x) in
   let e = Proj^2_1 (Proj^3_0 x) in
   になっていてこれは簡単にタプルのオフセットを計算できる(が実装してない).
 *)

let rec size e =
  match e with
  | TyTuple l ->
      let l' = List.map size l in
      let y = List.fold_left (fun counter x -> counter + x) 0 l' in
      y
  | _ -> 1

let offset idx l =
  let sum = ref 0 in
  let y = Array.of_list l in
  for i = 0 to idx - 1 do sum := !sum + size y.(i) done ;
  !sum

let rec calc idx ty =
  match ty with TyTuple l -> offset idx l | _ -> failwith "unreachble"

(* 
 * env は タプル -> 構成されている変数全て
 *)
let rec flatten_type e =
  match e with
  | TyInt | TyUnit | TyFloat | TyBool | TyVar(_) | TyFun (_)-> e
  | TyArray t -> TyArray (flatten_type t)
  | TyTuple t ->
      let ts = List.map flatten_type t in
      TyTuple
        (List.concat
           (List.map (fun x -> match x with TyTuple k -> k | _ -> [x]) ts))

let rec tuple_flatten e =
  match e with
  | Op (Projection (i, all, ty), [x], d) ->
      let i, all = (calc i x.ty, size x.ty) in
      Op (Projection (i, all, ty), [x], d)
  | If(cmp,x,y,e1,e2,d) -> If(cmp,x,y,tuple_flatten e1, tuple_flatten e2,d)
  | Let(var,e1,e2,d) -> Let(var,tuple_flatten e1,tuple_flatten e2,d)
  | Tuple (l, d) ->
      let f, acc, lis =
        List.fold_left
          (fun (f, acc, lis) x ->
            let y = flatten_type x.ty in
            match y with
            | TyTuple z ->
                let a, b, c =
                  List.fold_left
                    (fun (f, acc', lis) y ->
                      let len = List.length z in
                      let var =
                        {name= Syntax.genvar (); ty= List.nth z acc'; debug= d}
                      in
                      ( (fun cont ->
                          f
                            (Let
                               ( var
                               , Op
                                   ( Projection (acc', len, List.nth z acc')
                                   , [x]
                                   , d )
                               , cont
                               , d )) )
                      , acc' + 1
                      , lis @ [var] ) )
                    ((fun x -> x), 0, lis)
                    z
                in
                (a, b + acc, c)
            | _ -> (f, acc + 1, lis @ [x]) )
          ((fun x -> x), 0, [])
          l
      in
      f (Tuple (lis, d))
  | Op(_) | Const _ | Closure _ |AppCls(_) | AppDir(_) | Var(_)-> e

let f = tuple_flatten
