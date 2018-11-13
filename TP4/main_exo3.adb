with Traceur; use Traceur;

procedure main is 

  tailleLigne: Integer; -- garde en mémoire la taille de la ligne du petit carré en train d'être tracée
  cDeplacement: Integer; -- compteur gardant en mémoire le nombre d'unités parcourue par le traceur
  cPortions: Integer; -- compteur gardant en mémoire le nombre de carrés tracés
  cLignes: Integer; -- compteur gardant en mémoire le nombre de lignes actuellement tracées
  cRepetition: Integer; -- compteur pour répétition de loop
begin

  function Deplacer(unites: Integer;) return Integer;
    cDepl : Integer;
  begin
    while cDepl /= unites loop
      deplacerStylet;
      cDepl := cDepl + 1
    end loop;
  end Deplacer;

  -- Initialiser position et état stylet
    initialiserTraceur;
    leverStylet;
    centrerStylet;
    orienterNord;
  
  -- Initialiser variables
    cLignes := 0;
    cDeplacement := 0;
    cRepetition  := 0;
    cPortions    := 0;
    tailleLigne  := 20;

    baisserStylet;
    while cPortions /= 3 loop
      while cRepetition /= 2 loop
        Deplacer(tailleLigne);
        pivoterDroite;
        Deplacer(tailleLigne);
        pivoterGauche;
        Deplacer(tailleLigne);
        pivoterGauche;
        Deplacer(tailleLigne);
        pivoterDroite;
        cRepetition := cRepetition+1;
      end loop;
      cRepetition := 0;
      Deplacer(tailleLigne);
      pivoterGauche;
    end loop;

    afficherTraceur;
end main;