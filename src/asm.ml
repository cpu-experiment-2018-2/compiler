type reg = int

type iop = Mul | Add | Sub | Div

type fop = Mul | Add | Sub | Div

type 'a t =
  | Op of iop * reg * reg * reg * 'a
  | Opi of iop * reg * reg * int * 'a
  | FOp of fop * reg * reg * reg * 'a
  | FOpi of fop * reg * reg * float * 'a
  | Label of string * 'a
  | Load of reg * reg * int * 'a
  | Store of reg * reg * int * 'a
  | Cmpd of reg * reg * 'a
  | BEQ of reg * reg * 'a
  | BLE of reg * reg * 'a
  | Jump of string * 'a
  | In of reg * 'a
  | Out of reg * 'a
