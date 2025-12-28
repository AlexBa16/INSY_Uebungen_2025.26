-- 1. Geben Sie die Namen der Departments aus der Region "Europe" an.
SELECT D.*
FROM DEPARTMENTS D
    JOIN LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID
    JOIN COUNTRIES C on L.COUNTRY_ID = C.COUNTRY_ID
    JOIN REGIONS R on C.REGION_ID = R.REGION_ID
WHERE R.REGION_NAME = 'Europe';

-- 2. Geben Sie die Namen der Länder an, in denen kein Department ist.
SELECT C.*
FROM DEPARTMENTS D
    JOIN LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID
    RIGHT JOIN COUNTRIES C on L.COUNTRY_ID = C.COUNTRY_ID
WHERE D.DEPARTMENT_ID IS NULL;

-- 3. Geben Sie die Anzahl der Mitarbeiter pro Department an. Geben Sie dazu Departmentname und die Anzahl an.
SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, COUNT(*) Anzahl
FROM DEPARTMENTS D
    JOIN EMPLOYEES E on D.DEPARTMENT_ID = E.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME;

-- 4. Geben Sie das höchste Gehalt für jeden Job an (Ausgabe: JOB_ID und JOB_TITLE), aber nur bei den Jobs denen mehr als ein Mitarbeiter zugeordnet ist.
SELECT J.JOB_ID, J.JOB_TITLE, MAX(E.SALARY) MAX_SALARY
FROM JOBS J
    JOIN EMPLOYEES E on J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_ID, J.JOB_TITLE
HAVING COUNT(*) > 1;

-- 5. Geben Sie eine nach der Summe der Gehälter absteigend sortierte Liste der Abteilungen (Departments) aus. Geben Sie den Namen der Abteilung an, die Summe und den Mittelwert der Gehälter.
SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, SUM(E.SALARY) Summe, ROUND(AVG(E.SALARY), 2)  Mittelwert
FROM DEPARTMENTS D
    JOIN EMPLOYEES E on D.DEPARTMENT_ID = E.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME
ORDER BY Summe DESC;

-- 6. Wer arbeitet in der gleichen Abteilung wie der Oberboss?
SELECT *
FROM EMPLOYEES E
WHERE E.DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE MANAGER_ID IS NULL)
  AND E.MANAGER_ID IS NOT NULL;