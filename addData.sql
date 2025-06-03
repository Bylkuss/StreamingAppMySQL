USE LounesAdjou_StreamingPlatform;

-- Insertion des données dans la table CLIENT
INSERT INTO CLIENT (email, password, nom, prenom, adresse, ville, codePostal, pays, dateInscription) VALUES
('client1@email.com', 'password1', 'Dupont', 'Jean', '123 Rue Principale', 'Paris', '75001', 'France', '2022-01-15'),
('client2@email.com', 'password2', 'Martin', 'Sophie', '456 Avenue des Champs', 'Lyon', '69002', 'France', '2022-02-20'),
('client3@email.com', 'password3', 'Bernard', 'Pierre', '789 Boulevard Central', 'Marseille', '13001', 'France', '2022-03-10'),
('client4@email.com', 'password4', 'Petit', 'Marie', '101 Rue Secondaire', 'Toulouse', '31000', 'France', '2022-04-05'),
('client5@email.com', 'password5', 'Leroy', 'Luc', '202 Avenue Tertiaire', 'Nice', '06000', 'France', '2022-05-12');

-- Insertion des données dans la table CARTE_CREDIT
INSERT INTO CARTE_CREDIT (codeCLIENT, numero, nomTitulaire, dateExpiration, codeSecurite, typeCarte) VALUES
(1, '4111111111111111', 'Jean Dupont', '2025-12-31', '123', 'VISA'),
(1, '5555555555554444', 'Jean Dupont', '2024-06-30', '456', 'MasterCard'),
(2, '4012888888881881', 'Sophie Martin', '2025-09-30', '789', 'VISA'),
(3, '5105105105105100', 'Pierre Bernard', '2023-11-30', '321', 'MasterCard'),
(4, '378282246310005', 'Marie Petit', '2026-03-31', '654', 'American Express'),
(5, '6011111111111117', 'Luc Leroy', '2024-08-31', '987', 'Discover');

-- Insertion des données dans la table COMPAGNIE
INSERT INTO COMPAGNIE (nom, pays, anneeFondation) VALUES
('Disney', 'États-Unis', 1923),
('Universal', 'États-Unis', 1912),
('Warner Bros', 'États-Unis', 1923),
('Paramount', 'États-Unis', 1912),
('Gaumont', 'France', 1895);

-- Insertion des données dans la table ABONNEMENT
INSERT INTO ABONNEMENT (codeCLIENT, type, dateDebut, dateRenouvellement, montantAnnuel, codeCarte) VALUES
(1, 'Premium', '2022-01-15', '2023-01-15', 119.99, 1),
(2, 'Standard', '2022-02-20', '2023-02-20', 89.99, 3),
(3, 'Basic', '2022-03-10', '2023-03-10', 59.99, 4),
(4, 'Premium', '2022-04-05', '2023-04-05', 119.99, 5),
(5, 'Standard', '2022-05-12', '2023-05-12', 89.99, 6);

-- Insertion des données dans la table CATEGORIE
INSERT INTO CATEGORIE (nom, description) VALUES
('Action', 'Films avec beaucoup de scènes d action'),
('Aventure', 'Films d exploration et de découverte'),
('Drame', 'Films sérieux et émotionnels'),
('Comédie', 'Films humoristiques'),
('Science-fiction', 'Films avec des éléments scientifiques fictifs');

-- Insertion des données dans la table LANGUE
INSERT INTO LANGUE (nom, codeISO) VALUES
('Français', 'fr'),
('Anglais', 'en'),
('Espagnol', 'es'),
('Allemand', 'de'),
('Italien', 'it');

-- Insertion des données dans la table PERSONNE
INSERT INTO PERSONNE (nom, prenom, dateNaissance, nationalite) VALUES
('Depp', 'Johnny', '1963-06-09', 'Américaine'),
('Jolie', 'Angelina', '1975-06-04', 'Américaine'),
('DiCaprio', 'Leonardo', '1974-11-11', 'Américaine'),
('Portman', 'Natalie', '1981-06-09', 'Israélienne'),
('Dujardin', 'Jean', '1972-06-19', 'Française'),
('Nolan', 'Christopher', '1970-07-30', 'Britannique'),
('Tarantino', 'Quentin', '1963-03-27', 'Américaine'),
('Scorsese', 'Martin', '1942-11-17', 'Américaine'),
('Cotillard', 'Marion', '1975-09-30', 'Française');

-- Insertion des données dans la table FILM
INSERT INTO FILM (titre, duree, description, noteGlobale, dateSortie, codeCompagnie, langueOriginale) VALUES
('Pirates des Caraïbes', 143, 'Aventure de pirates avec Jack Sparrow', 85.5, '2003-07-09', 1, 2),
('Inception', 148, 'Film de science-fiction sur les rêves', 92.0, '2010-07-16', 3, 2),
('The Dark Knight', 152, 'Super-héros Batman contre le Joker', 94.0, '2008-07-18', 3, 2),
('Titanic', 195, 'Histoire d amour sur le paquebot Titanic', 89.0, '1997-12-19', 4, 2),
('The Artist', 100, 'Film muet en noir et blanc', 95.0, '2011-10-12', 5, 1);

-- Insertion des données dans la table FILM_CATEGORIE
INSERT INTO FILM_CATEGORIE (codeFilm, codeCategorie) VALUES
(1, 1), (1, 2),
(2, 1), (2, 5),
(3, 1), (3, 3),
(4, 3), (4, 2),
(5, 3), (5, 4);

-- Insertion des données dans la table FILM_LANGUE
INSERT INTO FILM_LANGUE (codeFilm, codeLangue) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2), (2, 4),
(3, 1), (3, 2), (3, 5),
(4, 1), (4, 2), (4, 3),
(5, 1), (5, 2);

-- Insertion des données dans la table ACTEUR_FILM
INSERT INTO ACTEUR_FILM (codeFilm, codePersonne, nomPersonnage, dateDebut, dateFin, cachet) VALUES
(1, 1, 'Jack Sparrow', '2002-01-01', '2002-06-30', 10000000.00),
(1, 2, 'Elizabeth Swann', '2002-02-01', '2002-07-15', 8000000.00),
(2, 3, 'Cobb', '2009-03-01', '2009-08-31', 20000000.00),
(3, 3, 'Bruce Wayne / Batman', '2007-04-01', '2007-09-30', 25000000.00),
(4, 3, 'Jack Dawson', '1996-05-01', '1996-10-31', 2500000.00),
(5, 5, 'George Valentin', '2010-06-01', '2010-08-31', 500000.00),
(5, 9, 'Peppy Miller', '2010-06-15', '2010-09-15', 400000.00);

-- Insertion des données dans la table EQUIPE_FILM
INSERT INTO EQUIPE_FILM (codeFilm, codePersonne, role, dateDebut, dateFin, salaire) VALUES
(1, 6, 'Producteur', '2001-01-01', '2003-07-31', 5000000.00),
(2, 6, 'Réalisateur', '2009-01-01', '2010-07-31', 10000000.00),
(3, 6, 'Réalisateur', '2007-01-01', '2008-07-31', 12000000.00),
(4, 8, 'Réalisateur', '1996-01-01', '1997-12-31', 8000000.00),
(5, 7, 'Scénariste', '2010-01-01', '2010-10-31', 2000000.00);

-- Insertion des données dans la table COMMANDE
INSERT INTO COMMANDE (codeCLIENT, codeFilm, dateHeure, adresseIP, progressionVisionnement) VALUES
(1, 1, '2022-02-01 20:15:00', '192.168.1.1', 3600),
(1, 2, '2022-02-05 21:30:00', '192.168.1.1', 5400),
(1, 3, '2022-03-10 19:45:00', '192.168.1.2', 7200),
(2, 1, '2022-03-15 18:00:00', '10.0.0.1', 1800),
(2, 4, '2022-04-20 22:15:00', '10.0.0.2', 9000),
(3, 2, '2022-05-25 20:30:00', '172.16.0.1', 4500),
(4, 5, '2022-06-30 21:45:00', '172.16.0.2', 3000),
(5, 3, '2022-07-05 19:00:00', '192.168.0.1', 6000),
(5, 1, '2022-08-10 20:15:00', '192.168.0.2', 2700);

-- Insertion des données dans la table NOTE
INSERT INTO NOTE (codeCLIENT, codeFilm, note, commentaire, dateNote) VALUES
(1, 1, 90, 'Excellent film, Johnny Depp est génial!', '2022-02-02'),
(1, 2, 95, 'Mind-blowing, un chef-d œuvre!', '2022-02-06'),
(2, 1, 85, 'Très bon film d aventure', '2022-03-16'),
(2, 4, 88, 'Histoire d amour émouvante', '2022-04-21'),
(3, 2, 92, 'Christopher Nolan au top', '2022-05-26'),
(4, 5, 93, 'Film original, très bon jeu d acteurs', '2022-07-01'),
(5, 3, 94, 'Mon Batman préféré!', '2022-08-12');
