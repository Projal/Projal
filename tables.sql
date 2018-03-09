#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Médecin
#------------------------------------------------------------

CREATE TABLE Medecin(
        id     Int NOT NULL ,
        nom    Varchar (25) NOT NULL ,
        prenom Varchar (25) NOT NULL ,
        mdp    Varchar (25) NOT NULL ,
        mail   Varchar (25) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Patient
#------------------------------------------------------------

CREATE TABLE Patient(
        id_patient     Int NOT NULL ,
        nom_patient    Varchar (25) NOT NULL ,
        prenom_patient Varchar (25) NOT NULL ,
        cat_age        Int NOT NULL ,
        PRIMARY KEY (id_patient )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Traitement
#------------------------------------------------------------

CREATE TABLE Traitement(
        id_trait   int (11) Auto_increment  NOT NULL ,
        dateD      Date NOT NULL ,
        DateF      Date NOT NULL ,
        id_maladie Int ,
        PRIMARY KEY (id_trait )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Médicament
#------------------------------------------------------------

CREATE TABLE Medicament(
        id_medic  int (11) Auto_increment  NOT NULL ,
        nom_medic Varchar (25) NOT NULL ,
        id_molec  Int NOT NULL ,
        PRIMARY KEY (id_medic )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Molécule
#------------------------------------------------------------

CREATE TABLE Molecule(
        id_molec  int (11) Auto_increment  NOT NULL ,
        nom_molec Varchar (25) NOT NULL ,
        conflit   Int NOT NULL ,
        PRIMARY KEY (id_molec ) ,
        UNIQUE (nom_molec )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Contre-indication
#------------------------------------------------------------

CREATE TABLE Contre_indication(
        id_contr  int (11) Auto_increment  NOT NULL ,
        nom_contr Varchar (25) NOT NULL ,
        PRIMARY KEY (id_contr )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Maladie
#------------------------------------------------------------

CREATE TABLE Maladie(
        id_maladie  int (11) Auto_increment  NOT NULL ,
        nom_maladie Varchar (25) NOT NULL ,
        PRIMARY KEY (id_maladie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Prescrit
#------------------------------------------------------------

CREATE TABLE Prescrit(
        id         Int NOT NULL ,
        id_patient Int NOT NULL ,
        id_trait   Int NOT NULL ,
        PRIMARY KEY (id ,id_patient ,id_trait )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: EstAssocié
#------------------------------------------------------------

CREATE TABLE EstAssocie(
        id_contr   Int NOT NULL ,
        id_patient Int NOT NULL ,
        PRIMARY KEY (id_contr ,id_patient )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: EstConstitué
#------------------------------------------------------------

CREATE TABLE EstConstitue(
        id_trait Int NOT NULL ,
        id_medic Int NOT NULL ,
        PRIMARY KEY (id_trait ,id_medic )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Concerne
#------------------------------------------------------------

CREATE TABLE Concerne(
        id_molec Int NOT NULL ,
        id_contr Int NOT NULL ,
        PRIMARY KEY (id_molec ,id_contr )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Soigne
#------------------------------------------------------------

CREATE TABLE Soigne(
        id_molec   Int NOT NULL ,
        id_maladie Int NOT NULL ,
        PRIMARY KEY (id_molec ,id_maladie )
)ENGINE=InnoDB;

ALTER TABLE Traitement ADD CONSTRAINT FK_Traitement_id_maladie FOREIGN KEY (id_maladie) REFERENCES Maladie(id_maladie);
ALTER TABLE Medicament ADD CONSTRAINT FK_Medicament_id_molec FOREIGN KEY (id_molec) REFERENCES Molecule(id_molec);
ALTER TABLE Prescrit ADD CONSTRAINT FK_Prescrit_id FOREIGN KEY (id) REFERENCES Medecin(id);
ALTER TABLE Prescrit ADD CONSTRAINT FK_Prescrit_id_patient FOREIGN KEY (id_patient) REFERENCES Patient(id_patient);
ALTER TABLE Prescrit ADD CONSTRAINT FK_Prescrit_id_trait FOREIGN KEY (id_trait) REFERENCES Traitement(id_trait);
ALTER TABLE EstAssocie ADD CONSTRAINT FK_EstAssocie_id_contr FOREIGN KEY (id_contr) REFERENCES Contre_indication(id_contr);
ALTER TABLE EstAssocie ADD CONSTRAINT FK_EstAssocie_id_patient FOREIGN KEY (id_patient) REFERENCES Patient(id_patient);
ALTER TABLE EstConstitue ADD CONSTRAINT FK_EstConstitue_id_trait FOREIGN KEY (id_trait) REFERENCES Traitement(id_trait);
ALTER TABLE EstConstitue ADD CONSTRAINT FK_EstConstitue_id_medic FOREIGN KEY (id_medic) REFERENCES Medicament(id_medic);
ALTER TABLE Concerne ADD CONSTRAINT FK_Concerne_id_molec FOREIGN KEY (id_molec) REFERENCES Molecule(id_molec);
ALTER TABLE Concerne ADD CONSTRAINT FK_Concerne_id_contr FOREIGN KEY (id_contr) REFERENCES Contre_indication(id_contr);
ALTER TABLE Soigne ADD CONSTRAINT FK_Soigne_id_molec FOREIGN KEY (id_molec) REFERENCES Molecule(id_molec);
ALTER TABLE Soigne ADD CONSTRAINT FK_Soigne_id_maladie FOREIGN KEY (id_maladie) REFERENCES Maladie(id_maladie);
