-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 08:27 AM
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
-- Database: `plptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `mentees`
--

CREATE TABLE `mentees` (
  `mentee_id` int(11) NOT NULL COMMENT 'pk auto inc',
  `fname` varchar(50) NOT NULL COMMENT 'first name',
  `prefname` varchar(50) NOT NULL COMMENT 'preferred name',
  `lname` varchar(50) NOT NULL COMMENT 'last name',
  `student_id` varchar(10) NOT NULL COMMENT 'unt student id',
  `email` varchar(254) NOT NULL COMMENT 'unt email',
  `date_of_birth` date NOT NULL,
  `class` varchar(9) NOT NULL COMMENT 'class year',
  `gpa` float NOT NULL,
  `phone` varchar(20) NOT NULL COMMENT 'preferred phone',
  `address` varchar(254) NOT NULL COMMENT 'street address',
  `city` varchar(85) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipcode` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Basic mentee info';

--
-- Dumping data for table `mentees`
--

INSERT INTO `mentees` (`mentee_id`, `fname`, `prefname`, `lname`, `student_id`, `email`, `date_of_birth`, `class`, `gpa`, `phone`, `address`, `city`, `state`, `zipcode`) VALUES
(1, 'Peter', 'Pete', 'Dyer', '11223344', 'peterdyer@my.unt.edu', '1988-08-18', 'Senior', 3.56, '(214)555-1234', '805 Sunny Slope Dr', 'Allen', 'TX', '75002'),
(2, 'John', 'Johnny', 'Silverhand', '22334455', 'silverhand@my.unt.edu', '2023-01-05', 'Senior', 3.77, '(342)555-7878', 'Apt B123 MB 11', 'Night City', 'California', '90001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mentees`
--
ALTER TABLE `mentees`
  ADD PRIMARY KEY (`mentee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentees`
--
ALTER TABLE `mentees`
  MODIFY `mentee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk auto inc', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
