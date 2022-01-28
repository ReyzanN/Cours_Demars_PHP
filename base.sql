-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table eleve.classe : ~11 rows (environ)
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` (`id`, `nomclasse`, `idniveau`, `section`, `ordre`) VALUES
	(1, '2nde 1', 1, 'Aucune', 6),
	(2, '2nde 2', 1, 'Aucune', 9),
	(3, '1ere S', 2, 'S', 5),
	(4, 'Seconde 4', 1, 'Aucune', 18),
	(5, '1ere STMG', 2, 'STMG', 8),
	(6, '1ere ES', 2, 'ES', 7),
	(7, 'Term STMG', 3, 'STMG', 0),
	(8, 'Term S', 3, 'S', 3),
	(10, 'Term L', 3, 'L', 2),
	(11, 'seconde 3', 1, 'Aucune', 0),
	(14, 'seconde 4', 1, 'toto', 0);
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;

-- Listage des données de la table eleve.eleve : ~12 rows (environ)
/*!40000 ALTER TABLE `eleve` DISABLE KEYS */;
INSERT INTO `eleve` (`id`, `nom`, `prenom`, `datNaiss`, `sexe`, `moyenne`, `idclasse`, `ville`, `codepostal`, `moyenne2`) VALUES
	(1, 'CROUZET', 'Baptiste', '1997-11-11', 'H', 15, 7, 'LE PUY', '43000', NULL),
	(3, 'BERNARD', 'Axel', '1998-04-04', 'H', 12, 7, 'LE PUY', '43000', NULL),
	(4, 'COSTE', 'Coralie', '1998-01-01', 'F', 10, 8, 'SAINT-ETIENNE', '42000', NULL),
	(5, 'COURIOL', 'Clément', '1998-05-08', 'H', 11, 7, 'POLIGNAC', '43000', NULL),
	(6, 'MIALON', 'Nicolas', '1998-04-17', 'H', 12, 7, 'MONISTROL SUR LOIRE', '43120', NULL),
	(7, 'BONNEVAL', 'Charlie', '1998-09-19', 'H', 10, 7, 'MONISTROL D\'ALLIER', '43250', NULL),
	(8, 'DEBARD', 'Jean Jacques', '1999-03-14', 'H', 13, 5, 'AUBENAS', '07200', NULL),
	(9, 'COSTE', 'Stéphanie', '1999-05-25', 'F', 18, 5, 'MARSEILLE', '13000', NULL),
	(10, 'TOTO', 'Marcel', '1999-07-30', 'H', 10, 3, ' le monistrol du larzac', '12460', NULL),
	(11, 'CAMPANA', 'Florian', '1999-07-30', 'H', 9, 7, 'BLAVOZY', '43700', NULL),
	(12, 'MIALON', 'Charles', '1996-03-12', 'H', 22, 7, NULL, '', NULL),
	(13, 'test', 'test', '2000-11-18', '', 0, 7, NULL, '', NULL);
/*!40000 ALTER TABLE `eleve` ENABLE KEYS */;

-- Listage des données de la table eleve.enseignement : ~9 rows (environ)
/*!40000 ALTER TABLE `enseignement` DISABLE KEYS */;
INSERT INTO `enseignement` (`numProf`, `codeClasse`, `nbHeures`) VALUES
	(1, 1, 4),
	(1, 2, 8),
	(1, 7, 7),
	(2, 5, 2.5),
	(2, 7, 2.5),
	(3, 4, 3),
	(3, 5, 3),
	(7, 7, 7),
	(8, 14, 6);
/*!40000 ALTER TABLE `enseignement` ENABLE KEYS */;

-- Listage des données de la table eleve.matiere : ~6 rows (environ)
/*!40000 ALTER TABLE `matiere` DISABLE KEYS */;
INSERT INTO `matiere` (`id`, `libmatiere`) VALUES
	(1, 'SIG'),
	(2, 'CG'),
	(3, 'Anglais'),
	(14, 'Eco droit'),
	(15, 'Maths'),
	(17, 'philo');
/*!40000 ALTER TABLE `matiere` ENABLE KEYS */;

-- Listage des données de la table eleve.niveau : 4 rows
/*!40000 ALTER TABLE `niveau` DISABLE KEYS */;
INSERT INTO `niveau` (`id`, `libniveau`) VALUES
	(1, 'Seconde'),
	(2, 'Première'),
	(3, 'Terminale'),
	(4, 'BTS');
/*!40000 ALTER TABLE `niveau` ENABLE KEYS */;

-- Listage des données de la table eleve.professeur : ~5 rows (environ)
/*!40000 ALTER TABLE `professeur` DISABLE KEYS */;
INSERT INTO `professeur` (`id`, `nom`, `prenom`, `idmatiere`) VALUES
	(1, 'DEMARS', 'Francis', 1),
	(2, 'BERNARD', 'Marie Odile', 3),
	(3, 'MOULIN', 'Philippe', 3),
	(7, 'TEYSSIER', 'olivier', 2),
	(8, 'MOULIN', 'Philippe', 14);
/*!40000 ALTER TABLE `professeur` ENABLE KEYS */;

-- Listage des données de la table eleve.user : ~1 rows (environ)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `login`, `prenom`, `passwd`, `droit`) VALUES
	(1, 'Mialon', 'Nicolas', 'toto', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
