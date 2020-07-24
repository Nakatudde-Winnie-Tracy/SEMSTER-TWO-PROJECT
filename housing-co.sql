-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 03:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `housing-co`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardrent`
-- (See below for the actual view)
--
CREATE TABLE `cardrent` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardsale`
-- (See below for the actual view)
--
CREATE TABLE `cardsale` (
);

-- --------------------------------------------------------

--
-- Structure for view `cardrent`
--
DROP TABLE IF EXISTS `cardrent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardrent`  AS  select `flat`.`flat_id` AS `flat_id`,`flat`.`location` AS `location`,`flat`.`city` AS `city`,`rent`.`rent_amount` AS `rent_amount`,`flat`.`image` AS `image`,`flat`.`time` AS `time` from (`flat` join `rent` on((`flat`.`flat_id` = `rent`.`flat_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `cardsale`
--
DROP TABLE IF EXISTS `cardsale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardsale`  AS  select `flat`.`flat_id` AS `flat_id`,`flat`.`location` AS `location`,`flat`.`city` AS `city`,`sale`.`totalcost` AS `totalcost`,`flat`.`image` AS `image`,`flat`.`time` AS `time` from (`flat` join `sale` on((`flat`.`flat_id` = `sale`.`flat_id`))) ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
