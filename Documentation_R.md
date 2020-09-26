# Documentation R

## Commandes et description
### Création 
#### De matrice:
**matrix(1:12, nr=3):** Créé une matrice de trois lignes contenant la liste allant de 1 à 12  
#### De vecteur:
**c(a,b,c,d,e,f):** Créé un vecteur contenant les éléments de a à f  
**c(liste1,liste2):** Retourne la concaténation des deux listes  
#### Opération sur les matrices:
**apply(matrice,1,fonction):** Applique la fonction à chacune des lignes de la matrice  
**apply(matrice,2,fonction):** Applique la fonction à chacune des colonnes de la matrice  
exemple de fonction: sum, mean  

#### Fonctions utiles:
**mean(x):** Valeur moyenne de x  
**sum(x):** Fonction somme  
**rnorm(x):** Génération de n nombre aléatoires suivant la loi normale centrée réduite  
**pnorm(x):** Fonction de répartition en x de la loi normal centrée réduite  
**rpois(a,b):** Génération de a observations suivant la loi de poisson de paramètre b (lambda)  
**sd(x):** Calcul de l'écart type  
**var(x):** Calcul de la variane  
**median(x):** Calcul de la médianne  
**range(x):**  
**quantile(x):** Retourne toute les valeurs des quartiles de x  
**quantile(x, c(0,0.25,0.5,0.75,1)):** Retourne les quartiles associés au vecteur c  
**sort(x):** Permet de trier x  