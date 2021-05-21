-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 12:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `email`, `balance`) VALUES
(1, 'Sakshi', 'sakshipuranik@gmail.com', 1689),
(2, 'Shubham', 'shubham@gmail.com', 9950),
(3, 'Ronak', 'ronakpatel@gmail.com', 19873),
(4, 'Jai', 'jaipawar@gmail.com', 2600),
(5, 'Prathmesh', 'prathmesh@gmail.com', 2100),
(6, 'Suzan', 'suzankhan@gmail.com', 2511),
(7, 'Chandan', 'chanadankashyap@gmail.com', 2200),
(8, 'Krushali', 'krushalipatel@gmail.com', 2198),
(9, 'Udit', 'udit@gmail.com', 1900),
(10, 'Aradhna', 'aradhnasingh@gmail.com', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `his_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`his_id`, `sender`, `reciever`, `amount`) VALUES
(11, 'Ronak', 'Sakshi', 100),
(12, 'Sakshi', 'Jai', 100),
(13, 'Shubham', 'Ronak', 50),
(14, 'Sakshi', 'Suzan', 311),
(15, 'Prathmesh', 'Ronak', 21),
(16, 'Ronak', 'Krushali', 98);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`his_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
