-- Création de la base de données
CREATE DATABASE IF NOT EXISTS LounesAdjou_StreamingPlatform;
USE LounesAdjou_StreamingPlatform;

-- Table CLIENT
CREATE TABLE CLIENT (
    codeCLIENT INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    adresse VARCHAR(100) NOT NULL,
    ville VARCHAR(50) NOT NULL,
    codePostal VARCHAR(10) NOT NULL,
    pays VARCHAR(50) NOT NULL,
    dateInscription DATE NOT NULL
);

-- Table CARTE_CREDIT
CREATE TABLE CARTE_CREDIT (
    codeCarte INT AUTO_INCREMENT PRIMARY KEY,
    codeCLIENT INT NOT NULL,
    numero VARCHAR(16) NOT NULL,
    nomTitulaire VARCHAR(100) NOT NULL,
    dateExpiration DATE NOT NULL,
    codeSecurite VARCHAR(4) NOT NULL,
    typeCarte VARCHAR(20) NOT NULL,
    FOREIGN KEY (codeCLIENT) REFERENCES CLIENT(codeCLIENT)
);

-- Table COMPAGNIE
CREATE TABLE COMPAGNIE (
    codeCompagnie INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    pays VARCHAR(50) NOT NULL,
    anneeFondation INT
);

-- Table ABONNEMENT
CREATE TABLE ABONNEMENT (
    codeAbonnement INT AUTO_INCREMENT PRIMARY KEY,
    codeCLIENT INT NOT NULL,
    type VARCHAR(20) NOT NULL,
    dateDebut DATE NOT NULL,
    dateRenouvellement DATE NOT NULL,
    montantAnnuel DECIMAL(10,2) NOT NULL,
    codeCarte INT NOT NULL,
    FOREIGN KEY (codeCLIENT) REFERENCES CLIENT(codeCLIENT),
    FOREIGN KEY (codeCarte) REFERENCES CARTE_CREDIT(codeCarte)
);

-- Table CATEGORIE
CREATE TABLE CATEGORIE (
    codeCategorie INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    description TEXT
);

-- Table LANGUE
CREATE TABLE LANGUE (
    codeLangue INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    codeISO VARCHAR(5) NOT NULL
);

-- Table PERSONNE
CREATE TABLE PERSONNE (
    codePersonne INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    dateNaissance DATE,
    nationalite VARCHAR(50)
);

-- Table FILM
CREATE TABLE FILM (
    codeFilm INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(100) NOT NULL,
    duree INT NOT NULL, -- en minutes
    description TEXT,
    noteGlobale DECIMAL(3,1),
    dateSortie DATE,
    codeCompagnie INT,
    langueOriginale INT,
    FOREIGN KEY (codeCompagnie) REFERENCES COMPAGNIE(codeCompagnie),
    FOREIGN KEY (langueOriginale) REFERENCES LANGUE(codeLangue)
);

-- Table FILM_CATEGORIE
CREATE TABLE FILM_CATEGORIE (
    codeFilm INT NOT NULL,
    codeCategorie INT NOT NULL,
    PRIMARY KEY (codeFilm, codeCategorie),
    FOREIGN KEY (codeFilm) REFERENCES FILM(codeFilm),
    FOREIGN KEY (codeCategorie) REFERENCES CATEGORIE(codeCategorie)
);

-- Table FILM_LANGUE
CREATE TABLE FILM_LANGUE (
    codeFilm INT NOT NULL,
    codeLangue INT NOT NULL,
    PRIMARY KEY (codeFilm, codeLangue),
    FOREIGN KEY (codeFilm) REFERENCES FILM(codeFilm),
    FOREIGN KEY (codeLangue) REFERENCES LANGUE(codeLangue)
);

-- Table ACTEUR_FILM
CREATE TABLE ACTEUR_FILM (
    codeFilm INT NOT NULL,
    codePersonne INT NOT NULL,
    nomPersonnage VARCHAR(100) NOT NULL,
    dateDebut DATE NOT NULL,
    dateFin DATE,
    cachet DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (codeFilm, codePersonne),
    FOREIGN KEY (codeFilm) REFERENCES FILM(codeFilm),
    FOREIGN KEY (codePersonne) REFERENCES PERSONNE(codePersonne)
);

-- Table EQUIPE_FILM
CREATE TABLE EQUIPE_FILM (
    codeFilm INT NOT NULL,
    codePersonne INT NOT NULL,
    role VARCHAR(50) NOT NULL,
    dateDebut DATE NOT NULL,
    dateFin DATE,
    salaire DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (codeFilm, codePersonne, role),
    FOREIGN KEY (codeFilm) REFERENCES FILM(codeFilm),
    FOREIGN KEY (codePersonne) REFERENCES PERSONNE(codePersonne)
);

-- Table COMMANDE
CREATE TABLE COMMANDE (
    codeCommande INT AUTO_INCREMENT PRIMARY KEY,
    codeCLIENT INT NOT NULL,
    codeFilm INT NOT NULL,
    dateHeure DATETIME NOT NULL,
    adresseIP VARCHAR(15) NOT NULL,
    progressionVisionnement INT NOT NULL, -- en secondes
    FOREIGN KEY (codeCLIENT) REFERENCES CLIENT(codeCLIENT),
    FOREIGN KEY (codeFilm) REFERENCES FILM(codeFilm)
);

-- Table NOTE
CREATE TABLE NOTE (
    codeNote INT AUTO_INCREMENT PRIMARY KEY,
    codeCLIENT INT NOT NULL,
    codeFilm INT NOT NULL,
    note INT NOT NULL CHECK (note BETWEEN 0 AND 100),
    commentaire TEXT,
    dateNote DATE NOT NULL,
    FOREIGN KEY (codeCLIENT) REFERENCES CLIENT(codeCLIENT),
    FOREIGN KEY (codeFilm) REFERENCES FILM(codeFilm),
    UNIQUE (codeCLIENT, codeFilm)
);

-- Table FILM_SIMILAIRE
CREATE TABLE FILM_SIMILAIRE (
    codeFilm1 INT NOT NULL,
    codeFilm2 INT NOT NULL,
    PRIMARY KEY (codeFilm1, codeFilm2),
    FOREIGN KEY (codeFilm1) REFERENCES FILM(codeFilm),
    FOREIGN KEY (codeFilm2) REFERENCES FILM(codeFilm),
    CHECK (codeFilm1 < codeFilm2) -- Pour éviter les doublons (A-B et B-A)
);