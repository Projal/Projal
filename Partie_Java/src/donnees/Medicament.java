package donnees;
import java.sql.*;

public class Medicament extends Molecule{
	private String nom;
	private Molecule molecule;
	
	public Medicament(String nom, Molecule molecule){
		this.nom = nom;
		this.molecule = molecule;
		//stmt.executeQuery("INSERT INTO MEDICAMENTS(nom, molecule) VALUES("+nom+", "+molecule+")");
	}
	
	public String getNom() {
		return nom;
	}
	public Molecule getMolecule() {
		return molecule;
	}
}