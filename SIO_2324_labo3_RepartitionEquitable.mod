/* ******************************************************
 *
 * SIO 2023-2024 - Labo 3 : R�partition �quitable
 *
 * Groupe : D
 *
 * Nom et pr�nom : Guggisberg Simon
 *
 * Nom et pr�nom : Steiner Jeremiah
 *
****************************************************** */

/*
 * Mod�lisation :
 */

# tableau des indices des objets
set N := 1..nbObject;

# tableau des indices des bo�tes
set M := 1..nbBox;

# valeur attribu� � chaque objet
set objectValues within N, integer >= 0;

# valeur binaire pour un couple bo�te - objet
var isObjectInBox{(i,j) in N cross M}, binary;

/*
 * Contraintes :
 */

# le nombre des bo�tes n'est pas nul ni n�gatif
subject to IsNbBoxStrictlyPositive:
	nbBox >= 1;

# toutes les valeurs sont positives
subject to IsValuePositive{i in N}:
	objectsValues[i] >= 0;

# tous les objets doivent �tre dans 1 et 1 seule bo�te
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

# Jeu de donn�es n� 1

/* Nombre de groupes/personnes/bo�tes */
param nbBox := 4;

/* Nombre d'objets � r�partir  */
param nbObject := 13;

/* Valeur des objets � r�partir  */
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

# Jeu de donn�es n� 2

# /* Nombre de groupes/personnes/bo�tes */
# param nbBox := 4;

# /* Nombre d'objets � r�partir  */
# param nbObject := 14;

# /* Valeur des objets � r�partir  */
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
