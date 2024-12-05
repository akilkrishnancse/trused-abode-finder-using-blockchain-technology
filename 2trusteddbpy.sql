-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2024 at 09:52 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `2trusteddbpy`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktb`
--

CREATE TABLE `booktb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Amount` varchar(250) NOT NULL,
  `CardName` varchar(250) NOT NULL,
  `CardNo` varchar(250) NOT NULL,
  `CvNo` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `booktb`
--

INSERT INTO `booktb` (`id`, `UserName`, `Bookid`, `Qty`, `Amount`, `CardName`, `CardNo`, `CvNo`, `Date`) VALUES
(1, 'san', 'BOOKID1', '6.00', '122.40', 'Mastercard', '2423637494856976', '123', '2024-02-22'),
(2, 'san', 'BOOKID2', '2.00', '183.60', 'Mastercard', '2353474585467457', '123', '2024-02-22'),
(3, 'san', 'BOOKID3', '2.00', '18360.00', 'mastercard', '1242363475486907', '123', '2024-02-26'),
(4, 'basith', 'BOOKID4', '1.00', '204000.00', 'mastercard', '1242363476458558', '123', '2024-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `carttb`
--

CREATE TABLE `carttb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` decimal(18,2) NOT NULL,
  `Tprice` decimal(28,2) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  `Gst` varchar(20) NOT NULL,
  `PName` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `carttb`
--

INSERT INTO `carttb` (`id`, `UserName`, `ProductName`, `ProductType`, `Price`, `Qty`, `Tprice`, `Image`, `Date`, `Status`, `Bookid`, `Gst`, `PName`) VALUES
(1, 'san', 'dola', 'Pain Relief', '20', '2.00', '40.80', '6185.png', '2024-02-22', '1', 'BOOKID1', '2', 'hari'),
(2, 'san', 'dola', 'Pain Relief', '20', '4.00', '81.60', '6185.png', '2024-02-22', '1', 'BOOKID1', '2', 'hari'),
(3, 'san', 'Mangobiscuit', 'Pain Relief', '90', '2.00', '183.60', '1795.png', '2024-02-22', '1', 'BOOKID2', '2', 'shop2'),
(4, 'sangeeth1', 'Mangobiscuit', 'Pain Relief', '90', '2.00', '183.60', '1795.png', '2024-02-22', '1', 'BOOKID3', '2', 'shop2'),
(5, 'sangeeth1', 'Mangobiscuit', 'Pain Relief', '90', '2.00', '183.60', '1795.png', '2024-02-22', '1', 'BOOKID3', '2', 'shop2'),
(6, 'sangeeth1', 'dola', 'Pain Relief', '20', '2.00', '40.80', '6185.png', '2024-02-22', '1', 'BOOKID3', '2', 'hari'),
(7, 'sangeeth1', 'dola', 'Pain Relief', '20', '2.00', '40.80', '6185.png', '2024-02-22', '1', 'BOOKID3', '2', 'hari'),
(9, 'san', 'house', 'Agriculture', '9000', '2.00', '18360.00', '5942.png', '2024-02-26', '1', 'BOOKID3', '2', 'Fantasy'),
(10, 'basith', '3BHK', 'House', '200000', '1.00', '204000.00', '8680.png', '2024-04-27', '1', 'BOOKID4', '2', 'arun');

-- --------------------------------------------------------

--
-- Table structure for table `custtb`
--

CREATE TABLE `custtb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(500) NOT NULL,
  `Mobile` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `custtb`
--

INSERT INTO `custtb` (`id`, `UserName`, `Mobile`) VALUES
(1, 'sangeeth', '9486365535'),
(2, 'sangeeth1', '9486365535');

-- --------------------------------------------------------

--
-- Table structure for table `employeetb`
--

CREATE TABLE `employeetb` (
  `id` bigint(10) NOT NULL auto_increment,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Gender` varchar(250) NOT NULL,
  `ShopName` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `employeetb`
--

INSERT INTO `employeetb` (`id`, `Name`, `Email`, `Mobile`, `Address`, `UserName`, `Password`, `Gender`, `ShopName`) VALUES
(2, 'sangeeth Kumar', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'san123', 'san123', 'Male', 'sangeeth Kumar'),
(4, 'hari', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'hari', 'hari', 'Male', 'hari'),
(5, 'sangeeth Kumar', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'hari123', 'hari123', 'Male', 'shop2'),
(6, 'sangeeth Kumar', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'Fantasy', 'Fantasy', 'Male', 'Fantasy'),
(7, 'sangeeth Kumar', 'sangeeth5535@gmail.com', '9489168578', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'arun', 'arun', 'Male', 'ABCD');

-- --------------------------------------------------------

--
-- Table structure for table `protb`
--

CREATE TABLE `protb` (
  `id` bigint(10) NOT NULL auto_increment,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Info` varchar(500) NOT NULL,
  `Exdate` date NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Gst` varchar(250) NOT NULL,
  `Area` varchar(250) NOT NULL,
  `PName` varchar(250) NOT NULL,
  `SurveyNo` varchar(250) NOT NULL,
  `Document` varchar(250) NOT NULL,
  `Hash1` varchar(250) NOT NULL,
  `Hash2` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `protb`
--

INSERT INTO `protb` (`id`, `ProductName`, `ProductType`, `Price`, `Qty`, `Info`, `Exdate`, `Image`, `Gst`, `Area`, `PName`, `SurveyNo`, `Document`, `Hash1`, `Hash2`) VALUES
(2, '3BHK', 'House', '200000', '1.0', 'nill', '0000-00-00', '8680.png', '2', '2024-04-27', 'arun', '1234', '123.png', '0', '884A33435CBC0F047825118936265D78D89616134D93E0C42B75717B673192E0'),
(3, '2BHK', 'House', '90000', '3', 'nill', '0000-00-00', '3782.png', '2', '2024-04-27', 'arun', '12348', '17-172003_car-clipart-top-view-birds-eye-view-car.png', '884A33435CBC0F047825118936265D78D89616134D93E0C42B75717B673192E0', '2C6AE9322D0081BDDDC599B0FA417FA5E697ACAFAE3BD25E095ACB7EEA73275B'),
(4, '3BHK', 'House', '9000', '5', 'adfasdfh', '2024-04-27', '5419.png', '2', '7420', 'arun', '123490', '4a019a3d775d9247ac1af8644631ccea.jpg', '2C6AE9322D0081BDDDC599B0FA417FA5E697ACAFAE3BD25E095ACB7EEA73275B', '7CF4A7D0D94F9D334B8AE0B4F3E4C6BD9D3EA87F25225B8F975C20364760C2E5');

-- --------------------------------------------------------

--
-- Table structure for table `regtb`
--

CREATE TABLE `regtb` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Gender` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regtb`
--

INSERT INTO `regtb` (`Name`, `Email`, `Mobile`, `Address`, `UserName`, `Password`, `Gender`) VALUES
('sangeeth Kumar', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'sangeeth', 'sangeeth', 'Male'),
('san', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'san', 'san', 'Male'),
('basith', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'basith', 'basith', 'Male');
