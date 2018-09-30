open Syntax
type label = string
type 'a u =
| Nop of 'a
| Li of int * 'a
| FLi of float * 'a
| Mr of var * 'a
| FMr of var * 'a
| Op of op * (var list) * 'a
| Load of var * var  * 'a
| Store of var * var * var * 'a
| IfEq of var * var * 'a v * 'a v * 'a
| IfLE of var * var * 'a v * 'a v * 'a
| CallCls of var * var list * var list * 'a
| CallDir of label * var list * var list * 'a
| Save of var * var * 'a
| Restore of var  * 'a

and 'a v = 
| Ans of 'a u
| Let of var * 'a u * 'a v
let rec concat  var e1 e2= 
match e1 with
| Ans(x) -> 
    Let(var, x, e2)
| Let(y,t1,t2) -> 
    Let(y, t1, concat var t2 e2 )

let rec closure_to_virtual (e:debug Knormal.u) = match e with
| Const(CUnit,d) -> Ans(Nop(d))
| Const(CInt(x),d) -> Ans(Li(x,d))
| Const(CFloat(x),d) -> Ans(FLi(x,d))
| Op(op,l,d) -> 
    Ans(Op(op, l,d))
| If(EQ, x,y,e1,e2,d) -> 
(
    match x.ty with
    | Type.TyBool | Type.TyInt  -> Ans(IfEq(x,y, closure_to_virtual e1, closure_to_virtual e2,d))
    | _ -> failwith "equality is only bool and int"
)
    
| If(LE, x,y,e1,e2,d) -> 
(
    match x.ty with
    | Type.TyBool | Type.TyInt  -> Ans(IfLE(x,y, closure_to_virtual e1, closure_to_virtual e2,d))
    | _ -> failwith "equality is only bool and int"
)
| Let(var, e1, e2,d) ->
    concat var (closure_to_virtual e1) (closure_to_virtual e2)
| Var(var,d) -> 
    (
        match var.ty with
        | Type.TyUnit -> Ans(Nop(d))
        | Type.TyFloat -> Ans(FMr(var,d))
        | _ -> Ans(Mr(var,d))
    )
