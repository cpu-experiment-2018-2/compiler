let rec fsqr x = x *. x in
let rec fabs x = if x > 0.0 then x else (-1.0) *. x in
let rec fhalf x = x *. 0.5 in
let rec fisneg x = x < 0.0 in   
let rec fispos x = x > 0.0 in
let rec fiszero x = if x < 0.00001  then (if x > (-0.00001) then true  else false) else false in 
let rec sin x = 
    let flag = if x >= 0.0 then 1.0 else -1.0 in
    let x = flag *. x in
    let x = reduction x in
    let pi = 3.141592 in
    let pi4 = 0.7853981 in
    let pi2 = pi4 *. 2.0 in
    let flag = if x >= pi then -1.0 *. flag else flag in
    let x = if x >= pi then (x-.pi)  else x in
    let x = if x >= pi2 then pi -. x else x in
    (* let _ = print_float x in *)
    flag *. (if x <= pi4 then kernel_sin x else kernel_cos (pi2-.x))  in

let rec cos x = 
    let flag = 1.0 in
    let x = if x>= 0. then x else -1.0 *. x  in
    let x = reduction x in
    let pi = 3.141592 in
    let pi4 = 0.7853981 in
    let pi2 = pi4 *. 2.0 in

    let flag = if x >= pi then -1.0 *. flag else flag in
    let x = if x >= pi then (x-.pi)  else x in

    let flag = if x >= pi2 then -1.0 *. flag else flag in
    let x = if x >= pi2 then (pi-.x)  else x in
    flag *. (if x <= pi4 then kernel_cos x else kernel_sin (pi2-.x)) 
in
let rec atan x = 
    let flag = if x >= 0.0 then 1.0 else -1.0 in
    let x = flag *. x in
    let pi4 = 0.7853981 in
    let pi2 = pi4 *. 2.0 in
    flag *. (
    if x <= 0.4375 then
        kernel_atan(x)
    else if x <= 1.0 then
        (
            pi4 -. kernel_atan ( ( 1.0 -. x ) /. ( x +. 1.0))
        )
    else if x <= 2.41421356 then
        (
            pi4 +. kernel_atan( ( x -.1.0) /.( x +. 1.0))
        )
    else 
        (
            pi2 -. kernel_atan(1.0 /. x)
        )
    )
in
()
