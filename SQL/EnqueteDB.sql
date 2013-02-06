-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2013 at 10:07 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `EnqueteDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `enquete_id` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE IF NOT EXISTS `choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `choice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`id`, `question_id`, `choice`) VALUES
(1, 1, 'Dit is het eerste antwoord'),
(2, 1, '2de antwoord van de eerste vraag'),
(3, 7, 'Java'),
(4, 7, 'PHP'),
(5, 7, 'C++'),
(6, 7, 'Ruby');

-- --------------------------------------------------------

--
-- Table structure for table `enquete`
--

CREATE TABLE IF NOT EXISTS `enquete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `enquete`
--

INSERT INTO `enquete` (`id`, `name`) VALUES
(1, 'Eerste enquete op de site'),
(2, 'Programmeren en Java');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE IF NOT EXISTS `favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `enquete_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `username`, `enquete_id`) VALUES
(9, 'admin', 1),
(11, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `finished`
--

CREATE TABLE IF NOT EXISTS `finished` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `enquete_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `enquete_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `type`, `enquete_id`, `question`) VALUES
(1, 0, 1, 'Wat zal de eerste vraag zijn?'),
(2, 1, 1, 'Werkt het?'),
(3, 2, 1, 'Hoe goed bevalt deze site op een schaal van 1 tot 5?'),
(4, 0, 0, ''),
(5, 1, 2, 'Waarvoor gebruikt u uw programmeer vaardigheden gewoonlijks?'),
(6, 2, 2, 'Op een schaal van 1 tot 5 hoe gevorderd bent u met Java?'),
(7, 0, 2, 'Welke programmeertaal gebruikt u het meest voor het ontwikkelen van websites?');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
