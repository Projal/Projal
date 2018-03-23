package donnees;

import java.util.ArrayList;
import java.util.List;

public class Molecule {
	private String nom;
	private List<Molecule> conflits;

	public Molecule(String nom) {
		this.nom = nom;
		conflits = new ArrayList<Molecule>();
	}
	
	public String getNom() {
		return nom;
	}
	public List<Molecule> getConflits() {
		return conflits;
	}
}