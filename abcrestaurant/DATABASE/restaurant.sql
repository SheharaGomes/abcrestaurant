-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 05, 2024 at 03:18 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(18, 'Mains', NULL, '2023-07-18 22:24:18', '2024-09-05 20:52:33'),
(11, 'Desserts', '', '2023-07-03 20:13:20', '2024-09-05 20:52:43'),
(10, 'Drinks', '', '2023-07-03 20:13:11', '2024-09-05 20:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` varchar(50) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL,
  `item_code` varchar(10) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`, `item_image`, `item_code`, `qty`, `category`, `created_at`, `updated_at`) VALUES
(24, 'Chicken spagetti', '2800', 'chicken-spaghetti.jpg', '01', 0, 'Mains', '2024-07-03 20:16:34', '2024-07-09 15:43:52'),
(25, 'Cheese Pizza', '4050', 'Cheese-Pizza.jpg', '02', 0, 'Mains', '2024-07-03 20:18:13', '2024-07-04 00:17:19'),
(26, 'Tiramisu', '1080', 'tiramisu.jpg', '03', 0, 'Desserts', '2024-07-03 20:49:09', '2024-07-04 00:17:27'),
(27, 'Chocolate Milkshake', '430', '64a2e8908221f_coffee-milkshake-square.jpg', '04', 0, 'Drinks', '2024-07-03 20:54:31', '2024-07-04 00:17:33'),
(29, 'Negroni', '1590', 'negroni.jpg', '06', 0, 'Drinks', '2024-07-03 20:55:28', '2024-07-04 00:17:47'),
(30, 'Lime Juice', '280', 'lime.jpg', '07', 0, 'Drinks', '2024-07-03 20:56:08', '2024-07-04 00:19:19'),
(31, 'Chocolate cake', '850', 'cake.jpg', '07', 0, 'Desserts', '2024-07-03 20:56:41', '2024-07-04 00:19:24'),
(32, 'Chicken Biryani', '890', 'Chicken-Biryani.jpg', '07', 0, 'Mains', '2024-07-03 20:57:09', '2024-07-04 00:19:29'),
(37, 'Watermelon Mojito', '650', 'watermelon-mojito-3.jpg', '09', NULL, 'Drinks', '2024-07-09 19:14:24', NULL),
(38, 'Chicken Fried Rice', '950', 'Chicken-Fried-Rice.jpg', '09', NULL, 'Mains', '2024-07-09 19:14:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` varchar(50) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_code` varchar(10) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_image`, `product_code`, `qty`, `brand`, `category`, `created_at`, `updated_at`) VALUES
(48, 'Chicken Spagetti', '2800', '66d9b7f33e951_chicken-spaghetti.jpg', '020', NULL, NULL, 'Mains', '2024-09-05 20:53:55', NULL),
(49, 'Chicken Fried Rice', '950', '66d9b811841e8_Chicken-Fried-Rice.jpg', '021', NULL, NULL, 'Mains', '2024-09-05 20:54:25', NULL),
(50, 'Cheese Pizza', '4050', '66d9b835bdca6_Cheese-Pizza.jpg', '022', NULL, NULL, 'Mains', '2024-09-05 20:55:01', NULL),
(51, 'Tiramisu', '1080', '66d9b8c822864_tiramisu.jpg', '023', NULL, NULL, 'Desserts', '2024-09-05 20:57:28', NULL),
(52, 'Chocolate Milkshake', '430', '66d9b8f6e37bc_64a2e8908221f_coffee-milkshake-square.jpg', '024', NULL, NULL, 'Drinks', '2024-09-05 20:58:14', NULL),
(53, 'Negroni', '1590', '66d9b91abe1fd_negroni.jpg', '025', NULL, NULL, 'Drinks', '2024-09-05 20:58:50', NULL),
(54, 'Beer', '900', '66d9b93c0dafb_beer2.jpg', '026', NULL, NULL, 'Drinks', '2024-09-05 20:59:24', NULL),
(55, 'Lime Juice', '650', '66d9b964b911f_lime.jpg', '027', NULL, NULL, 'Drinks', '2024-09-05 21:00:04', NULL),
(56, 'Chocolate Cake', '980', '66d9b9907a438_cake.jpg', '028', NULL, NULL, 'Desserts', '2024-09-05 21:00:48', NULL),
(57, 'Chocolate Pudding', '700', '66d9b9b865b38_dark-chocolate-pudding-8.jpg', '029', NULL, NULL, 'Desserts', '2024-09-05 21:01:28', NULL),
(58, 'Chicken Biryani', '1800', '66d9b9e58b52b_Chicken-Biryani.jpg', '030', NULL, NULL, 'Mains', '2024-09-05 21:02:13', NULL),
(59, 'Watermelon Mojito', '1000', '66d9ba0de1cc4_watermelon-mojito-3.jpg', '031', NULL, NULL, 'Drinks', '2024-09-05 21:02:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
CREATE TABLE IF NOT EXISTS `table` (
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `guests` int NOT NULL,
  `number` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`name`, `email`, `date`, `time`, `guests`, `number`) VALUES
('Inoka Amarasinghe', '11@gmail.com', '2023-07-06', '13:17:00', 4, '0'),
('Inoka Amarasinghe', '11@gmail.com', '2023-07-06', '13:17:00', 4, '0'),
('nanayakkara', 'nana@gmail.com', '2023-07-04', '18:01:00', 2, '0772456787'),
('nanayakkara', 'nana@gmail.com', '2023-07-04', '18:01:00', 2, '0772456787'),
('manu', '11222@gmail.com', '2023-06-30', '01:17:00', 2, '0772456787'),
('pamidu', 'pami@gmail.com', '2023-07-04', '16:12:00', 2, '080735721');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `user_type` varchar(5) DEFAULT 'user',
  `reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `email`, `address`, `city`, `phone`, `user_type`, `reg_date`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', NULL, NULL, NULL, 'admin', '2023-06-11 01:30:03'),
(2, 'oshan', '1234', 'Oshan', 'oshan@gmail.com', NULL, NULL, NULL, 'user', '2023-06-11 01:31:53'),
(3, 'vikum', '5678', 'bhashitha', 'vikum@gmail.com', NULL, NULL, NULL, 'user', '2023-06-11 03:38:42'),
(23, 'Savith', '9101', 'Olitha', 'Savith@gmail.com', NULL, NULL, NULL, 'user', '2023-06-11 03:42:14'),
(25, 'Danisha', '1111', 'vishvani', 'rodrigo@gmail.com', NULL, NULL, NULL, 'user', '2023-06-11 03:44:48'),
(26, 'pulni', '2222', 'wijebandara', 'percy@gmail.com', NULL, NULL, NULL, 'user', '2023-06-11 03:45:18'),
(31, 'ino', '111', 'Inoka Amarasinghe', '11@gmail.com', NULL, NULL, NULL, 'user', '2023-07-08 20:43:02'),
(32, 'Kaveesha_Nanayakkara', '123', 'Kaveesha Nanayakkara', 'k@gmail.com', NULL, NULL, NULL, 'user', '2023-07-09 17:07:45'),
(34, 'kk', '123', 'kk', 'kk@gmail.com', 'kk', 'll', '78787899', 'admin', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
