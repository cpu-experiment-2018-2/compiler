type t = string (* �ѿ���̾�� (caml2html: id_t) *)
type l = L of string (* �ȥåץ�٥�ؿ��䥰���Х�����Υ�٥� (caml2html: id_l) *)

let counter = ref 0
let genid s =
  incr counter;
  Printf.sprintf "%s.%d" s !counter

let gentmp s =
    incr counter;Printf.sprintf "T%s%d" "fuga" !counter



