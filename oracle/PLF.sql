ALTER SESSION SET "_ORACLE_SCRIPT"= TRUE;

DROP ROLE standard_role;
CREATE ROLE standard_role;

GRANT CREATE session, CREATE table, CREATE view, CREATE procedure, CREATE synonym TO standard_role;

DROP USER plf CASCADE;
CREATE USER plf IDENTIFIED BY plf
    DEFAULT TABLESPACE users
    TEMPORARY TABLESPACE temp
    QUOTA UNLIMITED ON users;

GRANT standard_role to plf;

alter session set current_schema = plf;

ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=Austria;



SELECT trigger_name,
       table_name,
       trigger_type,
       triggering_event,
       status
FROM user_triggers
ORDER BY trigger_name;