-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2018 at 01:38 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ethera`
--

-- --------------------------------------------------------

--
-- Table structure for table `Apprendre`
--

CREATE TABLE `Apprendre` (
  `idJoueur` int(11) NOT NULL,
  `idSort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Apprendre`
--

INSERT INTO `Apprendre` (`idJoueur`, `idSort`) VALUES
(1, 2),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `JOUEUR`
--

CREATE TABLE `JOUEUR` (
  `idJoueur` int(11) NOT NULL,
  `nomJ` varchar(50) NOT NULL,
  `prenomJ` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `JOUEUR`
--

INSERT INTO `JOUEUR` (`idJoueur`, `nomJ`, `prenomJ`) VALUES
(1, 'DUPONT', 'Laurent'),
(2, 'LE QUAY', 'Lilianne');

-- --------------------------------------------------------

--
-- Table structure for table `OBJETS`
--

CREATE TABLE `OBJETS` (
  `idObjet` int(11) NOT NULL,
  `nomObjet` varchar(100) NOT NULL,
  `idTypeObj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OBJETS`
--

INSERT INTO `OBJETS` (`idObjet`, `nomObjet`, `idTypeObj`) VALUES
(1, 'plume', 1),
(2, 'pain', 2),
(3, 'Pomme', 2);

-- --------------------------------------------------------

--
-- Table structure for table `PERSONNAGES`
--

CREATE TABLE `PERSONNAGES` (
  `idPerso` int(11) NOT NULL,
  `nomP` varchar(50) NOT NULL,
  `prenomP` varchar(50) NOT NULL,
  `vie` int(11) NOT NULL,
  `magie` int(11) NOT NULL,
  `idJoueur` int(11) NOT NULL,
  `idTerrain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PERSONNAGES`
--

INSERT INTO `PERSONNAGES` (`idPerso`, `nomP`, `prenomP`, `vie`, `magie`, `idJoueur`, `idTerrain`) VALUES
(7, 'Gan', 'Kori', 60, 80, 1, 1),
(8, 'Tin', 'Lu', 80, 40, 1, 1),
(9, 'Ciere', 'So', 120, 200, 2, 1),
(10, 'Mage', 'Nuage', 100, 100, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SortBesoins`
--

CREATE TABLE `SortBesoins` (
  `idSort` int(11) NOT NULL,
  `idArtefact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SortBesoins`
--

INSERT INTO `SortBesoins` (`idSort`, `idArtefact`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SortDisponible`
--

CREATE TABLE `SortDisponible` (
  `idTypeT` int(11) NOT NULL,
  `idSort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SortDisponible`
--

INSERT INTO `SortDisponible` (`idTypeT`, `idSort`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SORTS`
--

CREATE TABLE `SORTS` (
  `idSort` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `degat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SORTS`
--

INSERT INTO `SORTS` (`idSort`, `libelle`, `degat`) VALUES
(1, 'Glace', 40),
(2, 'Feu', 30);

-- --------------------------------------------------------

--
-- Table structure for table `Stoquage`
--

CREATE TABLE `Stoquage` (
  `idPerso` int(11) NOT NULL,
  `idTypeSac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Stoquage`
--

INSERT INTO `Stoquage` (`idPerso`, `idTypeSac`) VALUES
(7, 3),
(8, 4),
(10, 5),
(9, 6),
(7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `TERRAINS`
--

CREATE TABLE `TERRAINS` (
  `idTerrains` int(11) NOT NULL,
  `libelleTerrain` varchar(100) NOT NULL,
  `typeT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TERRAINS`
--

INSERT INTO `TERRAINS` (`idTerrains`, `libelleTerrain`, `typeT`) VALUES
(1, 'Côtes d\'Atlantis', 2);

-- --------------------------------------------------------

--
-- Table structure for table `TYPES_TERRAIN`
--

CREATE TABLE `TYPES_TERRAIN` (
  `idTypeT` int(11) NOT NULL,
  `libelleTypeT` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TYPES_TERRAIN`
--

INSERT INTO `TYPES_TERRAIN` (`idTypeT`, `libelleTypeT`) VALUES
(1, 'Montagne'),
(2, 'Plage'),
(3, 'Plaines'),
(4, 'Foret');

-- --------------------------------------------------------

--
-- Table structure for table `TYPE_OBJET`
--

CREATE TABLE `TYPE_OBJET` (
  `idTypeObj` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TYPE_OBJET`
--

INSERT INTO `TYPE_OBJET` (`idTypeObj`, `libelle`) VALUES
(1, 'Atefact'),
(2, 'Nouriture');

-- --------------------------------------------------------

--
-- Table structure for table `TYPE_SACS`
--

CREATE TABLE `TYPE_SACS` (
  `idSac` int(11) NOT NULL,
  `libSac` varchar(100) NOT NULL,
  `espace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TYPE_SACS`
--

INSERT INTO `TYPE_SACS` (`idSac`, `libSac`, `espace`) VALUES
(3, 'Poches', 2),
(4, 'Besace', 10),
(5, 'Sac à dos', 15),
(6, 'Valise', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Apprendre`
--
ALTER TABLE `Apprendre`
  ADD KEY `idJoueur` (`idJoueur`),
  ADD KEY `idSort` (`idSort`);

--
-- Indexes for table `JOUEUR`
--
ALTER TABLE `JOUEUR`
  ADD PRIMARY KEY (`idJoueur`);

--
-- Indexes for table `OBJETS`
--
ALTER TABLE `OBJETS`
  ADD PRIMARY KEY (`idObjet`),
  ADD KEY `idTypeObj` (`idTypeObj`);

--
-- Indexes for table `PERSONNAGES`
--
ALTER TABLE `PERSONNAGES`
  ADD PRIMARY KEY (`idPerso`),
  ADD KEY `equipe` (`idJoueur`),
  ADD KEY `idTerrain` (`idTerrain`);

--
-- Indexes for table `SortBesoins`
--
ALTER TABLE `SortBesoins`
  ADD KEY `idSort` (`idSort`),
  ADD KEY `idArtefact` (`idArtefact`);

--
-- Indexes for table `SortDisponible`
--
ALTER TABLE `SortDisponible`
  ADD KEY `idSort` (`idSort`),
  ADD KEY `idTypeT` (`idTypeT`);

--
-- Indexes for table `SORTS`
--
ALTER TABLE `SORTS`
  ADD PRIMARY KEY (`idSort`);

--
-- Indexes for table `Stoquage`
--
ALTER TABLE `Stoquage`
  ADD KEY `idPerso` (`idPerso`),
  ADD KEY `idTypeSac_2` (`idTypeSac`);

--
-- Indexes for table `TERRAINS`
--
ALTER TABLE `TERRAINS`
  ADD PRIMARY KEY (`idTerrains`),
  ADD KEY `TypeTerain` (`typeT`);

--
-- Indexes for table `TYPES_TERRAIN`
--
ALTER TABLE `TYPES_TERRAIN`
  ADD PRIMARY KEY (`idTypeT`);

--
-- Indexes for table `TYPE_OBJET`
--
ALTER TABLE `TYPE_OBJET`
  ADD PRIMARY KEY (`idTypeObj`);

--
-- Indexes for table `TYPE_SACS`
--
ALTER TABLE `TYPE_SACS`
  ADD PRIMARY KEY (`idSac`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `JOUEUR`
--
ALTER TABLE `JOUEUR`
  MODIFY `idJoueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `OBJETS`
--
ALTER TABLE `OBJETS`
  MODIFY `idObjet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PERSONNAGES`
--
ALTER TABLE `PERSONNAGES`
  MODIFY `idPerso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `SORTS`
--
ALTER TABLE `SORTS`
  MODIFY `idSort` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `TERRAINS`
--
ALTER TABLE `TERRAINS`
  MODIFY `idTerrains` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `TYPES_TERRAIN`
--
ALTER TABLE `TYPES_TERRAIN`
  MODIFY `idTypeT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `TYPE_OBJET`
--
ALTER TABLE `TYPE_OBJET`
  MODIFY `idTypeObj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `TYPE_SACS`
--
ALTER TABLE `TYPE_SACS`
  MODIFY `idSac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Apprendre`
--
ALTER TABLE `Apprendre`
  ADD CONSTRAINT `Apprendre_ibfk_1` FOREIGN KEY (`idSort`) REFERENCES `SORTS` (`idSort`),
  ADD CONSTRAINT `Apprendre_ibfk_2` FOREIGN KEY (`idJoueur`) REFERENCES `JOUEUR` (`idJoueur`);

--
-- Constraints for table `OBJETS`
--
ALTER TABLE `OBJETS`
  ADD CONSTRAINT `OBJETS_ibfk_1` FOREIGN KEY (`idTypeObj`) REFERENCES `TYPE_OBJET` (`idTypeObj`);

--
-- Constraints for table `PERSONNAGES`
--
ALTER TABLE `PERSONNAGES`
  ADD CONSTRAINT `PERSONNAGES_ibfk_1` FOREIGN KEY (`idJoueur`) REFERENCES `JOUEUR` (`idJoueur`),
  ADD CONSTRAINT `PERSONNAGES_ibfk_3` FOREIGN KEY (`idTerrain`) REFERENCES `TERRAINS` (`idTerrains`);

--
-- Constraints for table `SortBesoins`
--
ALTER TABLE `SortBesoins`
  ADD CONSTRAINT `SortBesoins_ibfk_1` FOREIGN KEY (`idSort`) REFERENCES `SORTS` (`idSort`),
  ADD CONSTRAINT `SortBesoins_ibfk_2` FOREIGN KEY (`idArtefact`) REFERENCES `OBJETS` (`idObjet`);

--
-- Constraints for table `SortDisponible`
--
ALTER TABLE `SortDisponible`
  ADD CONSTRAINT `SortDisponible_ibfk_1` FOREIGN KEY (`idSort`) REFERENCES `SORTS` (`idSort`),
  ADD CONSTRAINT `SortDisponible_ibfk_2` FOREIGN KEY (`idTypeT`) REFERENCES `TYPES_TERRAIN` (`idTypeT`);

--
-- Constraints for table `Stoquage`
--
ALTER TABLE `Stoquage`
  ADD CONSTRAINT `Stoquage_ibfk_1` FOREIGN KEY (`idPerso`) REFERENCES `PERSONNAGES` (`idPerso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Stoquage_ibfk_2` FOREIGN KEY (`idTypeSac`) REFERENCES `TYPE_SACS` (`idSac`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `TERRAINS`
--
ALTER TABLE `TERRAINS`
  ADD CONSTRAINT `TERRAINS_ibfk_1` FOREIGN KEY (`typeT`) REFERENCES `TYPES_TERRAIN` (`idTypeT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
