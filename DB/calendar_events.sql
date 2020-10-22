-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 22, 2020 at 10:06 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar_events`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Test event 1', '2020-10-21', NULL, 0, '2020-10-22 08:55:43', '2020-10-22 01:00:29'),
(2, 'event2', '2020-10-23', '2020-10-23', 0, '2020-10-22 08:55:43', '2020-10-22 01:00:29'),
(3, 'event3', '2020-10-24', '2020-10-24', 0, '2020-10-22 08:55:43', '2020-10-22 01:00:29'),
(4, 'New Events', '2020-10-24', '2020-10-24', 0, '2020-10-22 01:00:29', '2020-10-22 01:01:40'),
(5, 'New Events', '2020-10-31', '2020-10-31', 0, '2020-10-22 01:00:29', '2020-10-22 01:01:40'),
(6, 'Test New events', '2020-10-21', '2020-10-21', 0, '2020-10-22 01:01:40', '2020-10-22 01:02:44'),
(7, 'Test New events', '2020-10-28', '2020-10-28', 0, '2020-10-22 01:01:40', '2020-10-22 01:02:44'),
(8, 'Test New events', '2020-10-31', '2020-10-31', 0, '2020-10-22 01:02:44', '2020-10-22 01:02:46'),
(9, 'Test New events', '2020-11-04', '2020-11-04', 0, '2020-10-22 01:02:44', '2020-10-22 01:02:46'),
(10, 'Test New events', '2020-11-07', '2020-11-07', 0, '2020-10-22 01:02:44', '2020-10-22 01:02:46'),
(11, 'Test New events', '2020-11-11', '2020-11-11', 0, '2020-10-22 01:02:44', '2020-10-22 01:02:46'),
(12, 'Test New events', '2020-11-14', '2020-11-14', 0, '2020-10-22 01:02:44', '2020-10-22 01:02:46'),
(13, 'Test New events', '2020-11-18', '2020-11-18', 0, '2020-10-22 01:02:44', '2020-10-22 01:02:46'),
(14, 'Test New events', '2020-10-31', '2020-10-31', 0, '2020-10-22 01:02:46', '2020-10-22 01:02:51'),
(15, 'Test New events', '2020-11-04', '2020-11-04', 0, '2020-10-22 01:02:46', '2020-10-22 01:02:51'),
(16, 'Test New events', '2020-11-07', '2020-11-07', 0, '2020-10-22 01:02:46', '2020-10-22 01:02:51'),
(17, 'Test New events', '2020-11-11', '2020-11-11', 0, '2020-10-22 01:02:46', '2020-10-22 01:02:51'),
(18, 'Test New events', '2020-11-14', '2020-11-14', 0, '2020-10-22 01:02:46', '2020-10-22 01:02:51'),
(19, 'Test New events', '2020-11-18', '2020-11-18', 0, '2020-10-22 01:02:46', '2020-10-22 01:02:51'),
(20, 'Test New events', '2020-10-31', '2020-10-31', 0, '2020-10-22 01:02:51', '2020-10-22 01:03:28'),
(21, 'Test New events', '2020-11-04', '2020-11-04', 0, '2020-10-22 01:02:51', '2020-10-22 01:03:28'),
(22, 'Test New events', '2020-11-07', '2020-11-07', 0, '2020-10-22 01:02:51', '2020-10-22 01:03:28'),
(23, 'Test New events', '2020-11-11', '2020-11-11', 0, '2020-10-22 01:02:51', '2020-10-22 01:03:28'),
(24, 'Test New events', '2020-11-14', '2020-11-14', 0, '2020-10-22 01:02:51', '2020-10-22 01:03:28'),
(25, 'Test New events', '2020-11-18', '2020-11-18', 0, '2020-10-22 01:02:51', '2020-10-22 01:03:28'),
(26, 'Test new Events', '2020-10-23', '2020-10-23', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(27, 'Test new Events', '2020-10-27', '2020-10-27', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(28, 'Test new Events', '2020-10-28', '2020-10-28', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(29, 'Test new Events', '2020-10-30', '2020-10-30', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(30, 'Test new Events', '2020-11-03', '2020-11-03', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(31, 'Test new Events', '2020-11-04', '2020-11-04', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(32, 'Test new Events', '2020-11-06', '2020-11-06', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(33, 'Test new Events', '2020-11-10', '2020-11-10', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(34, 'Test new Events', '2020-11-11', '2020-11-11', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(35, 'Test new Events', '2020-11-13', '2020-11-13', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(36, 'Test new Events', '2020-11-17', '2020-11-17', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(37, 'Test new Events', '2020-11-18', '2020-11-18', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(38, 'Test new Events', '2020-11-20', '2020-11-20', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(39, 'Test new Events', '2020-11-24', '2020-11-24', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(40, 'Test new Events', '2020-11-25', '2020-11-25', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(41, 'Test new Events', '2020-11-27', '2020-11-27', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(42, 'Test new Events', '2020-12-01', '2020-12-01', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(43, 'Test new Events', '2020-12-02', '2020-12-02', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(44, 'Test new Events', '2020-12-04', '2020-12-04', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(45, 'Test new Events', '2020-12-08', '2020-12-08', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(46, 'Test new Events', '2020-12-09', '2020-12-09', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(47, 'Test new Events', '2020-12-11', '2020-12-11', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(48, 'Test new Events', '2020-12-15', '2020-12-15', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(49, 'Test new Events', '2020-12-16', '2020-12-16', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(50, 'Test new Events', '2020-12-18', '2020-12-18', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(51, 'Test new Events', '2020-12-22', '2020-12-22', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(52, 'Test new Events', '2020-12-23', '2020-12-23', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(53, 'Test new Events', '2020-12-25', '2020-12-25', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(54, 'Test new Events', '2020-12-29', '2020-12-29', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(55, 'Test new Events', '2020-12-30', '2020-12-30', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(56, 'Test new Events', '2021-01-01', '2021-01-01', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(57, 'Test new Events', '2021-01-05', '2021-01-05', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28'),
(58, 'Test new Events', '2021-01-06', '2021-01-06', 1, '2020-10-22 01:03:28', '2020-10-22 01:03:28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
