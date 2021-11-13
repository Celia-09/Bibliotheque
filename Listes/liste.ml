{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "e20fafe3-4f7a-4c51-830d-8b6d40f564b5",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "val fst_l : 'a list -> 'a = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val lst : 'a list -> 'a = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val nvl : int -> 'a list -> 'a = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val lth : 'a list -> int = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val sum : int list -> int = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val mem : 'a -> 'a list -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val append : 'a list -> 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val rev_append : 'a list -> 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val mini : int list -> int = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val maxi_l : int list -> int = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val increase : 'a list -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val decrease_l : 'a list -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val doublon : 'a list -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val doublon2 : 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val equal : 'a list -> 'a list -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val map : ('a -> 'b) -> 'a list -> 'b list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val filter : ('a -> bool) -> 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val for_all : ('a -> bool) -> 'a list -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val exists : ('a -> bool) -> 'a list -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val asso_pairs : 'a list -> 'b list -> ('a * 'b) list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val split_pairs_l : ('a * 'b) list -> 'a list * 'b list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val split : 'a list -> 'a list * 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val fusion_l : 'a list -> 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val partition : 'a list -> 'a -> 'a list * 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val quicksort : 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val insert : 'a -> 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val insert_sort : 'a list -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val add : 'a -> 'a list list -> 'a list list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val parties : 'a list -> 'a list list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val array_of_list : int list -> int array = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val array_to_list : 'a array -> 'a list = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "type 'a l2c = { elem : int; mutable prev : 'a l2c; mutable next : 'a l2c; }\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val create_l2c : int -> 'a l2c = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val add_l2c : 'a l2c -> int -> unit = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val suppr_l2c : 'a l2c -> unit = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val mem_l2c : int -> 'a l2c -> bool = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val length_l2c : 'a l2c -> int = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val print_l2c : 'a l2c -> unit = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    },
    {
     "data": {
      "text/plain": [
       "val fusion_l2c : 'a l2c -> 'a l2c -> unit = <fun>\n"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "let fst_l l1 = match l1 with\n",
    "|[] -> failwith \" Pas d'éléments \"\n",
    "|e::q -> e;;\n",
    "\n",
    "(* [lst l1] retourne le dernier élément de [l1]*)\n",
    "let rec lst l1 = match l1 with\n",
    "|[] -> failwith \"Pas d'élements\"\n",
    "|[e] -> e\n",
    "|e::q -> lst q;;\n",
    "\n",
    "(* [nvl l1] retourne les n-vl élément [l1] *)\n",
    "let rec nvl e l1 = match l1 with\n",
    "|[] -> failwith \"impossible\"\n",
    "|e1::q -> if e = 0 then e1\n",
    "else nvl (e-1) q;;\n",
    "\n",
    "(* [lth l1] retourne la longueur de [l1]*)\n",
    "let rec lth l1 = match l1 with\n",
    "|[] -> 0\n",
    "|e::q -> 1 + lth q;;\n",
    "\n",
    "(* [sum l1] retourne le somme de [l1] *)\n",
    "let rec sum l1 = match l1 with\n",
    "| [] -> 0\n",
    "| e::q -> e + sum q;;\n",
    "\n",
    "(* [mem e l1] retourne si e appartient à [l1]*)\n",
    "let rec mem e l1 = match l1 with\n",
    "|[] -> false\n",
    "|e1::q -> e1 = e || mem e q;;\n",
    "\n",
    "(* [append l1 l2] retourne la concaténation entre [l1] et [l2] *)\n",
    "let rec append l1 l2 = match l1 with\n",
    "|[] -> l2\n",
    "|e::q -> e::append q l2;;\n",
    "\n",
    "(* [rev_append l1 l2] retourne la concaténation entre l'opposé de [l1] et [l2]*)\n",
    "let rec rev_append l1 l2 = match l1 with\n",
    "|[] -> l2\n",
    "|e::q -> rev_append q (e::l2)\n",
    "\n",
    "(* [mini l1] retourne le minimumm de [l1]*)\n",
    "let rec mini l1 = match l1 with\n",
    "|[] -> max_int\n",
    "|e::q -> let m = mini q in\n",
    "if e < m then e\n",
    "else m;;\n",
    "\n",
    "(** [maxi_l l1] returns the maximum of [l1]*)\n",
    "let rec maxi_l l1 = match l1 with\n",
    "|[] -> min_int\n",
    "|e::q -> let m = maxi_l q in\n",
    "if e > m then e\n",
    "else m;;\n",
    "\n",
    "(* [increase l1] retourne si [l1] augmente *)\n",
    "let rec increase l1 = match l1 with\n",
    "|[] -> true\n",
    "|[e] -> true\n",
    "|e::e1::q -> e<e1 && increase (e1::q);;\n",
    "\n",
    "(* [decrease l1] retounre si [l1] diminue *)\n",
    "let rec decrease_l l1 = match l1 with\n",
    "|[] -> true\n",
    "|[e] -> true\n",
    "|e::e1::q -> e>e1 && decrease_l (e1::q);;\n",
    "\n",
    "(* [doublon l1] retourne vrai ou faux si il y a un ou plusiseurs doublons *)\n",
    "let rec doublon l1 = match l1 with\n",
    "|[] -> false\n",
    "|e::q -> if mem e q then true\n",
    "else doublon q;;\n",
    "\n",
    "(* [doublon2 l1] retourne [l1] sans duplications *)\n",
    "let rec doublon2 l1 = match l1 with\n",
    "|[] -> []\n",
    "|e::q -> if mem e q then doublon2 q\n",
    "else e::doublon2 q;;\n",
    "\n",
    "(* [equal l1  l2 ] verifie si les deux listes sont égales*)\n",
    "let rec equal l1 l2 = match l1,l2 with\n",
    "|[],[] -> true\n",
    "|[],_ | _,[]-> false\n",
    "|e::q, e1::q1 -> if e <> e1 then false\n",
    "else equal q q1;;\n",
    "\n",
    "(*[map f l1] applique la fonction f sur chaque élémente de l1 *)\n",
    "let rec map f l1 = match l1 with\n",
    "| [] -> []\n",
    "|e::q -> f(e)::map f q;;\n",
    "\n",
    "(* [filter f l] retoure tous les éléments de la liste l qui vérfie la fonction f *)\n",
    "let rec filter f l1 = match l1 with\n",
    "| [] -> []\n",
    "|e::q -> if f(e) then e::filter f q\n",
    "else filter f q;;\n",
    "\n",
    "(* [for_all f l1 ] verfie si tous les éléments de la liste vérifie la fonction f. Elle retourne (f a1) && (f a2) && ... && (f an) pour  une liste non vide et and vrai si la liste est vide  *)\n",
    "let rec for_all f l1 = match l1 with\n",
    "|[] -> true\n",
    "|e::q -> if f(e) = true then for_all f q\n",
    "else false;;\n",
    "\n",
    "(* [exists f l1 ]] vérifie si au moins un élément de l1 vérifie la fonction f. Elle retourne (f a1) || (f a2) || ... || (f an) pour une liste non vide et faux si la liste est vide. *)\n",
    "let rec exists f l1 = match l1 with\n",
    "|[] -> false\n",
    "|e::q ->  f(e) || exists f q\n",
    "\n",
    "(* [asso_pairs l1 l2] transforme une paire de liste en une liste de paires *)\n",
    "let rec asso_pairs l1 l2 = match l1, l2 with\n",
    "|[],[] -> []\n",
    "|_,[] | [],_ -> failwith \"Argument invalide\"\n",
    "|e1::q1, e2::q2 -> (e1,e2)::asso_pairs q1 q2;;\n",
    "\n",
    "(* [split_pairs l1 ] transforme une liste de pairs en une paire de listes *)\n",
    "let rec split_pairs_l l1 = match l1 with\n",
    "|[] -> ([],[])\n",
    "|(e1,e2)::q -> let q1,q2 = split_pairs_l q in e1::q1, e2::q2;;\n",
    "\n",
    "(* [split l1] transforme une liste en deux listes*)\n",
    "let rec split l1 = match l1 with\n",
    "|[] -> ([],[])\n",
    "|[e] -> ([e],[])\n",
    "|e1::e2::q -> let q1, q2 = split q in e1::q1, e2::q2;;\n",
    "\n",
    "(* [fusion l1 l2] fusionne deux listes en une liste *)\n",
    "let rec fusion_l l1 l2 = match l1, l2 with\n",
    "|[],_ -> l2\n",
    "|_,[] -> l1\n",
    "|e1::q1, e2::q2 -> if e1< e2 then e1::fusion_l q1 l2\n",
    "else e2::fusion_l l1 q2;;\n",
    "\n",
    "(*partition l1 pivot une paire (l1, l2) *)\n",
    "let rec partition l1 pivot = match l1 with\n",
    "|[] -> [],[]\n",
    "|e::q -> let l2,l3 = partition q pivot in\n",
    "if e< pivot then e::l2, l3\n",
    "else l2, e::l3\n",
    "\n",
    "(* [quicksort_l l1] transforme l1 en une liste triée *)\n",
    "let rec quicksort l1 = match l1 with\n",
    "|[]->[]\n",
    "|p::q -> let l2, l3 = partition q p in\n",
    "append (quicksort l2) (p::quicksort l3)\n",
    "\n",
    "(* [insert x l] insert x into a sorted list l *)\n",
    "let rec insert x l = match l with\n",
    "|[] -> [x]\n",
    "|e::q -> if x <=e then x::e::q\n",
    "else e::insert x q;;\n",
    "\n",
    "(* [insert_sort l] transforme une liste en une liste triée , complexité = O(n^2) *)\n",
    "let rec insert_sort l = match l with\n",
    "|[] -> []\n",
    "|e::q -> insert e (insert_sort q);;\n",
    "\n",
    "(* [add e ll] retourne une liste de listes obtenus en ajoutant chaque liste de [ll]. *)\n",
    "let rec add e ll = match ll with\n",
    "| [] -> []\n",
    "| x::s -> (e::x)::add e s;;\n",
    "\n",
    "(* [parties l] retournes une listes avec les parties de [l]. *)\n",
    "let rec parties l = match l with\n",
    "| [] -> [[]]\n",
    "| e::q -> let parties_q = parties q in\n",
    "parties_q @ (add e parties_q);;\n",
    "\n",
    "(* [array_of_list l] transforme une liste en tableau *)\n",
    "let array_of_list l =\n",
    "let m = lth l in\n",
    "let t = Array.make m 0 in\n",
    "let rec aux m1 l1 = match l1 with\n",
    "|[]->[||]\n",
    "|e::q -> t.(m-m1) <- e;\n",
    "if m1 = 1 then t\n",
    "else aux (m1 - 1) q in\n",
    "aux m l;;\n",
    "\n",
    "(* [array_to_list t] transforme un tableau en liste  *)\n",
    "let array_to_list t =\n",
    "let m = Array.length t in\n",
    "let rec aux i =\n",
    "if i = 0 then []\n",
    "else t.(m-i)::aux (i-1) in\n",
    "aux m;;\n",
    "\n",
    "\n",
    "type 'a l2c = {elem : int; mutable prev : 'a l2c;mutable  next : 'a l2c}\n",
    "\n",
    "(*[create_l2c e] crée une l2C avec un elément *)\n",
    "let create_l2c e =\n",
    "let rec l = {elem = e; prev = l ; next = l } in l;;\n",
    "\n",
    "(* [add_l2c l e] ajoute e après l *)\n",
    "let add_l2c l e =\n",
    "let l_new = {elem = e; prev = l; next = l.next } in\n",
    "l.next.prev <- l_new;\n",
    "l.next <- l_new;;\n",
    "\n",
    "(* [suppr_l2c] supprime  e de l *)\n",
    "let suppr_l2c l =\n",
    "l.next.prev <- l.prev;\n",
    "l.prev.next <- l.next;;\n",
    "\n",
    "(* [mem_l2c e l] retourne si e appartient à l *)\n",
    "let mem_l2c e l =\n",
    "let cur = ref l.next in\n",
    "while !cur.elem <> e && !cur != l do\n",
    "cur := !cur.next\n",
    "done;\n",
    "!cur.elem = e;;\n",
    "\n",
    "(*[length_l2c l] retourne la taille de l*)\n",
    "let length_l2c l =\n",
    "let rec aux l1 =\n",
    "if l1 == l then 1 else 1 + aux l1.next in aux l.next;;\n",
    "\n",
    "(* [print_l2c l] affiche tous les éléments de l *)\n",
    "let print_l2c l =\n",
    "let l_cur = ref l.next in\n",
    "while !l_cur != l do\n",
    "print_int !l_cur.elem; print_newline ();\n",
    "l_cur := !l_cur.next\n",
    "done;\n",
    "print_int !l_cur.elem;\n",
    "print_newline ();;\n",
    "\n",
    "(*[fusion_l2c l1 l2] fusionne l1 et l2 en l2c*)\n",
    "let fusion_l2c l1 l2 =\n",
    "(l1.next).prev <- l2;\n",
    "(l2.next).prev <- l1;\n",
    "let l1n = l1.next in\n",
    "l1.next<- l2.next;\n",
    "l2.next<- l1n;;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "af9a6116-0241-4d15-b061-6aef0472a00c",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "OCaml default",
   "language": "OCaml",
   "name": "ocaml-jupyter"
  },
  "language_info": {
   "codemirror_mode": "text/x-ocaml",
   "file_extension": ".ml",
   "mimetype": "text/x-ocaml",
   "name": "OCaml",
   "nbconverter_exporter": null,
   "pygments_lexer": "OCaml",
   "version": "4.08.1"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
