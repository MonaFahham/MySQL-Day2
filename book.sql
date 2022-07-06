-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 07:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `street_name` varchar(100) NOT NULL,
  `house_number` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `city`, `country`, `street_name`, `house_number`, `district`) VALUES
(3, 'test', 'Iran', 'test', 105, 1100),
(4, '90.191.230.83', 'Dav', 'Armstead', 0, 0),
(5, '200.171.45.240', 'Ev', 'Dumphries', 0, 0),
(6, '191.149.128.192', 'Valentine', 'Tassell', 0, 0),
(7, '230.229.15.238', 'Perla', 'Hurdidge', 0, 0),
(8, '108.109.103.84', 'Joyann', 'Joslin', 0, 0),
(9, '224.97.244.65', 'Flo', 'Duker', 0, 0),
(10, '198.74.189.58', 'Garfield', 'Hoston', 0, 0),
(11, '245.217.108.114', 'Menard', 'Swancott', 0, 0),
(12, '27.239.167.62', 'Roanna', 'Groome', 0, 0),
(13, '193.174.231.208', 'Reggy', 'Buie', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(70) NOT NULL,
  `date_of_birth` date NOT NULL,
  `fk_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `date_of_birth`, `fk_address_id`) VALUES
(10, 'Merrill', 'Lowis', '1985-07-01', 3),
(11, 'Sharlene', 'MacGillreich', '1989-12-03', 3),
(12, 'Jennie', 'Smelley', '1994-04-06', 3),
(13, 'Killy', 'Rapport', '1972-11-07', 3),
(14, 'Thomasine', 'Balsdone', '1985-08-17', 3),
(15, 'Brad', 'Sarath', '1969-10-21', 3),
(16, 'Kingsly', 'Rawlence', '1982-05-05', 3),
(17, 'Bernette', 'Paxforde', '1996-05-18', 3),
(18, 'Maritsa', 'Gilchrist', '1967-05-13', 3),
(19, 'Sheela', 'Pebworth', '1973-02-11', 3),
(20, 'Pierson', 'Brettelle', '1999-05-12', 3),
(21, 'Rani', 'Heine', '1997-02-11', 3),
(22, 'Leeanne', 'Iacivelli', '1979-05-07', 3),
(23, 'Elliot', 'Clogg', '1984-11-01', 3),
(24, 'Zacharias', 'Tardiff', '1985-06-15', 3),
(25, 'Lorin', 'Densun', '1979-09-14', 3),
(26, 'Merrill', 'Lowis', '1985-07-01', 3),
(27, 'Sharlene', 'MacGillreich', '1989-12-03', 3),
(28, 'Jennie', 'Smelley', '1994-04-06', 3),
(29, 'Killy', 'Rapport', '1972-11-07', 3),
(30, 'Thomasine', 'Balsdone', '1985-08-17', 3),
(31, 'Brad', 'Sarath', '1969-10-21', 3),
(32, 'Kingsly', 'Rawlence', '1982-05-05', 3),
(33, 'Bernette', 'Paxforde', '1996-05-18', 3),
(34, 'Maritsa', 'Gilchrist', '1967-05-13', 3),
(35, 'Sheela', 'Pebworth', '1973-02-11', 3),
(36, 'Pierson', 'Brettelle', '1999-05-12', 3),
(37, 'Rani', 'Heine', '1997-02-11', 3),
(38, 'Leeanne', 'Iacivelli', '1979-05-07', 3),
(39, 'Elliot', 'Clogg', '1984-11-01', 3),
(40, 'Zacharias', 'Tardiff', '1985-06-15', 3),
(41, 'Lorin', 'Densun', '1979-09-14', 3),
(42, 'Zondra', 'Nipper', '1983-05-09', 3),
(43, 'Ketti', 'Peachment', '1997-06-06', 3),
(44, 'Nikolos', 'Tillett', '1975-09-01', 3),
(45, 'Maryl', 'Omar', '1974-06-14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(20000) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `read_date_start` date DEFAULT NULL,
  `read_date_end` date DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `fk_publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_to_author`
--

CREATE TABLE `book_to_author` (
  `fk_author_id` int(11) DEFAULT NULL,
  `fk_book_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(50) NOT NULL,
  `fk_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `fk_address_id` (`fk_address_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `book_to_author`
--
ALTER TABLE `book_to_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_to_author_ibfk_1` (`fk_author_id`),
  ADD KEY `book_to_author_ibfk_2` (`fk_book_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD KEY `fk_address_id` (`fk_address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book_to_author`
--
ALTER TABLE `book_to_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`fk_address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`);

--
-- Constraints for table `book_to_author`
--
ALTER TABLE `book_to_author`
  ADD CONSTRAINT `book_to_author_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_to_author_ibfk_2` FOREIGN KEY (`fk_book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`fk_address_id`) REFERENCES `address` (`address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
