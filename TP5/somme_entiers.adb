with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
  sum:Integer;
  lim:Integer;
begin
put("Quel est le nombre limite [1..?] ? :");
get(lim);
sum:=(lim*(lim+1)) / 2;
put_line("La somme = " & Integer'Image(sum));
end main;