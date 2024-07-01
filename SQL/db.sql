-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 12:12 PM
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
-- Database: `e_uni`
--
CREATE DATABASE IF NOT EXISTS `e_uni` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `e_uni`;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `genderId` int(1) NOT NULL,
  `gender` varchar(20) NOT NULL DEFAULT '',
  `datecreated` datetime DEFAULT current_timestamp(),
  `dateupdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`genderId`, `gender`, `datecreated`, `dateupdated`) VALUES
(1, 'male', '2024-06-28 17:15:33', '2024-06-28 17:15:33'),
(2, 'female', '2024-06-28 17:15:33', '2024-06-28 17:15:33'),
(3, 'rather not say', '2024-06-28 17:15:33', '2024-06-28 17:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `roleId` int(1) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT '',
  `datecreated` datetime DEFAULT current_timestamp(),
  `dateupdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `role`, `datecreated`, `dateupdated`) VALUES
(1, 'admin', '2024-06-28 17:13:22', '2024-06-28 17:13:22'),
(2, 'student', '2024-06-28 17:13:22', '2024-06-28 17:13:22'),
(3, 'instructor', '2024-06-28 17:13:22', '2024-06-28 17:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` bigint(11) NOT NULL,
  `fullname` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `user_roleId` int(1) NOT NULL DEFAULT 0,
  `datecreated` datetime DEFAULT current_timestamp(),
  `dateupdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fullname`, `username`, `email`, `password`, `user_roleId`, `datecreated`, `dateupdated`) VALUES
(124, 'Amos ', 'amos1234', 'amos@1234gmail.com', '23455', 1, '2024-07-01 13:09:36', '2024-07-01 13:09:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`genderId`),
  ADD UNIQUE KEY `gender` (`gender`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `genderId` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `messageId` int(1) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(60) NOT NULL DEFAULT '',
  `sender_email` varchar(60) NOT NULL DEFAULT '',
  `subject_line` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `dateupdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `messages`
--

TRUNCATE TABLE `messages`;
--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageId`, `sender_name`, `sender_email`, `subject_line`, `message`, `datecreated`, `dateupdated`) VALUES
(1, 'alexander', 'alexokama@yahoo.com', 'eLearning Support', 'Alex - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2024-06-13 15:29:15', '2024-06-20 15:43:27'),
(4, 'Anami', 'amani@yahoo.com', 'AMS Support', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit ', '2024-06-20 14:42:24', '2024-06-20 14:42:24'),
(6, 'James', 'james@yahoo.com', 'AMS Support', 'james pero - Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-06-20 14:49:12', '2024-06-20 15:46:41');
