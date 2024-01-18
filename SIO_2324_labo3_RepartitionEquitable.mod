/* ******************************************************
 *
 * SIO 2023-2024 - Labo 3 : Répartition équitable
 *
 * Groupe : D
 *
 * Nom et prénom : Guggisberg Simon
 *
 * Nom et prénom : Steiner Jeremiah
 *
****************************************************** */

/*
 * Modélisation :
 */

# tableau des indices des objets
set N := 1..nbObject;

# tableau des indices des boîtes
set M := 1..nbBox;

# valeur attribué à chaque objet
set objectValues within N, integer >= 0;

# valeur binaire pour un couple boîte - objet
var isObjectInBox{(i,j) in N cross M}, binary;

/*
 * Contraintes :
 */

# le nombre des boîtes n'est pas nul ni négatif
subject to IsNbBoxStrictlyPositive:
	nbBox >= 1;

# toutes les valeurs sont positives
subject to IsValuePositive{i in N}:
	objectsValues[i] >= 0;

# tous les objets doivent être dans 1 et 1 seule boîte
subject to IsInSingleBox{i in N}:
	sum{j in M} x[i, j] = 1;

 /*
  * Fonction Objectif
  */

minimize Average{k in M}
	sum{j in M} abs(sum{i in N} v[i] * x[i, k] - 1/m * sum{i in n} v[i]);

/* ******************************************************
 *
 * Section Data
 *
 ****************************************************** */

data;

# Jeu de données n° 1

/* Nombre de groupes/personnes/boîtes */
param nbBox := 4;

/* Nombre d'objets à répartir  */
param nbObject := 13;

/* Valeur des objets à répartir  */
param objectValues :=
	 1	2
	 2	5
	 3	8
	 4	8
	 5	9
	 6	11
	 7	16
	 8	22
	 9	28
	10	31
	11	 32
	12	 34
	13	 35
;

#################################

# Jeu de données n° 2

# /* Nombre de groupes/personnes/boîtes */
# param nbBox := 4;

# /* Nombre d'objets à répartir  */
# param nbObject := 14;

# /* Valeur des objets à répartir  */
# param objectValues :=
# 	 1	1
# 	 2	2
# 	 3	3
# 	 4	4
# 	 5	5
# 	 6	6
# 	 7	7
# 	 8	8
# 	 9	9
# 	10	10
# 	11	 11
# 	12	 12
# 	13	 13
# 	14	 14
# ;


end;
