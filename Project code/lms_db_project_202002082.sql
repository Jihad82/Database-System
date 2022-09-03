-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 08:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db_project_202002082`
--

-- --------------------------------------------------------

--
-- Table structure for table `lms_book_details`
--

CREATE TABLE `lms_book_details` (
  `BOOK_CODE` varchar(10) NOT NULL,
  `BOOK_TITLE` varchar(50) NOT NULL,
  `CATEGORY` varchar(15) NOT NULL,
  `AUTHOR` varchar(30) NOT NULL,
  `PUBLICATION` varchar(30) DEFAULT NULL,
  `PUBLISH_DATE` date DEFAULT NULL,
  `BOOK_EDITION` int(2) DEFAULT NULL,
  `PRICE` decimal(8,2) NOT NULL,
  `RACK_NUM` varchar(3) DEFAULT NULL,
  `DATE_ARRIVAL` date NOT NULL,
  `SUPPLIER_ID` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lms_book_details`
--

INSERT INTO `lms_book_details` (`BOOK_CODE`, `BOOK_TITLE`, `CATEGORY`, `AUTHOR`, `PUBLICATION`, `PUBLISH_DATE`, `BOOK_EDITION`, `PRICE`, `RACK_NUM`, `DATE_ARRIVAL`, `SUPPLIER_ID`) VALUES
('BL000002', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt', 'Tata Mcgraw Hill ', '2011-10-10', 5, '750.00', 'A1', '2011-05-10', 'S03'),
('BL000003', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel', 'Prentice Hall', '1999-05-10', 6, '600.00', 'A1', '2012-05-10', 'S01'),
('BL000004', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt', 'Tata Mcgraw Hill ', '2011-10-10', 5, '750.00', 'A1', '2012-05-11', 'S01'),
('BL000005', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel', 'Prentice Hall', '1999-12-10', 6, '600.00', 'A1', '2012-05-11', 'S01'),
('BL000006', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt', 'Tata Mcgraw Hill ', '2011-10-10', 5, '750.00', 'A1', '2012-05-12', 'S03'),
('BL000007', 'Let Us C', 'C', 'Yashavant Kanetkar ', 'BPB Publications', '2010-12-11', 9, '500.00', 'A3', '2010-11-03', 'S03'),
('BL000008', 'Let Us C', 'C', 'Yashavant Kanetkar ', 'BPB Publications', '2010-05-12', 9, '500.00', 'A3', '2011-08-09', 'S04'),
('BL000009', 'Let Us C#', 'C', 'Yashavant Kanetkar ', 'BPB Publications', '2010-05-12', 9, '550.00', 'A3', '2011-08-09', 'S04'),
('BL000010', 'Java ForvDummies', 'JAVA', 'Paul J. Deitel', 'Prentice Hall', '1999-12-10', 6, '575.00', 'A1', '2011-05-10', 'S01'),
('BL000011', 'Let Us C++', 'C', 'Yashavant Kanetkar ', 'BPB Publications', '2010-05-12', 9, '650.00', 'A3', '2011-08-09', 'S04');

-- --------------------------------------------------------

--
-- Table structure for table `lms_book_issue`
--

CREATE TABLE `lms_book_issue` (
  `BOOK_ISSUE_NO` int(11) NOT NULL,
  `MEMBER_ID` varchar(10) NOT NULL,
  `BOOK_CODE` varchar(10) NOT NULL,
  `DATE_ISSUE` date NOT NULL,
  `DATE_RETURN` date NOT NULL,
  `DATE_RETURNED` date DEFAULT NULL,
  `FINE_RANGE` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lms_book_issue`
--

INSERT INTO `lms_book_issue` (`BOOK_ISSUE_NO`, `MEMBER_ID`, `BOOK_CODE`, `DATE_ISSUE`, `DATE_RETURN`, `DATE_RETURNED`, `FINE_RANGE`) VALUES
(1, 'LM001', 'BL000010', '2012-05-01', '2012-05-16', '2012-05-16', 'R0'),
(2, 'LM002', 'BL000002', '2012-05-01', '2012-05-06', '2012-05-16', 'R2'),
(3, 'LM003', 'BL000007', '2012-04-01', '2012-04-16', '2012-04-20', 'R1'),
(4, 'LM004', 'BL000005', '2012-04-01', '2012-04-16', '2012-04-20', 'R1'),
(5, 'LM005', 'BL000008', '2012-03-30', '2012-04-15', '2012-04-20', 'R1'),
(6, 'LM005', 'BL000008', '2012-04-20', '2012-05-05', '2012-05-05', 'R0'),
(7, 'LM003', 'BL000007', '2012-04-22', '2012-05-07', '2012-05-25', 'R4');

-- --------------------------------------------------------

--
-- Table structure for table `lms_fine_details`
--

CREATE TABLE `lms_fine_details` (
  `FINE_RANGE` varchar(3) NOT NULL,
  `FINE_AMOUNT` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lms_fine_details`
--

INSERT INTO `lms_fine_details` (`FINE_RANGE`, `FINE_AMOUNT`) VALUES
('R0', '0.00'),
('R1', '20.00'),
('R2', '50.00'),
('R3', '75.00'),
('R4', '100.00'),
('R5', '150.00'),
('R6', '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `lms_members`
--

CREATE TABLE `lms_members` (
  `MEMBER_ID` varchar(10) NOT NULL,
  `MEMBER_NAME` varchar(30) NOT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `DATE_REGISTER` date NOT NULL,
  `DATE_EXPIRE` date DEFAULT NULL,
  `MEMBERSHIP_STATUS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lms_members`
--

INSERT INTO `lms_members` (`MEMBER_ID`, `MEMBER_NAME`, `CITY`, `DATE_REGISTER`, `DATE_EXPIRE`, `MEMBERSHIP_STATUS`) VALUES
('LM001', 'JIHAD', 'MIRPUR 2', '2012-02-12', '2013-02-11', 'Temporary'),
('LM002', 'BELAL', 'SHAWRAPARA', '2012-04-10', '2013-04-09', 'Temporary'),
('LM003', 'JALAL', 'KAZIPARA', '2012-05-13', '2013-05-12', 'Permanent'),
('LM004', 'SHUBRATO', 'BADDA', '2012-04-22', '2013-04-21', 'Temporary'),
('LM005', 'NURUL', 'PURAN DHAKA', '2012-03-30', '2013-05-16', 'Permanent'),
('LM006', 'RAJIN', 'BONANI', '2012-04-12', '2013-05-16', 'Temporary');

-- --------------------------------------------------------

--
-- Table structure for table `lms_suppliers_details`
--

CREATE TABLE `lms_suppliers_details` (
  `SUPPLIER_ID` varchar(3) NOT NULL,
  `SUPPLIER_NAME` varchar(30) NOT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `CONTACT` bigint(10) NOT NULL,
  `EMAIL` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lms_suppliers_details`
--

INSERT INTO `lms_suppliers_details` (`SUPPLIER_ID`, `SUPPLIER_NAME`, `ADDRESS`, `CONTACT`, `EMAIL`) VALUES
('S01', 'SHOPNO BOOKS', 'UTTARA', 1989412355, 'shopno@gmail.co'),
('S02', 'JK Stores', 'MIRPUR', 1794012345, 'jks@yahoo.com'),
('S03', 'ROSE BOOK STORE', 'FARMGET', 1944441122, 'rose@gmail.com'),
('S04', 'DHAKA STORE', 'SHAWRAPARA', 1300014522, 'sha@gmail.com'),
('S05', 'BOOK GALLARY', 'NILLKHET', 1820000013, 'nill@gmail.com'),
('S06', 'DESH BOOK STORE', 'BADDA', 1655623105, 'desh@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lms_book_details`
--
ALTER TABLE `lms_book_details`
  ADD PRIMARY KEY (`BOOK_CODE`),
  ADD KEY `LMS_cts41` (`SUPPLIER_ID`);

--
-- Indexes for table `lms_book_issue`
--
ALTER TABLE `lms_book_issue`
  ADD PRIMARY KEY (`BOOK_ISSUE_NO`),
  ADD KEY `LMS_Mem` (`MEMBER_ID`),
  ADD KEY `LMS_BookDetail` (`BOOK_CODE`),
  ADD KEY `LMS_FineDetail` (`FINE_RANGE`);

--
-- Indexes for table `lms_fine_details`
--
ALTER TABLE `lms_fine_details`
  ADD PRIMARY KEY (`FINE_RANGE`);

--
-- Indexes for table `lms_members`
--
ALTER TABLE `lms_members`
  ADD PRIMARY KEY (`MEMBER_ID`);

--
-- Indexes for table `lms_suppliers_details`
--
ALTER TABLE `lms_suppliers_details`
  ADD PRIMARY KEY (`SUPPLIER_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lms_book_details`
--
ALTER TABLE `lms_book_details`
  ADD CONSTRAINT `LMS_cts41` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `lms_suppliers_details` (`SUPPLIER_ID`);

--
-- Constraints for table `lms_book_issue`
--
ALTER TABLE `lms_book_issue`
  ADD CONSTRAINT `LMS_BookDetail` FOREIGN KEY (`BOOK_CODE`) REFERENCES `lms_book_details` (`BOOK_CODE`),
  ADD CONSTRAINT `LMS_FineDetail` FOREIGN KEY (`FINE_RANGE`) REFERENCES `lms_fine_details` (`FINE_RANGE`),
  ADD CONSTRAINT `LMS_Mem` FOREIGN KEY (`MEMBER_ID`) REFERENCES `lms_members` (`MEMBER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
