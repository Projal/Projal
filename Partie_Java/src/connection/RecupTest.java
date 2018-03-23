package connection;

import java.sql.*;

//We import java.io to be able to read from the command line
import java.io.*;

import oracle.jdbc.pool.OracleDataSource;

import donnees.Médecin;;

class RecupTest {
	
	public static void main (String args []) throws SQLException, IOException {
		OracleDataSource ods = new OracleDataSource();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rset = null;

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		ods.setURL(url);
		ods.setUser("mosca");
		ods.setPassword("azerty");
		conn = ods.getConnection();
		
	    // Connect to the database
	    // You can put a database name after the @ sign in the connection URL.

	    try
	    {
	          // Query the employee names 
	          stmt = conn.createStatement ();
	          stmt.executeQuery("DELETE FROM MEDECIN WHERE PRENOM = 'michel'");
	          Médecin med = new Médecin(stmt,16,"michelmiche@gmail.com","modepas","MICHEL","Michel");
	          Médecin med2 = new Médecin(stmt,16,"michelmiche@gmail.com","modepas","MICHEL","Michel");
	          rset = stmt.executeQuery ("SELECT ID, NOM, PRENOM, MDP, MAIL FROM Medecin");
	          
	          // Print the name out 
	          while (rset.next())
	             System.out.println (rset.getString(1) + "  " + rset.getString (2) 
	             	+ "  " + rset.getString (3) + "  " + rset.getString (4) + "  " + rset.getString (5));
	        }

	          //Close the result set, statement, and the connection

	    finally{
	          if(rset!=null) rset.close();
	          if(stmt!=null) stmt.close();
	          if(conn!=null) conn.close();
	    }
	       } 
	
}