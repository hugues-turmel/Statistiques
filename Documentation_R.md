# Documentation R

## Commandes et description

### Les objets  

#### Les Matrice:
**matrix(1:12, nr=3):** Créé une matrice de 3 lignes contenant la liste allant de 1 à 12  
**matrix(1:12, nc=3):** Créé une matrice de 3 colonnes contenant la liste allant de 1 à 12  
**matrix(1:12, nc=3, nr=4):** Créé une matrice de 3 colonnes et 4 lignes contenant la liste allant de 1 à 12
#### Les Vecteurs:
**c(a,b,c,d,e,f):** Créé un vecteur contenant les éléments de a à f (la liste c peut contenir des chars, des booleéns, des ints...)  
**c(liste1,liste2):** Retourne la concaténation des deux listes  
#### Les Opération sur les matrices ou vecteurs:
**apply(matrice,1,fonction):** Applique la fonction à chacune des lignes de la matrice  
**apply(matrice,2,fonction):** Applique la fonction à chacune des colonnes de la matrice  
exemple de fonction: sum, mean, sqrt 

### Les Fonctions utiles:
**mean(x):** Valeur moyenne de x  
**ceiling(n/2):** Arrondi à l'entier supérieur  
**sum(x):** Fonction somme  
**cumsum(x):** Retourne la liste des sommes cumulées de x ( cumsum(c(1,2,3,4,5,6,7,8,9,10)) -> 1  3  6 10 15 21 28 36 45 55 )  
**sqrt(x):** Racine carré de x 
**rnorm(x):** Génération de x nombre aléatoires suivant la loi normale centrée réduite  
**pnorm(x):** Fonction de répartition en x de la loi normal centrée réduite   
**qnorm(p)** Quantile de la probabilité p pour la loi normale centrée réduite  
**sum(pbinom(x,size=n,prob=p)):** P(X <= x)  
**sum(dbinom(x=a:b,size=n,prob=p)):** P(a < x < b)  
**dbinom(x=a,size=n,prob=p):** P(X = a)  
**sum(dbinom(x=a:b,size=b,prob=p)):** P( X > a-1)  
**rpois(a,b):** Génération de a observations suivant la loi de poisson de paramètre b (lambda)  
**rexp(a,b):** Génération de a observations suivant la loi exponentiel de paramètre b (lambda)  
**sd(x):** Calcul de l'écart type  
**var(x):** Calcul de la variane  
**median(x):** Calcul de la médianne  
**range(x):**  
**quantile(x):** Retourne toute les valeurs des quartiles de x   
**quantile(x, c(0,0.25,0.5,0.75,1)):** Retourne les quartiles associés au vecteur c  
**sort(x):** Permet de trier x  
**length(x):** Retourne la longueur de x  

### La manipulation de fichier texte
**setwd("C:/Users/..."):** Permet de changer le répertoire courant  
**x = read.table("matable.txt"):**  Permet de lire le fichier matable.txt et d'enregistrer son contenue dans x  
**head(x):** Appercu de la table x  
**x$valeur:** Permet de récupérer la colonne valeur  
**attach(x):** Permet d'avoir accés a chaque colonnes/lignes sans utiliser l'option "$"  
**dettach(x):** Ferme le fichier x  
**addmargins(x):** Permet de sommer sur un ligne ou sur une colonne  
**prop.table(x):** Donne les proportions de x  


### L'affichage graphique
**abline(a, b, col="color"):** Trace la droite f: x->ax+b  
**abline(h = a, col="color"):** Trace la droite horizontale coupant l'axe des ordonnés en a  
**abline(v = b, col="color"):** Trace la droite verticale coupant l'axe des abscisse en b  
**lines(x,y,type="l"):** Trace un graphique de x en fonction de y  

* Avec type:  
	* "p" pour point  
	* "l" pour ligne  
	* "b" pour point et ligne  
	* "c" pour point vide relié par des lignes  
	* "s" and "S" pour echellon  
	* "h" pour histogramme  
	* "n" pour ne rien n'afficher  