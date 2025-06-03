-- 4. Afficher les films qui n'ont jamais été commandés
SELECT f.titre
FROM FILM f
LEFT JOIN COMMANDE c ON f.codeFilm = c.codeFilm
WHERE c.codeCommande IS NULL;
