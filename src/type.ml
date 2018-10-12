type t = | TyUnit | TyBool | TyInt | TyFloat | TyFun of t list * t |
         TyTuple of t list | TyArray of t | TyVar of int[@ @deriving show]

         let genvar = let r = ref 0 in fun()->let tmp = !r in let _ =
             r : = tmp + 1 in tmp
