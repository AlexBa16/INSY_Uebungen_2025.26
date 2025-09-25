DROP DATABASE IF EXISTS 4BI;
CREATE DATABASE 4BI CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE 4BI;

CREATE TABLE Abteilung (
    ID INT AUTO_INCREMENT,
    Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Projekt (
    ID INT AUTO_INCREMENT,
    Bezeichnung VARCHAR(255) NOT NULL,
    Beschreibung TEXT,
    Abteilung_ID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Abteilung_ID) REFERENCES Abteilung(ID)
);

INSERT INTO Abteilung (ID, Bezeichnung) VALUES
    (1, 'Forschung'),
    (2, 'EDV');

INSERT INTO Projekt (ID, Bezeichnung, Beschreibung, Abteilung_ID) VALUES
    (1, 'DBS-Aktualisierung', 'Umstellung auf die aktuelle Version', 2),
    (2, 'Roller 23', 'Entwicklung eines neuen E-Roller-Modells', 1),
    (3, 'Buchhaltung NEU', 'Die Computer in der Buchhaltung werden ersetzt', 2);
    