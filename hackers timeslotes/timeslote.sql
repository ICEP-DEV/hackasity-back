-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 03:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackers`
--

-- --------------------------------------------------------

--
-- Table structure for table `timeslote`
--

CREATE TABLE `timeslote` (
  `slotid` int(11) NOT NULL,
  `hackerid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `startime` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timeslote`
--

INSERT INTO `timeslote` (`slotid`, `hackerid`, `adminid`, `startime`, `length`, `endtime`, `date`) VALUES
(1, 7, 3, '12h:00', '3hrs', '15h00', '2023-04-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `timeslote`
--
ALTER TABLE `timeslote`
  ADD PRIMARY KEY (`slotid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `timeslote`
--
ALTER TABLE `timeslote`
  MODIFY `slotid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
