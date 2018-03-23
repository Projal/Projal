package donnees;

import java.util.Date;
import java.util.List;

public class Traitement {
	Date dateD;
	Date dateF;
	List<Medicament> medicaments;
	
	public Date getDateD() {
		return dateD;
	}
	
	public Date getDateF() {
		return dateF;
	}
	
	public void setDateF(Date dateF) {
		this.dateF = dateF;
	}
	
	public List<Medicament> getListMedicaments() {
		return medicaments;
	}
	
	public Traitement(Date dateD, Date dateF, List<Medicament> medicaments) {
		this.dateD = dateD;
		this.dateF = dateF;
		this.medicaments = medicaments;
	}
}
