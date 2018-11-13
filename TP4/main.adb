with Traceur; use Traceur;

procedure main is 

  tailleLigne: Integer; -- garde en mémoire la taille de la ligne en train d'être tracée
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

  -- initialiser les variables
    tailleLigne  := 20;
    cDeplacement := 0;
    cCarres      := 1;
    cRepetition  := 1;
    cLignes      := 1;
  
  while cCarres /= 5 loop
    while cRepetition /= 2 loop
      while cDeplacement < (tailleLigne / 2) loop

        if cRepetition = 2 then
          baisserStylet;
        end if;

        deplacerStylet;
        cDeplacement  := cDeplacement + 1;
        pivoterGauche;

      end loop;
      cDeplacement := 0;
    end loop;
    cRepetition := 1;

    while cLignes /= 3 loop
      cDeplacement := 0;
      cLignes := cLignes + 1;
      while cDeplacement /= tailleLigne loop
        deplacerStylet;
        cDeplacement := cDeplacement+1;
      end loop;
      pivoterGauche;
    end loop;
    cLignes := 1;

    while cDeplacement /= (tailleLigne / 2) loop
        deplacerStylet;
        cDeplacement  := cDeplacement + 1;
        pivoterDroite;
    end loop;
    cDeplacement := 0;
  end loop;

  afficherTraceur;
end main;