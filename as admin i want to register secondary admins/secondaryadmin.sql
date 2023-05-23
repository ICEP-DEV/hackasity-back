-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 01:46 PM
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
-- Database: `secadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `secondaryadmin`
--

CREATE TABLE `secondaryadmin` (
  `secAdmin_id` int(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `secondaryadmin`
--

INSERT INTO `secondaryadmin` (`secAdmin_id`, `name`, `surname`, `email`, `password`) VALUES
(4, 'andries', 'mathenjwafam', '216840046@tut4life.ac.za', '$2b$08$GxFtmfP8UsHyKYxzOgqEpOGyC/22RPQ0KsBD96tFqQbyjRzqMHFke');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `secondaryadmin`
--
ALTER TABLE `secondaryadmin`
  ADD PRIMARY KEY (`secAdmin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `secondaryadmin`
--
ALTER TABLE `secondaryadmin`
  MODIFY `secAdmin_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
