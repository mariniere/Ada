with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is
  i     : Integer;
  intIn : Integer;
  max   : Integer;
begin

  put("Quel est le nombre à traiter? : ");
  get(intIn);
  i:=0;
  max:= Integer'Image(intIn)'length;
  while i < max loop
    put(Integer'Image(intIn)(max-i));
    i:=i+1;
  end loop;
end main;