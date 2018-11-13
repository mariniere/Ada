
package bibliothequeBonbons is
	-- distribuer un bonbon � l�enfant courant
	procedure distribuerUnBonbonALEnfant;
	
	-- termine la distribution des bonbons � l�enfant pr�c�dent s�il existe et passe � l�enfant suivant s�il existe. L�action est sans effet s�il n�y a plus d�enfant concern� par la distribution. Lorsque la distribution n�a pas d�but�, cette action permet de s�lectionner le premier enfant s�il existe. Attention, on ne peut pas revenir en arri�re et reprendre les bonbons d�j� donn�s...
	procedure passerALEnfantSuivant ;

end bibliothequeBonbons;