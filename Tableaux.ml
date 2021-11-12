(* [sum t1] retourne la somme des éléments de [t1] *)
let sum t1 = 
    let result = ref 0 in
    for i=0 to ((Array.length t1)-1) do
        result := t1.(i) + !result
    done;
    !result;;

(* [mem e t1] retourne si e apparrtient à [t1]*)
let mem_t e t1 = 
    let result = ref false in
    for i = 0 to ((Array.length t1)-1) do
        if t1.(i) = e then result := true
    done;
    !result;;

(* [minimum t1] retourne le minimum de [t1]*)
let minimum t1 = 
    let result = ref max_int in
    for i = 0 to ((Array.length t1)-1) do
        if t1.(i) < !result then result := t1.(i)
    done;
    !result;;

(* [maximum t1] retourne le maximum de [t1]*)
let maximum t1 = 
    let result = ref min_int in
    for i = 0 to ((Array.length t1)-1) do
        if t1.(i)> !result then result := t1.(i)
    done;
    !result;;

(* [increase t1] retourne si [t1] a augmenté *)
let increase t1 =
    let result = ref true in
    for i = 0 to ((Array.length t1)-2) do
        if t1.(i) > t1.(i+1) then result := false
    done;
    !result;;

(* [decrease t1] retourne si [t1] a diminué *)
let decrease t1 = 
    let result = ref true in
    for i = 0 to ((Array.length t1)-2) do
        if t1.(i) < t1.(i+1) then result := false
    done;
    !result;;
    
(* [doublon t1] retourne vrai ou faux si il y a un doublon *)
let doublon t1 =
    let result = ref false in
    for i = 0 to ((Array.length t1)-2) do
        for j = i + 1 to ((Array.length t1)-1) do
        if t1.(i)=t1.(j) then result := true
        done;
    done;
    !result

(* [reverse t1] renverse le tableau *)
let reverse t1 =
    let n = ((Array.length t1)-1) in 
    for i = 0 to n/2 do
        let c = ref t1.(i) in 
        let d = ref t1.(n-i)in
        t1.(i) <- !d;
        t1.(n-i) <- !c;
    done;
    t1;;

(* [equal t1 = [|a1; ...; an|] t2 = [|b1; ..; bm|]] vérifie si les deux tableaux ont la même taille,  et pour chaque éléments ai et bi des tableaux t1 et t2 on a eq ai bi.*)
let equat t1 t2 = 
    let result = ref true in
    let m1 = Array.length t1 in
    let m2 = Array.length t2 in
        if m1 <> m2 then result := false
        else for i = 0 to m1-1 do
            if t1.(i) <> t2.(i) then result := false
            done;
    !result;;

(* [tranche_max t1] retourne la somme maximum des éléments consécutifs de [t1] *)
let tranche_max t1 =
    let m = ref t1.(0) in
    let m_cur = ref t1.(0) in
    for i = 1 to Array.length t1 - 1 do
        m_cur := max (!m_cur + t1.(i)) t1.(i);
        m := max !m !m_cur
    done;
    !m;;

(* [map f t1 ] applique la fonction f à chaque élément de t  *) 
let map_t f t1 =
    for i = 0 to ((Array.length t1)-1) do
        t1.(i) <- f(t1.(i))
    done;
    t1;;

(* [for_all f t1]  vérifie que tous les éléments de du tableau vérifie f . Elle retourne (f a1) && (f a2) && ... && (f an)pour un tableau non vide  et vrai si le tableau est vide. *)
let for_all_t f t1 =
    let result = ref true in
    for i = 0 to ((Array.length t1)-1) do
        if f(t1.(i)) = false then result := false
    done;
    !result;;

(* [exists f [|a1; ...; an|]] vérifique qu'au moins un élément du tableau vérifie f. Elle retourne (f a1) || (f a2) || ... || (f an) pour un tableau non vide  and faux pour un tableau vide *)
let exists f t1 =
    let result = ref false in
    for i = 0 to ((Array.length t1)-1) do
        if f(t1.(i)) = true then result := true
    done;
    !result;;
    
(* [dichotomie e t1] retourne si e appartient à t  [t1]; complexité : O(nlog(n))*)
let dichotomie e t1 = 
    let rec aux i j =
        if i > j then false
        else let m = (i+j)/2 in
            if t1.(m) = e then true
            else if t1.(m) > e then aux i (m-1)
            else aux (m+1) j in
aux 0 ((Array.length t1)-1);;

(* [trichotomie e t1] retroune si e appartient à  [t1] en complexité O(nlog(n))*)
let trichotomie e t1 =
    let rec aux i j =
    if i > j then false
    else let m1 = (2*i + j + 1)/3 in
        let m2 =(i + 2*j +2)/3 in
        if t1.(m1) = e || t1.(m2) = e then true
        else if e< t1.(m1) then aux i (m1-1)
        else if e< t1.(m1) then aux (m1+1) (m2-1)
        else aux (m2+1) j in
aux 0 ((Array.length t1)-1);;

(* [tri_comptage  t1] transforme t1 en un tableau trié *)
let tri_comptage_ t1 =
    let m = maximum t1 in
    let compte = Array.make (m+1) 0 in
    let n = Array.length t1 in
    for i=0 to n - 1 do
        compte.(t1.(i)) <- compte.(t1.(i)) + 1
    done;
    let k = ref 0 in 
    for i=0 to m do
        for j=1 to compte.(i) do
            t1.(!k) <- i;
            incr k
        done;
    done;
    t1;;
    
(* [swap t1 i j] échange [t.(i)] et [t.(j)] *)    
let swap t1 i j =
  let tmp = t1.(i) in
  t1.(i) <- t1.(j);
  t1.(j) <- tmp;;
  
(* [sort_bubble t] sorts array t using bubble sorting (O(n**2)) *)
let sort_bubble t1 = 
  for _ = 0 to Array.length t1 - 1 do
    for j = 0 to Array.length t1 - 2 do
      if t1.(j) > t1.(j + 1) then swap_t t1 j (j + 1)
      done
  done;;
  

(* [array_of_list l] transforme une liste en tableau *)
let array_of_list l = 
    let m = length_l l in
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


type 'a dyn = {mutable t :'a array; mutable n : int};;

(*copie t1 dans t2 *)
let copy t1 t2 = 
    for i = 0 to Array.length t1 - 1 do
    t2.(i) <- t1.(i)
    done;;
    
    
(*[add e d] ajoute e dans  d ; Compléxité : O(1) *)
let add e d =
    if d.n < Array.length d.t then (d.t.(d.n) <- e;d.n <-d.n +1) 
    else if d.n = 0 then (d.t <- [|e|]; d.n <- d.n + 1)
    else let t' = Array.make (2*d.n) d.t.(0) in
    (copy d.t t'; t'.(d.n) <- e; d.t <- t';d.n <- d.n + 1);

(* [del d] suprime la dernière donnée ajouté*)
let del d = 
    if d.n = 0 then failwith "array is empty"
    else (d.n <- d.n - 1; d.t.(d.n));;
