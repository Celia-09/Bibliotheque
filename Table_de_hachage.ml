type ('a, 'b) table_de_hachage = {hache : 'a -> int; data : ('a*'b) list array; length :int};;

(*créer une table de hachage " *)
let create h c = {hache = h; data = Array.make c []; length = c};;

(*[search t k] retourne si k t appartient à la table de hachage*)
let search t k =
    let rec aux = function
    | [] -> false
    |(k',_)::q -> k=k' || aux q in 
    aux t.data.(t.hache k);;
    

(* [elm t k] retour les éléments de la clé k dans la table de hachage ]*)
let elm t k =
    let rec aux = function
    | [] -> failwith "Pas dans la table de hachage"
    |(k',e)::q -> if k=k' then e
                else aux q in
aux t.data.(t.hache k);;



(* [add t k e] ajoute l'élément e dans la table de hachage avec la clé k  *)
let add t k e =
    if search t k == true then failwith "Clé déjà présente"
    else t.data.(t.hache k) <- (k,e)::t.data.(t.hache k);;

(* [delete t k] supprime la clé k dans la table de hachage*)
let delete t k =
    t.data.(t.hache k) <- List.filter (fun c -> fst c <> k) t.data.(t.hache k)
