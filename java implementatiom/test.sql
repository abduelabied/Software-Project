-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2019 at 12:25 AM
-- Server version: 5.5.27-log
-- PHP Version: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `Friendname` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `isAccepted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`Friendname`, `Username`, `isAccepted`) VALUES
('ccc', 'jjjj', 0),
('bbbb', 'AmrGamal', 0),
('AmrGamal', 'ccc', 1),
('eee', 'ccc', 0),
('AmrGamal', 'fff', 0),
('ccc', 'bbbb', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(50) NOT NULL DEFAULT 'primary key',
  `Password` int(11) NOT NULL,
  `Confirmpassword` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Acctype` varchar(50) NOT NULL DEFAULT 'Normal',
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Confirmpassword`, `Email`, `Acctype`) VALUES
('AmrGamal', 0, 0, 'AMR', 'Premium'),
('bbbb', 2222, 2222, 'bbbb', 'Premium'),
('ccc', 3333, 1234, 'cccc', 'Normal'),
('ddd', 4444, 0, 'dddd', 'Normal'),
('eee', 5555, 5555, 'eeee', 'Normal'),
('fff', 6666, 6666, 'ffff', 'Normal'),
('gggg', 0, 0, 'gggg', 'Normal'),
('ZZZZ', 1234, 1234, '9999', 'Normal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
