-- ORACLE SCRIPT aktivieren
ALTER SESSION SET "_ORACLE_SCRIPT"= TRUE;

-- Zunächst wird eine Rolle (hier mit dem Namen "standard_role") erstellt
CREATE ROLE standard_role;
-- Der rolle "standard_role" werden mit GRANT die gängigen Rechte gewährt werden.
GRANT CREATE session, CREATE table, CREATE view, CREATE procedure, CREATE synonym, CREATE sequence, CREATE trigger, CREATE any index, SELECT any table TO standard_role;

-- Benutzer erstellen (hier mit den Namen "plf" und dem Passwort "password")
-- Dem neuen Benutzer wird "users" als Default-Tablespace zugewiesen
-- Dem neuen Benutzer wird "temp" als temporärer Tablespace zugewiesen
-- Der erlaubte zu verwendende Speicherplatz für den User wird auf UNLIMITED (unbeschränkt) gesetzt.
CREATE USER plf IDENTIFIED BY password
    DEFAULT TABLESPACE users
    TEMPORARY TABLESPACE temp
    QUOTA UNLIMITED ON users;

-- Dem User "plf" wird die zuvor erstelle Rolle "standard_role" zugewiesen.
-- Er erhält dadurch die Rechte, die der Rolle gewährt wurden.
GRANT standard_role TO plf;
