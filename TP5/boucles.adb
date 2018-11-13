with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
  i: Integer;
begin
i:=50;
while i <= 100 loop
  put_line(Integer'Image(i));
  i:=i+1;
end loop;
end main;