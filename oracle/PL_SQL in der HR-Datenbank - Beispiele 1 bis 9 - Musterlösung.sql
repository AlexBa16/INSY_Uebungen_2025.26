-- 1) Lies die Daten eines selects in eine Variable und gib diese dann aus.
declare
    v_first_name hr.employees.first_name%type; -- var
    v_last_name  hr.employees.last_name%type; -- var
begin
    select first_name, last_name
    into v_first_name, v_last_name -- save select output into var
    from hr.employees
    where employee_id = 100;

    dbms_output.put_line(v_first_name || ' ' || v_last_name);
end;

-- 2) Erzeuge einen Cursor der die Mitarbeiter (Vorname, Nachname) ausliest (mit zwei Variablen deren Datentyp mit %TYPE angegeben wird).
declare
    v_first_name hr.employees.first_name%type;
    v_last_name  hr.employees.last_name%type;
    cursor c is select first_name, last_name
                from hr.employees;
begin
    open c;

    loop
        fetch c into v_first_name, v_last_name;
        exit when c%notfound;

        dbms_output.put_line(v_first_name || ' ' || v_last_name);
    end loop;

    close c;
end;

-- 3) Erzeuge einen Cursor wie in 2) für alle Spalten des mit %rowtype.
declare
    cursor c_emp is select first_name, last_name
                    from hr.employees;
    v_emp c_emp%rowtype;
begin
    open c_emp;

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name);
    end loop;

    close c_emp;
end;

-- 4) Erzeuge einen Cursor und gib die Mitarbeiter aus, die mehr als der Durchschnitt in der Firma verdienen.
declare
    cursor c_emp is select first_name, last_name, salary
                    from hr.employees
                    where salary > (select avg(salary)
                                    from hr.employees);
    v_emp c_emp%rowtype;
begin
    open c_emp;

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    close c_emp;
end;

-- 5) Erzeuge einen Cursor mit Parameter für die MA mit Übergabe des Durchschnittgehalts.
declare
    cursor c_emp (v_avg_salary in number) is select first_name, last_name, salary
                                             from hr.employees
                                             where salary > v_avg_salary;
    v_emp        c_emp%rowtype;
    v_avg_salary hr.employees.salary%type;
begin
    select avg(salary) into v_avg_salary from hr.employees;

    open c_emp(v_avg_salary);

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    close c_emp;
end;

-- 6) Behandle die INVALID_CURSOR-Exception bei Beispiel 4. Du kannst diese Testen, in dem du den Cursor nicht öffnest.
declare
    cursor c_emp is select first_name, last_name, salary
                    from hr.employees
                    where salary > (select avg(salary)
                                    from hr.employees);
    v_emp c_emp%rowtype;
begin
    open c_emp;

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;
        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    close c_emp;
exception
    when others then
        dbms_output.put_line('Fehler: ' || sqlerrm);
end;

-- 7) Erzeuge das Ergebnis der Abfrage ohne Verwendung eines subselects, also mit 2 Cursor: Welche Mitarbeiter verdienen mehr als der Durchschnitt ihrer Abteilung?
declare
    cursor c_emp is select avg(salary), department_id
                    from hr.employees
                    group by department_id;
    cursor c_emp2 (p_avg_sal number, p_dept_id number) is select first_name,
                                                                 last_name,
                                                                 department_id,
                                                                 salary
                                                          from hr.employees
                                                          where salary > p_avg_sal
                                                            and department_id = p_dept_id;
    v_avg_sal hr.employees.salary%type;
    v_dept_id hr.employees.department_id%type;
    v_emp     c_emp2%rowtype;
begin
    open c_emp;

    loop
        fetch c_emp into v_avg_sal, v_dept_id;
        exit when c_emp%notfound;

        open c_emp2(v_avg_sal, v_dept_id);

        loop
            fetch c_emp2 into v_emp;
            exit when c_emp2%notfound;

            dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
        end loop;

        close c_emp2;
    end loop;

    close c_emp;
end;

-- 8) Erzeuge eine Procedure für das Lesen der Mitarbeiter nach Übergabe des Durchschnittsgehalts und der Abteilung verwende diese wie in Aufgabe 7
create or replace procedure proc_aufgabe8(p_avg_sal in number) as
    cursor c_emp (p_avg_sal number) is select first_name, last_name, department_id, salary
                                       from hr.employees
                                       where salary > p_avg_sal;
    v_emp c_emp%rowtype;
begin
    open c_emp(p_avg_sal);

    loop
        fetch c_emp into v_emp;
        exit when c_emp%notfound;

        dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name || ' ' || v_emp.salary);
    end loop;

    close c_emp;
end;

declare
    v_avg_sal number;
begin
    select avg(salary) into v_avg_sal from hr.employees;
    proc_aufgabe8(v_avg_sal);
end;

-- 9) Erstelle Aufgabe 7 mit 2 Procedures, wobei die 2. Procedure den Durchschnittsgehalt und die Abteilung von allen Mitarbeitern zurückgibt. Dieser soll dann als Übergabe für die Procedure in Aufgabe 8 verwendet werden.
create or replace procedure proc_aufgabe9_1 as
    v_avg_sal number;
begin
    proc_aufgabe9_2(v_avg_sal);
    proc_aufgabe8(v_avg_sal);
end;

create or replace procedure proc_aufgabe9_2(p_avg_sal out number) as
begin
    select avg(salary) into p_avg_sal from hr.employees;
end;

declare
begin
    proc_aufgabe9_1();
end;
