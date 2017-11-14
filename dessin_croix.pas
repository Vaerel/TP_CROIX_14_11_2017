{ALGORITHME: CROIX_BOUCLE_POUR
//But : dessiner une croix avec des variables renseignées par l'utilisateur, 
à savoir la taille et le caractère à utiliser.
//Principe : avec l'aide de boucles POUR imbriquées, on veut que ces dernières 
inscrivent les lignes et les colonnes en fonction des critères de l'utilisateur.
//Entrées : caractères et taille renseignés
//Sorties : croix dimensionnées en fonction des variables renseignées

VAR : 
taillecroix, ligne, colonne : ENTIER
carcroix : CAR

DEBUT 
	ECRIRE("Quel est le caractère choisi pour le dessin ?")  
	LIRE(carcroix)
	ECRIRE("Quel est la taille (nombre réel) de la croix ?")
	LIRE(taillecroix)
	
	POUR ligne de 1 A (taillecroix) FAIRE
		POUR colonne de 1 A (taillecroix) FAIRE
			SI ((ligne=colonne) OU (ligne+colonne=taillecroix+1))ALORS
				ECRIRE(carcroix)
				SINON
				ECRIRE(' ')
			FINSI
			FINPOUR
		ECRIRE
	FINPOUR
FIN}

program dessin_croix;

uses crt;
{//But : avec le caractère demandé par l'utilisateur (peut importe lequel) et la taille donnée par l'utilisateur, 
on veut dessiner une croix symétrique, qu'elle soit composée d'un nombre paire ou impaire de caractères, qu'on affichera donc sur l'interface FPC. 
On se servira d'une boucle pour et d'une boucle tant que.
//Entrées : caractère choisi par l'utilisateur et taille choisie par l'utilisateur
//Sorties : croix dimensionnée selon la taille et le caractère choisis par l'utilisateur.}

VAR
	taillecroix, ligne, colonne : integer;
	carcroix : Char;

BEGIN 
{//Le début du code permet simplement de récupérer les données utilisateurs, pour s'en servir dans la suite du code, et plus précisément pour changer le caractère utilisé pour la croix
ainsi que sa taille.}
	writeln('Quel est le caractere choisi pour le dessin ?');
	readln(carcroix);

	writeln('Quelle est la taille (nombre reel) de la croix ?');
	readln(taillecroix);

	clrscr;

{//31.10 La suite est plus complexe ... omg faudra que je cherche beaucoup pour trouver sans tricher. Une des hypothèses à tester serait de boucler (Pour) pour que la taille
de la croix soit prise en compte, et qu'instantanément, on dessine une croix. Puis remplacer une variable caractère par le caractère entré.}
	
	

	FOR ligne:=1 TO taillecroix DO
		BEGIN
		FOR colonne:=1 TO taillecroix DO
			BEGIN
				IF ((ligne=colonne) OR (ligne+colonne=taillecroix+1))THEN
				write(carcroix) 
				ELSE 
				write(' ');
			
			END;
			writeln;
		END;

		readln;
		
END.

{Solution trouvée : j'avais des difficultés avec le "writeln" mais en fait, écrire 
"write" évite de sauter la ligne. Ensuite, en imbriquan une boucle POUR dans une boucle
POUR, on fait un algorithme en 2 temps}

