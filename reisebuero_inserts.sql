# ---- Alexander Bachinger ----

-- DML for Reisebuero demo dataset;
USE Reisebuero;
-- Ensure AUTO_INCREMENT on PKs that must be generated automatically (per task);
# ALTER TABLE AngestellteTelefon
#     MODIFY PK_AngestellteTelefon_ID INT(11) NOT NULL AUTO_INCREMENT;
# ALTER TABLE FilialeTelefon
#     MODIFY PK_FilialeTelefon_ID INT(11) NOT NULL AUTO_INCREMENT;
# ALTER TABLE KundeTelefon
#     MODIFY PK_KundeTelefon_ID INT(11) NOT NULL AUTO_INCREMENT;
# ALTER TABLE Reiseabschnitt
#     MODIFY PK_Reiseabschnitt_ID INT(11) NOT NULL AUTO_INCREMENT;
-- Land (30);
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (1, 'Österreich');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (2, 'Deutschland');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (3, 'Schweiz');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (4, 'Italien');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (5, 'Frankreich');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (6, 'Spanien');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (7, 'Portugal');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (8, 'Niederlande');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (9, 'Belgien');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (10, 'Luxemburg');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (11, 'Tschechien');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (12, 'Slowakei');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (13, 'Ungarn');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (14, 'Polen');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (15, 'Dänemark');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (16, 'Schweden');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (17, 'Norwegen');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (18, 'Finnland');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (19, 'Island');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (20, 'Irland');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (21, 'Vereinigtes Koenigreich');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (22, 'USA');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (23, 'Kanada');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (24, 'Mexiko');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (25, 'Brasilien');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (26, 'Argentinien');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (27, 'Chile');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (28, 'Japan');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (29, 'China');
INSERT INTO Land (PK_Land_ID, Bezeichnung)
VALUES (30, 'Indien');
-- Sprache (30);
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (1, 'Deutsch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (2, 'Englisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (3, 'Franzoesisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (4, 'Spanisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (5, 'Italienisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (6, 'Portugiesisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (7, 'Niederländisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (8, 'Schwedisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (9, 'Norwegisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (10, 'Finnisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (11, 'Dänisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (12, 'Isländisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (13, 'Polnisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (14, 'Tschechisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (15, 'Slowakisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (16, 'Ungarisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (17, 'Rumänisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (18, 'Bulgarisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (19, 'Griechisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (20, 'Türkisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (21, 'Arabisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (22, 'Hebräisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (23, 'Russisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (24, 'Ukrainisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (25, 'Chinesisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (26, 'Japanisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (27, 'Koreanisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (28, 'Hindi');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (29, 'Bengalisch');
INSERT INTO Sprache (PK_Sprache_ID, Bezeichnung)
VALUES (30, 'Urdu');
-- Reisedokumentart (2);
INSERT INTO Reisedokumentart (PK_Reisedokumentart_ID, Bezeichnung)
VALUES (1, 'Reisepass');
INSERT INTO Reisedokumentart (PK_Reisedokumentart_ID, Bezeichnung)
VALUES (2, 'Personalausweis');
-- Vielfliegerprogramm (3);
INSERT INTO Vielfliegerprogramm (PK_Vielfliegerprogramm_ID, Bezeichnung)
VALUES (1, 'Star Alliance');
INSERT INTO Vielfliegerprogramm (PK_Vielfliegerprogramm_ID, Bezeichnung)
VALUES (2, 'SkyTeam');
INSERT INTO Vielfliegerprogramm (PK_Vielfliegerprogramm_ID, Bezeichnung)
VALUES (3, 'oneworld');
-- Abteilung (10);
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (1, 'Vertrieb');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (2, 'Kundenservice');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (3, 'Gruppenreisen');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (4, 'IT');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (5, 'Marketing');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (6, 'Finanzen');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (7, 'HR');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (8, 'B2B');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (9, 'Backoffice');
INSERT INTO Abteilung (PK_Abteilung_ID, Bezeichnung)
VALUES (10, 'Produkt');
-- Filiale (10);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (1, 'Filiale Salzburg 1', 'Hauptstraße 63', LPAD('5506', 5, '0'), 'Salzburg', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (2, 'Filiale Innsbruck 2', 'Ringstraße 174', LPAD('2679', 5, '0'), 'Innsbruck', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (3, 'Filiale Eisenstadt 3', 'Bahngasse 9', LPAD('7912', 5, '0'), 'Eisenstadt', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (4, 'Filiale Wien 4', 'Bahngasse 60', LPAD('4582', 5, '0'), 'Wien', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (5, 'Filiale Eisenstadt 5', 'Kärntner Straße 144', LPAD('1434', 5, '0'), 'Eisenstadt', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (6, 'Filiale Innsbruck 6', 'Graben 57', LPAD('7873', 5, '0'), 'Innsbruck', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (7, 'Filiale Bregenz 7', 'Kärntner Straße 2', LPAD('5557', 5, '0'), 'Bregenz', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (8, 'Filiale Graz 8', 'Opernring 72', LPAD('6574', 5, '0'), 'Graz', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (9, 'Filiale Graz 9', 'Neubaugasse 27', LPAD('6514', 5, '0'), 'Graz', 1);
INSERT INTO Filiale (PK_Filiale_ID, Bezeichnung, Strasse, PLZ, Ort, FK_Land_ID)
VALUES (10, 'Filiale Salzburg 10', 'Opernring 92', LPAD('2584', 5, '0'), 'Salzburg', 1);
-- FilialeTelefon (2-3 je Filiale);
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (1, '+43 1 2633052');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (1, '+43 1 2277370');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (1, '+43 1 2846335');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (2, '+43 1 2765179');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (2, '+43 1 2481741');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (3, '+43 1 2967096');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (3, '+43 1 2396922');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (4, '+43 1 2578856');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (4, '+43 1 2307419');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (5, '+43 1 2605397');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (5, '+43 1 2201629');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (5, '+43 1 2738797');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (6, '+43 1 2048050');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (6, '+43 1 2693384');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (7, '+43 1 2810620');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (7, '+43 1 2303445');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (8, '+43 1 2896865');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (8, '+43 1 2244098');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (9, '+43 1 2398591');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (9, '+43 1 2291476');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (10, '+43 1 2666563');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (10, '+43 1 2874628');
INSERT INTO FilialeTelefon (FK_Filiale_ID, Nummer)
VALUES (10, '+43 1 2382554');
-- Abteilung_Filiale (2-4 je Filiale);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (1, 6);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (1, 10);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (2, 5);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (2, 2);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (3, 3);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (3, 9);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (3, 4);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (3, 2);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (4, 7);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (4, 5);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (4, 4);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (5, 6);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (5, 1);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (5, 4);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (5, 7);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (6, 6);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (6, 7);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (7, 2);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (7, 4);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (7, 6);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (8, 8);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (8, 7);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (9, 8);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (9, 3);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (9, 5);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (9, 2);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (10, 9);
INSERT INTO Abteilung_Filiale (PK_FK_Filiale_ID, PK_FK_Abteilung_ID)
VALUES (10, 10);
-- Angestellte (20);
INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (1, 'Anna', 'Müller', '1991-10-14', 'Berggasse 36', '5020', 'Salzburg', 29, 4075.54, '2024-05-17', 0.05, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (2, 'Max', 'Huber', '2002-11-09', 'Hauptstraße 109', '1010', 'Wien', 28, 2796.05, '2021-07-14', 0.09, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (3, 'Lukas', 'Schmidt', '2006-10-02', 'Waldweg 142', '5020', 'Salzburg', 20, 5189.53, '2016-09-17', 0.08, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (4, 'Sophie', 'Gruber', '2018-08-12', 'Gartenweg 88', '1010', 'Wien', 22, 4888.93, '2016-02-17', 0.11, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (5, 'Paul', 'Wagner', '1985-01-01', 'Waldweg 68', '8010', 'Graz', 15, 2508.76, '2019-04-17', 0.11, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (6, 'Sara', 'Bauer', '2002-06-15', 'Berggasse 130', '1010', 'Wien', 28, 4188.31, '2018-01-01', 0.13, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (7, 'Lorenz', 'Pichler', '2007-04-26', 'Ringstraße 136', '4020', 'Linz', 25, 2936.18, '2018-03-25', 0.14, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (8, 'Marta', 'Steiner', '1980-01-10', 'Seestraße 79', '5020', 'Salzburg', 1, 2802.04, '2022-09-19', 0.05, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (9, 'Jonas', 'Hofer', '1990-09-28', 'Ringstraße 18', '6020', 'Innsbruck', 3, 2731.26, '2016-08-25', 0.07, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (10, 'Eva', 'Leitner', '2014-02-12', 'Ringstraße 68', '8010', 'Graz', 22, 3783.26, '2021-12-21', 0.08, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (11, 'David', 'Moser', '2003-09-02', 'Waldweg 52', '8010', 'Graz', 30, 3956.1, '2022-10-20', 0.11, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (12, 'Lea', 'Mayer', '2011-12-24', 'Waldweg 64', '4020', 'Linz', 15, 4928.96, '2019-06-30', 0.07, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (13, 'Felix', 'Fischer', '1990-01-29', 'Seestraße 2', '1010', 'Wien', 19, 3995.59, '2016-09-19', 0.09, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (14, 'Mia', 'Berger', '1983-03-09', 'Gartenweg 85', '1010', 'Wien', 8, 2681.98, '2023-12-09', 0.0, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (15, 'Nico', 'Wolf', '1983-03-06', 'Ringstraße 147', '4020', 'Linz', 22, 3810.62, '2021-10-06', 0.08, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (16, 'Julia', 'Lang', '2005-11-05', 'Ringstraße 111', '5020', 'Salzburg', 26, 3599.06, '2021-04-20', 0.01, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (17, 'Tobias', 'Kofler', '1995-11-22', 'Waldweg 26', '5020', 'Salzburg', 28, 4468.5, '2020-09-30', 0.1, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (18, 'Nina', 'Eder', '1982-09-20', 'Gartenweg 49', '4020', 'Linz', 26, 4826.52, '2020-07-07', 0.04, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (19, 'Marco', 'Koller', '2004-01-21', 'Ringstraße 20', '5020', 'Salzburg', 6, 3252.07, '2021-01-11', 0.04, NULL);

INSERT INTO Angestellte (PK_Angestellte_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID, Gehalt,
                         Eintrittsdatum, Gewinnbeteiligung, FK_Vorgesetzte_ID)
VALUES (20, 'Clara', 'Auer', '1999-11-17', 'Hauptstraße 24', '1010', 'Wien', 21, 5198.06, '2022-03-04', 0.13, NULL);

-- Setze Vorgesetzte laut Vorgabe;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 1
WHERE PK_Angestellte_ID = 2;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 1
WHERE PK_Angestellte_ID = 3;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 1
WHERE PK_Angestellte_ID = 15;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 1
WHERE PK_Angestellte_ID = 20;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 3
WHERE PK_Angestellte_ID = 13;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 3
WHERE PK_Angestellte_ID = 14;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 4
WHERE PK_Angestellte_ID = 5;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 4
WHERE PK_Angestellte_ID = 6;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 4
WHERE PK_Angestellte_ID = 7;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 6
WHERE PK_Angestellte_ID = 16;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 6
WHERE PK_Angestellte_ID = 18;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 8
WHERE PK_Angestellte_ID = 9;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 8
WHERE PK_Angestellte_ID = 10;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 8
WHERE PK_Angestellte_ID = 11;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 10
WHERE PK_Angestellte_ID = 12;
UPDATE Angestellte
SET FK_Vorgesetzte_ID = 11
WHERE PK_Angestellte_ID = 17;
-- AngestellteTelefon (2-3 je Angestellte/r);
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (1, '+43 662 7818496');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (1, '+43 667 9075854');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (2, '+43 666 1983738');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (2, '+43 662 7358113');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (3, '+43 666 5449368');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (3, '+43 667 5785687');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (4, '+43 668 9164991');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (4, '+43 662 4185957');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (4, '+43 664 4652414');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (5, '+43 669 2022698');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (5, '+43 665 1959074');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (6, '+43 669 8999183');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (6, '+43 668 9910817');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (7, '+43 660 9519948');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (7, '+43 661 4117625');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (8, '+43 669 2140194');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (8, '+43 663 7774229');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (9, '+43 669 5130808');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (9, '+43 669 1666754');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (10, '+43 666 9770838');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (10, '+43 665 5374922');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (11, '+43 665 5004485');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (11, '+43 664 7640184');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (12, '+43 664 8670955');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (12, '+43 665 2217071');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (13, '+43 667 2677407');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (13, '+43 661 4576135');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (14, '+43 662 6855396');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (14, '+43 661 5098412');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (14, '+43 665 5781295');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (15, '+43 667 6075395');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (15, '+43 669 9874152');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (16, '+43 668 6022741');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (16, '+43 661 3253031');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (17, '+43 661 2795765');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (17, '+43 668 3607983');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (17, '+43 664 5727085');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (18, '+43 665 4415796');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (18, '+43 664 9479356');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (19, '+43 664 1852264');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (19, '+43 661 8106422');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (19, '+43 664 1739653');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (20, '+43 665 3194789');
INSERT INTO AngestellteTelefon (FK_Angestellte_ID, Nummer)
VALUES (20, '+43 664 3710895');
-- Angestellte_Sprache (2-5 je Angestellte/r);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (1, 18);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (1, 23);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (1, 14);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (1, 1);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (1, 4);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (2, 29);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (2, 23);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (3, 18);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (3, 2);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (3, 27);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (4, 19);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (4, 18);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (4, 5);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (4, 14);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (5, 2);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (5, 10);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (5, 12);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (6, 29);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (6, 12);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (7, 22);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (7, 8);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (7, 4);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (8, 25);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (8, 18);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (8, 29);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (8, 28);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (9, 20);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (9, 24);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (9, 5);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (9, 30);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (9, 8);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (10, 26);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (10, 6);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (10, 29);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (11, 1);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (11, 6);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (11, 24);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (11, 30);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (11, 11);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (12, 26);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (12, 22);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (12, 28);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (12, 24);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (12, 8);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (13, 6);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (13, 26);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (13, 23);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (13, 4);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (14, 28);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (14, 2);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (14, 16);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (14, 8);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (14, 7);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (15, 12);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (15, 10);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (15, 27);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (15, 26);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (15, 28);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (16, 8);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (16, 1);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (16, 22);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (17, 13);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (17, 11);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (17, 9);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (18, 25);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (18, 9);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (19, 21);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (19, 17);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (19, 13);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (19, 22);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (20, 1);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (20, 4);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (20, 29);
INSERT INTO Angestellte_Sprache (PK_FK_Angestellte_ID, PK_FK_Sprache_ID)
VALUES (20, 9);
-- Gehalt (>=40 Einträge);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2020-07-28', '2021-06-08', 2095.64, 1);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-01-19', '2019-12-25', 3090.98, 2);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-12-26', '2021-03-11', 2289.11, 2);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2021-03-12', '2022-06-30', 2475.2, 2);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2016-09-14', '2017-10-19', 2174.93, 5);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2013-12-17', '2014-11-22', 3658.47, 6);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2014-11-23', '2015-07-24', 3799.39, 6);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2014-11-03', '2015-10-07', 3667.23, 7);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2015-10-08', '2016-09-19', 3006.0, 7);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-01-23', '2019-09-25', 2479.6, 8);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-09-26', '2020-10-04', 3693.29, 8);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2012-08-26', '2013-12-10', 2752.37, 9);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2021-01-28', '2022-03-04', 3964.4, 11);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2022-03-05', '2023-07-08', 3636.76, 11);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2016-06-21', '2017-08-01', 3689.07, 12);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2017-08-02', '2018-10-17', 3182.97, 12);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2018-10-18', '2019-07-11', 3647.13, 12);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2013-04-13', '2014-08-23', 2837.97, 13);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2014-08-24', '2015-06-20', 3681.99, 13);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2022-04-11', '2022-12-22', 2061.06, 14);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2018-07-21', '2019-11-25', 4124.34, 15);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2018-03-15', '2019-04-11', 4215.34, 16);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-04-12', '2020-07-29', 2486.09, 16);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2020-07-30', '2021-08-10', 3235.94, 16);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-05-17', '2019-11-15', 4231.65, 17);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-11-16', '2020-07-07', 3946.05, 17);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2020-07-08', '2021-04-26', 2439.72, 17);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-09-09', '2020-12-17', 2623.0, 18);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2020-12-18', '2021-08-17', 3141.15, 18);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2021-08-18', '2022-10-09', 3668.94, 18);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2018-01-01', '2019-05-09', 4037.52, 19);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2019-05-10', '2020-07-21', 3066.85, 19);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2020-07-22', '2021-10-25', 3114.78, 19);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2018-12-18', '2020-02-01', 2647.98, 20);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2020-02-02', '2020-12-04', 4099.66, 20);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2020-12-05', '2021-10-22', 3914.53, 20);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2014-01-01', '2015-01-01', 2569.17, 1);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2014-01-01', '2015-01-01', 2664.07, 2);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2014-01-01', '2015-01-01', 2347.14, 3);
INSERT INTO Gehalt (PK_von, bis, Gehalt, PK_FK_Angestellte_ID)
VALUES ('2014-01-01', '2015-01-01', 2169.74, 4);
-- Angestellte_Filiale (40 Einträge, Historie);
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (1, 5, '2023-09-21', '2024-09-26');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (1, 4, '2024-09-27', '2026-03-08');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (2, 9, '2021-01-25', '2021-10-29');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (2, 2, '2021-10-30', '2023-01-09');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (3, 7, '2015-06-14', '2016-04-18');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (3, 3, '2016-04-19', '2017-01-09');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (4, 7, '2015-05-24', '2016-09-12');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (4, 10, '2016-09-13', '2018-07-22');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (5, 7, '2018-09-24', '2019-11-13');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (5, 1, '2019-11-14', '2021-07-04');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (6, 10, '2016-07-12', '2018-02-23');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (6, 1, '2018-02-24', '2020-04-23');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (7, 7, '2017-12-12', '2018-12-27');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (7, 8, '2018-12-28', '2020-05-16');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (8, 7, '2021-09-09', '2023-04-14');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (8, 10, '2023-04-15', '2025-05-13');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (9, 10, '2015-09-11', '2016-07-19');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (9, 4, '2016-07-20', '2017-11-11');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (10, 7, '2021-08-29', '2022-10-02');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (10, 8, '2022-10-03', '2024-03-30');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (11, 7, '2021-05-08', '2022-07-21');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (11, 3, '2022-07-22', '2023-06-17');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (12, 10, '2019-03-09', '2020-04-13');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (12, 9, '2020-04-14', '2022-05-31');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (13, 1, '2015-07-18', '2016-09-09');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (13, 2, '2016-09-10', '2017-08-14');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (14, 8, '2023-08-06', '2024-07-04');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (14, 3, '2024-07-05', '2026-02-13');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (15, 6, '2020-11-08', '2021-11-10');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (15, 4, '2021-11-11', '2023-05-10');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (16, 7, '2019-12-22', '2021-02-09');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (16, 5, '2021-02-10', '2022-05-14');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (17, 2, '2020-06-13', '2022-01-17');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (17, 8, '2022-01-18', '2024-02-09');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (18, 1, '2019-12-06', '2021-05-21');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (18, 6, '2021-05-22', '2022-02-16');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (19, 1, '2019-06-05', '2020-04-26');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (19, 10, '2020-04-27', '2021-06-05');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (20, 1, '2021-07-25', '2022-04-15');
INSERT INTO Angestellte_Filiale (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (20, 3, '2022-04-16', '2024-02-29');
-- Filialleitung (40 Einträge, Historie);
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (4, 10, '2018-04-15', '2018-09-05');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (4, 5, '2018-03-19', '2019-03-10');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (4, 1, '2020-07-01', '2021-06-20');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (4, 7, '2021-06-13', '2021-11-21');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (4, 2, '2019-09-22', '2020-01-12');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (19, 5, '2018-05-11', '2019-04-25');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (19, 1, '2020-11-23', '2021-10-21');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (19, 7, '2021-02-26', '2021-06-01');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (19, 9, '2020-10-29', '2021-01-03');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (19, 7, '2022-07-01', '2022-10-23');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (7, 7, '2021-01-23', '2021-11-14');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (7, 3, '2021-11-19', '2022-04-18');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (7, 9, '2020-01-12', '2020-12-12');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (7, 8, '2022-03-20', '2022-12-28');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (7, 10, '2020-01-05', '2020-08-17');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (15, 4, '2017-12-21', '2018-07-11');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (15, 8, '2019-09-26', '2020-07-19');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (15, 10, '2021-04-02', '2021-11-20');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (15, 1, '2022-07-18', '2023-03-01');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (15, 3, '2022-06-21', '2022-12-06');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (9, 6, '2019-11-25', '2020-07-16');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (9, 5, '2020-02-06', '2021-01-15');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (9, 1, '2022-10-18', '2023-03-24');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (9, 2, '2019-09-16', '2020-06-10');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (9, 8, '2023-03-25', '2023-09-24');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (13, 8, '2022-07-04', '2023-04-19');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (13, 1, '2018-01-17', '2018-08-15');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (13, 4, '2021-07-15', '2022-01-15');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (13, 5, '2023-07-11', '2024-03-15');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (13, 8, '2023-03-18', '2024-02-12');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (6, 6, '2021-10-09', '2022-09-15');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (6, 6, '2020-12-12', '2021-09-30');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (6, 5, '2020-06-09', '2020-12-14');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (6, 4, '2018-05-10', '2018-10-15');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (6, 6, '2018-05-05', '2019-04-04');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (3, 3, '2019-02-24', '2019-08-13');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (3, 8, '2020-02-07', '2020-12-31');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (3, 10, '2020-03-05', '2020-06-24');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (3, 4, '2020-04-28', '2020-10-21');
INSERT INTO Filialleitung (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von, bis)
VALUES (3, 6, '2019-01-05', '2019-08-07');
-- Reise (10);
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (1, 'Alpenzauber Tirol', 'Geführte Rundreise: Alpenzauber Tirol.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (2, 'Donau-Metropolen', 'Geführte Rundreise: Donau-Metropolen.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (3, 'Italienische Riviera', 'Geführte Rundreise: Italienische Riviera.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (4, 'Andalusische Sonne', 'Geführte Rundreise: Andalusische Sonne.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (5, 'Skandinavische Fjorde', 'Geführte Rundreise: Skandinavische Fjorde.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (6, 'Paris & Loire', 'Geführte Rundreise: Paris & Loire.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (7, 'Irland Rundreise', 'Geführte Rundreise: Irland Rundreise.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (8, 'Japan Highlights', 'Geführte Rundreise: Japan Highlights.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (9, 'USA Westküste', 'Geführte Rundreise: USA Westküste.');
INSERT INTO Reise (PK_Reise_ID, Bezeichnung, Beschreibung)
VALUES (10, 'Peru & Machu Picchu', 'Geführte Rundreise: Peru & Machu Picchu.');
-- Reiseabschnitt (3-7 je Reise);
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (1, 1, 3, 'Programm Tag 1-3 für Reise 1');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (1, 4, 6, 'Programm Tag 4-6 für Reise 1');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (1, 7, 7, 'Programm Tag 7-7 für Reise 1');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (2, 1, 1, 'Programm Tag 1-1 für Reise 2');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (2, 2, 2, 'Programm Tag 2-2 für Reise 2');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (2, 3, 5, 'Programm Tag 3-5 für Reise 2');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (2, 6, 7, 'Programm Tag 6-7 für Reise 2');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (2, 8, 10, 'Programm Tag 8-10 für Reise 2');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (3, 1, 3, 'Programm Tag 1-3 für Reise 3');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (3, 4, 5, 'Programm Tag 4-5 für Reise 3');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (3, 6, 6, 'Programm Tag 6-6 für Reise 3');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (3, 7, 7, 'Programm Tag 7-7 für Reise 3');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (4, 1, 2, 'Programm Tag 1-2 für Reise 4');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (4, 3, 4, 'Programm Tag 3-4 für Reise 4');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (4, 5, 6, 'Programm Tag 5-6 für Reise 4');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (4, 7, 8, 'Programm Tag 7-8 für Reise 4');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (4, 9, 10, 'Programm Tag 9-10 für Reise 4');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (4, 11, 11, 'Programm Tag 11-11 für Reise 4');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (4, 12, 12, 'Programm Tag 12-12 für Reise 4');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (5, 1, 2, 'Programm Tag 1-2 für Reise 5');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (5, 3, 3, 'Programm Tag 3-3 für Reise 5');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (5, 4, 4, 'Programm Tag 4-4 für Reise 5');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (5, 5, 6, 'Programm Tag 5-6 für Reise 5');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (5, 7, 8, 'Programm Tag 7-8 für Reise 5');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (6, 1, 3, 'Programm Tag 1-3 für Reise 6');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (6, 4, 6, 'Programm Tag 4-6 für Reise 6');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (6, 7, 9, 'Programm Tag 7-9 für Reise 6');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (7, 1, 1, 'Programm Tag 1-1 für Reise 7');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (7, 2, 2, 'Programm Tag 2-2 für Reise 7');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (7, 3, 5, 'Programm Tag 3-5 für Reise 7');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (8, 1, 1, 'Programm Tag 1-1 für Reise 8');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (8, 2, 2, 'Programm Tag 2-2 für Reise 8');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (8, 3, 3, 'Programm Tag 3-3 für Reise 8');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (8, 4, 6, 'Programm Tag 4-6 für Reise 8');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (8, 7, 8, 'Programm Tag 7-8 für Reise 8');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (9, 1, 3, 'Programm Tag 1-3 für Reise 9');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (9, 4, 6, 'Programm Tag 4-6 für Reise 9');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (9, 7, 7, 'Programm Tag 7-7 für Reise 9');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (9, 8, 10, 'Programm Tag 8-10 für Reise 9');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (9, 11, 12, 'Programm Tag 11-12 für Reise 9');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (9, 13, 14, 'Programm Tag 13-14 für Reise 9');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (9, 15, 16, 'Programm Tag 15-16 für Reise 9');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (10, 1, 3, 'Programm Tag 1-3 für Reise 10');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (10, 4, 5, 'Programm Tag 4-5 für Reise 10');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (10, 6, 7, 'Programm Tag 6-7 für Reise 10');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (10, 8, 10, 'Programm Tag 8-10 für Reise 10');
INSERT INTO Reiseabschnitt (FK_Reise_ID, VonTagNr, BisTagNr, Beschreibung)
VALUES (10, 11, 13, 'Programm Tag 11-13 für Reise 10');
-- Reiseangebot (20);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (1, 1, 2, '2025-04-20', 3831.29, 21);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (2, 2, 7, '2025-07-14', 2912.37, 20);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (3, 3, 8, '2025-05-28', 2565.38, 20);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (4, 4, 1, '2025-09-26', 2240.61, 34);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (5, 5, 16, '2025-07-28', 903.45, 24);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (6, 6, 10, '2025-10-19', 1026.78, 22);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (7, 7, 9, '2025-06-10', 2159.44, 32);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (8, 8, 8, '2025-05-16', 3705.92, 19);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (9, 9, 3, '2025-03-31', 1329.95, 24);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (10, 10, 20, '2025-12-17', 3746.82, 29);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (11, 1, 4, '2025-10-26', 3002.77, 37);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (12, 2, 13, '2025-07-18', 2400.51, 30);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (13, 3, 15, '2025-04-11', 2712.72, 28);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (14, 4, 11, '2025-07-07', 881.77, 22);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (15, 5, 19, '2025-12-26', 3841.52, 39);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (16, 6, 9, '2025-12-21', 927.74, 39);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (17, 7, 6, '2025-10-27', 2459.68, 29);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (18, 8, 9, '2025-06-01', 3989.23, 28);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (19, 9, 16, '2025-04-16', 2303.03, 28);
INSERT INTO Reiseangebot (PK_Reiseangebot_ID, FK_Reise_ID, FK_Reiseleiter_ID, Abreisedatum, Preis, AngebotenePlaetze)
VALUES (20, 10, 11, '2025-08-12', 2943.43, 20);
-- Kunde (30);
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (1, 'Lena', 'Schneider', '1994-08-04', 'Kirchengasse 10', '9020', 'Klagenfurt', 16, 10, 2, '973559879',
        '2030-01-31');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (2, 'Tom', 'Maier', '2005-10-21', 'Parkallee 132', '4020', 'Linz', 9, 11, 1, '929517022', '2029-04-07');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (3, 'Emilia', 'Hofmann', '1965-02-07', 'Feldstraße 93', '6020', 'Innsbruck', 15, 14, 1, '301415220',
        '2029-11-27');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (4, 'Noah', 'Schwarz', '2009-09-21', 'Feldstraße 34', '5020', 'Salzburg', 25, 2, 1, '386749454', '2030-01-29');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (5, 'Hannah', 'Weiss', '1990-11-04', 'Kirchengasse 62', '9020', 'Klagenfurt', 16, 4, 1, '776481264',
        '2030-05-31');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (6, 'Liam', 'Fuchs', '1979-03-18', 'Lindenstraße 30', '6020', 'Innsbruck', 1, 18, 2, '200082623', '2028-04-05');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (7, 'Laura', 'Kraus', '2006-05-26', 'Parkallee 131', '9020', 'Klagenfurt', 27, 5, 2, '869446962', '2028-08-20');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (8, 'Moritz', 'Kuhn', '1989-07-13', 'Kirchengasse 99', '5020', 'Salzburg', 16, 8, 2, '691916368', '2027-10-24');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (9, 'Amelie', 'Seidl', '1982-02-06', 'Schulgasse 198', '6020', 'Innsbruck', 24, 29, 1, '174958005',
        '2028-07-19');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (10, 'Jan', 'Lechner', '2002-03-24', 'Lindenstraße 77', '6020', 'Innsbruck', 9, 27, 1, '403696046',
        '2031-01-26');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (11, 'Elena', 'Brandstätter', '2017-08-28', 'Schulgasse 124', '9020', 'Klagenfurt', 16, 28, 1, '579476614',
        '2030-01-08');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (12, 'Tim', 'Trummer', '1995-12-19', 'Lindenstraße 49', '6020', 'Innsbruck', 25, 18, 2, '588922557',
        '2028-10-21');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (13, 'Mila', 'Krenn', '1986-06-05', 'Schulgasse 191', '5020', 'Salzburg', 8, 28, 2, '146865930', '2028-10-13');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (14, 'Ben', 'Binder', '2007-06-08', 'Feldstraße 33', '5020', 'Salzburg', 13, 22, 1, '631855083', '2027-03-17');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (15, 'Marie', 'Nowak', '2010-01-24', 'Schulgasse 117', '4020', 'Linz', 28, 4, 2, '207064620', '2029-12-13');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (16, 'Leon', 'Kaltenegger', '1966-05-18', 'Feldstraße 68', '8010', 'Graz', 14, 28, 1, '180346223', '2029-08-19');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (17, 'Sophia', 'Reiter', '1995-05-17', 'Schulgasse 137', '9020', 'Klagenfurt', 13, 21, 1, '452794611',
        '2030-10-13');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (18, 'Finn', 'Patzelt', '1999-02-04', 'Lindenstraße 159', '9020', 'Klagenfurt', 23, 29, 2, '680911523',
        '2027-03-15');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (19, 'Johanna', 'Posch', '1971-02-21', 'Sonnenweg 112', '9020', 'Klagenfurt', 22, 30, 2, '344261532',
        '2027-07-05');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (20, 'Luis', 'Aigner', '1973-10-31', 'Feldstraße 77', '9020', 'Klagenfurt', 28, 4, 2, '278632824', '2030-11-22');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (21, 'Valentina', 'Tiefenbacher', '1967-08-07', 'Parkallee 111', '4020', 'Linz', 26, 2, 2, '484897084',
        '2029-02-06');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (22, 'Theo', 'Bacher', '1978-01-23', 'Sonnenweg 21', '6020', 'Innsbruck', 14, 19, 1, '282518553', '2027-12-25');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (23, 'Paula', 'Kroell', '2019-09-06', 'Kirchengasse 60', '6020', 'Innsbruck', 22, 8, 2, '726160204',
        '2027-10-21');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (24, 'Felix', 'Aichinger', '2006-05-16', 'Feldstraße 74', '4020', 'Linz', 15, 9, 1, '963968184', '2029-08-10');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (25, 'Marlene', 'Scharf', '2014-01-14', 'Sonnenweg 177', '1010', 'Wien', 15, 12, 2, '786055206', '2029-05-18');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (26, 'Jakob', 'Stadler', '1987-06-10', 'Kirchengasse 98', '4020', 'Linz', 7, 13, 2, '214518079', '2028-04-30');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (27, 'Clara', 'Leeb', '2016-04-23', 'Lindenstraße 102', '6020', 'Innsbruck', 10, 23, 2, '123557463',
        '2030-09-10');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (28, 'Samuel', 'Stocker', '1989-08-17', 'Parkallee 74', '6020', 'Innsbruck', 28, 22, 1, '751124015',
        '2029-10-14');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (29, 'Pia', 'Ertl', '1985-08-24', 'Schulgasse 174', '4020', 'Linz', 8, 21, 1, '766676815', '2028-05-28');
INSERT INTO Kunde (PK_Kunde_ID, Vorname, Nachname, Geburtsdatum, Strasse, PLZ, Ort, FK_Land_ID,
                   FK_Staatsangehoerigkeit_ID, FK_Reisedokumentart_ID, Reisedokumentnummer, Reisedokumentablaufdatum)
VALUES (30, 'Elias', 'Toth', '1977-04-09', 'Feldstraße 9', '1010', 'Wien', 29, 21, 1, '431714152', '2029-06-21');

-- KundeTelefon (>=40, 1-2 je Kunde);
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (1, '+43 679 7121355');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (2, '+43 672 2512187');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (3, '+43 674 6481437');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (3, '+43 676 3946751');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (4, '+43 673 3217273');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (5, '+43 678 7138070');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (6, '+43 678 9418719');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (6, '+43 674 3760597');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (7, '+43 674 9084065');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (8, '+43 674 6682698');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (9, '+43 671 8857296');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (9, '+43 671 3361510');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (10, '+43 673 7667458');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (11, '+43 678 7136687');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (12, '+43 671 7619862');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (12, '+43 670 5436878');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (13, '+43 678 3073474');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (14, '+43 677 7183841');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (15, '+43 674 7392547');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (15, '+43 675 2817745');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (16, '+43 673 8910069');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (17, '+43 670 6503032');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (18, '+43 679 4713925');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (18, '+43 671 8789116');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (19, '+43 674 7850067');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (20, '+43 671 3345069');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (21, '+43 670 1624315');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (21, '+43 674 9264869');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (22, '+43 671 2630611');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (23, '+43 673 3276065');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (24, '+43 676 8610879');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (24, '+43 675 8031780');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (25, '+43 679 3592464');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (26, '+43 676 2661307');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (27, '+43 677 7847048');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (27, '+43 674 1548888');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (28, '+43 675 4645180');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (29, '+43 677 8460758');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (30, '+43 673 7084862');
INSERT INTO KundeTelefon (FK_Kunde_ID, Nummer)
VALUES (30, '+43 671 7162857');
-- Kunde_Vielfliegerprogramm (>=30 Zuordnungen);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (1, 3, '3163491001', 52184);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (1, 2, '2389282001', 24878);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (3, 1, '1794963003', 27801);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (4, 3, '3153035004', 103126);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (4, 1, '1449709004', 31925);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (6, 1, '1970127006', 100290);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (6, 3, '3681128006', 27152);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (7, 1, '1444519007', 101498);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (7, 3, '3254721007', 103369);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (8, 1, '1251716008', 17038);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (8, 2, '2666456008', 32853);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (11, 1, '1115582011', 46955);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (11, 3, '3928358011', 103341);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (13, 2, '2282710013', 34782);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (13, 1, '1154944013', 16614);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (14, 2, '2881886014', 8330);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (14, 1, '1599380014', 58756);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (15, 3, '3722503015', 14293);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (16, 3, '3332311016', 80623);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (18, 3, '3580292018', 84323);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (18, 2, '2132663018', 7972);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (19, 2, '2546980019', 89928);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (21, 3, '3565108021', 9632);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (23, 3, '3255539023', 8609);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (25, 3, '3763829025', 76724);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (26, 3, '3499407026', 78301);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (26, 2, '2656329026', 38652);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (27, 3, '3203996027', 103952);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (27, 2, '2835869027', 14996);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (28, 3, '3550961028', 59186);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (28, 1, '1339592028', 54239);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (29, 2, '2518098029', 54524);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (30, 1, '1547494030', 40963);
INSERT INTO Kunde_Vielfliegerprogramm (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID, Mitgliedsnummer, Punktestand)
VALUES (30, 2, '2797416030', 33408);
-- Reisebuchung (100);
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (1, 12, 5, 16, '2025-04-04');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (2, 3, 14, 4, '2025-09-07');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (3, 2, 19, 18, '2025-12-13');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (4, 14, 12, 14, '2025-03-27');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (5, 10, 12, 4, '2025-12-21');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (6, 16, 8, 4, '2025-08-27');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (7, 4, 25, 9, '2025-12-19');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (8, 18, 25, 20, '2025-12-11');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (9, 1, 6, 9, '2025-08-06');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (10, 1, 6, 5, '2025-12-15');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (11, 5, 24, 1, '2025-04-16');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (12, 13, 14, 15, '2025-08-22');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (13, 11, 25, 19, '2025-04-13');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (14, 6, 25, 20, '2025-03-26');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (15, 15, 22, 14, '2025-11-04');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (16, 9, 7, 17, '2025-04-28');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (17, 10, 22, 19, '2025-11-05');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (18, 2, 8, 13, '2025-03-29');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (19, 7, 25, 5, '2025-07-09');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (20, 1, 16, 14, '2025-05-29');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (21, 8, 17, 18, '2025-08-29');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (22, 14, 1, 15, '2025-04-09');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (23, 14, 19, 13, '2025-09-30');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (24, 1, 11, 6, '2025-10-22');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (25, 3, 14, 4, '2025-07-03');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (26, 17, 3, 13, '2025-08-06');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (27, 11, 25, 6, '2025-04-09');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (28, 17, 17, 7, '2025-08-26');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (29, 8, 4, 5, '2025-07-10');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (30, 5, 25, 3, '2025-05-30');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (31, 15, 25, 19, '2025-12-22');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (32, 20, 11, 11, '2025-05-17');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (33, 15, 21, 10, '2025-07-19');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (34, 17, 3, 10, '2025-10-23');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (35, 12, 27, 10, '2025-04-09');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (36, 20, 20, 17, '2025-09-13');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (37, 2, 15, 19, '2025-06-05');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (38, 17, 5, 2, '2025-10-17');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (39, 3, 17, 6, '2025-03-21');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (40, 15, 17, 17, '2025-05-21');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (41, 13, 14, 11, '2025-03-27');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (42, 3, 11, 4, '2025-12-11');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (43, 9, 24, 20, '2025-05-16');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (44, 5, 30, 12, '2025-08-06');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (45, 5, 20, 3, '2025-08-06');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (46, 5, 22, 17, '2025-04-17');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (47, 17, 12, 1, '2025-09-02');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (48, 11, 25, 16, '2025-06-07');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (49, 5, 3, 10, '2025-04-21');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (50, 17, 2, 11, '2025-05-07');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (51, 6, 6, 20, '2025-05-24');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (52, 14, 12, 8, '2025-10-14');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (53, 8, 18, 8, '2025-08-06');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (54, 7, 12, 19, '2025-10-12');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (55, 13, 17, 17, '2025-10-01');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (56, 20, 5, 9, '2025-03-27');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (57, 18, 30, 4, '2025-11-20');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (58, 3, 25, 6, '2025-07-18');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (59, 5, 27, 14, '2025-04-16');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (60, 15, 29, 12, '2025-03-14');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (61, 17, 12, 8, '2025-09-14');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (62, 8, 1, 11, '2025-04-20');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (63, 5, 5, 2, '2025-07-25');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (64, 5, 25, 16, '2025-10-16');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (65, 1, 9, 7, '2025-05-16');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (66, 17, 14, 4, '2025-07-26');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (67, 2, 8, 14, '2025-10-21');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (68, 20, 18, 1, '2025-11-19');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (69, 10, 14, 1, '2025-08-28');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (70, 6, 22, 3, '2025-11-24');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (71, 17, 18, 17, '2025-11-15');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (72, 16, 2, 13, '2025-09-08');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (73, 12, 26, 3, '2025-08-24');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (74, 19, 24, 11, '2025-05-08');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (75, 11, 27, 6, '2025-10-24');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (76, 6, 26, 5, '2025-04-02');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (77, 2, 10, 7, '2025-03-23');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (78, 11, 30, 10, '2025-11-19');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (79, 16, 9, 2, '2025-06-06');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (80, 11, 9, 4, '2025-09-05');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (81, 15, 29, 13, '2025-08-21');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (82, 16, 12, 17, '2025-07-15');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (83, 3, 14, 20, '2025-06-01');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (84, 4, 3, 11, '2025-07-30');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (85, 14, 6, 15, '2025-08-27');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (86, 20, 14, 9, '2025-03-30');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (87, 12, 17, 6, '2025-03-16');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (88, 15, 2, 5, '2025-04-04');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (89, 12, 13, 19, '2025-03-17');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (90, 12, 12, 15, '2025-04-09');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (91, 12, 13, 11, '2025-07-21');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (92, 1, 24, 6, '2025-11-11');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (93, 4, 9, 9, '2025-10-15');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (94, 10, 23, 16, '2025-06-11');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (95, 15, 6, 15, '2025-04-14');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (96, 12, 23, 3, '2025-12-07');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (97, 6, 23, 6, '2025-09-02');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (98, 7, 26, 5, '2025-06-30');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (99, 12, 18, 19, '2025-09-05');
INSERT INTO Reisebuchung (PK_Reisebuchung_ID, FK_Reiseangebot_ID, FK_Kunde_ID, FK_Angestellte_ID, Buchungsdatum)
VALUES (100, 5, 20, 3, '2025-04-03');
-- Zahlung (>=30, inkl. Teilzahlungen);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (1, 68, '2025-01-20', 922.11);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (2, 68, '2025-02-18', 1717.04);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (3, 53, '2025-02-11', 1429.72);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (4, 53, '2025-04-07', 2459.19);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (5, 99, '2025-05-01', 1304.49);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (6, 99, '2025-06-13', 990.21);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (7, 74, '2025-04-19', 353.0);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (8, 74, '2025-05-04', 587.87);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (9, 10, '2025-03-23', 1109.73);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (10, 10, '2025-05-07', 1792.77);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (11, 17, '2025-03-22', 1203.65);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (12, 17, '2025-04-20', 1281.54);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (13, 41, '2025-01-12', 1636.65);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (14, 41, '2025-02-23', 1687.88);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (15, 83, '2025-03-17', 881.06);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (16, 83, '2025-05-03', 1663.46);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (17, 96, '2025-03-26', 1308.0);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (18, 96, '2025-05-14', 1225.95);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (19, 58, '2025-03-19', 1236.42);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (20, 58, '2025-04-19', 1000.4);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (21, 60, '2025-03-14', 1164.5);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (22, 60, '2025-03-26', 962.17);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (23, 88, '2025-01-04', 487.45);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (24, 88, '2025-01-19', 1066.74);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (25, 67, '2025-03-24', 473.02);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (26, 67, '2025-05-22', 526.96);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (27, 45, '2025-03-25', 1371.63);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (28, 45, '2025-04-17', 1215.92);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (29, 95, '2025-02-23', 1668.15);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (30, 95, '2025-04-13', 1724.49);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (31, 71, '2025-03-05', 1192.7);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (32, 71, '2025-04-24', 1379.59);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (33, 82, '2025-03-24', 1496.0);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (34, 82, '2025-04-22', 1866.67);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (35, 76, '2025-04-14', 1303.59);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (36, 76, '2025-06-06', 1786.75);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (37, 24, '2025-02-28', 1753.53);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (38, 24, '2025-03-14', 1707.95);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (39, 86, '2025-01-21', 441.3);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (40, 86, '2025-02-28', 597.83);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (41, 56, '2025-03-01', 1146.17);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (42, 56, '2025-03-24', 1704.6);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (43, 65, '2025-01-19', 1426.92);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (44, 65, '2025-02-18', 1128.25);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (45, 8, '2025-02-10', 526.63);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (46, 8, '2025-04-07', 356.38);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (47, 16, '2025-02-14', 645.74);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (48, 16, '2025-03-21', 1257.81);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (49, 89, '2025-02-17', 1281.48);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (50, 89, '2025-03-31', 1453.82);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (51, 41, '2025-03-16', 3324.53);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (52, 31, '2025-04-09', 2235.5);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (53, 60, '2025-06-07', 2126.67);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (54, 16, '2025-04-18', 1903.55);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (55, 35, '2025-03-05', 2861.93);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (56, 58, '2025-02-10', 2236.82);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (57, 32, '2025-03-25', 2206.24);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (58, 19, '2025-05-28', 1725.23);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (59, 13, '2025-03-22', 3625.69);
INSERT INTO Zahlung (PK_Zahlung_ID, FK_Reisebuchung_ID, Datum, Betrag)
VALUES (60, 7, '2025-02-18', 1522.71);
-- Reiseteilnehmer (>=40);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (98, 24);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (21, 12);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (64, 25);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (66, 13);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (60, 12);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (100, 2);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (40, 13);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (95, 2);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (3, 19);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (12, 18);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (51, 7);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (65, 12);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (59, 18);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (31, 10);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (28, 3);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (75, 13);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (46, 17);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (7, 15);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (83, 25);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (37, 18);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (93, 9);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (77, 27);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (61, 20);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (81, 22);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (69, 20);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (2, 4);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (14, 5);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (56, 4);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (18, 13);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (34, 12);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (44, 26);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (72, 16);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (47, 17);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (97, 15);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (19, 5);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (26, 20);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (78, 29);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (66, 17);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (52, 5);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (65, 11);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (6, 30);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (5, 20);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (18, 11);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (92, 6);
INSERT INTO Reiseteilnehmer (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID)
VALUES (43, 13);