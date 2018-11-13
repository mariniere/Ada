with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is
  i     : Integer;
  res   : Integer;
begin
  i:=1;
  while i <= 10 loop

    res:=9*i;
    put("9 x" & Integer'Image(i) & " = " & Integer'Image(res));
    put(" [ ");
    if i /= 1 then
      put(Integer'Image(res)(3) & " + ");
    end if;
    put(Integer'Image(res)(2));
    put(" = 9 ]");
    new_line;
    i:=i+1;
  end loop;

end main;