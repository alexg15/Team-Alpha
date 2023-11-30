-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 09:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plp database`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator_accounts`
--

CREATE TABLE `administrator_accounts` (
  `adminID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `administrator_accounts`
--

INSERT INTO `administrator_accounts` (`adminID`, `username`, `password_hash`) VALUES
(8, 'testadmin', '$2y$10$ER1Qt7g485wSnQQxNEeMlO4meIbbXeGKtGMzsSmSExROiaq/zD5Bq');

-- --------------------------------------------------------

--
-- Table structure for table `matched_data_temp`
--

CREATE TABLE `matched_data_temp` (
  `mentor_id` int(11) NOT NULL,
  `mentee_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `plp_ref_email` varchar(255) NOT NULL,
  `mentee_first_name` varchar(255) NOT NULL,
  `mentee_last_name` varchar(255) NOT NULL,
  `personal_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mentee_accounts`
--

CREATE TABLE `mentee_accounts` (
  `mentee_id` int(10) UNSIGNED NOT NULL COMMENT 'pk auto inc',
  `mentee_first_name` varchar(70) NOT NULL,
  `preferred_name` varchar(70) DEFAULT NULL,
  `mentee_last_name` varchar(70) NOT NULL,
  `student_id` int(8) NOT NULL,
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
-- Dumping data for table `mentee_accounts`
--

INSERT INTO `mentee_accounts` (`mentee_id`, `mentee_first_name`, `preferred_name`, `mentee_last_name`, `student_id`, `date_of_birth`, `gender`, `ethnicity`, `intl_student`, `first_gen_student`, `phone_number`, `street_address`, `city`, `state`, `zip_code`, `spoken_langs`, `food_allergies`, `personal_email`, `unt_email`, `disclosure_check`, `release_check`, `specific_check`, `inform_check`, `revoke_check`, `signature`, `signature_date`, `major`, `concentrations`, `minor`, `college`, `honors`, `gpa`, `class_level`, `graduation_date`, `semester_hours`, `employment_status`, `employer_name`, `work_hours`, `clubs`, `club_hours`, `plp_discovery_method`, `plp_contact`, `travel`, `transportation`, `mentor_pref`, `goals`, `interests`, `industry_pref`, `gender_pref_check`, `gender_pref`, `meeting_check`, `match_check`) VALUES
(1, 'Reba ', 'NULL', 'Gordon', 12845670, '2002-04-01', 'male', 'White', '0', '1', '(886) 523-9362', '3442 Nutters Barn Ln.', 'Urbandale', 'IA', '50322', 'English', NULL, 'RebaJGordon@teleworm.us', 'RebaJGordon@teleworm.us', '1', '1', '1', '1', '1', 'Reba J. Gordon', '2023-04-15', 'Math', NULL, NULL, 'UNT', '1', 3.340, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 22, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(2, 'Michael', 'Mike', 'Richardson', 34578912, '2001-09-15', 'male', 'Asian', '0', '1', '(416) 350-9602', '409 Olen Thomas Dr.', 'Wichita Falls', 'TX', '50322', 'English', NULL, 'RebaJGordon@teleworm.us', 'RebaJGordon@teleworm.us', '1', '1', '1', '1', '1', 'Michael M. Richardson', '2023-04-15', 'Marketing', NULL, NULL, 'UNT', '1', 3.650, 'Senior', '2023-04-29', 12, '1', 'Walmart', 22, 'basket weaving club', NULL, NULL, NULL, '0', '1', NULL, 'bench 350', 'gym', 'mining', '1', 'female', '1', '1'),
(3, 'Linda', 'NULL', 'Milton', 56789023, '2003-12-26', 'female', 'Black', '0', '1', '(572) 593-2349', '704 South St.', 'Midland', 'TX', '79701', 'English', NULL, 'LindaBMilton@armyspy.com', 'LindaBMilton@armyspy.com', '1', '1', '1', '1', '1', 'Linda B. Milton', '2023-04-15', 'Business', NULL, NULL, 'UNT', '1', 3.340, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 22, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(4, 'Daniel ', 'Danny ', 'Hughes', 98765432, '2002-03-30', 'male', 'White', '0', '1', '(452) 893-2141', '4 Coffee Ave.', 'Midland', 'TX', '79701', 'English', NULL, 'DanielDHughes@jourrapide.com', 'DanielDHughes@jourrapide.com', '1', '1', '1', '1', '1', 'Daniel D. Hughes', '2023-04-15', 'Business', NULL, NULL, 'UNT', '1', 3.340, 'Senior', '2023-04-29', 12, '1', 'Chilis', 22, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(5, 'Gilbert', 'Gil', 'Colon', 45612389, '2000-08-28', 'nonbinary', 'Black', '0', '1', '(667) 655-6122', '42 Valley St.', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'fashion', 'UNT', '1', 3.870, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(6, 'Trang', NULL, 'Wheeler', 23456789, '2002-09-24', 'agender', 'Black', '0', '0', '(916) 591-6966', '8 Cedar Swamp Rd.', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'testminor', 'UNT', '0', 3.890, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(7, 'Jill', NULL, 'Almonte', 89012345, '2004-01-14', 'female', 'White', '1', '1', '(677) 216-0999', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'jedi', 'UNT', '0', 3.890, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(8, 'Mark', NULL, 'Henderson', 87654321, '1999-08-15', 'male', 'White', '0', '1', '(444) 493-986', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'jedi', 'UNT', '0', 3.890, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(9, 'Norman', NULL, 'Moore', 54321678, '2000-04-21', 'male', 'Asian', '1', '1', '(989) 465-7664', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Marketing', NULL, 'human powered flight', 'UNT', '0', 3.890, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(10, 'Sara', NULL, 'Barber', 32109876, '2004-08-09', 'female', 'White', '0', '1', '(302) 975-1999', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'Croatian, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'snorkling', 'UNT', '0', 3.890, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'transgender', '1', '1'),
(12, 'Jerry', NULL, 'Atkinson', 10987654, '2000-02-12', 'female', 'Native American', '1', '1', '(698) 759-3086', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'snorkling', 'UNT', '0', 3.890, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(13, 'Edgar', 'Ed', 'McNeel', 87654321, '2002-12-14', 'male', 'Black', '1', '0', '(980) 305-3501', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', 3.560, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(14, 'Charlene', NULL, 'Rinehart', 43210987, '2003-05-25', 'female', 'White', '1', '1', '(303) 343-5288', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', 3.890, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(15, 'Joseph', NULL, 'Peterson', 65432109, '2004-04-30', 'male', 'Native American', '1', '1', '(760) 733-8701', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business Administration', NULL, 'pickleball', 'UNT', '0', 3.770, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(16, 'Sharon', NULL, 'Peterson', 89012345, '2002-09-15', 'female', 'Native American', '1', '1', '(249) 859-3090', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.600, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(17, 'Shane', NULL, 'Rayner', 34567890, '2001-04-17', 'male', 'Native American', '1', '1', '(690) 432-5598', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.540, 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'male', '1', '1'),
(18, 'Joseph', NULL, 'Barrientes', 56789012, '2003-08-09', 'male', 'Asian', '1', '1', '(661) 914-0846', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'transwoman', '1', '1'),
(19, 'Zita', NULL, 'McCullough', 21098765, '1999-12-19', 'female', 'White', '1', '1', '(584) 517-9950', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'female', '1', '1'),
(20, 'Maye', NULL, 'Langosh', 67890123, '2000-05-22', 'male', 'Black', '1', '0', '(473) 908-6894', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Senior', '2023-04-29', 12, '1', 'Space Force', 40, 'test club', 3, NULL, NULL, '0', '1', NULL, NULL, NULL, 'space flight', '1', 'female', '1', '1'),
(21, 'Lucious', NULL, 'King', 54321098, '2003-12-14', 'male', 'Black', '1', '1', '(960) 299-8791', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', 4.000, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(22, 'Stephania', NULL, 'Deckow', 34567890, '2002-09-10', 'male', 'White', '1', '1', '(329) 856-2099', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', 3.600, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(23, 'Sally', NULL, 'Schuster', 98474020, '2004-02-20', 'female', 'Black', '1', '1', '(997) 252-6126', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', 3.880, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(24, 'Blanca', NULL, 'Durgan', 15758874, '2002-08-22', 'female', 'Native American', '1', '1', '(227) 852-6725', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.600, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(25, 'Juvenal', NULL, 'Abernathy', 67124135, '2001-04-12', 'male', 'Asian', '0', '0', '(599) 215-7786', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.540, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(26, 'Victor', 'Vic', 'Stroman', 11943686, '1999-11-21', 'male', 'Black', '0', '1', '(235) 345-8714', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'transwoman', '1', '1'),
(27, 'Torey', NULL, 'Johnston', 61647771, '2002-05-11', 'female', 'White', '1', '0', '(401) 383-6822', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(28, 'Gay', NULL, 'Dietrich', 62067459, '2001-01-30', 'male', 'White', '0', '1', '(233) 359-1870', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(29, 'Malinda', NULL, 'King', 16841178, '2003-12-31', 'male', 'White', '1', '1', '(225) 284-0100', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', 4.000, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(30, 'Jerod', NULL, 'Deckow', 83263834, '2002-11-27', 'male', 'White', '0', '0', '(465) 762-4601', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', 3.600, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(31, 'Camryn', NULL, 'Schuster', 93902021, '2004-09-29', 'female', 'Asian', '1', '1', '(561) 938-9524', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', 3.880, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(32, 'Kendra', NULL, 'Durgan', 40448795, '2003-01-13', 'female', 'White', '1', '0', '(759) 810-0898', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.600, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(33, 'Casimir', NULL, 'Abernathy', 69927030, '2001-02-16', 'male', 'Black', '0', '1', '(737) 609-8549', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.540, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(34, 'Forest', NULL, 'Stroman', 67172696, '2002-05-15', 'male', 'Black', '1', '1', '(948) 709-6973', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.610, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'transman', '1', '1'),
(35, 'Kaylin', NULL, 'Johnston', 73392074, '2004-04-19', 'female', 'Black', '0', '1', '(560) 207-1322', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.640, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(36, 'Augusta', NULL, 'Dietrich', 96528233, '2003-09-08', 'male', 'Asian', '1', '1', '(960) 919-8999', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(37, 'Martin', NULL, 'King', 15361438, '2002-04-12', 'male', 'Native American', '1', '1', '(775) 888-5465', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', 4.000, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(38, 'Cruz', NULL, 'Deckow', 43136339, '2004-02-07', 'male', 'White', '0', '1', '(968) 555-4594', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', 3.600, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(39, 'Janick', NULL, 'Schuster', 22681864, '2003-12-05', 'female', 'Black', '0', '1', '(677) 626-6401', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', 3.880, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, 'design', '1', 'male', '1', '1'),
(40, 'Lubowitz', NULL, 'Durgan', 34938398, '2001-05-13', 'female', 'White', '0', '1', '(774) 727-4734', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.600, 'Junior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '0', '0', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(41, 'Eddie', NULL, 'Abernathy', 87891497, '2001-08-26', 'male', 'Asian', '1', '1', '(629) 505-1650', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.540, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(42, 'Clay', NULL, 'Stroman', 42582753, '2002-04-15', 'male', 'White', '1', '0', '(370) 334-5900', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.610, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'transman', '1', '1'),
(43, 'Hayden', NULL, 'Johnston', 23721737, '2003-01-03', 'female', 'Black', '1', '0', '(971) 742-6064', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.640, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(44, 'Evie', NULL, 'Dietrich', 91027706, '2004-12-08', 'male', 'Asian', '0', '1', '(779) 353-4581', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Junior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1', 'female', '1', '1'),
(45, 'Alena', NULL, 'King', 18803083, '2004-09-18', 'male', 'White', '1', '1', '(539) 661-9017', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Finance', NULL, 'Playing DnD', 'UNT', '0', 4.000, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'male', '1', '1'),
(46, 'Leta', NULL, 'Deckow', 21494036, '2001-02-23', 'male', 'Black', '1', '0', '(665) 390-9642', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', 3.600, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(47, 'Janiya', NULL, 'Schuster', 87273603, '2003-05-28', 'female', 'White', '1', '1', '(736) 688-8579', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Physics', NULL, 'snorkling', 'UNT', '0', 3.880, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(48, 'Juanita', NULL, 'Durgan', 17481860, '2002-01-14', 'female', 'White', '0', '1', '(602) 331-4453', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.600, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(49, 'Alf', NULL, 'Abernathy', 97154607, '2003-09-21', 'male', 'Asian', '0', '1', '(325) 997-5108', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, French', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Engineering', NULL, 'gundams', 'UNT', '0', 3.540, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(50, 'Rosamond', NULL, 'Stroman', 69815356, '2004-05-22', 'male', 'Black', '0', '0', '(306) 429-0963', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'French, English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.610, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(51, 'Derrick', NULL, 'Johnston', 51746771, '2001-04-14', 'female', 'White', '0', '1', '(384) 576-8724', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.640, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(52, 'Adaline', NULL, 'Dietrich', 42124533, '2002-12-02', 'male', 'White', '1', '0', '(651) 317-1467', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Business', NULL, 'dancing', 'UNT', '0', 3.670, 'Senior', '2023-04-29', 12, '1', 'Taco Bell', 40, 'test club', 3, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1'),
(53, 'Germaine', NULL, 'Lebsack', 94899145, '2003-02-23', 'male', 'Asian', '1', '00', '(934) 390-9097', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', 3.600, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '1', 'female', '1', '1'),
(54, 'Annie', 'Ann', 'Langworth', 62210552, '2001-11-01', 'female', 'White', '0', '1', '(744) 756-7979', '3389 Timber Oak Drive', 'Amherst', 'Texas', '79312', 'English, Spanish', 'none', 'testemail@gmail.com', 'testemail@my.unt.edu', '1', '1', '1', '1', '1', 'test signature', '2023-04-14', 'Computer Science', NULL, 'snorkling', 'UNT', '0', 3.600, 'Senior', '2023-04-29', 12, '1', 'Self', 20, 'test club', 5, NULL, NULL, '1', '1', NULL, NULL, NULL, 'design', '0', NULL, '1', '1'),
(57, 'Jimmy', 'Jim', 'Reynolds', 79838871, '1989-08-15', 'male', 'Asian', '0', '0', '(490) 780-7103', 'Test address', 'Denton', 'Texas', '54544', 'English, Spanish', 'tree nuts', 'testunt@gmail.com', 'testunt@my.unt.edu', '', '', '', '', '', 'sig', '1818-12-18', 'Engineering', 'AI', 'Data science', 'college', 'honNo', 3.000, 'classDefau', '2023-06-13', 12, 'empNo', 'google', 40, 'robotics', 10, 'current', 'myplp contact', 'travNo', 'transNo', 'smart', 'to learn', 'hobbies', 'Defense', 'prefNo', 'transman', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mentor_accounts`
--

CREATE TABLE `mentor_accounts` (
  `mentor_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `preferred_name` varchar(70) DEFAULT NULL,
  `last_name` varchar(70) NOT NULL,
  `gender` varchar(22) NOT NULL,
  `ethnicity` varchar(25) DEFAULT NULL,
  `unt_alumni_check` varchar(50) NOT NULL,
  `plp_alumni_check` varchar(50) NOT NULL,
  `mentor_exp_check` varchar(10) DEFAULT NULL,
  `mentor_exp_yrs` int(10) DEFAULT NULL,
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
-- Dumping data for table `mentor_accounts`
--

INSERT INTO `mentor_accounts` (`mentor_id`, `first_name`, `preferred_name`, `last_name`, `gender`, `ethnicity`, `unt_alumni_check`, `plp_alumni_check`, `mentor_exp_check`, `mentor_exp_yrs`, `phone_number`, `street_address`, `city`, `state`, `zip_code`, `mailing_check`, `mailing_address`, `mailing_city`, `mailing_state`, `mailing_zip_code`, `citizenship_country`, `spoken_langs`, `motivation`, `goals`, `gender_pref_check`, `gender_pref`, `mentor_majors`, `transportation`, `prof_exp_yrs`, `plp_ref`, `plp_ref_email`, `plp_ref_affil`, `matching_check`, `meeting_check`, `pii_share_check`, `prof_summary`, `industries`, `company`, `job`, `job_desc`, `career_field`, `hire_date`, `former_company`, `former_job`, `former_job_desc`, `former_hire_date`, `former_leave_date`, `college`, `degree`, `major`, `minor`, `graduation_year`, `certifications`, `academic_affils`) VALUES
(1, 'Hermina', NULL, 'Zieme', '', 'terran', '1', '1', '1', 5, '218 310 2917', '97012 Chadrick Station', 'El Paso', 'Texas', '79960', '1', NULL, NULL, NULL, NULL, 'US', 'English', 'share knowledge', NULL, '1', 'male', 'Business', '1', 'experience at the business factory', NULL, 'hermina@aol.com', NULL, '1', '1', '1', 'making businesses at the business factory', 'Business Industry', 'Corporate Business', 'Business Analyst', ' Responsible for analyzing the business', 'Field of Business', '2024-31-3', NULL, NULL, NULL, NULL, NULL, 'Business College', 'BMA', 'Business', 'Farming', '1998', 'certified to do business', '0'),
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
(42, 'Bette', NULL, 'Thompson', 'male', 'terran', '0', '0', '0', NULL, '448-914-9042', 'test address', 'Denton', 'Texas', '79312', '0', NULL, NULL, NULL, NULL, 'US', 'English', NULL, NULL, '0', NULL, 'Engineering', '0', NULL, NULL, NULL, NULL, '1', '1', '1', NULL, NULL, 'Buccees', 'Accountant', 'numbers stuff', NULL, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 'OSU', 'BMA', 'Engineering', 'dancing', '2017', 'taxes', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator_accounts`
--
ALTER TABLE `administrator_accounts`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `mentee_accounts`
--
ALTER TABLE `mentee_accounts`
  ADD PRIMARY KEY (`mentee_id`);

--
-- Indexes for table `mentor_accounts`
--
ALTER TABLE `mentor_accounts`
  ADD PRIMARY KEY (`mentor_id`),
  ADD UNIQUE KEY `first_name` (`first_name`,`last_name`,`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator_accounts`
--
ALTER TABLE `administrator_accounts`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mentee_accounts`
--
ALTER TABLE `mentee_accounts`
  MODIFY `mentee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk auto inc', AUTO_INCREMENT=131551;

--
-- AUTO_INCREMENT for table `mentor_accounts`
--
ALTER TABLE `mentor_accounts`
  MODIFY `mentor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
