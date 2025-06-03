-- 2. Afficher les clients dont la carte de crédit expire dans moins de 3 mois
SELECT DISTINCT c.nom, c.prenom
FROM CLIENT c
INNER JOIN CARTE_CREDIT cc ON c.codeCLIENT = cc.codeCLIENT
WHERE cc.dateExpiration BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 3 MONTH);
