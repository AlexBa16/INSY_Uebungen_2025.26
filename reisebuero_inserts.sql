-- ********** Stammdaten: Land, Sprache, Reisedokumentart, Abteilung, Vielfliegerprogramm **********

-- Land
INSERT INTO Land (Bezeichnung)
VALUES ('Deutschland'), -- PK_Land_ID = 1
       ('Österreich'),  -- PK_Land_ID = 2
       ('Schweiz'),     -- PK_Land_ID = 3
       ('Frankreich'),  -- PK_Land_ID = 4
       ('USA');
-- PK_Land_ID = 5

-- Sprache
INSERT INTO Sprache (Bezeichnung)
VALUES ('Deutsch'),     -- PK_Sprache_ID = 1
       ('Englisch'),    -- PK_Sprache_ID = 2
       ('Französisch'), -- PK_Sprache_ID = 3
       ('Spanisch');
-- PK_Sprache_ID = 4

-- Reisedokumentart
INSERT INTO Reisedokumentart (Bezeichnung)
VALUES ('Reisepass'), -- PK_Reisedokumentart_ID = 1
       ('Personalausweis');
-- PK_Reisedokumentart_ID = 2

-- Abteilung
INSERT INTO Abteilung (Bezeichnung)
VALUES ('Vertrieb'),    -- PK_Abteilung_ID = 1
       ('Buchhaltung'), -- PK_Abteilung_ID = 2
       ('Marketing');
-- PK_Abteilung_ID = 3

-- Vielfliegerprogramm
INSERT INTO Vielfliegerprogramm (Bezeichnung)
VALUES ('Star Alliance Miles'), -- PK_Vielfliegerprogramm_ID = 1
       ('SkyTeam Rewards'),     -- PK_Vielfliegerprogramm_ID = 2
       ('OneWorld Frequent Flyer'); -- PK_Vielfliegerprogramm_ID = 3



-- ********** Filiale und Telefon **********

-- Filiale (Verwendung von Land-IDs 1, 2)
INSERT INTO Filiale (Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES ('Hauptfiliale Berlin', 'Musterstr. 10', '10115', 'Berlin', 1), -- PK_Filiale_ID = 1
       ('Filiale Wien', 'Ringstraße 5', '1010', 'Wien', 2);
-- PK_Filiale_ID = 2

-- FilialeTelefon
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (1, '030-1234567'),
       (2, '01-9876543');

-- Abteilung_Filiale
INSERT INTO Abteilung_Filiale (PK_FK_Abteilung_ID, PK_FK_Filiale_ID)
VALUES (1, 1), -- Vertrieb in Berlin
       (2, 1), -- Buchhaltung in Berlin
       (1, 2); -- Vertrieb in Wien



-- ********** Angestellte und zugehörige Daten **********

-- Angestellte (Manager zuerst, FK_Vorgesetzte_ID ist NULL für Top-Level-Manager)
INSERT INTO Angestellte (Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt, Eintrittsdatum,
                         Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES ('Max', 'Mustermann', '1980-05-15', 'Hauptstr. 1', '10115', 'Berlin', 1, 60000.00, '2015-01-01', 0.10,
        NULL), -- PK_Angestellte_ID = 1 (CEO)
       ('Anna', 'Schmidt', '1990-11-20', 'Nebenweg 5', '1010', 'Wien', 2, 45000.00, '2018-03-10', 0.05,
        1),    -- PK_Angestellte_ID = 2 (Managerin, Vorgesetzter 1)
       ('Peter', 'Huber', '1995-03-03', 'Schulstr. 22', '80331', 'München', 1, 38000.00, '2020-07-01', 0.00, 2);
-- PK_Angestellte_ID = 3 (Mitarbeiter, Vorgesetzte 2)

-- Angestellte_Sprache
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (1, 1), -- Max: Deutsch
       (1, 2), -- Max: Englisch
       (2, 1), -- Anna: Deutsch
       (2, 3), -- Anna: Französisch
       (3, 1), -- Peter: Deutsch
       (3, 2);
-- Peter: Englisch

-- AngestellteTelefon
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (1, '030-11111'),
       (2, '01-22222'),
       (3, '089-33333');

-- Gehalt (Anfangsgehälter)
INSERT INTO Gehalt (PK_FK_Angestellte_ID, PK_von, bis, Gehalt)
VALUES (1, '2015-01-01', '9999-12-31', 60000.00),
       (2, '2018-03-10', '9999-12-31', 45000.00),
       (3, '2020-07-01', '9999-12-31', 38000.00);

-- Angestellte_Filiale
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (1, 1, '2015-01-01', NULL), -- Max arbeitet in Berlin
       (2, 2, '2018-03-10', NULL), -- Anna arbeitet in Wien
       (3, 1, '2020-07-01', NULL);
-- Peter arbeitet in Berlin

-- Filialleitung
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (1, 1, '2015-01-01', NULL), -- Max leitet Berlin
       (2, 2, '2018-03-10', NULL); -- Anna leitet Wien



-- ********** Kunde und zugehörige Daten **********

-- Kunde (FK_Land_ID ist Wohnland, FK_Staatsangehoerigkeit_ID ist Nationalität)
INSERT INTO Kunde (Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, FK_Staatsangehoerigkeit_ID,
                   FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES ('Lisa', 'Müller', '1975-08-01', 'Grüne Gasse 3', '8010', 'Graz', 2, 2, 1, 'A12345678',
        '2028-12-31'), -- PK_Kunde_ID = 1 (Österreich, Reisepass)
       ('Tom', 'Johnson', '1985-04-25', 'Oak Ave 15', '90210', 'Beverly Hills', 5, 5, 1, 'B87654321',
        '2027-06-30'), -- PK_Kunde_ID = 2 (USA, Reisepass)
       ('Emil', 'Klein', '2000-01-01', 'Seestr. 7', '14167', 'Berlin', 1, 1, 2, 'C98765432', '2025-01-01');
-- PK_Kunde_ID = 3 (Deutschland, Personalausweis)

-- KundeTelefon
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (1, '0316-55555'),
       (2, '310-44444'),
       (3, '030-66666');

-- Kunde_Vielfliegerprogramm
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (1, 1, 'SM98765', 15000), -- Lisa, Star Alliance
       (2, 2, 'ST00112', 45000); -- Tom, SkyTeam



-- ********** Reisen und Buchungen **********

-- Reise
INSERT INTO Reise (Bezeichnung, Beschreibung)
VALUES ('Städtereise Paris', 'Ein Wochenende in der Stadt der Liebe.'), -- PK_Reise_ID = 1
       ('Asien-Rundreise', 'Dreiwöchige Tour durch Vietnam und Thailand.');
-- PK_Reise_ID = 2

-- Reiseabschnitt
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (1, 1, 1, 'Anreise und Eiffelturm-Besuch'),
       (1, 2, 3, 'Louvre, Notre Dame und Montmartre'),
       (2, 1, 7, 'Hanoi und Halong-Bucht (Vietnam)'),
       (2, 8, 21, 'Bangkok und Strände (Thailand)');

-- Reiseangebot (Reiseleiter FK_Reiseleiter_ID: Max (1) und Anna (2))
INSERT INTO Reiseangebot (FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (1, 1, '2026-05-20', 499.00, 50), -- PK_Reiseangebot_ID = 1 (Paris, Max)
       (2, 2, '2026-11-01', 2999.00, 20);
-- PK_Reiseangebot_ID = 2 (Asien, Anna)

-- Reisebuchung (FK_Angestellte_ID: Peter (3) bucht)
INSERT INTO Reisebuchung (FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (1, 1, 3, '2025-09-10'), -- PK_Reisebuchung_ID = 1 (Lisa bucht Paris)
       (2, 2, 3, '2025-09-01');
-- PK_Reisebuchung_ID = 2 (Tom bucht Asien)

-- Reiseteilnehmer (Lisa und Tom reisen alleine)
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (1, 1),
       (2, 2);

-- Zahlung
INSERT INTO Zahlung (FK_Reisebuchung_ID, Datum, Betrag)
VALUES (1, '2025-09-10', 499.00), -- Lisa zahlt komplett
       (2, '2025-09-01', 1000.00); -- Tom zahlt Teilbetrag