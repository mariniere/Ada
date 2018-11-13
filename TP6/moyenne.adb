with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is

type Ttab is array(0..50) of Integer;

  i     : Integer;
  intIn : Integer;
  tab   : Ttab; 
  n     : Integer;
  moy   : Integer;
begin
  n:=0;
  moy:=0;
  put("Veuillez entrer la valeur d'arrêt: ");
  get(i);
  put_line("Veuillez entrer la liste des valeurs a compter. Saisir"&Integer'Image(i) &" pour stopper la saisie.");
  put_line("Validez apres chaque valeur saisie.");
  get(intIn);
  while intIn /= i loop
    moy:=moy+intIn;
    tab(n) := intIn;
    get(intIn);
    n:=n+1;
  end loop;
  put("Somme = " & Integer'Image(moy));
  new_line;
  put("Moyenne = ");
  put(moy/n, 0);

  i:=1;
  new_line;
  put("Nombres en dessous de la moyenne ("); put(moy/n, 0); put("): ");
  new_line;
  while i < n loop
    if tab(i) < (moy/n) then
      put(Integer'Image(tab(i)) & " ");
    end if;
    i:=i+1;
  end loop; 

end main;