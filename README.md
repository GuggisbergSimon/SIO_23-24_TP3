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

## Résolution

La répartition des objets par boîte à laquelle le programme arrive est la suivante, pour une somme totale de valeur à 105, à diviser entre 4 boîtes :

```
4 Boxes, total :105: id(value) :
Box 1 subtotal : 26:  1(1) 2(2) 3(3) 7(7) 13(13)
Box 2 subtotal : 26:  12(12) 14(14)
Box 3 subtotal : 27:  4(4) 6(6) 8(8) 9(9)
Box 4 subtotal : 26:  5(5) 10(10) 11(11)
```

Ainsi, la différence de répartition entre chaque boîte est réduite au minimum. Ceci peut être observé de manière intuitive en examinant le résultat de la division de 105 par 4. Il s'agit de 26.25. On comprendra alors, de manière intuitive, que la solution optimale de répartition entière sera de trois éléments valant 26 et un valant 27, ce qui est le cas de la solution ci-dessus.

### Gusek

voir le .mod

## Conclusion

Au travers le la modélisation du problème, puis de sa résolution avec l'aide d'un langage GMPL, nous avons pu nous rendre compte des différences de méthodologie de réflexion et nous confronter à des problèmes inattendus tels que la représentation de charactères mathématiques au format markdown ou l'encodage de charactères spéciaux utilisés en français au format mod pour gusek.
Un problème d'apparence aussi simple que celui-ci est en réalité plus complexe à énoncer sous forme de règles mathématiques, quant à la résolution, et à la preuve surtout, pour trouver une solution optimale, il s'agit d'une autre histoire, qu'heureusement la technologie nous aide à résoudre.

</div>


