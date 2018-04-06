package donnees;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ContreIndication {
	private int id_contr;
	private String nom;
	
	public ContreIndication(Statement stmt, int id_contr, String nom) throws SQLException {
		this.id_contr = id_contr;
		this.nom = nom;
		if(!contreIndicExistante(stmt, nom)) {
			stmt.executeUpdate("INSERT INTO Contre_Indication VALUES(id_contr.nextval,'"+nom+"')");
		}
	}
	
	public ContreIndication(Statement stmt, String nom) throws SQLException{
		this.nom = nom;
		ResultSet res = stmt.executeQuery("SELECT ID_CONTR FROM CONTRE_INDICATION WHERE NOM_CONTR = '"+nom+"'");
		if(res.next())
			id_contr = res.getInt(1);
	}
	
	public String getNom() {
		return nom;
	}

	public boolean contreIndicExistante(Statement stmt, String nom) throws SQLException {
		ResultSet result = stmt.executeQuery("SELECT NOM_CONTR FROM Contre_Indication WHERE NOM_CONTR = '"+nom+"'");
		if(result.next())
			return true;
		return false;
	}
	
	public void estAssocie(int id_pat, Statement stmt) throws SQLException{
		stmt.executeUpdate("INSERT INTO ESTASSOCIE VALUES ("+id_contr+","+id_pat+")");
	}
	
	public void concerne(int id_molec, Statement stmt) throws SQLException{
		stmt.executeUpdate("INSERT INTO CONCERNE VALUES ("+id_molec+ ", " +id_contr+")");
	}
}