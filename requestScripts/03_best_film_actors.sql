-- 3. Afficher les acteurs du film ayant la meilleure note
SELECT DISTINCT p.nom, p.prenom
FROM PERSONNE p
INNER JOIN ACTEUR_FILM af ON p.codePersonne = af.codePersonne
INNER JOIN FILM f ON af.codeFilm = f.codeFilm
WHERE f.noteGlobale = (SELECT MAX(noteGlobale) FROM FILM);
