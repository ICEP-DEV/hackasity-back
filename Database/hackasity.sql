-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 10:09 AM
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
-- Database: `hackasity`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(20) NOT NULL,
  `hacker_id` int(255) NOT NULL,
  `group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `hacker_id`, `group_name`) VALUES
(1, 1, 'Apples');

-- --------------------------------------------------------

--
-- Table structure for table `hackers`
--

CREATE TABLE `hackers` (
  `id` int(20) NOT NULL,
  `student_no` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hackers`
--

INSERT INTO `hackers` (`id`, `student_no`, `last_name`, `first_name`) VALUES
(1, '217000001', 'Mpofu', 'Banele');

-- --------------------------------------------------------

--
-- Table structure for table `presentation_files`
--

CREATE TABLE `presentation_files` (
  `id` int(20) NOT NULL,
  `group_id` int(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presentation_files`
--

INSERT INTO `presentation_files` (`id`, `group_id`, `file`) VALUES
(1, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`hacker_id`);

--
-- Indexes for table `hackers`
--
ALTER TABLE `hackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presentation_files`
--
ALTER TABLE `presentation_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_group` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hackers`
--
ALTER TABLE `hackers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `presentation_files`
--
ALTER TABLE `presentation_files`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `test` FOREIGN KEY (`hacker_id`) REFERENCES `hackers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presentation_files`
--
ALTER TABLE `presentation_files`
  ADD CONSTRAINT `test_group` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
