open Syntax
let reg_size = 26
class register = 
    object(self)
        val mutable reg = (Array.make reg_size None : var option array)
        val mutable stack = (VarMap2.empty : int VarMap2.t)
        method set_arg args = 
            List.fold_left (fun counter x -> 
                reg.(counter) <- Some(x); counter
            )
                0 args
        method local_size = 
            VarMap2.cardinal stack
    end

