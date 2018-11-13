with Traceur; use Traceur;

procedure main is 

  longPCarre : Integer; -- longueur d'un côté d'un petit carré
  longGCarre : Integer; -- longueur d'un côté d'un grand carré
  cCarre     : Integer; -- compteur de côtés tracés d'un carré
  cCarres    : Integer; -- compteur de carrés tracés
begin

  -- Initialiser position et état stylet
    initialiserTraceur;
    leverStylet;
    centrerStylet;
    orienterNord;

  -- Init variables
    longPCarre := 20;
    longGCarre := 70;
    cCarre     := 0;
    cCarres    := 0;

  function Deplacer(unites: Integer;) return Integer;
    cDepl : Integer;
  begin
    while cDepl /= unites loop
      deplacerStylet;
      cDepl := cDepl + 1
    end loop;
  end Deplacer;
  

  -- Tracer un carré intérieur
  pivoterDroite;
  while cCarres < 3 loop
    baisserStylet;
    while cCarre < 3 loop
      Deplacer(longPCarre);
      pivoterGauche;
    end loop;
    cCarre := 0;
    -- Préparation pour tracer carré suivant
    leverStylet;
    pivoterDroite;
    Deplacer(longPCarre/2);
    cCarres := cCarres+1;
  end loop;

  -- Positionement pour tracage carré extérieur
  deplacerStylet(longPCarre*2);
  pivoterGauche;
  deplacerStylet(longPCarre*1.5);
  baisserStylet;

  -- Tracer carré extérieur
  while cCarre < 3 loop
    pivoterGauche;
    Deplacer(longGCarre);
    cCarre := cCarre+1;
  end loop;


end main;