-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 01:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailor`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'PANTS'),
(3, 'SHIRTS'),
(4, 'FORMALS'),
(5, 'TOPS'),
(6, 'SANDOS');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `email`, `password`, `number`) VALUES
(1, 'rohaan@gmail.com', 'r', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `returndate` date NOT NULL,
  `noofdress` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `belt` varchar(255) NOT NULL,
  `bottom` varchar(255) NOT NULL,
  `chest` varchar(255) NOT NULL,
  `waist` varchar(255) NOT NULL,
  `shoulder` varchar(255) NOT NULL,
  `neck` varchar(255) NOT NULL,
  `hand` varchar(255) NOT NULL,
  `hipp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `number`, `returndate`, `noofdress`, `material`, `length`, `user`, `type`, `belt`, `bottom`, `chest`, `waist`, `shoulder`, `neck`, `hand`, `hipp`) VALUES
(2, 'name', 'number', '2022-12-03', '3', 'SILK', 4, 1, 'kurti', '5', '4', '5', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `price` int(150) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `name`, `desc`, `price`, `image`) VALUES
(1, 'PANTS', 'PANT', 'small unique desc desccc over here', 600, 'service1.jpg'),
(2, 'SHIRTS', 'SHIRT', 'small unique desc desccc over here', 350, 'service2.jpg'),
(3, 'TOPS', 'TOP', 'small unique desc desccc over here', 700, 'service3.jpg'),
(4, 'SANDOS', 'SANDO', 'small unique desc desccc over here', 250, 'service4.jpg'),
(5, 'FORMALS', 'FORMAL', 'small unique desc desccc over here', 900, 'service5.jpg'),
(6, 'PANTS', 'PANT', 'small unique desc desccc over here', 600, 'service1.jpg'),
(7, 'SHIRTS', 'SHIRT', 'small unique desc desccc over here', 350, 'service2.jpg'),
(8, 'TOPS', 'TOP', 'small unique desc desccc over here', 700, 'service3.jpg'),
(9, 'SANDOS', 'SANDO', 'small unique desc desccc over here', 250, 'service4.jpg'),
(10, 'FORMALS', 'FORMAL', 'small unique desc desccc over here', 900, 'service5.jpg'),
(11, 'PANTS', 'PANT', 'small unique desc desccc over here', 600, 'service1.jpg'),
(12, 'SHIRTS', 'SHIRT', 'small unique desc desccc over here', 350, 'service2.jpg'),
(13, 'TOPS', 'TOP', 'small unique desc desccc over here', 700, 'service3.jpg'),
(14, 'SANDOS', 'SANDO', 'small unique desc desccc over here', 250, 'service4.jpg'),
(15, 'FORMALS', 'FORMAL', 'small unique desc desccc over here', 900, 'service5.jpg'),
(16, 'PANTS', 'PANT', 'small unique desc desccc over here', 600, 'service1.jpg'),
(17, 'SHIRTS', 'SHIRT', 'small unique desc desccc over here', 350, 'service2.jpg'),
(18, 'TOPS', 'TOP', 'small unique desc desccc over here', 700, 'service3.jpg'),
(19, 'SANDOS', 'SANDO', 'small unique desc desccc over here', 250, 'service4.jpg'),
(20, 'FORMALS', 'FORMAL', 'small unique desc desccc over here', 900, 'service5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `image`) VALUES
(1, 'first service', 'images/service1.jpg'),
(2, 'first service', 'images/service2.jpg'),
(3, 'first service', 'images/service3.jpg'),
(4, 'first service', 'images/service4.jpg'),
(5, 'first service', 'images/service5.jpg'),
(6, 'first service', 'images/service6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `instalink` varchar(255) NOT NULL,
  `fblink` varchar(255) NOT NULL,
  `maillink` varchar(255) NOT NULL,
  `whatsapplink` varchar(255) NOT NULL,
  `no` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `company`, `instalink`, `fblink`, `maillink`, `whatsapplink`, `no`, `msg`) VALUES
(1, 'TAILOR', 'https://www.instagram.com/rohaan.mehta/', 'https://www.facebook.com/RohaanMehta/', 'gmail.com', 'https://wa.me/919766084748/?text= I need to book an appointment', '919766084748', 'I am interested to buy ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
