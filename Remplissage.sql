
INSERT INTO MEDECIN VALUES (1,'REMY','Mathieu','banane','m@live.fr');
INSERT INTO MEDECIN VALUES (2,'FILORI','Quentin','peche','q@live.fr');
INSERT INTO MEDECIN VALUES (3,'MOSCA','Théo','fraise','t@live.fr');
INSERT INTO MEDECIN VALUES (4,'LOPES SANCHES','Idriss','mangue','i@live.fr');


INSERT INTO PATIENT VALUES (1,'ALBERT','Bernard',4);
INSERT INTO PATIENT VALUES (2,'CORENTIN','Daniel',3);
INSERT INTO PATIENT VALUES (3,'ELOISE','Fanny',2);
INSERT INTO PATIENT VALUES (4,'GUY','Hector',1);
INSERT INTO PATIENT VALUES (5,'IVAN','Julien',2);
INSERT INTO PATIENT VALUES (6,'KIERAN','Mathilde',2);
INSERT INTO PATIENT VALUES (7,'NOE','Océane',2);
INSERT INTO PATIENT VALUES (8,'PATRICK','Quentin',3);
INSERT INTO PATIENT VALUES (9,'ROMAIN','Salomé',3);
INSERT INTO PATIENT VALUES (10,'THOMAS','Valérie',4);

INSERT INTO MOLECULE VALUES(id_molec.nextval,'ANASTROZOLE','inhibiteur non stéroïdien de l''aromatase','hormones de croissance');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'RANITIDINE','antagoniste des récepteurs H2 à l''histamine','');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'TRAMADOL','analgésique','');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'ATORVASTATINE','inhibiteur de la HMG-CoA réductase','diabète');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'RIVASTIGMINE','inhibiteur de l''acétyl','');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'CIPROFLOXACINE','antibiotique fluoroquinolones','');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'RAMIPRIL','inhibiteur de la dipeptidylcarboxypeptidase','grossesse');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'DIOSMINE','DIOSMINE','');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'VALSARTAN','inhibiteur du récepteur AT1','grossesse');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'ACICLOVIR','antiviral','');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'CYTARABINE','antimétabolite','grossesse');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'CARBOCISTÉINE','mucolytique','');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'IRBÉSARTAN','antagoniste de l''angiotensine II','grossesse');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'PANTOPRAZOLE','benzimidazole', '');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'MÉTRONIDAZOLE','antibiotique antibactérien antiparasitaire', '');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'CHLORHEXIDINE','antiseptique bactéricide à large spectre', '');
INSERT INTO MOLECULE VALUES(id_molec.nextval,'OXYCODONE','agoniste opioïde pur', 'opioïde de palier III' );
INSERT INTO MOLECULE VALUES(id_molec.nextval,'ÉLIPROLOL','bêtabloquant','' );
INSERT INTO MOLECULE VALUES(id_molec.nextval,'MOLSIDOMINE ','sydnonimines','' );
INSERT INTO MOLECULE VALUES(id_molec.nextval,'CIMÉTIDINE ','antisécrétoire gastrique ','' );
INSERT INTO MOLECULE VALUES(id_molec.nextval,'ARIPIPRAZOLE  ','antipsychotique  ','depression' );
INSERT INTO MOLECULE VALUES(id_molec.nextval,'BOCÉPRÉVIR  ',' antiviral  ','inhibiteurs de protéase du VIH' );
INSERT INTO MOLECULE VALUES(id_molec.nextval,'SOMATROPINE  ','hormone de croissance','Inhibiteur non stéroïdien de l''aromatase' );



INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'ARIMIDEX 1 mg', 1);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'AZANTAC 150 mg', 2);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'CONTRAMAL 50 mg', 3);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'ATORVASTATINE ACCORD 10 mg', 4);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'EXELON 3 mg', 5);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'CIFLOX 250 mg', 6);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'TRIATEC 10 mg', 7);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'DAFLON 1000 mg', 8);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'NISIS 160 mg', 9);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'ZOVIRAX 200 mg', 10);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'ARACYTINE 1 g', 11);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'BRONCATHIOL', 12);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'APROVEL 75 mg', 13);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'EUPANTOL 40 mg', 14);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'FLAGYL 250 mg', 15);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'FLAGYL 250 mg', 16);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'BIORGASEPT 0,5 %', 17);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'OXYCONTIN LP 120 mg', 18);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'CELECTOL 200 mg', 19);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'CORVASAL 4 mg', 20);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'ABILIFY 15 mg', 21);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'VICTRELIS 200 mg', 22);
INSERT INTO MEDICAMENT(id_medic,nom_medic, id_molec) VALUES(id_medic.nextval,'GENOTONORM 12 mg', 23);


INSERT INTO MALADIE VALUES(id_maladie.nextval,'cancer du sein');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'hémorroïdes');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'leucémies');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'reflux gastro-oesophagien');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'hypertension artérielle');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'syndrome de Zollinger-Ellison');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'ulcère');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'Douleur chronique');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'hypercholestérolémie');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'hyperlipidémie');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'Cardiovasculaire');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'démence');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'Alzheimer');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'infection');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'insuffisance cardiaque');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'herpès');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'syndrome de Kaposi-Juliusberg');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'méningo-encéphalites herpétiques');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'varicelle');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'lymphomes');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'trouble de la sécrétion bronchique');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'néphropathie');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'ulcères gastroduodénaux');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'acnée rosacée');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'vaginite');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'antisepsie');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'infection buccopharyngée');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'infection cutanée');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'angors');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'gastralgie');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'oesophagite');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'schizophrénie');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'hépatite C');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'retard de croissance');
INSERT INTO MALADIE VALUES(id_maladie.nextval,'syndrome de Prader-Wil');




INSERT INTO CONTRE_INDICATION VALUES (id_contr.nextval,'grossesse');
INSERT INTO CONTRE_INDICATION VALUES (id_contr.nextval,'allergie MÉTRONIDAZOLE');
INSERT INTO CONTRE_INDICATION VALUES (id_contr.nextval,'hypotension');
INSERT INTO CONTRE_INDICATION VALUES (id_contr.nextval,'insuffisance rénale');
INSERT INTO CONTRE_INDICATION VALUES (id_contr.nextval,'Diabète');
INSERT INTO CONTRE_INDICATION VALUES (id_contr.nextval,'Dépression');


INSERT INTO ESTASSOCIE VALUES(1,4);
INSERT INTO ESTASSOCIE VALUES(2,3);
INSERT INTO ESTASSOCIE VALUES(3,4);
INSERT INTO ESTASSOCIE VALUES(4,1);



INSERT INTO CONCERNE VALUES(4,5);
INSERT INTO CONCERNE VALUES(7,1);
INSERT INTO CONCERNE VALUES(9,1);
INSERT INTO CONCERNE VALUES(13,1);
INSERT INTO CONCERNE VALUES(21,6);

INSERT INTO SOIGNE VALUES (1,1);
INSERT INTO SOIGNE VALUES (8,2);
INSERT INTO SOIGNE VALUES (11,3);
INSERT INTO SOIGNE VALUES (2,4);
INSERT INTO SOIGNE VALUES (14,4);
INSERT INTO SOIGNE VALUES (20,4);
INSERT INTO SOIGNE VALUES (7,5);
INSERT INTO SOIGNE VALUES (9,5);
INSERT INTO SOIGNE VALUES (13,5);
INSERT INTO SOIGNE VALUES (2,6);
INSERT INTO SOIGNE VALUES (2,7);
INSERT INTO SOIGNE VALUES (14,7);
INSERT INTO SOIGNE VALUES (3,8);
INSERT INTO SOIGNE VALUES (17,8);
INSERT INTO SOIGNE VALUES (4,9);
INSERT INTO SOIGNE VALUES (4,10);
INSERT INTO SOIGNE VALUES (4,11);
INSERT INTO SOIGNE VALUES (5,12);
INSERT INTO SOIGNE VALUES (5,13);
INSERT INTO SOIGNE VALUES (6,14);
INSERT INTO SOIGNE VALUES (7,15);
INSERT INTO SOIGNE VALUES (9,15);
INSERT INTO SOIGNE VALUES (10,16);
INSERT INTO SOIGNE VALUES (10,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'syndrome de Kaposi-Juliusberg'));
INSERT INTO SOIGNE VALUES (10,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'méningo-encéphalites herpétiques'));
INSERT INTO SOIGNE VALUES (10,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'varicelle'));
INSERT INTO SOIGNE VALUES (12,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'trouble de la sécrétion bronchique'));
INSERT INTO SOIGNE VALUES (13,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'néphropathie'));
INSERT INTO SOIGNE VALUES (14,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'ulcères gastroduodénaux'));
INSERT INTO SOIGNE VALUES (15,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'acnée rosacée'));
INSERT INTO SOIGNE VALUES (15,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'vaginite'));
INSERT INTO SOIGNE VALUES (16,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'antisepsie'));
INSERT INTO SOIGNE VALUES (16,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'infection buccopharyngée'));
INSERT INTO SOIGNE VALUES (16,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'infection cutanée'));
INSERT INTO SOIGNE VALUES (18,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'angors'));
INSERT INTO SOIGNE VALUES (19,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'angors'));
INSERT INTO SOIGNE VALUES (20,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'gastralgie'));
INSERT INTO SOIGNE VALUES (20,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'oesophagite'));
INSERT INTO SOIGNE VALUES (21,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'schizophrénie'));
INSERT INTO SOIGNE VALUES (22,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'hépatite C'));
INSERT INTO SOIGNE VALUES (23,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'retard de croissance'));
INSERT INTO SOIGNE VALUES (23,(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'syndrome de Prader-Wil'));


INSERT INTO TRAITEMENT VALUES(id_trait.nextval, '25/07/2016', '10/03/2017',(SELECT id_maladie FROM MALADIE WHERE nom_maladie = 'hémorroïdes'));
INSERT INTO TRAITEMENT VALUES(id_trait.nextval, '01/03/2018', '30/03/2018',5);


INSERT INTO PRESCRIT VALUES(2,4,1);
INSERT INTO PRESCRIT VALUES(4,8,2);


INSERT INTO ESTCONSTITUE VALUES (1,8);
INSERT INTO ESTCONSTITUE VALUES (2,13);