-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2018 at 02:11 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `API`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `user_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(5, 35, 41, '2018-08-12 14:07:55', '2018-08-12 14:07:55'),
(7, 35, 32, '2018-08-12 14:17:41', '2018-08-12 14:17:41'),
(8, 18, 33, '2018-08-12 14:35:09', '2018-08-12 14:35:09'),
(9, 18, 36, '2018-08-12 14:37:58', '2018-08-12 14:37:58'),
(12, 35, 40, '2018-08-12 14:40:47', '2018-08-12 14:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floorsnum` int(11) NOT NULL,
  `unitsnum` int(11) NOT NULL,
  `compound_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `number`, `img`, `floorsnum`, `unitsnum`, `compound_id`, `created_at`, `updated_at`) VALUES
(7, 1, 'unit31_1520446588.jpg', 4, 4, 18, '2018-03-07 16:16:28', '2018-03-07 16:16:28'),
(8, 2, 'unit29_1520446613.jpg', 4, 4, 18, '2018-03-07 16:16:53', '2018-03-07 16:16:53'),
(9, 1, 'unit28_1520446640.jpg', 4, 4, 19, '2018-03-07 16:17:20', '2018-03-07 16:17:20'),
(10, 2, 'unit28_1520446663.jpg', 4, 4, 19, '2018-03-07 16:17:43', '2018-03-07 16:17:43'),
(15, 1, 'unit22_1520446808.jpg', 4, 4, 22, '2018-03-07 16:20:08', '2018-03-07 16:20:08'),
(16, 2, 'unit22_1520446828.jpeg', 4, 4, 22, '2018-03-07 16:20:28', '2018-03-07 16:20:28'),
(17, 1, 'unit20_1520446857.jpg', 2, 2, 23, '2018-03-07 16:20:57', '2018-03-07 16:20:57'),
(18, 2, 'unit15_1520446900.jpg', 2, 2, 23, '2018-03-07 16:21:40', '2018-03-07 16:21:40'),
(19, 1, 'unit13_1520446922.jpg', 2, 2, 24, '2018-03-07 16:22:02', '2018-03-07 16:22:02'),
(20, 2, 'unit12_1520446944.jpg', 2, 2, 24, '2018-03-07 16:22:24', '2018-03-07 16:22:24'),
(21, 1, 'unit11_1520446978.JPG', 2, 2, 25, '2018-03-07 16:22:58', '2018-03-07 16:22:58'),
(22, 2, 'unit18_1520447036.jpg', 2, 2, 25, '2018-03-07 16:23:56', '2018-03-07 16:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `compounds`
--

CREATE TABLE `compounds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compounds`
--

INSERT INTO `compounds` (`id`, `name`, `location`, `img`, `project_id`, `created_at`, `updated_at`) VALUES
(18, 'chicagho', 'Alexandria', 'unit253_1520445860.jpg', 18, '2018-03-07 16:04:20', '2018-03-07 16:04:20'),
(19, 'New Orleans', 'Alexandria', 'unit533_1520445911.jpg', 18, '2018-03-07 16:05:11', '2018-03-07 16:05:11'),
(22, 'Seattle', 'Aswan', 'unit52_1520446099.jpg', 16, '2018-03-07 16:08:19', '2018-03-07 16:08:19'),
(23, 'Denver', 'Aswan', 'unit39_1520446134.jpg', 16, '2018-03-07 16:08:54', '2018-03-07 16:08:54'),
(24, 'Portland', 'Hurghada', 'unit38_1520446188.jpeg', 17, '2018-03-07 16:09:48', '2018-03-07 16:09:48'),
(25, 'Madison', 'Hurghada', 'unit37_1520446266.jpg', 17, '2018-03-07 16:11:06', '2018-03-07 16:11:06'),
(28, 'Quesna', 'aswan', '15204511591_1520465405.jpg', 16, '2018-03-07 21:30:05', '2018-03-07 21:30:05'),
(29, 'Dahab', 'hurghada', '15204511140_1520465443.jpg', 17, '2018-03-07 21:30:43', '2018-03-07 21:30:43'),
(30, 'stanly', 'alexandria', '15204503730_1520465480.jpg', 18, '2018-03-07 21:31:20', '2018-03-07 21:31:20'),
(31, 'baraka', 'fqfqdq', NULL, 17, '2018-08-27 21:16:20', '2018-08-27 21:16:20'),
(32, 'baraka', 'fqfqdq', NULL, 17, '2018-08-27 21:16:24', '2018-08-27 21:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(11, 'yousif', 'youif@yahoo.com', 'الموقع جميل', '2018-08-09 12:58:55', '2018-08-09 12:58:55'),
(12, 'mohamed', 'hamooaamerr@yahoo.com', 'WoooooW', '2018-08-09 13:00:18', '2018-08-09 13:00:18'),
(13, 'Yousif Salah', 'a0b.oamer@gmail.com', 'I Will buy chicagho by 290000 LE', '2018-08-12 14:07:06', '2018-08-12 14:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `img_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_id` int(11) NOT NULL,
  `img_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_id`, `img_type`, `created_at`, `updated_at`) VALUES
(3, '15204319242.jpg', 14, 'App\\Unit', '2018-03-07 12:12:04', '2018-03-07 12:12:04'),
(4, '15204347780.png', 14, 'App\\Unit', '2018-03-07 12:59:38', '2018-03-07 12:59:38'),
(5, '15204347781.png', 14, 'App\\Unit', '2018-03-07 12:59:38', '2018-03-07 12:59:38'),
(6, '15204347782.jpg', 14, 'App\\Unit', '2018-03-07 12:59:38', '2018-03-07 12:59:38'),
(7, '15204347783.jpg', 14, 'App\\Unit', '2018-03-07 12:59:38', '2018-03-07 12:59:38'),
(8, '15204383400.jpg', 4, 'App\\Unit', '2018-03-07 13:59:00', '2018-03-07 13:59:00'),
(9, '15204383401.jpg', 4, 'App\\Unit', '2018-03-07 13:59:00', '2018-03-07 13:59:00'),
(10, '15204383402.jpg', 4, 'App\\Unit', '2018-03-07 13:59:00', '2018-03-07 13:59:00'),
(11, '15204383403.jpg', 4, 'App\\Unit', '2018-03-07 13:59:00', '2018-03-07 13:59:00'),
(12, '15204422120.jpg', 15, 'App\\Unit', '2018-03-07 15:03:32', '2018-03-07 15:03:32'),
(13, '15204422121.jpg', 15, 'App\\Unit', '2018-03-07 15:03:32', '2018-03-07 15:03:32'),
(14, '15204422122.jpg', 15, 'App\\Unit', '2018-03-07 15:03:32', '2018-03-07 15:03:32'),
(15, '15204422123.jpg', 15, 'App\\Unit', '2018-03-07 15:03:32', '2018-03-07 15:03:32'),
(16, '15204422124.jpg', 15, 'App\\Unit', '2018-03-07 15:03:32', '2018-03-07 15:03:32'),
(17, '15204475330.jpg', 16, 'App\\Unit', '2018-03-07 16:32:13', '2018-03-07 16:32:13'),
(18, '15204475331.jpg', 16, 'App\\Unit', '2018-03-07 16:32:13', '2018-03-07 16:32:13'),
(19, '15204475332.jpg', 16, 'App\\Unit', '2018-03-07 16:32:13', '2018-03-07 16:32:13'),
(20, '15204477010.JPG', 17, 'App\\Unit', '2018-03-07 16:35:01', '2018-03-07 16:35:01'),
(21, '15204477011.jpg', 17, 'App\\Unit', '2018-03-07 16:35:01', '2018-03-07 16:35:01'),
(22, '15204477012.png', 17, 'App\\Unit', '2018-03-07 16:35:01', '2018-03-07 16:35:01'),
(23, '15204477560.jpg', 18, 'App\\Unit', '2018-03-07 16:35:56', '2018-03-07 16:35:56'),
(24, '15204477561.jpeg', 18, 'App\\Unit', '2018-03-07 16:35:56', '2018-03-07 16:35:56'),
(25, '15204477562.JPG', 18, 'App\\Unit', '2018-03-07 16:35:56', '2018-03-07 16:35:56'),
(26, '15204478270.jpg', 19, 'App\\Unit', '2018-03-07 16:37:07', '2018-03-07 16:37:07'),
(27, '15204478271.jpg', 19, 'App\\Unit', '2018-03-07 16:37:07', '2018-03-07 16:37:07'),
(28, '15204478272.jpg', 19, 'App\\Unit', '2018-03-07 16:37:07', '2018-03-07 16:37:07'),
(29, '15204478890.jpg', 20, 'App\\Unit', '2018-03-07 16:38:09', '2018-03-07 16:38:09'),
(30, '15204478891.jpg', 20, 'App\\Unit', '2018-03-07 16:38:09', '2018-03-07 16:38:09'),
(31, '15204478892.jpg', 20, 'App\\Unit', '2018-03-07 16:38:09', '2018-03-07 16:38:09'),
(32, '15204479370.jpg', 21, 'App\\Unit', '2018-03-07 16:38:57', '2018-03-07 16:38:57'),
(33, '15204479371.jpg', 21, 'App\\Unit', '2018-03-07 16:38:57', '2018-03-07 16:38:57'),
(34, '15204479372.jpeg', 21, 'App\\Unit', '2018-03-07 16:38:57', '2018-03-07 16:38:57'),
(35, '15204480060.jpeg', 22, 'App\\Unit', '2018-03-07 16:40:06', '2018-03-07 16:40:06'),
(36, '15204480061.jpg', 22, 'App\\Unit', '2018-03-07 16:40:06', '2018-03-07 16:40:06'),
(37, '15204480062.jpg', 22, 'App\\Unit', '2018-03-07 16:40:06', '2018-03-07 16:40:06'),
(38, '15204480570.jpg', 23, 'App\\Unit', '2018-03-07 16:40:57', '2018-03-07 16:40:57'),
(39, '15204480571.jpg', 23, 'App\\Unit', '2018-03-07 16:40:57', '2018-03-07 16:40:57'),
(40, '15204480572.jpg', 23, 'App\\Unit', '2018-03-07 16:40:57', '2018-03-07 16:40:57'),
(41, '15204481390.jpg', 24, 'App\\Unit', '2018-03-07 16:42:19', '2018-03-07 16:42:19'),
(42, '15204481391.jpg', 24, 'App\\Unit', '2018-03-07 16:42:19', '2018-03-07 16:42:19'),
(43, '15204481392.jpg', 24, 'App\\Unit', '2018-03-07 16:42:19', '2018-03-07 16:42:19'),
(44, '15204481790.jpg', 25, 'App\\Unit', '2018-03-07 16:42:59', '2018-03-07 16:42:59'),
(45, '15204481791.jpeg', 25, 'App\\Unit', '2018-03-07 16:42:59', '2018-03-07 16:42:59'),
(46, '15204481792.JPG', 25, 'App\\Unit', '2018-03-07 16:42:59', '2018-03-07 16:42:59'),
(47, '15204482340.jpg', 26, 'App\\Unit', '2018-03-07 16:43:54', '2018-03-07 16:43:54'),
(48, '15204482341.jpeg', 26, 'App\\Unit', '2018-03-07 16:43:54', '2018-03-07 16:43:54'),
(49, '15204482342.jpg', 26, 'App\\Unit', '2018-03-07 16:43:54', '2018-03-07 16:43:54'),
(50, '15204482790.jpg', 27, 'App\\Unit', '2018-03-07 16:44:39', '2018-03-07 16:44:39'),
(51, '15204482791.jpg', 27, 'App\\Unit', '2018-03-07 16:44:39', '2018-03-07 16:44:39'),
(52, '15204482792.jpg', 27, 'App\\Unit', '2018-03-07 16:44:39', '2018-03-07 16:44:39'),
(53, '15204483460.jpg', 28, 'App\\Unit', '2018-03-07 16:45:46', '2018-03-07 16:45:46'),
(54, '15204483461.jpg', 28, 'App\\Unit', '2018-03-07 16:45:46', '2018-03-07 16:45:46'),
(55, '15204483462.jpg', 28, 'App\\Unit', '2018-03-07 16:45:46', '2018-03-07 16:45:46'),
(56, '15204484230.jpg', 29, 'App\\Unit', '2018-03-07 16:47:03', '2018-03-07 16:47:03'),
(57, '15204484231.jpg', 29, 'App\\Unit', '2018-03-07 16:47:03', '2018-03-07 16:47:03'),
(58, '15204484232.jpg', 29, 'App\\Unit', '2018-03-07 16:47:03', '2018-03-07 16:47:03'),
(59, '15204485630.jpg', 30, 'App\\Unit', '2018-03-07 16:49:23', '2018-03-07 16:49:23'),
(60, '15204485631.jpeg', 30, 'App\\Unit', '2018-03-07 16:49:23', '2018-03-07 16:49:23'),
(61, '15204485632.JPG', 30, 'App\\Unit', '2018-03-07 16:49:23', '2018-03-07 16:49:23'),
(62, '15204486230.jpeg', 31, 'App\\Unit', '2018-03-07 16:50:23', '2018-03-07 16:50:23'),
(63, '15204486231.jpg', 31, 'App\\Unit', '2018-03-07 16:50:23', '2018-03-07 16:50:23'),
(64, '15204486232.jpg', 31, 'App\\Unit', '2018-03-07 16:50:23', '2018-03-07 16:50:23'),
(65, '15204486940.jpg', 32, 'App\\Unit', '2018-03-07 16:51:34', '2018-03-07 16:51:34'),
(66, '15204486941.jpg', 32, 'App\\Unit', '2018-03-07 16:51:34', '2018-03-07 16:51:34'),
(67, '15204486942.jpg', 32, 'App\\Unit', '2018-03-07 16:51:34', '2018-03-07 16:51:34'),
(68, '15204487380.jpg', 33, 'App\\Unit', '2018-03-07 16:52:18', '2018-03-07 16:52:18'),
(69, '15204487381.jpg', 33, 'App\\Unit', '2018-03-07 16:52:18', '2018-03-07 16:52:18'),
(70, '15204487382.jpg', 33, 'App\\Unit', '2018-03-07 16:52:18', '2018-03-07 16:52:18'),
(71, '15204488070.jpg', 34, 'App\\Unit', '2018-03-07 16:53:27', '2018-03-07 16:53:27'),
(72, '15204488071.jpg', 34, 'App\\Unit', '2018-03-07 16:53:27', '2018-03-07 16:53:27'),
(73, '15204488072.jpg', 34, 'App\\Unit', '2018-03-07 16:53:27', '2018-03-07 16:53:27'),
(74, '15204488640.jpg', 35, 'App\\Unit', '2018-03-07 16:54:24', '2018-03-07 16:54:24'),
(75, '15204488641.jpg', 35, 'App\\Unit', '2018-03-07 16:54:24', '2018-03-07 16:54:24'),
(76, '15204488642.jpeg', 35, 'App\\Unit', '2018-03-07 16:54:24', '2018-03-07 16:54:24'),
(77, '15204489530.jpeg', 36, 'App\\Unit', '2018-03-07 16:55:53', '2018-03-07 16:55:53'),
(78, '15204489541.jpg', 36, 'App\\Unit', '2018-03-07 16:55:54', '2018-03-07 16:55:54'),
(79, '15204489542.jpg', 36, 'App\\Unit', '2018-03-07 16:55:54', '2018-03-07 16:55:54'),
(80, '15204490010.jpg', 37, 'App\\Unit', '2018-03-07 16:56:41', '2018-03-07 16:56:41'),
(81, '15204490011.jpg', 37, 'App\\Unit', '2018-03-07 16:56:41', '2018-03-07 16:56:41'),
(82, '15204490012.jpg', 37, 'App\\Unit', '2018-03-07 16:56:41', '2018-03-07 16:56:41'),
(83, '15204490430.jpg', 38, 'App\\Unit', '2018-03-07 16:57:23', '2018-03-07 16:57:23'),
(84, '15204490431.jpg', 38, 'App\\Unit', '2018-03-07 16:57:23', '2018-03-07 16:57:23'),
(85, '15204490442.jpg', 38, 'App\\Unit', '2018-03-07 16:57:24', '2018-03-07 16:57:24'),
(86, '15204490950.jpg', 39, 'App\\Unit', '2018-03-07 16:58:15', '2018-03-07 16:58:15'),
(87, '15204490951.jpg', 39, 'App\\Unit', '2018-03-07 16:58:15', '2018-03-07 16:58:15'),
(88, '15204490952.jpg', 39, 'App\\Unit', '2018-03-07 16:58:15', '2018-03-07 16:58:15'),
(89, '15204491490.jpg', 40, 'App\\Unit', '2018-03-07 16:59:09', '2018-03-07 16:59:09'),
(90, '15204491491.JPG', 40, 'App\\Unit', '2018-03-07 16:59:09', '2018-03-07 16:59:09'),
(91, '15204491492.jpg', 40, 'App\\Unit', '2018-03-07 16:59:09', '2018-03-07 16:59:09'),
(92, '15204492050.jpg', 41, 'App\\Unit', '2018-03-07 17:00:05', '2018-03-07 17:00:05'),
(93, '15204492051.JPG', 41, 'App\\Unit', '2018-03-07 17:00:05', '2018-03-07 17:00:05'),
(94, '15204492052.jpg', 41, 'App\\Unit', '2018-03-07 17:00:05', '2018-03-07 17:00:05'),
(95, '15204493120.jpg', 42, 'App\\Unit', '2018-03-07 17:01:52', '2018-03-07 17:01:52'),
(96, '15204493121.jpg', 42, 'App\\Unit', '2018-03-07 17:01:52', '2018-03-07 17:01:52'),
(97, '15204493122.jpg', 42, 'App\\Unit', '2018-03-07 17:01:52', '2018-03-07 17:01:52'),
(98, '15204493670.jpeg', 43, 'App\\Unit', '2018-03-07 17:02:47', '2018-03-07 17:02:47'),
(99, '15204493671.jpg', 43, 'App\\Unit', '2018-03-07 17:02:47', '2018-03-07 17:02:47'),
(100, '15204493672.jpg', 43, 'App\\Unit', '2018-03-07 17:02:47', '2018-03-07 17:02:47'),
(101, '15204495070.jpg', 44, 'App\\Unit', '2018-03-07 17:05:07', '2018-03-07 17:05:07'),
(102, '15204495071.jpg', 44, 'App\\Unit', '2018-03-07 17:05:07', '2018-03-07 17:05:07'),
(103, '15204495072.jpg', 44, 'App\\Unit', '2018-03-07 17:05:07', '2018-03-07 17:05:07'),
(104, '15204496140.jpg', 45, 'App\\Unit', '2018-03-07 17:06:54', '2018-03-07 17:06:54'),
(105, '15204496141.jpg', 45, 'App\\Unit', '2018-03-07 17:06:54', '2018-03-07 17:06:54'),
(106, '15204496142.jpg', 45, 'App\\Unit', '2018-03-07 17:06:54', '2018-03-07 17:06:54'),
(107, '15204496600.jpg', 46, 'App\\Unit', '2018-03-07 17:07:40', '2018-03-07 17:07:40'),
(108, '15204496601.jpg', 46, 'App\\Unit', '2018-03-07 17:07:40', '2018-03-07 17:07:40'),
(109, '15204496602.jpg', 46, 'App\\Unit', '2018-03-07 17:07:40', '2018-03-07 17:07:40'),
(110, '15204497770.jpg', 47, 'App\\Unit', '2018-03-07 17:09:37', '2018-03-07 17:09:37'),
(111, '15204497781.jpg', 47, 'App\\Unit', '2018-03-07 17:09:38', '2018-03-07 17:09:38'),
(112, '15204497782.png', 47, 'App\\Unit', '2018-03-07 17:09:38', '2018-03-07 17:09:38'),
(113, '15204498510.jpg', 48, 'App\\Unit', '2018-03-07 17:10:51', '2018-03-07 17:10:51'),
(114, '15204498511.jpg', 48, 'App\\Unit', '2018-03-07 17:10:51', '2018-03-07 17:10:51'),
(115, '15204498512.jpg', 48, 'App\\Unit', '2018-03-07 17:10:51', '2018-03-07 17:10:51'),
(116, '15204499460.jpg', 49, 'App\\Unit', '2018-03-07 17:12:26', '2018-03-07 17:12:26'),
(117, '15204499461.jpg', 49, 'App\\Unit', '2018-03-07 17:12:26', '2018-03-07 17:12:26'),
(118, '15204499462.jpg', 49, 'App\\Unit', '2018-03-07 17:12:26', '2018-03-07 17:12:26'),
(119, '15204499970.jpg', 50, 'App\\Unit', '2018-03-07 17:13:17', '2018-03-07 17:13:17'),
(120, '15204499971.jpg', 50, 'App\\Unit', '2018-03-07 17:13:17', '2018-03-07 17:13:17'),
(121, '15204499972.png', 50, 'App\\Unit', '2018-03-07 17:13:17', '2018-03-07 17:13:17'),
(122, '15204500550.jpg', 51, 'App\\Unit', '2018-03-07 17:14:15', '2018-03-07 17:14:15'),
(123, '15204500551.jpg', 51, 'App\\Unit', '2018-03-07 17:14:15', '2018-03-07 17:14:15'),
(124, '15204500552.jpg', 51, 'App\\Unit', '2018-03-07 17:14:15', '2018-03-07 17:14:15'),
(125, '15204501450.png', 52, 'App\\Unit', '2018-03-07 17:15:45', '2018-03-07 17:15:45'),
(126, '15204501451.jpg', 52, 'App\\Unit', '2018-03-07 17:15:45', '2018-03-07 17:15:45'),
(127, '15204501452.jpg', 52, 'App\\Unit', '2018-03-07 17:15:45', '2018-03-07 17:15:45'),
(128, '15204501800.jpg', 53, 'App\\Unit', '2018-03-07 17:16:20', '2018-03-07 17:16:20'),
(129, '15204501801.jpg', 53, 'App\\Unit', '2018-03-07 17:16:20', '2018-03-07 17:16:20'),
(130, '15204501802.jpg', 53, 'App\\Unit', '2018-03-07 17:16:20', '2018-03-07 17:16:20'),
(131, '15204502200.jpg', 54, 'App\\Unit', '2018-03-07 17:17:00', '2018-03-07 17:17:00'),
(132, '15204502201.jpg', 54, 'App\\Unit', '2018-03-07 17:17:00', '2018-03-07 17:17:00'),
(133, '15204502202.jpg', 54, 'App\\Unit', '2018-03-07 17:17:00', '2018-03-07 17:17:00'),
(134, '15204502710.jpg', 55, 'App\\Unit', '2018-03-07 17:17:51', '2018-03-07 17:17:51'),
(135, '15204502711.JPG', 55, 'App\\Unit', '2018-03-07 17:17:51', '2018-03-07 17:17:51'),
(136, '15204502712.jpg', 55, 'App\\Unit', '2018-03-07 17:17:51', '2018-03-07 17:17:51'),
(137, '15204503210.jpg', 56, 'App\\Unit', '2018-03-07 17:18:41', '2018-03-07 17:18:41'),
(138, '15204503211.jpg', 56, 'App\\Unit', '2018-03-07 17:18:41', '2018-03-07 17:18:41'),
(139, '15204503212.jpg', 56, 'App\\Unit', '2018-03-07 17:18:41', '2018-03-07 17:18:41'),
(140, '15204503213.jpg', 56, 'App\\Unit', '2018-03-07 17:18:41', '2018-03-07 17:18:41'),
(141, '15204503730.jpg', 57, 'App\\Unit', '2018-03-07 17:19:33', '2018-03-07 17:19:33'),
(142, '15204503731.jpg', 57, 'App\\Unit', '2018-03-07 17:19:33', '2018-03-07 17:19:33'),
(143, '15204503732.jpg', 57, 'App\\Unit', '2018-03-07 17:19:33', '2018-03-07 17:19:33'),
(144, '15204504410.jpeg', 58, 'App\\Unit', '2018-03-07 17:20:41', '2018-03-07 17:20:41'),
(145, '15204504411.jpg', 58, 'App\\Unit', '2018-03-07 17:20:41', '2018-03-07 17:20:41'),
(146, '15204504412.jpg', 58, 'App\\Unit', '2018-03-07 17:20:41', '2018-03-07 17:20:41'),
(147, '15204505070.jpg', 59, 'App\\Unit', '2018-03-07 17:21:47', '2018-03-07 17:21:47'),
(148, '15204505071.JPG', 59, 'App\\Unit', '2018-03-07 17:21:47', '2018-03-07 17:21:47'),
(149, '15204505072.jpg', 59, 'App\\Unit', '2018-03-07 17:21:47', '2018-03-07 17:21:47'),
(150, '15204505940.jpg', 60, 'App\\Unit', '2018-03-07 17:23:14', '2018-03-07 17:23:14'),
(151, '15204505941.jpg', 60, 'App\\Unit', '2018-03-07 17:23:14', '2018-03-07 17:23:14'),
(152, '15204505942.jpg', 60, 'App\\Unit', '2018-03-07 17:23:14', '2018-03-07 17:23:14'),
(153, '15204506490.jpg', 61, 'App\\Unit', '2018-03-07 17:24:09', '2018-03-07 17:24:09'),
(154, '15204506491.JPG', 61, 'App\\Unit', '2018-03-07 17:24:09', '2018-03-07 17:24:09'),
(155, '15204506492.jpg', 61, 'App\\Unit', '2018-03-07 17:24:09', '2018-03-07 17:24:09'),
(156, '15204507110.JPG', 62, 'App\\Unit', '2018-03-07 17:25:11', '2018-03-07 17:25:11'),
(157, '15204507111.jpg', 62, 'App\\Unit', '2018-03-07 17:25:11', '2018-03-07 17:25:11'),
(158, '15204507112.jpg', 62, 'App\\Unit', '2018-03-07 17:25:11', '2018-03-07 17:25:11'),
(159, '15204507560.jpg', 63, 'App\\Unit', '2018-03-07 17:25:56', '2018-03-07 17:25:56'),
(160, '15204507561.jpg', 63, 'App\\Unit', '2018-03-07 17:25:56', '2018-03-07 17:25:56'),
(161, '15204507562.jpg', 63, 'App\\Unit', '2018-03-07 17:25:56', '2018-03-07 17:25:56'),
(162, '15204508180.jpg', 64, 'App\\Unit', '2018-03-07 17:26:58', '2018-03-07 17:26:58'),
(163, '15204508181.JPG', 64, 'App\\Unit', '2018-03-07 17:26:58', '2018-03-07 17:26:58'),
(164, '15204508182.jpg', 64, 'App\\Unit', '2018-03-07 17:26:58', '2018-03-07 17:26:58'),
(165, '15204508690.jpeg', 65, 'App\\Unit', '2018-03-07 17:27:49', '2018-03-07 17:27:49'),
(166, '15204508691.jpeg', 65, 'App\\Unit', '2018-03-07 17:27:49', '2018-03-07 17:27:49'),
(167, '15204508692.jpg', 65, 'App\\Unit', '2018-03-07 17:27:49', '2018-03-07 17:27:49'),
(168, '15204509170.jpeg', 66, 'App\\Unit', '2018-03-07 17:28:37', '2018-03-07 17:28:37'),
(169, '15204509171.jpg', 66, 'App\\Unit', '2018-03-07 17:28:37', '2018-03-07 17:28:37'),
(170, '15204509182.jpg', 66, 'App\\Unit', '2018-03-07 17:28:38', '2018-03-07 17:28:38'),
(171, '15204509540.jpg', 67, 'App\\Unit', '2018-03-07 17:29:14', '2018-03-07 17:29:14'),
(172, '15204509541.jpg', 67, 'App\\Unit', '2018-03-07 17:29:14', '2018-03-07 17:29:14'),
(173, '15204509542.jpg', 67, 'App\\Unit', '2018-03-07 17:29:14', '2018-03-07 17:29:14'),
(174, '15204510110.jpeg', 68, 'App\\Unit', '2018-03-07 17:30:11', '2018-03-07 17:30:11'),
(175, '15204510111.jpg', 68, 'App\\Unit', '2018-03-07 17:30:11', '2018-03-07 17:30:11'),
(176, '15204510112.jpg', 68, 'App\\Unit', '2018-03-07 17:30:11', '2018-03-07 17:30:11'),
(177, '15204510570.jpg', 69, 'App\\Unit', '2018-03-07 17:30:57', '2018-03-07 17:30:57'),
(178, '15204510571.jpg', 69, 'App\\Unit', '2018-03-07 17:30:57', '2018-03-07 17:30:57'),
(179, '15204510572.jpg', 69, 'App\\Unit', '2018-03-07 17:30:57', '2018-03-07 17:30:57'),
(180, '15204511140.jpg', 70, 'App\\Unit', '2018-03-07 17:31:54', '2018-03-07 17:31:54'),
(181, '15204511141.jpg', 70, 'App\\Unit', '2018-03-07 17:31:54', '2018-03-07 17:31:54'),
(182, '15204511142.jpg', 70, 'App\\Unit', '2018-03-07 17:31:54', '2018-03-07 17:31:54'),
(183, '15204511590.jpg', 71, 'App\\Unit', '2018-03-07 17:32:39', '2018-03-07 17:32:39'),
(184, '15204511591.jpg', 71, 'App\\Unit', '2018-03-07 17:32:39', '2018-03-07 17:32:39'),
(185, '15204511592.jpg', 71, 'App\\Unit', '2018-03-07 17:32:39', '2018-03-07 17:32:39'),
(186, '15204512270.jpeg', 72, 'App\\Unit', '2018-03-07 17:33:47', '2018-03-07 17:33:47'),
(187, '15204512271.jpg', 72, 'App\\Unit', '2018-03-07 17:33:47', '2018-03-07 17:33:47'),
(188, '15204512272.jpeg', 72, 'App\\Unit', '2018-03-07 17:33:47', '2018-03-07 17:33:47'),
(189, '15204512710.jpg', 73, 'App\\Unit', '2018-03-07 17:34:31', '2018-03-07 17:34:31'),
(190, '15204512711.jpg', 73, 'App\\Unit', '2018-03-07 17:34:31', '2018-03-07 17:34:31'),
(191, '15204512712.jpg', 73, 'App\\Unit', '2018-03-07 17:34:31', '2018-03-07 17:34:31'),
(192, '15204513110.jpg', 74, 'App\\Unit', '2018-03-07 17:35:11', '2018-03-07 17:35:11'),
(193, '15204513111.jpg', 74, 'App\\Unit', '2018-03-07 17:35:11', '2018-03-07 17:35:11'),
(194, '15204513112.png', 74, 'App\\Unit', '2018-03-07 17:35:11', '2018-03-07 17:35:11'),
(195, '15204513700.jpg', 75, 'App\\Unit', '2018-03-07 17:36:10', '2018-03-07 17:36:10'),
(196, '15204513701.jpeg', 75, 'App\\Unit', '2018-03-07 17:36:10', '2018-03-07 17:36:10'),
(197, '15204513712.jpeg', 75, 'App\\Unit', '2018-03-07 17:36:11', '2018-03-07 17:36:11'),
(201, '15204514680.jpg', 77, 'App\\Unit', '2018-03-07 17:37:48', '2018-03-07 17:37:48'),
(202, '15204514681.jpg', 77, 'App\\Unit', '2018-03-07 17:37:48', '2018-03-07 17:37:48'),
(205, '15337597160.jpg', 77, 'App\\Unit', '2018-08-09 03:21:57', '2018-08-09 03:21:57'),
(206, '15340601290.jpg', 78, 'App\\Unit', '2018-08-12 14:48:49', '2018-08-12 14:48:49'),
(207, '15340601291.jpg', 78, 'App\\Unit', '2018-08-12 14:48:49', '2018-08-12 14:48:49'),
(208, '15340601292.jpg', 78, 'App\\Unit', '2018-08-12 14:48:49', '2018-08-12 14:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_10_174352_create_site_settings_table', 1),
(4, '2018_02_11_084629_create_projects_table', 1),
(5, '2018_02_11_085855_create_compounds_table', 1),
(6, '2018_02_11_090122_create_buildings_table', 1),
(7, '2018_02_11_090346_create_units_table', 1),
(8, '2018_02_11_090952_create_contacts_table', 1),
(9, '2018_02_11_093808_entrust_setup_tables', 1),
(11, '2018_03_07_131710_create_images_table', 3),
(13, '2018_03_06_153644_create_books_table', 4),
(14, '2018_08_27_132148_add_api_column_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('amr@yahoo.com', '$2y$10$GFdrbDdoyEkzxw6PCZEwF./d2y17MSFejj5Z04Q9pjGbhr9m1v2ri', '2018-03-06 06:18:36'),
('radwa@yahoo.com', '$2y$10$DEOjQuhIFCfPu.CeM0JS1ucQgrgiZmATMKECkn0vwG9zOenjNC91W', '2018-03-16 07:19:00'),
('radwa.a.farghly@gmail.com', '$2y$10$J0ArNCVEfSGsYeWCUSjk4uCtBjj90bwVZbfB7dPAK7wCQMdV.G6Au', '2018-03-16 07:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `governate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `governate`, `city`, `img`, `created_at`, `updated_at`) VALUES
(16, 'Aswan', 'Aswan', 'Aswan', 'unit5234_1520445323.jpg', '2018-03-07 15:55:23', '2018-03-07 15:55:23'),
(17, 'Hurghada', 'Red Sea', 'Hurghada', 'unit5223_1520445363.jpg', '2018-03-07 15:56:03', '2018-03-07 15:56:03'),
(18, 'Alexandria', 'Alexandria', 'Miami', 'unit568_1520445466.jpg', '2018-03-07 15:57:46', '2018-03-07 15:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) NOT NULL,
  `extra` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `number`, `size`, `price`, `floor`, `img`, `rooms`, `extra`, `building_id`, `created_at`, `updated_at`) VALUES
(32, 300, 200, 400000, 1, 'unit585_1520448694.jpg', 3, 'Gym Hall', 7, '2018-03-07 16:51:34', '2018-03-07 16:51:34'),
(33, 302, 100, 200000, 2, 'unit55_1520448738.jpg', 2, 'Nothing', 7, '2018-03-07 16:52:18', '2018-03-07 16:52:18'),
(34, 305, 160, 250000, 1, 'unit55_1520448807.jpg', 2, 'Nothing', 7, '2018-03-07 16:53:27', '2018-03-07 16:53:27'),
(35, 308, 170, 200000, 1, 'unit38_1520448864.jpeg', 3, 'Swimming Pool', 7, '2018-03-07 16:54:24', '2018-03-07 16:54:24'),
(36, 400, 400, 500000, 1, 'unit38_1520448953.jpeg', 2, 'Nothing', 8, '2018-03-07 16:55:53', '2018-03-07 16:55:53'),
(37, 401, 200, 305000, 2, 'unit36_1520449001.jpg', 2, 'Nothing', 8, '2018-03-07 16:56:41', '2018-03-07 16:56:41'),
(38, 407, 190, 290000, 4, 'unit40_1520449043.jpg', 2, 'Nothing', 8, '2018-03-07 16:57:23', '2018-03-07 16:57:23'),
(39, 410, 220, 600000, 4, 'unit34_1520449095.jpg', 4, 'Swimming Pool', 8, '2018-03-07 16:58:15', '2018-03-07 16:58:15'),
(40, 410, 200, 400000, 3, 'unit55_1520449149.jpg', 2, 'Nothing', 9, '2018-03-07 16:59:09', '2018-03-07 16:59:09'),
(41, 411, 220, 390000, 4, 'build12_1520449205.jpg', 4, 'Gym Hall', 9, '2018-03-07 17:00:05', '2018-03-07 17:00:05'),
(42, 415, 210, 340000, 1, 'unit26_1520449312.jpg', 4, 'Nothing', 9, '2018-03-07 17:01:52', '2018-03-07 17:01:52'),
(43, 420, 120, 200000, 3, 'unit28_1520449367.jpg', 2, 'Nothing', 9, '2018-03-07 17:02:47', '2018-03-07 17:02:47'),
(44, 150, 190, 240000, 3, 'unit38_1520449507.jpeg', 2, 'Nothing', 10, '2018-03-07 17:05:07', '2018-03-07 17:05:07'),
(45, 452, 210, 333000, 4, 'unit40_1520449614.jpg', 2, 'Nothing', 10, '2018-03-07 17:06:54', '2018-03-07 17:06:54'),
(46, 455, 166, 376000, 2, 'unit35_1520449660.jpg', 3, 'Nothing', 10, '2018-03-07 17:07:40', '2018-03-07 17:07:40'),
(47, 460, 200, 220000, 2, 'unit40_1520449777.jpg', 4, 'Gym Hall', 10, '2018-03-07 17:09:37', '2018-03-07 17:09:37'),
(62, 640, 167, 387000, 2, '15204486941_1520450711.jpg', 4, 'Gym Hall', 15, '2018-03-07 17:25:11', '2018-03-07 17:25:11'),
(63, 701, 155, 288000, 3, '15204503730_1520450755.jpg', 3, 'Nothing', 15, '2018-03-07 17:25:55', '2018-03-07 17:25:55'),
(64, 722, 199, 288000, 3, '15204482790_1520450818.jpg', 4, 'Nothing', 16, '2018-03-07 17:26:58', '2018-03-07 17:26:58'),
(65, 739, 222, 444000, 4, '15204501451_1520450869.jpg', 2, 'Nothing', 16, '2018-03-07 17:27:49', '2018-03-07 17:27:49'),
(66, 99, 192, 402000, 3, '15204498512_1520450917.jpg', 2, 'Nothing', 22, '2018-03-07 17:28:37', '2018-03-07 17:28:37'),
(67, 111, 111, 444000, 2, '15204490010_1520450954.jpg', 2, 'Nothing', 22, '2018-03-07 17:29:14', '2018-03-07 17:29:14'),
(68, 88, 189, 298000, 3, '15204507562_1520451011.jpg', 1, 'Nothing', 21, '2018-03-07 17:30:11', '2018-03-07 17:30:11'),
(69, 899, 111, 200000, 2, '15204510110_1520451057.jpeg', 2, 'Nothing', 21, '2018-03-07 17:30:57', '2018-03-07 17:30:57'),
(70, 29, 269, 599000, 2, '15204497770_1520451113.jpg', 2, 'Nothing', 20, '2018-03-07 17:31:53', '2018-03-07 17:31:53'),
(71, 976, 220, 450000, 2, '15204509542_1520451159.jpg', 2, 'Nothing', 20, '2018-03-07 17:32:39', '2018-03-07 17:32:39'),
(72, 335, 220, 550000, 3, '15204509542_1520451227.jpg', 2, 'Nothing', 19, '2018-03-07 17:33:47', '2018-03-07 17:33:47'),
(73, 233, 112, 299000, 2, '15204509540_1520451271.jpg', 2, 'Nothing', 19, '2018-03-07 17:34:31', '2018-03-07 17:34:31'),
(74, 988, 288, 599000, 2, '15204510112_1520451311.jpg', 3, 'Swimming Pool', 18, '2018-03-07 17:35:11', '2018-03-07 17:35:11'),
(75, 976, 200, 340000, 4, '15204501802_1520451370.jpg', 3, 'Nothing', 18, '2018-03-07 17:36:10', '2018-03-07 17:36:10'),
(77, 474, 220, 39000, 3, '15204383400_1533759716.jpg', 2, 'Gym Hall', 7, '2018-03-07 17:37:48', '2018-08-09 03:21:56'),
(78, 480, 200, 400000, 3, '15204499972_1520450271_1534060129.png', 3, 'Swimming Pool', 20, '2018-08-12 14:48:49', '2018-08-12 14:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT '0',
  `email_token` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `verified`, `email_token`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(18, 'MOo', 'mohamed.slah6660@gmail.com', 1, NULL, '$2y$10$.rB/vg6HSeJvNd4aIWcJS.lUodSfXfQQNDQf6pRDxDonh8v08K2Qi', 1, 'JcuDQeD6jt9dadis68ikzt2c6vhvasLYdLkQ6Nl4wEnc9zvwyRGxanIlwdRS', '2018-08-08 00:55:24', '2018-08-27 19:28:24', 'dtCNhbDvXomNx6Tct4txZZi2ycP98IHpieX7QVYQ8rg3ngxSOTraJRRJEwPG'),
(30, 'Mido', 'mo@yahoo.com', 1, NULL, '$2y$10$ySvQEaiUelHhY0mll7hkuuyDLpr.w3xruhbW9tpDOMGcLUBXidQZO', 0, '2s0nHMhRRtRA1tv1yDsupckPluIzzPcdG67pbbFpJiWJZWFCloaQaIrMWt0n', '2018-08-11 16:16:45', '2018-08-27 12:42:53', 'IfUaGUwIqz1HJ4tyYSuT39Uxi2i64SRwhPyWqzl5g4zQ84ur0HwrH90NttAY'),
(35, 'Yousif Salah', 'a0b.oamer@gmail.com', 1, NULL, '$2y$10$cB5wC9gKTckXDBEexWY47.IssPJxyJImngMVV3NZPdN.SuOklKNsC', 0, 'T2DNMqpGuZDu2p6uT1D5SqjGxs74oJhf4SaGfv7WoccuffKeqqDZyfzeI3p9', '2018-08-12 14:00:20', '2018-08-12 14:04:10', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_unit_id_foreign` (`unit_id`),
  ADD KEY `books_user_id_foreign` (`user_id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildings_compound_id_foreign` (`compound_id`);

--
-- Indexes for table `compounds`
--
ALTER TABLE `compounds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compounds_project_id_foreign` (`project_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_building_id_foreign` (`building_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `compounds`
--
ALTER TABLE `compounds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `buildings_compound_id_foreign` FOREIGN KEY (`compound_id`) REFERENCES `compounds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compounds`
--
ALTER TABLE `compounds`
  ADD CONSTRAINT `compounds_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
