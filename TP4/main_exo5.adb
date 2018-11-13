with Traceur; use Traceur;

procedure main is 
  Long   : Integer; -- longueur de deplacement
  cCotes : Integer; -- compteur côtés
begin

  function deplacerDiag(unites: Integer;) return Integer;
    cDepl : Integer;
  begin
    -- Tant qu'on ne s'est pas dépl de la longueur donnée
    while cDepl /= unites loop
      -- Mouvement en zig-zag
      deplacerStylet;
      pivoterDroite;
      deplacerStylet;
      pivoterGauche;
      -- Incrémenter
      cDepl := cDepl + 1;
    end loop;
    pivoterDroite;
    return 0;
  end Deplacer;

  -- Init variables
    Long   := 30;
    cCotes := 0;


  -- Trace losange
  while cCotes < 3 loop
    -- Tracer un côté
    deplacerDiag(Long);
    cCotes := cCotes+1;
  end loop;

end main;