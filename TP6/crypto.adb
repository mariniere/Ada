with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure main is
  s   : String(1..50);
  key : Integer range 1..50;

begin

  put("Donner le message à crypter: "); get_line(s);
  --put("Donner la clé de cryptage: "); get_line(key);



end main;