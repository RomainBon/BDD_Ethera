-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 16 Janvier 2018 à 13:36
-- Version du serveur :  10.2.9-MariaDB-10.2.9+maria~zesty
-- Version de PHP :  7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Ethera`
--

-- --------------------------------------------------------

--
-- Structure de la table `Groupe_Joueur`
--

CREATE TABLE `Groupe_Joueur` (
  `ID` int(11) NOT NULL,
  `personnage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Groupe_Joueur`
--

INSERT INTO `Groupe_Joueur` (`ID`, `personnage`) VALUES
(1, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Iventaire_Joueur`
--

CREATE TABLE `Iventaire_Joueur` (
  `ID` int(11) NOT NULL,
  `Nom` int(11) NOT NULL,
  `Quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Iventaire_Joueur`
--

INSERT INTO `Iventaire_Joueur` (`ID`, `Nom`, `Quantite`) VALUES
(1, 1, 25),
(2, 2, 20),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Joueur`
--

CREATE TABLE `Joueur` (
  `ID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Inventaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Joueur`
--

INSERT INTO `Joueur` (`ID`, `email`, `login`, `password`, `Inventaire`) VALUES
(1, 'john@doe.com', 'DoeJhon', 'Dldg$*ddù', 45),
(2, 'DMH@gmail.com', 'DMH', 'motdepasse', 14);

-- --------------------------------------------------------

--
-- Structure de la table `Objet`
--

CREATE TABLE `Objet` (
  `ID` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Valeur` int(11) NOT NULL,
  `descirptif` varchar(50) NOT NULL,
  `encombrement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Objet`
--

INSERT INTO `Objet` (`ID`, `Type`, `Nom`, `Valeur`, `descirptif`, `encombrement`) VALUES
(1, 1, 'Lambas', 4, 'pain elfique', 1),
(2, 1, 'biere naine', 20, 'viens des contree d Erebor ', 1),
(3, 2, 'Baton gris de Saroumane', 4500, 'jolie', 2),
(4, 2, 'Anduril', 5000, 'épée d\'Aragorne', 2),
(5, 2, 'Baton des foudres éternelle', 4000, 'très éfficase', 2);

-- --------------------------------------------------------

--
-- Structure de la table `Personnage`
--

CREATE TABLE `Personnage` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `HP` int(11) NOT NULL,
  `MP` int(11) NOT NULL,
  `Sac` int(11) NOT NULL,
  `Faim` int(11) NOT NULL,
  `Lvl` int(11) NOT NULL,
  `Obj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Personnage`
--

INSERT INTO `Personnage` (`ID`, `Nom`, `HP`, `MP`, `Sac`, `Faim`, `Lvl`, `Obj`) VALUES
(1, 'Aragorn', 150, 100, 8, 100, 25, 4),
(2, 'Gandalf', 100, 150, 6, 75, 50, 5),
(3, 'JOUEUR', 100, 100, 8, 100, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Restrition`
--

CREATE TABLE `Restrition` (
  `ID` int(11) NOT NULL,
  `Sort` int(11) NOT NULL,
  `Type_terrain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Sac`
--

CREATE TABLE `Sac` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Capacite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Sac`
--

INSERT INTO `Sac` (`ID`, `Nom`, `Capacite`) VALUES
(5, 'Besace', 40),
(6, 'Sac de voyageur', 60),
(7, 'Sac de roublard', 80),
(8, 'Sac d\'Aventurier', 100);

-- --------------------------------------------------------

--
-- Structure de la table `Sorts`
--

CREATE TABLE `Sorts` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Degats` int(11) NOT NULL,
  `cout` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `Artefact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Sorts`
--

INSERT INTO `Sorts` (`ID`, `Nom`, `Degats`, `cout`, `lvl`, `Artefact`) VALUES
(1, 'Foudre éternelle', 1000, 50, 25, 5),
(2, 'réplusion', 20, 2, 5, 3),
(3, 'Invocation de Balrog', 0, 100, 50, NULL),
(4, 'Boule de Feu', 50, 5, 10, NULL),
(5, 'Blizzard', 60, 20, 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Terrain`
--

CREATE TABLE `Terrain` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Terrain`
--

INSERT INTO `Terrain` (`ID`, `Nom`, `Type`) VALUES
(1, 'Bree', 5),
(2, 'Minas Tirith', 5),
(3, 'Le Mordor', 3),
(4, 'Le passage de la moria', 1),
(5, 'Grouffre de Helm', 1),
(6, 'Le continent engloutie de Numenor', 2),
(7, 'La mer de Belegaer', 2),
(8, 'Isengar', 3);

-- --------------------------------------------------------

--
-- Structure de la table `TypeObj`
--

CREATE TABLE `TypeObj` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `TypeObj`
--

INSERT INTO `TypeObj` (`ID`, `Nom`) VALUES
(1, 'Nouriture'),
(2, 'Artefact');

-- --------------------------------------------------------

--
-- Structure de la table `Type_Terrain`
--

CREATE TABLE `Type_Terrain` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Type_Terrain`
--

INSERT INTO `Type_Terrain` (`ID`, `Nom`) VALUES
(1, 'Montagne'),
(2, 'eau'),
(3, 'lave'),
(4, 'neige'),
(5, 'ville');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Groupe_Joueur`
--
ALTER TABLE `Groupe_Joueur`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `personnage` (`personnage`);

--
-- Index pour la table `Iventaire_Joueur`
--
ALTER TABLE `Iventaire_Joueur`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`);

--
-- Index pour la table `Joueur`
--
ALTER TABLE `Joueur`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Inventaire` (`Inventaire`);

--
-- Index pour la table `Objet`
--
ALTER TABLE `Objet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Type` (`Type`);

--
-- Index pour la table `Personnage`
--
ALTER TABLE `Personnage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Obj` (`Obj`),
  ADD KEY `Sac` (`Sac`);

--
-- Index pour la table `Restrition`
--
ALTER TABLE `Restrition`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `Type_terrain` (`Type_terrain`);

--
-- Index pour la table `Sac`
--
ALTER TABLE `Sac`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Sorts`
--
ALTER TABLE `Sorts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Artefact` (`Artefact`);

--
-- Index pour la table `Terrain`
--
ALTER TABLE `Terrain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Type` (`Type`);

--
-- Index pour la table `TypeObj`
--
ALTER TABLE `TypeObj`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Type_Terrain`
--
ALTER TABLE `Type_Terrain`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Groupe_Joueur`
--
ALTER TABLE `Groupe_Joueur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Iventaire_Joueur`
--
ALTER TABLE `Iventaire_Joueur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Joueur`
--
ALTER TABLE `Joueur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `Objet`
--
ALTER TABLE `Objet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Personnage`
--
ALTER TABLE `Personnage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Restrition`
--
ALTER TABLE `Restrition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Sac`
--
ALTER TABLE `Sac`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Sorts`
--
ALTER TABLE `Sorts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Terrain`
--
ALTER TABLE `Terrain`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `TypeObj`
--
ALTER TABLE `TypeObj`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `Type_Terrain`
--
ALTER TABLE `Type_Terrain`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Groupe_Joueur`
--
ALTER TABLE `Groupe_Joueur`
  ADD CONSTRAINT `Groupe_Joueur_ibfk_1` FOREIGN KEY (`personnage`) REFERENCES `Personnage` (`ID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Iventaire_Joueur`
--
ALTER TABLE `Iventaire_Joueur`
  ADD CONSTRAINT `Iventaire_Joueur_ibfk_1` FOREIGN KEY (`Nom`) REFERENCES `Objet` (`ID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Objet`
--
ALTER TABLE `Objet`
  ADD CONSTRAINT `Objet_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `TypeObj` (`ID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Personnage`
--
ALTER TABLE `Personnage`
  ADD CONSTRAINT `Personnage_ibfk_1` FOREIGN KEY (`Obj`) REFERENCES `Iventaire_Joueur` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `Personnage_ibfk_2` FOREIGN KEY (`Sac`) REFERENCES `Sac` (`ID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Restrition`
--
ALTER TABLE `Restrition`
  ADD CONSTRAINT `Restrition_ibfk_1` FOREIGN KEY (`Type_terrain`) REFERENCES `Type_Terrain` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `Restrition_ibfk_2` FOREIGN KEY (`Sort`) REFERENCES `Sorts` (`ID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Sorts`
--
ALTER TABLE `Sorts`
  ADD CONSTRAINT `Sorts_ibfk_1` FOREIGN KEY (`Artefact`) REFERENCES `Objet` (`ID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Terrain`
--
ALTER TABLE `Terrain`
  ADD CONSTRAINT `Terrain_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `Type_Terrain` (`ID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
