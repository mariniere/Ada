with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is
    i: Integer;
    o: Integer;
    d: Integer;
begin
    i:=5;
    o:=2;
    d:=i/o;
    put(d,0);
end main;