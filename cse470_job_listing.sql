-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 08:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse470_job_listing`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(100) NOT NULL,
  `bookmark_company` int(100) NOT NULL,
  `bookmark_job_seeker` int(100) NOT NULL,
  `bookmark_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `company_logo` varchar(100) DEFAULT NULL,
  `company_details` text DEFAULT NULL,
  `account_type` varchar(100) NOT NULL,
  `company_document` varchar(100) DEFAULT NULL,
  `account_creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `always_null` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `email`, `password`, `company_logo`, `company_details`, `account_type`, `company_document`, `account_creation_date`, `always_null`) VALUES
(1, 'Bkash Company', 'abid@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9781506711980.jpg', 'Test Bkash Company', 'company', NULL, '2023-08-08 18:24:44', NULL),
(2, 'alsolin', 'alsolin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 'company', NULL, '2023-07-28 23:29:54', NULL),
(8, 'company', 'company@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 'company', NULL, '2023-07-29 00:29:54', NULL),
(9, 'sample1', 'sample1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'protibadi app.PNG', NULL, 'company', NULL, '2023-08-08 18:24:49', NULL),
(10, 'square', 'square@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '00.JPG', 'fbffbfb', 'company', NULL, '2023-08-08 18:24:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_posted`
--

CREATE TABLE `jobs_posted` (
  `job_id` int(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_company_id` int(100) NOT NULL,
  `job_details` text NOT NULL,
  `job_type` varchar(100) NOT NULL,
  `job_category` varchar(100) NOT NULL,
  `job_salary` int(100) NOT NULL,
  `job_creation_date` date NOT NULL,
  `job_expiration_date` date NOT NULL,
  `job_post_status` varchar(100) NOT NULL,
  `bkash_transaction` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs_posted`
--

INSERT INTO `jobs_posted` (`job_id`, `job_title`, `job_company_id`, `job_details`, `job_type`, `job_category`, `job_salary`, `job_creation_date`, `job_expiration_date`, `job_post_status`, `bkash_transaction`) VALUES
(2, 'Pathao IT', 2, 'This is for the business people, IT', 'Full Time', 'IT', 30000, '2023-07-21', '2023-08-09', 'Approved', ''),
(3, 'Foodpanda Manager', 1, 'This is for the business people', 'Full Time', 'Manager', 30000, '2023-07-21', '2023-08-09', 'Approved', ''),
(4, 'Google Manager', 2, 'This is for the business people', 'Part Time', 'Manager', 60000, '2023-07-21', '2023-08-09', 'Approved', ''),
(5, 'Tesla Data Entry', 2, 'This is for the business people', 'Part Time', 'Data Entry', 70000, '2023-07-21', '2023-08-09', 'Pending', ''),
(6, 'Walton IT', 8, 'IT Job Section from Walton', 'Full Time', 'IT', 20000, '2023-07-21', '2023-08-09', 'Pending', ''),
(7, 'Walton Manager', 8, 'IT Job Section from Walton', 'Full Time', 'Manager', 20000, '0000-00-00', '2023-08-09', 'Pending', ''),
(8, 'Subway Manager', 2, 'Manager for sub way', 'Full Time', 'Manager', 20000, '2023-07-21', '2023-08-09', 'Pending', ''),
(9, 'Bracu Teacher', 2, 'Teacher for Brac University', 'Full Time', 'Teacher', 98000, '2023-07-21', '2023-08-09', 'Pending', ''),
(10, 'Bkash IT', 1, 'Bkash IT', 'Full Time', 'IT', 40000, '2023-07-21', '2023-08-09', 'Pending', NULL),
(11, 'Bkash Sales Manager', 1, 'Sales Manager for Bkash', 'Full Time', 'Manager', 57777, '2023-07-21', '2023-08-09', 'Pending', NULL),
(12, 'itttt', 10, 'dbsfsfbnf', 'Full Time', 'Others', 3000, '2023-07-21', '2023-08-09', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE `job_application` (
  `application_id` int(11) NOT NULL,
  `job_post_id` int(11) NOT NULL,
  `job_seeker_id` int(11) NOT NULL,
  `job_seeker_cv` varchar(100) DEFAULT NULL,
  `application_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `job_application_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_application`
--

INSERT INTO `job_application` (`application_id`, `job_post_id`, `job_seeker_id`, `job_seeker_cv`, `application_status`, `job_application_date`) VALUES
(1, 4, 1, NULL, 'Approve', '2023-08-01 12:18:25'),
(2, 4, 17, NULL, 'Pending', '2023-08-01 13:18:28'),
(3, 3, 16, NULL, 'Pending', '2023-08-01 14:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `portfolio` text DEFAULT NULL,
  `education_document` varchar(100) DEFAULT NULL,
  `security_answer` varchar(100) NOT NULL,
  `nid_picture` varchar(100) DEFAULT NULL,
  `account_creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bookmarked_company` varchar(100) DEFAULT NULL,
  `account_type` varchar(100) NOT NULL,
  `always_null` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`id`, `name`, `email`, `password`, `picture`, `portfolio`, `education_document`, `security_answer`, `nid_picture`, `account_creation_date`, `bookmarked_company`, `account_type`, `always_null`) VALUES
(16, 'final test', 'finaltest@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Screenshot_20230420-154326.png', 'Now my portfolio is complete', 'CSE472Activity15.pdf', 'c988fa7c33ce43962b9803702b747a35', 'Screenshot_20230420-164104.png', '2023-07-25 22:41:10', NULL, 'job_seeker', NULL),
(17, 'final1', 'final@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '337159189_802999737339285_2911540560169458163_n.jpg', 'This is the portfolio for the user final1', NULL, 'c988fa7c33ce43962b9803702b747a35', '5.jpg', '2023-07-26 00:47:12', NULL, 'job_seeker', NULL),
(19, 'admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'c988fa7c33ce43962b9803702b747a35', '', '2023-07-26 01:52:14', NULL, 'admin', NULL),
(20, 'hasme', 'hasme@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '00.JPG', NULL, NULL, 'd077f244def8a70e5ea758bd8352fcd8', '0.JPG', '2023-07-26 02:41:10', NULL, 'job_seeker', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(100) NOT NULL,
  `message_sender_id` int(100) NOT NULL,
  `message_receiver_id` int(100) NOT NULL,
  `message_detail` varchar(100) NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_posted`
--
ALTER TABLE `jobs_posted`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs_posted`
--
ALTER TABLE `jobs_posted`
  MODIFY `job_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `job_application`
--
ALTER TABLE `job_application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_seeker`
--
ALTER TABLE `job_seeker`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
