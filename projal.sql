DROP SEQUENCE id_trait; 
DROP SEQUENCE id_medic;
DROP SEQUENCE id_molec;
DROP SEQUENCE id_contr;
DROP SEQUENCE id_maladie;

DROP TABLE soigne;
DROP TABLE Concerne;
DROP TABLE EstConstitue;
DROP TABLE EstAssocie;
DROP TABLE Prescrit;
DROP TABLE Contre_indication;
DROP TABLE Medicament;
DROP TABLE Traitement;
DROP TABLE Patient;
DROP TABLE Medecin;
DROP TABLE Molecule;
DROP TABLE Maladie;




CREATE TABLE Medecin(
        id_medecin   Int NOT NULL ,
        nom    Varchar (100) NOT NULL ,
        prenom Varchar (100) NOT NULL ,
        mdp    Varchar (100) NOT NULL ,
        mail   Varchar (100) NOT NULL ,
        PRIMARY KEY (id_medecin)
);



CREATE TABLE Patient(
        id_patient     Int NOT NULL ,
        nom_patient    Varchar (100) NOT NULL ,
        prenom_patient Varchar (100) NOT NULL ,
        cat_age        Int NOT NULL ,
        PRIMARY KEY (id_patient )
);



CREATE SEQUENCE id_trait;

CREATE TABLE Traitement(
        id_trait   NUMBER  NOT NULL ,
        dateD      Date NOT NULL ,
        DateF      Date NOT NULL ,
        id_maladie NUMBER not null,
        PRIMARY KEY (id_trait)
);

CREATE SEQUENCE id_medic;

CREATE TABLE Medicament(
        id_medic  NUMBER NOT NULL ,
        nom_medic Varchar (100) NOT NULL ,
        id_molec  Int NOT NULL ,
        PRIMARY KEY (id_medic )
);


CREATE SEQUENCE id_molec;

CREATE TABLE Molecule(
        id_molec  NUMBER NOT NULL ,
        nom_molec Varchar (100) NOT NULL ,
        type_molec varchar (100) NOT NULL,
        conflit varchar(100) ,
        PRIMARY KEY (id_molec) ,
        UNIQUE (nom_molec)
);


CREATE SEQUENCE id_contr;

CREATE TABLE Contre_indication(
        id_contr  NUMBER NOT NULL ,
        nom_contr Varchar (100) NOT NULL ,
        PRIMARY KEY (id_contr )
);


CREATE SEQUENCE id_maladie;


CREATE TABLE Maladie(
        id_maladie  NUMBER NOT NULL ,
        nom_maladie Varchar (100) NOT NULL ,
        PRIMARY KEY (id_maladie )
);



CREATE TABLE Prescrit(
        id_medecin Int NOT NULL ,
        id_patient Int NOT NULL ,
        id_trait   NUMBER NOT NULL ,
        PRIMARY KEY (id_medecin,id_patient ,id_trait )
);



CREATE TABLE EstAssocie(
        id_contr   NUMBER NOT NULL ,
        id_patient Int NOT NULL ,
        PRIMARY KEY (id_contr ,id_patient )
);



CREATE TABLE EstConstitue(
        id_trait NUMBER NOT NULL ,
        id_medic NUMBER NOT NULL ,
        PRIMARY KEY (id_trait ,id_medic)
);


CREATE TABLE Concerne(
        id_molec Int NOT NULL ,
        id_contr Int NOT NULL ,
        PRIMARY KEY (id_molec ,id_contr )
);

CREATE TABLE Soigne(
        id_molec   Int NOT NULL ,
        id_maladie Int NOT NULL ,
        PRIMARY KEY (id_molec ,id_maladie )
);

ALTER TABLE Traitement ADD CONSTRAINT FK_Traitement_id_maladie FOREIGN KEY (id_maladie) REFERENCES Maladie(id_maladie);
ALTER TABLE Medicament ADD CONSTRAINT FK_Medicament_id_molec FOREIGN KEY (id_molec) REFERENCES Molecule(id_molec);
ALTER TABLE Prescrit ADD CONSTRAINT FK_Prescrit_id FOREIGN KEY (id_medecin) REFERENCES Medecin(id_medecin);
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
