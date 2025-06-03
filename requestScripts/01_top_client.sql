-- 1. Afficher le nom et prénom du client ayant commandé le plus de films
SELECT c.nom, c.prenom
FROM CLIENT c
INNER JOIN COMMANDE co ON c.codeCLIENT = co.codeCLIENT
GROUP BY c.codeCLIENT, c.nom, c.prenom
ORDER BY COUNT(co.codeCommande) DESC
LIMIT 1;
