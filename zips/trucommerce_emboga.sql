-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 07:19 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trucommerce_emboga`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `introduction` longtext NOT NULL,
  `logo` varchar(256) NOT NULL,
  `featImage` varchar(256) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `fb` varchar(256) NOT NULL,
  `tw` varchar(256) NOT NULL,
  `insta` varchar(256) NOT NULL,
  `gp` varchar(256) NOT NULL,
  `pin` varchar(256) NOT NULL,
  `ln` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `name`, `introduction`, `logo`, `featImage`, `email`, `phone`, `address`, `city`, `fb`, `tw`, `insta`, `gp`, `pin`, `ln`) VALUES
(1, 'e-mboga.co.ke', 'e-mboga.co.ke is your online agricultural produce store; Fruit & Vegetable, Fresh meat & Groceries!We home deliver all these at your convenience and liking.', '', '', 'info@emboga.co.ke', '+254 711 506 622', 'Mwalimu Center', 'Kakamega', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `title` varchar(64) NOT NULL,
  `category` varchar(256) NOT NULL,
  `excerpt` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `author` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  `ref` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent`, `name`, `url`, `ref`, `description`, `created_at`) VALUES
(18, 0, 'Groceries', '0161644B0115669102A43179931462', 'CATILQCDS5', 'All groceries', '2018-01-27 09:27:58'),
(17, 0, 'Poultry Meat', '009B3358494369A7324120A52045B7', 'CAT5WHECQ2', 'All poultry products', '2018-01-27 09:27:13'),
(16, 0, 'Fruits', '685A9988A9908847A30BA0B70571A6', 'CATCQIGJE9', 'All fruits', '2018-01-27 09:26:31'),
(15, 0, 'Vegetables', '709830B2726A6BB5AAA00A54B78260', 'CATOIR0SPG', 'All veges', '2018-01-27 09:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `company` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `primary_country` varchar(256) NOT NULL,
  `primary_address` varchar(256) NOT NULL,
  `primary_town` varchar(256) NOT NULL,
  `primary_county` varchar(256) NOT NULL,
  `primary_postcode` varchar(256) NOT NULL,
  `billing_country` varchar(256) NOT NULL,
  `billing_address` varchar(256) NOT NULL,
  `billing_town` varchar(256) NOT NULL,
  `billing_county` varchar(256) NOT NULL,
  `billing_postcode` varchar(256) NOT NULL,
  `shipping_country` varchar(256) NOT NULL,
  `shipping_address` varchar(256) NOT NULL,
  `shipping_town` varchar(256) NOT NULL,
  `shipping_county` varchar(256) NOT NULL,
  `shipping_postcode` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `about` longtext NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `fax` varchar(64) NOT NULL,
  `website` varchar(256) NOT NULL,
  `fb` varchar(256) NOT NULL,
  `tw` varchar(256) NOT NULL,
  `gp` varchar(256) NOT NULL,
  `ln` varchar(256) NOT NULL,
  `pin` varchar(256) NOT NULL,
  `feat_image` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` longtext NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `title` varchar(64) NOT NULL,
  `category` varchar(256) NOT NULL,
  `excerpt` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `author` int(11) NOT NULL,
  `kiedy` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `productUrl` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `url`, `image`, `productUrl`, `created_at`, `updated_at`) VALUES
(30, '3AA2B96BA0868347B78B9118724290', '1517037061-managu_5.jpg', '99B38418A9A492415AB1B746BB7374', '2018-01-27 10:11:01', '0000-00-00 00:00:00'),
(29, '3AA2B96BA0868347B78B9118724290', '1517037061-managu_3.jpg', '99B38418A9A492415AB1B746BB7374', '2018-01-27 10:11:01', '0000-00-00 00:00:00'),
(28, '3AA2B96BA0868347B78B9118724290', '1517037061-managu_2.jpg', '99B38418A9A492415AB1B746BB7374', '2018-01-27 10:11:01', '0000-00-00 00:00:00'),
(27, '3AA2B96BA0868347B78B9118724290', '1517037061-managu_1.jpg', '99B38418A9A492415AB1B746BB7374', '2018-01-27 10:11:01', '0000-00-00 00:00:00'),
(31, '92288404496913A5261A0BB9865839', '1528186638-fruit.jpg', '6A1221431917B67863080A37134457', '2018-06-05 11:17:18', '0000-00-00 00:00:00'),
(32, '92288404496913A5261A0BB9865839', '1528186638-gallery-1.jpg', '6A1221431917B67863080A37134457', '2018-06-05 11:17:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `ref` varchar(256) NOT NULL,
  `clientId` int(11) NOT NULL,
  `product` varchar(256) NOT NULL,
  `pprice` decimal(10,2) NOT NULL,
  `pqty` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `paymentMode` varchar(256) NOT NULL,
  `txn_code` varchar(256) NOT NULL,
  `notes` longtext NOT NULL,
  `status` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `sku` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `summary` varchar(256) NOT NULL,
  `cat` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `commission` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `metaTitle` varchar(256) NOT NULL,
  `metaKey` varchar(64) NOT NULL,
  `image` text NOT NULL,
  `brand` varchar(256) NOT NULL,
  `deliveryCondition` longtext NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `url`, `sku`, `name`, `summary`, `cat`, `status`, `price`, `commission`, `discount`, `description`, `metaTitle`, `metaKey`, `image`, `brand`, `deliveryCondition`, `stock`, `created_at`, `updated_at`) VALUES
(11, '99B38418A9A492415AB1B746BB7374', 'ManaguIYQ4HV2', 'Dhania', 'Dhania for spicing. Natural kidney cleanser.', '709830B2726A6BB5AAA00A54B78260', 1, '500.00', 0, 0, 'Dhania for spicing. This natural kidney cleanser, is widely distributed throughout the tropics and can be found throughout East Africa.', 'Dhania', 'Dhania', '1528362945-p21.jpg', 'emboga', 'MPESA, AirTel Money and Cash On Delivery payment Options', 1000, '2018-01-27 10:03:59', '2018-06-07 12:19:19'),
(12, '71A2A665A0574A496B7770464A0696', 'Sukuma WikiDI6RBW3', 'Lettuce', 'Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce', '709830B2726A6BB5AAA00A54B78260', 1, '350.00', 2, 10, 'Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce Lettuce', '', '', '1528362989-p25.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 10, '2018-06-05 11:05:21', '2018-06-07 12:16:58'),
(13, '6A1221431917B67863080A37134457', 'Sweet Banana313MF9P', 'Papaya', 'Papaya Papaya Papaya Papaya Papaya Papaya', '685A9988A9908847A30BA0B70571A6', 1, '250.00', 4, 30, 'Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya Papaya', 'Papaya Papaya Papaya Papaya Papaya Papaya', 'Papaya Papaya Papaya Papaya Papaya Papaya', '1528375883-p11.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 0, '2018-06-05 11:07:42', '2018-06-07 15:52:11'),
(14, '09A401862B4A44048407B99274324A', 'Juicy FruitsLTWT1K2', 'Oduma zi Mayze', 'Oduma zi Mayze Oduma zi MayzeOduma zi Mayze', '0161644B0115669102A43179931462', 1, '150.00', 12, 50, 'Oduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi MayzeOduma zi Mayze', '', '', '1528376003-p9.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 100, '2018-06-05 11:55:27', '2018-06-07 15:54:16'),
(16, '3297131B40898595462165A1942728', 'BroccoliZDTFY87', 'Broccoli', 'Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli', '709830B2726A6BB5AAA00A54B78260', 1, '750.00', 5, 0, 'Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli Broccoli', '', '', '1528376194-p1.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 560, '2018-06-07 15:56:34', '0000-00-00 00:00:00'),
(17, '395644B5832A994626A3653A034580', 'Green Peas7VHCAGM', 'Green Peas', 'Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas', '0161644B0115669102A43179931462', 1, '100.00', 10, 10, 'Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas Green Peas', '', '', '1528376587-p2.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 230, '2018-06-07 16:03:07', '0000-00-00 00:00:00'),
(18, '398B60A7A67919464798B3862B9A19', 'Pilipili HohoN7H3AVB', 'Pilipili Hoho', 'Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho', '709830B2726A6BB5AAA00A54B78260', 1, '450.00', 13, 30, 'Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho', 'Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho', 'Pilipili Hoho Pilipili Hoho Pilipili Hoho Pilipili Hoho', '1528380511-p3.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 10000, '2018-06-07 17:08:31', '0000-00-00 00:00:00'),
(19, '7219AB8389709A97B6A9A52422A249', 'OrangesARSTJET', 'Oranges', 'Oranges Oranges Oranges Oranges', '685A9988A9908847A30BA0B70571A6', 1, '10.00', 5, 4, 'Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges Oranges', '', '', '1528380584-p4.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 100000, '2018-06-07 17:09:44', '0000-00-00 00:00:00'),
(20, 'B0708962B336670B8B24A9AA08A242', 'Strawberries8IBPM92', 'Strawberries', 'Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries', '685A9988A9908847A30BA0B70571A6', 1, '80.00', 30, 20, 'Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries Strawberries', '', '', '1528380663-p6.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 100000, '2018-06-07 17:11:03', '0000-00-00 00:00:00'),
(21, '20852AAB44339871761A2AB9179A77', 'Berries5VPTYTA', 'Berries', 'Berries Berries Berries Berries Berries', '685A9988A9908847A30BA0B70571A6', 1, '50.00', 30, 10, 'Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries Berries', '', '', '1528380731-p8.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 100000, '2018-06-07 17:12:11', '0000-00-00 00:00:00'),
(22, '506389432914AA07B1540AB8B2AB3B', 'Irish PotatoesX35Q8DE', 'Irish Potatoes', 'Irish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish Potatoes', '709830B2726A6BB5AAA00A54B78260', 1, '100.00', 30, 10, 'Irish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish PotatoesIrish Potatoes', '', '', '1528380790-p10.jpg', '', 'MPESA, AirTel Money and Cash On Delivery payment Options', 100000, '2018-06-07 17:13:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `ca_staff` int(11) NOT NULL,
  `ce_staff` int(11) NOT NULL,
  `cd_staff` int(11) NOT NULL,
  `ca_prod` int(11) NOT NULL,
  `ce_prod` int(11) NOT NULL,
  `cd_prod` int(11) NOT NULL,
  `ca_client` int(11) NOT NULL,
  `ce_client` int(11) NOT NULL,
  `cd_client` int(11) NOT NULL,
  `ca_order` int(11) NOT NULL,
  `ce_order` int(11) NOT NULL,
  `cd_order` int(11) NOT NULL,
  `ca_sales` int(11) NOT NULL,
  `ce_sales` int(11) NOT NULL,
  `cd_sales` int(11) NOT NULL,
  `ca_content` int(11) NOT NULL,
  `ce_content` int(11) NOT NULL,
  `cd_content` int(11) NOT NULL,
  `ca_offers` int(11) NOT NULL,
  `ce_offers` int(11) NOT NULL,
  `cd_offers` int(11) NOT NULL,
  `ca_roles` int(11) NOT NULL,
  `ce_roles` int(11) NOT NULL,
  `cd_roles` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `title`, `ca_staff`, `ce_staff`, `cd_staff`, `ca_prod`, `ce_prod`, `cd_prod`, `ca_client`, `ce_client`, `cd_client`, `ca_order`, `ce_order`, `cd_order`, `ca_sales`, `ce_sales`, `cd_sales`, `ca_content`, `ce_content`, `cd_content`, `ca_offers`, `ce_offers`, `cd_offers`, `ca_roles`, `ce_roles`, `cd_roles`, `created_at`, `updated_at`) VALUES
(1, 'sysadmin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-07-29 00:00:00', '2017-07-28 15:58:02'),
(2, 'admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '2017-07-28 15:58:02'),
(3, 'staff', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, '2017-07-29 00:00:00', '2017-07-28 16:01:46'),
(4, 'client', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2017-07-29 00:00:00', '2017-07-28 16:01:46'),
(5, 'president', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-01-01 00:00:00', '2018-01-04 15:41:22'),
(6, 'booking', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-01-01 00:00:00', '2018-01-04 15:41:22'),
(7, 'reception', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-01-01 00:00:00', '2018-01-04 15:42:36'),
(8, 'author', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2018-01-01 00:00:00', '2018-01-04 16:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `uopdated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `profilePic` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `pubKey` longtext NOT NULL,
  `privKey` varchar(255) NOT NULL,
  `gender` varchar(16) NOT NULL,
  `county` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `pin` int(4) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `profilePic`, `fname`, `lname`, `role`, `url`, `email`, `phone`, `password`, `ip`, `pubKey`, `privKey`, `gender`, `county`, `profession`, `created_at`, `updated_at`, `pin`, `status`) VALUES
(11, '', 'Evans', 'Ogego', 1, '62a95414a570209a2aa0149808b1a8-evans-ogego', 'trulance247@gmail.com', '0791036665', '$2y$10$x6qP3qxTFXtgzTiWLZ9NGOlaazQkPHHt08InOvMBy2.zmNsrCPFmS', '127.0.0.1', '', '', 'g', '', '', '2017-12-21 04:47:52', '0000-00-00 00:00:00', 0, 0),
(0, '', 'John', 'Junior', 2, '290584372bab94230395772bb47179-john-junior', 'ceo.ogego@gmail.com', '0792680044', '$2y$10$RC2YFe/1apY8s6UBfhxlf.ZLImKoLoFOmw2ajkuMzUCfZ8Paa4qEC', '127.0.0.1', '', '', 'm', '', '', '2018-06-07 12:49:11', '0000-00-00 00:00:00', 7119, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
