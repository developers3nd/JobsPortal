-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 11:36 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbjobsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `appid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `cv` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`appid`, `userid`, `jobid`, `cv`, `date`) VALUES
(1, 2, 4, 'M AQIB .NET.pdf', '2020-11-27'),
(2, 4, 4, 'Muhammad Aqib .NET.pdf', '2020-11-28'),
(3, 4, 3, 'Muhammad Aqib .NET.pdf', '2027-11-20'),
(4, 4, 3, 'M AQIB .NET.pdf', '2028-11-20'),
(5, 5, 7, 'bg9.jpg', '2028-11-20'),
(6, 5, 3, '01.jpg', '2028-11-20'),
(7, 6, 4, 'Asim CV (2).pdf', '2002-01-21'),
(8, 8, 3, 'Al Quran Online Academy.pdf', '2005-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE IF NOT EXISTS `employer` (
  `empid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`empid`, `name`, `email`, `password`, `type`) VALUES
(2, 'approxsol', 'ali@gmail.com', '123', 1),
(3, 'LG', 'lg123@gmail.com', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `jobid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `empid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `title`, `categories`, `description`, `salary`, `timing`, `location`, `empid`) VALUES
(3, 'php developer', 'ui/ux', 'intermediate level', '30000', '8 to 6pm', 'karachi', 2),
(4, 'C#', 'asp.net', 'intermediate level', '40000', '8 to 6pm', 'lahore', 2),
(6, 'graphic intern', 'graphic designer', 'adobe illustrator, photoshop etc', '30000', '8 to 6pm', 'karachi', 2),
(7, 'Manager', 'admin', 'Phd', '20000', '9am to 9pm', 'landhi , khuramabad', 3);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `profileid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `qulification` varchar(50) NOT NULL,
  `exp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `email`, `password`, `type`) VALUES
(2, 'usman', 'usman@gmail.com', '123', 2),
(4, 'zeeshan', 'zeeshan@gmail.com', '123', 2),
(5, 'arzoo', 'arzoo@gmail.com', '000', 2),
(6, 'akbar', 'akbar@gmail.com', '123', 2),
(7, 'demo', 'demo', '', 2),
(8, 'demo', 'demo@gmail.com', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`appid`),
  ADD KEY `FK_application` (`userid`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`),
  ADD KEY `FK_jobs` (`empid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profileid`),
  ADD KEY `FK_profile` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profileid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK_application` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
