CREATE TABLE credentials (
    PK_credentials_ID NUMBER
        CONSTRAINT pk_credentials_id_nn NOT NULL,
    username VARCHAR2(255)
        CONSTRAINT username_nn NOT NULL,
    password_hash VARCHAR2(128),
    is_active NUMBER(1,0)
        CONSTRAINT is_active_nn NOT NULL,
    last_login DATE,
    CONSTRAINT pk_credentials_id_pkc PRIMARY KEY(PK_credentials_ID),
    CONSTRAINT username_uk UNIQUE (username));

CREATE TABLE logtable (
    PK_logtable_ID NUMBER
        CONSTRAINT pk_logtable_id_nn NOT NULL,
    ts TIMESTAMP
        CONSTRAINT ts_nn NOT NULL,
    msg VARCHAR2(255)
        CONSTRAINT msg_nn NOT NULL,
    CONSTRAINT pk_logtable_id_pkc PRIMARY KEY(PK_logtable_ID)
);

INSERT INTO credentials (PK_credentials_ID, username, password_hash, is_active, last_login) VALUES
(1, 'root', RAWTOHEX(STANDARD_HASH('toor', 'SHA512')), 1, TO_DATE('2023-02-22', 'yyyy-MM-dd'));
INSERT INTO credentials (PK_credentials_ID, username, password_hash, is_active, last_login) VALUES
(2, 'ghost', RAWTOHEX(STANDARD_HASH('secret', 'SHA512')), 1, TO_DATE('2022-02-22', 'yyyy-MM-dd'));

COMMIT;