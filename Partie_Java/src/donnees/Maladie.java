package donnees;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class Maladie {
	private String nom;
	private List<Molecule> molecule;
	
	public Maladie(Statement stmt, String nom, List<Molecule> molecule) throws SQLException {
		this.nom = nom;
		this.molecule = molecule;
		if(!maladieExistante(stmt, nom)) {
			stmt.executeQuery("INSERT INTO Maladie VALUES(id_maladie.nextval,'"+nom+"')");
		}
	}
	
	public String getNom() {
		return nom;
	}
	public List<Molecule> getMolecule() {
		return molecule;
	}
	
	public boolean maladieExistante(Statement stmt, String nom_maladie) throws SQLException {
		ResultSet result = stmt.executeQuery("SELECT NOM_MALADIE FROM MALADIE WHERE NOM_MALADIE = '" +nom_maladie+ "'");
		if(result.next()){
		if(result.getString(1).equals(nom_maladie))
			return true;
		return false;
		}
		return false;
	}
}
