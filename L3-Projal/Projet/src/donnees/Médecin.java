package donnees;

import java.sql.*;

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
			stmt.executeQuery("INSERT INTO MEDECIN(nom,prenom,id,mdp,mail) VALUES("+nom+","+prenom+","+id+","+mdp+","+mail+")");
	}
	
	private void checkFormat(String mail) {
		// TODO Auto-generated method stub
		
	}

	public static void main(String[] args) {
		int id = 1;
		String nom = "Mosca";
		String prenom = "Théo";
		String mail = "moscatheo13@gmail.com";
		String mdp = "balfos13";
		System.out.println("INSERT INTO MEDECIN(nom,prenom,id,mdp,mail) VALUES('"+nom+"','"+prenom+"',"+id+",'"+mdp+"','"+mail+"')");
	}
}
