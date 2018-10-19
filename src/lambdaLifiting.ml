(** lambda liftingの実装.closure変換の前に挟む.*)
open Knormal

(** 自由変数を含む関数fについて変換する.考える必要があるのはletで束縛するのが関数の場合である.例えば
{[ let f = if x = y then g else h]} 
でgとhは関数とであるときliftすると
{[ let rec f x y x' = if x = y then g x' else h x']}となる.
liftされる関数が乱立しそうだがlet f = g とかはletが消去されているから大丈夫である.
問題はLetTupleのときで右側に関数があったりするとかなりしんどくなるためクロージャを作るのが簡単な解決ではある.
overheadは明らかにこっちのほうが小さい説があるからminrtに上がない場合はlambda liftingしてからでよいかも
{{:https://www.microsoft.com/en-us/research/wp-content/uploads/1992/01/student.pdf}参考} .*)
let rec lifiting lifted_env varenv e =
  let g = lifiting lifted_env varenv in
  match e with
  | (Const _ | Op _ | Tuple _ | LetTuple _) as self -> self
  | If (cmp, x, y, e1, e2, d) -> If (cmp, x, y, g e1, g e2, d)
  | Let (var, e1, e2, d) -> e
    (* let e1 = g e1 in
    match e1 with
    | LetRec(fundef, e, d) ->  *)
  | Var (var, d) -> Var (var, d)
  | LetRec (fd, e1, d) ->
      let fv = Knormal.fundef_fv fd in
      (
      match fv with
      | [] -> LetRec (fd, e1, d)
      | _ ->
          let newenv = (fd.f.name, fv) :: lifted_env in
          LetRec ({fd with body= g e; args= fd.args @ fv}, g e1, d)
      )


