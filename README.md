<div style="text-align: justify">

# SIO_23-24_TP3

## Informations

Groupe : D

Auteurs : Jeremiah Steiner et Simon Guggisberg

## Modélisation

### Données

Nous avons $n$ objets.

Nous avons $m$ boîtes.

Chaque objet a une valeur entière et positive :

\[
v_i \text{ | } v_i \in \mathbb{N} \text{ et } i = 1,..., n
\]

### Variables de décision

Chaque objet est placé dans une boîte. Cette affiliation est dénoté par une valeur binaire égale à $1$ si l'objet i se trouve dans la boîte j avec :

\[
    x_{ij} \text{ | } j = 1, ..., m \text{ et } i = 1, ..., n
\]

### Fonction objective

Comme "Le critère d’équité retenu ici consiste à maximiser la plus petite valeur totale attribuée à un groupe." nous avons la fonction objectif du style max-min suivante :

\[
    \text{Maximiser } z = min_{j=1,...,m}(\sum_{i=1}^{n} v_i \cdot x_{ij})
\]

Cet objectif se linéarise de manière classique en introduisant une variable auxiliaire $t$ $\in$ $\mathbb{N}$ pour le minimum et en imposant pour chaque boîte $j$ la contrainte :

\[
    t \leq \sum_{i=1}^{n} v_i \cdot x_{ij} \quad \forall j = 1, ..., m
\]

Ce qui nous donne au final :

\[
    \text{Maximiser } z = min_{j=1,...,m}(\sum_{i=1}^{n} v_i \cdot x_{ij})
\]

\[
    \text{Maximiser } z = t 
\]

\[
    t \leq \sum_{i=1}^{n} v_i \cdot x_{ij} \quad \forall j = 1, ..., m
\]

### Contraintes

Chaque objet est présent dans une seule boîte :
<!-- aucune contrainte supplémentaire, les "contraintes de donnée" ne devant pas figurer ici--> 
\[
    \sum_{j=1}^{m}x_{ij} = 1, \forall_i = 1, ..., n
\]

## Résolution <!-- TODO la suite --> 

### Gusek

voir le .mod

## Conclusion

that was __really ~~not~~__ fun

</div>


