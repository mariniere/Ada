with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
  i: Integer;
begin
i:=50;
while i <= 100 loop
  if i mod 2 = 0 then
    put_line(Integer'Image(i));
  end if;
  i:=i+1;
end loop;
end main;