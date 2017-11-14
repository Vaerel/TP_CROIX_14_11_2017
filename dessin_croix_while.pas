{ALGORITHME: CROIX_BOUCLE_WHILE
//But : dessiner une croix avec des variables renseignées par l'utilisateur, 
à savoir la taille et le caractère à utiliser.
//Principe : avec l'aide d'une boucle POUR imbriquée dans une boucle WHILE, on veut que ces dernières 
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
	
	TANTQUE (ligne <= taillecroix) FAIRE
		POUR colonne de 1 A (taillecroix) FAIRE
			SI ((ligne=colonne) OU (ligne+colonne=taillecroix+1))ALORS
				ECRIRE(carcroix)
				SINON
				ECRIRE(' ')
			FINSI
			FINPOUR
		ligne <- ligne+1
		ECRIRE
	FINPOUR
FIN}
program dessin_croix_while;

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
writeln('Quel est le caractere choisi pour le dessin ?');
	readln(carcroix);

	writeln('Quelle est la taille (nombre reel) de la croix ?');
	readln(taillecroix);

	clrscr;

	WHILE (ligne <= taillecroix)DO
			BEGIN
				FOR colonne:=1 TO taillecroix DO
					BEGIN
						IF ((ligne=colonne) OR (ligne+colonne=taillecroix+1))THEN
						write(carcroix) 
						ELSE 
						write(' ');
					
					END;
					ligne := ligne +1;
					writeln;
			END;

			readln;
			
	END.
//Il faut créer un compteur manuellement, dans la fin de la boucle WHILE.
