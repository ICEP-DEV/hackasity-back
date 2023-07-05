-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 11:17 AM
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
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `name`, `surname`, `email`, `password`) VALUES
(5, 'Sibusiso', 'Radebe', 'radebe@gmail.com', '$2b$08$Z87gNWP9KKwYAfCEoLr/xOAO1ksDiAl9CtHDtv4b44VxMglBun6bu'),
(6, 'Thobile', 'Twala', 'twala@tut4life.ac.za', '$2b$08$BZo2/oI3NXt/nm8NIm88ku1QkGxEtvYw3fFacvyCFcF//ATA3lI42'),
(7, 'Mpho', 'Dolo', 'dolo@tut4life.ac.za', '$2b$08$E0IdZsUYVJ8KlJTU0k4LLunc6SVf0kN.xAh0g24VY7CsAfgjXawKG');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(45) NOT NULL,
  `name` varchar(255) NOT NULL,
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
  `email` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Admin_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hacker`
--

INSERT INTO `hacker` (`stu_no`, `stu_name`, `stu_surname`, `email`, `group_name`, `password`, `Admin_id`) VALUES
(12345, 'Mphahle', 'Karabo', '12345@tut.ac.za', 'MOTLOI', '$2b$08$P09TtbFPQIbxvj87PmWnzuQtf.5sa.rSnHp6rBETm3A.EELui/0Rm', 5),
(21811111, 'Palesa', 'Msimanga', '216840046@tut.ac.za', 'Techsavy', '$2b$08$.EzL8DUz7DOVBGmMy/9MoemqobkQUKaPaHPXDiUYA9kyuFtn.lpFW', 5),
(218665730, 'Thendo', 'Madiba', '218665730@tut.ac.za', 'thobela', '$2b$08$luDkaoAYImseqq7YtxOEpeKPbEha1lTQPREhlXP/hTIJcEF1KYnce', 5);

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
(1, 'SIBUSISO', '09h00', '1hour', '10h00', '02/03/2023');

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE `judge` (
  `judge_id` int(45) NOT NULL,
  `judge_name` varchar(255) NOT NULL,
  `judge_surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Admin_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`judge_id`, `judge_name`, `judge_surname`, `email`, `company_name`, `password`, `Admin_id`) VALUES
(6, 'Andries', 'Matenjwa', 'matenjwa@gmail.com', 'ICEP', '$2b$08$nNlQj474ncHZiHG/SQurheqykRQwqx4j7MIyoAEh78s5LaesoLbNq', 5),
(7, 'Roseline', 'Mgomezulu', 'mgomezulu@gmail.com', 'VODACOM', '$2b$08$w1At8tM//Izoer1jtRXYwu/Yn01cjFXHVN4iTdi4NERJV7GZ.gntS', 5),
(8, 'Dipono', 'Mokoena', 'mokoena@gmail.com', 'GIJIMA', '$2b$08$cessJmGmsa/X6stRT41iaedHpgIFq0NnE9vNh.nKwbal6ilthKakO', 5);

-- --------------------------------------------------------

--
-- Table structure for table `judgeslot`
--

CREATE TABLE `judgeslot` (
  `slot_id` int(45) NOT NULL,
  `judge_id` int(45) NOT NULL,
  `judge_name` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `Admin_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judgeslot`
--

INSERT INTO `judgeslot` (`slot_id`, `judge_id`, `judge_name`, `start_time`, `length`, `end_time`, `date`, `Admin_id`) VALUES
(1, 4, 'Sibusiso Radebe', '10h00', '3 hours', '13h00', '03/06/2023', 0);

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
  `judge_id` int(45) NOT NULL,
  `points` int(45) NOT NULL,
  `isPublished` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`group_id`, `group_name`, `judge_id`, `points`, `isPublished`) VALUES
(16, 'thobela', 6, 30, 0),
(17, 'TECHSAVY', 7, 50, 0),
(18, 'MOTLOI', 8, 45, 0);

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
  ADD PRIMARY KEY (`stu_no`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `hackerslot`
--
ALTER TABLE `hackerslot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`judge_id`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `judgeslot`
--
ALTER TABLE `judgeslot`
  ADD PRIMARY KEY (`slot_id`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `presentation`
--
ALTER TABLE `presentation`
  ADD PRIMARY KEY (`presentation_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `judge_id` (`judge_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hackerslot`
--
ALTER TABLE `hackerslot`
  MODIFY `slot_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `judge`
--
ALTER TABLE `judge`
  MODIFY `judge_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `judgeslot`
--
ALTER TABLE `judgeslot`
  MODIFY `slot_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `presentation`
--
ALTER TABLE `presentation`
  MODIFY `presentation_id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `group_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hacker`
--
ALTER TABLE `hacker`
  ADD CONSTRAINT `hacker_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `judge`
--
ALTER TABLE `judge`
  ADD CONSTRAINT `judge_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
