-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2021 at 04:09 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `sales_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `order_date`, `sales_type`) VALUES
(1001, '2007-05-01 12:10:10', 'Normal'),
(1002, '2007-05-07 05:28:55', 'Normal'),
(1003, '2007-05-19 17:17:00', 'Promotion'),
(1004, '2007-05-22 22:47:16', 'Promotion'),
(1005, '2007-05-27 08:15:07', 'Promotion'),
(1006, '2007-06-01 06:35:59', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `Order_Product_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Normal_Price` float NOT NULL,
  `Promotion_Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`Order_Product_ID`, `Order_ID`, `Item_Name`, `Normal_Price`, `Promotion_Price`) VALUES
(2000, 1001, 'Radio', 800, 712.99),
(2001, 1002, 'Portable Audio', 16, 15),
(2002, 1002, 'THE SIMS', 9.99, 8.79),
(2003, 1003, 'Radio', 800, 712.99),
(2004, 1004, 'Scanner', 124, 120),
(2005, 1005, 'Portable Audio', 16, 15),
(2006, 1005, 'Radio', 800, 712.99),
(2007, 1006, 'Camcorders', 359, 303),
(2008, 1006, 'Radio', 800, 712.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`Order_Product_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
