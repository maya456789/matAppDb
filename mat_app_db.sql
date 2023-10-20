-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 02:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mat_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_stocks`
--

CREATE TABLE `available_stocks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `mrp` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `available_stocks`
--

INSERT INTO `available_stocks` (`id`, `name`, `description`, `unit`, `category`, `sale_price`, `mrp`, `createdAt`, `updatedAt`) VALUES
(1, 'JioNext', 'Dual camera with 12 mega pixel front.', 'Device', 'Mobile', 6500, 7000, '2022-11-18 04:45:02', '2022-11-18 04:45:02'),
(2, 'Lenovo', 'Intel i5 processor with 8GB Ram.', 'Device', 'Laptop', 45000, 48000, '2022-11-18 04:52:16', '2022-11-18 04:52:16'),
(3, 'Bajaj Ultima', 'An Aluminium fan with 500Hz capasity.', 'Device', 'Fan', 2000, 2200, '2022-11-18 05:46:41', '2022-11-18 05:46:41'),
(8, 'Bajaj Grinder', 'Bajaj grinder having 650Watt power.', 'Grinder', 'Mixer', 2500, 3000, '2022-11-19 08:38:19', '2022-11-19 08:38:19'),
(11, 'Tata Nano', 'Small car', 'Vehical', 'car', 190000, 2000000, '2022-11-19 13:58:44', '2022-11-19 13:58:44'),
(13, 'Phone Standard', 'A phone with a standard', 'Device', 'Mobile', 2999, 4000, '2022-11-20 07:24:51', '2022-11-20 07:24:51'),
(14, 'Phone XL', 'A large phone with one of the best screens', 'Device', 'Mobile', 6999, 7500, '2022-12-19 07:03:31', '2022-12-19 07:03:31'),
(15, 'Paneer', 'Fresh cow milk product.', 'kg', 'Milk Product', 100, 110, '2022-12-29 05:57:34', '2022-12-29 05:57:34'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 13:11:12', '2023-01-12 13:11:12'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 13:14:20', '2023-01-12 13:14:20'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 13:19:03', '2023-01-12 13:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` int(20) DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `mobile`, `credit_limit`, `createdAt`, `updatedAt`) VALUES
(1, 'Raj', 'D20,Od Bangalo,Pune', 2147483647, 2000, '2022-11-18 09:54:54', '2022-11-18 09:54:54'),
(2, 'Suraj', 'Katraj,Pune', 2147483647, 3000, '2022-11-18 10:09:10', '2022-11-18 10:09:10'),
(3, 'Mahesh', 'Jsul solapur', 2147483647, 1000, '2022-11-18 10:10:47', '2022-11-18 10:10:47'),
(4, 'Pankaj', '1478,Bahind tempale,Solapur', 2147483647, 3000, '2022-11-19 08:39:42', '2022-11-19 08:39:42'),
(5, 'Viraj', 'Near bus stang,Banglor', 2147483647, 1000, '2022-11-19 08:43:05', '2022-11-19 08:43:05'),
(6, 'Prakash', '4587,Near mp bangalo,Solapur', 2147483647, 2000, '2022-11-20 07:22:57', '2022-11-20 07:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `type`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Sweet', 'Barfi', '2022-11-19 08:35:07', '2022-11-19 08:35:07'),
(2, 'Car', 'Tata Figo', '2022-11-20 07:23:56', '2022-11-20 07:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `username`, `password`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin123', 'admin@gmail.com', '2023-10-17 14:03:54', '2023-10-17 14:03:54'),
(2, 'raj', 'raj1234', 'raj@gmail.com', '2023-10-17 14:12:28', '2023-10-17 14:12:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available_stocks`
--
ALTER TABLE `available_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `available_stocks`
--
ALTER TABLE `available_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
