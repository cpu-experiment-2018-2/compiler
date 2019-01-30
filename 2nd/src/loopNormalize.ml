open IR

let fname = ref ""

let rec replace v =
  match v with Ans () -> v | Let (x, y, v) -> Let (x, y, replace v)

let convert fd =
  let _ = fname := fd.f_ir.name in
  {fd with body_ir= replace fd.body_ir}

let f (main, fds) = (main, List.map convert fds)
