--     Erstelle ein Procedure mit zwei Parametern zum Laden des PK eines Datensatzes in der Tabelle MARKE!
--         Der erste Parameter ist ein String mit Bezeichnung einer Marke
--         Der zweite Parameter ist ein Ausgabeparameter, in dem der PK der Marke zurückgegeben wird.
--     Die Procedure muss nicht prüfen, ob eine Marke gar nicht existiert (die Exception muss nicht behandelt werden).
CREATE OR REPLACE PROCEDURE get_marke_id(
    v_bezeichnung IN VARCHAR2,
    v_marke_id OUT INTEGER
)
AS
BEGIN
    SELECT pk_marke_id
    INTO v_marke_id
    FROM marke
    WHERE bezeichnung = v_bezeichnung;
END;

DECLARE
    v_id INTEGER;
BEGIN
    get_marke_id('Fiat', v_id);
    dbms_output.put_line(v_id);
END;

--     Erstelle eine Procedure, zum Erstellen eines Fahrzeuges!
--         Die Daten für den Typ (PKW oder LKW), die Marke, das Modell und den Preis sollen über Parameter übergeben werden.
--         Verwende die Procedure aus Aufgabe 1 um den Wert für die Fremdschlüsselspalte FK_Marke_ID in der Tabelle FAHRZEUG zu ermitteln.
--         Lege dem übergebenen Typ entsprechend auch die Daten in der Tabelle PKW oder LKW an.
--         Ein ungültiger Typ muss nicht behandelt werden. Es kann davon ausgegangen werden, dass nur PKW und LKW als mögliche Werte für den Typ übergeben werden.
CREATE OR REPLACE PROCEDURE create_fahrzeug(
    v_typ IN VARCHAR2,
    v_marke IN VARCHAR2,
    v_modell IN VARCHAR2,
    v_preis IN NUMBER,
    v_klasse IN CHAR
)
AS
    pk            NUMBER;
    v_marke_id    INTEGER;
    v_fahrzeug_id INTEGER;
BEGIN
    get_marke_id(v_marke, v_marke_id);

    SELECT MAX(PK_FAHRZEUG_ID) + 1 INTO pk FROM (SELECT PK_FAHRZEUG_ID FROM FAHRZEUG UNION SELECT 0 FROM DUAL);
    INSERT INTO FAHRZEUG (pk_fahrzeug_id, fk_marke_id, modell, preis, fk_klasse)
    VALUES (pk, v_marke_id, v_modell, v_preis, v_klasse)
    RETURNING PK_FAHRZEUG_ID INTO v_fahrzeug_id;

    IF v_typ = 'PKW' THEN
        INSERT INTO pkw (pk_fk_fahrzeug_id, hatklima, anzahltueren)
        VALUES (v_fahrzeug_id, 0, 4);
    ELSIF v_typ = 'LKW' THEN
        INSERT INTO lkw (pk_fk_fahrzeug_id, gewicht, sitze)
        VALUES (v_fahrzeug_id, 3500, 2);
    END IF;
END;

BEGIN
    create_fahrzeug('PKW', 3, 'A3', 1000, 'B');
END;

--     Erzeuge einen Cursor zum Aktualisieren der Spalte DATUM_BIS in allen Datensätzen der Tabelle KUNDE_FAHRZEUG!
--         Liegt das Datum in der Zukunft, soll der Wert in der Spalte auf NULL gesetzt werden.
--         Hinweis: Das aktuelle Datum kann mit SYSDATE ermittelt werden.
DECLARE
    CURSOR c IS
        SELECT PK_FK_KUNDE_ID, DATUMBIS
        FROM KUNDE_FAHRZEUG;
    v_pk   KUNDE_FAHRZEUG.PK_FK_KUNDE_ID%type;
    v_date KUNDE_FAHRZEUG.DATUMBIS%type;
BEGIN
    OPEN c;
    LOOP
        FETCH c INTO v_pk, v_date;
        DBMS_OUTPUT.PUT_LINE(v_pk);
        EXIT WHEN c%NOTFOUND;
        IF v_date IS NOT NULL AND v_date > SYSDATE THEN
            UPDATE kunde_fahrzeug
            SET datumbis = NULL
            WHERE PK_FK_KUNDE_ID = v_pk;
            DBMS_OUTPUT.PUT_LINE(v_pk);
        END IF;

    END LOOP;
    CLOSE c;
END;

--     Erstelle einen Trigger, der nach dem UPDATE der Spalte DATUM_BIS der Tabelle KUNDE_FAHRZEUG für jeden betroffenen Datensatz ausgelöst wird!
--         Der Trigger soll nur ausgeführt werden, wenn die Spalte DATUM_BIS auf NULL gesetzt war.
--         Im Trigger selbst soll das dazugehörige Fahrzeug geladen und die Meldung Das Fahrzeug MODELL (MARKE) wurde zurückgebracht ausgegeben werden, wobei anstelle von MODELL und MARKE die geladenen Daten anzuzeigen sind.


--     Erstelle einen Trigger, der vor dem INSERT eines Datensatzes in die KUNDE_FAHRZEUG aufgeführt wird!
--         Es muss geprüft werden, ob der Kunde einen Führerschein in der für das Fahrzeug erforderlichen Klasse besitzt.
--         Ist dies nicht der Fall, soll die Aktion mithilfe der Funktion RAISE_APPLICATION_ERROR(-20001, 'Der Kunde besitzt keine Fahrerlaubnis für das betreffende Fahrzeug.'); abgebrochen werden.


SELECT trigger_name,
       table_name,
       trigger_type,
       triggering_event,
       status
FROM user_triggers
ORDER BY trigger_name;