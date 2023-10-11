-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 05:14 PM
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
-- Database: `plp_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `mentees`
--

CREATE TABLE `mentees` (
  `mentee_id` int(10) UNSIGNED NOT NULL COMMENT 'pk auto inc',
  `first_name` varchar(70) NOT NULL,
  `preferred_name` varchar(70) DEFAULT NULL,
  `last_name` varchar(70) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(22) NOT NULL,
  `ethnicity` varchar(25) NOT NULL,
  `intl_student` varchar(11) DEFAULT NULL,
  `first_gen_student` varchar(11) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `street_address` varchar(254) DEFAULT NULL,
  `city` varchar(85) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip_code` varchar(12) DEFAULT NULL,
  `spoken_langs` varchar(254) NOT NULL,
  `food_allergies` varchar(254) DEFAULT NULL,
  `personal_email` varchar(254) NOT NULL,
  `unt_email` varchar(254) NOT NULL,
  `disclosure_check` varchar(11) NOT NULL,
  `release_check` varchar(11) NOT NULL,
  `specific_check` varchar(11) NOT NULL,
  `inform_check` varchar(11) NOT NULL,
  `revoke_check` varchar(11) NOT NULL,
  `signature` varchar(150) NOT NULL,
  `signature_date` date NOT NULL,
  `major` varchar(100) NOT NULL,
  `concentrations` varchar(254) DEFAULT NULL,
  `minor` varchar(50) DEFAULT NULL,
  `college` varchar(100) NOT NULL,
  `honors` varchar(11) NOT NULL,
  `gpa` decimal(4,3) NOT NULL,
  `class_level` varchar(10) NOT NULL,
  `graduation_date` date NOT NULL,
  `semester_hours` int(2) UNSIGNED NOT NULL,
  `employment_status` varchar(11) NOT NULL,
  `employer_name` varchar(30) DEFAULT NULL,
  `work_hours` int(3) UNSIGNED DEFAULT NULL,
  `clubs` varchar(254) DEFAULT NULL,
  `club_hours` int(3) DEFAULT NULL,
  `plp_discovery_method` varchar(70) DEFAULT NULL,
  `plp_contact` varchar(70) DEFAULT NULL,
  `travel` varchar(11) NOT NULL,
  `transportation` varchar(11) NOT NULL,
  `mentor_pref` varchar(254) DEFAULT NULL,
  `goals` varchar(254) DEFAULT NULL,
  `interests` varchar(254) DEFAULT NULL,
  `industry_pref` varchar(254) DEFAULT NULL,
  `gender_pref_check` varchar(11) NOT NULL,
  `gender_pref` varchar(22) DEFAULT NULL,
  `meeting_check` varchar(11) NOT NULL,
  `match_check` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentees`
--

INSERT INTO `mentees` (`mentee_id`, `first_name`, `preferred_name`, `last_name`, `student_id`, `date_of_birth`, `gender`, `ethnicity`, `intl_student`, `first_gen_student`, `phone_number`, `street_address`, `city`, `state`, `zip_code`, `spoken_langs`, `food_allergies`, `personal_email`, `unt_email`, `disclosure_check`, `release_check`, `specific_check`, `inform_check`, `revoke_check`, `signature`, `signature_date`, `major`, `concentrations`, `minor`, `college`, `honors`, `gpa`, `class_level`, `graduation_date`, `semester_hours`, `employment_status`, `employer_name`, `work_hours`, `clubs`, `club_hours`, `plp_discovery_method`, `plp_contact`, `travel`, `transportation`, `mentor_pref`, `goals`, `interests`, `industry_pref`, `gender_pref_check`, `gender_pref`, `meeting_check`, `match_check`) VALUES
(1, 'Reba ', 'Reba ', 'Gordon', '123456789', '2023-04-05', 'male', 'martian', '0', '1', '740-812-2181', '3442 Nutters Barn Lane', 'Urbandale', 'IA', '50322', 'English', NULL, 'RebaJGordon@teleworm.us', 'RebaJGordon@teleworm.us', '1', '1', '1', '1', '1', 'Reba J. Gordon', '2023-04-15', 'Math', NULL, NULL, 'UNT', '1', '3.340', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 22, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(2, 'Michael', 'Mike', 'Richardson', '123456789', '2023-04-05', 'male', 'asd', '0', '1', '940-716-1304', '409 Olen Thomas Drive', 'Wichita Falls', 'TX', '50322', 'English', NULL, 'RebaJGordon@teleworm.us', 'RebaJGordon@teleworm.us', '1', '1', '1', '1', '1', 'Michael M. Richardson', '2023-04-15', 'Marketing', NULL, NULL, 'UNT', '1', '3.650', 'Senior', '2023-04-29', 12, '1', 'Walmart', 22, 'basket weaving club', NULL, NULL, NULL, '0', '1', NULL, 'bench 350', 'gym', 'mining', '1', 'female', '1', '1'),
(3, 'Linda', 'Linda', 'Milton', '123456789', '2023-04-05', 'female', 'asd', '0', '1', '432-816-6997\r\n', '704 South Street', 'Midland', 'TX', '79701', 'English', NULL, 'LindaBMilton@armyspy.com', 'LindaBMilton@armyspy.com', '1', '1', '1', '1', '1', 'Linda B. Milton', '2023-04-15', 'Business', NULL, NULL, 'UNT', '1', '3.340', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 22, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(4, 'Daniel ', 'Daniel ', 'Hughes', '432-744-896', '2023-04-05', 'male', 'asd', '0', '1', '432-816-6997\r\n', '628 South Street', 'Midland', 'TX', '79701', 'English', NULL, 'DanielDHughes@jourrapide.com', 'DanielDHughes@jourrapide.com', '1', '1', '1', '1', '1', 'Daniel D. Hughes', '2023-04-15', 'Business', NULL, NULL, 'UNT', '1', '3.340', 'Senior', '2023-04-29', 12, '1', 'Chilis', 22, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(5, 'Gilbert', NULL, 'Colon', '321312123', '2023-04-15', 'nonbinary', 'croatian', '0', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'fashion', 'UNT', '1', '3.870', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(6, 'Trang', NULL, 'Wheeler', '321312123', '2023-04-15', 'agender', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'testminor', 'UNT', '0', '3.890', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(7, 'Jill', NULL, 'Almonte', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'jedi', 'UNT', '0', '3.890', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(8, 'Mark', NULL, 'Henderson', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'jedi', 'UNT', '0', '3.890', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(9, 'Norman', NULL, 'Moore', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'human powered flight', 'UNT', '0', '3.890', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(10, 'Sara', NULL, 'Barber', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'snorkling', 'UNT', '0', '3.890', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'transgender', '1', '1'),
(12, 'Jerry', NULL, 'Atkinson', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'snorkling', 'UNT', '0', '3.890', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(13, 'Edgar', NULL, 'McNeel', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', '3.560', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(14, 'Charlene', NULL, 'Rinehart', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', '3.890', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(15, 'Joseph', NULL, 'Peterson', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business Administration', NULL, 'pickleball', 'UNT', '0', '3.770', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(16, 'Sharon', NULL, 'Peterson', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.600', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(17, 'Shane', NULL, 'Rayner', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.540', 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'male', '1', '1'),
(18, 'Joseph', NULL, 'Barrientes', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'transwoman', '1', '1'),
(19, 'Zita', NULL, 'McCullough', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'female', '1', '1'),
(20, 'Maye', NULL, 'Langosh', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'female', '1', '1'),
(21, 'Lucious', NULL, 'King', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', '4.000', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(22, 'Stephania', NULL, 'Deckow', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', '3.600', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(23, 'Sally', NULL, 'Schuster', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', '3.880', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(24, 'Blanca', NULL, 'Durgan', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.600', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(25, 'Juvenal', NULL, 'Abernathy', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.540', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(26, 'Victor', NULL, 'Stroman', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'transwoman', '1', '1'),
(27, 'Torey', NULL, 'Johnston', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(28, 'Gay', NULL, 'Dietrich', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(29, 'Malinda', NULL, 'King', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', '4.000', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(30, 'Jerod', NULL, 'Deckow', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', '3.600', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(31, 'Camryn', NULL, 'Schuster', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', '3.880', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(32, 'Kendra', NULL, 'Durgan', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.600', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(33, 'Casimir', NULL, 'Abernathy', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.540', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(34, 'Forest', NULL, 'Stroman', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.610', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'transman', '1', '1'),
(35, 'Kaylin', NULL, 'Johnston', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.640', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(36, 'Augusta', NULL, 'Dietrich', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(37, 'Martin', NULL, 'King', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', '4.000', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(38, 'Cruz', NULL, 'Deckow', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', '3.600', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(39, 'Janick', NULL, 'Schuster', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', '3.880', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(40, 'Lubowitz', NULL, 'Durgan', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.600', 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(41, 'Eddie', NULL, 'Abernathy', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.540', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(42, 'Clay', NULL, 'Stroman', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.610', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'transman', '1', '1'),
(43, 'Hayden', NULL, 'Johnston', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.640', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(44, 'Evie', NULL, 'Dietrich', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(45, 'Alena', NULL, 'King', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', '4.000', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(46, 'Leta', NULL, 'Deckow', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', '3.600', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(47, 'Janiya', NULL, 'Schuster', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', '3.880', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(48, 'Juanita', NULL, 'Durgan', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.600', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(49, 'Alf', NULL, 'Abernathy', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', '3.540', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(50, 'Rosamond', NULL, 'Stroman', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'French, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.610', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(51, 'Derrick', NULL, 'Johnston', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.640', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(52, 'Adaline', NULL, 'Dietrich', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', '3.670', 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(53, 'Germaine', NULL, 'Lebsack', '321312123', '2023-04-15', 'male', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', '3.600', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(54, 'Annie', NULL, 'Langworth', '321312123', '2023-04-15', 'female', 'terran', '1', '1', ' 806-246-7278', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', '3.600', 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(57, 'jim', '', 'reynolds', '123123123', '1989-08-18', 'male', 'terran', 'intNo', 'firstNo', '998 888 8888', 'Test address', 'Denton', 'Texas', '54544', 'English, Spanish', 'tree nuts', 'testunt@gmail.com', 'testunt@my.unt.edu', '', '', '', '', '', 'sig', '1818-12-18', 'Engineering', 'AI', 'Data science', 'college', 'honNo', '3.000', 'classDefau', '2023-06-13', 12, 'empNo', 'google', 40, 'robotics', 10, 'current', 'myplp contact', 'travNo', 'transNo', 'smart', 'to learn', 'hobbies', 'Defense', 'prefNo', 'transman', '', ''),
(60, 'jill', '', 'reynolds', '123123123', '2022-04-14', 'female', 'terran', 'intNo', 'firstNo', '998 888 8888', 'Test address', 'denton', 'texas', '75465', 'English', 'tree nuts', 'testunt@gmail.com', 'testunt@my.unt.edu', '1', '1', '1', '1', '1', 'sig', '2022-04-15', 'Engineering', 'AI', 'Electrical and Computers', 'college', 'honNo', '3.660', 'classDefau', '2021-03-29', 12, 'empNo', 'company', 20, 'robotics', 0, 'professor', 'email', 'travNo', 'transNo', 'smart', 'to learn', 'hobbies', 'Defense', 'prefNo', 'preferNotDisclose', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `mentor_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `preferred_name` varchar(70) DEFAULT NULL,
  `last_name` varchar(70) NOT NULL,
  `gender` varchar(22) NOT NULL,
  `ethnicity` varchar(25) DEFAULT NULL,
  `unt_alumni_check` varchar(50) NOT NULL,
  `plp_alumni_check` varchar(50) NOT NULL,
  `mentor_exp_check` varchar(10) DEFAULT NULL,
  `mentor_exp_yrs` varchar(10) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `street_address` varchar(254) NOT NULL,
  `city` varchar(85) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip_code` varchar(12) NOT NULL,
  `mailing_check` varchar(10) NOT NULL,
  `mailing_address` varchar(254) DEFAULT NULL,
  `mailing_city` varchar(85) DEFAULT NULL,
  `mailing_state` varchar(20) DEFAULT NULL,
  `mailing_zip_code` varchar(12) DEFAULT NULL,
  `citizenship_country` varchar(50) NOT NULL,
  `spoken_langs` varchar(50) NOT NULL,
  `motivation` varchar(254) DEFAULT NULL,
  `goals` varchar(254) DEFAULT NULL,
  `gender_pref_check` varchar(10) NOT NULL,
  `gender_pref` varchar(22) DEFAULT NULL,
  `mentor_majors` varchar(100) DEFAULT NULL,
  `transportation` varchar(10) NOT NULL,
  `prof_exp_yrs` varchar(100) DEFAULT NULL,
  `plp_ref` varchar(100) DEFAULT NULL,
  `plp_ref_email` varchar(254) DEFAULT NULL,
  `plp_ref_affil` varchar(254) DEFAULT NULL,
  `matching_check` varchar(11) NOT NULL,
  `meeting_check` varchar(11) NOT NULL,
  `pii_share_check` varchar(11) NOT NULL,
  `prof_summary` varchar(500) DEFAULT NULL,
  `industries` varchar(100) DEFAULT NULL,
  `company` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `job_desc` varchar(254) DEFAULT NULL,
  `career_field` varchar(100) DEFAULT NULL,
  `hire_date` varchar(20) NOT NULL,
  `former_company` varchar(50) DEFAULT NULL,
  `former_job` varchar(50) DEFAULT NULL,
  `former_job_desc` varchar(254) DEFAULT NULL,
  `former_hire_date` varchar(20) DEFAULT NULL,
  `former_leave_date` varchar(20) DEFAULT NULL,
  `college` varchar(30) NOT NULL,
  `degree` varchar(30) NOT NULL,
  `major` varchar(30) NOT NULL,
  `minor` varchar(50) DEFAULT NULL,
  `graduation_year` varchar(10) NOT NULL,
  `certifications` varchar(254) DEFAULT NULL,
  `academic_affils` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`mentor_id`, `first_name`, `preferred_name`, `last_name`, `gender`, `ethnicity`, `unt_alumni_check`, `plp_alumni_check`, `mentor_exp_check`, `mentor_exp_yrs`, `phone_number`, `street_address`, `city`, `state`, `zip_code`, `mailing_check`, `mailing_address`, `mailing_city`, `mailing_state`, `mailing_zip_code`, `citizenship_country`, `spoken_langs`, `motivation`, `goals`, `gender_pref_check`, `gender_pref`, `mentor_majors`, `transportation`, `prof_exp_yrs`, `plp_ref`, `plp_ref_email`, `plp_ref_affil`, `matching_check`, `meeting_check`, `pii_share_check`, `prof_summary`, `industries`, `company`, `job`, `job_desc`, `career_field`, `hire_date`, `former_company`, `former_job`, `former_job_desc`, `former_hire_date`, `former_leave_date`, `college`, `degree`, `major`, `minor`, `graduation_year`, `certifications`, `academic_affils`) VALUES
(1, 'Hermina', NULL, 'Zieme', '', 'terran', '1', '1', '1', '5', '218 310 2917', '97012 Chadrick Station', 'El Paso', 'Texas', '79960', '1', NULL, NULL, NULL, NULL, 'US', 'English', 'share knowledge', NULL, '1', 'male', 'Business', '1', 'experience at the business factory', NULL, NULL, NULL, '1', '1', '1', 'making businesses at the business factory', 'Business Industry', 'Corporate Business', 'Business Analyst', ' Responsible for analyzing the business', 'Field of Business', '2024-31-3', NULL, NULL, NULL, NULL, NULL, 'Business College', 'BMA', 'Business', 'Farming', '1998', 'certified to do business', '0'),
(2, 'Bob', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Finance', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2018', 'CPA', NULL),
(3, 'Cindy', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(4, 'Bill', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(5, 'Neha', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(6, 'Shaina', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(7, 'Giovanna', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(8, 'Felix', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(9, 'Macie', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(10, 'Savannah', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(11, 'Jena', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL),
(12, 'Jesse', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL),
(13, 'Hulda', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(14, 'Marisa', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(15, 'Abelardo', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English, Spanish', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(16, 'Donnell', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Marketing', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(17, 'Tobin', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Marketing', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(18, 'Alf', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Marketing', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(19, 'Lacey', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English, French', NULL, NULL, '1', 'male', 'Finance', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(20, 'Henderson', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Finance', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(21, 'Efren', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Engineering', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL),
(22, 'Elva', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Engineering', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL),
(23, 'Veronica', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(24, 'Marlin', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English, Spanish', NULL, NULL, '1', 'female', 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(25, 'Santos', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Computer Science', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Computer Science', 'dancing', '2017', 'taxes', NULL),
(26, 'Elijah', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Marketing', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(27, 'Gabrielle', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'female', 'Marketing', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(28, 'Faustino', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Marketing', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(29, 'Tamara', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English, Spanish', NULL, NULL, '1', 'male', 'Finance', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(30, 'Ramona', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Finance', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(31, 'Lorenzo', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Engineering', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL),
(32, 'Gracie', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '1', 'male', 'Physics', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Physics', 'Playing Dnd', '2017', 'taxes', NULL),
(33, 'Deja', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English, Spanish', NULL, NULL, '0', NULL, 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(34, 'Yessenia', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English, French', NULL, NULL, '0', NULL, 'Business', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(35, 'Bart', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Business', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Business', 'dancing', '2017', 'taxes', NULL),
(36, 'Erwin', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Marketing', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(37, 'Carolyn', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Marketing', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(38, 'Christy', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English, French', NULL, NULL, '0', NULL, 'Marketing', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Marketing', 'dancing', '2017', 'taxes', NULL),
(39, 'Jamal', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Finance', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(40, 'Krystel', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Finance', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Finance', 'dancing', '2017', 'taxes', NULL),
(41, 'Rozella', NULL, 'Thompson', 'female', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Engineering', '1', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL),
(42, 'Bette', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Engineering', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL),
(43, 'jack', '', 'jackson', 'male', 'terran', 'No', 'No', 'No', '3', '999 999 9999', 'test address', 'denton', 'texas', '55555', 'No', '', '', '', '', 'US', 'English', 'why', 'goals', 'No', 'preferNotDisclose', 'Engineering', 'true', ' 10', 'no referral', 'no emial', 'no affil', 'No', 'No', 'No', 'engineering STUFF', 'stuff', 'company', 'engineer', 'do engineer stuff', 'Accounting and auditing services', '', '', '', '', '', '', 'UNT', 'Electrical Engineering', 'Engineering', 'Electrical and Computers', '2005', 'T Class license', '');

-- --------------------------------------------------------

--
-- Table structure for table `mentor_mentee`
--

CREATE TABLE `mentor_mentee` (
  `id` int(10) UNSIGNED NOT NULL,
  `mentor_id` int(10) UNSIGNED NOT NULL,
  `mentee_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mentor_mentee`
--

INSERT INTO `mentor_mentee` (`id`, `mentor_id`, `mentee_id`, `created_at`, `updated_at`) VALUES
(1, 16, 2, '2023-05-02 06:46:19', '2023-05-02 06:46:19'),
(2, 17, 2, '2023-05-02 06:49:45', '2023-05-02 06:49:45'),
(3, 18, 2, '2023-05-02 06:51:08', '2023-05-02 06:51:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mentees`
--
ALTER TABLE `mentees`
  ADD PRIMARY KEY (`mentee_id`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`mentor_id`);

--
-- Indexes for table `mentor_mentee`
--
ALTER TABLE `mentor_mentee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mentor_id` (`mentor_id`,`mentee_id`),
  ADD UNIQUE KEY `unique_mentor_mentee` (`mentor_id`,`mentee_id`),
  ADD KEY `idx_mentor_id` (`mentor_id`),
  ADD KEY `idx_mentee_id` (`mentee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentees`
--
ALTER TABLE `mentees`
  MODIFY `mentee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk auto inc', AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `mentor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `mentor_mentee`
--
ALTER TABLE `mentor_mentee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mentor_mentee`
--
ALTER TABLE `mentor_mentee`
  ADD CONSTRAINT `fk_mentor_mentee_mentee_id` FOREIGN KEY (`mentee_id`) REFERENCES `mentees` (`mentee_id`),
  ADD CONSTRAINT `fk_mentor_mentee_mentor_id` FOREIGN KEY (`mentor_id`) REFERENCES `mentors` (`mentor_id`),
  ADD CONSTRAINT `mentor_mentee_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `mentors` (`mentor_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mentor_mentee_ibfk_2` FOREIGN KEY (`mentee_id`) REFERENCES `mentees` (`mentee_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
