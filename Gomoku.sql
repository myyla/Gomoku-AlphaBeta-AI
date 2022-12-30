-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 10 jan. 2021 à 23:22
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `othello`
--
CREATE DATABASE IF NOT EXISTS `othello` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `othello`;

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

CREATE TABLE `position` (
  `idPosition` int(11) NOT NULL,
  `board` varchar(255) NOT NULL,
  `etatPosition` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `position`
--

INSERT INTO `position` (`idPosition`, `board`, `etatPosition`, `idUser`) VALUES
(1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 -1 -1 1 0 0 0 1 1 -1 -1 1 0 0 0 0 1 -1 1 1 0 0 0 0 -1 -1 0 0 0 0 0 0 -1 0 0 0 0 0 ', 0, 1),
(2, '0 0 -1 -1 1 -1 0 0 0 0 -1 1 1 -1 0 0 0 -1 1 1 1 1 0 0 -1 0 1 -1 1 0 0 0 0 -1 1 1 1 1 0 0 -1 0 0 -1 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 1),
(3, '0 0 -1 0 0 0 0 0 0 0 0 -1 0 1 0 0 0 0 -1 1 1 1 -1 0 0 -1 0 1 1 1 1 0 -1 -1 -1 -1 -1 1 -1 0 0 0 0 -1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 2),
(4, '0 0 -1 -1 0 -1 0 0 -1 1 1 1 1 1 0 0 -1 -1 1 1 1 1 1 1 1 1 -1 1 1 -1 0 0 1 -1 -1 -1 -1 1 0 0 -1 1 1 -1 1 1 0 0 0 -1 0 -1 -1 0 0 0 -1 0 0 -1 0 0 0 0 ', 0, 3),
(9, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 1 1 -1 -1 -1 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 1),
(10, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 1 1 -1 -1 -1 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 3),
(11, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 1 -1 1 1 0 0 0 0 1 -1 -1 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 3),
(12, '0 0 -1 -1 1 -1 0 0 0 0 1 1 1 0 0 0 0 0 1 -1 1 0 0 -1 0 1 -1 1 1 0 0 0 -1 1 -1 1 1 1 0 0 -1 -1 1 1 1 -1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 2),
(13, '0 0 -1 -1 -1 -1 0 0 0 1 1 1 1 -1 0 0 0 -1 -1 -1 -1 -1 -1 0 0 -1 1 1 -1 -1 0 0 -1 0 1 -1 -1 -1 -1 0 0 0 1 -1 -1 -1 0 0 0 0 1 -1 -1 1 0 0 0 1 1 1 1 1 1 0 ', 0, 4),
(14, '-1 0 -1 -1 -1 -1 0 0 0 -1 1 1 1 1 1 0 1 1 -1 1 1 1 1 0 0 1 1 -1 -1 1 1 0 -1 0 1 -1 -1 -1 -1 0 0 0 1 -1 1 -1 -1 0 0 0 1 1 -1 -1 -1 0 0 1 1 1 1 1 1 0 ', 0, 4),
(15, '0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 -1 1 -1 -1 1 1 1 0 0 -1 -1 -1 -1 1 1 0 -1 -1 -1 -1 -1 -1 1 0 0 -1 -1 -1 -1 1 1 0 0 0 -1 -1 1 1 1 0 0 0 -1 -1 -1 -1 0 0 ', 0, 6),
(16, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 -1 -1 0 0 0 0 0 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 4),
(17, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 -1 -1 0 0 0 0 0 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nomUser` varchar(255) DEFAULT NULL,
  `emailUser` varchar(255) NOT NULL,
  `passwordUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `nomUser`, `emailUser`, `passwordUser`) VALUES
(1, 'CHERKAOUI Rabab', 'rabab@gmail.com', 'Xuq6t7Fr/Dg='),
(2, 'ZEROUALI Hajar', 'hajar@gmail.com', 'Xuq6t7Fr/Dg='),
(3, 'GHARBI Hafsa', 'hafsa@gmail.com', 'Xuq6t7Fr/Dg='),
(4, 'Hood', 'hood@gmail.com', 'Xuq6t7Fr/Dg='),
(5, 'Razan', 'razan@gmail.com', 'Xuq6t7Fr/Dg='),
(6, 'Balkees', 'balkees@gmail.com', 'Xuq6t7Fr/Dg=');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`idPosition`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `emailUnique` (`emailUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `position`
--
ALTER TABLE `position`
  MODIFY `idPosition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
