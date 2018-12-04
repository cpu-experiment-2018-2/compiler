open X86asm
open Closure
let nameproj (x:Syntax.var) = x.name

let data = ref [] (* ��ư������������ơ��֥� (caml2html: virtual_data) *)

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

let rec g env = function (* ���β��ۥޥ��󥳡������� (caml2html: virtual_g) *)
  | Closure.Const(CUnit,_) -> Ans(Nop)
  | Closure.Const(CInt(i),_) -> Ans(Set(i))
  | Closure.Const(CFloat(d),_) ->
      let l =
        try
          (* ���Ǥ����ơ��֥�ˤ��ä�������� *)
          let (l, _) = List.find (fun (_, d') -> d = d') !data in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          data := (l, d) :: !data;
          l in
      let x = Id.genid "l" in
      Let((x, Type.TyInt), SetL(l), Ans(LdDF(x, C(0), 1)))
  | Closure.Op(Primitive Neg,[x],_) -> Ans(Neg(x.name))
  | Closure.Op(Primitive Add,[x;y],_) -> Ans(Add(x.name, V(y.name)))
  | Closure.Op(Primitive Sub,[x;y],_) -> Ans(Sub(x.name, V(y.name)))
  | Closure.Op(Primitive FNeg,[x;y],_) -> Ans(FNegD(x.name))
  | Closure.Op(Primitive FAdd,[x;y],_) -> Ans(FAddD(x.name, y.name))
  | Closure.Op(Primitive FSub,[x;y],_) -> Ans(FSubD(x.name, y.name))
  | Closure.Op(Primitive FMul,[x;y],_) -> Ans(FMulD(x.name, y.name))
  | Closure.Op(Primitive FDiv,[x;y],_) -> Ans(FDivD(x.name, y.name))
  | Closure.If(EQ, x, y, e1, e2, d) ->
      (match M.find x.name env with
      | Type.TyBool | Type.TyInt -> Ans(IfEq(x.name, V(y.name), g env e1, g env e2))
      | Type.TyFloat -> Ans(IfFEq(x.name, y.name, g env e1, g env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.If(LE, x, y, e1, e2, d) ->
      (match M.find x.name env with
      | Type.TyBool | Type.TyInt -> Ans(IfLE(x.name, V(y.name), g env e1, g env e2))
      | Type.TyFloat -> Ans(IfFLE(x.name, y.name, g env e1, g env e2))
      | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let(v, e1, e2,d) ->
     let (x, t1) = v.name , v.ty in
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x,d) ->
      (match M.find x.name env with
      | Type.TyUnit -> Ans(Nop)
      | Type.TyFloat -> Ans(FMovD(x.name))
      | _ -> Ans(Mov(x.name)))
  | Closure.Closure(fd, e2) -> 
      let ys = List.map nameproj fd.closure_fv in
      let x = fd.label.name in
      let t = fd.label.ty in
      let l = Id.L(fd.label.name) in
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys)
          (4, e2')
          (fun y offset store_fv -> seq(StDF(y, x, C(offset), 1), store_fv))
          (fun y _ offset store_fv -> seq(St(y, x, C(offset), 1), store_fv)) in
      Let((x, t), Mov(reg_hp),
          Let((reg_hp, Type.TyInt), Add(reg_hp, C(align offset)),
              let z = Id.genid "l" in
              Let((z, Type.TyInt), SetL(l),
                  seq(St(z, x, C(0), 1),
                      store_fv))))
  | Closure.AppCls(x, ys,_) ->
          let x = x.name in
          let ys = List.map nameproj ys in 
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float))
  | Closure.AppDir(x, ys,_) ->
          let x = x.name in
          let ys = List.map nameproj ys in 
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float))
  | Closure.Tuple(xs,d) -> 
      let xs = List.map nameproj xs in
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, M.find x env)) xs)
          (0, Ans(Mov(y)))
          (fun x offset store -> seq(StDF(x, y, C(offset), 1), store))
          (fun x _ offset store -> seq(St(x, y, C(offset), 1), store)) in
      Let((y, Type.TyTuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp),
          Let((reg_hp, Type.TyInt), Add(reg_hp, C(align offset)),
              store))

  (* | Closure.LetTuple(xts, y, e2) -> *)
  (*     let s = Closure.fv e2 in *)
  (*     let (offset, load) = *)
  (*       expand *)
  (*         xts *)
  (*         (0, g (M.add_list xts env) e2) *)
  (*         (fun x offset load -> *)
  (*           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *) *)
  (*           fletd(x, LdDF(y, C(offset), 1), load)) *)
  (*         (fun x t offset load -> *)
  (*           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *) *)
  (*           Let((x, t), Ld(y, C(offset), 1), load)) in *)
  (*     load *)
  (* | Closure.Get(x, y) -> (* ������ɤ߽Ф� (caml2html: virtual_get) *) *)
  (*     (match M.find x env with *)
  (*     | Type.TyArray(Type.TyUnit) -> Ans(Nop) *)
  (*     | Type.TyArray(Type.TyFloat) -> Ans(LdDF(x, V(y), 8)) *)
  (*     | Type.TyArray(_) -> Ans(Ld(x, V(y), 4)) *)
  (*     | _ -> assert false) *)
  (* | Closure.Put(x, y, z) -> *)
  (*     (match M.find x env with *)
  (*     | Type.TyArray(Type.TyUnit) -> Ans(Nop) *)
  (*     | Type.TyArray(Type.TyFloat) -> Ans(StDF(z, x, V(y), 8)) *)
  (*     | Type.TyArray(_) -> Ans(St(z, x, V(y), 4)) *)
  (*     | _ -> assert false) *)
  (* | Closure.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x))) *)

(* �ؿ�β��ۥޥ��󥳡������� (caml2html: virtual_h) *)
let h fd =
    let x = fd.f.name in
    let t = fd.f.ty in
    let yts = List.map (fun x -> nameproj x, x.ty) fd.args in
    let zts = List.map (fun x -> nameproj x, x.ty) fd.fv in
    let e = fd.body in
(* let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } = *)
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, LdDF(x, C(offset), 1), load))
      (fun z t offset load -> Let((z, t), Ld(x, C(offset), 1), load)) in
  match t with
  | Type.TyFun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* �ץ�������Τβ��ۥޥ��󥳡������� (caml2html: virtual_f) *)
let f (e,fundefs) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!data, fundefs, e)
