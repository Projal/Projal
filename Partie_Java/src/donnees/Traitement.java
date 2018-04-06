package donnees;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Traitement {
	int id;
	Date dateD;
	Date dateF;
	List<Medicament> medicaments;
	int id_maladie;
	
	public Date getDateD() {
		return dateD;
	}
	
	public Date getDateF() {
		return dateF;
	}
	
	public void setDateF(Date dateF) {
		this.dateF = dateF;
	}
	
	public String getMaladie(Statement stmt) throws SQLException {
		ResultSet res = stmt.executeQuery("SELECT NOM_MALADIE FROM MALADIE WHERE ID_MALADIE = "+id_maladie);
		res.next();
		return res.getString(1);
	}
	
	public void createListMedicament(Statement stmt, List<String> nomMedicament) throws SQLException{
		ResultSet result = null;
		for(String medoc : nomMedicament){
			result = stmt.executeQuery("SELECT me.ID_MEDIC FROM MEDICAMENT WHERE NOM_MEDIC = '"+medoc+"'");
			result.next();
			medicaments.add(new Medicament(stmt, medoc));
			stmt.executeUpdate("INSERT INTO ESTCONSTITUE VALUES ("+this.id+","+result.getInt(1)+")");
		}	
	}
	
	public void recupListMedicaments(Statement stmt) throws SQLException{
		ResultSet resId = stmt.executeQuery("SELECT ID_MEDIC FROM ESTCONSTITUE WHERE ID_TRAIT = "+id);
		List<Integer> ids = new ArrayList<Integer>();
		ResultSet resMed;
		List<String> meds = new ArrayList<String>();
		while(resId.next()) {
			ids.add(resId.getInt(1));
		}
		for(Integer id : ids) {
			resMed = stmt.executeQuery("SELECT * FROM MEDICAMENT WHERE ID_MEDIC = "+id);
			while(resMed.next())
				meds.add(resMed.getString(2));
			for(String med : meds)
				medicaments.add(new Medicament(stmt,med));
		}
	}
	
	public static String formaterDate(Date date) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String d = sdf.format(date);
		return d;
	}
	
	public List<Medicament> getListMedicaments() {
		return medicaments;
	}
	
	public Traitement(Date dateD, Date dateF, List<String> nom_medics, int id_maladie, Statement stmt) throws SQLException, ParseException{
		
		this.dateD = dateD;
		this.dateF = dateF;
		this.medicaments = new ArrayList<Medicament>();
		this.id_maladie = id_maladie;
		stmt.executeUpdate("INSERT INTO TRAITEMENT VALUES (ID_TRAIT.nextval,'"+formaterDate(dateD)+"','"+formaterDate(dateF)+"',"+id_maladie+")");
		ResultSet rset;
		rset = stmt.executeQuery("SELECT ID_TRAIT FROM TRAITEMENT WHERE ID_TRAIT = (SELECT MAX(ID_TRAIT) FROM TRAITEMENT)");
		rset.next();
		id = rset.getInt(1);
		createListMedicament(stmt, nom_medics);
	}
	
	public Traitement(Statement stmt, int id) throws SQLException {
		this.id = id;
		this.medicaments = new ArrayList<Medicament>();
		ResultSet res = stmt.executeQuery("SELECT * FROM TRAITEMENT WHERE ID_TRAIT = "+id);
		res.next();
		dateD = new Date(res.getDate(2).getTime());
		dateF = new Date(res.getDate(3).getTime());
		id_maladie = res.getInt(4);
		recupListMedicaments(stmt);
	}

	public boolean fini() {
		return dateF.before(new Date(System.currentTimeMillis()));
		
	}
}
