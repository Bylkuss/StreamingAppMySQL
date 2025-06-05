# Projet de base de données - Plateforme de streaming

## Structure des fichiers

- `createDB.sql` : Crée toutes les tables nécessaires au projet.
- `addData.sql` : Insère les données initiales dans la base.
- `requestScripts/` : Contient des requêtes SQL spécifiques aux besoins du projet.
- `test_all.sql` : Contient toutes les requêtes pour un test complet du projet.
- `addMoreData.sql` : Insère davantage de données pour des résultats plus concis.
- `deleteDB.sql` : Efface toutes les tables créées initiallement.

## Ordre d'exécution RECOMMANDÉ
*Si ce n'est pas la première utilisation, ne pas oublier d'exécuter `deleteDB.sql` afin de tout effacer la base de données avant de poursuivre avec la procédure*
1. `createDB.sql`
2. `addData.sql`
3. Requêtes dans `requestScripts/` (manuellement ou via `test_all.sql`)
4. `addMoreData.sql`
5. Refaire le point 3. pour valider avec de nouvelles données


## Technologies Utilisées
### Backend & Base de Données
- **MySQL 8.0** : Système de gestion de base de données relationnelle pour le stockage et l'interrogation des données.
- **HeidiSQL 12.5** : Client graphique pour l'administration et l'exécution de scripts MySQL.
- **PowerShell 7** : Utilisé pour l'exécution de scripts et l'automatisation des tâches liées à la base de données.

## Outils de Développement
- **Git** : Système de gestion de versions pour le suivi des modifications (recommandé pour le projet).
- **Visual Studio Code** : Éditeur de code avec extensions SQL pour l'écriture et le débogage des scripts.
- **MySQL Workbench** : Alternative à HeidiSQL pour la modélisation et la visualisation de la base de données.

## Méthodologies
- **Modèle Conceptuel de Données (MCD)** : Utilisé pour la conception initiale de la base, définissant les entités et leurs relations.
- **SQL Standard** : Requêtes conformes aux normes ANSI SQL pour une compatibilité et une portabilité accrues.
- **Scripting Modulaire** : Séparation des scripts par fonctionnalité (création de schéma, insertion de données, requêtes) pour une meilleure maintenabilité.

## Instructions d'Installation
1. **Installer MySQL 8.0** :
   - Téléchargez et installez MySQL Community Server depuis [mysql.com](https://dev.mysql.com/downloads/mysql/).
   - Assurez-vous que le service MySQL est en cours d'exécution.
2. **Installer HeidiSQL 12.5** :
   - Téléchargez HeidiSQL depuis [heidisql.com](https://www.heidisql.com/download.php).
   - Configurez une connexion à votre serveur MySQL.
3. **Installer PowerShell 7** (optionnel pour l'automatisation) :
   - Téléchargez PowerShell 7 depuis [GitHub](https://github.com/PowerShell/PowerShell/releases).
4. **Installer les outils de développement** :
   - Installez Git depuis [git-scm.com](https://git-scm.com/downloads).
   - Installez Visual Studio Code depuis [code.visualstudio.com](https://code.visualstudio.com/) avec l'extension SQL (par exemple, "SQLTools").
   - (Optionnel) Installez MySQL Workbench depuis [mysql.com](https://dev.mysql.com/downloads/workbench/).






