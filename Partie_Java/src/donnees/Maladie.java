package donnees;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Maladie {
	private int id;
	private String nom;
	private List<Molecule> molecules;
	
	public Maladie(Statement stmt, String nom) throws SQLException {
		this.nom = nom;
		ResultSet res = stmt.executeQuery("SELECT ID_MALADIE FROM MALADIE WHERE NOM_MALADIE = '"+nom+"'");
		res.next();
		List<String> list = new ArrayList<String>();
		id = res.getInt(1);
		molecules = new ArrayList<Molecule>();
		res = stmt.executeQuery("SELECT NOM_MOLEC FROM MOLECULE mol,SOIGNE so WHERE mol.ID_MOLEC = so.ID_MOLEC AND ID_MALADIE = "+id);
		while(res.next()){
			list.add(res.getString(1));
		}
		for(String molec : list)
			molecules.add(new Molecule(molec,stmt));
	}
	
	public String getNom() {
		return nom;
	}
	public List<Molecule> getMolecule() {
		return molecules;
	}
}