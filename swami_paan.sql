-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 02:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swami_paan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_registrations`
--

CREATE TABLE `admin_registrations` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_registrations`
--

INSERT INTO `admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'ad@cake.com', '987654');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Cigarette', '230327094803.png'),
(2, 'Pan Masala', '230327100544.png'),
(3, 'Tobacco ', '230327100914.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`) VALUES
(5, 4, '2023-03-30', 'Cash', '400');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(4, 3, 'Black Choco', 2),
(5, 4, 'Red velvet', 3),
(6, 5, 'Rajnigandha Pan Masala ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'GOLD FLAKE CIGARETTES 10S', 1, '165', 'This Gold Flake Cigarettes vintage metal sign measures 24 inches by 16 inches and weighs in at 4 lb(s). This vintage metal sign is hand made in the USA using heavy gauge american steel and a process known as sublimation, where the image is baked into a powder coating for a durable and long lasting f', '2303270953150.jpg'),
(2, 'Marlboro advance', 1, '330', 'Marlboro advance 20 in a box cigarette packet', '2303270958590.png'),
(6, 'Rajnigandha Pan Masala ', 2, '400', 'This is a strawberRajnigandha Pan Masala is a premium Pan Masala offering from 90 years old legacy of DS Group. Perfect blend of precious ingredients and aromatic flavors including Betelnut, Catechu, Lime and Cardamom seeds, Rajnigandha has been the first choice of connoisseurs of Pan Masala. Rajnig', '2303271014470.png'),
(8, 'Choco chips', 4, '050', 'This a chocolate chip cookie.', '2007310445280.jpg'),
(9, 'Baghban', 3, '025', 'Baghban', '2303271022040.png'),
(11, 'Vimal', 2, '500', 'Vimal Paan Masala', '2303271018440.png'),
(13, 'Tulsi 00', 3, '60_', 'Tulsi 00', '2303280950560.png'),
(14, 'Baba 120 Pouch', 3, '300', 'Baba 120 Pouch', '2303280952150.png'),
(15, 'RMD', 2, '120', 'RMD', '2303280953380.png');

-- --------------------------------------------------------

--
-- Table structure for table `users_registrations`
--

CREATE TABLE `users_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_registrations`
--

INSERT INTO `users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(4, 'sanjay', 'sanjay@gmail.com', 'sanjay123', '1234567890', 'bhavnagar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_registrations`
--
ALTER TABLE `admin_registrations`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users_registrations`
--
ALTER TABLE `users_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_registrations`
--
ALTER TABLE `admin_registrations`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_registrations`
--
ALTER TABLE `users_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
