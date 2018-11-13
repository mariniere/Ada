with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is

    TAILLE : constant := 10000;

    type TRuban is array (1..TAILLE) of Character;

    Ruban : TRuban;
    k     : Integer;
    i     : Integer;


    procedure charger(r: in out TRuban) is
        i: Integer;
    begin
        i:=1;
        while i <= r'length loop
            r(i) := '*';
            i:=i+1;
        end loop;
    end charger;

    procedure poser(r: in out TRuban; x: in Integer) is
    begin
        if x >= 1 and x <= r'length then
            r(x) := '*';
        end if; 
    end poser;

    procedure enlever(r: in out TRuban; x: in Integer) is
    begin
        if x>=1 and x <= r'length then
            r(x) := '.';
        end if;
    end enlever;

    function estLibre(r: TRuban; x: Integer) return Boolean is
    begin
        if x>=1 and x <= r'length then
            return r(x) = '.';
        end if;
        return false;
    end estLibre;

    procedure afficher(r: TRuban; x: Integer) is
        i: Integer;
    begin
        i:=1;
        while i <= x loop
            put(r(i));
            i:=i+1;
        end loop;
    end afficher;

begin

    charger(Ruban);
    k:=2;
    while k <= TAILLE loop
        --put(Integer'Image(k) & " ");
        i:=2;
        while i*k <= TAILLE loop
            enlever(Ruban, i*k);
            i:=i+1;
        end loop;
        i:=2;
        
        -- Determiner le prochain k
        k:=k+1;
        while estLibre(Ruban, k) loop
            k:=k+1;
        end loop;

    end loop;
    afficher(Ruban, TAILLE);
    
end main;