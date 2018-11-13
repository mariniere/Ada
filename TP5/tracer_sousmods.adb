with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
  etoiles: Integer;
  espaces: Integer;

  procedure line (len: in Integer; c: in String) is
    i: Integer;
  begin
    i:=0;
    while i < len loop
      put(c);
      i:=i+1;
    end loop;
  end line;

  procedure demande(
    q, err_q: in String;
    low, hi: in Integer;
    oddcheck: in Boolean;
    var: out Integer
  ) is begin
    put(q);
    get(var);
    if not oddcheck then
      while (var > hi or var < low) loop
        put(err_q);
        get(var);
      end loop;
    else
      while (var > hi or var < low or var mod 2 = 0) loop
        put(err_q);
        get(var);
      end loop;
    end if;
  end;

begin
  demande(
    "Veuillez entrer le nb d'espaces à afficher sur la première ligne: ",
    "Erreur - valeur autorisée [1, 10] - entrer le nb d'espaces à afficher sur la première ligne: "
    ,1, 10, FALSE, espaces
  );
  demande(
    "Veuillez entrer le nb d'étoiles à afficher sur la première ligne: ",
    "Erreur - valeur autorisee [1, 19] et impaire - entrer le nb d'étoiles à afficher: "
    ,1, 19, TRUE, etoiles
  );

  while espaces <= (espaces+etoiles) loop

    line(espaces, " ");
    line(etoiles, "*");
    new_line;
    espaces := espaces + 1;
    etoiles := etoiles - 2;

  end loop;
end main;