-- 5. Afficher le titre et la note des films d'action
SELECT f.titre, f.noteGlobale
FROM FILM f
INNER JOIN FILM_CATEGORIE fc ON f.codeFilm = fc.codeFilm
INNER JOIN CATEGORIE cat ON fc.codeCategorie = cat.codeCategorie
WHERE cat.nom = 'Action';
