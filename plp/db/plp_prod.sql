-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 02:05 PM
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
  `intl_student` tinyint(1) DEFAULT NULL,
  `first_gen_student` tinyint(1) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `street_address` varchar(254) DEFAULT NULL,
  `city` varchar(85) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip_code` varchar(12) DEFAULT NULL,
  `spoken_langs` varchar(254) NOT NULL,
  `food_allergies` varchar(254) DEFAULT NULL,
  `personal_email` varchar(254) NOT NULL,
  `unt_email` varchar(254) NOT NULL,
  `disclosure_check` tinyint(1) NOT NULL,
  `release_check` tinyint(1) NOT NULL,
  `specific_check` tinyint(1) NOT NULL,
  `inform_check` tinyint(1) NOT NULL,
  `revoke_check` tinyint(1) NOT NULL,
  `signature` varchar(150) NOT NULL,
  `signature_date` date NOT NULL,
  `major` varchar(30) NOT NULL,
  `concentrations` varchar(254) DEFAULT NULL,
  `minor` varchar(50) DEFAULT NULL,
  `college` varchar(100) NOT NULL,
  `honors` tinyint(1) NOT NULL,
  `gpa` decimal(4,3) NOT NULL,
  `class_level` varchar(10) NOT NULL,
  `graduation_date` date NOT NULL,
  `semester_hours` int(2) UNSIGNED NOT NULL,
  `employment_status` tinyint(1) NOT NULL,
  `employer_name` varchar(30) DEFAULT NULL,
  `work_hours` int(3) UNSIGNED DEFAULT NULL,
  `clubs` varchar(254) DEFAULT NULL,
  `club_hours` int(3) DEFAULT NULL,
  `plp_discovery_method` varchar(70) DEFAULT NULL,
  `plp_contact` varchar(70) DEFAULT NULL,
  `travel` tinyint(1) NOT NULL,
  `transportation` tinyint(1) NOT NULL,
  `mentor_pref` varchar(254) DEFAULT NULL,
  `goals` varchar(254) DEFAULT NULL,
  `interests` varchar(254) DEFAULT NULL,
  `industry_pref` varchar(254) DEFAULT NULL,
  `gender_pref_check` tinyint(1) NOT NULL,
  `gender_pref` varchar(22) DEFAULT NULL,
  `meeting_check` tinyint(1) NOT NULL,
  `match_check` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `mentor_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `preferred_name` varchar(70) DEFAULT NULL,
  `last_name` varchar(70) NOT NULL,
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
  `professional_exp` varchar(254) DEFAULT NULL,
  `plp_ref` varchar(100) DEFAULT NULL,
  `plp_ref_email` varchar(254) DEFAULT NULL,
  `plp_ref_affil` varchar(254) DEFAULT NULL,
  `matching_check` tinyint(1) NOT NULL,
  `meeting_check` tinyint(1) NOT NULL,
  `pii_share_check` tinyint(1) NOT NULL,
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
  `certifications` varchar(100) DEFAULT NULL,
  `academic_affils` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `idx_mentor_id` (`mentor_id`),
  ADD KEY `idx_mentee_id` (`mentee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentees`
--
ALTER TABLE `mentees`
  MODIFY `mentee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk auto inc';

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `mentor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentor_mentee`
--
ALTER TABLE `mentor_mentee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
