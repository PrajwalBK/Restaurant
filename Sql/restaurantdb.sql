-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 08:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `ID` int(100) NOT NULL,
  `FNAME` varchar(30) DEFAULT NULL,
  `LNAME` varchar(30) DEFAULT NULL,
  `NUMBER` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `PERSONS` int(100) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `SECTIONS` enum('Family','Private','Public') DEFAULT NULL,
  `TABNUMBER` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` (`ID`, `FNAME`, `LNAME`, `NUMBER`, `EMAIL`, `PERSONS`, `DATE`, `SECTIONS`, `TABNUMBER`) VALUES
(1, 'PRAJWAL', 'KHAVATKOPP', '7676330406', 'prajwal7010@gmail.com', 4, '2023-07-08', 'Private', 1234),
(2, 'Ravi', 'XYZ', '1231234567', 'ravi@gmail.com', 3, '2023-07-25', 'Family', 8907),
(3, 'PRAJWAL', 'KHAVATKOPP', '7676330406', 'prajwal7010@gmail.com', 0, '2023-07-21', '', 1234),
(4, 'PRAJWAL', 'KHAVATKOPP', '7676330406', 'prajwal7010@gmail.com', 0, '2023-07-21', '', 1234),
(5, 'PRAJWAL', 'KHAVATKOPP', '7676330406', 'prajwal7010@gmail.com', 1, '2023-07-21', 'Private', 1234),
(6, 'ram', 'XYZ', '7676330406', 'ram@gmail.com', 0, '2023-07-23', '', 7746),
(7, 'ram', 'XYZ', '7676330406', 'ram@gmail.com', 0, '2023-07-23', '', 7746),
(8, 'Ravi', 'PQR', '7676330406', 'ravi@gmail.com', 0, '2023-07-21', '', 3235),
(9, 'Ravi', 'PQR', '7676330406', 'ravi@gmail.com', 0, '2023-07-21', '', 3235),
(10, 'Ravi', 'PQR', '7676330406', 'ravi@gmail.com', 2, '2023-07-21', 'Private', 3424),
(11, '', '', '', '', 0, '0000-00-00', '', 0),
(12, '', '', '', '', 0, '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_register`
--

CREATE TABLE `login_register` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(200) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `NUMBER` varchar(10) NOT NULL
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_register`
--

INSERT INTO `login_register` (`ID`, `USERNAME`, `EMAIL`,`NUMBER`, `PASSWORD`) VALUES
(1, 'Ravi', 'ravi@gmail.com', 'ravi'),
(2, 'Raju', 'raju@gmail.com', 'raju');

-- --------------------------------------------------------

--
-- Table structure for table `orderhear`
--

CREATE TABLE `orderhear` (
  `ID` int(50) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `NUMBER` int(10) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `SECTIONS` varchar(100) NOT NULL,
  `TABNUMBER` int(4) NOT NULL,
  `PERSONS` int(100) NOT NULL,
  `ITEMNAME` varchar(30) NOT NULL,
  `ITEMQUANTITY` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderhear`
--

INSERT INTO `orderhear` (`ID`, `NAME`, `NUMBER`, `EMAIL`, `SECTIONS`, `TABNUMBER`, `PERSONS`, `ITEMNAME`, `ITEMQUANTITY`) VALUES
(1, 'Prajwal ', 2147483647, 'prajwal7010@gmail.com', 'Private', 5658, 1, 'burger', 4),
(2, 'Prajwal ', 2147483647, 'prajwal7010@gmail.com', 'Family', 1224, 1, 'burger', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orderonline`
--

CREATE TABLE `orderonline` (
  `ID` int(50) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `NUMBER` int(10) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `ITEMNAME` varchar(100) NOT NULL,
  `ITEMQUANTITY` int(4) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `PINCODE` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderonline`
--

INSERT INTO `orderonline` (`ID`, `FNAME`, `LNAME`, `NUMBER`, `EMAIL`, `ITEMNAME`, `ITEMQUANTITY`, `ADDRESS`, `CITY`, `PINCODE`) VALUES
(1, 'PRAJWAL KHAVATKOPP', '', 2147483647, 'prajwal7010@gmail.com', 'burger', 3, 'B.M. KHAVATKOPP', 'ATHANI', 591220),
(2, 'PRAJWAL KHAVATKOPP', '', 2147483647, 'prajwal7010@gmail.com', 'burger', 3, 'B.M. KHAVATKOPP', 'ATHANI', 591220),
(3, 'PRAJWAL KHAVATKOPP', '', 2147483647, 'prajwal7010@gmail.com', 'burger', 3, 'B.M. KHAVATKOPP', 'ATHANI', 591220),
(4, 'PRAJWAL KHAVATKOPP', '', 2147483647, 'prajwal7010@gmail.com', 'burger', 3, 'B.M. KHAVATKOPP', 'ATHANI', 591220),
(5, '', '', 0, '', '', 0, '', '', 0),
(6, 'PRAJWAL', 'KHAVATKOPP', 2147483647, 'prajwal7010@gmail.com', 'Tasty Burger', 5, 'B.M. KHAVATKOPP', 'ATHANI', 591220),
(7, '', '', 0, '', '', 3, '', '', 0),
(8, 'Ram', 'ABC', 2147483647, 'ram@gmail.com', 'Tasty Burger', 4, 'B.M. KHAVATKOPP', 'ATHANI', 591220);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_register`
--
ALTER TABLE `login_register`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orderhear`
--
ALTER TABLE `orderhear`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orderonline`
--
ALTER TABLE `orderonline`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login_register`
--
ALTER TABLE `login_register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderhear`
--
ALTER TABLE `orderhear`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderonline`
--
ALTER TABLE `orderonline`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
