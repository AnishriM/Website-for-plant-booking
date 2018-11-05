-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 08:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tree`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `phone`) VALUES
(1, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '', '0885688911'),
(2, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '', '0885688911'),
(3, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', 'qwerty', '0885688911'),
(4, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', 'qwertyu', '0885688911'),
(5, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', 'qwerty', '0885688911'),
(6, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', 'asdfgh', '0885688911'),
(7, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', 'thanks sir', '0885688911');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `tnname` varchar(255) NOT NULL,
  `tnum` int(10) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date1` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `email`, `phone`, `tnname`, `tnum`, `payment_id`, `message`, `date1`) VALUES
(2, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 5, 'MOJO8b03005A02454633', 'qwert', '2018-11-11'),
(3, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 5, 'MOJO8b03005A02454633', 'qwert', '2018-11-11'),
(4, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 5, 'MOJO8b03005A02454642', 'qwerty', '2018-11-17'),
(5, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 5, 'MOJO8b03005A02454644', 'qwerty', '2018-11-30'),
(6, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 5, 'MOJO8b03005A02454646', 'qwert', '2018-11-18'),
(7, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 2, 'MOJO8b03005A02454661', 'qwert', '2018-12-13'),
(8, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 5, 'MOJO8b04005A75275759', 'qwerty', '2018-11-24'),
(9, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 3, 'MOJO8b04005A75275777', 'hello sir', '2018-11-13'),
(10, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 20, 'MOJO8b04005A75275782', 'hello sir', '2018-11-21'),
(11, 'Atharva', 'atharvakango1@gmail.com ', '7588436341', 'jasmine', 10, 'MOJO8b04005A75275784', 'Please arrange that plants on time.', '2018-11-16'),
(12, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'mango', 5, 'MOJO8b04005A75275790', 'qwertyasdfgzxcvbn', '2019-02-02'),
(13, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'mango', 5, 'MOJO8b04005A75275841', 'wert', '2018-11-25'),
(14, 'sagar shriniwas mhantati', 'sagar.mantati@gmail.com', '8856889112', 'jasmine', 5, 'MOJO8b04005A75275859', 'i want this on time.....', '2018-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `tdata`
--

CREATE TABLE `tdata` (
  `tid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdata`
--

INSERT INTO `tdata` (`tid`, `name`, `price`) VALUES
(1, 'jasmine', 12),
(2, 'mango', 20),
(3, 'rose', 15),
(4, 'neem', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdata`
--
ALTER TABLE `tdata`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tdata`
--
ALTER TABLE `tdata`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
