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

$v_i$ où $v_i \in \mathbb{N}$ où $i = 1,..., n$

### Variables de décision

Chaque objet est placé dans une boîte. Cette affiliation est dénoté par une valeur binaire égale à $1$ si l'objet i se trouve dans la boîte j avec :

$x_{ij}$ où $j = 1, ..., m$ et $i = 1, ..., n$

### Fonction objective

La somme des valeurs pour une boîte $j$ est donné ainsi pour $j=1, ..., m$ :

$s_j = \sum_{i=1}^{n}v_{i}x_{ij}$, $\forall_j = 1, ..., m$

De plus la moyenne des valeurs par boîte est donnée par :

$\hat{v} = \frac{1}{m}\sum_{i=1}^{n} v_i$

Nous cherchons à minimiser la différence entre la somme des valeurs d'objets contenus dans une boîte et la manière optimale de répartir les objets si ils n'étaient pas entier, soit la moyenne des valeurs par boîte.

$min\sum_{j=1}^{m}|s_j - \hat{v}|$

Ensemble ces équations peuvent s'écrire ainsi :

$min\sum_{j=1}^{m}|(\sum_{i=1}^{n}v_{i}x_{ik}) - \frac{1}{m}\sum_{i=1}^{n} v_i|$, $\forall_k = 1, ..., m$

### Contraintes

$m$ est plus grand ou égal à 1, sans quoi le problème n'aurait pas de sens avec $m = 0$

$m \ge 1$

Les valeurs $v_i$ sont entières et positives.

$v_i \ge 0$, $\forall_i = 1, ..., n$

Les variables $x_{ij}$ sont binaires

$x_{ij} \in \{0,1\}$, $\forall_i = 1, ..., n$, $\forall_j = 1, ..., m$

Chaque objet est présent dans une seule boîte

$\sum_{j=1}^{m}x_{ij} = 1$, $\forall_i = 1, ..., n$

## Résolution

### Gusek

goes brrr

## Conclusion

that was ~~not~~ fun

</div>