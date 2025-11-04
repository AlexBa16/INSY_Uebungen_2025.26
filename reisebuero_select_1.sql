USE Reisebuero;

--  1) Welche Kunden haben Reisen gebucht, die (auch) nach Italien führen? Geben Sie Vornamen u. Nachname, Reisenummer u. Reisebezeichnung aus.
--     Hinweis: In der Beschreibung nach dem Begriff "Italien" suchen.
SELECT DISTINCT CONCAT(Kunde.Vorname, ' ', Kunde.Nachname) as Name, R.PK_Reise_ID, R.Bezeichnung
FROM Kunde
         JOIN Reisebuchung RB on Kunde.PK_Kunde_ID = RB.FK_Kunde_ID
         JOIN Reiseangebot RA on RA.PK_Reiseangebot_ID = RB.FK_Reiseangebot_ID
         JOIN Reise R on RA.FK_Reise_ID = R.PK_Reise_ID
         JOIN Reiseabschnitt RAB on R.PK_Reise_ID = RAB.FK_Reise_ID
WHERE RAB.Beschreibung LIKE '%Italien%';

--  2) Geben Sie all jene Mitarbeiter (vollständiger Name und Wohnadresse) aus, die momentan in Filialen arbeiten, die sich in Wien, Salzburg und Graz befinden.
SELECT DISTINCT Angestellte.Vorname, Angestellte.Nachname, Angestellte.Strasse, Angestellte.PLZ, Angestellte.Ort
FROM Angestellte
         JOIN Angestellte_Filiale AF on Angestellte.PK_Angestellte_ID = AF.PK_FK_Angestellte_ID
         Join Filiale F on AF.PK_FK_Filiale_ID = F.PK_Filiale_ID
WHERE F.Ort IN ('Graz', 'Salzburg', 'Wien')
  AND AF.bis IS NULL;

--  3) Für statistische Zwecke soll folgendes ermittelt werden:
--     Welche Kunden haben bereits mehrfach (also mindestens zweimal) gebucht?
--     Geben Sie den vollständigen Namen sowie die Anzahl der durchgeführten Buchungen aus. Diese Information soll in zwei Spalten mit folgenden Überschriften ausgegeben werden:
--     Vorname Nachname | Anzahl der Buchungen
SELECT Kunde.Vorname, Kunde.Nachname, COUNT(*) Anzahl_Buchungen
FROM Kunde
         JOIN Reisebuchung R on Kunde.PK_Kunde_ID = R.FK_Kunde_ID
GROUP BY Kunde.Vorname, Kunde.Nachname
HAVING Anzahl_Buchungen >= 2;

--  4) Ausgabe aller Mitarbeiter - Familienname, Vorname, zwei Gehälter (das aktuelle und das jüngste historische) und alle Telefonnummern.
--     Es sollen auch Mitarbeiter ausgegeben werden, die keine Telefonnummer besitzen.
SELECT Angestellte.Vorname,
       Angestellte.Nachname,
       (SELECT Gehalt.Gehalt FROM Gehalt WHERE bis IS NULL)                AktGehalt,
       (SELECT Gehalt.Gehalt
        FROM Gehalt
        WHERE bis =
              (SELECT MAX(Gmax.bis) FROM Gehalt AS Gmax WHERE Gmax.PK_FK_Angestellte_ID = Angestellte.PK_Angestellte_ID)
          AND Gehalt.PK_FK_Angestellte_ID = Angestellte.PK_Angestellte_ID) JHistGehalt,
       AT.Nummer
FROM Angestellte
         LEFT JOIN AngestellteTelefon AT on Angestellte.PK_Angestellte_ID = AT.FK_Angestellte_ID;

--  5) Ermitteln Sie die Anzahl der Buchungen, die die einzelnen Mitarbeiter bearbeitet (durchgeführt) haben.
--     Die ausgegebene Tabelle soll folgende Überschriften besitzen:
--     Vorname | Nachname | Anzahl-Buchungen
--     Die Sortierung soll zunächst nach der Anzahl der Buchungen (absteigend) und Anschließend nach Nach- und Vorname (jeweils aufsteigend) erfolgen.
SELECT Angestellte.Vorname, Angestellte.Nachname, COUNT(*) AS Anzahl_Buchungen
FROM Angestellte
         JOIN Reisebuchung RB on Angestellte.PK_Angestellte_ID = RB.FK_Angestellte_ID
GROUP BY Angestellte.Vorname, Angestellte.Nachname
ORDER BY Anzahl_Buchungen DESC, Angestellte.Nachname, Angestellte.Vorname;

--  6) Geben Sie eine Liste (Name und Adresse) all jener Kunden aus, von denen keine Telefonnummer in der Datenbank gespeichert ist. Die Ausgabe soll absteigend nach der Postleitzahl sortiert werden.
SELECT Kunde.Vorname, Kunde.Nachname, Kunde.Strasse, Kunde.PLZ, Kunde.Ort
FROM Kunde
         LEFT JOIN KundeTelefon KT on Kunde.PK_Kunde_ID = KT.FK_Kunde_ID
WHERE KT.Nummer IS NULL
ORDER BY Kunde.PLZ DESC;

--  7) In der Tabelle mit den Mitarbeiter-Daten werden sehr oft Anfragen über den Namen (Familien- und Vornamen) durchgeführt. Für einen optimierten Zugriff soll ein zusätzlicher Index erstellt werden.
# CREATE INDEX AngestellteIndex ON Angestellte (Nachname, Vorname);

--  8) Wie viel wurde für die einzelnen Buchungen bereits bezahlt? Geben Sie die Buchungsnr. und das Buchungsdatum sowie das Abreisedatum, den Namen des Kunden und die Summe der bereits getätigten Zahlungen aus.
SELECT RB.PK_Reisebuchung_ID,
       RB.Buchungsdatum,
       RA.Abreisedatum,
       Kunde.Vorname,
       Kunde.Nachname,
       SUM(Z.Betrag) AS Summe_der_Zahlungen
FROM Kunde
         JOIN Reisebuchung RB on Kunde.PK_Kunde_ID = RB.FK_Kunde_ID
         JOIN Reiseangebot RA on RA.PK_Reiseangebot_ID = RB.FK_Reiseangebot_ID
         LEFT JOIN Zahlung Z on RB.PK_Reisebuchung_ID = Z.FK_Reisebuchung_ID
GROUP BY RB.PK_Reisebuchung_ID, RB.Buchungsdatum, RA.Abreisedatum, Kunde.Vorname, Kunde.Nachname;

--  9) Erzeugen Sie eine View AngestellteView, welche von den Mitarbeitern Vor- und Nachname enthält.
--     Außerdem soll in der View auch die Filiale (Bezeichnung und Ort) enthalten sein, in der der Mitarbeiter aktuell arbeitet.</li>
CREATE OR REPLACE VIEW AngestellteView AS
SELECT Angestellte.Vorname, Angestellte.Nachname, F.Bezeichnung, F.Ort
FROM Angestellte
         JOIN Angestellte_Filiale AF on Angestellte.PK_Angestellte_ID = AF.PK_FK_Angestellte_ID
         JOIN Filiale F on AF.PK_FK_Filiale_ID = F.PK_Filiale_ID
WHERE AF.bis IS NULL;

-- 10) Erzeugen Sie eine View BuchungDetails mit den folgenden Daten: Buchungsnr. u. Buchungsdatum, KundenNr. und Kundename (jener Person, die gebucht hat), ReiseNr, Beschreibung d. Reise, Abreisedatum und Preis.
CREATE OR REPLACE VIEW BuchungDetails AS
SELECT RB.PK_Reisebuchung_ID,
       RB.Buchungsdatum,
       K.PK_Kunde_ID,
       K.Vorname,
       K.Nachname,
       R.PK_Reise_ID,
       R.Beschreibung,
       RA.Abreisedatum,
       RA.Preis
FROM Reise R
         JOIN Reiseangebot RA on R.PK_Reise_ID = RA.FK_Reise_ID
         JOin Reisebuchung RB on RA.PK_Reiseangebot_ID = RB.FK_Reiseangebot_ID
         JOIN Kunde K on K.PK_Kunde_ID = RB.FK_Kunde_ID;



-- Aufgabe 1
-- 10 Jahre Reisebüro „Vagabond“! Die Besitzer geben ein großes Fest. Kunden und Mitarbeiter sind geladen. Erzeugen Sie eine alphabetische Liste aller Teilnehmer mit Nachname u. Vorname. Eine dritte Spalte (Überschrift: Kunde/Mitarbeiter) soll kennzeichnen, ob es sich bei der Person um einen Kunden oder einen Mitarbeiter handelt.

SELECT Nachname,
       Vorname,
       'Kunde' AS `Kunde/Mitarbeiter`
FROM Kunde

UNION

SELECT Nachname,
       Vorname,
       'Mitarbeiter' AS `Kunde/Mitarbeiter`
FROM Angestellte

ORDER BY Nachname ASC,
         Vorname ASC;


-- Aufgabe 2
-- Und nochmals: Welche Kunden haben Reisen gebucht, die (auch) nach Italien führen? Geben Sie Vorname u. Nachname, Reisenummer u. Reisebezeichnung aus.
-- ACHTUNG: Wenn von einer Reise mehrere Abschnitte in Italien stattfinden, so soll sie trotzdem nur einmal angeführt werden.
-- Beispiel: Herrn Treu hat der „Badeaufenthalt am Lido di Venezia“, welchen er im Juli dieses Jahres genossen hatte, so gut gefallen, dass er die Reise im August gleich nochmals gemacht hat. Auch diese Tatsache (Herr Treu – Badeaufenthalt am Lido di Venezia) soll nur einmal im Ergebnis enthalten sein.

-- Variante 1:
SELECT DISTINCT k.Vorname,
                k.Nachname,
                r.PK_Reise_ID AS Reisenummer,
                r.Bezeichnung AS Reisebezeichnung
FROM Kunde k
         JOIN Reisebuchung rb ON rb.FK_Kunde_ID = k.PK_Kunde_ID
         JOIN Reiseangebot ra ON ra.PK_Reiseangebot_ID = rb.FK_Reiseangebot_ID
         JOIN Reise r ON r.PK_Reise_ID = ra.FK_Reise_ID
WHERE
   -- Suche nach "Italien" in der Reisebezeichnung oder -beschreibung
    r.Bezeichnung LIKE '%Italien%'
   OR r.Beschreibung LIKE '%Italien%'
   OR r.PK_Reise_ID IN (SELECT ra2.FK_Reise_ID
                        FROM Reiseabschnitt ra2
                        WHERE ra2.Beschreibung LIKE '%Italien%')
ORDER BY k.Nachname,
         k.Vorname;

-- Variante 2:
SELECT DISTINCT k.Vorname,
                k.Nachname,
                r.PK_Reise_ID AS Reisenummer,
                r.Bezeichnung AS Reisebezeichnung
FROM Kunde k
         JOIN Reisebuchung rb ON rb.FK_Kunde_ID = k.PK_Kunde_ID
         JOIN Reiseangebot ra ON ra.PK_Reiseangebot_ID = rb.FK_Reiseangebot_ID
         JOIN Reise r ON r.PK_Reise_ID = ra.FK_Reise_ID
         LEFT JOIN Reiseabschnitt rs ON rs.FK_Reise_ID = r.PK_Reise_ID
WHERE
   -- Suche nach "Italien" in der Reise selbst oder in einem ihrer Abschnitte
    r.Bezeichnung LIKE '%Italien%'
   OR r.Beschreibung LIKE '%Italien%'
   OR rs.Beschreibung LIKE '%Italien%'
ORDER BY k.Nachname,
         k.Vorname;


-- Aufgabe 3
-- Oje, da ist was durcheinander geraten! Durch ein fehlerhaftes Update sind nun lt. Datenbank einige Mitarbeiter keiner Filiale zugeordnet; gleichzeitig gibt es Filialen, welche angeblich keinen einzigen Mitarbeiter haben. Erzeugen Sie eine vollständige Liste aller Filialen und Mitarbeiter mit folgenden Feldern:
-- Personalnummer, Nachname, Vorname, Nachname, Filialnummer und Filialbezeichnung.

-- Teil 1: alle Mitarbeiter (auch ohne Filiale)
SELECT a.PK_Angestellte_ID AS Personalnummer,
       a.Nachname,
       a.Vorname,
       f.PK_Filiale_ID     AS Filialnummer,
       f.Bezeichnung       AS Filialbezeichnung
FROM Angestellte a
         LEFT JOIN Angestellte_Filiale af
                   ON a.PK_Angestellte_ID = af.PK_FK_Angestellte_ID
         LEFT JOIN Filiale f
                   ON f.PK_Filiale_ID = af.PK_FK_Filiale_ID

UNION

-- Teil 2: alle Filialen ohne Mitarbeiter
SELECT NULL            AS Personalnummer,
       NULL            AS Nachname,
       NULL            AS Vorname,
       f.PK_Filiale_ID AS Filialnummer,
       f.Bezeichnung   AS Filialbezeichnung
FROM Filiale f
         LEFT JOIN Angestellte_Filiale af
                   ON f.PK_Filiale_ID = af.PK_FK_Filiale_ID
WHERE af.PK_FK_Angestellte_ID IS NULL

ORDER BY Nachname, Vorname, Filialnummer;


-- Aufgabe 4:
-- Wie Aufgabe 3. Ergänzen sie die Ergebnistabelle um eine weitere Spalte (1. Spalte). Diese soll den Wert 1 enthalten, wenn ein Mitarbeiter keiner Filiale zugeordnet ist bzw. wenn eine Filiale keine Mitarbeiter hat. Ansonsten soll sie den Wert 0 enthalten.

-- Teil 1: alle Mitarbeiter (auch ohne Filiale)
SELECT CASE
           WHEN af.PK_FK_Filiale_ID IS NULL THEN 1
           ELSE 0
           END             AS KeinZuordnung,
       a.PK_Angestellte_ID AS Personalnummer,
       a.Nachname,
       a.Vorname,
       f.PK_Filiale_ID     AS Filialnummer,
       f.Bezeichnung       AS Filialbezeichnung
FROM Angestellte a
         LEFT JOIN Angestellte_Filiale af
                   ON a.PK_Angestellte_ID = af.PK_FK_Angestellte_ID
         LEFT JOIN Filiale f
                   ON f.PK_Filiale_ID = af.PK_FK_Filiale_ID

UNION

-- Teil 2: alle Filialen ohne Mitarbeiter
SELECT 1               AS KeinZuordnung,
       NULL            AS Personalnummer,
       NULL            AS Nachname,
       NULL            AS Vorname,
       f.PK_Filiale_ID AS Filialnummer,
       f.Bezeichnung   AS Filialbezeichnung
FROM Filiale f
         LEFT JOIN Angestellte_Filiale af
                   ON f.PK_Filiale_ID = af.PK_FK_Filiale_ID
WHERE af.PK_FK_Angestellte_ID IS NULL

ORDER BY KeinZuordnung DESC,
         Nachname,
         Vorname,
         Filialnummer;


-- Aufgabe 5:
-- Geben Sie eine Liste aller Kunden aus. Diese Liste soll auch die Information enthalten, wie oft jeder einzelne Kunde eine Italienreise gebucht hat. (Wir erinnern uns: wenn mehrere Abschnitte einer Reise in Italien stattfinden, so zähle trotzdem die gesamte Reise als nur eine einzige Italien-Reise). Die Kunden, die noch nie eine Italien-Reise gebucht haben, sind natürlich im Ergebnis ebenfalls enthalten.

SELECT k.PK_Kunde_ID,
       k.Nachname,
       k.Vorname,
       IFNULL(COUNT(DISTINCT r.PK_Reise_ID), 0) AS Anzahl_Italienreisen
FROM Reiseabschnitt rs
         JOIN Reise r
              ON rs.FK_Reise_ID = r.PK_Reise_ID
         JOIN Reiseangebot ra
              ON ra.FK_Reise_ID = r.PK_Reise_ID
         JOIN Reisebuchung rb
              ON rb.FK_Reiseangebot_ID = ra.PK_Reiseangebot_ID
         RIGHT JOIN Kunde k
                    ON k.PK_Kunde_ID = rb.FK_Kunde_ID
WHERE
   -- Italienbezug prüfen
    (r.Bezeichnung LIKE '%Italien%'
        OR r.Beschreibung LIKE '%Italien%'
        OR rs.Beschreibung LIKE '%Italien%')
   OR rb.PK_Reisebuchung_ID IS NULL
GROUP BY k.PK_Kunde_ID,
         k.Nachname,
         k.Vorname
ORDER BY k.Nachname,
         k.Vorname;


-- Aufgabe 6:
-- Ach was, wir wollen doch nur jene Kunden sehen, die mindestens 3 Mal eine Italienreise gebucht haben (vgl. Aufgabe 5).

SELECT k.PK_Kunde_ID,
       k.Nachname,
       k.Vorname,
       COUNT(DISTINCT rb.PK_Reisebuchung_ID) AS Anzahl_Italienreisen
FROM Kunde AS k
         JOIN Reisebuchung AS rb
              ON rb.FK_Kunde_ID = k.PK_Kunde_ID
         JOIN Reiseangebot AS ra
              ON ra.PK_Reiseangebot_ID = rb.FK_Reiseangebot_ID
         JOIN Reise AS r
              ON r.PK_Reise_ID = ra.FK_Reise_ID
WHERE
    -- Italienbezug (ohne Duplikate durch Reiseabschnitte, daher EXISTS)
    (
        r.Bezeichnung LIKE '%Italien%'
            OR r.Beschreibung LIKE '%Italien%'
            OR EXISTS (SELECT 1
                       FROM Reiseabschnitt AS rs
                       WHERE rs.FK_Reise_ID = r.PK_Reise_ID
                         AND rs.Beschreibung LIKE '%Italien%')
        )
GROUP BY k.PK_Kunde_ID, k.Nachname, k.Vorname
HAVING COUNT(DISTINCT rb.PK_Reisebuchung_ID) >= 3
ORDER BY k.Nachname, k.Vorname;


-- Aufgabe 7:
-- Erzeugen Sie eine Liste aller in der Datenbank gespeicherten Sprachen.

SELECT Bezeichnung
FROM Sprache
ORDER BY Bezeichnung;


-- Aufgabe 8:
-- Welche Buchungen sind noch nicht vollständig bezahlt? Geben Sie den zu zahlenden Gesamtbetrag, den offenen Betrag und die Anzahl der Reiseteilnehmer aus!

SELECT rb.PK_Reisebuchung_ID,
       k.Nachname,
       k.Vorname,
       r.Bezeichnung                                                             AS Reise,
       ra.Abreisedatum,
       COUNT(DISTINCT rt.PK_FK_Kunde_ID)                                         AS TeilnehmerAnzahl,
       ra.Preis                                                                  AS Preis_pro_Teilnehmer,
       (COUNT(DISTINCT rt.PK_FK_Kunde_ID) * ra.Preis)                            AS Gesamtbetrag,
       IFNULL(SUM(z.Betrag), 0)                                                  AS BisherBezahlt,
       (COUNT(DISTINCT rt.PK_FK_Kunde_ID) * ra.Preis - IFNULL(SUM(z.Betrag), 0)) AS OffenerBetrag
FROM Reisebuchung rb
         JOIN Kunde k ON k.PK_Kunde_ID = rb.FK_Kunde_ID
         JOIN Reiseangebot ra ON ra.PK_Reiseangebot_ID = rb.FK_Reiseangebot_ID
         JOIN Reise r ON r.PK_Reise_ID = ra.FK_Reise_ID
         LEFT JOIN Reiseteilnehmer rt ON rt.PK_FK_Reisebuchung_ID = rb.PK_Reisebuchung_ID
         LEFT JOIN Zahlung z ON z.FK_Reisebuchung_ID = rb.PK_Reisebuchung_ID
GROUP BY rb.PK_Reisebuchung_ID, k.Nachname, k.Vorname, r.Bezeichnung, ra.Abreisedatum, ra.Preis
HAVING OffenerBetrag > 0
ORDER BY OffenerBetrag DESC;


-- Aufgabe 9:
-- Erzeugen Sie eine Liste aller Kunden (eine Zeile je Kunde), welche in der letzten Spalte alle Telefonnummern des Kunden enthält. Tipp: Aggregatfunktion verwenden.

SELECT k.PK_Kunde_ID,
       k.Nachname,
       k.Vorname,
       COALESCE(GROUP_CONCAT(DISTINCT kt.Nummer ORDER BY kt.Nummer SEPARATOR ', '), '—') AS Telefonnummern
FROM Kunde AS k
         LEFT JOIN KundeTelefon AS kt
                   ON kt.FK_Kunde_ID = k.PK_Kunde_ID
GROUP BY k.PK_Kunde_ID, k.Nachname, k.Vorname
ORDER BY k.Nachname, k.Vorname;


-- Aufgabe 10:
-- Erzeugen Sie eine View "reiseView" mit den folgenden Feldern: Reiseangebot.PK_ReiseangebotNr, Reise.Reisebezeichnung, Reiseangebot.Abreisedatum und Reiseangebot.Preis.

CREATE VIEW reiseView AS
SELECT ra.PK_Reiseangebot_ID,
       r.Bezeichnung AS Reisebezeichnung,
       ra.Abreisedatum,
       ra.Preis
FROM Reiseangebot AS ra
         JOIN Reise AS r ON ra.FK_Reise_ID = r.PK_Reise_ID;


-- Aufgabe 11:
-- Wie heißt der jüngste Mitarbeiter / die jüngste Mitarbeiterin?

SELECT Vorname,
       Nachname,
       Geburtsdatum
FROM Angestellte
WHERE Geburtsdatum = (SELECT MAX(Geburtsdatum) FROM Angestellte);


-- Aufgabe 12:
-- Welche Kunden, die an irgendeinem der Vielfliegerprogramme teilnehmen, haben bereits Buchungen getätigt?

SELECT DISTINCT k.PK_Kunde_ID,
                k.Nachname,
                k.Vorname
FROM Kunde AS k
         JOIN Kunde_Vielfliegerprogramm AS kv
              ON kv.PK_FK_Kunde_ID = k.PK_Kunde_ID -- nimmt an irgendeinem Programm teil
         JOIN Reisebuchung AS rb
              ON rb.FK_Kunde_ID = k.PK_Kunde_ID -- hat mindestens eine Buchung getätigt
ORDER BY k.Nachname, k.Vorname;


-- Aufgabe 13:
-- Welche Filale hat das höchste Durchschnittsgehalt?

SELECT f.PK_Filiale_ID,
       f.Bezeichnung AS Filiale,
       AVG(a.Gehalt) AS Durchschnittsgehalt
FROM Filiale AS f
         JOIN Angestellte_Filiale AS af
              ON af.PK_FK_Filiale_ID = f.PK_Filiale_ID
         JOIN Angestellte AS a
              ON a.PK_Angestellte_ID = af.PK_FK_Angestellte_ID
WHERE (af.bis IS NULL OR af.bis >= CURDATE())
  AND af.PK_von <= CURDATE()
  AND a.Gehalt IS NOT NULL
GROUP BY f.PK_Filiale_ID, f.Bezeichnung
ORDER BY Durchschnittsgehalt DESC
LIMIT 1;


-- Aufgabe 14:
-- Welche Mitarbeiter verdienen mehr als der Durchschnitt der Gehälter in dieser Filiale?
SELECT a.PK_Angestellte_ID,
       a.Nachname,
       a.Vorname,
       a.Gehalt,
       tf.PK_Filiale_ID,
       tf.Filiale,
       tf.Durchschnittsgehalt
FROM (SELECT f.PK_Filiale_ID,
             f.Bezeichnung AS Filiale,
             AVG(a.Gehalt) AS Durchschnittsgehalt
      FROM Filiale AS f
               JOIN Angestellte_Filiale AS af
                    ON af.PK_FK_Filiale_ID = f.PK_Filiale_ID
               JOIN Angestellte AS a
                    ON a.PK_Angestellte_ID = af.PK_FK_Angestellte_ID
      WHERE (af.bis IS NULL OR af.bis >= CURDATE())
        AND af.PK_von <= CURDATE()
        AND a.Gehalt IS NOT NULL
      GROUP BY f.PK_Filiale_ID, f.Bezeichnung
      ORDER BY Durchschnittsgehalt DESC
      LIMIT 1) AS tf
         JOIN Angestellte_Filiale AS af
              ON af.PK_FK_Filiale_ID = tf.PK_Filiale_ID
                  AND (af.bis IS NULL OR af.bis >= CURDATE())
                  AND af.PK_von <= CURDATE()
         JOIN Angestellte AS a
              ON a.PK_Angestellte_ID = af.PK_FK_Angestellte_ID
WHERE a.Gehalt IS NOT NULL
  AND a.Gehalt > tf.Durchschnittsgehalt
ORDER BY a.Gehalt DESC, a.Nachname, a.Vorname;


SELECT Angestellte.Vorname, SUM(Angestellte.Gehalt)
From Angestellte
GROUP BY PK_Angestellte_ID, Gehalt;


SELECT Reisebuchung.PK_Reisebuchung_ID,
       Reisebuchung.Buchungsdatum,
       IFNULL(SUM(Zahlung.Betrag), 0) as Sum
FROM Reisebuchung
         JOIN Reiseangebot ON Reisebuchung.FK_Reiseangebot_ID = Reiseangebot.PK_Reiseangebot_ID
         LEFT JOIN Zahlung ON Reisebuchung.PK_Reisebuchung_ID = Zahlung.FK_Reisebuchung_ID
GROUP BY Reisebuchung.PK_Reisebuchung_ID;



