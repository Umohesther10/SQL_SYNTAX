-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 13, 2020 at 11:05 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tiidelab`
--
CREATE DATABASE IF NOT EXISTS `tiidelab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tiidelab`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `account_number` varchar(11) DEFAULT NULL,
  `balance` decimal(38,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `account_number`, `balance`) VALUES
(1, 1, '3060578965', '3000.00'),
(2, 2, '305689657', '4500.89'),
(3, 3, '348955793', '5007.60'),
(4, 4, '1018345678', '10000.79'),
(5, 5, '3089675432', '600.50'),
(6, 6, '0056785623', '34.89'),
(7, 7, '3045679524', '500000.00'),
(8, 8, '3065679524', '600000.00'),
(9, 9, '5689012384', '400000.99'),
(10, 10, '0156523789', '700800.99');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `transactionType` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `transactionType`) VALUES
(1, 1, '3400.00', 'credit'),
(2, 2, '501.00', 'debit'),
(3, 3, '601.00', 'credit'),
(4, 4, '5001.00', 'debit'),
(5, 5, '6001.00', 'credit'),
(6, 6, '4501.00', 'debit'),
(7, 7, '5501.00', 'credit'),
(8, 8, '50001.00', 'debit'),
(9, 9, '6801.00', 'credit'),
(10, 10, '5201.00', 'debit');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`) VALUES
(1, 'Esther', 'Mercy'),
(2, 'John', 'Smith'),
(3, 'Esther', 'Umoh'),
(4, 'John', 'Derek'),
(5, 'Damilola', 'Oladimeji'),
(6, 'Dami', 'Azeez'),
(7, 'Blessing', 'Alekwe'),
(8, 'Chinasa', 'Blessing'),
(9, 'Taiwo', 'Adeyi'),
(10, 'Bunmi', 'Joyce');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
