package connection;

import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import algorithme.Algorithme;

//We import java.io to be able to read from the command line
import java.io.*;

import oracle.jdbc.pool.OracleDataSource;
import donnees.*;
class RecupTest {
	
	public static void main (String args []) throws SQLException, IOException, ParseException {
		OracleDataSource ods = new OracleDataSource();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rset = null;

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		ods.setURL(url);
		ods.setUser("mosca");
		ods.setPassword("azerty");
		conn = ods.getConnection();
		
	    try
	    {
	          // Query
	        stmt = conn.createStatement();
	        Medecin medecin = new Medecin(stmt,2);
	        List<Traitement> traits = medecin.getTraitementPatient(stmt,medecin.getPatients(stmt).get(0));
	        for(Traitement trait : traits) {
	        	System.out.println("Traitement du : "+Traitement.formaterDate(trait.getDateD())+" au "+Traitement.formaterDate(trait.getDateF())+" : "+trait.getMaladie(stmt));
	        	for(Medicament med : trait.getListMedicaments())
	        		System.out.println("	- "+med.getNom());
	        }
	    }
	          //Close the result set, statement, and the connection

	    finally{
	          if(rset!=null) rset.close();
	          if(stmt!=null) stmt.close();
	          if(conn!=null) conn.close();
	    }
	       } 
	
}