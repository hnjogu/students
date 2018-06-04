-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 08:45 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `adminid` bigint(4) NOT NULL,
  `password` varchar(50) NOT NULL,
  `adminname` varchar(80) NOT NULL,
  `address` text NOT NULL,
  `contactno` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`adminid`, `password`, `adminname`, `address`, `contactno`) VALUES
(1, 'afa939adf52ddcbd204c814afcdd754a', 'daa', 'user id 1 password daa', '09882'),
(123, '83ec45960b80c035a0068df1d9df5aa8', 'ADMIN', '123 password admin123', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attid` bigint(4) NOT NULL,
  `studid` varchar(20) NOT NULL,
  `subid` bigint(4) NOT NULL,
  `totalclasses` int(2) NOT NULL,
  `attendedclasses` int(2) NOT NULL,
  `percentage` double(4,2) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attid`, `studid`, `subid`, `totalclasses`, `attendedclasses`, `percentage`, `comment`) VALUES
(6, '1', 1, 12, 12, 99.99, 'sfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` bigint(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` bigint(4) NOT NULL,
  `coursename` varchar(40) NOT NULL,
  `comment` text NOT NULL,
  `coursekey` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `coursename`, `comment`, `coursekey`) VALUES
(1, 'Bachelor of Arts', 'This Course is related to Arts field.', 'BA'),
(2, 'Bachelor of Commerce', 'This course is related to commerce field.', 'BCom'),
(3, 'Bachelor of Bussiness Management', 'This course is related to Bussiness field.', 'BBM'),
(4, 'Bachelor of Science', 'This field is related to science field.', 'BSc'),
(5, 'Bachelor of Computer Application', 'This field is related to computer field.', 'BCA'),
(6, 'Bachelor of Social Work', 'This field is related to social welfare field.', 'BSW');

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `examid` bigint(4) NOT NULL,
  `studid` varchar(20) NOT NULL,
  `subid` bigint(4) NOT NULL,
  `courseid` bigint(4) NOT NULL,
  `internaltype` varchar(20) NOT NULL,
  `maxmarks` int(2) NOT NULL,
  `scored` int(2) NOT NULL,
  `percentage` float NOT NULL,
  `result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `lecid` bigint(4) NOT NULL,
  `password` varchar(50) NOT NULL,
  `courseid` bigint(4) NOT NULL,
  `lecname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`lecid`, `password`, `courseid`, `lecname`, `gender`, `address`, `contactno`) VALUES
(1, '0cc175b9c0f1b6a831c399e269772661', 5, 'geetha', 'Female', 'fgv', '9876543211');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semid` bigint(4) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `studid` varchar(25) NOT NULL,
  `studfname` varchar(20) NOT NULL,
  `studlname` varchar(20) NOT NULL,
  `fathername` varchar(25) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `courseid` bigint(4) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`studid`, `studfname`, `studlname`, `fathername`, `gender`, `address`, `contactno`, `courseid`, `semester`, `dob`) VALUES
('1', 'sam', 'a', 'asdf', 'Male', 'xcv', '452757855', 5, '1', '1996-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` bigint(4) NOT NULL,
  `subname` varchar(20) NOT NULL,
  `courseid` bigint(4) NOT NULL,
  `lecid` bigint(4) NOT NULL,
  `subtype` varchar(25) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `subname`, `courseid`, `lecid`, `subtype`, `semester`, `comment`) VALUES
(1, 'English', 1, 0, 'Language', '1', 'fhjfbg'),
(3, 'Accounting', 3, 0, 'Theory', '1', 'jsjk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attid`),
  ADD KEY `studid` (`studid`),
  ADD KEY `subid` (`subid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`examid`),
  ADD KEY `subid` (`subid`),
  ADD KEY `studid` (`studid`),
  ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`lecid`),
  ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semid`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`studid`),
  ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`),
  ADD KEY `courseid` (`courseid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `adminid` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attid` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `examid` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `lecid` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semid` bigint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`studid`) REFERENCES `studentdetails` (`studid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `examination`
--
ALTER TABLE `examination`
  ADD CONSTRAINT `examination_ibfk_1` FOREIGN KEY (`studid`) REFERENCES `studentdetails` (`studid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examination_ibfk_2` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examination_ibfk_3` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lectures_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD CONSTRAINT `studentdetails_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
