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
param nbBox; # nombre de box (section data)
param nbObject; # nombre d'objet à répartir (section data)

set objectsIndexes := 1..nbObject; # tableau des indices des objets
set boxesIndexes := 1..nbBox; # tableau des indices des boîtes

param objectValues{objectsIndexes}; # valeur attribuée à chaque objet

var isObjectInBox{objectsIndexes, boxesIndexes}, binary; # valeur binaire pour un couple boîte - objet

var auxiliaryVarToMinimize; # Variable auxiliaire pour le minimum

/*
 * Contraintes :
 */

# tous les objets doivent être dans 1 et 1 seule boîte
subject to OneBoxPerObject{i in objectsIndexes}:
    # on sommes les appartenance de chaque objets au boîtes pour vérifier qu'il  sont dans une seule
    sum{j in boxesIndexes} isObjectInBox[i, j] = 1;

# z est la somme minimum entre toute les boîtes
subject to MinimizeTotalConstraint{j in boxesIndexes}:
    # on multiplie la valeur de l'objet par 0 ou 1 selon s'il est dans la boite courante
    auxiliaryVarToMinimize <= sum{i in objectsIndexes} objectValues[i] * isObjectInBox[i, j];

/*
* Fonction Objectif
*/

# maximise t, le sous total de chaque boîte étant le minimum
maximize MinimizeTotal: auxiliaryVarToMinimize;

solve; # on demande de resoudre le problème

# Imprime les résultats de chaque objet par boîte
# affiche une ligne avec le nombre de box et la sommes totales des valeurs
printf "\n%d Boxes, total :%d: id(value) :\n", nbBox, sum{j in objectsIndexes} objectValues[j]; 
# on boucle sur les indices des boîtes
for {i in boxesIndexes} {
    # début des affichages de chaque ligne avec l'indice de la boite ainsi que le sous-total de celle-ci
    printf "Box %d subtotal : %d: ", i, sum{j in objectsIndexes: isObjectInBox[j, i] = 1} objectValues[j];
    # on boucle sur les indices des objets
    for {j in objectsIndexes} {
        # on affiche l'indice de l'objet et la valeur de celui-ci 
        printf {0..0: isObjectInBox[j, i] = 1} " %d(%d)", j, objectValues[j];
    } # on finit le for (à bha fallait pas demander un commentaire sur chaque ligne de code)
    printf "\n"; # on ajoute un retour à la ligne pour passer à la boîte suivante.
} # on finit le for (à bha fallait pas demander un commentaire sur chaque ligne de code)
printf "\n"; # on ajoute un retour à la ligne après notre affichage pour faire un résultat détaché

/* ******************************************************
 *
 * Section Data
 *
 ****************************************************** */

data;

# Jeu de données nï¿½ 1

/* Nombre de groupes/personnes/boîtes */
#param nbBox := 4;

/* Nombre d'objets à répartir  */
#param nbObject := 13;

/* Valeur des objets à répartir  */
/*param objectValues :=
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
;#*/

#################################

# Jeu de données nï¿½ 2

# /* Nombre de groupes/personnes/boîtes */
param nbBox := 4;

# /* Nombre d'objets à répartir  */
param nbObject := 14;

# /* Valeur des objets à répartir  */
param objectValues :=
 	 1	1
 	 2	2
 	 3	3
 	 4	4
 	 5	5
 	 6	6
 	 7	7
 	 8	8
 	 9	9
 	10	10
 	11	 11
 	12	 12
 	13	 13
 	14	 14
;#*/

end;
