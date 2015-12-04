-- phpMyAdmin SQL Dump
-- version 4.5.2deb1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 04 Décembre 2015 à 11:56
-- Version du serveur :  5.6.27-2
-- Version de PHP :  5.6.15-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `exercice`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `eleve`
--

INSERT INTO `eleve` (`id`, `nom`, `prenom`, `age`, `commentaire`) VALUES
(1, 'Giacco', 'Raphael', '23', 'rien a signaler'),
(2, 'Jessy', 'Hurbain', '24', 'pro'),
(3, 'Vergne', 'victor', '25', 'pimpon'),
(4, 'Martins', 'Julie', '24', 'c"est qui elle ?'),
(5, 'Grou', 'batiste', '24', 'haou haou haou'),
(6, 'Fontaine', 'François', '25', 'qui est gros ?'),
(7, 'Bultez', 'jordan', '23', 'kaporal');

-- --------------------------------------------------------

--
-- Structure de la table `what`
--

CREATE TABLE `what` (
  `eleve` int(11) NOT NULL,
  `matiere` varchar(100) DEFAULT NULL,
  `acquis` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `what`
--

INSERT INTO `what` (`eleve`, `matiere`, `acquis`) VALUES
(1, 'HTML', 1),
(1, 'CSS', 1),
(1, 'JS', 0),
(2, 'HTML', 1),
(2, 'CSS', 1),
(2, 'JS', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
