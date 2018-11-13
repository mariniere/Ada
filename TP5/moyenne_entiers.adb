with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure main is
  i: Float;
  moy:Float;
  lim:Float;
begin
i:=0.0;
moy:=0.0;
put("Quel est le nombre limite [1..?] ? :");
get(lim);
while i <= lim loop
  moy:=moy+i;
  i:=i+1.0;
end loop;
put("La somme = " );
put(moy, 0, 0, 0);
new_line;
if moy /= 0.0 then
  put("La moyenne = ");
  put(moy/lim, 0, 0, 0);
else
  put("La moyenne ne peut pas être calculée car N = 0");
end if;
end main;