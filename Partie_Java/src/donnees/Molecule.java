package donnees;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Molecule {
	private int id;
	private String nom;
	private List<String> conflits;
	private List<Medicament> meds;

	public Molecule(String nom, Statement stmt) throws SQLException{
		ResultSet res = stmt.executeQuery("SELECT ID_MOLEC FROM MOLECULE WHERE NOM_MOLEC = '"+nom+"'");
		res.next();
		this.nom = nom;
		conflits = new ArrayList<String>();
		meds = new ArrayList<Medicament>();
		id = res.getInt(1);
		createListMedicaments(stmt);
		createListConflits(stmt);
	}
	
	public String getNom() {
		return nom;
	}
	
	public void createListConflits(Statement stmt) throws SQLException{
		ResultSet result = null;
		result = stmt.executeQuery("SELECT CONFLIT FROM MOLECULE WHERE ('"+nom+"' = NOM_MOLEC) AND CONFLIT IS NOT NULL");
		while(result.next()) {
			conflits.add(result.getString(1));
		}
	}
	
	public void createListMedicaments(Statement stmt) throws SQLException{
		ResultSet result = null;
		result = stmt.executeQuery("SELECT NOM_MEDIC FROM MEDICAMENT WHERE ID_MOLEC = "+id);
		while(result.next()) {
			meds.add(new Medicament(result.getString(1),this));
		}
	}
	
	public List<String> getConflits() {
		return conflits;
	}

	public List<Medicament> getMedicaments() {
		return meds;
	}
	
	public int getId() {
		return id;
	}
}