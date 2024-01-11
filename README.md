# SIO_23-24_TP3

Auteurs : Jeremiah Steiner et Simon Guggisberg

## Donnée

Nous avons $n$ objets.

$i = 1,..., n$

Chaque objet a une valeur entière et positive $v_i$

Nous avons $m$ boîtes.

Chaque objet a une affiliation à une boîte qui va de 1 à m (0 si non affilié) $w_i$

De plus la moyenne des valeurs est donnée par

$\hat{v} = \frac{1}{m}\sum_{i=1}^{n} v_i$

## Modélisation

### Fonction objective

$min\sum_{i=1}^{m}|w_i - \hat{v}|$

### Contraintes

$m \ge 1$

$w_i > 0$

$w_i \le m$

$v_i \ge 0$
