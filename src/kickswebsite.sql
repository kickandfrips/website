-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 06 oct. 2020 à 16:37
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kickswebsite`
--

-- --------------------------------------------------------

--
-- Structure de la table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Bleu'),
(2, 'Rouge'),
(3, 'Noir');

-- --------------------------------------------------------

--
-- Structure de la table `shoes`
--

CREATE TABLE `shoes` (
  `id` int(13) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `genre` enum('H','F') DEFAULT NULL,
  `marque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shoes`
--

INSERT INTO `shoes` (`id`, `img`, `name`, `genre`, `marque`) VALUES
(1, 'googleimage.fr', 'Air Max', 'H', 'Nike'),
(2, 'googleimage.fr', 'Tn', 'H', 'Nike'),
(3, 'googleimage.fr', 'M2K Tekno', 'H', 'Nike'),
(4, 'googleimage.fr', 'Yeezy', 'H', 'Abibas');

-- --------------------------------------------------------

--
-- Structure de la table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `size`
--

INSERT INTO `size` (`id`, `size`) VALUES
(1, 42),
(2, 45),
(5, 47);

-- --------------------------------------------------------

--
-- Structure de la table `size_shoes`
--

CREATE TABLE `size_shoes` (
  `id` int(11) NOT NULL,
  `idshoes` int(11) NOT NULL,
  `idsize` int(11) NOT NULL,
  `idcolor1` int(11) NOT NULL,
  `idcolor2` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `size_shoes`
--

INSERT INTO `size_shoes` (`id`, `idshoes`, `idsize`, `idcolor1`, `idcolor2`, `quantity`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('A','U') DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `size_shoes`
--
ALTER TABLE `size_shoes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_shoes` (`id`,`idshoes`,`idsize`,`idcolor1`,`idcolor2`,`quantity`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `size_shoes`
--
ALTER TABLE `size_shoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
