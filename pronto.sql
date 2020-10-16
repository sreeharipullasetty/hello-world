-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 12:15 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pronto`
--

-- --------------------------------------------------------

--
-- Table structure for table `document_details`
--

CREATE TABLE `document_details` (
  `doc_id` bigint(20) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `modified_filename` varchar(200) NOT NULL,
  `url` varchar(500) NOT NULL,
  `username` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_details`
--

INSERT INTO `document_details` (`doc_id`, `filename`, `modified_filename`, `url`, `username`, `status`) VALUES
(17, 'test.java', 'test_990335245.java', '', 'sreehari918', 'Not Started'),
(19, 'New Text Document.txt', 'New Text Document_956652915.txt', '', 'sreehari918', 'Not Started');

-- --------------------------------------------------------

--
-- Table structure for table `inverted_index`
--

CREATE TABLE `inverted_index` (
  `keyword` varchar(200) NOT NULL,
  `doc_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inverted_index`
--

INSERT INTO `inverted_index` (`keyword`, `doc_id`) VALUES
('class', '17 '),
('test', '17 '),
('public', '17 '),
('static', '17 '),
('void', '17 '),
('main', '17 '),
('string', '17 '),
('args', '17 '),
('for', '17 '),
('int', '17 '),
('i', '17 19 '),
('0', '17 '),
('10', '17 '),
('systemoutprintln', '17 '),
('\"sreehari\"', '17 '),
('my', '19 '),
('name', '19 '),
('is', '19 '),
('sreehari', '19 '),
('am', '19 '),
('working', '19 '),
('infrrd', '19 '),
('as', '19 '),
('senior', '19 '),
('software', '19 '),
('engineer', '19 ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `level`, `status`) VALUES
('sreehari918', 'Sasisree@918', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `fullname`, `email`, `mobile`, `level`) VALUES
('sreehari918', 'Sreehari Pullasetty', 'sreeharicse1805@gmail.com', '9493455314', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document_details`
--
ALTER TABLE `document_details`
  ADD PRIMARY KEY (`doc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document_details`
--
ALTER TABLE `document_details`
  MODIFY `doc_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
