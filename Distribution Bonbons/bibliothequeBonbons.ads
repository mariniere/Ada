
package bibliothequeBonbons is
	-- distribuer un bonbon à l’enfant courant
	procedure distribuerUnBonbonALEnfant;
	
	-- termine la distribution des bonbons à l’enfant précédent s’il existe et passe à l’enfant suivant s’il existe. L’action est sans effet s’il n’y a plus d’enfant concerné par la distribution. Lorsque la distribution n’a pas débuté, cette action permet de sélectionner le premier enfant s’il existe. Attention, on ne peut pas revenir en arrière et reprendre les bonbons déjà donnés...
	procedure passerALEnfantSuivant ;

end bibliothequeBonbons;