with bibliothequeBonbons;
with Text_IO; use Text_IO; 

package body bibliothequeBonbons is

	compteurEnfant : Integer := 0;

	procedure distribuerUnBonbonALEnfant 
	is
	begin
		
		put_line("On distribue un bonbon a l'enfant ");
	end distribuerUnBonbonALEnfant;
	
	
	procedure passerALEnfantSuivant
	is
	begin
		compteurEnfant := compteurEnfant + 1;
		if (compteurEnfant = 1) then
			put_line("On passe au 1er enfant");
		else
			put_line("On passe au "& Integer'image(compteurEnfant) & " enfant, s'il existe");
		end if;
		
	end passerALEnfantSuivant;


end bibliothequeBonbons;