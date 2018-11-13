with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is
  i     : Integer;
begin
  i:=0;
  while i <= 9 loop
    put("9x" & Integer'Image(i) & "= " & Integer'Image(i) & Integer'Image(9-i));
    new_line;
    i:=i+1;
  end loop;

end main;