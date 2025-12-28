-- 1) Lies die Daten eines selects in eine Variable und gib diese dann aus.
-- DECLARE = Variablenbereich (wie ganz oben in einem Programm)
declare
    -- Variable für den Vornamen, Datentyp wie in hr.employees.first_name
    v_first_name hr.employees.first_name%type;
    -- Variable für den Nachnamen, Datentyp wie in hr.employees.last_name
    v_last_name  hr.employees.last_name%type;

begin
    -- SELECT ... INTO ist wie:
    -- v_first_name = ...
    -- v_last_name  = ...
    select first_name, last_name
    into v_first_name, v_last_name
    from hr.employees
    where employee_id = 100;

    -- Ausgabe auf der Konsole (wie print())
    dbms_output.put_line(v_first_name || ' ' || v_last_name);
end;

-- 2) Erzeuge einen Cursor der die Mitarbeiter (Vorname, Nachname) ausliest (mit zwei Variablen deren Datentyp mit %TYPE angegeben wird).
declare
    -- Variablen für eine Zeile aus der Tabelle
    v_first_name hr.employees.first_name%type;
    v_last_name  hr.employees.last_name%type;

    -- Cursor = gespeicherte Datenbankabfrage
    -- Vergleich: ResultSet oder Iterator
    cursor c is
        select first_name, last_name
        from hr.employees;
begin
    -- Cursor öffnen = Abfrage starten
    open c;

    -- Endlosschleife (wird mit EXIT beendet)
    -- Schleife zum zeilenweisen Lesen des Cursors
    loop
        -- Holt die nächste Zeile aus dem Cursor
        fetch c into v_first_name, v_last_name;

        -- Beendet die Schleife, wenn keine Zeile mehr vorhanden ist
        exit when c%notfound;

        -- Ausgabe der aktuellen Zeile
        dbms_output.put_line(v_first_name || ' ' || v_last_name);
    end loop;

    -- Schließt den Cursor
    close c;
end;

-- 3) Erzeuge einen Cursor wie in 2) für alle Spalten des mit %rowtype.
declare
    -- Cursor mit Abfrage
    cursor c_emp is
        select first_name, last_name
        from hr.employees;

    -- v_emp ist wie ein Objekt:
    -- v_emp.first_name
    -- v_emp.last_name
    v_emp c_emp%rowtype;

begin
    -- Cursor öffnen
    open c_emp;

    loop
        -- Ganze Zeile in ein Objekt laden
        fetch c_emp into v_emp;

        -- Abbruch wenn keine Daten mehr vorhanden
        exit when c_emp%notfound;

        -- Zugriff auf Felder des Objekts
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name);
    end loop;

    -- Cursor schließen
    close c_emp;
end;

-- 4) Erzeuge einen Cursor und gib die Mitarbeiter aus, die mehr als der Durchschnitt in der Firma verdienen.
declare
    -- Cursor mit Filter (subselect)
    cursor c_emp is
        select first_name, last_name, salary
        from hr.employees
        where salary > (select avg(salary) from hr.employees);

    -- Variable für eine komplette Cursor-Zeile
    v_emp c_emp%rowtype;
begin
    -- Cursor öffnen
    open c_emp;

    loop
        -- Datensatz lesen
        fetch c_emp into v_emp;

        -- Schleife beenden, wenn keine Daten mehr da sind
        exit when c_emp%notfound;

        -- Ausgabe von Name und Gehalt
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    close c_emp;
end;

-- 5) Erzeuge einen Cursor mit Parameter für die MA mit Übergabe des Durchschnittgehalts.
declare
    -- Cursor mit Parameter für das Durchschnittsgehalt
    cursor c_emp (v_avg_salary in number) is
        select first_name, last_name, salary
        from hr.employees
        where salary > v_avg_salary;

    -- Variable für Cursor-Zeile
    v_emp        c_emp%rowtype;

    -- Variable für Durchschnittsgehalt
    v_avg_salary hr.employees.salary%type;
begin
    -- Durchschnittsgehalt berechnen
    select avg(salary)
    into v_avg_salary
    from hr.employees;

    -- Cursor mit Parameter öffnen
    open c_emp(v_avg_salary);

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;

        -- Ausgabe
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    -- Cursor schließen
    close c_emp;
end;

-- 6) Behandle die INVALID_CURSOR-Exception bei Beispiel 4. Du kannst diese Testen, in dem du den Cursor nicht öffnest.
declare
    cursor c_emp is
        select first_name, last_name, salary
        from hr.employees
        where salary > (select avg(salary) from hr.employees);
    v_emp c_emp%rowtype;
begin
    -- Cursor öffnen (zum Testen kann man diese Zeile entfernen)
    open c_emp;

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;

        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    -- Cursor schließen
    close c_emp;

-- Exception-Bereich
exception
    -- WHEN OTHERS = fängt ALLE Fehler ab
    when others then
        dbms_output.put_line('Fehler: ' || sqlerrm);
end;

-- 7) Erzeuge das Ergebnis der Abfrage ohne Verwendung eines subselects, also mit 2 Cursor: Welche Mitarbeiter verdienen mehr als der Durchschnitt ihrer Abteilung?
declare
    -- Cursor 1: Durchschnittsgehalt pro Abteilung
    cursor c_emp is
        select avg(salary), department_id
        from hr.employees
        group by department_id;

    -- Cursor 2: Mitarbeiter mit Gehalt über Abteilungsdurchschnitt
    cursor c_emp2 (p_avg_sal number, p_dept_id number) is
        select first_name, last_name, department_id, salary
        from hr.employees
        where salary > p_avg_sal
          and department_id = p_dept_id;

    -- Variablen für Durchschnittsgehalt und Abteilung
    v_avg_sal hr.employees.salary%type;
    v_dept_id hr.employees.department_id%type;

    -- Variable für Mitarbeiterdaten
    v_emp     c_emp2%rowtype;
begin
    -- Cursor 1 öffnen
    open c_emp;

    loop
        -- Durchschnittsgehalt und Abteilung lesen
        fetch c_emp into v_avg_sal, v_dept_id;
        exit when c_emp%notfound;

        -- Cursor 2 mit Parametern öffnen
        open c_emp2(v_avg_sal, v_dept_id);

        loop
            fetch c_emp2 into v_emp;
            exit when c_emp2%notfound;

            -- Ausgabe der Mitarbeiter
            dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
        end loop;

        -- Cursor 2 schließen
        close c_emp2;
    end loop;

    -- Cursor 1 schließen
    close c_emp;
end;

-- 8) Erzeuge eine Procedure für das Lesen der Mitarbeiter nach Übergabe des Durchschnittsgehalts und der Abteilung verwende diese wie in Aufgabe 7
-- Procedure erzeugen
-- Procedure = Funktion ohne return
create or replace procedure proc_aufgabe8(
    p_avg_sal in number -- Übergabeparameter
) as
    cursor c_emp (p_avg_sal number) is
        select first_name, last_name, department_id, salary
        from hr.employees
        where salary > p_avg_sal;

    -- Variable für Mitarbeiterdatensatz
    v_emp c_emp%rowtype;
begin
    -- Cursor öffnen
    open c_emp(p_avg_sal);

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;

        -- Ausgabe
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    -- Cursor schließen
    close c_emp;
end;

declare
    -- Variable für Durchschnittsgehalt
    v_avg_sal number;
begin
    -- Durchschnittsgehalt berechnen
    select avg(salary) into v_avg_sal from hr.employees;

    -- Procedure aufrufen
    proc_aufgabe8(v_avg_sal);
end;

-- 9) Erstelle Aufgabe 7 mit 2 Procedures, wobei die 2. Procedure den Durchschnittsgehalt und die Abteilung von allen Mitarbeitern zurückgibt. Dieser soll dann als Übergabe für die Procedure in Aufgabe 8 verwendet werden.
-- Procedure 2: berechnet das Durchschnittsgehalt
create or replace procedure proc_aufgabe9_2(p_avg_sal out number) as
begin
    -- Durchschnittsgehalt in OUT-Parameter schreiben
    select avg(salary)
    into p_avg_sal
    from hr.employees;
end;

-- Procedure 1: steuert den Ablauf
create or replace procedure proc_aufgabe9_1 as
    -- Variable für Durchschnittsgehalt
    v_avg_sal number;
begin
    -- Durchschnittsgehalt ermitteln
    proc_aufgabe9_2(v_avg_sal);

    -- Mitarbeiter ausgeben
    proc_aufgabe8(v_avg_sal);
end;

-- Startblock
declare
begin
    -- Startet die gesamte Logik
    proc_aufgabe9_1();
end;
