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
 
set N := 1..nbrObjet; # tableau des indices des objets
set W := 1..nbrObjet; # tableau des boite li� � chaque object 
# TODO : init � 0

set valueForObject within N; #  TODO c'est faux l� 

var {(i,j) in N}, integer;#  TODO c'est faux l� 


/*
 * Contraintes :
 */
 
 # tous les objets doivent �tre dans 1 et 1 seule bo�te
 
 /*
  * Fonction Objectif
  */
 
 minimize sum{j in W}

/* ******************************************************
 *
 * Section Data
 *
 ****************************************************** */

data;

# Jeu de donn�es n� 1

/* Nombre de groupes/personnes/bo�tes */
param nbrDeGroupe := 4;

/* Nombre d'objets � r�partir  */
param nbrObjet := 13;

/* Valeur des objets � r�partir  */
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

# Jeu de donn�es n� 2

# /* Nombre de groupes/personnes/bo�tes */
# param nbrDeGroupe := 4;

# /* Nombre d'objets � r�partir  */
# param nbrObjet := 14;

# /* Valeur des objets � r�partir  */
# param valueForObject :=
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
