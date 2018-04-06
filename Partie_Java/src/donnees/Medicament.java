package donnees;
import java.sql.*;

public class Medicament{
	private String nom;
	private Molecule molecule;
	private Maladie maladie;
	
	public Medicament(Statement stmt, String nom) throws SQLException{
		if(!medicamentExistant(stmt, nom)) {
			System.out.println("ERREUR: Medicament non existant");
			return;
		}
		ResultSet resmol = stmt.executeQuery("SELECT NOM_MOLEC FROM MOLECULE mol, MEDICAMENT med WHERE NOM_MEDIC = '"+nom+"' AND mol.ID_MOLEC = med.ID_MOLEC");
		resmol.next();
		molecule = new Molecule(resmol.getString(1),stmt);
		ResultSet resmal = stmt.executeQuery("SELECT NOM_MALADIE FROM MALADIE mal, SOIGNE so WHERE so.ID_MOLEC = "+molecule.getId()+
				" AND so.ID_MALADIE = mal.ID_MALADIE");
		this.nom = nom;
		resmal.next();
		maladie = new Maladie(stmt,resmal.getString(1));
		
	}
	
	public Medicament(String nom, Molecule molecule) {
		this.nom = nom;
		this.molecule = molecule;
	}
	
	public String getNom() {
		return nom;
	}
	
	public Molecule getMolecule() {
		return molecule;
	}
	
	public Maladie getMaladie() {
		return maladie;
	}
	
	public boolean medicamentExistant(Statement stmt, String nom) throws SQLException {
		ResultSet result = stmt.executeQuery("SELECT NOM_MEDIC FROM MEDICAMENT WHERE NOM_MEDIC = '" +nom+ "'");
		if(result.next())
			return true;
		return false;
	}
}