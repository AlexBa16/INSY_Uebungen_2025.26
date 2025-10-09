# ---- Alexander Bachinger ----

USE Reisebuero;

# 1. Welche Kunden haben Reisen gebucht, die (auch) nach Italien führen? Geben Sie Vornamen u. Nachname, Reisenummer u. Reisebezeichnung aus. Hinweis: In der Beschreibung nach dem Begriff "Italien" suchen.
SELECT DISTINCT CONCAT(k.Vorname, ' ', k.Nachname) as Name,
                reise.PK_Reise_ID                  as Reisenummer,
                reise.Bezeichnung                  as Bezeichnung
FROM Kunde as k
         INNER JOIN Reisebuero.Reisebuchung R on k.PK_Kunde_ID = R.FK_Kunde_ID
         INNER JOIN Reisebuero.Reiseangebot R2 on R.FK_Reiseangebot_ID = R2.PK_Reiseangebot_ID
         INNER JOIN Reisebuero.Reise reise on R2.FK_Reise_ID = reise.PK_Reise_ID
WHERE reise.Bezeichnung = 'Italien';

# 2. Geben Sie all jene Mitarbeiter (vollständiger Name und Wohnadresse) aus, die momentan in Filialen arbeiten, die sich in Wien, Salzburg und Graz befinden.
SELECT CONCAT(a.Vorname, ' ', a.Nachname)         as Name,
       CONCAT(a.Strasse, ' ', a.Ort, ', ', a.PLZ) as Wohnadresse
FROM Angestellte as a
         INNER JOIN Reisebuero.Angestellte_Filiale AF on a.PK_Angestellte_ID = AF.PK_FK_Angestellte_ID
         INNER JOIN Reisebuero.Filiale F on AF.PK_FK_Filiale_ID = F.PK_Filiale_ID
WHERE (F.Ort = 'Wien' OR F.Ort = 'Salzburg' OR F.Ort = 'Graz')
  AND bis IS NULL;

# 3. Für statistische Zwecke soll folgendes ermittelt werden: Welche Kunden haben bereits mehrfach (also mindestens zweimal) gebucht? Geben Sie den vollständigen Namen sowie die Anzahl der durchgeführten Buchungen aus. Diese Information soll in zwei Spalten mit folgenden Überschriften ausgegeben werden: Vorname Nachname | Anzahl der Buchungen
SELECT CONCAT(k.Vorname, ' ', k.Nachname) as 'Vorname Nachname',
       COUNT(R.FK_Reiseangebot_ID)        as 'Anzahl der Buchungen'
FROM Kunde as k
         INNER JOIN Reisebuero.Reisebuchung R on k.PK_Kunde_ID = R.FK_Kunde_ID
GROUP BY k.PK_Kunde_ID
HAVING COUNT(R.FK_Reiseangebot_ID) >= 2
ORDER BY `Anzahl der Buchungen` DESC;

# 4. Ausgabe aller Mitarbeiter - Familienname, Vorname, zwei Gehälter (das aktuelle und das jüngste historische) und alle Telefonnummern. Es sollen auch Mitarbeiter ausgegeben werden, die keine Telefonnummer besitzen.

# 5. Ermitteln Sie die Anzahl der Buchungen, die die einzelnen Mitarbeiter bearbeitet (durchgeführt) haben. Die ausgegebene Tabelle soll folgende Überschriften besitzen: Vorname | Nachname | Anzahl-Buchungen. Die Sortierung soll zunächst nach der Anzahl der Buchungen (absteigend) und Anschließend nach Nach- und Vorname (jeweils aufsteigend) erfolgen.

# 6. Geben Sie eine Liste (Name und Adresse) all jener Kunden aus, von denen keine Telefonnummer in der Datenbank gespeichert ist. Die Ausgabe soll absteigend nach der Postleitzahl sortiert werden.

# 7. In der Tabelle mit den Mitarbeiter-Daten werden sehr oft Anfragen über den Namen (Familien- und Vornamen) durchgeführt. Für einen optimierten Zugriff soll ein zusätzlicher Index erstellt werden, der beide Spalten umfasst.

# 8. Wie viel wurde für die einzelnen Buchungen bereits bezahlt? Geben Sie die Buchungsnr. und das Buchungsdatum sowie das Abreisedatum, den Namen des Kunden und die Summe der bereits getätigten Zahlungen aus.

# 9. Erzeugen Sie eine View AngestellteView, welche von den Mitarbeitern Vor- und Nachname enthält. Außerdem soll in der View auch die Filiale (Bezeichnung und Ort) enthalten sein, in der der Mitarbeiter aktuell arbeitet.

# 10. Erzeugen Sie eine View BuchungDetails mit den folgenden Daten: Buchungsnr. u. Buchungsdatum, KundenNr. und Kundename (jener Person, die gebucht hat), ReiseNr, Beschreibung d. Reise, Abreisedatum und Preis.