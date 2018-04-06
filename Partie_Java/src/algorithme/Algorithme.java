package algorithme;
import java.util.ArrayList;
import java.util.List;

import donnees.*;

public class Algorithme {
	
	public static List<Medicament> verification(Patient patient, Medicament medicament) {
		List<Medicament> res = new ArrayList<Medicament>();
		if(estConflit(patient, medicament.getMolecule())) {
			res.addAll(solution(patient,medicament.getMaladie()));
			}
		else {
			res.add(medicament);
		}
		return res;
	}

	private static List<Medicament> solution(Patient patient, Maladie maladie) {
		List<Medicament> resultat = new ArrayList<Medicament>();
		for(Molecule mol : maladie.getMolecule()) {
			if(!estConflit(patient, mol))
				resultat.addAll(mol.getMedicaments());
		}
		return resultat;
	}

	private static boolean estConflit(Patient patient, Molecule molecule) {
		for(ContreIndication contrInd : patient.getContreIndications()) {
			if(molecule.getConflits().contains(contrInd.getNom())) {
				return true;
			}
		}
		for(Traitement trait : patient.getTraitements()) {
			if(!trait.fini()) {
				for(Medicament medic : trait.getListMedicaments()) {
					if(molecule.getConflits().contains(medic.getMolecule().getNom()))
						return true;
				}
			}
		}
		return false;
	}

}
