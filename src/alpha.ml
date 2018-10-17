open Syntax

let conv (env: (string * string) list) (var: var) =
  match List.find_opt (fun (a, b) -> a = var.name) env with
  | Some (a, b) -> {var with name= b}
  | None -> var

let add env var = (var.name, "V" ^ Syntax.genvar () ^ "." ^ var.name) :: env

let rec adds env li =
  match li with [] -> env | x :: xs -> adds (add env x) xs

let rec (g: (string * string) list -> Knormal.t -> Knormal.t) =
 fun env e ->
  let g' = g env in
  let conv' = conv env in
  match e with
  | Const _ -> e
  | Op (op, l, d) -> Op (op, List.map conv' l, d)
  | If (cmp, n0, n1, t0, t1, d) -> If (cmp, conv' n0, conv' n1, g' t0, g' t1, d)
  | Let (n0, t0, t1, d) ->
      let newenv = add env n0 in
      Let (conv newenv n0, g' t0, g newenv t1, d)
  | Var (n0, d) -> Var (conv' n0, d)
  | LetRec (fundef, t1, d) ->
      let newenv = add env fundef.f in
      let t1 = g newenv t1 in
      let newenv2 = adds newenv fundef.args in
      let fundef =
        { fundef with
          body= g newenv2 fundef.body
        ; f= conv newenv fundef.f
        ; args= List.map (conv newenv2) fundef.args }
      in
      LetRec (fundef, t1, d)
  | App (f, args, d) -> App (conv' f, List.map conv' args, d)
  | Tuple (names, d) -> Tuple (List.map conv' names, d)
  | LetTuple (names, n0, t0, d) ->
      let n0 = conv' n0 in
      let newenv = adds env names in
      LetTuple (List.map (conv newenv) names, n0, g newenv t0, d)

let f = g []
