-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 11:53 AM
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
-- Database: `hackersity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `name`, `surname`, `email`, `Password`) VALUES
(1, 'Sibusiso', 'Radebe', 'cburadebe@gmail.com', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(45) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `size` int(45) NOT NULL,
  `format` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hacker`
--

CREATE TABLE `hacker` (
  `stu_no` int(46) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_surname` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `stu_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hacker`
--

INSERT INTO `hacker` (`stu_no`, `stu_name`, `stu_surname`, `stu_email`, `group_name`, `stu_password`) VALUES
(216840046, 'sbusiso', 'radebe', '216840046@tut.ac.za', 'thobela', '$2b$08$cvYD3YPpyh/s5ezxzpoWduxWzCWNMl2tI2VqGWngbYtc68e6UNbzW');

-- --------------------------------------------------------

--
-- Table structure for table `hackerslot`
--

CREATE TABLE `hackerslot` (
  `slot_id` int(45) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hackerslot`
--

INSERT INTO `hackerslot` (`slot_id`, `group_name`, `start_time`, `length`, `end_time`, `date`) VALUES
(1, 'SIBUSISO', '09h00', '1hour', '10h00', '02/03/2023'),
(2, 'SIBUSISO', '09h00', '1hour', '10h00', '03/06/2023');

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE `judge` (
  `Judge_id` int(45) NOT NULL,
  `Judge_name` varchar(255) NOT NULL,
  `Judge_surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`Judge_id`, `Judge_name`, `Judge_surname`, `email`, `company_name`, `password`) VALUES
(1, 'judge', 'judy', 'judy@gmail.com', 'ICEP', '$2b$08$pjEB2IxZ1LKjlkUEZ7vNp.qTQf6HrMcROt6bVpT4bAz66YvqGlGiW');

-- --------------------------------------------------------

--
-- Table structure for table `judgeslot`
--

CREATE TABLE `judgeslot` (
  `slot_id` int(45) NOT NULL,
  `Judge_id` int(45) NOT NULL,
  `Judge_name` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judgeslot`
--

INSERT INTO `judgeslot` (`slot_id`, `Judge_id`, `Judge_name`, `start_time`, `length`, `end_time`, `date`) VALUES
(1, 4, 'Sibusiso Radebe', '10h00', '3 hours', '13h00', '03/06/2023'),
(2, 4, 'karabo motloi', '10h00', '3 hours', '13h00', '03/06/2023'),
(3, 4, 'karabo motloi', '10h00', '3 hours', '13h00', '03/06/2023'),
(4, 4, 'karabo motloi', '10h00', '3 hours', '13h00', '03/06/2023'),
(5, 4, 'karabo motloi', '10h00', '3 hours', '13h00', '03/06/2023'),
(6, 4, 'karabo motloi', '10h00', '3 hours', '13h00', '03/06/2023');

-- --------------------------------------------------------

--
-- Table structure for table `presentation`
--

CREATE TABLE `presentation` (
  `presentation_id` int(45) NOT NULL,
  `stu_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `group_id` int(45) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `points` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`group_id`, `group_name`, `points`) VALUES
(2, 'SIBUSISO', 10),
(2, 'SIBUSISO', 3),
(1, 'ANDRIES', 7),
(1, 'ANDRIES', 10),
(3, 'TWALA', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `hacker`
--
ALTER TABLE `hacker`
  ADD PRIMARY KEY (`stu_no`);

--
-- Indexes for table `hackerslot`
--
ALTER TABLE `hackerslot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`Judge_id`);

--
-- Indexes for table `judgeslot`
--
ALTER TABLE `judgeslot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `presentation`
--
ALTER TABLE `presentation`
  ADD PRIMARY KEY (`presentation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hackerslot`
--
ALTER TABLE `hackerslot`
  MODIFY `slot_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `judge`
--
ALTER TABLE `judge`
  MODIFY `Judge_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `judgeslot`
--
ALTER TABLE `judgeslot`
  MODIFY `slot_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `presentation`
--
ALTER TABLE `presentation`
  MODIFY `presentation_id` int(45) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
