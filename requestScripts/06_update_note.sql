-- 6. Mettre à jour la note d’un film pour un client donné
UPDATE NOTE n
INNER JOIN CLIENT c ON n.codeCLIENT = c.codeCLIENT
INNER JOIN FILM f ON n.codeFilm = f.codeFilm
SET n.note = 85, n.dateNote = CURDATE()
WHERE c.email = 'client1@email.com' AND f.titre = 'Inception';
