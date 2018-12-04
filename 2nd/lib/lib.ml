let rec fsqr x = x *. x in
let rec fabs x = if x > 0.0 then x else (-1.0) *. x in
let rec fhalf x = x *. 0.5 in
let rec fisneg x = x < 0.0 in   
let rec fispos x = x > 0.0 in
let rec not x = if x then false else true in 
let rec fiszero x = if x < 0.00001  then (if x > (-0.00001) then true  else false) else false in 
let rec fless x y = x < y in
()
