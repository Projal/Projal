package donnees;

import java.util.List;

public class Patient {
	private String nom;
	private String prenom;
	private int categorieAge;
	private int id;
	private List<ContreIndication> contreIndications;
	private List<Traitement> traitements;
	
	public String getNom() {
		return nom;
	}
	public String getPrenom() {
		return prenom;
	}
	
	public int getCategorieAge() {
		return categorieAge;
	}
	public void setCategorieAge(int categorieAge) {
		this.categorieAge = categorieAge;
	}
	
	public int getId() {
		return id;
	}
	public List<ContreIndication> getContreIndications() {
		return contreIndications;
	}
	public List<Traitement> getTraitements() {
		return traitements;
	}
	
	public boolean addContreIndication(ContreIndication newContreIndication) {
		return contreIndications.add(newContreIndication);
	}
	
	public boolean removeContreIndication(String nomContreIndication) {
		for(ContreIndication contreIndication : contreIndications)
			if(contreIndication.getNom() == nomContreIndication){
				contreIndications.remove(contreIndication);
				return true;
			}
		return false;
	}
	
	public boolean addTraitement(Traitement newTraitement) {
		return traitements.add(newTraitement);
	}
}
