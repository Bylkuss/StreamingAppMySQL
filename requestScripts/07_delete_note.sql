-- 7. Supprimer la note d’un film pour un client donné
DELETE n
FROM NOTE n
INNER JOIN CLIENT c ON n.codeCLIENT = c.codeCLIENT
INNER JOIN FILM f ON n.codeFilm = f.codeFilm
WHERE c.email = 'client2@email.com' AND f.titre = 'Pirates des Caraïbes';
