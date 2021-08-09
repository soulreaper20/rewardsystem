-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2021 at 03:55 AM
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
-- Database: `reward`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `user_id`, `order_status`, `order_date`, `modified_date`) VALUES
(1, 1, 2, 'Complete', '2021-08-02 00:00:00', '2021-08-03 00:00:00'),
(2, 3, 1, 'Complete', '2021-07-30 00:00:00', '2021-07-31 00:00:00'),
(3, 4, 3, 'Pending', '2021-08-04 00:00:00', '2021-08-05 00:00:00'),
(4, 5, 4, 'Complete', '2021-08-19 00:00:00', '2021-08-20 00:00:00'),
(5, 1, 1, 'Complete', '2021-01-07 09:56:00', '2021-08-09 00:00:00'),
(6, 2, 3, 'Complete', '2021-01-07 09:56:00', '2021-08-05 00:00:00'),
(7, 3, 2, 'Complete', '2021-08-09 00:00:00', '2021-08-10 00:00:00'),
(8, 1, 2, 'Complete', '2021-01-07 09:56:00', '2021-08-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_price`) VALUES
(1, 'Radio', 40.99),
(2, 'Tv', 150),
(3, 'Phone', 100),
(4, 'Camera', 70),
(5, 'PS', 299);

-- --------------------------------------------------------

--
-- Table structure for table `reward_details`
--

CREATE TABLE `reward_details` (
  `reward_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reward` int(11) NOT NULL,
  `usable_reward` float NOT NULL,
  `expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reward_details`
--

INSERT INTO `reward_details` (`reward_id`, `user_id`, `order_id`, `reward`, `usable_reward`, `expiry`) VALUES
(1, 2, 1, 41, 0.4099, '2022-08-09 00:00:00'),
(2, 1, 5, 41, 0.4099, '2022-08-09 00:00:00'),
(3, 2, 8, 41, 0.4099, '2022-08-09 00:00:00'),
(4, 3, 6, 150, 1.5, '2022-08-09 00:00:00'),
(5, 1, 2, 100, 1, '2022-08-09 00:00:00'),
(6, 2, 7, 100, 1, '2022-08-09 00:00:00'),
(7, 4, 4, 299, 2.99, '2022-08-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_phone`) VALUES
(1, 'John Doe', 'john@doe.com', '1234567891'),
(2, 'John Smith', 'john@smith.com', '1987654321'),
(3, 'Angel Smith', 'angel@smith.com', '4561237891'),
(4, 'Maria Doe', 'maria@doe.com', '9871234561'),
(5, 'John Cena', 'john@cena.com', '9843212345'),
(6, 'Will Doe', 'will@doe.com', '9812345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reward_details`
--
ALTER TABLE `reward_details`
  ADD PRIMARY KEY (`reward_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reward_details`
--
ALTER TABLE `reward_details`
  MODIFY `reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
