with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings;
procedure main is 
  i:   Integer;
  lim: Integer;
begin
  lim:=0;
  put("Veuillez entrer le nb d'étoiles à afficher : ");
  get(lim);
  while lim > 50 or lim < 1 loop
    put("Erreur - valeur autorisée [1, 50] - entrer le nb d'étoiles à afficher :");
    get(lim);
  end loop;
  while i <= lim loop
    put("*");
    i:=i+1;
  end loop;
end main;