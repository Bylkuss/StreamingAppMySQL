
-- 1. Afficher le nom et prénom du client ayant commandé le plus de films
SELECT c.nom, c.prenom
FROM CLIENT c
INNER JOIN COMMANDE co ON c.codeCLIENT = co.codeCLIENT
GROUP BY c.codeCLIENT, c.nom, c.prenom
ORDER BY COUNT(co.codeCommande) DESC
LIMIT 1;

-- 2. Afficher les clients dont la carte de crédit expire dans moins de 3 mois
SELECT DISTINCT c.nom, c.prenom
FROM CLIENT c
INNER JOIN CARTE_CREDIT cc ON c.codeCLIENT = cc.codeCLIENT
WHERE cc.dateExpiration BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 3 MONTH);


-- 3. Afficher les acteurs du film ayant la meilleure note
SELECT DISTINCT p.nom, p.prenom
FROM PERSONNE p
INNER JOIN ACTEUR_FILM af ON p.codePersonne = af.codePersonne
INNER JOIN FILM f ON af.codeFilm = f.codeFilm
WHERE f.noteGlobale = (SELECT MAX(noteGlobale) FROM FILM);


-- 4. Afficher les films qui n'ont jamais été commandés
SELECT f.titre
FROM FILM f
LEFT JOIN COMMANDE c ON f.codeFilm = c.codeFilm
WHERE c.codeCommande IS NULL;


-- 5. Afficher le titre et la note des films d'action
SELECT f.titre, f.noteGlobale
FROM FILM f
INNER JOIN FILM_CATEGORIE fc ON f.codeFilm = fc.codeFilm
INNER JOIN CATEGORIE cat ON fc.codeCategorie = cat.codeCategorie
WHERE cat.nom = 'Action';


-- 6. Mettre à jour la note d’un film pour un client donné
UPDATE NOTE n
INNER JOIN CLIENT c ON n.codeCLIENT = c.codeCLIENT
INNER JOIN FILM f ON n.codeFilm = f.codeFilm
SET n.note = 85, n.dateNote = CURDATE()
WHERE c.email = 'client1@email.com' AND f.titre = 'Inception';


-- 7. Supprimer la note d’un film pour un client donné
DELETE n
FROM NOTE n
INNER JOIN CLIENT c ON n.codeCLIENT = c.codeCLIENT
INNER JOIN FILM f ON n.codeFilm = f.codeFilm
WHERE c.email = 'client2@email.com' AND f.titre = 'Pirates des Caraïbes';
