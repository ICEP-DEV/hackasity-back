-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 02:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackercity`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `name`, `surname`, `email`, `password`) VALUES
(1, 'Sibusiso', 'Radebe', 'radebe@gmail.com', '123');

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
  `time` varchar(255) NOT NULL,
  `group_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hacker`
--

CREATE TABLE `hacker` (
  `group_id` int(45) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_no` int(45) NOT NULL,
  `stu_surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Admin_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hacker`
--

INSERT INTO `hacker` (`group_id`, `stu_name`, `stu_no`, `stu_surname`, `email`, `group_name`, `password`, `Admin_id`) VALUES
(1, 'Karabo', 218665730, 'Motloi', 'motloi@tut.ac.za', 'TECHS', '123', 1),
(2, 'Michelle', 123456, 'Thobela', 'thobela@tut.ac.za', 'TVH', '123', 1),
(3, 'Mugile', 2468, 'Msimanga', 'msimanga@tut.ac.za', 'HEILBRON', '123', 1),
(4, 'Sibusiso', 216840046, 'Gumede', '216840046@tut.ac.za', 'thobela', '$2b$08$hdVOs1eV2IGelGbS2Bk9xe46kqt6TcHWX7NzysW6YVPMctAdit3J6', 1);

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
  `date` varchar(255) NOT NULL,
  `Admin_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hackerslot`
--

INSERT INTO `hackerslot` (`slot_id`, `group_name`, `start_time`, `length`, `end_time`, `date`, `Admin_id`) VALUES
(2, 'TECHS', '09h00', '1hour', '10h00', '03/06/2023', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`judge_id`, `judge_name`, `judge_surname`, `email`, `company_name`, `password`, `Admin_id`) VALUES
(8, 'Odirile', 'Morolo', 'morolo@gmail.com', 'ICEP', '123', 1),
(9, 'Andries', 'Matenjwa', 'matenjwa@tut.ac.za', 'MTN', '123', 1),
(10, 'Fihli', 'Mthimkhulu', 'fihli@gmail.com', 'SARS', '$2b$08$3DSOnnQH60DKXBaKfrrCfOwOdruoiKwXMdQoxw4kX954bvEwcM9fS', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `judgeslot`
--

INSERT INTO `judgeslot` (`slot_id`, `judge_id`, `judge_name`, `start_time`, `length`, `end_time`, `date`, `Admin_id`) VALUES
(2, 8, 'Odirile Morolo', '10h00', '3 hours', '13h00', '03/06/2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `presentation`
--

CREATE TABLE `presentation` (
  `presentation_id` int(45) NOT NULL,
  `group_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `points_id` int(45) NOT NULL,
  `group_id` int(45) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `judge_id` int(45) NOT NULL,
  `points` int(45) NOT NULL,
  `isPublished` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`points_id`, `group_id`, `group_name`, `judge_id`, `points`, `isPublished`) VALUES
(1, 1, 'TECHS', 8, 55, 0),
(2, 2, 'TVH', 9, 100, 0),
(3, 1, 'Techs', 9, 100, 0),
(4, 2, 'TVH', 8, 55, 0),
(5, 3, 'HEILBRON', 9, 100, 0),
(6, 3, 'HEILBRON', 8, 100, 0),
(7, 4, 'thobela', 10, 64, 0),
(8, 4, 'thobela', 9, 64, 0);

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
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `hacker`
--
ALTER TABLE `hacker`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `hackerslot`
--
ALTER TABLE `hackerslot`
  ADD PRIMARY KEY (`slot_id`),
  ADD KEY `Admin_id` (`Admin_id`);

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
  ADD KEY `Admin_id` (`Admin_id`),
  ADD KEY `judge_id` (`judge_id`);

--
-- Indexes for table `presentation`
--
ALTER TABLE `presentation`
  ADD PRIMARY KEY (`presentation_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`points_id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hacker`
--
ALTER TABLE `hacker`
  MODIFY `group_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hackerslot`
--
ALTER TABLE `hackerslot`
  MODIFY `slot_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `judge`
--
ALTER TABLE `judge`
  MODIFY `judge_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `judgeslot`
--
ALTER TABLE `judgeslot`
  MODIFY `slot_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `presentation`
--
ALTER TABLE `presentation`
  MODIFY `presentation_id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `points_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `hacker` (`group_id`);

--
-- Constraints for table `hacker`
--
ALTER TABLE `hacker`
  ADD CONSTRAINT `hacker_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `hackerslot`
--
ALTER TABLE `hackerslot`
  ADD CONSTRAINT `hackerslot_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `judge`
--
ALTER TABLE `judge`
  ADD CONSTRAINT `judge_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `judgeslot`
--
ALTER TABLE `judgeslot`
  ADD CONSTRAINT `judgeslot_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `presentation`
--
ALTER TABLE `presentation`
  ADD CONSTRAINT `presentation_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `hacker` (`group_id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `hacker` (`group_id`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
