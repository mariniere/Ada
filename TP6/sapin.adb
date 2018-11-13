with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is
  etoiles: Integer;
  espaces: Integer;
  i      : Integer;

  procedure line (len: in Integer; c: in String) is
    i: Integer;
  begin
    i:=0;
    while i < len loop
      put(c);
      i:=i+1;
    end loop;
  end line;

  procedure demande(
    q, err_q: in String;
    low, hi: in Integer;
    limites: in Boolean;
    oddcheck: in Boolean;
    var: out Integer
  ) is begin
    put(q);
    get(var);
    if not oddcheck then
      if limites then 
        while (var > hi or var < low) loop
          put(err_q);
          get(var);
        end loop;
      end if;
    else
      if limites then 
        while (var > hi or var < low or var mod 2 = 0) loop
          put(err_q);
          get(var);
        end loop;
      else
        while (var mod 2 = 0) loop
          put(err_q);
          get(var);
        end loop;
      end if;
    end if;
  end;

begin
  demande(
    "Donner le nombre d'espaces : ", ""
    ,0, 0, FALSE, FALSE, espaces
  );
  demande(
    "Donner le nombre d'etoiles : ", ""
    ,1, 19, FALSE, FALSE, etoiles
  );
  i:=1;
  if (etoiles mod 2 = 0) then
    i:=2;
  end if;

  while i <= etoiles loop

    line(espaces-i, " ");
    line(i, "*");
    new_line;
    i:=i+2;
    espaces:=espaces+1;
  end loop;
end main;