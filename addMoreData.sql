-- USE LounesAdjou_StreamingPlatform;

-- -- -----------------------
-- -- Insertion Clients
-- -- -----------------------
-- INSERT INTO CLIENT (email, password, nom, prenom, adresse, ville, codePostal, pays, dateInscription) VALUES
-- ('client10@email.com', 'password1', 'Dupont', 'Jean', '123 Rue Principale', 'Paris', '75001', 'France', '2023-01-15'),
-- ('client20@email.com', 'password2', 'Martin', 'Sophie', '456 Avenue des Champs', 'Lyon', '69002', 'France', '2023-02-20'),
-- ('client30@email.com', 'password3', 'Bernard', 'Pierre', '789 Boulevard Central', 'Marseille', '13001', 'France', '2023-03-10'),
-- ('client40@email.com', 'password4', 'Petit', 'Marie', '101 Rue Secondaire', 'Toulouse', '31000', 'France', '2023-04-05'),
-- ('client50@email.com', 'password5', 'Leroy', 'Luc', '202 Avenue Tertiaire', 'Nice', '06000', 'France', '2023-05-12'),
-- ('client60@email.com', 'password6', 'Durand', 'Claire', '10 Rue des Lilas', 'Nantes', '44000', 'France', '2024-01-20'),
-- ('client70@email.com', 'password7', 'Moreau', 'Antoine', '25 Rue Victor Hugo', 'Bordeaux', '33000', 'France', '2024-02-15');

-- -- -----------------------
-- -- Insertion Cartes de Crédit
-- -- -----------------------
-- INSERT INTO CARTE_CREDIT (codeCLIENT, numero, nomTitulaire, dateExpiration, codeSecurite, typeCarte) VALUES
-- (1, '4111111111111111', 'Jean Dupont', '2025-07-01', '123', 'VISA'),    -- expire bientôt (moins de 3 mois)
-- (1, '5555555555554444', 'Jean Dupont', '2026-06-30', '456', 'MasterCard'),
-- (2, '4012888888881881', 'Sophie Martin', '2025-09-30', '789', 'VISA'),
-- (3, '5105105105105100', 'Pierre Bernard', '2025-11-30', '321', 'MasterCard'),
-- (4, '378282246310005', 'Marie Petit', '2025-08-31', '654', 'American Express'),
-- (5, '6011111111111117', 'Luc Leroy', '2025-06-10', '987', 'Discover'),  -- expire bientôt (moins de 3 mois)
-- (6, '3530111333300000', 'Claire Durand', '2027-01-01', '159', 'JCB'),
-- (7, '6200000000000005', 'Antoine Moreau', '2024-12-31', '753', 'Maestro'); -- expirée

-- -- -----------------------
-- -- Insertion Compagnies
-- -- -----------------------
-- INSERT INTO COMPAGNIE (nom, pays, anneeFondation) VALUES
-- ('Disney', 'États-Unis', 1923),
-- ('Universal', 'États-Unis', 1912),
-- ('Warner Bros', 'États-Unis', 1923),
-- ('Paramount', 'États-Unis', 1912),
-- ('Gaumont', 'France', 1895);

-- -- -----------------------
-- -- Insertion Abonnements
-- -- -----------------------
-- INSERT INTO ABONNEMENT (codeCLIENT, type, dateDebut, dateRenouvellement, montantAnnuel, codeCarte) VALUES
-- (1, 'Premium', '2023-01-15', '2024-01-15', 119.99, 1),
-- (2, 'Standard', '2023-02-20', '2024-02-20', 89.99, 3),
-- (3, 'Basic', '2023-03-10', '2024-03-10', 59.99, 4),
-- (4, 'Premium', '2023-04-05', '2024-04-05', 119.99, 5),
-- (5, 'Standard', '2023-05-12', '2024-05-12', 89.99, 6),
-- (6, 'Basic', '2024-01-20', '2025-01-20', 59.99, 7);

-- -- -----------------------
-- -- Insertion Catégories
-- -- -----------------------
-- INSERT INTO CATEGORIE (nom, description) VALUES
-- ('Action', 'Films avec beaucoup de scènes d action'),
-- ('Aventure', 'Films d exploration et de découverte'),
-- ('Drame', 'Films sérieux et émotionnels'),
-- ('Comédie', 'Films humoristiques'),
-- ('Science-fiction', 'Films avec des éléments scientifiques fictifs'),
-- ('Thriller', 'Films à suspense');

-- -- -----------------------
-- -- Insertion Langues
-- -- -----------------------
-- INSERT INTO LANGUE (nom, codeISO) VALUES
-- ('Français', 'fr'),
-- ('Anglais', 'en'),
-- ('Espagnol', 'es'),
-- ('Allemand', 'de'),
-- ('Italien', 'it');

-- -- -----------------------
-- -- Insertion Personnes (Acteurs, Réalisateurs, etc)
-- -- -----------------------
-- INSERT INTO PERSONNE (nom, prenom, dateNaissance, nationalite) VALUES
-- ('Depp', 'Johnny', '1963-06-09', 'Américaine'),
-- ('Jolie', 'Angelina', '1975-06-04', 'Américaine'),
-- ('DiCaprio', 'Leonardo', '1974-11-11', 'Américaine'),
-- ('Portman', 'Natalie', '1981-06-09', 'Israélienne'),
-- ('Dujardin', 'Jean', '1972-06-19', 'Française'),
-- ('Nolan', 'Christopher', '1970-07-30', 'Britannique'),
-- ('Tarantino', 'Quentin', '1963-03-27', 'Américaine'),
-- ('Scorsese', 'Martin', '1942-11-17', 'Américaine'),
-- ('Cotillard', 'Marion', '1975-09-30', 'Française');

-- -- -----------------------
-- -- Insertion Films
-- -- -----------------------
-- INSERT INTO FILM (titre, duree, description, noteGlobale, dateSortie, codeCompagnie, langueOriginale) VALUES
-- ('Pirates des Caraïbes', 143, 'Aventure de pirates avec Jack Sparrow', 85.5, '2003-07-09', 1, 2),
-- ('Inception', 148, 'Film de science-fiction sur les rêves', 92.0, '2010-07-16', 3, 2),
-- ('The Dark Knight', 152, 'Super-héros Batman contre le Joker', 94.0, '2008-07-18', 3, 2),
-- ('Titanic', 195, 'Histoire d amour sur le paquebot Titanic', 89.0, '1997-12-19', 4, 2),
-- ('The Artist', 100, 'Film muet en noir et blanc', 95.0, '2011-10-12', 5, 1),
-- ('Interstellar', 169, 'Voyage interstellaire et trous noirs', 93.5, '2014-11-07', 3, 2),
-- ('Avengers', 143, 'Super-héros unis pour sauver le monde', 90.0, '2012-05-04', 2, 2),
-- ('Gladiator', 155, 'Combat dans l’arène romaine', 88.0, '2000-05-05', 4, 2);

-- -- -----------------------
-- -- Insertion Film_Categorie
-- -- -----------------------
-- INSERT INTO FILM_CATEGORIE (codeFilm, codeCategorie) VALUES
-- (1, 2), (1, 4),
-- (2, 1), (2, 5),
-- (3, 1), (3, 6),
-- (4, 3), (4, 2),
-- (5, 3), (5, 4),
-- (6, 5), (6, 2),
-- (7, 1), (7, 2),
-- (8, 1), (8, 3);

-- -- -----------------------
-- -- Insertion Film_Langue
-- -- -----------------------
-- INSERT INTO FILM_LANGUE (codeFilm, codeLangue) VALUES
-- (1, 1), (1, 2), (1, 3),
-- (2, 1), (2, 2),
-- (3, 1), (3, 2),
-- (4, 1), (4, 2), (4, 4),
-- (5, 1), (5, 2),
-- (6, 1), (6, 2),
-- (7, 1), (7, 2), (7, 5),
-- (8, 1), (8, 2);

-- -- -----------------------
-- -- Insertion Acteur_Film
-- -- -----------------------
-- INSERT INTO ACTEUR_FILM (codeFilm, codePersonne, nomPersonnage, dateDebut, dateFin, cachet) VALUES
-- (1, 1, 'Jack Sparrow', '2002-01-01', '2003-07-31', 10000000.00),
-- (1, 2, 'Elizabeth Swann', '2002-02-01', '2003-07-31', 8000000.00),
-- (2, 6, 'Dom Cobb', '2009-03-01', '2010-07-31', 20000000.00),
-- (3, 3, 'Bruce Wayne / Batman', '2007-04-01', '2008-07-31', 25000000.00),
-- (4, 3, 'Jack Dawson', '1996-05-01', '1997-12-31', 2500000.00),
-- (5, 9, 'Peppy Miller', '2010-06-15', '2010-09-15', 400000.00),
-- (6, 6, 'Cooper', '2013-05-01', '2014-11-30', 15000000.00),
-- (7, 2, 'Iron Man', '2011-01-01', '2012-06-30', 18000000.00),
-- (8, 5, 'Maximus', '1999-01-01', '2000-06-30', 9000000.00);

-- -- -----------------------
-- -- Insertion Equipe_Film
-- -- -----------------------
-- INSERT INTO EQUIPE_FILM (codeFilm, codePersonne, role, dateDebut, dateFin, salaire) VALUES
-- (1, 6, 'Producteur', '2001-01-01', '2003-07-31', 5000000.00),
-- (2, 6, 'Réalisateur', '2009-01-01', '2010-07-31', 10000000.00),
-- (3, 6, 'Réalisateur', '2007-01-01', '2008-07-31', 12000000.00),
-- (4, 8, 'Réalisateur', '1996-01-01', '1997-12-31', 8000000.00),
-- (5, 7, 'Scénariste', '2010-01-01', '2010-10-31', 2000000.00);

-- -- -----------------------
-- -- Insertion Commandes
-- -- -----------------------
-- INSERT INTO COMMANDE (codeCLIENT, codeFilm, dateHeure, adresseIP, progressionVisionnement) VALUES
-- (1, 1, '2024-12-01 20:15:00', '192.168.1.1', 3600),
-- (1, 2, '2025-01-05 21:30:00', '192.168.1.1', 5400),
-- (1, 3, '2025-02-10 19:45:00', '192.168.1.2', 7200),
-- (2, 1, '2025-03-15 18:00:00', '10.0.0.1', 1800),
-- (2, 4, '2025-04-20 22:15:00', '10.0.0.2', 9000),
-- (3, 2, '2025-05-25 20:30:00', '172.16.0.1', 4500),
-- (4, 5, '2025-06-01 21:45:00', '172.16.0.2', 3000),
-- (5, 3, '2025-06-03 19:00:00', '192.168.0.1', 6000),
-- (5, 1, '2025-06-04 20:15:00', '192.168.0.2', 2700),
-- (6, 6, '2025-05-30 20:00:00', '10.10.10.10', 4200),
-- (7, 7, '2025-06-02 21:00:00', '10.10.10.11', 3600),
-- (7, 8, '2025-06-05 19:30:00', '10.10.10.12', 1800);

-- -- -----------------------
-- -- Insertion Notes
-- -- -----------------------
-- INSERT INTO NOTE (codeCLIENT, codeFilm, note, commentaire, dateNote) VALUES
-- (1, 1, 90, 'Excellent film, Johnny Depp est génial!', '2024-12-02'),
-- (1, 2, 95, 'Mind-blowing, un chef-d œuvre!', '2025-01-06'),
-- (2, 1, 85, 'Très bon film d aventure', '2025-03-16'),
-- (2, 4, 88, 'Histoire d amour émouvante', '2025-04-21'),
-- (3, 2, 92, 'Christopher Nolan au top', '2025-05-26'),
-- (4, 5, 93, 'Film original, très bon jeu d acteurs', '2025-06-01'),
-- (5, 3, 94, 'Mon Batman préféré!', '2025-06-04'),
-- (6, 6, 91, 'Très bon film de science-fiction', '2025-05-31'),
-- (7, 7, 87, 'Super film d action', '2025-06-03');




USE LounesAdjou_StreamingPlatform;

-- Insertion de nouveaux clients
INSERT INTO CLIENT (email, password, nom, prenom, adresse, ville, codePostal, pays, dateInscription) VALUES
('client6@email.com', 'password6', 'Moreau', 'Claire', '321 Rue des Lilas', 'Bordeaux', '33000', 'France', '2023-01-10'),
('client7@email.com', 'password7', 'Lefevre', 'Thomas', '654 Avenue du Parc', 'Lille', '59000', 'France', '2023-02-15'),
('client8@email.com', 'password8', 'Roux', 'Emma', '987 Boulevard des Roses', 'Nantes', '44000', 'France', '2023-03-20'),
('client9@email.com', 'password9', 'Fournier', 'Antoine', '147 Rue du Moulin', 'Strasbourg', '67000', 'France', '2023-04-25'),
('client100@email.com', 'password10', 'Girard', 'Julie', '258 Avenue de la Mer', 'Cannes', '06400', 'France', '2023-05-30');

-- Insertion de nouvelles cartes de crédit, incluant des dates d'expiration proches pour tester la requête 2
INSERT INTO CARTE_CREDIT (codeCLIENT, numero, nomTitulaire, dateExpiration, codeSecurite, typeCarte) VALUES
(6, '4222222222222222', 'Claire Moreau', '2025-08-31', '234', 'VISA'),
(7, '5666666666666666', 'Thomas Lefevre', '2025-07-15', '567', 'MasterCard'),
(8, '377777777777777', 'Emma Roux', '2025-09-01', '890', 'American Express'),
(9, '6111111111111111', 'Antoine Fournier', '2026-01-31', '432', 'Discover'),
(10, '4333333333333333', 'Julie Girard', '2025-06-30', '765', 'VISA');

-- Insertion de nouvelles compagnies
INSERT INTO COMPAGNIE (nom, pays, anneeFondation) VALUES
('Netflix', 'États-Unis', 1997),
('Sony Pictures', 'États-Unis', 1987);

-- Insertion de nouveaux abonnements
INSERT INTO ABONNEMENT (codeCLIENT, type, dateDebut, dateRenouvellement, montantAnnuel, codeCarte) VALUES
(6, 'Basic', '2023-01-10', '2024-01-10', 59.99, 7),
(7, 'Premium', '2023-02-15', '2024-02-15', 119.99, 8),
(8, 'Standard', '2023-03-20', '2024-03-20', 89.99, 9),
(9, 'Premium', '2023-04-25', '2024-04-25', 119.99, 10),
(10, 'Basic', '2023-05-30', '2024-05-30', 59.99, 11);

-- Insertion de nouvelles personnes
INSERT INTO PERSONNE (nom, prenom, dateNaissance, nationalite) VALUES
('Cruise', 'Tom', '1962-07-03', 'Américaine'),
('Winslet', 'Kate', '1975-10-05', 'Britannique'),
('Spielberg', 'Steven', '1946-12-18', 'Américaine'),
('Blanchett', 'Cate', '1969-05-14', 'Australienne');

-- Insertion de nouveaux films, incluant un film non commandé pour tester la requête 4
INSERT INTO FILM (titre, duree, description, noteGlobale, dateSortie, codeCompagnie, langueOriginale) VALUES
('Mission: Impossible', 131, 'Film d action avec Ethan Hunt', 88.0, '1996-05-22', 4, 2),
('Interstellar', 169, 'Voyage spatial pour sauver l humanité', 93.0, '2014-11-07', 3, 2),
('The Matrix', 136, 'Science-fiction sur une réalité simulée', 90.5, '1999-03-31', 3, 2),
('La La Land', 128, 'Comédie musicale romantique', 91.0, '2016-12-09', 6, 2),
('Jaws', 124, 'Thriller sur un requin tueur', 87.0, '1975-06-20', 2, 2);

-- Insertion dans FILM_CATEGORIE pour les nouveaux films
INSERT INTO FILM_CATEGORIE (codeFilm, codeCategorie) VALUES
(6, 1), (6, 2),
(7, 2), (7, 5),
(8, 1), (8, 5),
(9, 3), (9, 4),
(10, 1), (10, 3);

-- Insertion dans FILM_LANGUE pour les nouveaux films
INSERT INTO FILM_LANGUE (codeFilm, codeLangue) VALUES
(6, 1), (6, 2), (6, 3),
(7, 1), (7, 2), (7, 4),
(8, 1), (8, 2), (8, 5),
(9, 1), (9, 2), (9, 3),
(10, 1), (10, 2);

-- Insertion dans ACTEUR_FILM pour les nouveaux films
INSERT INTO ACTEUR_FILM (codeFilm, codePersonne, nomPersonnage, dateDebut, dateFin, cachet) VALUES
(6, 10, 'Ethan Hunt', '1995-06-01', '1995-12-31', 15000000.00),
(7, 3, 'Cooper', '2013-03-01', '2013-10-31', 22000000.00),
(8, 4, 'Neo', '1998-04-01', '1998-09-30', 12000000.00),
(9, 9, 'Mia', '2015-05-01', '2015-11-30', 6000000.00),
(10, 12, 'Ellen Brody', '1974-06-01', '1974-09-30', 3000000.00);

-- Insertion dans EQUIPE_FILM pour les nouveaux films
INSERT INTO EQUIPE_FILM (codeFilm, codePersonne, role, dateDebut, dateFin, salaire) VALUES
(6, 11, 'Réalisateur', '1995-01-01', '1996-05-31', 7000000.00),
(7, 6, 'Réalisateur', '2013-01-01', '2014-11-30', 15000000.00),
(8, 7, 'Scénariste', '1998-01-01', '1999-03-31', 3000000.00),
(9, 8, 'Producteur', '2015-01-01', '2016-12-31', 5000000.00),
(10, 11, 'Réalisateur', '1974-01-01', '1975-06-30', 6000000.00);

-- Insertion de nouvelles commandes pour diversifier les résultats de la requête 1
INSERT INTO COMMANDE (codeCLIENT, codeFilm, dateHeure, adresseIP, progressionVisionnement) VALUES
(6, 2, '2023-02-01 19:00:00', '192.168.2.1', 4000),
(6, 3, '2023-02-05 20:30:00', '192.168.2.2', 5000),
(6, 6, '2023-03-10 21:15:00', '192.168.2.3', 6000),
(7, 1, '2023-03-15 18:45:00', '10.0.1.1', 2000),
(7, 4, '2023-04-01 22:00:00', '10.0.1.2', 8000),
(7, 7, '2023-04-10 20:15:00', '10.0.1.3', 7000),
(8, 8, '2023-05-01 19:30:00', '172.16.1.1', 4500),
(9, 9, '2023-06-01 21:00:00', '172.16.2.1', 3000),
(10, 6, '2023-07-01 20:00:00', '192.168.3.1', 3500);

-- Insertion de nouvelles notes pour diversifier les résultats des requêtes 3, 5, 6, et 7
INSERT INTO NOTE (codeCLIENT, codeFilm, note, commentaire, dateNote) VALUES
(6, 6, 89, 'Action non-stop, Tom Cruise au top!', '2023-02-02'),
(6, 7, 94, 'Film épique, très émouvant', '2023-03-11'),
(7, 7, 91, 'Science-fiction incroyable', '2023-04-11'),
(8, 8, 92, 'Un classique de la science-fiction', '2023-05-02'),
(9, 9, 90, 'Romantique et drôle, super film!', '2023-06-02'),
(10, 6, 87, 'Très divertissant', '2023-07-02');