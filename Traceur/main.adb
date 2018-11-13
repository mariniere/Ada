with Traceur; use Traceur;

procedure main is
  CtailleBranche: Integer; -- compteur taille branche
  tailleBranche: Integer; -- taille branche
begin
  -- Tracer une spirale
    -- On initialise les variables
    CtailleBranche := 0;

    -- Initialiser position et état stylet
      initialiserTraceur;
      leverStylet;
      centrerStylet;
      orienterNord;
    -- Tracer la spirale en commençant par le centre
      -- Tant que la longueur maximale de branche (260) n'est pas atteinte
        while tailleBranche /= 260 loop
          baisserStylet;
          
          -- Tant que la branche actuelle n'est pas de longueur tailleBranche
          -- <=> On trace la branche de longueur tailleBranche
            while CtailleBranche /= tailleBranche loop
              deplacerStylet;
            end loop;
    
          -- On prépare le tracé de la prochaîne branche
            pivoterGauche;
            tailleBranche:= tailleBranche+10;
        end loop;
end main;