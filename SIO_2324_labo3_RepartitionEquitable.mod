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
 
set N := 1..nbrObjet;
set M := 1..nbrDeGroupe;

set valueForObject within N; #  TODO c'est faux là 

var {(i,j) in N}, integer;#  TODO c'est faux là 


/*
 * Contraintes :
 */
 
 

/* ******************************************************
 *
 * Section Data
 *
 ****************************************************** */

data;

# Jeu de données n° 1

/* Nombre de groupes/personnes/boîtes */
param nbrDeGroupe := 4;

/* Nombre d'objets à répartir  */
param nbrObjet := 13;

/* Valeur des objets à répartir  */
param valueForObject :=
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
# param ???? := 4;

# /* Nombre d'objets à répartir  */
# param ???? := 14;

# /* Valeur des objets à répartir  */
# param ???? :=
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
