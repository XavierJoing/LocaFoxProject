use BdLocaFox;
DELETE FROM Client;
DELETE FROM Particulier;
DELETE FROM Professionnel;
DELETE FROM Categorie;
DELETE FROM SousCategorie;
DELETE FROM Produit;
DELETE FROM Agence;
DELETE FROM Devis;
DELETE FROM Facture;
DELETE FROM Stocker;
DELETE FROM Concerner;

-- Insertion Données --

INSERT INTO Client (NumClient, NomClient, AdClient, VilleClient, CPClient, TelClient, MailClient, MdpClient)
  VALUES
 (1, 'Leblanc', '88 rue des près', 'Lille', '59000', '0327258287', 'dfehf@djii.com', '12345678'),
 (2, 'Lebleu', '55 rue de la riviere', 'Guingamp', '85412', '0354468572', 'jfiojo@jfri.com', '12345678'),
 (3, 'LeRouge', '12 rue du peuple', 'Valenciennes', '59322', '0521547894', 'fejfijf@pap.com', '12345678'),
 (4, 'LaJaune', '40 rue des fleurs', 'Paris', '90451', '0235468745', 'ffeuhfe@qjsk.com', '12345678'),
 (5, 'LaVerte', '20 rue des cailloux', 'Lyon', '69521', '0651234789', 'dhdjh@tzr.com', '12345678'),
 (6, 'BatiToit', '74 rue des arbres', 'Nice', '55201', '0147896325', 'ejejf@zezr.com', '12345678'),
 (7, 'ToutJardin', '96 rue des fleuves', 'Sochaux', '65615', '0236589741', 'fddhfj@oiy.com', '12345678'),
 (8, 'ToutMaison', '54 rue des collines', 'Lille', '59000', '0326541268', 'sdsgs@peux.com', '12345678'),
 (9, 'JardiBati', '35 rue des montagnes', 'Paris', '90451', '0315647825', 'ddhjdd@ogig.com', '12345678'),
 (10, 'ImoPro', '19 rue des plaines', 'Strasbourg', '47521', '0396582156', 'wxv@vnbc.com', '12345678');

INSERT INTO Particulier (CodePart,
    PrenomPart, Sexe, FidPart)
  VALUES
  (1, 'Jean', 'H', 150),
  (2, 'Maurice', 'H', 500),
  (3, 'Pascal', 'H', 1000),
  (4, 'Fabienne', 'F', 2000),
  (5, 'Pauline', 'F', 3500);

INSERT INTO Professionnel (CodePro, Siret)
  VALUES
  (6, '154236971023'),
  (7, '035647895232'),
  (8, '025974563210'),
  (9, '025946123587'),
  (10, '169753201497');

INSERT INTO Categorie (NumCat, NomCat)
  VALUES
  ('CC', 'Confort du Chantier'),
  ('TE', 'Travail en Hauteur et Elevation'),
  ('EF', 'Energie Electrique et Fluide'),
  ('TM', 'Transport et Manutention'),
  ('GO', 'Gros Oeuvre'),
  ('TR', 'Terrassement'),
  ('EV', 'Espace Vert'),
  ('OU', 'Outillage');

INSERT INTO SousCategorie (NumSousCat, NomsousCat, NumCat)
  VALUES
  ('CC01', 'Chauffage et Climatisation', 'CC'),
  ('TE01', 'Echaffaudage', 'TE'),
  ('TE02', 'Nacelle', 'TE'),
  ('EF01', 'Groupe Electrogene', 'EF'),
  ('EF02', "Traitement de l'air", 'EF'),
  ('EF03', 'Compresseur', 'EF'),
  ('TM01', 'Véhicules Légers', 'TM'),
  ('TM02', 'Camion benne', 'TM'),
  ('TM03', 'Elévation de charges', 'TM'),
  ('TM04', 'Remorquage', 'TM'),
  ('TM05', 'Chariot', 'TM'),
  ('TM06', 'Outils de Manutention', 'TM'),
  ('GO01', 'Production Béton', 'GO'),
  ('GO02', 'Pompage', 'GO'),
  ('TR01', 'Compactage', 'TR'),
  ('TR02', 'Terrassement', 'TR'),
  ('EV01', 'Coupe et Broyage', 'EV'),
  ('EV02', 'Taille et Entretien', 'EV'),
  ('EV03', 'Préparation des sols', 'EV'),
  ('OU01', 'Découpe et Perçage', 'OU'),
  ('OU02', 'Ponçage sols et Murs', 'OU'),
  ('OU03', 'Aspiration et Netoyage', 'OU'),
  ('OU04', 'Peinture', 'OU'),
  ('OU05', 'Finition', 'OU');

INSERT INTO Produit (NumProd, NomProd, PrixHT, NumSousCat)
  VALUES
  ('CC01-001', 'Climatiseur mobile 40m3', 44.56, 'CC01'),
  ('CC01-002', 'Chauffage fioul 2500m3/h', 76.18, 'CC01'),
  ('CC01-003', 'Chauffage gaz 2500m3/h', 71.86, 'CC01'),
  ('CC01-004', 'Chauffage electrique 550m3/h', 41.63, 'CC01'),
  ('TE01-001', 'Echafaudage roulant 9m', 66.31, 'TE01'),
  ('TE01-002', 'Kit échauffade + remorque', 66.31, 'TE01'),
  ('TE02-001', 'Nacelle verticale electrique 11m', 140.53, 'TE02'),
  ('TE02-002', 'Nacelle verticale automotrice 6m', 155.77, 'TE02'),
  ('TE02-003', 'Nacelle telescopique diesel 20m', 453.80, 'TE02'),
  ('TE02-004', 'Nacelle articulée diesel 15-20m', 355.28, 'TE02'),
  ('EF01-001', 'Groupe électrogène essence 5kva', 65.23, 'EF01'),
  ('EF01-002', 'Groupe électrogène diesel 50kva', 163.59, 'EF01'),
  ('EF01-003', 'Armoire de comptage 30/60A', 26.86, 'EF01'),
  ('EF01-004', 'Armoire de distribution 63A', 40.23, 'EF01'),
  ('EF02-001', 'Ventilateur extracteur 2000m3/h', 70.43, 'EF02'),
  ('EF02-002', 'Déshumidificateur 750W', 55.35, 'EF02'),
  ('EF02-003', 'Brumisateur 10m3', 132.60, 'EF02'),
  ('EF03-001', 'Compresseur thermique 180m3', 79.23, 'EF03'),
  ('EF03-002', 'Compresseur thermique 1250m3', 523.46, 'EF03'),
  ('TM01-001', 'Pickup 2 roues motrices', 84.91, 'TM01'),
  ('TM01-002', 'Fourgon espace vert', 153.71, 'TM01'),
  ('TM01-003', 'Utilitaire 8m3', 140.53, 'TM01'),
  ('TM02-001', 'Camion benne 1 cabine', 171.25, 'TM02'),
  ('TM03-001', 'Camion nacelle 15m', 360.11, 'TM03'),
  ('TM04-001', 'Remorque 2 tonne', 23.15, 'TM04'),
  ('TM04-002', 'Remorque basculante hydraulique', 50.31, 'TM04'),
  ('TM05-001', 'Chariot élévateur diesel', 153.30, 'TM05'),
  ('TM05-002', 'Chariot telescopique 5m', 215.75, 'TM05'),
  ('TM06-001', 'Benne de reprise', 12.65, 'TM06'),
  ('TM06-002', 'Godet à grappin', 27.45, 'TM06'),
  ('TM06-003', 'Benne à béton', 12.37, 'TM06'),
  ('GO01-001', 'Bétonnière 130L electrique', 32.27, 'GO01'),
  ('GO01-002', 'Bétonnière thermique >300L', 55.36, 'GO01'),
  ('GO02-001', 'Pompe immergée <10m3', 43.13, 'GO02'),
  ('GO02-002', 'Pompe immergée >50m3', 62.58, 'GO02'),
  ('GO02-003', 'Pompe eaux chargée', 57.49, 'GO02'),
  ('TR01-001', 'Plaque vibrante diesel 150kg', 55.35, 'TR01'),
  ('TR01-002', 'Rouleau duplex diesel', 70.45, 'TR01'),
  ('TR01-003', 'Rouleau monocylindre autoporté', 436.99, 'TR01'),
  ('TR02-001', 'Scie de sol 13cv essence', 60.38, 'TR02'),
  ('TR02-002', 'Tractopelle', 448.75, 'TR02'),
  ('TR02-003', 'Mini pelle sur chenille <1T', 206.47, 'TR02'),
  ('TR02-004', 'Chargeuse compacte 200L', 222.16, 'TR02'),
  ('EV01-001', 'Tronçonneuse à bois (45cm3)', 41.68, 'EV01'),
  ('EV01-002', 'Elagueuse électrique', 48.16, 'EV01'),
  ('EV01-003', 'Broyeur de végétaux', 93.44, 'EV01'),
  ('EV02-001', 'Souffleur', 56.06, 'EV02'),
  ('EV02-002', 'Aspirateur de feuilles', 182.56, 'EV02'),
  ('EV02-003', 'Débroussailleuse', 50.31, 'EV02'),
  ('EV02-004', 'Taille-haie électrique', 24.72, 'EV02'),
  ('EV03-001', 'Motobineuse', 65.40, 'EV03'),
  ('EV03-002', 'Rouleau à gazon', 16.38, 'EV03'),
  ('OU01-001', 'Piqueur électrique 8kg', 54.16, 'OU01'),
  ('OU01-002', 'Burineur électrique', 20.65, 'OU01'),
  ('OU01-003', 'Perforateur sans fil', 12.89, 'OU01'),
  ('OU01-004', 'Visseuse électrique', 7.83, 'OU01'),
  ('OU01-005', 'Perceuse sans fil', 11.70, 'OU01'),
  ('OU01-006', 'Scie sauteuse électrique', 14.67, 'OU01'),
  ('OU01-007', 'Scie circulaire sans fil', 24.54, 'OU01'),
  ('OU01-008', "Meuleuse d'angle", 14.13, 'OU01'),
  ('OU02-001', 'Ponceuse à béton portative', 38.32, 'OU02'),
  ('OU02-002', 'Ponceuse à parquet', 26.55, 'OU02'),
  ('OU03-001', 'Aspirateur poussières fines', 31.95, 'OU03'),
  ('OU03-002', 'Nettoyeur haute pression', 25.65, 'OU03'),
  ('OU04-001', 'Pistolet basse pression', 23.15, 'OU04'),
  ('OU04-002', 'Pistolet haute pression', 32.16, 'OU04'),
  ('OU05-001', 'Décapeur thermique', 11.45, 'OU05'),
  ('OU05-002', 'Décolleuse Papier Peint', 12.47, 'OU05'),
  ('OU05-003', 'Cireuse de sol', 40.76, 'OU05'),
  ('OU05-004', 'Autolaveuse 800W', 50.25, 'OU05');

INSERT INTO Agence (NumAgence, NomAgence, AdAgence, VilleAgence,
    CPAgence, TelAgence, HorairesAgence, NomResp)
  VALUES
  (1, 'LocaFox-Lille', '63 Z.I Nord', 'Lesquin', '59000', '0325791474', '8H00-21H00', 'J.Richard'),
  (2, 'LocaFox-Valenciennes', '74 Z.A Sud', 'Valenciennes', '59412', '0326965214', '8H00-21H00', 'P.Henri'),
  (3, 'Locafox-Dunkerque', '18 Z.A', 'Dunkerque', '59140', '0321456962', '8H00-21H00', 'T.Benoit');

INSERT INTO Devis (NumDevis, NumAgence, NumClient, NumProd, DateDevis, DebLoc,
    FinLocPrev, MontantHTPrev)
  VALUES
  (1, 1, 1, 'CC01-001', '2018-05-13', '2018-05-15', '2018-05-16', 44.56),
  (2, 2, 2, 'CC01-002', '2018-04-07', '2018-04-09', '2018-04-13', 304.72),
  (3, 2, 2, 'CC01-002', '2015-07-17', '2015-07-21', '2015-07-24', 228.54),
  (4, 3, 3, 'OU05-004', '2016-03-12', '2016-03-12', '2016-03-15', 150.75),
  (5, 3, 3, 'EV03-001', '2016-03-12', '2016-03-12', '2016-03-17', 327),
  (6, 2, 4, 'OU01-004', '2018-06-13', '2018-06-15', '2018-06-30', 117.45),
  (7, 2, 4, 'GO02-001', '2018-01-11', '2018-01-13', '2018-01-14', 43.13),
  (8, 3, 5, 'TR02-001', '2017-09-20', '2017-09-21', '2017-09-22', 60.38),
  (9, 1, 8, 'TM04-002', '2018-01-17', '2018-01-18', '2018-01-19', 50.31),
  (10, 2, 10, 'TE02-004', '2018-04-23', '2018-04-23', '2018-04-24', 355.28);

INSERT INTO Facture (NumFacture, DateFacture, NumDevis, FinLocReel,
    MontantHTReel, Reglement)
  VALUES
  (1, '2018-05-16', 1, '2018-05-16', 44.56, 'CB'),
  (2, '2018-04-13', 2, '2018-04-13', 304.72, 'CB'),
  (3, '2015-07-24', 3, '2015-04-24', 228.54, 'MO'),
  (4, '2016-03-15', 4, '2016-03-15', 150.75, 'CH'),
  (5, '2016-03-17', 5, '2016-03-17', 327, 'CB'),
  (6, '2018-06-30', 6, '2018-06-30', 117.45, 'MO'),
  (7, '2018-01-14', 7, '2018-01-14', 43.13, 'CH'),
  (8, '2017-09-22', 8, '2017-09-22', 60.38, 'CB'),
  (9, '2018-01-19', 9, '2018-01-19', 50.31, 'MO'),
  (10, '2018-04-24', 10, '2018-04-24', 355.28, 'CB');

INSERT INTO Stocker (NumAgence, NumProd, QtStock)
  VALUES
  (1, 'CC01-001', 10),
  (1, 'CC01-002', 10),
  (1, 'CC01-003', 10),
  (1, 'CC01-004', 10),
  (1, 'TE01-001', 10),
  (1, 'TE01-002', 10),
  (1, 'TE02-001', 10),
  (1, 'TE02-002', 10),
  (1, 'TE02-003', 5),
  (1, 'TE02-004', 5),
  (1, 'EF01-001', 10),
  (1, 'EF01-002', 10),
  (1, 'EF01-003', 5),
  (1, 'EF01-004', 5),
  (1, 'EF02-001', 5),
  (1, 'EF02-002', 5),
  (1, 'EF02-003', 5),
  (1, 'EF03-001', 5),
  (1, 'EF03-002', 5),
  (1, 'TM01-001', 5),
  (1, 'TM01-002', 5),
  (1, 'TM01-003', 5),
  (1, 'TM02-001', 5),
  (1, 'TM03-001', 5),
  (1, 'TM04-001', 5),
  (1, 'TM04-002', 10),
  (1, 'TM05-001', 5),
  (1, 'TM05-002', 5),
  (1, 'TM06-001', 5),
  (1, 'TM06-002', 5),
  (1, 'TM06-003', 5),
  (1, 'GO01-001', 5),
  (1, 'GO01-002', 5),
  (1, 'GO02-001', 5),
  (1, 'GO02-002', 5),
  (1, 'GO02-003', 5),
  (1, 'TR01-001', 5),
  (1, 'TR01-002', 5),
  (1, 'TR01-003', 3),
  (1, 'TR02-001', 3),
  (1, 'TR02-002', 3),
  (1, 'TR02-003', 3),
  (1, 'TR02-004', 3),
  (1, 'EV01-001', 10),
  (1, 'EV01-002', 10),
  (1, 'EV01-003', 5),
  (1, 'EV02-001', 10),
  (1, 'EV02-002', 5),
  (1, 'EV02-003', 20),
  (1, 'EV02-004', 20),
  (1, 'EV03-001', 10),
  (1, 'EV03-002', 15),
  (1, 'OU01-001', 5),
  (1, 'OU01-002', 5),
  (1, 'OU01-003', 5),
  (1, 'OU01-004', 20),
  (1, 'OU01-005', 20),
  (1, 'OU01-006', 20),
  (1, 'OU01-007', 20),
  (1, 'OU01-008', 20),
  (1, 'OU02-001', 20),
  (1, 'OU02-002', 20),
  (1, 'OU03-001', 20),
  (1, 'OU03-002', 20),
  (1, 'OU04-001', 20),
  (1, 'OU04-002', 20),
  (1, 'OU05-001', 20),
  (1, 'OU05-002', 20),
  (1, 'OU05-003', 20),
  (1, 'OU05-004', 10),
  (2, 'CC01-001', 10),
  (2, 'CC01-002', 10),
  (2, 'CC01-003', 10),
  (2, 'CC01-004', 10),
  (2, 'TE01-001', 10),
  (2, 'TE01-002', 10),
  (2, 'TE02-001', 10),
  (2, 'TE02-002', 10),
  (2, 'TE02-003', 5),
  (2, 'TE02-004', 5),
  (2, 'EF01-001', 10),
  (2, 'EF01-002', 10),
  (2, 'EF01-003', 5),
  (2, 'EF01-004', 5),
  (2, 'EF02-001', 5),
  (2, 'EF02-002', 5),
  (2, 'EF02-003', 5),
  (2, 'EF03-001', 5),
  (2, 'EF03-002', 5),
  (2, 'TM01-001', 5),
  (2, 'TM01-002', 5),
  (2, 'TM01-003', 5),
  (2, 'TM02-001', 5),
  (2, 'TM03-001', 5),
  (2, 'TM04-001', 5),
  (2, 'TM04-002', 10),
  (2, 'TM05-001', 5),
  (2, 'TM05-002', 5),
  (2, 'TM06-001', 5),
  (2, 'TM06-002', 5),
  (2, 'TM06-003', 5),
  (2, 'GO01-001', 5),
  (2, 'GO01-002', 5),
  (2, 'GO02-001', 5),
  (2, 'GO02-002', 5),
  (2, 'GO02-003', 5),
  (2, 'TR01-001', 5),
  (2, 'TR01-002', 5),
  (2, 'TR01-003', 3),
  (2, 'TR02-001', 3),
  (2, 'TR02-002', 3),
  (2, 'TR02-003', 3),
  (2, 'TR02-004', 3),
  (2, 'EV01-001', 10),
  (2, 'EV01-002', 10),
  (2, 'EV01-003', 5),
  (2, 'EV02-001', 10),
  (2, 'EV02-002', 5),
  (2, 'EV02-003', 20),
  (2, 'EV02-004', 20),
  (2, 'EV03-001', 10),
  (2, 'EV03-002', 15),
  (2, 'OU01-001', 5),
  (2, 'OU01-002', 5),
  (2, 'OU01-003', 5),
  (2, 'OU01-004', 20),
  (2, 'OU01-005', 20),
  (2, 'OU01-006', 20),
  (2, 'OU01-007', 20),
  (2, 'OU01-008', 20),
  (2, 'OU02-001', 20),
  (2, 'OU02-002', 20),
  (2, 'OU03-001', 20),
  (2, 'OU03-002', 20),
  (2, 'OU04-001', 20),
  (2, 'OU04-002', 20),
  (2, 'OU05-001', 20),
  (2, 'OU05-002', 20),
  (2, 'OU05-003', 20),
  (2, 'OU05-004', 10),
  (3, 'CC01-001', 10),
  (3, 'CC01-002', 10),
  (3, 'CC01-003', 10),
  (3, 'CC01-004', 10),
  (3, 'TE01-001', 10),
  (3, 'TE01-002', 10),
  (3, 'TE02-001', 10),
  (3, 'TE02-002', 10),
  (3, 'TE02-003', 5),
  (3, 'TE02-004', 5),
  (3, 'EF01-001', 10),
  (3, 'EF01-002', 10),
  (3, 'EF01-003', 5),
  (3, 'EF01-004', 5),
  (3, 'EF02-001', 5),
  (3, 'EF02-002', 5),
  (3, 'EF02-003', 5),
  (3, 'EF03-001', 5),
  (3, 'EF03-002', 5),
  (3, 'TM01-001', 5),
  (3, 'TM01-002', 5),
  (3, 'TM01-003', 5),
  (3, 'TM02-001', 5),
  (3, 'TM03-001', 5),
  (3, 'TM04-001', 5),
  (3, 'TM04-002', 10),
  (3, 'TM05-001', 5),
  (3, 'TM05-002', 5),
  (3, 'TM06-001', 5),
  (3, 'TM06-002', 5),
  (3, 'TM06-003', 5),
  (3, 'GO01-001', 5),
  (3, 'GO01-002', 5),
  (3, 'GO02-001', 5),
  (3, 'GO02-002', 5),
  (3, 'GO02-003', 5),
  (3, 'TR01-001', 5),
  (3, 'TR01-002', 5),
  (3, 'TR01-003', 3),
  (3, 'TR02-001', 3),
  (3, 'TR02-002', 3),
  (3, 'TR02-003', 3),
  (3, 'TR02-004', 3),
  (3, 'EV01-001', 10),
  (3, 'EV01-002', 10),
  (3, 'EV01-003', 5),
  (3, 'EV02-001', 10),
  (3, 'EV02-002', 5),
  (3, 'EV02-003', 20),
  (3, 'EV02-004', 20),
  (3, 'EV03-001', 10),
  (3, 'EV03-002', 15),
  (3, 'OU01-001', 5),
  (3, 'OU01-002', 5),
  (3, 'OU01-003', 5),
  (3, 'OU01-004', 20),
  (3, 'OU01-005', 20),
  (3, 'OU01-006', 20),
  (3, 'OU01-007', 20),
  (3, 'OU01-008', 20),
  (3, 'OU02-001', 20),
  (3, 'OU02-002', 20),
  (3, 'OU03-001', 20),
  (3, 'OU03-002', 20),
  (3, 'OU04-001', 20),
  (3, 'OU04-002', 20),
  (3, 'OU05-001', 20),
  (3, 'OU05-002', 20),
  (3, 'OU05-003', 20),
  (3, 'OU05-004', 10);

INSERT INTO Concerner (NumProd, NumDevis, QtCommande)
  VALUES
  ('CC01-001', 1, 1),
  ('CC01-002', 2, 1),
  ('CC01-002', 3, 1),
  ('OU05-004', 4, 1),
  ('EV03-001', 5, 1),
  ('OU01-004', 6, 1),
  ('GO02-001', 7, 1),
  ('TR02-001', 8, 1),
  ('TM04-002', 9, 1),
  ('TE02-004', 10, 1);

INSERT INTO Parametre VALUES (1.20);