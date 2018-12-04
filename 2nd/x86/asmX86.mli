type id_or_imm = V of string | C of int
type t =
  | Ans of exp
  | Let of (string * Type.t) * exp * t
and exp =
  | Nop
  | Set of int
  | SetL of string
  | Mov of string
  | Neg of string
  | Add of string * id_or_imm
  | Sub of string * id_or_imm
  | Ld of string * id_or_imm * int
  | St of string * string * id_or_imm * int
  | FMovD of string
  | FNegD of string
  | FAddD of string * string
  | FSubD of string * string
  | FMulD of string * string
  | FDivD of string * string
  | LdDF of string * id_or_imm * int
  | StDF of string * string * id_or_imm * int
  | Comment of string
  (* virtual instructions *)
  | IfEq of string * id_or_imm * t * t
  | IfLE of string * id_or_imm * t * t
  | IfGE of string * id_or_imm * t * t
  | IfFEq of string * string * t * t
  | IfFLE of string * string * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of string * string list * string list
  | CallDir of Id.l * string list * string list
  | Save of string * string (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of string (* スタック変数から値を復元 *)
type fundef = { name : Id.l; args : string list; fargs : string list; body : t; ret : Type.t }
type prog = Prog of (Id.l * float) list * fundef list * t

val fletd : string * exp * t -> t (* shorthand of Let for float *)
val seq : exp * t -> t (* shorthand of Let for unit *)

val regs : string array
val fregs : string array
val allregs : string list
val allfregs : string list
val reg_cl : string
(*
val reg_sw : string
val reg_fsw : string
val reg_ra : string
*)
val reg_hp : string
val reg_sp : string
val is_reg : string -> bool

val fv : t -> string list
val concat : t -> string * Type.t -> t -> t

val align : int -> int
