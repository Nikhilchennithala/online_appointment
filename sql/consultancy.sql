-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 01:23 PM
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
-- Database: `consultancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `patient_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorreg`
--

CREATE TABLE `doctorreg` (
  `doc.id` int(11) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `qualification` varchar(15) NOT NULL,
  `certificate_no` int(10) NOT NULL,
  `department` varchar(20) NOT NULL,
  `clinic_address` varchar(20) NOT NULL,
  `clinic_timing` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorreg`
--

INSERT INTO `doctorreg` (`doc.id`, `doc_name`, `phone`, `email`, `qualification`, `certificate_no`, `department`, `clinic_address`, `clinic_timing`, `username`, `password`) VALUES
(3, 'ashiq', '9875466869', 'nikhilchennithala', 'mbbs', 103, 'cardio', 'lissie', '11 am - 4 pm', 'doctor', 'd123'),
(4, 'ashiq', '9875466869', 'nikhilchennithala', 'mbbs', 103, 'cardio', 'lissie', '11 am - 4 pm', 'doctor', '45');

-- --------------------------------------------------------

--
-- Table structure for table `patientreg`
--

CREATE TABLE `patientreg` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Age` varchar(5) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientreg`
--

INSERT INTO `patientreg` (`id`, `Name`, `Age`, `Phone`, `Gender`, `Address`, `password`) VALUES
(1, 'ashiq', '22', '9846686989', 'male', 'alappy', 'a123'),
(11, '  ', '  ', '  ', '  ', '  ', '  '),
(12, 'nikhil', '22', '9846686989', 'female', 'alappy', '123456'),
(13, '  ', '  ', '          ', '  ', '  ', '      '),
(14, '   ', '   ', '          ', '    ', '  ', '        '),
(15, '  ', '  ', '1234567890', '  ', '  ', '        ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `doctorreg`
--
ALTER TABLE `doctorreg`
  ADD PRIMARY KEY (`doc.id`);

--
-- Indexes for table `patientreg`
--
ALTER TABLE `patientreg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctorreg`
--
ALTER TABLE `doctorreg`
  MODIFY `doc.id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patientreg`
--
ALTER TABLE `patientreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
