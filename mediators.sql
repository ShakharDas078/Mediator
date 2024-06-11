-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 05:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediators`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `acId` int(11) NOT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `payId` int(11) DEFAULT NULL,
  `wallet` varchar(20) DEFAULT NULL,
  `vId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`acId`, `bank`, `cId`, `payId`, `wallet`, `vId`) VALUES
(1346574854, NULL, 240435, NULL, 'bkash', NULL),
(1363748258, NULL, NULL, NULL, 'bkash', 24047729),
(1363748598, NULL, NULL, NULL, 'nagad', 24042314),
(2147483647, 'DBBL', 240427, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cId` int(11) NOT NULL,
  `cName` varchar(255) NOT NULL,
  `cEmail` varchar(255) NOT NULL,
  `cPhone` varchar(15) NOT NULL,
  `cPassword` varchar(255) NOT NULL,
  `cAddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cId`, `cName`, `cEmail`, `cPhone`, `cPassword`, `cAddress`) VALUES
(240427, 'Minhaz', 'minhaz@gmail.com', '01346574859', '12ww', 'dhaka'),
(240435, 'Sakil', 'sakil.cse@edu.bd', '01346574854', 'ssds', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `payfund`
--

CREATE TABLE `payfund` (
  `payId` int(11) NOT NULL,
  `payDate` date DEFAULT NULL,
  `vId` int(11) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `payType` varchar(50) DEFAULT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payfund`
--

INSERT INTO `payfund` (`payId`, `payDate`, `vId`, `cId`, `pId`, `payType`, `amount`) VALUES
(1, '2023-03-15', 24042314, 240427, 5, 'bank', 1860.09),
(2, '2023-06-09', 24042314, 240435, 5, 'bkash', 1860.09),
(3, '2024-03-18', 24042314, 240435, 2, 'bkash', 1860.09),
(4, '2024-01-15', 24042266, 240427, 3, 'bank', 1422.17),
(5, '2024-03-09', 24042266, 240435, 4, 'bkash', 874.76);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pId` int(11) NOT NULL,
  `pName` varchar(255) DEFAULT NULL,
  `vId` int(11) DEFAULT NULL,
  `pPrice` decimal(10,2) DEFAULT NULL,
  `pDescription` text DEFAULT NULL,
  `pType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pId`, `pName`, `vId`, `pPrice`, `pDescription`, `pType`) VALUES
(1, 'joyread', 24042266, 2188.54, 'ebook-reader', 'digital '),
(2, 'spotify', 24042314, 1860.09, 'music-app', 'digital '),
(3, 'canva', 24042266, 1422.17, 'photo-editor', 'digital '),
(4, 'capcut', 24042266, 874.76, 'photo-editor', 'digital '),
(5, 'xbox', 24042314, 1860.09, 'gaming-app', 'digital ');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vId` int(11) NOT NULL,
  `vName` varchar(100) DEFAULT NULL,
  `vEmail` varchar(100) DEFAULT NULL,
  `vPhone` varchar(20) DEFAULT NULL,
  `vPassword` varchar(100) DEFAULT NULL,
  `vPageUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vId`),
  ADD UNIQUE KEY `vEmail` (`vEmail`,`vPhone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
