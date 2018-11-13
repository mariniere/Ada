with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
  etoiles: Integer;
  espaces: Integer;
  i:       Integer;
begin
  put("Veuillez entrer le nb d'espaces à afficher sur la première ligne: ");
  get(espaces);
  put("Veuillez entrer le nb d'étoiles à afficher sur la première ligne: ");
  get(etoiles);
  i:=0;
  while espaces <= (espaces+etoiles) loop

    while i <= (espaces) loop
      put(" ");
      i:=i+1;
    end loop;
    i:=0;

    while i < etoiles loop
      put("*");
      i:=i+1;
    end loop;
    i:=0;

    new_line;

    espaces := espaces + 1;
    etoiles := etoiles - 2;

  end loop;
end main;