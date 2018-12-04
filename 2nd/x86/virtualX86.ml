(* translation into assembly with infinite number of virtual registers *)


open Syntax
open AsmX86

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)

let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.TyUnit -> acc
      | Type.TyFloat -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + 8, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

let rec g env = function 
  | Closure.Const(CUnit ,_)  -> Ans(Nop)
  | Closure.Const(CInt i ,_)  -> Ans(Set(i))
  | Closure.Const(CFloat(d),_) ->
      let l =
        try
          let (l, _) = List.find (fun (_, d') -> d = d') !data in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          data := (l, d) :: !data;
          l in
      let x = Id.genid "l" in
      Let((x, Type.TyInt), SetL(l), Ans(LdDF(x, C(0), 1)))
  | Closure.Op(Primitive Neg,[x],_) -> Ans(Neg(x))
  | Closure.Op(Primitive Add,[x;y],_) -> Ans(Add(x,V(y)))
  | Closure.Op(Primitive Sub,[x;y],_) -> Ans(Sub(x,V(y)))
  | Closure.Op(Primitive FAdd,[x;y],_) -> Ans(FAddD(x,y))
  | Closure.Op(Primitive FSub,[x;y],_) -> Ans(FSubD(x,y))
  | Closure.If(EQ,x, y, e1, e2, d) ->
      (match SMap.find x env with
      | Type.TyBool | Type.TyInt -> Ans(IfEq(x, V(y), g env e1, g env e2))
      | Type.TyFloat -> Ans(IfFEq(x, y, g env e1, g env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.If(LE,x, y, e1, e2, d) ->
      (match SMap.find x env with
      | Type.TyBool | Type.TyInt -> Ans(IfEq(x, V(y), g env e1, g env e2))
      | Type.TyFloat -> Ans(IfFEq(x, y, g env e1, g env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.Let(x, e1, e2,_) ->
      let e1' = g env e1 in
      let e2' = g (SMap.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x,_) ->
      (match SMap.find x env with
      | Type.TyUnit -> Ans(Nop)
      | Type.TyFloat -> Ans(FMovD(x))
      | _ -> Ans(Mov(x)))
  | Closure.MakeCls(, { Closure.label = l; Closure.fv = ys }, e2) -> 
      let (x, t)
      let e2' = g (SMap.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, SMap.find y env)) ys)
          (4, e2')
          (fun y offset store_fv -> seq(StDF(y, x, C(offset), 1), store_fv))
          (fun y _ offset store_fv -> seq(St(y, x, C(offset), 1), store_fv)) in
      Let((x, t), Mov(reg_hp),
          Let((reg_hp, Type.TyInt), Add(reg_hp, C(align offset)),
              let z = Id.genid "l" in
              Let((z, Type.TyInt), SetL(l),
                  seq(St(z, x, C(0), 1),
                      store_fv))))
  | Closure.AppCls(x, ys) ->
      let (int, float) = separate (List.map (fun y -> (y, SMap.find y env)) ys) in
      Ans(CallCls(x, int, float))
  | Closure.AppDir(Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, SMap.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float))
  | Closure.Tuple(xs) -> (* 組の生成 (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, SMap.find x env)) xs)
          (0, Ans(Mov(y)))
          (fun x offset store -> seq(StDF(x, y, C(offset), 1), store))
          (fun x _ offset store -> seq(St(x, y, C(offset), 1), store)) in
      Let((y, Type.TyTuple(List.map (fun x -> SMap.find x env) xs)), Mov(reg_hp),
          Let((reg_hp, Type.TyInt), Add(reg_hp, C(align offset)),
              store))
  (* | Closure.LetTuple(xts, y, e2) -> *)
  (*     let s = Closure.fv e2 in *)
  (*     let (offset, load) = *)
  (*       expand *)
  (*         xts *)
  (*         (0, g (SMap.add_list xts env) e2) *)
  (*         (fun x offset load -> *)
  (*           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *) *)
  (*           fletd(x, LdDF(y, C(offset), 1), load)) *)
  (*         (fun x t offset load -> *)
  (*           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *) *)
  (*           Let((x, t), Ld(y, C(offset), 1), load)) in *)
  (*     load *)
  (* | Closure.Get(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *) *)
  (*     (match SMap.find x env with *)
  (*     | Type.TyArray(Type.TyUnit) -> Ans(Nop) *)
  (*     | Type.TyArray(Type.TyFloat) -> Ans(LdDF(x, V(y), 8)) *)
  (*     | Type.TyArray(_) -> Ans(Ld(x, V(y), 4)) *)
  (*     | _ -> assert false) *)
  (* | Closure.Put(x, y, z) -> *)
  (*     (match SMap.find x env with *)
  (*     | Type.TyArray(Type.TyUnit) -> Ans(Nop) *)
  (*     | Type.TyArray(Type.TyFloat) -> Ans(StDF(z, x, V(y), 8)) *)
  (*     | Type.TyArray(_) -> Ans(St(z, x, V(y), 4)) *)
  (*     | _ -> assert false) *)
  (* | Closure.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x))) *)
  (*  *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (SMap.add x t (SMap.add_list yts (SMap.add_list zts SMap.empty))) e)
      (fun z offset load -> fletd(z, LdDF(x, C(offset), 1), load))
      (fun z t offset load -> Let((z, t), Ld(x, C(offset), 1), load)) in
  match t with
  | Type.TyFun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

let f (Closure.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g SMap.empty e in
  Prog(!data, fundefs, e)
