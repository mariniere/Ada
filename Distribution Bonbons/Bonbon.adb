with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings; 
with Ada.Strings.Fixed; use Ada.Strings.Fixed; 
with bibliothequeBonbons; use bibliothequeBonbons;
procedure DistribBonbons is

nbEnfants: Integer; -- donne le nombre d'enfants
nbBonbons: Integer; -- donne le nombre des bonbons
compteurBonbon: Integer; -- garde en mémoire le nombre de bonbons distribués
compteurEnfant: Integer; -- garde en mémoire le nb d'enfants auxquels bonbons on été distribués
bonbonsParEnfant: Integer; -- nombre de bonbons à distribuer par enfant

function To_String(I: Integer) return String is
begin
  return Ada.Strings.Fixed.Trim(Integer'Image(I), Ada.Strings.Left);
end To_String;

begin
  put("Combien de bonbons est-ce qu'on possède? ");
  get(nbBonbons);
  put("A combien d'enfants distribuer les bonbons? ");
  get(nbEnfants);
  compteurBonbon := 0; compteurEnfant := 1;
  passerALEnfantSuivant;
  bonbonsParEnfant := nbBonbons / nbEnfants;
  while compteurEnfant < nbEnfants loop
    --put_line("Enfant n°" & 
    --  To_String(compteurEnfant) & 
    --  " +" & To_String(bonbonsParEnfant) & " bonbons"
    --);
    --nbBonbons := nbBonbons - bonbonsParEnfant;
    distribuerUnBonbonALEnfant;
    passerALEnfantSuivant;
    new_line;
    compteurEnfant := compteurEnfant+1;
  end loop;
  new_line;
  put_line("Il reste " & To_String(nbBonbons) & " bonbons.");
end DistribBonbons;