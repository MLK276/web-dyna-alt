-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 07 juin 2020 à 18:35
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `flash-mobs`
--
CREATE DATABASE IF NOT EXISTS `flash-mobs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flash-mobs`;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateHeure` timestamp NOT NULL DEFAULT current_timestamp(),
  `idRassemblement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `nom`, `email`, `dateHeure`, `idRassemblement`) VALUES
(1, 'Olaf', 'olaf@gmail.com', '2020-05-10 10:38:22', 3),
(2, 'YOU Evan', 'evanyou@vuejs.net', '2020-05-10 13:52:57', NULL),
(5, 'Olive', 'olive@local.fr', '2020-05-10 14:06:13', NULL),
(7, 'Sherman Benji', 'benjamin.sherman@test.fr', '2020-05-10 14:31:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rassemblement`
--

CREATE TABLE `rassemblement` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `lieu` text NOT NULL,
  `dateHeure` timestamp NOT NULL DEFAULT current_timestamp(),
  `actif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rassemblement`
--

INSERT INTO `rassemblement` (`id`, `nom`, `lieu`, `dateHeure`, `actif`) VALUES
(1, 'Fête de la musique', 'Dans la rue', '2020-06-21 21:59:00', 1),
(2, 'Déconfinement', 'En france', '2020-05-10 22:00:00', 0),
(3, 'Birthday Surprise Flash Mob!!', 'LA', '2020-06-12 12:00:00', 1),
(4, 'Noël', 'Groenland', '2020-12-24 23:00:00', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`idRassemblement`),
  ADD KEY `idRassemblement` (`idRassemblement`);

--
-- Index pour la table `rassemblement`
--
ALTER TABLE `rassemblement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `rassemblement`
--
ALTER TABLE `rassemblement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`idRassemblement`) REFERENCES `rassemblement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
