-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2019 at 01:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmes_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `TR_Acc` int(11) NOT NULL,
  `Ref_No` int(11) NOT NULL,
  `Acc_Date_Avail` date DEFAULT NULL,
  `Acc_Date_Paid` date DEFAULT NULL,
  `Acc_Type` varchar(15) NOT NULL,
  `Acc_Balance` decimal(6,2) NOT NULL,
  `Acc_Payment` decimal(6,2) NOT NULL,
  `Acc_Archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`TR_Acc`, `Ref_No`, `Acc_Date_Avail`, `Acc_Date_Paid`, `Acc_Type`, `Acc_Balance`, `Acc_Payment`, `Acc_Archived`) VALUES
(35, 17, '2018-12-17', '2018-12-19', 'Bedroom-Rent', '7500.00', '7500.00', 1),
(36, 17, '2018-12-17', '2018-12-19', 'add-ons-lunch', '1500.00', '1500.00', 1),
(37, 17, '2018-12-17', '2018-12-19', 'add-ons-dinner', '1500.00', '1500.00', 1),
(38, 17, '2018-12-17', '2018-12-19', 'add-ons-bed', '2000.00', '2000.00', 1),
(39, 18, '2018-12-17', '2018-12-17', 'Bedroom-Rent', '7500.00', '7500.00', 1),
(40, 18, '2018-12-17', '2018-12-17', 'add-ons-lunch', '1500.00', '1500.00', 1),
(41, 18, '2018-12-17', '2018-12-17', 'add-ons-dinner', '1500.00', '1500.00', 1),
(42, 18, '2018-12-17', '2018-12-17', 'add-ons-bed', '2000.00', '2000.00', 1),
(43, 19, '2018-12-17', '2018-12-17', 'Bedroom-Rent', '9000.00', '9000.00', 1),
(44, 19, '2018-12-17', '2018-12-17', 'add-ons-bed', '2000.00', '2000.00', 1),
(45, 20, '2018-12-17', '2018-12-17', 'Bedroom-Rent', '9000.00', '9000.00', 1),
(46, 20, '2018-12-17', '2018-12-17', 'add-ons-dinner', '1500.00', '0.00', 1),
(47, 20, '2018-12-17', '2018-12-17', 'add-ons-bed', '2000.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Acc_ID` int(11) NOT NULL,
  `F_Name` varchar(15) NOT NULL,
  `L_Name` varchar(15) NOT NULL,
  `M_Name` varchar(10) DEFAULT NULL,
  `Contact_No` varchar(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `Code` varchar(10) NOT NULL,
  `Archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Acc_ID`, `F_Name`, `L_Name`, `M_Name`, `Contact_No`, `Address`, `Email`, `Password`, `isVerified`, `token`, `Code`, `Archived`) VALUES
(1, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 'legaspireginald.rl@gmail.com', '$2y$10$NXPIeENsvQELXbwFbJCMbOb4AX2HnFxET1KQFEwHks8YzAzdYBL0O', 1, NULL, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `TR_Add` int(11) NOT NULL,
  `Ref_No` int(11) NOT NULL,
  `Add_Description` varchar(20) NOT NULL,
  `Add_Amount` decimal(6,2) NOT NULL,
  `Add_Quantity` tinyint(4) NOT NULL,
  `Add_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`TR_Add`, `Ref_No`, `Add_Description`, `Add_Amount`, `Add_Quantity`, `Add_Date`) VALUES
(26, 17, 'lunch', '1500.00', 1, '2018-12-17'),
(27, 17, 'dinner', '1500.00', 1, '2018-12-17'),
(28, 17, 'bed', '2000.00', 1, '2018-12-17'),
(29, 18, 'lunch', '1500.00', 1, '2018-12-17'),
(30, 18, 'dinner', '1500.00', 1, '2018-12-17'),
(31, 18, 'bed', '2000.00', 1, '2018-12-17'),
(32, 19, 'bed', '2000.00', 1, '2018-12-17'),
(33, 20, 'dinner', '1500.00', 1, '2018-12-17'),
(34, 20, 'bed', '2000.00', 1, '2018-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `add_ons_price`
--

CREATE TABLE `add_ons_price` (
  `add_on_name` varchar(50) NOT NULL,
  `add_on_price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_ons_price`
--

INSERT INTO `add_ons_price` (`add_on_name`, `add_on_price`) VALUES
('lunch', '1500.00'),
('dinner', '1500.00'),
('bed', '2000.00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `Acc_ID` int(11) NOT NULL,
  `F_Name` varchar(15) NOT NULL,
  `L_Name` varchar(15) NOT NULL,
  `M_Name` varchar(10) DEFAULT NULL,
  `Contact_No` varchar(15) DEFAULT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `date_created` datetime NOT NULL,
  `Archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`Acc_ID`, `F_Name`, `L_Name`, `M_Name`, `Contact_No`, `Username`, `Password`, `Role`, `Code`, `date_created`, `Archived`) VALUES
(1, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'admin', 'admin', 'HOUSEKEEPING-ADMIN', '1', '0000-00-00 00:00:00', 1),
(2, 'Don', 'Cool', 'Spa', '09295196649', 'accountadmin', 'accountadmin', 'ACCOUNT-ADMIN', '1', '0000-00-00 00:00:00', 1),
(3, 'Reginald', 'Cool', 'Spa', '09295196649', 'reservation', 'reservation', 'RESERVATION-ADMIN', '1', '2018-12-07 00:00:00', 1),
(4, 'First', 'Last', 'Middle', '09295196649', 'inventory', 'inventory', 'INVENTORY-ADMIN', '1', '2018-12-08 00:00:00', 1),
(5, 'REGINALD', 'LEGASPI', NULL, NULL, 'housekeeping', 'housekeeping', 'HOUSEKEEPING-ADMIN', '1', '2018-12-11 21:31:31', 1),
(6, 'ACCOUN', 'TING', NULL, NULL, 'accounting', 'accounting', 'ACCOUNTING-ADMIN', '1', '2018-12-14 12:49:10', 1),
(7, 'CMS', 'CMS', NULL, NULL, 'cms', 'cms', 'CMS-ADMIN', '1', '2018-12-14 18:27:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

CREATE TABLE `admin_log` (
  `log_id` int(11) NOT NULL,
  `Acc_ID` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `login` datetime NOT NULL,
  `logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_log`
--

INSERT INTO `admin_log` (`log_id`, `Acc_ID`, `account_name`, `login`, `logout`) VALUES
(1, 1, 'Reginald Legaspi', '2018-12-07 14:18:06', '0000-00-00 00:00:00'),
(2, 1, 'Reginald Legaspi', '2018-12-07 14:19:30', '2018-12-07 14:19:33'),
(3, 1, 'Reginald Legaspi', '2018-12-07 14:19:59', '2018-12-07 14:20:02'),
(4, 2, 'Don Cool', '2018-12-07 14:28:28', '2018-12-07 14:54:45'),
(5, 3, 'Reginald Cool', '2018-12-07 19:11:39', '0000-00-00 00:00:00'),
(6, 3, 'Reginald Cool', '2018-12-07 20:13:38', '0000-00-00 00:00:00'),
(7, 3, 'Reginald Cool', '2018-12-08 09:14:48', '2018-12-08 09:27:42'),
(8, 2, 'Don Cool', '2018-12-08 09:27:50', '2018-12-08 09:30:45'),
(9, 1, 'Reginald Legaspi', '2018-12-08 09:30:51', '2018-12-17 14:03:17'),
(10, 2, 'Don Cool', '2018-12-08 09:32:49', '0000-00-00 00:00:00'),
(11, 3, 'Reginald Cool', '2018-12-08 09:34:20', '2018-12-08 09:40:54'),
(12, 4, 'First Last', '2018-12-08 09:43:13', '0000-00-00 00:00:00'),
(13, 2, 'Don Cool', '2018-12-10 21:37:49', '0000-00-00 00:00:00'),
(14, 2, 'Don Cool', '2018-12-11 21:24:38', '0000-00-00 00:00:00'),
(15, 4, 'First Last', '2018-12-14 11:22:58', '2018-12-14 11:57:43'),
(16, 5, 'REGINALD LEGASPI', '2018-12-14 11:57:52', '0000-00-00 00:00:00'),
(17, 5, 'REGINALD LEGASPI', '2018-12-14 11:58:58', '0000-00-00 00:00:00'),
(18, 5, 'REGINALD LEGASPI', '2018-12-14 12:00:49', '0000-00-00 00:00:00'),
(19, 5, 'REGINALD LEGASPI', '2018-12-14 12:02:33', '2018-12-14 12:05:16'),
(20, 2, 'Don Cool', '2018-12-14 12:04:53', '0000-00-00 00:00:00'),
(21, 3, 'Reginald Cool', '2018-12-14 12:05:21', '0000-00-00 00:00:00'),
(22, 5, 'REGINALD LEGASPI', '2018-12-14 12:05:49', '0000-00-00 00:00:00'),
(23, 2, 'Don Cool', '2018-12-14 12:48:10', '0000-00-00 00:00:00'),
(24, 6, 'ACCOUN TING', '2018-12-14 12:49:21', '0000-00-00 00:00:00'),
(25, 6, 'ACCOUN TING', '2018-12-14 12:51:56', '0000-00-00 00:00:00'),
(26, 6, 'ACCOUN TING', '2018-12-14 12:53:37', '0000-00-00 00:00:00'),
(27, 5, 'REGINALD LEGASPI', '2018-12-14 12:54:00', '0000-00-00 00:00:00'),
(28, 6, 'ACCOUN TING', '2018-12-14 12:54:14', '0000-00-00 00:00:00'),
(29, 6, 'ACCOUN TING', '2018-12-14 13:02:05', '0000-00-00 00:00:00'),
(30, 6, 'ACCOUN TING', '2018-12-14 13:09:11', '0000-00-00 00:00:00'),
(31, 5, 'REGINALD LEGASPI', '2018-12-14 13:10:08', '0000-00-00 00:00:00'),
(32, 6, 'ACCOUN TING', '2018-12-14 13:10:52', '0000-00-00 00:00:00'),
(33, 2, 'Don Cool', '2018-12-14 18:27:00', '0000-00-00 00:00:00'),
(34, 7, 'CMS CMS', '2018-12-14 18:28:28', '0000-00-00 00:00:00'),
(35, 7, 'CMS CMS', '2018-12-14 21:20:23', '0000-00-00 00:00:00'),
(36, 7, 'CMS CMS', '2018-12-14 22:06:18', '0000-00-00 00:00:00'),
(37, 7, 'CMS CMS', '2018-12-14 22:06:48', '0000-00-00 00:00:00'),
(38, 7, 'CMS CMS', '2018-12-15 09:43:17', '0000-00-00 00:00:00'),
(39, 7, 'CMS CMS', '2018-12-15 12:18:20', '0000-00-00 00:00:00'),
(40, 7, 'CMS CMS', '2018-12-15 23:29:06', '0000-00-00 00:00:00'),
(41, 6, 'ACCOUN TING', '2018-12-16 09:55:33', '2018-12-16 10:51:31'),
(42, 6, 'ACCOUN TING', '2018-12-16 10:51:37', '0000-00-00 00:00:00'),
(43, 3, 'Reginald Cool', '2018-12-16 15:57:56', '2018-12-16 16:16:51'),
(44, 7, 'CMS CMS', '2018-12-16 16:17:01', '0000-00-00 00:00:00'),
(45, 6, 'ACCOUN TING', '2018-12-17 12:34:57', '0000-00-00 00:00:00'),
(46, 6, 'ACCOUN TING', '2018-12-17 13:09:47', '0000-00-00 00:00:00'),
(47, 4, 'First Last', '2018-12-17 14:03:09', '0000-00-00 00:00:00'),
(48, 4, 'First Last', '2018-12-17 14:03:26', '0000-00-00 00:00:00'),
(49, 4, 'First Last', '2018-12-17 14:05:36', '0000-00-00 00:00:00'),
(50, 4, 'First Last', '2018-12-17 14:06:18', '0000-00-00 00:00:00'),
(51, 6, 'ACCOUN TING', '2018-12-17 14:10:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `Bed_ID` int(11) NOT NULL,
  `Item_ID` int(11) NOT NULL,
  `Item_Quant` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bedroom`
--

CREATE TABLE `bedroom` (
  `Bed_ID` int(11) NOT NULL,
  `Bed_Adult` tinyint(5) NOT NULL,
  `Bed_Child` tinyint(5) DEFAULT NULL,
  `Bed_Type` varchar(15) NOT NULL,
  `Bed_Available` int(11) NOT NULL,
  `Bed_Description` varchar(500) NOT NULL,
  `Bed_Price` decimal(6,2) NOT NULL,
  `Bed_Image` varchar(100) DEFAULT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bedroom`
--

INSERT INTO `bedroom` (`Bed_ID`, `Bed_Adult`, `Bed_Child`, `Bed_Type`, `Bed_Available`, `Bed_Description`, `Bed_Price`, `Bed_Image`, `status`) VALUES
(1, 5, 5, 'STUDIO-ROOM', 8, '\r\nThe Corinthnians Sky Studio includes two bed and creates a refined ambiance of understated classic luxury.', '9000.00', 'images/bedroom/sky-studio.jpg', 'ACTIVE'),
(2, 2, 2, 'ECONOMY-SINGLE', 2, 'test', '7500.00', 'images/bedroom/single.jpg', 'ACTIVE'),
(3, 2, 2, 'ECONOMY-SINGLE', 2, 'test', '7500.00', 'images/bedroom/single.jpg', 'ACTIVE'),
(4, 2, 2, 'ECONOMY-SINGLE', 2, 'test', '7500.00', 'images/bedroom/single.jpg', 'ACTIVE'),
(5, 2, 2, 'ECONOMY-SINGLE', 2, 'test', '7500.00', 'images/bedroom/single.jpg', 'ACTIVE'),
(6, 2, 2, 'ECONOMY-SINGLE', 2, 'test', '7500.00', 'images/bedroom/single.jpg', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `bed_res`
--

CREATE TABLE `bed_res` (
  `TR_Bed` int(11) NOT NULL,
  `Ref_No` int(11) NOT NULL,
  `Bed_ID` int(11) NOT NULL,
  `Bed_Date` date NOT NULL,
  `Bed_Date_In` date NOT NULL,
  `Bed_Date_Out` date NOT NULL,
  `Bed_Remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_res`
--

INSERT INTO `bed_res` (`TR_Bed`, `Ref_No`, `Bed_ID`, `Bed_Date`, `Bed_Date_In`, `Bed_Date_Out`, `Bed_Remarks`) VALUES
(17, 17, 2, '2018-12-17', '2018-12-19', '2018-12-30', ''),
(18, 18, 2, '2018-12-17', '2018-12-17', '2018-12-17', ''),
(19, 19, 1, '2018-12-17', '2018-12-17', '2018-12-17', ''),
(20, 20, 1, '2018-12-17', '2018-12-17', '2018-12-17', 'TEST PESO');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `TR_Bill` int(11) NOT NULL,
  `Ref_No` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `concierge`
--

CREATE TABLE `concierge` (
  `TR_Conc` int(11) NOT NULL,
  `Ref_No` int(11) NOT NULL,
  `Emp_ID` int(11) NOT NULL,
  `Conc_Date_Req` date NOT NULL,
  `Conc_Description` varchar(20) NOT NULL,
  `Conc_Amount` decimal(6,2) DEFAULT NULL,
  `Conc_Serv_Charge` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contanct_info`
--

CREATE TABLE `contanct_info` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contanct_info`
--

INSERT INTO `contanct_info` (`id`, `facebook`, `twitter`, `instagram`, `other`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://instagram.com', 'others.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Ref_No` int(11) NOT NULL,
  `F_Name` varchar(15) NOT NULL,
  `L_Name` varchar(15) NOT NULL,
  `M_Name` varchar(10) DEFAULT NULL,
  `Contact_No` varchar(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Acc_ID` int(11) NOT NULL,
  `Archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Ref_No`, `F_Name`, `L_Name`, `M_Name`, `Contact_No`, `Address`, `Acc_ID`, `Archived`) VALUES
(1, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(2, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(3, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(4, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(5, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(6, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(7, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(8, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(9, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(10, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(11, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(12, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(13, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(14, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(15, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(16, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(17, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(18, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(19, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1),
(20, 'Reginald', 'Legaspi', 'Dela Cruz', '09295196649', 'Binangonan, Rizal', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Ref_No` varchar(10) NOT NULL,
  `F_Name` varchar(15) NOT NULL,
  `L_Name` varchar(15) NOT NULL,
  `M_Name` varchar(10) DEFAULT NULL,
  `Contact_No` varchar(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Acc_ID` int(11) NOT NULL,
  `Archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_accounts`
--

CREATE TABLE `customer_accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isVerified` tinyint(4) NOT NULL,
  `token` varchar(10) NOT NULL,
  `code` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_accounts`
--

INSERT INTO `customer_accounts` (`id`, `firstname`, `lastname`, `middlename`, `email`, `adress`, `contact`, `password`, `isVerified`, `token`, `code`) VALUES
(11, 'Reginald', 'Legaspi', 'dela cruz', 'legaspireginald.rl@gmail.com', '1940', '9295196649', '$2y$10$NXPIeENsvQELXbwFbJCMbOb4AX2HnFxET1KQFEwHks8YzAzdYBL0O', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cus_log`
--

CREATE TABLE `cus_log` (
  `Acc_ID` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Contact_No` varchar(15) NOT NULL,
  `Sex` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_accounts`
--

CREATE TABLE `emp_accounts` (
  `Emp_Acc_ID` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Code` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `Archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_accounts`
--

INSERT INTO `emp_accounts` (`Emp_Acc_ID`, `Firstname`, `Lastname`, `Username`, `Password`, `Role`, `Code`, `date_created`, `Archived`) VALUES
(1, '', '', 'buenamar', 'admin1234', 'housekeeper', 0, '0000-00-00 00:00:00', 1),
(2, '', '', 'abueva', 'test1234', 'housekeeper', 1, '0000-00-00 00:00:00', 1),
(3, '', '', 'reginald', '009019096', 'housekeeper', 1, '0000-00-00 00:00:00', 0),
(4, '', '', 'reginald', '009019096', 'housekeeper', 1, '0000-00-00 00:00:00', 0),
(5, '', '', 'test123', 'test123', 'housekeeper', 1, '0000-00-00 00:00:00', 0),
(6, 'REGINALD', 'LEGASPI', 'ghie009', '009019096', 'Admin', 1, '2018-12-07 13:15:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_log`
--

CREATE TABLE `emp_log` (
  `Emp_Acc_ID` int(11) NOT NULL,
  `login` datetime NOT NULL,
  `Action` varchar(20) NOT NULL,
  `logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `Fac_ID` int(11) NOT NULL,
  `Fac_Capacity` int(11) DEFAULT NULL,
  `Fac_Type` varchar(15) NOT NULL,
  `Fac_Description` varchar(100) NOT NULL,
  `Fac_Image` blob,
  `Fac_Price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fac_res`
--

CREATE TABLE `fac_res` (
  `TR_Fac` int(11) NOT NULL,
  `Ref_No` int(11) NOT NULL,
  `Fac_ID` int(11) NOT NULL,
  `Fac_Attendees` int(11) NOT NULL,
  `Fac_Date` date NOT NULL,
  `Fac_Date_In` date NOT NULL,
  `Fac_Date_Out` date NOT NULL,
  `Fac_Time_In` time NOT NULL,
  `Fac_Time_Out` time NOT NULL,
  `Fac_Remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `housekeeping`
--

CREATE TABLE `housekeeping` (
  `date` datetime NOT NULL,
  `housekeeping_id` int(11) NOT NULL,
  `time` time DEFAULT NULL,
  `task` varchar(255) NOT NULL,
  `personnel_assigned` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `code` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housekeeping`
--

INSERT INTO `housekeeping` (`date`, `housekeeping_id`, `time`, `task`, `personnel_assigned`, `area`, `action`, `code`) VALUES
('2018-12-07 00:00:00', 1, '00:00:00', 'Sweep the floor', 'Bune Mario', '263', 'Immediate', 0),
('0000-00-00 00:00:00', 2, '14:00:00', '', 'Rein Carlo', '51', 'Set', 0),
('2018-12-14 12:07:14', 3, '00:00:00', 'yeah', 'Buena Mar', 'Blackpink in your area', 'Set', 1),
('2018-12-05 14:47:28', 4, '00:00:00', 'GG', 'Buena Mar', 'NDC', 'Set', 1),
('2018-12-05 14:48:18', 5, '00:00:00', 'Juju', 'Rein Carlo', 'asdasdasdasd', 'Immediate', 1),
('2018-12-05 14:49:33', 6, '00:00:00', 'dota2', 'Rein Carlo', '57', 'Immediate', 1),
('2018-12-05 16:28:05', 7, '00:00:00', 'Mopssss', 'Rein Carlo', 'Blackpink', 'Set', 1),
('2018-12-05 16:29:49', 8, '00:00:00', 'Go', 'Buena Mar', 'YES', 'Yes', 1),
('2018-12-05 16:30:16', 9, '00:00:00', 'asd', 'Buena Mar', 'asd', 'asdasd', 1),
('2018-12-05 16:31:01', 10, '03:05:00', 'dfsg', 'Rein Carlo', 'asdf', 'asdfsdaf', 1),
('2018-12-05 16:32:27', 11, '02:16:00', 'asdas', 'Buena Mar', 'asdasds', 'asdasd', 1),
('2018-12-14 12:10:48', 12, '14:22:00', 'asdad', 'test123', '57', 'SET', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Item_ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` decimal(6,2) DEFAULT NULL,
  `Brand` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Item_ID`, `Name`, `Quantity`, `Price`, `Brand`) VALUES
(1, 'SHAMPOO', 1200, '12.00', 'SUNSILK');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `package_photo` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `room_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `type`, `package_photo`, `quantity`, `room_status`) VALUES
(1, 'SKY', 'images/packages/sky-studio.jpg', '5', 1),
(2, 'TEST', 'images/packages/about.jpg', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reciept_log`
--

CREATE TABLE `reciept_log` (
  `Reciept_ID` int(11) NOT NULL,
  `TR_Acc` int(11) NOT NULL,
  `Reciept_Payment` decimal(6,2) NOT NULL,
  `Reciept_Change` decimal(6,2) NOT NULL,
  `Reciept_Date` date NOT NULL,
  `Reciept_Vat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reciept_log`
--

INSERT INTO `reciept_log` (`Reciept_ID`, `TR_Acc`, `Reciept_Payment`, `Reciept_Change`, `Reciept_Date`, `Reciept_Vat`) VALUES
(1, 45, '9000.00', '0.00', '2018-12-17', 12);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Restau_ID` int(11) NOT NULL,
  `Restau_Start_Time` time DEFAULT NULL,
  `Restau_End_Time` time DEFAULT NULL,
  `Restau_Type` varchar(15) NOT NULL,
  `Restau_Description` varchar(100) NOT NULL,
  `Restau_Image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restau_res`
--

CREATE TABLE `restau_res` (
  `TR_Restau` int(11) NOT NULL,
  `Ref_No` int(11) NOT NULL,
  `Restau_ID` int(11) NOT NULL,
  `Restau_Seats` tinyint(5) NOT NULL,
  `Restau_Date` date NOT NULL,
  `Restau_Date_In` date NOT NULL,
  `Restau_Time_In` time NOT NULL,
  `Restau_Remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `id` int(11) NOT NULL,
  `fuck` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`id`, `fuck`) VALUES
(1, '0000-00-00'),
(2, '0000-00-00'),
(3, '0000-00-00'),
(4, '0000-00-00'),
(5, '0000-00-00'),
(6, '0000-00-00'),
(7, '0000-00-00'),
(8, '0000-00-00'),
(9, '0000-00-00'),
(10, '0000-00-00'),
(11, '2018-12-15'),
(12, '2018-12-15'),
(13, '2018-12-15'),
(14, '2018-12-15'),
(15, '2018-12-15'),
(16, '2018-12-15'),
(17, '2018-12-15'),
(18, '2018-12-15'),
(19, '2018-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Emp_ID` int(11) NOT NULL,
  `TR_No` varchar(10) NOT NULL,
  `TR_Type` varchar(10) NOT NULL,
  `Time_In` time NOT NULL,
  `Time_Out` time NOT NULL,
  `Date` date NOT NULL,
  `Team` varchar(15) DEFAULT NULL,
  `Archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `room_type`, `slider_image`) VALUES
(1, 'STUDIO-ROOM', 'images/sliders/sky-studio.jpg'),
(3, 'STUDIO-ROOM', 'images/sliders/about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vat`
--

CREATE TABLE `vat` (
  `Vat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vat`
--

INSERT INTO `vat` (`Vat`) VALUES
(12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`TR_Acc`),
  ADD KEY `Ref_No` (`Ref_No`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Acc_ID`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`TR_Add`),
  ADD KEY `Ref_No` (`Ref_No`);

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`Acc_ID`);

--
-- Indexes for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD KEY `Bed_ID` (`Bed_ID`),
  ADD KEY `Item_ID` (`Item_ID`);

--
-- Indexes for table `bedroom`
--
ALTER TABLE `bedroom`
  ADD PRIMARY KEY (`Bed_ID`);

--
-- Indexes for table `bed_res`
--
ALTER TABLE `bed_res`
  ADD PRIMARY KEY (`TR_Bed`),
  ADD KEY `Ref_No` (`Ref_No`),
  ADD KEY `Bed_ID` (`Bed_ID`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`TR_Bill`),
  ADD KEY `Ref_No` (`Ref_No`);

--
-- Indexes for table `concierge`
--
ALTER TABLE `concierge`
  ADD PRIMARY KEY (`TR_Conc`),
  ADD KEY `Ref_No` (`Ref_No`),
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `contanct_info`
--
ALTER TABLE `contanct_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Ref_No`),
  ADD KEY `Acc_ID` (`Acc_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Ref_No`),
  ADD KEY `Acc_ID` (`Acc_ID`);

--
-- Indexes for table `customer_accounts`
--
ALTER TABLE `customer_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cus_log`
--
ALTER TABLE `cus_log`
  ADD KEY `Acc_ID` (`Acc_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `emp_accounts`
--
ALTER TABLE `emp_accounts`
  ADD PRIMARY KEY (`Emp_Acc_ID`);

--
-- Indexes for table `emp_log`
--
ALTER TABLE `emp_log`
  ADD KEY `Emp_Acc_ID` (`Emp_Acc_ID`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`Fac_ID`);

--
-- Indexes for table `fac_res`
--
ALTER TABLE `fac_res`
  ADD PRIMARY KEY (`TR_Fac`),
  ADD KEY `Fac_ID` (`Fac_ID`),
  ADD KEY `Ref_No` (`Ref_No`);

--
-- Indexes for table `housekeeping`
--
ALTER TABLE `housekeeping`
  ADD PRIMARY KEY (`housekeeping_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `reciept_log`
--
ALTER TABLE `reciept_log`
  ADD PRIMARY KEY (`Reciept_ID`),
  ADD KEY `TR_Acc` (`TR_Acc`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Restau_ID`);

--
-- Indexes for table `restau_res`
--
ALTER TABLE `restau_res`
  ADD PRIMARY KEY (`TR_Restau`),
  ADD KEY `Restau_ID` (`Restau_ID`),
  ADD KEY `Ref_No` (`Ref_No`);

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting`
--
ALTER TABLE `accounting`
  MODIFY `TR_Acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `Acc_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `TR_Add` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `Acc_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bedroom`
--
ALTER TABLE `bedroom`
  MODIFY `Bed_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bed_res`
--
ALTER TABLE `bed_res`
  MODIFY `TR_Bed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `TR_Bill` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `concierge`
--
ALTER TABLE `concierge`
  MODIFY `TR_Conc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contanct_info`
--
ALTER TABLE `contanct_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Ref_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Acc_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Emp_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_accounts`
--
ALTER TABLE `emp_accounts`
  MODIFY `Emp_Acc_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `Fac_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fac_res`
--
ALTER TABLE `fac_res`
  MODIFY `TR_Fac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `housekeeping`
--
ALTER TABLE `housekeeping`
  MODIFY `housekeeping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reciept_log`
--
ALTER TABLE `reciept_log`
  MODIFY `Reciept_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `Restau_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restau_res`
--
ALTER TABLE `restau_res`
  MODIFY `TR_Restau` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sample`
--
ALTER TABLE `sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounting`
--
ALTER TABLE `accounting`
  ADD CONSTRAINT `accounting_ibfk_1` FOREIGN KEY (`Ref_No`) REFERENCES `customer` (`Ref_No`);

--
-- Constraints for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD CONSTRAINT `add_ons_ibfk_1` FOREIGN KEY (`Ref_No`) REFERENCES `customer` (`Ref_No`);

--
-- Constraints for table `amenities`
--
ALTER TABLE `amenities`
  ADD CONSTRAINT `amenities_ibfk_1` FOREIGN KEY (`Bed_ID`) REFERENCES `bedroom` (`Bed_ID`),
  ADD CONSTRAINT `amenities_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `inventory` (`Item_ID`);

--
-- Constraints for table `bed_res`
--
ALTER TABLE `bed_res`
  ADD CONSTRAINT `bed_res_ibfk_1` FOREIGN KEY (`Ref_No`) REFERENCES `customer` (`Ref_No`),
  ADD CONSTRAINT `bed_res_ibfk_2` FOREIGN KEY (`Bed_ID`) REFERENCES `bedroom` (`Bed_ID`);

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`Ref_No`) REFERENCES `customer` (`Ref_No`);

--
-- Constraints for table `concierge`
--
ALTER TABLE `concierge`
  ADD CONSTRAINT `concierge_ibfk_1` FOREIGN KEY (`Ref_No`) REFERENCES `customer` (`Ref_No`),
  ADD CONSTRAINT `concierge_ibfk_2` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Acc_ID`) REFERENCES `accounts` (`Acc_ID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Acc_ID`) REFERENCES `accounts` (`Acc_ID`);

--
-- Constraints for table `cus_log`
--
ALTER TABLE `cus_log`
  ADD CONSTRAINT `cus_log_ibfk_1` FOREIGN KEY (`Acc_ID`) REFERENCES `accounts` (`Acc_ID`);

--
-- Constraints for table `emp_log`
--
ALTER TABLE `emp_log`
  ADD CONSTRAINT `emp_log_ibfk_1` FOREIGN KEY (`Emp_Acc_ID`) REFERENCES `emp_accounts` (`Emp_Acc_ID`);

--
-- Constraints for table `fac_res`
--
ALTER TABLE `fac_res`
  ADD CONSTRAINT `fac_res_ibfk_1` FOREIGN KEY (`Fac_ID`) REFERENCES `facility` (`Fac_ID`),
  ADD CONSTRAINT `fac_res_ibfk_2` FOREIGN KEY (`Ref_No`) REFERENCES `customer` (`Ref_No`);

--
-- Constraints for table `reciept_log`
--
ALTER TABLE `reciept_log`
  ADD CONSTRAINT `reciept_log_ibfk_1` FOREIGN KEY (`TR_Acc`) REFERENCES `accounting` (`TR_Acc`);

--
-- Constraints for table `restau_res`
--
ALTER TABLE `restau_res`
  ADD CONSTRAINT `restau_res_ibfk_1` FOREIGN KEY (`Restau_ID`) REFERENCES `restaurant` (`Restau_ID`),
  ADD CONSTRAINT `restau_res_ibfk_2` FOREIGN KEY (`Ref_No`) REFERENCES `customer` (`Ref_No`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
