(*[stack_empty p retourne si p est vide  *)
let stack_empty p = p = [];;

(* [stack_push_l p e] mettre e dans la pile p  *)
let stack_push_l p e =  e::p;;

(* [stack_pop_l p] retire le premier élément et le donne  *)
let stack_pop_l p = match p with
  |[] -> failwith "stack is empty"
  |e::q -> (e,q);;
  
  
  
  
(* stack with array *)
type 'a stack = { t: 'a array ; mutable n : int } 

(* [stack_empty_t p] retourne si p est vide *)
let stack_empty_t p = p.n = 0;;

(* [stack_push_t p e] push e in the stack p *)
let stack_push_t p e =
  if p.n = Array.length p.t then failwith "full"
  else (p.t.(p.n) <- e;
        p.n <- p.n +1);;
        
(* [stack_pop_t p] retire le premier élément de la pile et le donne  *)
let stack_pop_t p =
  if p.n = 0 then failwith "stack is empty"
  else (p.n <- p.n -1 ;p.t.(p.n));;

(*stack with dynamic array*)
type 'a dyn = {mutable d :'a array; mutable n : int};;

(*copie t1 dans t2 *)
let copy t1 t2 = 
    for i = 0 to Array.length t1 - 1 do
    t2.(i) <- t1.(i)
    done;;

(* [stack_push_d p e] mettre e dans la pile p avec un tableau dynamique *)
let stack_push_d e p = 
    if p.n < Array.length p.d then (p.d.(p.n) <- e; p.n <- p.n +1)
    else if p.n = 0 then (p.d <- [|e|]; p.n <- 1)
    else let d' = Array.make (2*p.n) p.d.(0) in
        (copy p.d d'; d'.(p.n) <- e; p.d <- d'; p.n <- p.n +1);;

(* [stack_pop_d p] retire le premier élément de la pile  *)
let stack_pop_d p =
  if p.n = 0 then failwith "stack is empty"
  else (p.n <- p.n -1 ;p.d.(p.n));;
  
(* [stack_empty_d p] retourne si p est vide *)
let stack_empty_d p = p.n = 0;;
