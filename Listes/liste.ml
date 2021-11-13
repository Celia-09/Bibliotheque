let fst_l l1 = match l1 with
|[] -> failwith " Pas d'éléments "
|e::q -> e;;

(* [lst l1] retourne le dernier élément de [l1]*)
let rec lst l1 = match l1 with
|[] -> failwith "Pas d'élements"
|[e] -> e
|e::q -> lst q;;

(* [nvl l1] retourne les n-vl élément [l1] *)
let rec nvl e l1 = match l1 with
|[] -> failwith "impossible"
|e1::q -> if e = 0 then e1
else nvl (e-1) q;;

(* [lth l1] retourne la longueur de [l1]*)
let rec lth l1 = match l1 with
|[] -> 0
|e::q -> 1 + lth q;;

(* [sum l1] retourne le somme de [l1] *)
let rec sum l1 = match l1 with
| [] -> 0
| e::q -> e + sum q;;

(* [mem e l1] retourne si e appartient à [l1]*)
let rec mem e l1 = match l1 with
|[] -> false
|e1::q -> e1 = e || mem e q;;

(* [append l1 l2] retourne la concaténation entre [l1] et [l2] *)
let rec append l1 l2 = match l1 with
|[] -> l2
|e::q -> e::append q l2;;

(* [rev_append l1 l2] retourne la concaténation entre l'opposé de [l1] et [l2]*)
let rec rev_append l1 l2 = match l1 with
|[] -> l2
|e::q -> rev_append q (e::l2)

(* [mini l1] retourne le minimumm de [l1]*)
let rec mini l1 = match l1 with
|[] -> max_int
|e::q -> let m = mini q in
if e < m then e
else m;;

(** [maxi_l l1] returns the maximum of [l1]*)
let rec maxi_l l1 = match l1 with
|[] -> min_int
|e::q -> let m = maxi_l q in
if e > m then e
else m;;

(* [increase l1] retourne si [l1] augmente *)
let rec increase l1 = match l1 with
|[] -> true
|[e] -> true
|e::e1::q -> e<e1 && increase (e1::q);;

(* [decrease l1] retounre si [l1] diminue *)
let rec decrease_l l1 = match l1 with
|[] -> true
|[e] -> true
|e::e1::q -> e>e1 && decrease_l (e1::q);;

(* [doublon l1] retourne vrai ou faux si il y a un ou plusiseurs doublons *)
let rec doublon l1 = match l1 with
|[] -> false
|e::q -> if mem e q then true
else doublon q;;

(* [doublon2 l1] retourne [l1] sans duplications *)
let rec doublon2 l1 = match l1 with
|[] -> []
|e::q -> if mem e q then doublon2 q
else e::doublon2 q;;

(* [equal l1  l2 ] verifie si les deux listes sont égales*)
let rec equal l1 l2 = match l1,l2 with
|[],[] -> true
|[],_ | _,[]-> false
|e::q, e1::q1 -> if e <> e1 then false
else equal q q1;;

(*[map f l1] applique la fonction f sur chaque élémente de l1 *)
let rec map f l1 = match l1 with
| [] -> []
|e::q -> f(e)::map f q;;

(* [filter f l] retoure tous les éléments de la liste l qui vérfie la fonction f *)
let rec filter f l1 = match l1 with
| [] -> []
|e::q -> if f(e) then e::filter f q
else filter f q;;

(* [for_all f l1 ] verfie si tous les éléments de la liste vérifie la fonction f. Elle retourne (f a1) && (f a2) && ... && (f an) pour  une liste non vide et and vrai si la liste est vide  *)
let rec for_all f l1 = match l1 with
|[] -> true
|e::q -> if f(e) = true then for_all f q
else false;;

(* [exists f l1 ]] vérifie si au moins un élément de l1 vérifie la fonction f. Elle retourne (f a1) || (f a2) || ... || (f an) pour une liste non vide et faux si la liste est vide. *)
let rec exists f l1 = match l1 with
|[] -> false
|e::q ->  f(e) || exists f q

(* [asso_pairs l1 l2] transforme une paire de liste en une liste de paires *)
let rec asso_pairs l1 l2 = match l1, l2 with
|[],[] -> []
|_,[] | [],_ -> failwith "Argument invalide"
|e1::q1, e2::q2 -> (e1,e2)::asso_pairs q1 q2;;

(* [split_pairs l1 ] transforme une liste de pairs en une paire de listes *)
let rec split_pairs_l l1 = match l1 with
|[] -> ([],[])
|(e1,e2)::q -> let q1,q2 = split_pairs_l q in e1::q1, e2::q2;;

(* [split l1] transforme une liste en deux listes*)
let rec split l1 = match l1 with
|[] -> ([],[])
|[e] -> ([e],[])
|e1::e2::q -> let q1, q2 = split q in e1::q1, e2::q2;;

(* [fusion l1 l2] fusionne deux listes en une liste *)
let rec fusion_l l1 l2 = match l1, l2 with
|[],_ -> l2
|_,[] -> l1
|e1::q1, e2::q2 -> if e1< e2 then e1::fusion_l q1 l2
else e2::fusion_l l1 q2;;

(*partition l1 pivot une paire (l1, l2) *)
let rec partition l1 pivot = match l1 with
|[] -> [],[]
|e::q -> let l2,l3 = partition q pivot in
if e< pivot then e::l2, l3
else l2, e::l3

(* [quicksort_l l1] transforme l1 en une liste triée *)
let rec quicksort l1 = match l1 with
|[]->[]
|p::q -> let l2, l3 = partition q p in
append (quicksort l2) (p::quicksort l3)

(* [insert x l] insert x into a sorted list l *)
let rec insert x l = match l with
|[] -> [x]
|e::q -> if x <=e then x::e::q
else e::insert x q;;

(* [insert_sort l] transforme une liste en une liste triée , complexité = O(n^2) *)
let rec insert_sort l = match l with
|[] -> []
|e::q -> insert e (insert_sort q);;

(* [add e ll] retourne une liste de listes obtenus en ajoutant chaque liste de [ll]. *)
let rec add e ll = match ll with
| [] -> []
| x::s -> (e::x)::add e s;;

(* [parties l] retournes une listes avec les parties de [l]. *)
let rec parties l = match l with
| [] -> [[]]
| e::q -> let parties_q = parties q in
parties_q @ (add e parties_q);;

(* [array_of_list l] transforme une liste en tableau *)
let array_of_list l =
let m = lth l in
let t = Array.make m 0 in
let rec aux m1 l1 = match l1 with
|[]->[||]
|e::q -> t.(m-m1) <- e;
if m1 = 1 then t
else aux (m1 - 1) q in
aux m l;;

(* [array_to_list t] transforme un tableau en liste  *)
let array_to_list t =
let m = Array.length t in
let rec aux i =
if i = 0 then []
else t.(m-i)::aux (i-1) in
aux m;;


type 'a l2c = {elem : int; mutable prev : 'a l2c;mutable  next : 'a l2c}

(*[create_l2c e] crée une l2C avec un elément *)
let create_l2c e =
let rec l = {elem = e; prev = l ; next = l } in l;;

(* [add_l2c l e] ajoute e après l *)
let add_l2c l e =
let l_new = {elem = e; prev = l; next = l.next } in
l.next.prev <- l_new;
l.next <- l_new;;

(* [suppr_l2c] supprime  e de l *)
let suppr_l2c l =
l.next.prev <- l.prev;
l.prev.next <- l.next;;

(* [mem_l2c e l] retourne si e appartient à l *)
let mem_l2c e l =
let cur = ref l.next in
while !cur.elem <> e && !cur != l do
cur := !cur.next
done;
!cur.elem = e;;

(*[length_l2c l] retourne la taille de l*)
let length_l2c l =
let rec aux l1 =
if l1 == l then 1 else 1 + aux l1.next in aux l.next;;

(* [print_l2c l] affiche tous les éléments de l *)
let print_l2c l =
let l_cur = ref l.next in
while !l_cur != l do
print_int !l_cur.elem; print_newline ();
l_cur := !l_cur.next
done;
print_int !l_cur.elem;
print_newline ();;

(*[fusion_l2c l1 l2] fusionne l1 et l2 en l2c*)
let fusion_l2c l1 l2 =
(l1.next).prev <- l2;
(l2.next).prev <- l1;
let l1n = l1.next in
l1.next<- l2.next;
l2.next<- l1n;;
