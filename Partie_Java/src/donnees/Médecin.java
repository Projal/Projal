package donnees;

import java.sql.*;
import java.util.regex.Pattern;

public class Médecin {
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
	
	public Médecin(Statement stmt, int id, String mail, String mdp, String nom, String prenom) throws SQLException {
			this.id = id;
			this.nom = nom;
			this.prenom = prenom;
			checkFormat(mail);
			this.mail = mail;
			this.mdp = mdp;
			if(!medecinExistant(stmt, id))
				stmt.executeQuery("INSERT INTO MEDECIN VALUES("+id+",'"+nom+"','"+prenom+"','"+mdp+"','"+mail+"')");
	}
	
	private boolean checkFormat(String mail) {
		return Pattern.matches("[a-z0-9/._/-]+@[a-z]+/.[a-z]", mail);
	}

	public boolean medecinExistant(Statement stmt,int id) throws SQLException {
		if(stmt.executeQuery("SELECT id_medecin FROM MEDECIN where "+id+" = id_medecin").getInt(0) == id)
			return true;
		return false;
	}
	
	
	public boolean connectionMedecin(Statement stmt,int id, String mdp) throws SQLException{
		if(stmt.executeQuery("SELECT id_medecin FROM MEDECIN WHERE "+id+" = id_medecin").getInt(0) == id && 
				stmt.executeQuery("SELECT mdp FROM MEDECIN WHERE "+mdp+" = mdp").getString(1).equals(mdp))
			return true;
		return false;
	}
}
