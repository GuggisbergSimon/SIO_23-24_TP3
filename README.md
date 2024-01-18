# SIO_23-24_TP3

Groupe : D

Auteurs : Jeremiah Steiner et Simon Guggisberg

## Modélisation

### Données

Nous avons $n$ objets.

Nous avons $m$ boîtes.

$i = 1,..., n$

Chaque objet a une valeur entière et positive $v_i$ où $v_1 \in \mathbb{N}$

De plus la moyenne des valeurs est donnée par :

$\hat{v} = \frac{1}{m}\sum_{i=1}^{n} v_i$

### Variables de décision

Chaque objet est placé dans une boîte. Cette affiliation est dénoté par une valeur entière et strictement positive $w_i$ où $w_i = 1,...,m$

### Fonction objective

Nous cherchons à minimiser la différence entre chaque
//TODO

$w_{sum} = \sum_{i=1}^{n}v_i$ où $i = w_i$

$min\sum_{i=1}^{m}|w_i - \hat{v}|$

### Contraintes

$m$ est plus grand ou égal à 1, sans quoi le problème n'aurait pas de sens avec $m = 0$

$m \ge 1$

Chaque affiliation $w_i$ est comprise entre 1 et $m$. Il n'est pas possible qu'un objet ne soit pas placé dans une boîte ou qu'il soit placé dans une boîte non existante.

$w_i > 0$

$w_i \le m$

Les valeurs $v_i$ sont entières et positives.

$v_i \ge 0$
