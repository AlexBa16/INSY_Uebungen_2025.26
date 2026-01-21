alter session set current_schema = PLF;
-- Erzeuge eine Procedure mit Cursor zum Aktualisieren aller Credentials (Tabelle credentials), deren letzter Login mehr als ein Jahr zurückliegt! Die Spalte is_active soll in diesem Fall auf 0 gesetzt werden.
CREATE OR REPLACE PROCEDURE change_isActive IS
    CURSOR c IS
        SELECT PK_CREDENTIALS_ID
        FROM PLF.CREDENTIALS
        WHERE SYSDATE - 365 > LAST_LOGIN; -- WHERE  last_login < ADD_MONTHS(SYSDATE, -12);  -- älter als 1 Jahr
    v_id PLF.CREDENTIALS.PK_CREDENTIALS_ID%type;
BEGIN
    OPEN c;

    LOOP
        FETCH c INTO v_id;
        EXIT WHEN c%NOTFOUND;

        UPDATE PLF.CREDENTIALS
        SET IS_ACTIVE = 0
        WHERE PK_CREDENTIALS_ID = v_id;
    END LOOP;
    CLOSE c;
END;

BEGIN
    change_isActive();
end;

-- Hinweis: Die Anzahl der Tage seit dem letzten Login kann durch eine Subtraktion der Spalte last_login von SYSDATE berechnet werden.
-- Erstelle einen Trigger, der in der Tabelle logtable vermerkt, wenn Credentials (Tabelle credentials) gelöscht werden! Die Protokollierung kann vor oder nach dem Löschen ausgelöst werden. Der Eintrag in der Spalte msg könnte beispielsweise Der Benutzer XY wurde gelöscht lauten, wobei statt XY der entsprechende Benutzername verwendet werden soll. Als Wert für die Spalte ts kann SYSTIMESTAMP verwendet werden.
-- Erstelle einen Trigger, der in der Tabelle logtable vermerkt, wenn das Passwort aktualisiert werden soll, aber das alte Passwort gleich dem neuen ist! Dieser Trigger soll nur ausgelöst werden, wenn die Spalte password_hash aktualisiert wird und auch bevor die Aktualisierung durchgeführt wird.
-- Erstelle einen Trigger, der in der Tabelle logtable vermerkt, wenn Credentials mit einem Leerstring als Passworthash eingetragen werden (beachte zur Klarheit Aufgabe 5). Der Trigger soll ausgelöst werden, nachdem die Einfüge-Operation durchgeführt wurde.
-- Erstelle eine Procedure, die einen Benutzernamen und ein Passwort übergeben bekommt, und einen Eintrag in der Tabelle credentials erzeugt! Wird ein Leerstring als Passwort übergeben, soll ein Leerstring eingetragen werden, ansonsten soll mithilfe der Funktionen RAWTOHEX(STANDARD_HASH('PW', 'SHA512')) der Hash für das Passwort (im Beispiel PW) ermittelt werden.


-- Tipps und Tricks
-- Ein Wert für den Primärschlüssel der Tabelle logtable kann mit SELECT MAX(PK_logtable_ID)+1 FROM (SELECT PK_logtable_ID FROM logtable UNION SELECT 0 FROM DUAL); ermittelt werden. Hier wird der aktuell höchste Wert in der Spalte erhöht um 1 geliefert. Falls noch kein Datensatz drinnen steht, wird 1 geliefert.
-- Die Funktionen RAWTOHEX bzw. STANDARD_HASH müssen in Form einer SELECT-INTO-Abfrage verwendet werden:
-- SELECT RAWTOHEX(STANDARD_HASH('PW', 'SHA512')) INTO variablenname FROM DUAL;
-- Bei DUAL handelt es sich um eine Hilfstabelle, die dazu dient die SQL-Syntax einzuhalten und nur eine Spalte namens DUMMMY und einen Datensatz hat.
