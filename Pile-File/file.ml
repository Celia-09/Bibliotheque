(*File avec deux listes  *)
type 'a file = {plus: 'a list; add: 'a list};;

(* [ajoute_file f e] ajoute e dans la liste add *)
let ajoute_file f e = 
    {plus = f.add; add = e::f.add}
    
(* [empty_file ] retourne si f est vide ou pas *)
let empty_file f =
    f.plus = [] && f.add = [];;

(*[pop_file f] delete the first element of extra (so the last element of the file) and give this element*) 
let rec pop_file f = match f.add with
  |e::q -> e, {plus = q; add = f.add}
  |[] -> pop_file {plus = List.rev f.add ; add= []};;
    

type 'a file={tab: 'a array; mutable start : int; mutable endd: int; mutable empty: bool};;

(* [retire f] retire le premier élement et le donne *)
let retire f =
  if f.empty then failwith "empty"
  else let res = f.tab.(f.start) in
        (f.start <- (f.start + 1) mod Array.length f.tab;
        f.empty <- f.start = f.endd;
        res);;

(* [ajout f e] ajoute l'élément e*)
let ajoute f e =
  if f.start = f.endd && not f.empty then failwith "full"
  else (f.tab.(f.endd) <-e;
       f.endd <- (f.endd + 1) mod Array.length f.tab;
       f.empty <- false);;

