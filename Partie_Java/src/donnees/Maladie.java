package donnees;

import java.util.List;

public class Maladie {
	private String nom;
	private List<Molecule> molecule;
	
	public Maladie(String nom, List<Molecule> molecule) {
		this.nom = nom;
		this.molecule = molecule;
	}
	
	public String getNom() {
		return nom;
	}
	public List<Molecule> getMolecule() {
		return molecule;
	}
}