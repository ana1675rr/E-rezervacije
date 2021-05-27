-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 04:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-rezervacije`
--

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE `osoba` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Ime` varchar(25) NOT NULL,
  `Prezime` varchar(25) NOT NULL,
  `JMBG` int(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Telefon` int(20) NOT NULL,
  `Tip_korisnika` varchar(25) NOT NULL,
  `Korisnicko_ime` varchar(25) NOT NULL,
  `Lozinka` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`ID`, `Ime`, `Prezime`, `JMBG`, `Email`, `Telefon`, `Tip_korisnika`, `Korisnicko_ime`, `Lozinka`) VALUES
(14, 'Ana', 'Grbešić', 1234567891, 'ana.grbesic@fsre.sum.ba', 63000000, 'admin', 'Ana', '123456789'),
(15, 'Ivana', 'Iličić', 789456123, 'ivana.ilicic@fsre.sum.ba', 63111111, 'admin', 'Ivana', '987654321');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Polaziste` varchar(30) NOT NULL,
  `Odrediste` varchar(30) NOT NULL,
  `Datum` varchar(40) NOT NULL,
  `ID_Osobe` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`ID`, `Polaziste`, `Odrediste`, `Datum`, `ID_Osobe`) VALUES
(4, 'Široki Brijeg', 'Zagreb', '1. srpnja 2021.', NULL),
(5, 'Grude', 'Split', '2. srpnja 2021.', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Osobe` (`ID_Osobe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `osoba`
--
ALTER TABLE `osoba`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
