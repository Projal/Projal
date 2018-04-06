package donnees;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class Medecin {
	private String nom;
	private String prenom;
	private String mail;
	private String mdp;
	private int id;
	
	public int getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public String getMail() {
		return mail;
	}

	public String getMdp() {
		return mdp;
	}
	
	public Medecin(Statement stmt, int id, String mail, String mdp, String nom, String prenom) throws SQLException {
			this.id = id;
			this.nom = nom;
			this.prenom = prenom;
			checkFormat(mail);
			this.mail = mail;
			this.mdp = mdp;
			if(!medecinExistant(stmt, id))
				stmt.executeUpdate("INSERT INTO MEDECIN VALUES("+id+",'"+nom+"','"+prenom+"','"+mdp+"','"+mail+"')");
	}
	
	
	public Medecin(Statement stmt, int id) throws SQLException{
		this.id = id;
		ResultSet res = stmt.executeQuery("SELECT NOM, PRENOM, MDP, MAIL FROM MEDECIN WHERE ID_MEDECIN = "+id);
		res.next();
		nom = res.getString(1);
		prenom = res.getString(2);
		mdp = res.getString(3);
		mail = res.getString(4);
	}
	
	
	private boolean checkFormat(String mail) {
		return Pattern.matches("[a-z0-9/._/-]+@[a-z]+/.[a-z]", mail);
	}

	public boolean medecinExistant(Statement stmt,int id) throws SQLException {
		ResultSet result = stmt.executeQuery("SELECT id_medecin FROM MEDECIN where "+id+" = id_medecin");
		if(result.next()) {
			if(result.getInt(1) == id)
				return true;
			return false;
		}
		return false;
	}
	
	public void prescription(int id_pat, int id_trait, Statement stmt) throws SQLException{
		stmt.executeUpdate("INSERT INTO PRESCRIT VALUES ("+id+","+id_pat+","+id_trait+")");
	}
	
	public boolean connectionMedecin(Statement stmt,int id, String mdp) throws SQLException{
		if(stmt.executeQuery("SELECT id_medecin FROM MEDECIN WHERE "+id+" = id_medecin").getInt(0) == id && 
				stmt.executeQuery("SELECT mdp FROM MEDECIN WHERE "+mdp+" = mdp").getString(1).equals(mdp))
			return true;
		return false;
	}
	
	public List<Patient> getPatients(Statement stmt) throws SQLException {
		List<Patient> patients = new ArrayList<Patient>();
		ResultSet resId = stmt.executeQuery("SELECT DISTINCT ID_PATIENT FROM PRESCRIT WHERE ID_MEDECIN = "+this.id);
		List<Integer> ids = new ArrayList<Integer>();
		ResultSet resPat;
		while(resId.next()) {
			ids.add(resId.getInt(1));
		}
		for(Integer id : ids) {
			resPat = stmt.executeQuery("SELECT * FROM PATIENT WHERE ID_PATIENT = "+id);
			while(resPat.next())
				patients.add(new Patient(resPat.getInt(1),resPat.getString(2),resPat.getString(3),resPat.getInt(4)));
		}
		return patients;
	}
	
	public List<Traitement> getTraitementPatient(Statement stmt, Patient pat) throws SQLException {
		List<Traitement> traitements = new ArrayList<Traitement>();
		ResultSet resId = stmt.executeQuery("SELECT DISTINCT ID_TRAIT FROM PRESCRIT WHERE ID_MEDECIN = "+this.id+" AND ID_PATIENT = "+pat.getId());
		List<Integer> ids = new ArrayList<Integer>();
		ResultSet resTrait;
		while(resId.next()) {
			ids.add(resId.getInt(1));
		}
		for(Integer id : ids) {
			traitements.add(new Traitement(stmt,id));
		}
		return traitements;
	}
}
