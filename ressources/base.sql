-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 03 Novembre 2016 à 08:23
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_m1`
--

-- --------------------------------------------------------

--
-- Structure de la table `autorisations`
--

CREATE TABLE `autorisations` (
  `id` int(11) NOT NULL,
  `label` text,
  `peutModifier` int(11) DEFAULT NULL,
  `peutAcceder` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `coefficients`
--

CREATE TABLE `coefficients` (
  `idTypeEnseignement` int(11) NOT NULL,
  `idStatut` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `decharges`
--

CREATE TABLE `decharges` (
  `id` int(11) NOT NULL,
  `enseignant` text,
  `raison` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

CREATE TABLE `interventions` (
  `idUE` int(11) NOT NULL,
  `idEnseignant` int(11) NOT NULL,
  `nbHeures` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `login` text,
  `password` text,
  `nom` text,
  `prenom` text,
  `mail` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personneladministratif`
--

CREATE TABLE `personneladministratif` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnelenseignant`
--

CREATE TABLE `personnelenseignant` (
  `id` int(11) NOT NULL,
  `statut` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `statuts`
--

CREATE TABLE `statuts` (
  `id` int(11) NOT NULL,
  `label` text,
  `nbHeures` int(11) DEFAULT NULL,
  `autorisation` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `typesenseignements`
--

CREATE TABLE `typesenseignements` (
  `id` int(11) NOT NULL,
  `label` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ue`
--

CREATE TABLE `ue` (
  `id` int(11) NOT NULL,
  `label` text,
  `responsable` int(11) DEFAULT NULL,
  `nb_heures` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `autorisations`
--
ALTER TABLE `autorisations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coefficients`
--
ALTER TABLE `coefficients`
  ADD PRIMARY KEY (`idTypeEnseignement`,`idStatut`),
  ADD KEY `idStatut` (`idStatut`);

--
-- Index pour la table `decharges`
--
ALTER TABLE `decharges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`idUE`,`idEnseignant`),
  ADD KEY `idEnseignant` (`idEnseignant`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personneladministratif`
--
ALTER TABLE `personneladministratif`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnelenseignant`
--
ALTER TABLE `personnelenseignant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statut` (`statut`);

--
-- Index pour la table `statuts`
--
ALTER TABLE `statuts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autorisation` (`autorisation`);

--
-- Index pour la table `typesenseignements`
--
ALTER TABLE `typesenseignements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ue`
--
ALTER TABLE `ue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsable` (`responsable`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
