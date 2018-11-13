with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
  i: Integer;
  entree: Integer;
  lues: Integer;
begin
lues := 0;
entree:=-99;
put("Veuillez entrer la valeur d'arrêt: ");
get(i);
put_line("Veuillez entrer la liste des valeurs a compter. Saiser"&Integer'Image(i) &" pour stopper la saisie.");
put_line("Validez apres chaque valeur saisie.");
while entree /= i loop
  get(entree);
  if entree /= i then
    lues:=lues+1;
  end if;
end loop;
put("Nb d'entiers lus = " & Integer'Image(lues));
end main;
