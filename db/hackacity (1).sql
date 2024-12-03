-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 08:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackacity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `name`, `surname`) VALUES
(1, 'admi@gmail.com', '123zxc', 'Admin', 'Info');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(200) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `start_date`, `end_date`) VALUES
(2, 'TVH123', '2024-10-16 01:30:00', '2024-10-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE `judge` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `occupation` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`id`, `email`, `password`, `name`, `surname`, `event_id`, `occupation`, `contact`) VALUES
(1, 'maake@gmail.com', NULL, 'Dipono', 'Maake', NULL, 'DBA', '0123456789'),
(2, 'manaka@gmail.com', NULL, 'Fain', 'Fain', NULL, 'cs', '123'),
(3, 'cs@gmail.com', NULL, 'Fain', 'Fain', NULL, 'cs', '0123456789'),
(4, 'manasoe@gmail.com', NULL, 'Dipono', 'Manasoe', 2, 'Developer', '0147852369'),
(5, 'mathonsi@gmail.com', NULL, 'Faith', 'Mathonsi', 2, 'Dev', '0123456789'),
(6, 'mathonsi@gmail.com', NULL, 'Dimakatso', 'Mathonsi', 2, 'BA', '0123456789'),
(7, 'mathonsi@gmail.com', NULL, 'Dimakatso', 'Mathonsi', 2, 'BA', '0123456789'),
(8, 'matala@gmail.com', NULL, 'Lebo', 'Matlala', 2, 'Dev', '0123456789'),
(9, 'matala@gmail.com', NULL, 'Lebo', 'Matlala', 2, 'Dev', '0123456789'),
(10, 'matala@gmail.com', NULL, 'Lebo', 'Matlala', 2, 'Dev', '0123456789'),
(11, 'cs@gmail.com', NULL, 'ds', 'ds', 2, 'cs', '0123456789'),
(12, 'mathonsi@gmail.com', NULL, 'Dimakatso', 'mathonsi', 2, 'Dev', '0123456789'),
(13, 'dimza@gmail.com', NULL, 'Dimza', 'Dimza', 2, 'BA', '0123456789'),
(14, 'cs', NULL, 'ds', 'ds', 2, 'cs', '0123456789'),
(15, 'Makena@gmail.com', NULL, 'Faith', 'Makena', 2, 'DEV', '147852369'),
(16, 'Makena@gmail.com', NULL, 'Faith', 'Makena', 2, 'DEV', '147852369'),
(17, 'kekana@gmail.com', NULL, 'Gift', 'Kekana', 2, 'Cashier', '0123456789'),
(18, 'malebane@gmail.com', NULL, 'jesta', 'malebane', 2, 'dev', '0123456789'),
(19, 'kgan@gmail.com', NULL, 'Lebo', 'kgan', 2, 'Cash', '1234567890'),
(20, 'manasoe@gmail.com', NULL, 'Gift', 'Mansoe', 2, 'DBA', '0147852369'),
(21, 'manasoedj@gmail.com', 'Hackasity@2024', 'Dipono', 'Manasoe', 2, 'Teach Lead', '0123456789'),
(22, 'keke@gmail.com', 'Hackasity@2024', 'Keke', 'keke', 2, 'Engineer', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `pitch_time`
--

CREATE TABLE `pitch_time` (
  `id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `pitch` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pitch_time`
--

INSERT INTO `pitch_time` (`id`, `date_time`, `pitch`) VALUES
(11, '2024-10-02 17:57:17', 'Mid-Day'),
(12, '2024-10-09 17:57:12', 'Mid-Day'),
(13, '2024-10-17 00:00:00', 'Mid-Day'),
(14, '2024-10-17 00:00:00', 'Mid-Day'),
(15, '2024-10-17 00:00:00', 'Mid-Day'),
(16, '2024-10-17 00:00:00', 'Mid-Day'),
(17, '2024-10-17 00:00:00', 'Mid-Night'),
(18, '2024-10-17 12:00:00', 'Mid-Day');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `novelty` int(11) DEFAULT NULL,
  `usefulness` int(11) DEFAULT NULL,
  `feasibility` int(11) DEFAULT NULL,
  `technical_proficiency` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `pitch_time` int(11) DEFAULT NULL,
  `team` int(11) DEFAULT NULL,
  `judge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `novelty`, `usefulness`, `feasibility`, `technical_proficiency`, `impact`, `safety`, `score`, `feedback`, `pitch_time`, `team`, `judge`) VALUES
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 12),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 2, 12),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 13),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 2, 13),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 14),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 2, 14),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 15),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 2, 15),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 16),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 2, 16),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 17),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 2, 17),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, 18),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 2, 18),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 19),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 2, 19),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 20),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 2, 20),
(39, 2, 4, 5, 2, 8, 4, 24, '0', 17, 1, 21),
(40, 3, 10, 12, 15, 3, 7, 50, 'Let\'s assume you have a table called users with the following columns: id, username, email, and age. Here\'s how you can select rows where none of the columns are NULL:', 17, 2, 21),
(41, 12, 25, 10, 10, 20, 50, 50, NULL, 18, 1, 22),
(42, 65, 85, 45, 56, 30, 40, 70, NULL, 18, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `team_name` varchar(200) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `team_member` varchar(500) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `team_name`, `event_id`, `team_member`, `date_created`) VALUES
(1, 'Team A1', 2, 'lebo, jacob, scott', '2024-10-16'),
(2, 'Team A2', 2, 'Buti, James', '2024-10-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `pitch_time`
--
ALTER TABLE `pitch_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pitch_time` (`pitch_time`),
  ADD KEY `team` (`team`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `judge`
--
ALTER TABLE `judge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pitch_time`
--
ALTER TABLE `pitch_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `judge`
--
ALTER TABLE `judge`
  ADD CONSTRAINT `judge_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`pitch_time`) REFERENCES `pitch_time` (`id`),
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`team`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `score_ibfk_3` FOREIGN KEY (`team`) REFERENCES `judge` (`id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
