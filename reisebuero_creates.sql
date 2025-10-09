-- Alexander Bachinger --

DROP DATABASE IF EXISTS Reisebuero;
CREATE DATABASE Reisebuero CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE Reisebuero;

CREATE TABLE Land
(
    PK_Land_ID  INT AUTO_INCREMENT NOT NULL,
    Bezeichnung VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_Land_ID)
);

CREATE TABLE Angestellte
(
    PK_Angestellte_ID INT AUTO_INCREMENT NOT NULL,
    Vorname           VARCHAR(255)       NOT NULL,
    Nachname          VARCHAR(255)       NOT NULL,
    Geburtsdatum      DATE               NOT NULL,
    Strasse           VARCHAR(255)       NOT NULL,
    PLZ               CHAR(5)            NOT NULL,
    Ort               VARCHAR(255)       NOT NULL,
    FK_Land_ID        INT                NOT NULL,
    Gehalt            DECIMAL(10, 2)     NOT NULL,
    Eintrittsdatum    DATE               NOT NULL,
    Gewinnbeteiligung DECIMAL(3, 2),
    FK_Vorgesetzte_ID INT,
    PRIMARY KEY (PK_Angestellte_ID),
    FOREIGN KEY (FK_Land_ID) REFERENCES Land (PK_Land_ID) ON DELETE RESTRICT,
    FOREIGN KEY (FK_Vorgesetzte_ID) REFERENCES Angestellte (PK_Angestellte_ID),
    CHECK (PLZ REGEXP '^[0-9]{4,5}$'),
    CHECK (Gehalt > 0),
    CHECK (Gewinnbeteiligung >= 0 AND Gewinnbeteiligung <= 1)

);

CREATE TABLE Sprache
(
    PK_Sprache_ID INT AUTO_INCREMENT NOT NULL,
    Bezeichnung   VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_Sprache_ID)
);

CREATE TABLE Angestellte_Sprache
(
    PK_FK_Angestellte_ID INT NOT NULL,
    PK_FK_Sprache_ID     INT NOT NULL,
    PRIMARY KEY (PK_FK_Angestellte_ID, PK_FK_Sprache_ID),
    FOREIGN KEY (PK_FK_Angestellte_ID) REFERENCES Angestellte (PK_Angestellte_ID) ON DELETE CASCADE,
    FOREIGN KEY (PK_FK_Sprache_ID) REFERENCES Sprache (PK_Sprache_ID) ON DELETE CASCADE
);

CREATE TABLE AngestellteTelefon
(
    PK_AngestellteTelefon_ID INT AUTO_INCREMENT NOT NULL,
    FK_Angestellte_ID        INT                NOT NULL,
    Nummer                   VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_AngestellteTelefon_ID),
    FOREIGN KEY (FK_Angestellte_ID) REFERENCES Angestellte (PK_Angestellte_ID) ON DELETE CASCADE
);

CREATE TABLE Gehalt
(
    PK_FK_Angestellte_ID INT            NOT NULL,
    PK_von               DATE           NOT NULL,
    bis                  DATE           NOT NULL,
    Gehalt               DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (PK_FK_Angestellte_ID, PK_von),
    FOREIGN KEY (PK_FK_Angestellte_ID) REFERENCES Angestellte (PK_Angestellte_ID) ON DELETE CASCADE,
    CHECK (Gehalt > 0),
    CHECK (bis IS NULL OR bis >= PK_von)
);

CREATE TABLE Filiale
(
    PK_Filiale_ID INT AUTO_INCREMENT NOT NULL,
    Bezeichnung   VARCHAR(255)       NOT NULL,
    Strasse       VARCHAR(255)       NOT NULL,
    PLZ           CHAR(5)            NOT NULL,
    Ort           VARCHAR(255)       NOT NULL,
    FK_Land_ID    INT                NOT NULL,
    PRIMARY KEY (PK_Filiale_ID),
    FOREIGN KEY (FK_Land_ID) REFERENCES Land (PK_Land_ID) ON DELETE RESTRICT,
    CHECK (PLZ REGEXP '^[0-9]{4,5}$')
);

CREATE TABLE Angestellte_Filiale
(
    PK_FK_Angestellte_ID INT  NOT NULL,
    PK_FK_Filiale_ID     INT  NOT NULL,
    PK_von               DATE NOT NULL,
    bis                  DATE,
    PRIMARY KEY (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von),
    FOREIGN KEY (PK_FK_Angestellte_ID) REFERENCES Angestellte (PK_Angestellte_ID) ON DELETE CASCADE,
    FOREIGN KEY (PK_FK_Filiale_ID) REFERENCES Filiale (PK_Filiale_ID) ON DELETE RESTRICT,
    CHECK (bis IS NULL OR bis >= PK_von)
);

CREATE TABLE Filialleitung
(
    PK_FK_Angestellte_ID INT  NOT NULL,
    PK_FK_Filiale_ID     INT  NOT NULL,
    PK_von               DATE NOT NULL,
    bis                  DATE,
    PRIMARY KEY (PK_FK_Angestellte_ID, PK_FK_Filiale_ID, PK_von),
    FOREIGN KEY (PK_FK_Angestellte_ID) REFERENCES Angestellte (PK_Angestellte_ID) ON DELETE CASCADE,
    FOREIGN KEY (PK_FK_Filiale_ID) REFERENCES Filiale (PK_Filiale_ID) ON DELETE RESTRICT,
    CHECK (bis IS NULL OR bis >= PK_von)
);

CREATE TABLE FilialeTelefon
(
    PK_FilialeTelefon_ID INT AUTO_INCREMENT NOT NULL,
    FK_Filiale_ID        INT                NOT NULL,
    Nummer               VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_FilialeTelefon_ID),
    FOREIGN KEY (FK_Filiale_ID) REFERENCES Filiale (PK_Filiale_ID) ON DELETE CASCADE
);

CREATE TABLE Abteilung
(
    PK_Abteilung_ID INT AUTO_INCREMENT NOT NULL,
    Bezeichnung     VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_Abteilung_ID)
);

CREATE TABLE Abteilung_Filiale
(
    PK_FK_Abteilung_ID INT NOT NULL,
    PK_FK_Filiale_ID   INT NOT NULL,
    PRIMARY KEY (PK_FK_Abteilung_ID, PK_FK_Filiale_ID),
    FOREIGN KEY (PK_FK_Abteilung_ID) REFERENCES Abteilung (PK_Abteilung_ID) ON DELETE RESTRICT,
    FOREIGN KEY (PK_FK_Filiale_ID) REFERENCES Filiale (PK_Filiale_ID) ON DELETE CASCADE
);

CREATE TABLE Reisedokumentart
(
    PK_Reisedokumentart_ID INT AUTO_INCREMENT NOT NULL,
    Bezeichnung            VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_Reisedokumentart_ID)
);

CREATE TABLE Kunde
(
    PK_Kunde_ID                INT AUTO_INCREMENT NOT NULL,
    Vorname                    VARCHAR(255)       NOT NULL,
    Nachname                   VARCHAR(255)       NOT NULL,
    Geburtsdatum               DATE               NOT NULL,
    Strasse                    VARCHAR(255)       NOT NULL,
    PLZ                        CHAR(5)            NOT NULL,
    Ort                        VARCHAR(255)       NOT NULL,
    FK_Land_ID                 INT                NOT NULL,
    FK_Staatsangehoerigkeit_ID INT                NOT NULL,
    FK_Reisedokumentart_ID     INT                NOT NULL,
    Reisedokumentnummer        VARCHAR(255)       NOT NULL,
    Reisedokumentablaufdatum   DATE               NOT NULL,
    PRIMARY KEY (PK_Kunde_ID),
    FOREIGN KEY (FK_Land_ID) REFERENCES Land (PK_Land_ID) ON DELETE RESTRICT,
    FOREIGN KEY (FK_Staatsangehoerigkeit_ID) REFERENCES Land (PK_Land_ID) ON DELETE RESTRICT,
    FOREIGN KEY (FK_Reisedokumentart_ID) REFERENCES Reisedokumentart (PK_Reisedokumentart_ID) ON DELETE RESTRICT,
    CHECK (PLZ REGEXP '^[0-9]{4,5}$')
);

CREATE TABLE KundeTelefon
(
    PK_KundeTelefon_ID INT AUTO_INCREMENT NOT NULL,
    FK_Kunde_ID        INT                NOT NULL,
    Nummer             VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_KundeTelefon_ID),
    FOREIGN KEY (FK_Kunde_ID) REFERENCES Kunde (PK_Kunde_ID) ON DELETE CASCADE
);

CREATE TABLE Vielfliegerprogramm
(
    PK_Vielfliegerprogramm_ID INT AUTO_INCREMENT NOT NULL,
    Bezeichnung               VARCHAR(255)       NOT NULL,
    PRIMARY KEY (PK_Vielfliegerprogramm_ID)
);

CREATE TABLE Kunde_Vielfliegerprogramm
(
    PK_FK_Kunde_ID               INT          NOT NULL,
    PK_FK_Vielfliegerprogramm_ID INT          NOT NULL,
    Mitgliedsnummer              VARCHAR(255) NOT NULL,
    Punktestand                  INT,
    PRIMARY KEY (PK_FK_Kunde_ID, PK_FK_Vielfliegerprogramm_ID),
    FOREIGN KEY (PK_FK_Kunde_ID) REFERENCES Kunde (PK_Kunde_ID) ON DELETE CASCADE,
    FOREIGN KEY (PK_FK_Vielfliegerprogramm_ID) REFERENCES Vielfliegerprogramm (PK_Vielfliegerprogramm_ID) ON DELETE RESTRICT
);

CREATE TABLE Reise
(
    PK_Reise_ID  INT AUTO_INCREMENT NOT NULL,
    Bezeichnung  VARCHAR(255)       NOT NULL,
    Beschreibung VARCHAR(4095)      NOT NULL,
    PRIMARY KEY (PK_Reise_ID)
);

CREATE TABLE Reiseangebot
(
    PK_Reiseangebot_ID INT AUTO_INCREMENT NOT NULL,
    FK_Reise_ID        INT                NOT NULL,
    FK_Reiseleiter_ID  INT                NOT NULL,
    Abreisedatum       DATE               NOT NULL,
    Preis              DECIMAL(10, 2)     NOT NULL,
    AngebotenePlaetze  INT                NOT NULL,
    PRIMARY KEY (PK_Reiseangebot_ID),
    FOREIGN KEY (FK_Reise_ID) REFERENCES Reise (PK_Reise_ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_Reiseleiter_ID) REFERENCES Angestellte (PK_Angestellte_ID) ON DELETE RESTRICT,
    CHECK (Preis > 0),
    CHECK (AngebotenePlaetze > 0)
);

CREATE TABLE Reisebuchung
(
    PK_Reisebuchung_ID INT AUTO_INCREMENT NOT NULL,
    FK_Reiseangebot_ID INT                NOT NULL,
    FK_Kunde_ID        INT                NOT NULL,
    FK_Angestellte_ID  INT                NOT NULL,
    Buchungsdatum      DATE               NOT NULL,
    PRIMARY KEY (PK_Reisebuchung_ID),
    FOREIGN KEY (FK_Reiseangebot_ID) REFERENCES Reiseangebot (PK_Reiseangebot_ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_Kunde_ID) REFERENCES Kunde (PK_Kunde_ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_Angestellte_ID) REFERENCES Angestellte (PK_Angestellte_ID) ON DELETE RESTRICT
);

CREATE TABLE Reiseteilnehmer
(
    PK_FK_Reisebuchung_ID INT NOT NULL,
    PK_FK_Kunde_ID        INT NOT NULL,
    PRIMARY KEY (PK_FK_Reisebuchung_ID, PK_FK_Kunde_ID),
    FOREIGN KEY (PK_FK_Reisebuchung_ID) REFERENCES Reisebuchung (PK_Reisebuchung_ID) ON DELETE CASCADE,
    FOREIGN KEY (PK_FK_Kunde_ID) REFERENCES Kunde (PK_Kunde_ID) ON DELETE CASCADE
);

CREATE TABLE Zahlung
(
    PK_Zahlung_ID      INT AUTO_INCREMENT NOT NULL,
    FK_Reisebuchung_ID INT                NOT NULL,
    Datum              DATE               NOT NULL,
    Betrag             DECIMAL(10, 2)     NOT NULL,
    PRIMARY KEY (PK_Zahlung_ID),
    FOREIGN KEY (FK_Reisebuchung_ID) REFERENCES Reisebuchung (PK_Reisebuchung_ID) ON DELETE CASCADE,
    CHECK (Betrag > 0)
);



CREATE TABLE Reiseabschnitt
(
    PK_Reiseabschnitt_ID INT AUTO_INCREMENT NOT NULL,
    FK_Reise_ID          INT                NOT NULL,
    VonTagNr             INT                NOT NULL,
    BisTagNr             INT                NOT NULL,
    Beschreibung         VARCHAR(4095)      NOT NULL,
    PRIMARY KEY (PK_Reiseabschnitt_ID),
    FOREIGN KEY (FK_Reise_ID) REFERENCES Reise (PK_Reise_ID) ON DELETE CASCADE,
    CHECK (VonTagNr <= BisTagNr)
);