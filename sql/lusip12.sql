-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2013 at 03:25 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lusip12`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_no` int(10) NOT NULL,
  `balance` int(10) NOT NULL,
  `transaction` int(10) NOT NULL,
  `transaction_type` set('0','1') NOT NULL,
  `timestamp` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `balance`, `transaction`, `transaction_type`, `timestamp`) VALUES
(10, 100080, 15000, 15000, '1', 1373431673),
(11, 100080, 17000, 2000, '1', 1373431868),
(12, 100080, 20000, 3000, '1', 1373431947),
(13, 100080, 19000, 1000, '0', 1373431994),
(16, 100080, 18000, 1000, '0', 1373438432),
(17, 100080, 17000, 1000, '0', 1373438589),
(18, 100080, 16800, 200, '0', 1373439115),
(19, 100080, 16700, 100, '0', 1373439423),
(20, 100081, 15000, 15000, '1', 1373431673),
(21, 100081, 17000, 2000, '1', 1373431868),
(22, 100081, 20000, 3000, '1', 1373431947),
(23, 100081, 19000, 1000, '0', 1373431994),
(24, 100081, 18000, 1000, '0', 1373438432),
(25, 100081, 17000, 1000, '0', 1373438589),
(26, 100081, 16800, 200, '0', 1373439115),
(27, 100081, 16700, 100, '0', 1373439423),
(28, 100081, 15935, 765, '0', 1373440701),
(29, 100081, 15735, 200, '0', 1373442825),
(30, 100081, 15435, 300, '0', 1373442843),
(31, 100081, 14635, 800, '0', 1373442907),
(32, 100081, 13135, 1500, '0', 1373512610),
(33, 100081, 8135, 5000, '0', 1375002327),
(34, 100081, 6127, 2008, '0', 1375098237),
(35, 100081, 5127, 1000, '0', 1375102205),
(36, 100081, 3604, 1523, '0', 1375106043),
(37, 100081, 3104, 500, '0', 1379017258);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `profile_image` varchar(50) CHARACTER SET utf8 NOT NULL,
  `account_no` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `profile_image`, `account_no`) VALUES
(10, 'aaditya.sharma', 'e10adc3949ba59abbe56e057f20f883e', 'Aaditya Sharma', 'Aaditya_Sharma_Profile_Image.jpg', 100080),
(11, 'username', '5f4dcc3b5aa765d61d8327deb882cf99', 'Barak Obama', 'Barak_Obama_Profile_Pic.jpg', 100081);

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE IF NOT EXISTS `user_activity` (
  `session_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `activity_log` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`session_id`, `username`, `ip_address`, `start_time`, `end_time`, `activity_log`) VALUES
(6, 'username', '', 1376642789, 1376642789, ' '),
(7, 'username', '', 1379016901, 1379016901, ' '),
(8, 'username', '', 1380288550, 1380288550, ' '),
(9, 'username', '', 1380289029, 1380289029, ' ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
