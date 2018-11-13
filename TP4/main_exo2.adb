with Traceur; use Traceur;

procedure main is 

  tailleLigneGros: Integer; -- garde en mémoire la taille de la ligne du gros carré en train d'être tracée
  tailleLignePetit: Integer; -- garde en mémoire la taille de la ligne du petit carré en train d'être tracée
  cDeplacement: Integer; -- compteur gardant en mémoire le nombre d'unités parcourue par le traceur
  cCarres: Integer; -- compteur gardant en mémoire le nombre de carrés tracés
  cLignes: Integer; -- compteur gardant en mémoire le nombre de lignes actuellement tracées
  cRepetition: Integer; -- compteur pour répétition de loop
begin

  -- Initialiser position et état stylet
    initialiserTraceur;
    leverStylet;
    centrerStylet;
    orienterNord;
  
  -- Initialiser variables
    cLignes := 0;
    cDeplacement := 0;
    cRepetition := 0;

  -- On place le stylet en position initiale
  while cDeplacement /= (tailleLigneGros/2) loop
    deplacerStylet;
    cDeplacement := cDeplacement +1;
  end loop;
  cDeplacement := 0;
  baisserStylet;


  while cRepetition /= 3 loop
    while cDeplacement /= tailleLigneGros loop
      deplacerStylet;
      cDeplacement := cDeplacement +1;
    end loop;
    cDeplacement := 0;

    while cLignes /= 1 loop
      pivoterDroite;
      while cDeplacement /= tailleLignePetit loop
        deplacerStylet;
        cDeplacement := cDeplacement +1;
      end loop;
      cDeplacement := 0;
    end loop;
    cLignes := 0;

    while cDeplacement /= tailleLigneGros loop
      deplacerStylet;
      cDeplacement := cDeplacement +1;
    end loop;
    cDeplacement := 0;
  end loop;

  afficherTraceur;
  
end main;