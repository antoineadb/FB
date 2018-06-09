-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 09 juin 2018 à 14:41
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symfony34`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `prenom`) VALUES
(1, 'antoine', 'antoine', 'antoineadb@gmail.com', 'antoineadb@gmail.com', 1, NULL, '$2y$13$HLZ8dtsqLWZRTi7sQ2u3a.svsMGHL97YmaoktnbX7FfNKsGjGENiW', '2018-06-03 16:55:43', NULL, NULL, 'a:0:{}', 'toto'),
(2, 'antoineadb', 'antoineadb', 'adibartolomeo@alteca.fr', 'adibartolomeo@alteca.fr', 1, NULL, '$2y$13$j.NQ44ozjFm3XxWBH65OKeDgH95MEXJ5pD/l/MbkkfiLlcVi18Cla', '2018-04-30 10:06:44', NULL, NULL, 'a:0:{}', 'titi'),
(3, 'antoineadb1', 'antoineadb1', 'antoineadb@orange.fr', 'antoineadb@orange.fr', 1, NULL, '$2y$13$t1fV1D4awQHMugEedJ9wl.FTp3lOKFYx8TSYPv/xX3jPX853v5kw.', '2018-04-29 23:19:45', NULL, NULL, 'a:0:{}', 'tata'),
(4, 'adb', 'adb', 'adibartolomeo@alteca.fr2', 'adibartolomeo@alteca.fr2', 1, NULL, '$2y$13$sdgaZgzkMOUUvUMRpcknBOrNASnroPJUIPsVwfO69FEXKJTJXGJDi', '2018-04-30 10:02:14', NULL, NULL, 'a:0:{}', 'dudu'),
(5, 'toto', 'toto', 'antoineadb@gmail.com1', 'antoineadb@gmail.com1', 1, NULL, '$2y$13$KOEKFA7f6jQFJVDfozyZkuhbatwHxjmsRf/MwIT.k4BUCJed5N8te', '2018-05-01 14:08:10', NULL, NULL, 'a:0:{}', 'dada'),
(6, 'toto2', 'toto2', 'antoineadb@gmail.com2', 'antoineadb@gmail.com2', 1, NULL, '$2y$13$2rl04GzDuDvxcP7Ar8lJZuLKkr1BlLnXz6d0Kr6PGULyUs8itB.K.', '2018-05-01 14:11:05', NULL, NULL, 'a:0:{}', 'tiutu'),
(7, 'Duchnock', 'duchnock', 'amelie.delwasse@hotmail.fr', 'amelie.delwasse@hotmail.fr', 1, NULL, '$2y$13$7JueGDJMlv0Ihr9z7qFXn.eAH5ORhTQd/lWPzI1rU4m0YbNf9EoFa', '2018-05-11 15:06:08', NULL, NULL, 'a:0:{}', 'duboule'),
(8, 'Duchnock1', 'duchnock1', '1antoineadb@gmail.com25', '1antoineadb@gmail.com25', 1, NULL, '$2y$13$llRAoIm4zhkz/FiNbf0dfeeUNDcMA7ZfIDPAg20P7FfXQMajYZn7y', '2018-05-11 17:36:22', NULL, NULL, 'a:0:{}', 'Antoine'),
(9, 'Duchnock12', 'duchnock12', '12antoineadb@gmail.com', '12antoineadb@gmail.com', 1, NULL, '$2y$13$F9.0Qv9ppUv15HxEtA/YRu4VylgSo93jXsQJdUxOkuzjbDWsGkEym', '2018-05-12 13:34:04', NULL, NULL, 'a:0:{}', 'toto'),
(10, 'antoine01', 'antoine01', 'dudule@toto.cm', 'dudule@toto.cm', 1, NULL, '$2y$13$PnDXLtb8HqMB175.4fORHOhpbKGojhaELzLK1cv8EpAn1Kkr9EbsC', '2018-05-13 15:44:04', NULL, NULL, 'a:0:{}', 'antoine'),
(11, 'Administrateur', 'administrateur', 'chemsniet@free.fr', 'chemsniet@free.fr', 1, NULL, '$2y$13$9PF.hIJTsqCPJ.Ngfi3WvOAf4djMFOLxsNG3ilS9dDbYqKzyoRd5m', '2018-05-13 20:39:19', NULL, NULL, 'a:0:{}', 'toto'),
(12, 'Administrateur3', 'administrateur3', 'adibartolomeo@alteca2.fr', 'adibartolomeo@alteca2.fr', 1, NULL, '$2y$13$EZF3XJklTYkl664Q/1AUDu4V9TshNRoOInDYR.kfK81yy1.OuaFZm', '2018-05-13 20:43:10', NULL, NULL, 'a:0:{}', 'Antoine'),
(13, 'Albert', 'albert', 'antoinecnrs@gmail.com', 'antoinecnrs@gmail.com', 1, NULL, '$2y$13$eiE/Z1k6q83fR41sE7ufneRsaEI4RP.DdeRREvDGn85VwFNfQ93mC', '2018-06-03 16:46:31', NULL, NULL, 'a:0:{}', 'Antoine');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
