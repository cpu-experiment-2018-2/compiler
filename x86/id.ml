type t = string (* 変数の名前 (caml2html: id_t) *)
type l = L of string (* トップレベル関数やグローバル配列のラベル (caml2html: id_l) *)

let counter = ref 0
let genid s =
  incr counter;
  Printf.sprintf "%s.%d" s !counter

let gentmp s =
    incr counter;Printf.sprintf "T%s%d" "fuga" !counter



