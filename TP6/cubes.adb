with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is
  i     : Integer;
begin
  i:=150;
  while i < 410 loop
    if Integer'Value(Integer'Image(i)(2)&"") * Integer'Value(Integer'Image(i)(2)&"") * Integer'Value(Integer'Image(i)(2)&"")
     + Integer'Value(Integer'Image(i)(3)&"") * Integer'Value(Integer'Image(i)(3)&"") * Integer'Value(Integer'Image(i)(3)&"")
     + Integer'Value(Integer'Image(i)(4)&"") * Integer'Value(Integer'Image(i)(4)&"") * Integer'Value(Integer'Image(i)(4)&"")
     = i then
     put(Integer'Image(i) & "=" & Integer'Image(i)(2) & "^3 + " & Integer'Image(i)(3) & "^3 + " & Integer'Image(i)(4) & "^3");
     new_line;
    end if;
    i:=i+1;
  end loop;
end main;