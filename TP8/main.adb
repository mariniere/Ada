with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is
  
  BLANC  : constant character := 'B'; -- Mouton blanc
  NOIR   : constant character := 'N'; -- Mouton noir
  TROU   : constant character := '.'; -- Case vide

  TAILLE : constant := 7;   -- Taille terrain de jeu

  type Tjeu is array(1..TAILLE) of character;

  jeu     : Tjeu;
  x       : Integer;


  procedure initialiserJeu(j:in out Tjeu) is
    i: Integer;
  begin
    i:=1;
    while i <= TAILLE loop
      if i > (TAILLE/2)+1 then
        j(i) := NOIR;
      else
        j(i) := TROU;
      end if;
      if i < (TAILLE/2)+1 then
        j(i) := BLANC;
      end if;
      i:=i+1;
    end loop;
  end initialiserJeu;

  procedure afficherJeu(j:in Tjeu; pos: in Boolean) is
    i: Integer;
  begin
    i:=1;
    put(" ");
    while i <= TAILLE loop
      if pos then
        if j(i) /= TROU then
          put(i,0); put(" ");
        end if;
      else
        put(j(i)); put(" ");
      end if;
      i:=i+1;
    end loop;
  end afficherJeu;

  function valeurDeplacement(j: in Tjeu; x: in Integer) return Integer is
    i: Integer;
    mult: Integer;
    nxt : Integer;
    found: Boolean;
  begin

    mult:=1;
    found:=false;
  
    if not (x > 0 and x <= TAILLE) then
      return 0;
    end if;

    if j(x) = TROU then
      return 0;
    end if;

    if j(x) = NOIR then
      mult:=-1;
    end if;

    i:=1;
    while i <= 2 and not found loop
      nxt:=x+(i*mult);
      if (nxt >= 1 and nxt <= TAILLE) then
        if j(nxt) = TROU then
          found:=true;
        end if;
      end if;
      i:=i+1;
    end loop;

    if not found then
      i:=0;
    end if;

    if i /= 0 then
      i:=i-1;
    end if;

    return i*mult;
  end valeurDeplacement;

  function estMobile(j: in Tjeu; pos: in Integer) return Boolean is 
  begin
    return valeurDeplacement(j, pos) /= 0;
  end estMobile;

  procedure deplacerPion(j: in out Tjeu; pos: in Integer) is
  begin
    if estMobile(j, pos) then 
      j(pos+valeurDeplacement(j, pos)) := j(pos);
      j(pos) := TROU;
    end if;
  end deplacerPion;

  function estBloque(j: in Tjeu) return Boolean is
    i: Integer;
    cond: Boolean;
  begin
    i:=1;
    cond:=true;
    while i <= TAILLE loop
      cond := (cond and (not estMobile(j, i)) );
      i:=i+1;
    end loop;
    return cond;
  end estBloque;
  
  function estGagnant(j: in Tjeu) return Boolean is
    g: Tjeu;
    i: Integer;
  begin
    i:=1;
    while i <= TAILLE loop
      if i > 4 then
        g(i) := BLANC;
      else
        g(i) := TROU;
      end if;
      if i < 4 then
        g(i) := NOIR;
      end if;
      i:=i+1;
    end loop;
    return j=g;
  end estGagnant;

  procedure lirePosition(j: in Tjeu; pos: out Integer) is
    
    x: Integer;

    procedure invite(x:in out Integer) is
    begin
      new_line;
      put_line("Entrez pos du mouton à déplacer");
      put("(Positions valides: "); afficherJeu(j, true); put_line(")");
      put("--> ");
      get(x);
    end invite;

  begin
    x:=1;
    invite(x);
    while j(x) = TROU loop
      new_line; put("[Erreur: Position invalide]");
      invite(x);
    end loop;
    pos := x;
  end lirePosition;

  procedure clearScreen is 
    i: Integer;
  begin
    i:=1;
    while i<=70 loop
      new_line;
      i:=i+1;
    end loop;
  end clearScreen;

  procedure afficherNombres is
    i: Integer;
  begin
    i:=1;
    while i<=TAILLE loop
      put(Integer'Image(i));
      i:=i+1;
    end loop;
  end afficherNombres;

  procedure multput(c: in Character; n: in Integer) is
    i: Integer;
  begin
    i:=1;
    while i <= n loop
      put(c);
      i:=i+1;
    end loop;
  end multput;

begin
  new_line;
  initialiserJeu(jeu);
  clearScreen;
  while not estGagnant(jeu) and not estBloque(jeu) loop
    multput('-', (TAILLE*2)+1); new_line;
    afficherJeu(jeu, false); new_line;
    afficherNombres; new_line;
    multput('-', (TAILLE*2)+1);
    lirePosition(jeu, x);
    deplacerPion(jeu, x); new_line;
    clearScreen;
  end loop;
  afficherJeu(jeu, false); new_line;
  if estGagnant(jeu) then
    put("Tout les moutons sont en place"); new_line;
    put("You win!");
  else
    put("Le jeu est bloqué!"); new_line;
    put("Game over!");
  end if;
  -- Mouvements pour gagner:
  -- 3, 5, 6, 4, 2, 1, 3, 5, 7, 6, 4, 2, 3, 5, 4
end main;