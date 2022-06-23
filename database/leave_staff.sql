-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 09:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_staff`
--
CREATE DATABASE IF NOT EXISTS `leave_staff` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `leave_staff`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Creation: Mar 26, 2022 at 10:32 AM
-- Last update: May 14, 2022 at 06:34 AM
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Truncate table before insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Dumping data for table `admin`
--

INSERT DELAYED IGNORE INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-05-07 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--
-- Creation: Mar 26, 2022 at 10:32 AM
-- Last update: May 14, 2022 at 06:37 AM
--

DROP TABLE IF EXISTS `tbldepartments`;
CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbldepartments`:
--

--
-- Truncate table before insert `tbldepartments`
--

TRUNCATE TABLE `tbldepartments`;
--
-- Dumping data for table `tbldepartments`
--

INSERT DELAYED IGNORE INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `CreationDate`) VALUES
(2, 'Information Technologies', 'ICT', '2022-05-10 07:19:37'),
(3, 'Library', 'LIb', '2022-05-10 08:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--
-- Creation: Mar 26, 2022 at 10:32 AM
-- Last update: May 14, 2022 at 06:48 AM
--

DROP TABLE IF EXISTS `tblemployees`;
CREATE TABLE `tblemployees` (
  `emp_id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tblemployees`:
--

--
-- Truncate table before insert `tblemployees`
--

TRUNCATE TABLE `tblemployees`;
--
-- Dumping data for table `tblemployees`
--

INSERT DELAYED IGNORE INTO `tblemployees` (`emp_id`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`) VALUES
(1, 'Janes', 'Martins', 'janobe@gmail.com', '36d59e2369f00c4d9f336acf4408bae9', 'Male', '3 February, 1990', 'ICT', 'N NEPO', '30', '0248865955', 1, '2022-05-10 11:29:59', 'Staff', 'NO-IMAGE-AVAILABLE.jpg'),
(2, 'Edem', 'Mcwilliams', 'james@gmail.com', 'b4cc344d25a2efe540adbf2678e2304c', 'Male', '3 February, 1990', 'ICT', 'N NEPO', '30', '8587944255', 1, '2022-05-10 13:40:02', 'Admin', 'photo2.jpg'),
(3, 'Tisha', 'Patel', 'tishapatel0411@gmail.com', '05e1ae75ec96e66511116a280ddee34e', 'female', '04 November 2002', 'ICT', 'krishnanand', '30', '+9170163926', 1, '2022-05-09 11:01:12', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(4, 'riya', 'rana', 'riya@gmail.com', '3153be13ca91e847668fbf430757a0b5', 'female', '03 May 2000', 'LIb', 'windpole', '10', '098374932', 1, '2022-05-09 11:19:18', 'Staff', 'NO-IMAGE-AVAILABLE.jpg'),
(5, 'rome', 'patel', 'rome@gmail.com', '60d99e58d66a5e0f4f89ec3ddd1d9a80', 'male', '03 May 2002', 'LIb', 'newpole', '30', '37892873', 1, '2022-05-09 11:43:55', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(6, 'aanya', 'patel', 'aanya@gmail.com', '6d1938f3970922e2d75e4196dc176c0c', 'female', '04 May 1994', 'LIb', 'nextside', '30', '8903883434', 1, '2022-05-14 06:47:56', 'Admin', 'NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--
-- Creation: Mar 26, 2022 at 10:32 AM
-- Last update: May 14, 2022 at 06:57 AM
--

DROP TABLE IF EXISTS `tblleaves`;
CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` date NOT NULL,
  `AdminRemark` mediumtext DEFAULT NULL,
  `registra_remarks` mediumtext NOT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT 0,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `num_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tblleaves`:
--

--
-- Truncate table before insert `tblleaves`
--

TRUNCATE TABLE `tblleaves`;
--
-- Dumping data for table `tblleaves`
--

INSERT DELAYED IGNORE INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `registra_remarks`, `AdminRemarkDate`, `Status`, `admin_status`, `IsRead`, `empid`, `num_days`) VALUES
(20, 'medical ', '16-05-2022', '28-05-2022', 'sick', '2022-05-14', NULL, '', NULL, 0, 0, 0, 4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--
-- Creation: Mar 26, 2022 at 10:32 AM
-- Last update: May 14, 2022 at 06:55 AM
--

DROP TABLE IF EXISTS `tblleavetype`;
CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `date_from` varchar(200) NOT NULL,
  `date_to` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tblleavetype`:
--

--
-- Truncate table before insert `tblleavetype`
--

TRUNCATE TABLE `tblleavetype`;
--
-- Dumping data for table `tblleavetype`
--

INSERT DELAYED IGNORE INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date_from`, `date_to`, `CreationDate`) VALUES
(9, 'casual', 'casual', '09-05-2022', '19-06-2022', '2022-05-14 06:54:42'),
(10, 'medical ', 'medically ', '12-05-2022', '30-06-2022', '2022-05-14 06:55:25'),
(11, 'other', '-', '13-05-2022', '06-08-2022', '2022-05-14 06:55:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table admin
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table tbldepartments
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table tblemployees
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table tblleaves
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table tblleavetype
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for database leave_staff
--
-- Error reading data for table phpmyadmin.pma__bookmark: #1100 - Table 'pma__bookmark' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__relation: #1100 - Table 'pma__relation' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__savedsearches: #1100 - Table 'pma__savedsearches' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__central_columns: #1100 - Table 'pma__central_columns' was not locked with LOCK TABLES
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
