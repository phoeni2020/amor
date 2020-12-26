-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2020 at 10:58 AM
-- Server version: 10.2.36-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amorshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1556780563user.png', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, '0ptOMplvZv5wmPEv47S31Nfa8jC6lVRcmBy2WIFWZSQqBBETgPslZiQV9UR4', '2018-02-28 22:27:08', '2020-08-16 13:16:02', 'alqeitharah'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, '2019-09-18 02:47:24', '2019-09-18 19:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, '2019-09-18 19:22:41', '2019-09-18 19:22:41', NULL),
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 19:23:16', '2019-09-18 19:23:16', NULL),
(8, 'Safwat', 'safwat_azam2000@yahoo.com', '01000621923', 16, '16069328731606828738Untitled-1506.png', '$2y$10$AM0gfjIe9MvJdvJNi31hou5DB.LsR5/WRFAS087UHIPi0licS.ttC', 1, 'B5quxseVYPxBFxqNhiECo6KGLwUIBDiMy98u43Ye3bbeR8qVIQ05TMfwuy7z', '2020-12-02 17:14:33', '2020-12-02 17:14:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 0, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(2, 1, 'عربي', '1608374649zwjMFzHY.json', '1608374649zwjMFzHY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'Order Confirmation', 22, 'rfgdfgfd', '2020-01-21 00:18:38', '2020-01-21 00:18:38', 'Ticket', NULL),
(2, 'hi', 31, 'hi', '2020-09-08 17:40:28', '2020-09-08 17:40:28', 'Ticket', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'rfgdfgfd', 22, '2020-01-21 00:18:38', '2020-01-21 00:18:38'),
(2, 2, 'hi', 31, '2020-09-08 17:40:28', '2020-09-08 17:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 20:56:07', '2019-09-23 20:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:41:46', '2019-10-02 22:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-23 22:44:13', '2019-10-02 22:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-23 22:45:45', '2019-09-23 22:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-23 22:54:17', '2019-09-23 22:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-23 23:26:47', '2019-09-23 23:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 02:31:44', '2019-09-24 02:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 02:34:35', '2019-09-24 02:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 21:39:12', '2019-10-02 21:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 1, 1, '2019-10-12 01:22:03', '2019-10-12 21:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 20:56:07', '2019-09-23 20:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 20:56:07', '2019-09-23 20:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 20:56:07', '2019-09-23 20:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 20:56:07', '2019-09-23 20:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 20:56:07', '2019-09-23 20:56:07'),
(157, 22, 'Black', '2019-09-23 22:46:26', '2019-09-23 22:46:26'),
(158, 22, 'White', '2019-09-23 22:46:26', '2019-09-23 22:46:26'),
(159, 22, 'Sliver', '2019-09-23 22:46:26', '2019-09-23 22:46:26'),
(160, 22, 'Red', '2019-09-23 22:46:26', '2019-09-23 22:46:26'),
(161, 22, 'Dark Grey', '2019-09-23 22:46:26', '2019-09-23 22:46:26'),
(162, 22, 'Dark Blue', '2019-09-23 22:46:26', '2019-09-23 22:46:26'),
(163, 22, 'Brown', '2019-09-23 22:46:26', '2019-09-23 22:46:26'),
(172, 24, '40', '2019-09-23 23:25:32', '2019-09-23 23:25:32'),
(173, 24, '22', '2019-09-23 23:25:32', '2019-09-23 23:25:32'),
(174, 24, '24', '2019-09-23 23:25:32', '2019-09-23 23:25:32'),
(175, 24, '32', '2019-09-23 23:25:32', '2019-09-23 23:25:32'),
(176, 24, '21', '2019-09-23 23:25:32', '2019-09-23 23:25:32'),
(177, 25, 'demo 1', '2019-09-23 23:26:47', '2019-09-23 23:26:47'),
(178, 25, 'demo 2', '2019-09-23 23:26:47', '2019-09-23 23:26:47'),
(187, 30, 'Yellow', '2019-09-24 02:31:44', '2019-09-24 02:31:44'),
(188, 30, 'White', '2019-09-24 02:31:44', '2019-09-24 02:31:44'),
(189, 31, '22', '2019-09-24 02:34:35', '2019-09-24 02:34:35'),
(190, 31, '34', '2019-09-24 02:34:35', '2019-09-24 02:34:35'),
(191, 31, '45', '2019-09-24 02:34:35', '2019-09-24 02:34:35'),
(195, 20, 'Local seller warranty', '2019-10-02 22:18:54', '2019-10-02 22:18:54'),
(196, 20, 'No warranty', '2019-10-02 22:18:54', '2019-10-02 22:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-02 22:18:54', '2019-10-02 22:18:54'),
(198, 20, 'Non-local warranty', '2019-10-02 22:18:54', '2019-10-02 22:18:54'),
(199, 21, 'Symphony', '2019-10-02 22:19:13', '2019-10-02 22:19:13'),
(200, 21, 'Oppo', '2019-10-02 22:19:13', '2019-10-02 22:19:13'),
(201, 21, 'EStore', '2019-10-02 22:19:13', '2019-10-02 22:19:13'),
(202, 21, 'Infinix', '2019-10-02 22:19:13', '2019-10-02 22:19:13'),
(203, 21, 'Apple', '2019-10-02 22:19:13', '2019-10-02 22:19:13'),
(243, 33, '1 GB', '2019-10-12 21:30:39', '2019-10-12 21:30:39'),
(244, 33, '2 GB', '2019-10-12 21:30:39', '2019-10-12 21:30:39'),
(245, 33, '3 GB', '2019-10-12 21:30:39', '2019-10-12 21:30:39'),
(253, 32, 'demo 1', '2019-10-13 01:18:04', '2019-10-13 01:18:04'),
(254, 32, 'demo 2', '2019-10-13 01:18:04', '2019-10-13 01:18:04'),
(255, 32, 'demo 3', '2019-10-13 01:18:04', '2019-10-13 01:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_ar` varchar(191) DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `photo_ar`, `link`, `type`) VALUES
(1, '16059685765040.png', '16059685765040.png', '#', 'TopSmall'),
(2, '1603205924acc519e8-4af9-4a3a-bc12-c5ead20babef.jpg', '1603205924acc519e8-4af9-4a3a-bc12-c5ead20babef.jpg', 'https://amorshoping.com/category/health-and-beauty', 'TopSmall'),
(4, '160320642219.jpg', '160320642219.jpg', 'https://www.https://amorshoping.com/category/books-and-officegoogle.com/', 'BottomSmall'),
(5, '160320469724.jpg', '160320469724.jpg', 'https://www.google.com/https://amorshoping.com/category/automobiles-and-motorcycles', 'BottomSmall'),
(6, '160320463421.jpg', '160320463421.jpg', 'httphttps://amorshoping.com/category/Home-decoration-and-Appliances://www.google.com/', 'BottomSmall'),
(7, '16043307880c4b1af5-7c6b-44a3-a7a8-06f793dc236c.jpg', '160433085080b4162c-d20f-4701-ac47-162e3a2e36a2.jpg', 'test', 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 47, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 08:53:41'),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 27, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 08:54:21'),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 30, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 20:04:20'),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 70, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 20:04:36'),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 16, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 04:02:30'),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 18, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 04:02:53'),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 18, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 04:03:14'),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 69, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 05:03:37'),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700251-min.jpg', 'www.geniusocean.com', 187, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 05:03:59'),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 21, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 04:03:14'),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 47, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 05:03:37'),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698954-min.jpg', 'www.geniusocean.com', 98, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 05:03:59'),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 04:03:14'),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 45, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 05:03:37');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(25, 3, 'Help Center', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15557542831-min.jpg', '#', 71, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 05:03:59'),
(26, 2, 'privacy policy', '<h1 style=\"font-size: 36px; margin: 0px 0px 18px; font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Privacy Policy for marslia.com</h1><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">At Amor, accessible from amor.com.eg, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Amor and how we use it.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Amor. This policy is not applicable to any information collected offline or via channels other than this website.&nbsp;</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Consent</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Information we collect</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">How we use your information</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">We use the information we collect in various ways, including to:</p><ul style=\"color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\"><li>Provide, operate, and maintain our webste</li><li>Improve, personalize, and expand our webste</li><li>Understand and analyze how you use our webste</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the webste, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Log Files</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Amor follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Cookies and Web Beacons</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Like any other website, Amor uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">For more general information on cookies, please read&nbsp;<a href=\"https://www.cookieconsent.com/what-are-cookies/\" style=\"color: rgb(93, 136, 179);\">\"What Are Cookies\" from Cookie Consent</a>.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Advertising Partners Privacy Policies</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">You may consult this list to find the Privacy Policy for each of the advertising partners of Amor.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Amor, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Note that Amor has no access to or control over these cookies that are used by third-party advertisers.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Third Party Privacy Policies</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Amor\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">GDPR Data Protection Rights</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" 18px;=\"\" margin-left:=\"\" font-size:=\"\" 30px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Children\'s Information</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\">Amor does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '1607687717223087771.jpg', 'amor', 8, 1, NULL, NULL, 'amor', '2020-12-11 10:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Oil & gas', 'oil-and-gas'),
(3, 'Manufacturing', 'manufacturing'),
(4, 'Chemical Research', 'chemical_research'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(4, 'Electronic', 'electric', 1, '1557807287light.png', 1, '1568709131f6.jpg'),
(5, 'Fashion & Beauty', 'fashion-and-Beauty', 1, '1557807279fashion.png', 1, '1568709123f1.jpg'),
(6, 'Camera & Photo', 'camera-and-photo', 1, '1557807264camera.png', 1, '1568709110f2.jpg'),
(7, 'Smart Phone & Table', 'smart-phone-and-table', 1, '1557377810mobile.png', 1, '1568709597f4.jpg'),
(8, 'Sport & Outdoor', 'sport-and-Outdoor', 1, '1557807258sports.png', 1, '1568709577f8.jpg'),
(9, 'Jewelry & Watches', 'jewelry-and-watches', 1, '1557807252furniture.png', 1, '1568709077f7.jpg'),
(10, 'Health & Beauty', 'health-and-beauty', 1, '1557807228trends.png', 1, '1568709067f3.jpg'),
(11, 'Books & Office', 'books-and-office', 1, '1557377917bags.png', 1, '1568709050f8.jpg'),
(12, 'Toys & Hobbies', 'toys-and-hobbies', 1, '1557807214sports.png', 1, '1568709042f9.jpg'),
(15, 'Automobiles & Motorcycles', 'automobiles-and-motorcycles', 1, '1568708648motor.car.png', 1, '1568709031f11.jpg'),
(16, 'Home decoration & Appliance', 'Home-decoration-and-Appliance', 1, '1568708757home.png', 1, '1568709027f12.jpg'),
(17, 'Portable & Personal Electronics', 'portable-and-personal-electronics', 1, '1568878538electronic.jpg', 0, NULL),
(18, 'Outdoor, Recreation & Fitness', 'Outdoor-Recreation-and-Fitness', 1, '1568878596home.jpg', 0, NULL),
(19, 'Surveillance Safety and Security', 'Surveillance-Safety-and-Security', 0, NULL, 0, NULL),
(20, 'Iraqi Ministry of Industry and Minerals products', 'Ministry-products', 0, '15983547351557807208bags.png', 0, NULL),
(21, 'Iraqi Ministry of Commerce products', 'Ministry-of-Commerce', 0, '15983548581557807208bags.png', 0, NULL),
(22, 'Production lines', 'Production-lines', 0, '15993851661557807208bags.png', 0, NULL),
(23, 'Medicines and medical supplies', 'Medicines-and-medical-supplies', 1, '16015664561557807228trends.png', 0, NULL),
(24, 'Food and vegetables', 'Food-and-vegetables', 1, '16015664871568878596home.jpg', 0, NULL),
(25, 'public services', 'public-services', 1, '16015665661568708648motor.car.png', 0, NULL),
(26, 'Hand and electric machines', 'Hand-and-electric-machines', 1, '16015666241568878538electronic.jpg', 0, NULL),
(27, 'Fashion', 'colthes', 1, '1607191781images.png', 0, NULL),
(28, 'Furniture', 'Furniture', 1, '16015666781568708757home.png', 0, NULL),
(29, 'toys', 'toys', 1, '16015667041557807214sports.png', 0, NULL),
(30, 'Building materials', 'Building-materials', 1, '16015667271568708648motor.car.png', 0, NULL),
(31, 'Paintings and Antiques', 'Paintings-and-Antiques', 1, '16015667941557807279fashion.png', 0, NULL),
(32, 'Brands perfumes', 'Brands-perfumes', 1, '16015668341557807228trends.png', 0, NULL),
(33, 'Glasses and watches', 'Glasses-and-watches', 1, '16015668851557807252furniture.png', 0, NULL),
(34, 'Other Products', 'Other-Products', 1, '16015669401568708648motor.car.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_ars`
--

CREATE TABLE `category_ars` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(250) DEFAULT NULL,
  `created_at` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_ars`
--

INSERT INTO `category_ars` (`id`, `name_ar`, `updated_at`, `created_at`) VALUES
(21, 'منتجات وزارة التجارة', '2020-12-05 17:19:06', NULL),
(20, 'منتجات وزارة الصناعة والمعادن العراقية', '2020-09-05 14:26:00', '2020-09-05 14:21:09'),
(19, 'سلامة وأمن المراقبة', '2020-09-05 14:29:26', '2020-09-05 14:29:26'),
(18, 'الأنشطة الخارجية والترفيه واللياقة البدنية', '2020-09-05 14:32:06', '2020-09-05 14:32:06'),
(13, 'كتب', '2020-09-05 14:33:55', '2020-09-05 14:33:55'),
(0, NULL, '2020-09-05 14:33:55', '2020-09-05 14:33:55'),
(17, 'إلكترونيات محمولة وشخصية', '2020-09-12 20:18:32', '2020-09-05 14:36:15'),
(0, NULL, '2020-09-05 14:36:15', '2020-09-05 14:36:15'),
(16, 'الديكورات المنزلية والأجهزة المنزلية', '2020-09-12 20:19:07', '2020-09-05 15:43:20'),
(0, NULL, '2020-09-05 15:43:20', '2020-09-05 15:43:20'),
(22, 'خطوط الانتاج', '2020-09-12 20:09:40', '2020-09-12 20:09:40'),
(0, NULL, '2020-09-12 20:09:40', '2020-09-12 20:09:40'),
(15, 'سيارات ودراجات نارية', '2020-09-12 20:19:46', '2020-09-12 20:19:46'),
(0, NULL, '2020-09-12 20:19:46', '2020-09-12 20:19:46'),
(12, 'الألعاب والهوايات', '2020-09-12 20:20:17', '2020-09-12 20:20:17'),
(0, NULL, '2020-09-12 20:20:17', '2020-09-12 20:20:17'),
(11, 'الكتب والمكتب', '2020-09-12 20:21:00', '2020-09-12 20:21:00'),
(0, NULL, '2020-09-12 20:21:00', '2020-09-12 20:21:00'),
(10, 'الصحة والجمال', '2020-09-12 20:21:45', '2020-09-12 20:21:45'),
(0, NULL, '2020-09-12 20:21:45', '2020-09-12 20:21:45'),
(4, 'إلكترونيات', '2020-09-12 20:22:15', '2020-09-12 20:22:15'),
(0, NULL, '2020-09-12 20:22:15', '2020-09-12 20:22:15'),
(5, 'الجمال و الأزياء', '2020-09-12 20:22:40', '2020-09-12 20:22:40'),
(0, NULL, '2020-09-12 20:22:40', '2020-09-12 20:22:40'),
(6, 'الكاميرا والصور', '2020-09-12 20:23:01', '2020-09-12 20:23:01'),
(0, NULL, '2020-09-12 20:23:01', '2020-09-12 20:23:01'),
(7, 'الهواتف الذكية والتابلت', '2020-09-12 20:23:36', '2020-09-12 20:23:36'),
(0, NULL, '2020-09-12 20:23:36', '2020-09-12 20:23:36'),
(8, 'الرياضة والأنشطة الخارجية', '2020-09-12 20:24:01', '2020-09-12 20:24:01'),
(0, NULL, '2020-09-12 20:24:01', '2020-09-12 20:24:01'),
(9, 'المجوهرات والساعات', '2020-09-12 20:24:25', '2020-09-12 20:24:25'),
(0, NULL, '2020-09-12 20:24:25', '2020-09-12 20:24:25'),
(34, 'منتجات أخرى', '2020-10-01 15:51:32', '2020-10-01 15:51:32'),
(0, NULL, '2020-10-01 15:51:32', '2020-10-01 15:51:32'),
(33, 'نظارات وساعات', '2020-10-01 15:51:54', '2020-10-01 15:51:54'),
(0, NULL, '2020-10-01 15:51:54', '2020-10-01 15:51:54'),
(32, 'عطور ماركات', '2020-10-01 15:52:10', '2020-10-01 15:52:10'),
(0, NULL, '2020-10-01 15:52:10', '2020-10-01 15:52:10'),
(31, 'لوحات وأنتيكات', '2020-10-01 15:52:26', '2020-10-01 15:52:26'),
(0, NULL, '2020-10-01 15:52:26', '2020-10-01 15:52:26'),
(30, 'مواد بناء', '2020-10-01 15:52:46', '2020-10-01 15:52:46'),
(0, NULL, '2020-10-01 15:52:46', '2020-10-01 15:52:46'),
(29, 'ألعاب', '2020-10-01 15:53:03', '2020-10-01 15:53:03'),
(0, NULL, '2020-10-01 15:53:03', '2020-10-01 15:53:03'),
(28, 'أثاث', '2020-10-01 15:53:23', '2020-10-01 15:53:23'),
(0, NULL, '2020-10-01 15:53:23', '2020-10-01 15:53:23'),
(27, 'أزياء', '2020-12-05 18:09:41', '2020-10-01 15:53:37'),
(0, NULL, '2020-10-01 15:53:37', '2020-10-01 15:53:37'),
(26, 'عدد يدوية وكهربائية', '2020-10-01 15:54:21', '2020-10-01 15:54:21'),
(0, NULL, '2020-10-01 15:54:21', '2020-10-01 15:54:21'),
(25, 'خدمات عامة', '2020-10-01 15:54:54', '2020-10-01 15:54:54'),
(0, NULL, '2020-10-01 15:54:54', '2020-10-01 15:54:54'),
(23, 'الادويه والمستلزمات الطبيه', '2020-10-01 15:55:50', '2020-10-01 15:55:50'),
(0, NULL, '2020-10-01 15:55:50', '2020-10-01 15:55:50'),
(24, 'غذاء وخضراوات', '2020-10-01 15:56:20', '2020-10-01 15:56:20'),
(0, NULL, '2020-10-01 15:56:20', '2020-10-01 15:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `name_ar`, `slug`, `status`) VALUES
(1, 2, 'LCD TV', NULL, 'lcd-tv', 1),
(2, 2, 'LED TV', NULL, 'led-tv', 1),
(3, 2, 'Curved TV', NULL, 'curved-tv', 1),
(4, 2, 'Plasma TV', NULL, 'plasma-tv', 1),
(5, 3, 'Top Freezer', NULL, 'top-freezer', 1),
(6, 3, 'Side-by-Side', NULL, 'side-by-side', 1),
(7, 3, 'Counter-Depth', NULL, 'counter-depth', 1),
(8, 3, 'Mini Fridge', NULL, 'mini-fridge', 1),
(9, 4, 'Front Loading', NULL, 'front-loading', 1),
(10, 4, 'Top Loading', NULL, 'top-loading', 1),
(11, 4, 'Washer Dryer Combo', NULL, 'washer-dryer-combo', 1),
(12, 4, 'Laundry Center', NULL, 'laundry-center', 1),
(13, 5, 'Central Air', NULL, 'central-air', 1),
(14, 5, 'Window Air', NULL, 'window-air', 1),
(15, 5, 'Portable Air', NULL, 'portable-air', 1),
(16, 5, 'Hybrid Air', 'هايبرد', 'hybrid-air', 1),
(17, 21, 'Samsung', 'سامسونج', 'samsung', 1),
(19, 25, 'Jacket', 'جاكت', 'Jacket', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(3, 41, 230, 'متج جميل ولكن صورتي لم تظهر', '2020-12-15 21:09:08', '2020-12-15 21:09:08'),
(4, 41, 229, 'منتج جميل', '2020-12-15 21:12:40', '2020-12-15 21:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 63, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 2473, 0, NULL),
(4, 'browser', 'Linux', 340, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 2107, 0, NULL),
(6, 'browser', 'Windows 7', 671, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 563, 0, NULL),
(9, 'referral', 'www.google.com', 39, 0, NULL),
(10, 'browser', 'Android', 1479, 0, NULL),
(11, 'browser', 'Mac OS X', 674, 0, NULL),
(12, 'referral', 'l.facebook.com', 27, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 33, 0, NULL),
(15, 'browser', 'Windows 8', 5, 0, NULL),
(16, 'browser', 'iPad', 23, 0, NULL),
(17, 'browser', 'Ubuntu', 223, 0, NULL),
(18, 'browser', 'iPhone', 380, 0, NULL),
(19, 'referral', '178.63.144.3', 2, 0, NULL),
(20, 'referral', 'lm.facebook.com', 8, 0, NULL),
(21, 'browser', 'Windows Vista', 3, 0, NULL),
(22, 'referral', '178.63.144.11', 2, 0, NULL),
(23, 'referral', 'hostingegy2018.com', 12, 0, NULL),
(24, 'referral', 'server.hostingegy2018.com', 32, 0, NULL),
(25, 'referral', 'marslia.com', 1, 0, NULL),
(26, 'referral', 'bing.com', 6, 0, NULL),
(27, 'browser', 'Windows 2000', 3, 0, NULL),
(28, 'referral', 'vmi457471.contaboserver.net', 2, 0, NULL),
(29, 'referral', 'www.google.com.hk', 2, 0, NULL),
(30, 'referral', 'm.facebook.com', 1, 0, NULL),
(31, 'referral', 'AMORSHOPING.COM', 4, 0, NULL),
(32, 'referral', NULL, 3, 0, NULL),
(33, 'referral', 'baidu.com', 22, 0, NULL),
(34, 'referral', 'com.google.android.googlequicksearchbox', 42, 0, NULL),
(35, 'referral', 'yahoo.com', 1, 0, NULL),
(36, 'referral', 'colcod.com', 1, 0, NULL),
(37, 'referral', 'www.amorshoping.com', 1, 0, NULL),
(38, 'referral', 'brandnewblogs.com', 18, 0, NULL),
(39, 'referral', 'amor.com.eg', 3, 0, NULL),
(40, 'referral', 'www.amor.com.eg', 2, 0, NULL),
(41, 'referral', 'mentor.corp.google.com', 7, 0, NULL),
(42, 'referral', 'google.com', 8, 0, NULL),
(43, 'referral', '104.31.90.206', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `code`) VALUES
(1, 'USD', '$', 1, 0, '840'),
(11, 'EGP', 'L.E.', 15.563968, 1, '4217');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><br></div></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(6, 93, '156801646314-min.jpg'),
(7, 93, '156801646315-min.jpg'),
(8, 93, '156801646316-min.jpg'),
(22, 129, '15680254328Ei8T0MB.jpg'),
(23, 129, '1568025432wRmpve8d.jpg'),
(24, 129, '1568025432kkRYzLsF.jpg'),
(25, 129, '1568025432zxQBe6Gk.jpg'),
(26, 128, '1568025537sJbDPnFk.jpg'),
(27, 128, '1568025537NBmHxJOz.jpg'),
(28, 128, '1568025537hxqeFbS8.jpg'),
(29, 128, '1568025538zK3tJpmL.jpg'),
(34, 126, '1568025693kKLReNYO.jpg'),
(35, 126, '1568025694Iv3pkz1q.jpg'),
(36, 126, '1568025694T8HhdLVS.jpg'),
(37, 126, '1568025695vTdg7ndt.jpg'),
(38, 125, '15680257894Waz2tuN.jpg'),
(39, 125, '1568025789vd0P4TBv.jpg'),
(40, 125, '15680257899bih5sGh.jpg'),
(41, 125, '156802578924sLIgzl.jpg'),
(42, 124, '1568025825cC2Pmuit.jpg'),
(43, 124, '1568025825EACzLFld.jpg'),
(44, 124, '1568025825MfCyCqtD.jpg'),
(45, 124, '15680258252yabMeAz.jpg'),
(46, 123, '15680258512fKQla5g.jpg'),
(47, 123, '1568025851pIjl0mWp.jpg'),
(48, 123, '1568025851tQw7JXXG.jpg'),
(49, 123, '1568025851ewjtSDkZ.jpg'),
(50, 96, '1568025891wWAAbOjc.jpg'),
(51, 96, '1568025891fyMNeXRy.jpg'),
(52, 96, '1568025891OdV64Tw1.jpg'),
(53, 96, '1568025891xQF7Zufe.jpg'),
(62, 101, '1568026331Y6UMgMcI.jpg'),
(63, 101, '1568026331xZbT4OWG.jpg'),
(64, 101, '1568026331y7eIFJXZ.jpg'),
(65, 101, '1568026331i2wH8RI0.jpg'),
(66, 100, '1568026374xCTjQYZ8.jpg'),
(67, 100, '1568026374DzmvqA9d.jpg'),
(68, 100, '1568026374OEH73u5X.jpg'),
(69, 100, '1568026374vZhqRv8c.jpg'),
(70, 99, '15680264120LdBSU1v.jpg'),
(71, 99, '1568026412eMjsI940.jpg'),
(72, 99, '1568026412GFjvHiZv.jpg'),
(73, 99, '15680264122fwGi20d.jpg'),
(78, 97, '1568026469hSlmBpzE.jpg'),
(79, 97, '15680264697AI8LicQ.jpg'),
(80, 97, '15680264691xyFt5Y6.jpg'),
(81, 97, '1568026469dC3hrMz0.jpg'),
(86, 109, '1568026737EBGSE78G.jpg'),
(87, 109, '1568026737B8hO1RRr.jpg'),
(88, 109, '1568026737tf0rwVoz.jpg'),
(89, 109, '1568026737GGIPSqYo.jpg'),
(95, 107, '1568026797FFNrNPxK.jpg'),
(96, 107, '1568026797UwY9ZLfQ.jpg'),
(97, 107, '1568026797Kl6eZLx5.jpg'),
(98, 107, '1568026797h3R48VaO.jpg'),
(99, 107, '15680267989kXwH40I.jpg'),
(100, 106, '1568026836ErM5FJxg.jpg'),
(101, 106, '1568026836VLrxIk0u.jpg'),
(102, 106, '1568026836lgLuMV6p.jpg'),
(103, 106, '1568026836JBUTQX8v.jpg'),
(104, 105, '1568026861YorsLvUa.jpg'),
(105, 105, '1568026861PikoX1Qb.jpg'),
(106, 105, '1568026861SBJqjw66.jpg'),
(107, 105, '1568026861WYh54Arp.jpg'),
(108, 104, '1568026885rmo0LDoo.jpg'),
(109, 104, '15680268851m939o7O.jpg'),
(110, 104, '1568026885fVXYCGKu.jpg'),
(111, 104, '1568026885GDRL3thY.jpg'),
(112, 103, '1568026903LbVQUxIr.jpg'),
(113, 103, '1568026914IpRVYDV4.jpg'),
(114, 103, '15680269141gKO8x5X.jpg'),
(115, 103, '1568026914Q938xXM2.jpg'),
(116, 93, '1568026950y7ihS4wE.jpg'),
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(172, 130, '1568029084hQT5ZO0j.jpg'),
(173, 130, '1568029084ncGXxQzN.jpg'),
(174, 130, '1568029084b0OonKFy.jpg'),
(175, 130, '15680290857TD4iOWP.jpg'),
(180, 114, '1568029158brS7xQCe.jpg'),
(181, 114, '1568029158QlC0tg5a.jpg'),
(182, 114, '1568029158RrN4AEtQ.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(191, 111, '1568029272lB0JETcn.jpg'),
(192, 111, '1568029272wF3ldKgv.jpg'),
(193, 111, '1568029272NI33ExCu.jpg'),
(194, 111, '15680292724TXrpokz.jpg'),
(197, 134, '15693932021.jpg'),
(198, 134, '15693932022.jpg'),
(199, 135, '15698200931.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(219, 160, '1570085654asphalt-auto-automobile-575386.jpg'),
(220, 160, '1570085654asphalt-auto-automobile-831475.jpg'),
(221, 161, '1570086479audi-automobile-car-909907.jpg'),
(222, 162, '1570255905asphalt-auto-automobile-831475.jpg'),
(223, 162, '1570255905audi-automobile-car-909907.jpg'),
(224, 167, '1570874976asphalt-auto-automobile-831475.jpg'),
(225, 167, '1570874976audi-automobile-car-909907.jpg'),
(226, 167, '1570874976automobile-automotive-car-112460.jpg'),
(227, 168, '1570875445automobile-automotive-car-112460.jpg'),
(228, 168, '1570875445automobile-automotive-car-358070.jpg'),
(230, 226, '160320158211.jpg'),
(235, 234, '160719413075d41dad-710f-4e2f-ad68-756439024de0.jpg'),
(236, 234, '1607194130186b5dd2-65d5-4fc4-bf2f-311921508bb4.jpg'),
(237, 234, '1607194130aaa17c86-3019-4c66-8e79-7d82492334b3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_stock` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_business` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molly_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`) VALUES
(1, '1608211070Untitled-1506.png', '1605968370404.png', 'AMOR EGYPT', 'smtp', '0123 456789', 'جميع الحقوق محفوظة @ شركة امور مصر', 'COPYRIGHT © 2020. All Rights Reserved<a https:=\"\" marslia.com=\"\" \"=\"\">marslia.com</a>', '#ad1515', '1603035559unnamed.gif', '1603035363shopping-loader.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 0, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 1, 1, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 0, 5, 5, 0, 5, NULL, NULL, NULL, NULL, 'geniustest11@gmail.com', 'GeniusTest', 0, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 5, 5, 1, 1, 1, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#282828', '#282828', 0, '#ff5500', '#02020c', 1, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 1, 1, 1, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 0, '1566878455404.png', 1, 'الحق العرض', 'انتهز الفرصة', '1605795310AR-_POPUP_.jpg', '1605968358110×90.png', '1567655174profile.jpg', '#001be2', 1, 1, 1, 'shaon143-facilitator-1@gmail.com', '1605968332logo wi.png', NULL, 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 1, 'Pay via your Paytm account.', 'sandbox', 1, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 1, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `value`) VALUES
(1, 0, 'English', '16070022363izQH0hJ.json', 'en'),
(2, 1, 'Arabic', '16075176299AeL2PuI.json', 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, NULL, 29, NULL, NULL, NULL, 1, '2020-08-17 13:00:46', '2020-09-09 16:09:19'),
(2, NULL, 30, NULL, NULL, NULL, 1, '2020-08-26 14:33:45', '2020-09-09 16:09:19'),
(3, NULL, 31, NULL, NULL, NULL, 1, '2020-09-08 17:33:51', '2020-09-09 16:09:19'),
(4, NULL, NULL, NULL, NULL, 2, 1, '2020-09-08 17:40:28', '2020-09-09 13:57:51'),
(5, NULL, 32, NULL, NULL, NULL, 1, '2020-10-22 18:43:05', '2020-12-02 17:16:09'),
(6, NULL, 33, NULL, NULL, NULL, 1, '2020-11-03 14:26:45', '2020-12-02 17:16:09'),
(7, 15, NULL, NULL, NULL, NULL, 1, '2020-11-03 14:28:54', '2020-12-02 17:16:45'),
(8, NULL, 34, NULL, NULL, NULL, 1, '2020-11-07 10:09:07', '2020-12-02 17:16:09'),
(9, NULL, 36, NULL, NULL, NULL, 1, '2020-11-25 09:25:29', '2020-12-02 17:16:09'),
(10, NULL, 37, NULL, NULL, NULL, 1, '2020-11-25 13:58:31', '2020-12-02 17:16:09'),
(11, NULL, 38, NULL, NULL, NULL, 1, '2020-11-25 14:28:55', '2020-12-02 17:16:09'),
(12, NULL, 39, NULL, NULL, NULL, 1, '2020-12-01 12:12:37', '2020-12-02 17:16:09'),
(13, NULL, 40, NULL, NULL, NULL, 1, '2020-12-02 11:25:14', '2020-12-02 17:16:09'),
(14, NULL, 41, NULL, NULL, NULL, 1, '2020-12-02 11:54:11', '2020-12-02 17:16:09'),
(15, NULL, 42, NULL, NULL, NULL, 1, '2020-12-02 12:15:10', '2020-12-02 17:16:09'),
(16, NULL, 43, NULL, NULL, NULL, 1, '2020-12-05 15:03:38', '2020-12-18 02:29:03'),
(17, NULL, 44, NULL, NULL, NULL, 1, '2020-12-13 09:34:14', '2020-12-18 02:29:03'),
(18, NULL, 45, NULL, NULL, NULL, 1, '2020-12-15 11:32:46', '2020-12-18 02:29:03'),
(19, NULL, 46, NULL, NULL, NULL, 1, '2020-12-15 12:15:22', '2020-12-18 02:29:03'),
(20, NULL, 47, NULL, NULL, NULL, 1, '2020-12-15 12:50:44', '2020-12-18 02:29:03'),
(21, NULL, 48, NULL, NULL, NULL, 1, '2020-12-15 14:47:09', '2020-12-18 02:29:03'),
(22, 16, NULL, NULL, NULL, NULL, 1, '2020-12-18 02:24:18', '2020-12-18 02:28:15'),
(23, NULL, 49, NULL, NULL, NULL, 1, '2020-12-23 13:32:34', '2020-12-24 13:34:25'),
(24, NULL, 50, NULL, NULL, NULL, 0, '2020-12-24 13:55:34', '2020-12-24 13:55:34'),
(25, NULL, 51, NULL, NULL, NULL, 0, '2020-12-24 21:18:09', '2020-12-24 21:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(1, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\n\0\0\r\n\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\r\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\r\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\r\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\r\nIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', 'Paypal', 'shipto', 'Azampur', '1', 200, NULL, NULL, '9K8H1600517758', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-19 08:15:58', '2020-09-19 08:15:58', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(2, 22, 'BZh91AY&SYÂrj\0ß@\0ø;ô¿ïÿúP{ÝÆËf \Ztk	B4ÓCj\0\r\Z\0\0\Z ©ú¡úP  \0ÐMD¨\0\0\0\0\0\0\0Àh\0\0h\0\0\0\0	L¦ÔÚF=@§¨õBBCH	=öu¼GØK<ð{`P¨Ékè1°ìé$Ací0ó¬t,°0«¯ºäëT´!xÞ!32Ùü©µR¦23ì)´åîIcwðAzâS\0@ËätÍD°I¤t!!yyAV`±g¬4$`4MW¥mEVA¥aÕ±¥@g¥e\"HE@m¸¬Ö`q²\nÈÅÕ¦E¢%Ô\"$«¹`.îïBØcÆ°»ÆQC*ï>ÂÆ:FØÀã`¡Ã¤q%ÚRåÚ· \\NÁK{Z	HFHºTgw«$Q+\0¡. Äµ%]ZÔ1UUÕ-éÙ{P&Ð6h&(Â­QL\\£J*!ªÅ¨<\0©B3@¤$YGy½íÜoÛ	`$¶´!¨Æn¤Ó´+BÖt9^ãEÞÖiËVÆ1ªlÓªI	tÍMpk9Î(ÛbÃÌZj%±\"ÆÌ9AI>ÞÈvOÌsG0ü¾£GÌó³ÈÄpý%â­êÍÈ«U6¯dOuô1Ó}¸Nn9ñ>£Ã\\\'O\\p\ZMù¹i6>#\"`Û¨ä h£&dÔÄ2-¦¨*\n¢na×Ø[<à#aYÞ|õ<;¡mon/4@¤ª$«bU%ÃönplH¨¦ÁI280K]5c7¥L·Ó0rî=¿Á¨5kÎ&ÛHICP±N¦òñf©òu65¹Éb!UÁ=,Níâ`AÓ U\ZÙëtPgÉ\'hNÔ.åà6oä^»ßj¶ÍtÂñqIZÎÂ¡j¢$\"xÔeV\n$¼(J³q+\"ÄB©tÞ0õ2[h,»±\r2öñ:¬l4Ì	JÙ,µøJHX%ë5áQUJCÈCM*µØ\Z#Áp²8´ßgFÁ2\\\'!A¨ÒÀâA¿?.Ûjô~>ðc*21Â#\0ACIBmI¼ØxeÛ¯´Wk.J¿l{àZ\'·dàciTgâH\\ÈÊyE¬Bë1÷¢¥ÈÉ¬è(TSTX+QÀÈ£èÕÈ4£Ô\nëC\0ÂÄßsD5ð^«äe}O>h_\0¯^(E% ÔÿrE8PÂrj', 'Paypal', 'shipto', 'Azampur', '1', 300, NULL, NULL, 'MXUg1600530595', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-19 11:49:55', '2020-09-19 11:49:55', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(3, 22, 'BZh91AY&SY/¡Xá\0r_@\0ø;ö¿ïÿú`¿}\nHJTP\0\0\0 \0\0\0\0\0\0 \0\0\0\0\0\0 \0\0\0\0\0\0 \0\0\0HF)¦¡==#Ê<SÉPò@©§µSõ\'¨ di yOIè@´(Hù#è}Ò(£ð(¯©Áëp~î}ìénoch¬Wùp©4úÊ/S³K³-ÊS«ä£\rÚ;6il£wYNZin_5tlµ\'VÏ6ó©ÙàeÌæx¯òeÉ¹osÍñdå¢özËõIÝçYp®8I75()Pê0)¾4²Í-²ÊäFÊ6Pä©$ÊTR*L2ÓfM*2¤ø)&Í­R¦U#Iárav¦Ì´ÄOf©»SL4ÂòåJP\\P¢)Bal)¦§Í°»)D¶X(µ2¥E([0Ã-Ì)\Zi¦Yì¨Z¡*V[\r9\\Ä¤Åä,X¼ð=[=Í44êpni-oqplSÒj,ë¤Ý¤¦ëlìØS2Ìppi7aµ6i¸Òe-2Ý³)Il0ÀËfí4Ò³CL&jeZMÓfÌÎSI§ìIé$>gã#H@Da±G]£ÒH0µX¹j*3-¨ª`Â2PõRU.Qs,QQ#lv<f°ØqÒ¡ ñÝHzJy4³^î6jpÝ3£<Ø:8eL·oÑ¹Õ´­×:Vul·,°¶Y²hå¸ÓI²\'-Ì6[vgW.\\¸m::QÃ\r¹kêËe³Ë\0æe:.9¼üÝïCµë|2çÌÐë<Ñ_sóG¬?³»I8ÜÞB¼}XC ðQè)4P¥$ÙºØ<$&$¹ùOfúÀæÆÍ?Ãèïñ~cfÞåíÃgjíØ^\ZÀê2bz´f½ÙEi´é;N#ójw¹¤qr Á!ÖºM#°¹èx7SÁbÜL-SIàs8(úöZ\\§êaõ=V¦ênôwe»Ó%\ZR¢C@8Ô=ÝN×&ða772KMÎ4K51ØÃ¥îfÒçi0Ùêññô{ëRz½§WÅÞtSw¸±\rå7= h.;L[Ì7¡f§X:ÍãÚ?ôýÅ(O¶:8Ð¢¤-rý^£czÏS¥§l:9nÓtfTû¦\'¢aâõ§ØRs¼Ý§ºÞd÷6{?L÷¿D¢u·&&L6©;2LÍE±0ê³­Rå§	f&-½ÊL.S\nSÔÚXÑ¼^,ÂÄv01Ö@å3L\0iwíqÄÀ!ÞÁÄê6o5OY¨<g¨úü\'yob£RÏç:¼Ù|	\r@r¡Ì;X`fíw\nB\'DG&7,\ZÆ91¡ ç`_M0ÛNèqSq ç!ÊC­°c´	)$bb@$hÁ2%O1¸¡/6Ê\räý³fÓ±h.[y0fe­;7:Iö;©ry¶ZÓÅÑ\\ÅHu1r?Ë	¼ë:áê¶Ó3änvï\rL¦Ðê¤øùÓwGÚó:;Ozw)¶éÞ6ÇÃ¡¹¥`ÑÜGH0ÈSÜq8¶`ùåyöÃaÐ#ð(õõ½eþ.äp¡ _B±Â', NULL, 'shipto', 'Azampur', '8', 1700, NULL, NULL, 'faIt1600617079', 'Completed', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-20 11:51:19', '2020-09-22 05:38:59', NULL, NULL, 'د.ع', 1190, 0, 0, 0, 0, NULL, 0, 0),
(4, 22, 'BZh91AY&SYÂrj\0ß@\0ø;ô¿ïÿúP{ÝÆËf \Ztk	B4ÓCj\0\r\Z\0\0\Z ©ú¡úP  \0ÐMD¨\0\0\0\0\0\0\0Àh\0\0h\0\0\0\0	L¦ÔÚF=@§¨õBBCH	=öu¼GØK<ð{`P¨Ékè1°ìé$Ací0ó¬t,°0«¯ºäëT´!xÞ!32Ùü©µR¦23ì)´åîIcwðAzâS\0@ËätÍD°I¤t!!yyAV`±g¬4$`4MW¥mEVA¥aÕ±¥@g¥e\"HE@m¸¬Ö`q²\nÈÅÕ¦E¢%Ô\"$«¹`.îïBØcÆ°»ÆQC*ï>ÂÆ:FØÀã`¡Ã¤q%ÚRåÚ· \\NÁK{Z	HFHºTgw«$Q+\0¡. Äµ%]ZÔ1UUÕ-éÙ{P&Ð6h&(Â­QL\\£J*!ªÅ¨<\0©B3@¤$YGy½íÜoÛ	`$¶´!¨Æn¤Ó´+BÖt9^ãEÞÖiËVÆ1ªlÓªI	tÍMpk9Î(ÛbÃÌZj%±\"ÆÌ9AI>ÞÈvOÌsG0ü¾£GÌó³ÈÄpý%â­êÍÈ«U6¯dOuô1Ó}¸Nn9ñ>£Ã\\\'O\\p\ZMù¹i6>#\"`Û¨ä h£&dÔÄ2-¦¨*\n¢na×Ø[<à#aYÞ|õ<;¡mon/4@¤ª$«bU%ÃönplH¨¦ÁI280K]5c7¥L·Ó0rî=¿Á¨5kÎ&ÛHICP±N¦òñf©òu65¹Éb!UÁ=,Níâ`AÓ U\ZÙëtPgÉ\'hNÔ.åà6oä^»ßj¶ÍtÂñqIZÎÂ¡j¢$\"xÔeV\n$¼(J³q+\"ÄB©tÞ0õ2[h,»±\r2öñ:¬l4Ì	JÙ,µøJHX%ë5áQUJCÈCM*µØ\Z#Áp²8´ßgFÁ2\\\'!A¨ÒÀâA¿?.Ûjô~>ðc*21Â#\0ACIBmI¼ØxeÛ¯´Wk.J¿l{àZ\'·dàciTgâH\\ÈÊyE¬Bë1÷¢¥ÈÉ¬è(TSTX+QÀÈ£èÕÈ4£Ô\nëC\0ÂÄßsD5ð^«äe}O>h_\0¯^(E% ÔÿrE8PÂrj', NULL, 'shipto', 'Azampur', '1', 300, NULL, NULL, 'gu2d1600769735', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-22 06:15:35', '2020-09-22 06:15:35', NULL, NULL, 'د.ع', 1190, 0, 0, 0, 0, NULL, 0, 0),
(5, 22, 'BZh91AY&SYÑ¸mL\0_PXø?Kþ¿ÿÿú`=÷ c\0\04ÄÀF`\0\0aÓ\Z`F\0\0	`2LSÐFF\0\0R¢4Ñ¨¨M 44ÄÀF`\0\0a	@hL§Fò\'ªzOQè\ZhM6§êÁM S7GøÆÄ\0ÀÀ9Sú>ÁúâÅÊ-~¿ó\"î²AúÏéRïB¡.8TcK~È,..CÑê³égÂ\rH©`©6]m\ZçRymG¸øÏô9rZe>Â½H@` ÌÃ´é ý3ì:1m8ÈÔ@|\nO#X_h3È¨Ü(q\\¹	\nAq¤88NFÂ¿iäBB\n!hè57#Pi41m¦ÍhªËC34Ê/pÐ¬ eLîUTCäCu´«d\\²EÇTÁ6°j±y¿qï3Z21¨Êª\n¬ÈH2ÎWÇy%e\"÷¤Î3,UAR´ZÖ¢7ÞXPÐjÌÚ52æiÀ±  ÜT¡0IL$4$B¨Zec*¯Tïº\0Iz¨¨J`PJÊ;ÈXÐ´Ã*@hpb  ¥¤\nÉaarüÇÔv^`êëÉJÇ×©À.YÂ`³S9£5uæ°	Ia$Õ)BÒîñ¦î(íù[g°ÇJ¡ºÒ¨eáÂÎï$`´´\ZÑZ42¤ZÒ ©Êaf¥år-^iYRÆyfYMÖ¼`ÉbEÔh~ßÌü\'à`©sâõ¹èjX/\Z^UCñ-÷ÞwÆkb¾lÞªÒªh-xÜ  (ÓlýÞ07j(:¼ÿgÀþÍÊHä}ËÝRNÀÐu5aÄ\rOB§% ×ÈyY=5 ^ò\0Ô÷57ìæ§b4ÒÈÍCbÌ?ÉÄ2È:,wËmÛ&T¬|ÌpÉ¹þ~#\'§²Ýú}ÉaX Ë0.Ø`m©0®|üN&e¤%ÏK¯Üöd@õ¼y¾Ú8SPut¯ð5È8¡ñ ;\nIý¡S¸ÛÖlvê:§u\n<~CTÌÌ48H5stÞxÂ?Ï+¿Ï;i&!Â`hgyíð±=¨3\'ÀU\ZÓ;Öè ÏRM~¡ûè_ðæ»Î³O~\'@½``W³¸ïÜ/¡7ZÖBâeêtX\'ª£*°¨PIÀ×´~ÂÅU`tgUÆ\n%qHàY.©¢[ûEÃ3CL½CwäOñ2F_ë|wjtJ\r§©Í/©Ìël*y|\rYQ¥¨u£!¶7Â1*B3Ìd(;FÎDo.v·<[6»¶Ë>AñàVF,ÌÄ,Já\r(+Á#N£C¢lÜìb+Á.¡Ux±°P.Ûgg7ªoY®SsM#3Uc39å=@*d²-æ#F½«Õ}Ã=:Ìg°íKn%*ª¨Âæé\'Ô|úó:I\n,ù´tÍ³	èk|ÄkñþA\rýþh(rø»)ÂÃj`', NULL, 'shipto', 'Azampur', '1', 130, NULL, NULL, 'PdgW1600786797', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-22 10:59:57', '2020-09-22 10:59:57', NULL, NULL, 'د.ع', 1191, 0, 0, 0, 0, NULL, 0, 0),
(6, 22, 'BZh91AY&SYÑ¸mL\0_PXø?Kþ¿ÿÿú`=÷ c\0\04ÄÀF`\0\0aÓ\Z`F\0\0	`2LSÐFF\0\0R¢4Ñ¨¨M 44ÄÀF`\0\0a	@hL§Fò\'ªzOQè\ZhM6§êÁM S7GøÆÄ\0ÀÀ9Sú>ÁúâÅÊ-~¿ó\"î²AúÏéRïB¡.8TcK~È,..CÑê³égÂ\rH©`©6]m\ZçRymG¸øÏô9rZe>Â½H@` ÌÃ´é ý3ì:1m8ÈÔ@|\nO#X_h3È¨Ü(q\\¹	\nAq¤88NFÂ¿iäBB\n!hè57#Pi41m¦ÍhªËC34Ê/pÐ¬ eLîUTCäCu´«d\\²EÇTÁ6°j±y¿qï3Z21¨Êª\n¬ÈH2ÎWÇy%e\"÷¤Î3,UAR´ZÖ¢7ÞXPÐjÌÚ52æiÀ±  ÜT¡0IL$4$B¨Zec*¯Tïº\0Iz¨¨J`PJÊ;ÈXÐ´Ã*@hpb  ¥¤\nÉaarüÇÔv^`êëÉJÇ×©À.YÂ`³S9£5uæ°	Ia$Õ)BÒîñ¦î(íù[g°ÇJ¡ºÒ¨eáÂÎï$`´´\ZÑZ42¤ZÒ ©Êaf¥år-^iYRÆyfYMÖ¼`ÉbEÔh~ßÌü\'à`©sâõ¹èjX/\Z^UCñ-÷ÞwÆkb¾lÞªÒªh-xÜ  (ÓlýÞ07j(:¼ÿgÀþÍÊHä}ËÝRNÀÐu5aÄ\rOB§% ×ÈyY=5 ^ò\0Ô÷57ìæ§b4ÒÈÍCbÌ?ÉÄ2È:,wËmÛ&T¬|ÌpÉ¹þ~#\'§²Ýú}ÉaX Ë0.Ø`m©0®|üN&e¤%ÏK¯Üöd@õ¼y¾Ú8SPut¯ð5È8¡ñ ;\nIý¡S¸ÛÖlvê:§u\n<~CTÌÌ48H5stÞxÂ?Ï+¿Ï;i&!Â`hgyíð±=¨3\'ÀU\ZÓ;Öè ÏRM~¡ûè_ðæ»Î³O~\'@½``W³¸ïÜ/¡7ZÖBâeêtX\'ª£*°¨PIÀ×´~ÂÅU`tgUÆ\n%qHàY.©¢[ûEÃ3CL½CwäOñ2F_ë|wjtJ\r§©Í/©Ìël*y|\rYQ¥¨u£!¶7Â1*B3Ìd(;FÎDo.v·<[6»¶Ë>AñàVF,ÌÄ,Já\r(+Á#N£C¢lÜìb+Á.¡Ux±°P.Ûgg7ªoY®SsM#3Uc39å=@*d²-æ#F½«Õ}Ã=:Ìg°íKn%*ª¨Âæé\'Ô|úó:I\n,ù´tÍ³	èk|ÄkñþA\rýþh(rø»)ÂÃj`', NULL, 'shipto', 'Azampur', '1', 130, NULL, NULL, 'sfbI1600787434', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-22 11:10:34', '2020-09-22 11:10:34', NULL, NULL, 'د.ع', 1191, 0, 0, 0, 0, NULL, 0, 0),
(7, 22, 'BZh91AY&SYÑ¸mL\0_PXø?Kþ¿ÿÿú`=÷ c\0\04ÄÀF`\0\0aÓ\Z`F\0\0	`2LSÐFF\0\0R¢4Ñ¨¨M 44ÄÀF`\0\0a	@hL§Fò\'ªzOQè\ZhM6§êÁM S7GøÆÄ\0ÀÀ9Sú>ÁúâÅÊ-~¿ó\"î²AúÏéRïB¡.8TcK~È,..CÑê³égÂ\rH©`©6]m\ZçRymG¸øÏô9rZe>Â½H@` ÌÃ´é ý3ì:1m8ÈÔ@|\nO#X_h3È¨Ü(q\\¹	\nAq¤88NFÂ¿iäBB\n!hè57#Pi41m¦ÍhªËC34Ê/pÐ¬ eLîUTCäCu´«d\\²EÇTÁ6°j±y¿qï3Z21¨Êª\n¬ÈH2ÎWÇy%e\"÷¤Î3,UAR´ZÖ¢7ÞXPÐjÌÚ52æiÀ±  ÜT¡0IL$4$B¨Zec*¯Tïº\0Iz¨¨J`PJÊ;ÈXÐ´Ã*@hpb  ¥¤\nÉaarüÇÔv^`êëÉJÇ×©À.YÂ`³S9£5uæ°	Ia$Õ)BÒîñ¦î(íù[g°ÇJ¡ºÒ¨eáÂÎï$`´´\ZÑZ42¤ZÒ ©Êaf¥år-^iYRÆyfYMÖ¼`ÉbEÔh~ßÌü\'à`©sâõ¹èjX/\Z^UCñ-÷ÞwÆkb¾lÞªÒªh-xÜ  (ÓlýÞ07j(:¼ÿgÀþÍÊHä}ËÝRNÀÐu5aÄ\rOB§% ×ÈyY=5 ^ò\0Ô÷57ìæ§b4ÒÈÍCbÌ?ÉÄ2È:,wËmÛ&T¬|ÌpÉ¹þ~#\'§²Ýú}ÉaX Ë0.Ø`m©0®|üN&e¤%ÏK¯Üöd@õ¼y¾Ú8SPut¯ð5È8¡ñ ;\nIý¡S¸ÛÖlvê:§u\n<~CTÌÌ48H5stÞxÂ?Ï+¿Ï;i&!Â`hgyíð±=¨3\'ÀU\ZÓ;Öè ÏRM~¡ûè_ðæ»Î³O~\'@½``W³¸ïÜ/¡7ZÖBâeêtX\'ª£*°¨PIÀ×´~ÂÅU`tgUÆ\n%qHàY.©¢[ûEÃ3CL½CwäOñ2F_ë|wjtJ\r§©Í/©Ìël*y|\rYQ¥¨u£!¶7Â1*B3Ìd(;FÎDo.v·<[6»¶Ë>AñàVF,ÌÄ,Já\r(+Á#N£C¢lÜìb+Á.¡Ux±°P.Ûgg7ªoY®SsM#3Uc39å=@*d²-æ#F½«Õ}Ã=:Ìg°íKn%*ª¨Âæé\'Ô|úó:I\n,ù´tÍ³	èk|ÄkñþA\rýþh(rø»)ÂÃj`', NULL, 'shipto', 'Azampur', '1', 130, NULL, NULL, 'xdJ11600787465', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-22 11:11:05', '2020-09-22 11:11:05', NULL, NULL, 'د.ع', 1191, 0, 0, 0, 0, NULL, 0, 0),
(8, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\0\0\r\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\rIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', NULL, 'shipto', 'Azampur', '1', 200, NULL, NULL, 'ReDF1600947681', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-24 07:41:21', '2020-09-24 07:41:21', NULL, NULL, 'د.ع', 1197.3889, 0, 0, 0, 0, NULL, 0, 0),
(9, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\0\0\r\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\rIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', NULL, 'shipto', 'Azampur', '1', 200, NULL, NULL, 'Irqh1600948728', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-24 07:58:48', '2020-09-24 07:58:48', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(10, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\0\0\r\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\rIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', NULL, 'shipto', 'Azampur', '1', 200, NULL, NULL, 'vuX21600960604', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-24 11:16:44', '2020-09-24 11:16:44', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(11, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\0\0\r\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\rIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', NULL, 'shipto', 'Azampur', '1', 200, NULL, NULL, 'kDvE1600960696', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-24 11:18:16', '2020-09-24 11:18:16', NULL, NULL, 'د.ع', 1193.4794, 0, 0, 0, 0, NULL, 0, 0),
(12, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\0\0\r\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\rIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', NULL, 'shipto', 'Azampur', '1', 200, NULL, NULL, 'ow1V1600961349', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-24 11:29:09', '2020-09-24 11:29:09', NULL, NULL, 'د.ع', 1193.4794, 0, 0, 0, 0, NULL, 0, 0),
(13, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\0\0\r\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\rIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', NULL, 'shipto', 'Azampur', '1', 200, NULL, NULL, 'p2l21600961375', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-24 11:29:35', '2020-09-24 11:29:35', NULL, NULL, 'د.ع', 1193.4794, 0, 0, 0, 0, NULL, 0, 0),
(14, 22, 'BZh91AY&SYØM\0ß@\0ø+ö¿ïÿúP{Ü°³P4(# \0 \0\0\0\0%	ÔÔCDd\0@ÈjJh=5\0\0\0\0iå\0\r\0\0\r\0\0\0\0\"\"4M6OIz4õ=CM(8q\'ìöä#ÄK>Ør::,±B£%¯aõÎAì2BL?©`2¡r¸Â®»T³ét+;ÝÒâ\ZÿJm2©¬p£FíãÙgáî2I!aù\0<\01y 0Ò3iBBéÒ\n´ë\Zé`c»m²i&	Q(IaeBÚÌÕÀ#tåå¸`dB,eeêÎE°åÍ%#*îï6,0ÖµÆL\"k.ô2±ÌÓî^AÜAyR±$,\\HwBHF7BT\"ÓN¤12e\"R±+1AèÈõ.`j IÈ(>èÖ%$í4Ô×N2üàE ,ªú2Z¢,¹FE<¡eÃ;,Z ÈÈ0#.¤ (ð8;ùÎá!`	)hB=F3U µ,VhkºU,öÉÃ«j5DÕ1£Lj[%¾%Tè\"TÂ]§5wymS2]¾SO¸öcÚ~}àt§À\0î?Íî7º,âÚ?Céq/6\"­T`ÚW_\næûô<1wfRAæ~ÇCàÄÖ¤çñ©E&ÐÚhM;ÒPêX}G¨Ì\nPGS\"ã\"ØG½NÀ~E,\Z°µe¡¨»N±0Ê­&n=H}NìáÞïêñ=\\)DUhI£æMçbE8ÃB¡J\'\"ÄgBKÑyÐzFlMiMÙê=¿^¤gÈÑø8»ö>rIC Mðä)Ñjä»Ï´l@ØÂóÄBÕa>gKâ-²m;tÐJ£Xá}oEyn	ÔÔ¸3/®°ùfÀ)ÃË1.b7F´PT.ª\"IÅo\'ªRVT0¢Ë­Ô!Ë¡´Þ\\ê\Z\rIà%¬aîhZøFäb}BÇ/ry¬.\Ze!¬<öG-&eRQ£ÿr\Zm ñ4cT¨ÖAÅ9-»a¶áïib2°¦HÃ ë\ZWDl/8hìãw[âû}L7ù%AF1D`P`ÈJdA¡6¤ØbrÑ\"»Râ*®Òë@A£BàµAsàà*ÝF&òÖM#J¸ÄÆwÅJVÖæ]É|0¿PÏ.%±ÈëY%EE¬ÑÉø{x°ÞÑ#VªùO·YÖð>¿^Ô&jÅÜN$f¶@', NULL, 'shipto', 'Azampur', '1', 200, NULL, NULL, '9s2N1600968157', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-24 13:22:37', '2020-09-24 13:22:37', NULL, NULL, 'د.ع', 1193.4794, 0, 0, 0, 0, NULL, 0, 0),
(15, 33, 'BZh91AY&SYgÞs\0ß@\0ø+ô¿ÿÿúPy2Ìl\02Àh\0\0h\0\0\0\0	DaL\0\0Mj\"z=P`hi\0\r\0\0\r\0\0\0\0\"@A1 ý)L=@¤òHPHp&Ò~Ï©:Ävgv¿¾Ï!\"[6	ÁÔâÊ6	af¿§4ø5+sê¥ÊËÐôd&Úîô¿ºTÍF6dÉ­ k\r&åi±B$}Cj@\0ÚB¡Ôä%dDH]zÂ&É¾¬\r%0i¡­f¨ÏDÖ=ÃUMT @YÅQ;âL±Xi¤ÀmºVUìPDn.³y¹eÐ#$»¹Ü,¬bîóÒY0ÎsañcYE¼·yÖ3ÄI eP±RA\"¢\n)tY¤f\\¡h³!Rk+ èÉDiEJVµw,\n\rTi\n2¹TbèéY6HNé´,õ@ÅÐ]Z¢,¹FbT,CÐÅ¨2!t@¤$YGCGÓ¤&°IlhB=3dàÂxIk!ÌÇºF7&Ñ85$LÍ g¹©¡QÌH;¥S+³Æ1h3´»Y2Ö¥ÜV OçÈìm4 ý>`»Ôy\n¼Gä>Ç:wUø³b(Õ\r¥[Fbg©¿gúA¬ÔÏ3äz}¹±HçÉyÐ¸7®à5?£zÈkèBX>yÌG{2¦&eð­(ÀvW0`ÐØµ¬&t22\rE£8¹(efÆn=}FKvøvvîá;aRc8&Øª6î+Y\\õ>Æ³¸Ä Ó1H^Y:,GÍ£Áò¡éæ¯çñõ\Z«[ùú¶>r$Lð	\\¸h(Õ¢ñ=ÎÃbÀGKÆ\"vW3¡áÖ¤´éär	Sk-K\"c=ÉÁ-hZõ Ù·zívn|t9f1c¤E@YTS+DDb·ï Ê+© âÐ0%(¬È©@¢]!À°]iù­º>ôdjÎr]*BeÏ1¬?-ÑÏQÄ¢Pk8Ø~¦s\Zm âeY¹Émq6§²ÏK)#!AÐiXï £J£päÞçåÕêy|¸\"D_TdcF	\0,¦DEhbrË\"ÐT^%jfB°I\"©¦ÉMådñ:20M#3b©¸Å	W,¢(L*Zø¥ìÂÚÆ|ùÇ3ÁhÔÔYhàKØ|;.1@I\\M÷´Ar«5î2~G$/`AÛ·`Ø¡Sþ.äp¡ Ï¼æ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 132, NULL, NULL, '73DP1604417334', 'Pending', 'elhamahmed584@demo.com', 'elham', 'Egypt', '01278659694', 'cairo', 'المنصورة', '345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-11-03 14:28:54', '2020-11-03 14:28:54', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(16, 43, 'BZh91AY&SYèqø\0ß@\0Pø;ô¿ÿÿúP{Ý0fËºÔ\0A	TÚ&zP4\0Ñ2F\0Ú¨\0h\Z\r\0\0	5ª\0m@A \0\00\0\0\0\0\0\0\0\0 M(ÆÚE=#d\ZhÐõ6RBÂCòpNb~Ïa>B<ÂYöÃðròÈÀAkè11ÕÎDA	úÊê@nua@«u4ÑDé³%¥¾T]ÝS8L±»32*hwAB ­\nq\'Á\0 O/¡äxWI¤A	ËÊ6Mù9\"<d2$½ïy42q1K¨T¡Ów¤7fÄDR.jõQ$³%X\nªÕåÊd\n»Ì»»Ê!l33(ÂSx2nòÌ6Y²\n9\rP,£FÍ¥AE>5%(Â¹\n2Q\ZF& 9B< 5Q \nHªBV³.¨©²Y¤/åbÚCð\Z	Ä\0ðe\nÕÁeÊ5¢¡`-AddD\n@REx\'«Ö8´pICBúf	àRe&æ^ì¤ÍloWh BD A*J++ÐV0Y\0HuKØUæHÅïyqQ4³Ba¢Bµè4xqJrÐf&25É S;Ù)Pö\'¼~Ã­I;«{Y¢(Õ\r¥[GPû+»ÂsÀ#¢Bá9IÃô¤RÌMéDSÆ:&yègÄÉ¬F¿BÀùå1.daphó¡ÉÀ»ÅZÁ¤ÍÊîÝQ-ÅÌvH}FKvvá¬íy5Rm£oZËþ<Í%¤JC	dBW±\"È±°÷íß}·ÏpJ¹=Oø5&µî2ÀÁ×BÝ\"DÍV,Å×¨·s^\'©â6 lt±ªÄBÁ»T1o¼ê`A¶A\"Jmc{RÈÏRG\0_Sär]ÎÅí¼=YÀ	÷ô6îÂ±ÔR\" I¬ª)¢\"D±\\Ér Ê,ÉHZ$¥4&Y *KÀR\në°aö2K³¼YpF(i `mö%Õ^£LÀ÷\r_áÛfr(\Z\Zþ\'2;Æe3Äð3Ýd¦×#°:##eÄvÌâk>{X¤)HQ|FBÀiXæAøÇL½WÁìý¨>@Æ&Ð\"b2ÈPdd%10hM©¦\'L¹B)½.ñQ}åjn!X$\"= Ä6æà(ð;Ìï+`F&j2¦&2Ö(LÁ`Y(L*Züôam~=Æî6KBSSQeÉ©/Aòà0 !XMñhÐÀÕ¨½FOÞ}ÜN^ÇÇîPRR\rOø»)ÂC·À', 'Cash On Delivery', 'shipto', 'Azampur', '1', 122, NULL, NULL, 'jxQ91608261858', 'Pending', 'nehal_kamal@yahoo.com', 'nehal kamal', 'Egypt', '01019555339', 'cairo', 'Cairo', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-12-18 02:24:18', '2020-12-18 02:24:18', NULL, NULL, 'L.E.', 15.708384, 0, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 15, 'Pending', 'You have successfully placed your order.', '2020-11-03 14:28:54', '2020-11-03 14:28:54'),
(2, 16, 'Pending', 'You have successfully placed your order.', '2020-12-18 02:24:18', '2020-12-18 02:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 0, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner1_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_ar`, `best_seller_banner1_ar`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '3584 Hickory Heights Drive ,Hanover MD 21076, USA', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'https://geniusocean.com/', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '16032038222.jpg', NULL, NULL, 'hthttps://amorshoping.com/category/jewelry-and-watchestp://google.com', '160320422318.jpg', 'https://amorshoping.com/category/books', 1, 1, '16032038221.jpg', 'http://ghttps://amorshoping.com/category/camera-and-photooogle.com', '160320422316.jpg', 'https://amorshoping.com/category/jewelry-and-watches', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(6, '1603201114Samsung-logo-2015-Nobg.png', NULL),
(8, '1603201101b6e2ef894ef8e63a8a3e8c35a6e6144a.png', NULL),
(9, '1603200965Samsung-logo-2015-Nobg.png', NULL),
(10, '1603201087b6e2ef894ef8e63a8a3e8c35a6e6144a.png', NULL),
(12, '1607127014B9C6C17F-0739-4D26-8AFA-F430C7F39E80.png', NULL),
(13, '1607127134DB64977E-1FCD-4EF5-96EC-7281447C8ACC.jpeg', NULL),
(14, '1607127705ADFD7158-223D-43ED-BFBC-13C435CE7AC8.jpeg', NULL),
(15, '16071277343059D585-EBC5-4A60-B6E0-B6F8FC7A0010.jpeg', NULL),
(16, '1607127788615B6D0E-0DBE-4C3C-9CD5-858409C3E71F.png', NULL),
(17, '1607127808C1F50397-957B-4AE9-B099-FBBEFEA97F9D.jpeg', NULL),
(18, '1607127852D76D4AAF-645F-4CCF-A5CC-2501DD82C7A7.png', NULL),
(19, '1607127875E787FD56-94FD-47CC-8723-86CC5333329B.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via your Mobile Money.', 'Mobile Money', '<font size=\"3\"><b style=\"\">Mobile Money</b><b>&nbsp;No: 6528068515</b><br><br></font>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(93, NULL, 'normal', NULL, 0, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-94l93dsn', '15680269303GYKjODW.png', '1568026930poclhyxJ.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 51, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 05:07:43', '2020-12-23 04:11:06', 0, NULL, NULL, NULL, 0, 0),
(95, 'pr495jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027732dTwHda8l.png', '1568027751AidGUyJv.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 90, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2019-09-09 05:36:06', '2020-12-22 15:56:06', 1, '09/08/2021', NULL, NULL, 0, 0),
(96, 'pr601jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 96', 'top-rated-product-title-will-be-here-according-to-your-wish-96-rdk96x5b', '1568025872cCRVsp2k.png', '1568025872thPsuRSJ.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 51, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 06:00:05', '2020-12-23 00:32:21', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(97, 'pr602jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here', 'physical-product-title-title-will-be-here-pr602jsv', '1568026462TxRJ07FG.png', '1568026462WBWcd7KZ.jpg', NULL, 'S,M,L', '2147483596,2147483597,2147483597', '20,30,40', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 85, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 09:59:33', '2020-11-27 07:11:06', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(99, 'pr604jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-hjm99shr', '15680264040zpMCpmS.png', '1568026404Hm4kTmnP.jpg', NULL, 'S', '2147483641', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 39, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 09:59:33', '2020-12-22 04:10:10', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(100, 'pr605jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 100', 'physical-product-title-title-will-be-here-100-qqz100nzi', '1568026368qU5AILZo.png', '1568026368CzWwfWLG.jpg', NULL, 'S', '55555555555555555', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 28, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 09:59:33', '2020-12-22 04:09:39', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(101, 'pr606jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 101', 'physical-product-title-title-will-be-here-101-8e1101lbq', '1568026326RDSwScJe.png', '1568026326vMlslLz4.jpg', NULL, 'S', '2147483646', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 28, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 09:59:33', '2020-12-22 04:09:50', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(103, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-laj1033wf', '1568026899SLhVRzQv.png', '15680268999fypNo3k.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 24, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 10:07:43', '2020-12-22 04:09:22', 0, NULL, NULL, NULL, 0, 0),
(104, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 104', 'digital-product-title-will-be-here-by-name-104-ffv1047iv', '1568026881R8KnUyJv.png', '1568026881yy7vilmh.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 29, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 10:07:43', '2020-12-22 04:09:31', 0, NULL, NULL, NULL, 0, 0),
(105, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 105', 'digital-product-title-will-be-here-by-name-105-xpt105lfz', '1568026853LMtcb9he.png', '1568026853ZnMf5AkF.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 17, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 10:07:43', '2020-12-23 04:11:12', 0, NULL, NULL, NULL, 0, 0),
(106, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 106', 'digital-product-title-will-be-here-by-name-106-iq4106dr3', '1568026820NnXjzL5e.png', '1568026820j7QX4FZs.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 23, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 10:07:43', '2020-12-23 04:11:21', 0, NULL, NULL, NULL, 0, 0),
(107, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 107', 'digital-product-title-will-be-here-by-name-107-4ll107cru', '1568026791NGCCXoMs.png', '1568026791O2FR26Va.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 16, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 10:07:43', '2020-12-23 04:11:30', 0, NULL, NULL, NULL, 0, 0),
(109, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 109', 'digital-product-title-will-be-here-by-name-109-ext109m9m', '15680267308Mckygzw.png', '1568026730uz1TS02K.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 19, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 10:07:43', '2020-12-23 04:11:36', 0, NULL, NULL, NULL, 0, 0),
(111, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 111', 'license-key-title-will-be-here-according-to-your-wish-111-wb3111ubd', '1568029267UZnlkD97.png', '1568029267AY9MRYAQ.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 18, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, 1, '2019-09-09 10:25:20', '2020-12-03 03:57:16', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(112, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-sct112k8z', '1568029203HHnZu8em.png', '1568029203eAzBjS8a.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 17, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 1, 1, '2019-09-09 10:25:20', '2020-12-03 03:56:59', 0, NULL, NULL, NULL, 0, 0),
(114, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-bbb114jm9', '1568029152hgFzyOZv.png', '1568029152PVeSE2Ct.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 60, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 1, '2019-09-09 10:25:20', '2020-12-05 09:37:11', 0, NULL, NULL, NULL, 0, 0),
(116, 'pr496jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027684whVhJDrR.png', '1568027717gm0tFzeb.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 10:36:06', '2019-09-09 08:15:17', 1, '09/08/2021', NULL, NULL, 0, 0),
(117, 'pr497jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027658Up0FIXsW.png', '1568027670dTA7gQml.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 10:36:06', '2019-09-09 08:14:30', 1, '09/08/2021', NULL, NULL, 0, 0),
(118, 'pr498jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027631cnmEylRa.png', '1568027643PgYviwVK.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 10:36:06', '2019-09-09 08:14:03', 1, '09/08/2021', NULL, NULL, 0, 0),
(119, 'pr499jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027603i5UAZiKB.png', '1568027616O1coe3aV.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 10:36:06', '2019-09-09 08:13:36', 1, '09/08/2021', NULL, NULL, 0, 0),
(120, 'pr500jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027558gLSECTIh.png', '1568027591b1oUIo7Q.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2019-09-09 10:36:06', '2019-09-09 08:53:33', 1, '09/08/2021', NULL, NULL, 0, 0),
(121, 'pr501jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027534O1QEBPpR.png', '1568027543P8eoamtf.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 10:36:06', '2019-09-09 08:12:23', 1, '09/08/2021', NULL, NULL, 0, 0),
(122, 'pr502jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027493eLqHNoZP.png', '1568027517LGq90luX.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 10:36:06', '2020-03-22 08:07:59', 1, '09/08/2021', NULL, NULL, 0, 0),
(123, 'pr608jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-pr608jsv', '1568025845ksCVo0hg.png', '1568025845bvB0Q0RE.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 16, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 11:00:05', '2020-12-09 11:21:36', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(124, 'pr609jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 124', 'top-rated-product-title-will-be-here-according-to-your-wish-124-hua12449x', '1568025818Iu033mHq.png', '1568025818tm9YHIHp.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 24, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 11:00:05', '2020-12-22 04:11:37', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(125, 'pr610jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 125', 'top-rated-product-title-will-be-here-according-to-your-wish-125-lbp125hto', '1568025774B3MU5tJK.png', '1568025774ZsBKNuio.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 22, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 1, '2019-09-09 11:00:05', '2020-12-22 04:11:37', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(126, 'pr611jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 1', 'top-rated-product-title-will-be-here-according-to-your-wish-1-7uo96fft', '1568025683HenL6lSt.png', '1568025683ZYvDAf0q.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 35, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2019-09-09 11:00:05', '2020-12-22 04:10:27', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(128, 'pr613jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 102', 'top-rated-product-title-will-be-here-according-to-your-wish-102-rgr128igz', '1568025531RbQwgMZ5.png', '1568025531ckSl3TVR.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 19, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, 1, '2019-09-09 11:00:05', '2020-12-22 22:14:04', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(129, 'pr614jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 101', 'top-rated-product-title-will-be-here-according-to-your-wish-101-nls129ico', '1568025423UQNFrvNh.png', '15680254230iXcasMb.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 23, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 11:00:05', '2020-12-22 22:15:20', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(130, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 130', 'license-key-title-will-be-here-according-to-your-wish-130-nwn1300xx', '1568029076fUcMe2QP.png', '1568029076jgoAP4SR.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 26, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 1, 1, '2019-09-09 10:25:20', '2020-12-23 14:16:01', 0, NULL, NULL, NULL, 0, 0),
(134, 'OO42939gas', 'normal', NULL, 13, 4, 2, 1, NULL, 'Elite 24\'\' ELITE HD LED TV DN600D', 'elite-24-elite-hd-led-tv-dn600d-oo42939gas', '1570072567FiBwycha.png', '1570072567Cqr5iSzD.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, '<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;\"=\"\"><font size=\"3\">TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 992, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><font size=\"3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</font></span><br>', 1, 48, 'tv,television', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-24 22:33:22', '2020-12-23 04:11:42', 0, NULL, NULL, NULL, 1, 0),
(135, '3uZ9903ofs', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs', '1570072554QTCZrnNj.png', '1570072555mZv9XiNP.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 89, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-29 21:08:12', '2020-12-03 03:51:06', 0, NULL, NULL, NULL, 1, 0),
(144, 'vrX2915O5c', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c', '1570072918cZGfHP4L.jpg', '1584942848B9z2jIvL.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 29, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 19:21:58', '2020-12-11 20:55:21', 0, NULL, NULL, NULL, 0, 135),
(159, 'zhv5144fRY', 'normal', NULL, 13, 4, 2, 1, NULL, 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-zhv5144fry', '1570085245XVFR2oBZ.png', '1570085246ZA1btIzg.jpg', NULL, NULL, NULL, NULL, NULL, 300, 346, 'dfh', 34634, 'dfh', 1, 19, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 22:47:25', '2020-12-03 03:47:26', 0, NULL, NULL, NULL, 0, 0),
(160, 'o1L5621DiS', 'normal', NULL, 13, 4, 2, 1, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-o1l5621dis', '1570085654jsXxCLyC.png', '1570085654jeAoOOo6.jpg', NULL, NULL, NULL, NULL, NULL, 346, 346, 'sgasdg', 34, 'dsgds', 1, 15, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 22:54:14', '2020-12-03 03:51:09', 0, NULL, NULL, NULL, 0, 0),
(161, 'D2e6433Yi0', 'normal', NULL, 13, 4, 2, 1, NULL, 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-d2e6433yi0', '1570086479WEPC1gt0.png', '1570086479kBZE8u1v.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, 'hdfhdf', 0, 'dfjdfj', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 23:07:59', '2020-12-03 03:51:04', 0, NULL, NULL, NULL, 0, 0),
(162, 'tOC5844N0t', 'normal', NULL, 13, 4, 2, 1, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-toc5844n0t', '1570255904FqR6FYd6.png', '1570255905GPr2HimK.jpg', NULL, 'S,Medium,Large', '100,100,100', '2,5,10', '#000000,#962f2f,#1c10a1,#1e9114,#701313', 400, 450, 'sdhds', 449, 'hdsh', 1, 136, 'dsf,hgf', 'Test,test1', '#000000,#d14141', 2, '24', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-04 22:11:44', '2020-12-03 03:51:10', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0),
(163, '1ui8665inp', 'normal', NULL, 13, 17, NULL, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-1ui8665inp', '1570258694VlEv5IWz.png', '1570258694DNAUV7hA.jpg', NULL, NULL, NULL, NULL, NULL, 300, 464, 'fhjd', 734, 'dfj', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-04 22:58:14', '2020-12-03 09:48:38', 0, NULL, NULL, NULL, 0, 0),
(164, 'RXp8737LeV', 'normal', NULL, 13, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737lev', '157025877313GpXaVy.png', '15702587732fKHlv77.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'gfkj', 4588, 'fgk', 1, 15, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-04 22:59:33', '2020-12-03 03:53:58', 0, NULL, NULL, NULL, 0, 0),
(165, 'RXp8737Le', 'normal', NULL, 13, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737le', '15702607258LEdVp5O.png', '1570260725Wze2eRN9.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'gfkj', 4588, 'fgk', 0, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-04 23:00:19', '2020-03-22 08:07:51', 0, NULL, NULL, NULL, 0, 0),
(166, 'U1W3579L5k', 'normal', NULL, 0, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"No warranty\",\"Non-local warranty\"],\"prices\":[\"0\",\"30\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\",\"Infinix\"],\"prices\":[\"20\",\"40\"],\"details_status\":1},\"ram\":{\"values\":[\"3 GB\"],\"prices\":[\"0\"],\"details_status\":0},\"color_family\":{\"values\":[\"Black\",\"White\",\"Brown\"],\"prices\":[\"0\",\"20\",\"0\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"21\"],\"prices\":[\"12\",\"20\"],\"details_status\":1}}', 'Zain - Digital Agency and Startupuuuu', 'zain-digital-agency-and-startupuuuu-u1w3579l5k', '15708736755B0OtgVI.png', '1570873675mdibaSBp.jpg', NULL, NULL, NULL, NULL, NULL, 300, 436, 'shsdh', 346, 'sdhds', 1, 21, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 01:47:55', '2020-12-23 04:11:49', 0, NULL, NULL, NULL, 0, 0),
(167, 'kE84874xem', 'normal', NULL, 13, 4, 2, 1, NULL, 'Courses', 'courses-ke84874xem', '1570874976y1X2tWVr.png', '15708749764ioXjDWh.jpg', NULL, NULL, NULL, NULL, NULL, 250, 355, 'asgas', 345, 'agsas', 1, 32, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-12 02:09:36', '2020-12-03 12:31:41', 1, '09/15/2020', NULL, NULL, 0, 0),
(168, 'tbs53803yh', 'normal', NULL, 13, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"international manufacturer warranty\"],\"prices\":[\"78\",\"45\"],\"details_status\":1},\"brand\":{\"values\":[\"Symphony\",\"Apple\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"1 GB\",\"3 GB\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"color_family\":{\"values\":[\"Sliver\",\"Brown\"],\"prices\":[\"67\",\"5\"],\"details_status\":1}}', 'Revel - Real Estate Huuu', 'revel-real-estate-huuu-tbs53803yh', '1570875445mpVQBH3x.png', '15708754456n2CU31X.jpg', NULL, NULL, NULL, NULL, NULL, 300, 345, 'dfshdfs', 5, 'sdgs', 1, 31, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 02:17:25', '2020-12-11 20:52:45', 0, NULL, NULL, NULL, 0, 0),
(169, 'TRg5938WNy', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny', '1570875978KD9cRleA.jpg', '15708759789N9Hm1QJ.jpg', NULL, NULL, NULL, NULL, 'Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 17, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 02:26:18', '2020-12-11 21:05:34', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123),
(170, '6Vb6172gWR', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr', '1570876195YsopRMZ0.jpg', '157087619598Nfs52R.jpg', NULL, NULL, NULL, NULL, 'Black,Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 10, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 02:29:55', '2020-12-11 21:02:03', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123),
(171, 'zia62030Vj', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-zia62030vj', '1570876207958wem8B.jpg', '1570876207Ri9VVzRq.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 15, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 02:30:07', '2020-12-11 20:54:32', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123),
(173, 'b2Q6258iDf', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-b2q6258idf', '1570876281siGCkmvP.jpg', '1570876281Wt1wdK8O.jpg', NULL, 'S', '2147483643', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 02:31:21', '2020-12-03 04:00:01', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131),
(174, 'bXf62830R9', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-bxf62830r9', '1570876303dcztUot8.jpg', '15708763046Vwtn82r.jpg', NULL, 'S', '2147483643', '20', '#ffffff,#000000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 40, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-12 02:31:43', '2020-12-03 12:32:35', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131),
(175, '9gn6494iUN', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-9gn6494iun', '1570876503CUOkgSFD.jpg', '1570876503XgLFnuQi.jpg', NULL, 'S', '55555555555555555', '20', '#ffffff,#000000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 16, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-12 02:35:03', '2020-10-20 10:40:47', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 102),
(178, 'Tcv6794KXS', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-tcv6794kxs', '1570876820YXbcdnxW.jpg', '1570876820rpkj3Z6U.jpg', NULL, 'S', '2147483644', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-10-12 02:40:20', '2020-10-20 12:54:08', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99),
(179, 'mf56823djs', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-mf56823djs', '1570877127ByWwIJUA.jpg', '1570877128HKed4vMT.jpg', NULL, 'S', '2147483644', '20', '#ffffff,#ff0000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 66, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-12 02:45:27', '2020-10-20 10:40:42', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(180, 'myy7236gFD', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-myy7236gfd', '1570877254IpMreGOE.jpg', '1584942834BQBbShSE.jpg', NULL, 'S', '2147483644', '20', '#ffffff,#ff0000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<div>خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فيرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</div><div><br></div><div>الجزء القياسي من لوريم إيبسوم المستخدم منذ القرن الخامس عشر مستنسخ أدناه للمهتمين. تم أيضًا نسخ الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" بواسطة Cicero في شكلها الأصلي بالضبط ، مصحوبة بنسخ باللغة الإنجليزية من ترجمة عام 1914 بواسطة H. Rackham.</div>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 12, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-12 02:47:34', '2020-10-20 10:39:46', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99),
(215, 'WJ80459Tg6', 'normal', NULL, 0, 8, NULL, NULL, NULL, 'Fashion Men\'s Sport Shoes Breathable Casual', 'fashion-mens-sport-shoes-breathable-casual-wj80459tg6', '1599940808mX8oqLn9.png', '1599940808j1jrUfWj.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, '<br>', NULL, '<br>', 0, 11, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 0, 0, '2020-09-12 16:00:08', '2020-10-20 10:39:43', 1, '09/30/2020', NULL, NULL, 0, 0),
(216, 'AN08673jmW', 'normal', NULL, 0, 4, NULL, NULL, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"No warranty\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"3 GB\"],\"prices\":[\"0\"],\"details_status\":1}}', 'new product', 'new-product-an08673jmw', '1599998731QrB7N44X.png', '1599998731duNSA8vV.jpg', NULL, NULL, NULL, NULL, NULL, 11.99, 0, 'new prodcut<br>', NULL, '<br>', 0, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-09-13 08:05:31', '2020-10-20 10:39:30', 0, NULL, NULL, NULL, 0, 0),
(217, '1on8921msh', 'normal', NULL, 0, 4, 2, NULL, '{\"warranty_type\":{\"values\":[\"Local seller warranty\"],\"prices\":[\"0\"],\"details_status\":1}}', 'new product', 'new-product-1on8921msh', '1599999387blnl7Vtm.png', '1599999387n7Z9XOL4.jpg', NULL, NULL, NULL, NULL, NULL, 2334, 0, 'kkkkk<br>', NULL, '<br>', 0, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-09-13 08:16:27', '2020-10-20 10:39:28', 0, NULL, NULL, NULL, 0, 0),
(218, NULL, 'normal', NULL, 0, 4, NULL, NULL, NULL, 'test', 'test-', '1599999995AK5zIlR4.png', '1599999995Lwjs9bN8.jpg', '1599999995index.zip', NULL, NULL, NULL, NULL, 22.83, 0, 'test<br>', NULL, '<br>', 0, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-09-13 08:26:35', '2020-10-20 10:39:25', 0, NULL, NULL, NULL, 0, 0),
(219, NULL, 'normal', NULL, 0, 4, 2, NULL, NULL, 'test', 'test-lsw219a8s', '1600003546N1MPNNOt.png', '1600003546N3p7QYhP.jpg', '1600003546index.zip', NULL, NULL, NULL, NULL, 20, 0, 'kkkk<br>', NULL, '<br>', 0, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-09-13 09:25:46', '2020-10-20 10:39:26', 0, NULL, NULL, NULL, 0, 0),
(220, NULL, 'normal', NULL, 0, 4, 2, NULL, NULL, 'test', 'test-', '1603205527cWZ8L3ZL.png', '1603205528Ryu2O9OD.jpg', '1600003630index.zip', NULL, NULL, NULL, NULL, 20, 0, 'test<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-09-13 09:27:10', '2020-10-20 12:53:16', 1, '11/18/2020', NULL, NULL, 0, 0),
(221, NULL, 'normal', NULL, 0, 4, 2, NULL, NULL, 'test', 'test-', '1600003824863tBi8w.png', '1600003824SE4g6ZKh.jpg', '1600003824index.zip', NULL, NULL, NULL, NULL, 20, 0, 'test<br>', NULL, '<br>', 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', '1234', '1', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-09-13 09:30:24', '2020-10-20 10:39:23', 0, NULL, NULL, NULL, 0, 0),
(222, 'efq1086k3W', 'normal', NULL, 0, 4, 2, NULL, '{\"warranty_type\":{\"values\":[\"No warranty\"],\"prices\":[\"0\"],\"details_status\":1}}', 'Test', 'test-efq1086k3w', '160320683818oKG6t3.png', '1603206839mwjzddBn.jpg', NULL, NULL, NULL, NULL, NULL, 0.98, 0, 'test <br>', NULL, '<br>', 0, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, '2020-09-15 05:12:29', '2020-10-20 13:14:11', 0, NULL, NULL, NULL, 0, 0),
(223, 'C9f5206Csz', 'normal', NULL, 0, 22, NULL, NULL, NULL, 'elham', 'elham-c9f5206csz', '1600415267MxNUCJfy.png', '1600415267YpmxFtHf.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, 'بلاؤ', NULL, '<br>', 0, 12, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-09-18 03:47:47', '2020-10-20 10:39:19', 0, NULL, NULL, NULL, 0, 0),
(224, 'YGt3510tGq', 'normal', NULL, 0, 5, 6, NULL, NULL, 'rola', 'rola-ygt3510tgq', '16004235920BJ9AMPl.png', '1600423593EvYM2PiC.jpg', NULL, NULL, NULL, NULL, NULL, 300, 0, 'عغسعصغسعض', NULL, 'لا', 0, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-09-18 06:06:32', '2020-10-20 13:00:02', 1, '09/30/2020', NULL, NULL, 0, 0),
(225, 'PtM7401Rkr', 'normal', NULL, 0, 4, 2, NULL, NULL, 'Featured', 'featured-ptm7401rkr', '1600457613qIgrwKJI.png', '1600457613fmsQlWtr.jpg', NULL, NULL, NULL, NULL, NULL, 11.98, 0, '<br>', NULL, '<br>', 1, 15, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-09-18 15:33:33', '2020-12-17 10:28:49', 1, '09/24/2020', NULL, NULL, 1, 0),
(226, '6TR1455sfg', 'normal', NULL, 0, 5, 8, NULL, NULL, 'new product', 'new-product-6tr1455sfg', '1603201581AdqSlb9b.png', '1603201581QOfsfgm2.jpg', NULL, NULL, NULL, NULL, NULL, 200, 210, 'klfwkfeifek', NULL, 'سياسة الارجاع والشراء', 1, 27, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-20 11:46:21', '2020-12-25 01:07:32', 1, '11/04/2020', NULL, NULL, 0, 0),
(227, NULL, 'normal', NULL, 0, 4, 21, 17, NULL, 'new product', 'new-product-zha227anh', '1603201890jCG3XDjw.png', '1603201890mCtAWX8U.jpg', '1603201890logo white.zip', NULL, NULL, NULL, NULL, 390, 0, '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">Product Description*</h4>', NULL, '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">Product Buy/Return Policy*</h4>', 1, 46, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-20 11:51:30', '2020-12-22 14:49:18', 1, '11/04/2020', NULL, NULL, 0, 0),
(228, 'swE2593foT', 'normal', NULL, 0, 5, 9, NULL, NULL, 'demo', 'demo-swe2593fot', '1603202662P71MLbjt.png', '1603202662Cvtv2lJp.jpg', NULL, NULL, NULL, NULL, NULL, 132, 120, '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">Product Description*</h4>', NULL, '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">Product Buy/Return Policy*</h4>', 1, 52, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-20 12:04:22', '2020-12-22 22:18:00', 1, '10/23/2020', NULL, NULL, 0, 0),
(229, 'ja02840jAe', 'normal', NULL, 0, 5, 9, NULL, NULL, 'new product', 'new-product-ja02840jae', '1603203449ByFqzZAO.png', '1603203449xhx1etGL.jpg', NULL, NULL, NULL, NULL, NULL, 122, 111, '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">Product Description*</h4>', NULL, '<div class=\"col-lg-12\" style=\"width: 632.656px;\"><div class=\"left-area\"><h4 class=\"heading\" style=\"line-height: 1.2381;\">Product Buy/Return Policy*</h4></div></div><div class=\"col-lg-12\" style=\"width: 632.656px;\"><div class=\"text-editor\"><div unselectable=\"on\" style=\"width: 602.656px;\"><div class=\" nicEdit-panelContain\" unselectable=\"on\" style=\"overflow: hidden; width: 602.656px; border: 1px solid rgb(204, 204, 204); background-color: rgb(239, 239, 239);\"><div class=\" nicEdit-panel\" unselectable=\"on\" style=\"margin: 0px 2px 2px; zoom: 1; overflow: hidden;\"><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -54px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -126px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -342px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -162px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -72px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -234px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -144px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -180px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin-top: 2px;\"><div class=\" nicEdit-buttonContain\" unselectable=\"on\" style=\"width: 20px; height: 20px; opacity: 0.6;\"><div class=\" nicEdit-button-undefined\" unselectable=\"on\" style=\"border: 1px solid rgb(239, 239, 239);\"><div class=\" nicEdit-button\" unselectable=\"on\" style=\"width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -324px 0px;\"></div></div></div></div><div unselectable=\"on\" style=\"float: left; margin: 2px 1px 0px;\"><div class=\" nicEdit-selectContain\" unselectable=\"on\" style=\"width: 90px; height: 20px; cursor: pointer; overflow: hidden; opacity: 0.6;\"><div unselectable=\"on\" style=\"overflow: hidden; zoom: 1; border: 1px solid rgb(204, 204, 204); padding-left: 3px; background-color: rgb(255, 255, 255);\"><div class=\" nicEdit-selectControl\" unselectable=\"on\" style=\"overflow: hidden; float: right; height: 18px; width: 16px; background-image: url(&quot;http://js.nicedit.com/nicEditIcons-latest.gif&quot;); background-position: -450px 0px;\"></div><div class=\" nicEdit-selectTxt\" unselectable=\"on\" style=\"overflow: hidden; float: left; width: 66px; height: 14px; margin-top: 1px; font-family: sans-serif; text-align: center; font-size: 12px;\">Font&nbsp;Size...</div></div></div></div><div unselectable=\"on\" style=\"float: left; margin: 2px 1px 0px;\"><div class=\" nicEdit-selectContain\" unselectable=\"on\" style=\"width: 90px; height: 20px; cursor: pointer; overflow: hidden; opacity: 0.6;\"><div unselectable=\"on\" style=\"overflow: hidden; zoom: 1; border: 1px solid rgb(204, 204, 204); padding-left: 3px; background-color: rgb(255, 255, 255);\"></div></div></div></div></div></div></div></div>', 1, 87, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-20 12:17:29', '2020-12-23 18:07:46', 1, '11/18/2020', NULL, NULL, 0, 0),
(230, 'XX75663gxB', 'normal', NULL, 0, 9, NULL, NULL, NULL, 'demo', 'demo-xx75663gxb', '1603205737pRJWmBmP.png', '16032057373VJZ4OST.jpg', NULL, NULL, NULL, NULL, NULL, 876, 0, '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">Product Description*</h4>', NULL, '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">Product Buy/Return Policy*</h4>', 1, 58, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-20 12:55:37', '2020-12-24 18:17:50', 0, NULL, NULL, NULL, 0, 0),
(231, 'EOU3258C4E', 'normal', NULL, 0, 18, NULL, NULL, NULL, 'IQD', 'iqd-eou3258c4e', '16049333158FmZVfTM.png', '16049333169gWBGZ1p.jpg', NULL, NULL, NULL, NULL, NULL, 666, 0, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-09 13:48:36', '2020-12-22 22:16:53', 0, NULL, NULL, NULL, 0, 0),
(232, 'Z8z3587SqH', 'normal', NULL, 29, 5, 6, NULL, NULL, 'demo', 'demo-z8z3587sqh', '1604933647DkKNyofr.jpg', '1604933647Fx7gosmp.jpg', NULL, NULL, NULL, NULL, NULL, 56, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-09 13:54:07', '2020-11-09 13:54:07', 0, NULL, NULL, NULL, 0, 0),
(234, 'eNT37615JV', 'normal', NULL, 0, 27, 25, 19, NULL, 'جاكت', 'jakt-ent37615jv', '1607194130cg4TwmPk.png', '1607194130GdREi24w.jpg', NULL, 'xl , xxl , 3xl ,4xl', '10', '300', '#000000,#173289,#6d5757', 35.10227750596914, 25.528929095250284, '<h6><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">جاكت وتر بروف جيد&nbsp;</font></font></font></font></h6>', NULL, '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">خلال 14 يوم&nbsp;</font></font>', 1, 52, NULL, NULL, NULL, 2, '3 ايام', 0, 'جاكت', 'جاكت وتر بروف جيد', NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-12-05 17:48:50', '2020-12-22 21:46:19', 1, '12/05/2020', '10', '100', 1, 0),
(235, 'NZq96867Q0', 'normal', NULL, 48, 9, NULL, NULL, NULL, 'this is image test', 'this-is-image-test-nzq96867q0', '1608189755WwjHxWhD.jpg', '1608189755BvIgMLPm.jpg', NULL, NULL, NULL, NULL, NULL, 0.7638360789951635, 0, 'تست<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 06:22:35', '2020-12-17 06:22:35', 0, NULL, NULL, NULL, 0, 0),
(236, NULL, 'normal', NULL, 48, 4, 3, 6, NULL, 'test', 'test-nzf236bpj', '1608189911acn2Q3LS.jpg', '1608189911wfd58Ojp.jpg', NULL, NULL, NULL, NULL, NULL, 0.7638360789951635, 0, 'test<br>', NULL, 'none<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'none', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 06:25:11', '2020-12-17 10:35:17', 0, NULL, NULL, NULL, 0, 0),
(237, NULL, 'normal', NULL, 48, 4, 3, 6, NULL, 'test', 'test-wm2237v7f', '1608189944Ah2xhopg.jpg', '1608189944eTAmbAhL.jpg', NULL, NULL, NULL, NULL, NULL, 0.7638360789951635, 0, 'test<br>', NULL, 'none<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'none', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 06:25:44', '2020-12-17 06:25:44', 0, NULL, NULL, NULL, 0, 0),
(238, '4mJ0634Kxl', 'normal', NULL, 0, 4, 2, 1, NULL, 'this is image test', 'this-is-image-test-4mj0634kxl', '1608190697gFK2NWZR.png', '1608190697hvGJ7ePA.jpg', NULL, NULL, NULL, NULL, NULL, 1.274356131564527, 0, 'test<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 06:38:17', '2020-12-17 06:38:17', 0, NULL, NULL, NULL, 0, 0),
(239, 'zzZ1729w1q', 'normal', NULL, 48, 4, 2, 1, NULL, 'this is image test`', 'this-is-image-test-zzz1729w1q', '1608191777zUfWlz8b.jpg', '1608191777UYCyScJL.jpg', NULL, NULL, NULL, NULL, NULL, 1.2731637827172855, 0, 'test<br>', NULL, 'test<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 06:56:17', '2020-12-17 06:56:17', 0, NULL, NULL, NULL, 0, 0),
(240, 'LZn184493X', 'normal', NULL, 48, 4, 3, 5, NULL, 'this is image testhhhhhhhhhhhhhhhh', 'this-is-image-testhhhhhhhhhhhhhhhh-lzn184493x', '1608191893bD1FPNOW.jpg', '16081918935uTsPvmp.jpg', NULL, NULL, NULL, NULL, NULL, 1.2731637827172855, 0, 'test<br>', 20, 'test<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 06:58:13', '2020-12-17 06:58:13', 0, NULL, NULL, NULL, 0, 0),
(241, 'sop3433B8U', 'normal', NULL, 48, 4, 2, 1, NULL, 'this is image test2', 'this-is-image-test2-sop3433b8u', '16081938978s1ig9OW.jpg', '1608193897HRv40K12.jpg', NULL, NULL, NULL, NULL, NULL, 1290.0139067862565, 0, 'تست<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 07:31:37', '2020-12-17 07:31:37', 0, NULL, NULL, NULL, 0, 0),
(242, 'sop3433B8U1234', 'normal', NULL, 48, 4, NULL, NULL, NULL, 'this is image test2', 'this-is-image-test2-sop3433b8u1234', '1608195224awY7NcZQ.jpg', '16081952244RRV0Jgo.jpg', NULL, NULL, NULL, NULL, NULL, 1290.0139067862565, 0, 'تست<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 07:53:44', '2020-12-17 07:53:44', 0, NULL, NULL, NULL, 0, 0),
(243, 'CYZ5338e0Z', 'normal', NULL, 48, 4, 3, 5, NULL, 'this is image test 3', 'this-is-image-test-3-cyz5338e0z', '1608195394VJZDbdUc.jpg', '1608195394h9GTRqaR.jpg', NULL, NULL, NULL, NULL, NULL, 1.2758519501397056, 0, 'test<br>', 12, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-12-17 07:56:34', '2020-12-17 07:56:34', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_ar`
--

CREATE TABLE `product_ar` (
  `id` int(11) NOT NULL,
  `name_ar` text CHARACTER SET utf8 NOT NULL,
  `details_ar` text CHARACTER SET utf8 NOT NULL,
  `slug` text NOT NULL,
  `updated_at` varchar(250) DEFAULT NULL,
  `created_at` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_ars`
--

CREATE TABLE `product_ars` (
  `id` int(11) NOT NULL,
  `name_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `details_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(199) DEFAULT NULL,
  `updated_at` varchar(250) DEFAULT NULL,
  `created_at` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_ars`
--

INSERT INTO `product_ars` (`id`, `name_ar`, `details_ar`, `slug`, `updated_at`, `created_at`) VALUES
(206, 'Ø§Ø³Ø§', 'ØªØªØª', NULL, '2020-08-31 16:03:05', '2020-08-31 16:03:05'),
(207, 'اسا', 'تتت', NULL, '2020-08-31 16:09:34', '2020-08-31 16:09:34'),
(208, 'Ø³Ø§Ø¹Ø§Øª ÙØ³Ø§Ø¦ÙØ©', 'Generic ÙÙØ¯Ø§ÙÙ Ø³Ø§Ø¹Ø§Øª ÙØ³Ø§Ø¦ÙØ© ÙÙØ¶Ø© Ø®ÙØ± ÙØ³Ø¬ Ø§ÙØªÙØ§Ù ÙÙØ§Ø±ØªØ² Ø³ÙØ§Ø± Ø³Ø§Ø¹Ø© ÙØ¹ØµÙ ÙÙØ³ÙØ¯Ø§Øª<br>', NULL, '2020-09-09 10:45:00', '2020-09-09 10:45:00'),
(209, 'ÙØ¸Ø§Ø±Ø§Øª ÙØ³Ø§Ø¦ÙØ©', 'Generic ÙØ¸Ø§Ø±Ø© Ø´ÙØ³ÙØ© ÙØ³Ø§Ø¦ÙØ© Ø¹ØªÙÙØ© Ø¨ØªØµÙÙÙ Ø¹ÙÙ Ø§ÙÙØ·Ø© Ø±ÙØªØ±Ù Ø¥Ø·Ø§Ø± ØµØºÙØ± UV400 ÙØ¸Ø§Ø±Ø§Øª Ø£Ø²ÙØ§Ø¡ Ø§ÙØ³ÙØ¯Ø§Øª<br>', NULL, '2020-09-09 10:51:39', '2020-09-09 10:51:39'),
(210, 'Ø³Ø§Ø¹Ø§Øª ÙØ³Ø§Ø¦ÙØ©', '<h1 class=\"-fs20 -pts -pbxs\" style=\"padding: 8px 0px 4px; margin: 0px; font-size: 1.25rem; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif;\">Generic ÙØ¸Ø§Ø±Ø© Ø´ÙØ³ÙØ© ÙØ³Ø§Ø¦ÙØ© Ø¹ØªÙÙØ© Ø¨ØªØµÙÙÙ Ø¹ÙÙ Ø§ÙÙØ·Ø© Ø±ÙØªØ±Ù Ø¥Ø·Ø§Ø± ØµØºÙØ± UV400 ÙØ¸Ø§Ø±Ø§Øª Ø£Ø²ÙØ§Ø¡ Ø§ÙØ³ÙØ¯Ø§Øª</h1>', NULL, '2020-09-09 11:03:11', '2020-09-09 11:03:11'),
(211, 'Gygess Cold Shoulder Ruffle Velvet Maxi Dress - Purple', '<br>', NULL, '2020-09-09 11:35:47', '2020-09-09 11:35:47'),
(212, 'اختبار', 'اختبار<br>', NULL, '2020-09-09 12:54:22', '2020-09-09 12:54:22'),
(213, 'ساعات نسائية', '<br>', NULL, '2020-09-09 12:56:44', '2020-09-09 12:56:44'),
(180, 'سيكون عنوان المنتج المادي هنا', '<div>خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها \r\nجذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها \r\nأكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن\r\n سيدني في فيرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، \r\nconsectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب \r\nالكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام \r\n1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) \r\nبقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة \r\nحول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول \r\nمن Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم \r\n1.10.32.</div><div><br></div><div>الجزء القياسي من لوريم إيبسوم المستخدم\r\n منذ القرن الخامس عشر مستنسخ أدناه للمهتمين. تم أيضًا نسخ الأقسام \r\n1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" بواسطة Cicero في \r\nشكلها الأصلي بالضبط ، مصحوبة بنسخ باللغة الإنجليزية من ترجمة عام 1914 \r\nبواسطة H. Rackham.</div>', NULL, '2020-09-09 13:49:16', '2020-09-09 13:38:29'),
(179, 'سيكون عنوان المنتج المادي هنا', '<div>خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن سيدني في فيرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</div><div><br></div><div>الجزء القياسي من لوريم إيبسوم المستخدم منذ القرن الخامس عشر مستنسخ أدناه للمهتمين. تم أيضًا نسخ الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" بواسطة Cicero في شكلها الأصلي بالضبط ، مصحوبة بنسخ باللغة الإنجليزية من ترجمة عام 1914 بواسطة H. Rackham.</div>', NULL, '2020-09-09 15:09:11', '2020-09-09 15:09:11'),
(175, 'سيكون عنوان المنتج المادي هنا', '<div>خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن سيدني في فيرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</div><div><br></div><div>الجزء القياسي من لوريم إيبسوم المستخدم منذ القرن الخامس عشر مستنسخ أدناه للمهتمين. تم أيضًا نسخ الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" بواسطة Cicero في شكلها الأصلي بالضبط ، مصحوبة بنسخ باللغة الإنجليزية من ترجمة عام 1914 بواسطة H. Rackham.</div>', NULL, '2020-09-09 15:11:03', '2020-09-09 15:11:03'),
(174, 'سيكون عنوان المنتج المادي هنا', '<div>خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن سيدني في فيرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</div><div><br></div><div>الجزء القياسي من لوريم إيبسوم المستخدم منذ القرن الخامس عشر مستنسخ أدناه للمهتمين. تم أيضًا نسخ الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" بواسطة Cicero في شكلها الأصلي بالضبط ، مصحوبة بنسخ باللغة الإنجليزية من ترجمة عام 1914 بواسطة H. Rackham.</div>', NULL, '2020-09-09 15:12:46', '2020-09-09 15:12:46'),
(167, 'سيارة', 'منتج براند', NULL, '2020-09-12 19:37:46', '2020-09-12 19:37:46'),
(215, 'حذاء رياضي', 'تت<br>', NULL, '2020-09-13 11:58:57', '2020-09-13 11:29:29'),
(123, 'تست', '<br>', NULL, '2020-09-13 12:02:43', '2020-09-13 12:02:43'),
(97, 'تستتتتتتتتت', '<br>', NULL, '2020-09-13 12:03:58', '2020-09-13 12:03:58'),
(217, 'ÙÙØªØ¬ Ø¬Ø¯ÙØ¯', 'ÙÙÙÙÙÙ<br>', NULL, '2020-09-13 12:16:27', '2020-09-13 12:16:27'),
(218, 'تست', NULL, NULL, '2020-09-13 13:24:28', '2020-09-13 12:26:35'),
(219, 'ØªØ³Øª', 'ÙÙÙÙ<br>', NULL, '2020-09-13 13:25:46', '2020-09-13 13:25:46'),
(220, 'تست', NULL, NULL, '2020-10-20 14:52:09', '2020-09-13 13:27:10'),
(221, 'تست 12', 'تست 2344<br>', NULL, '2020-09-13 13:30:48', '2020-09-13 13:30:24'),
(222, 'تست', 'تست<br>', NULL, '2020-10-20 15:14:11', '2020-09-15 09:12:29'),
(223, 'الهام', 'يرضص', NULL, '2020-09-18 07:55:33', '2020-09-18 07:47:47'),
(224, 'اكسسوار', 'لاشلاتاض', NULL, '2020-09-18 10:06:33', '2020-09-18 10:06:33'),
(225, 'مميز', '<br>', NULL, '2020-09-18 19:33:33', '2020-09-18 19:33:33'),
(226, 'منتج جديد', 'تفاصيل المنتج', NULL, '2020-10-20 13:46:22', '2020-10-20 13:46:22'),
(227, 'منتج جديد', '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">تفاصيل المنتج بالعربي *</h4>', NULL, '2020-10-20 13:51:30', '2020-10-20 13:51:30'),
(228, 'منتج جديد', '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">تفاصيل المنتج بالعربي *</h4>', NULL, '2020-10-20 14:04:22', '2020-10-20 14:04:22'),
(229, 'منتج جديد', '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">تفاصيل المنتج بالعربي *</h4>', NULL, '2020-10-20 14:17:29', '2020-10-20 14:17:29'),
(230, 'منتج جديد', '<h4 class=\"heading\" style=\"margin-bottom: 0px; font-weight: 600; line-height: 1.2381; font-size: 14px; color: rgb(13, 51, 89);\">|تفاصيل المنتج بالعربي *</h4>', NULL, '2020-10-20 14:55:37', '2020-10-20 14:55:37'),
(231, 'سيكون عنوان المنتج المادي هنا', '<br>', NULL, '2020-11-09 14:48:36', '2020-11-09 14:48:36'),
(234, 'جاكت وتر روف', '<h6><span style=\"color: rgb(20, 50, 80); font-size: 16px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">جاكت وتر بروف جيد&nbsp;</font></font></font></font></span></h6>', NULL, '2020-12-05 18:48:50', '2020-12-05 18:48:50'),
(238, 'اختبار رفع الصور', 'اختبار<br>', NULL, '2020-12-17 07:38:17', '2020-12-17 07:38:17'),
(243, 'Ø§Ø®ØªØ¨Ø§Ø± Ø±ÙØ¹ Ø§ÙØµÙØ±3', 'test<br>', 'this-is-image-test-3-cyz5338e0z', '2020-12-17 08:56:35', '2020-12-17 08:56:35'),
(244, 'جاكت وتر بروف', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" size=\"5\">جاكت وتر بروف عالي الجوده&nbsp;</font></font><br>', NULL, '2020-12-18 18:32:16', '2020-12-18 18:32:16'),
(245, 'اختبار الحجم', 'اختبار<br>', NULL, '2020-12-19 11:46:57', '2020-12-19 11:46:57'),
(246, 'test', 'ghjk', NULL, '2020-12-21 11:57:53', '2020-12-21 11:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 171, '2020-01-23'),
(2, 171, '2020-01-23'),
(12, 175, '2020-03-23'),
(14, 101, '2020-03-23'),
(15, 180, '2020-03-23'),
(16, 112, '2020-08-16'),
(17, 126, '2020-08-16'),
(18, 128, '2020-08-16'),
(21, 99, '2020-08-18'),
(22, 99, '2020-08-18'),
(23, 97, '2020-08-23'),
(24, 97, '2020-08-23'),
(25, 97, '2020-08-23'),
(26, 97, '2020-08-23'),
(27, 97, '2020-08-23'),
(28, 100, '2020-08-24'),
(29, 100, '2020-08-24'),
(30, 100, '2020-08-24'),
(31, 100, '2020-08-26'),
(32, 129, '2020-08-27'),
(33, 171, '2020-08-27'),
(34, 111, '2020-08-27'),
(35, 124, '2020-08-27'),
(36, 128, '2020-08-28'),
(37, 170, '2020-08-28'),
(38, 125, '2020-08-28'),
(39, 130, '2020-08-28'),
(40, 114, '2020-08-30'),
(41, 169, '2020-08-30'),
(42, 126, '2020-08-30'),
(43, 129, '2020-08-30'),
(44, 171, '2020-08-30'),
(45, 111, '2020-08-30'),
(46, 124, '2020-08-30'),
(47, 112, '2020-08-31'),
(48, 96, '2020-08-31'),
(49, 125, '2020-08-31'),
(50, 130, '2020-08-31'),
(51, 101, '2020-09-01'),
(52, 103, '2020-09-01'),
(53, 100, '2020-09-01'),
(54, 97, '2020-09-01'),
(55, 104, '2020-09-02'),
(56, 169, '2020-09-02'),
(57, 112, '2020-09-02'),
(58, 107, '2020-09-02'),
(59, 123, '2020-09-02'),
(60, 112, '2020-09-03'),
(61, 96, '2020-09-03'),
(63, 101, '2020-09-04'),
(64, 99, '2020-09-04'),
(65, 100, '2020-09-04'),
(66, 97, '2020-09-04'),
(67, 103, '2020-09-04'),
(68, 104, '2020-09-05'),
(69, 95, '2020-09-06'),
(98, 95, '2020-09-08'),
(100, 106, '2020-09-08'),
(101, 107, '2020-09-08'),
(102, 126, '2020-09-08'),
(103, 126, '2020-09-08'),
(104, 125, '2020-09-08'),
(108, 95, '2020-09-08'),
(109, 95, '2020-09-08'),
(110, 95, '2020-09-08'),
(111, 95, '2020-09-08'),
(112, 95, '2020-09-08'),
(113, 101, '2020-09-08'),
(114, 106, '2020-09-08'),
(115, 106, '2020-09-08'),
(116, 106, '2020-09-08'),
(118, 95, '2020-09-08'),
(119, 95, '2020-09-08'),
(120, 95, '2020-09-08'),
(121, 126, '2020-09-08'),
(122, 95, '2020-09-08'),
(129, 95, '2020-09-09'),
(131, 101, '2020-09-09'),
(133, 180, '2020-09-09'),
(134, 174, '2020-09-10'),
(135, 174, '2020-09-10'),
(136, 175, '2020-09-10'),
(137, 179, '2020-09-10'),
(138, 179, '2020-09-10'),
(139, 179, '2020-09-10'),
(140, 180, '2020-09-10'),
(141, 180, '2020-09-10'),
(142, 179, '2020-09-10'),
(143, 179, '2020-09-10'),
(144, 179, '2020-09-10'),
(145, 174, '2020-09-10'),
(146, 179, '2020-09-10'),
(147, 109, '2020-09-10'),
(148, 179, '2020-09-10'),
(149, 179, '2020-09-10'),
(150, 180, '2020-09-11'),
(151, 180, '2020-09-11'),
(152, 180, '2020-09-11'),
(153, 174, '2020-09-11'),
(154, 129, '2020-09-11'),
(155, 171, '2020-09-12'),
(156, 179, '2020-09-12'),
(157, 179, '2020-09-12'),
(158, 179, '2020-09-12'),
(159, 179, '2020-09-12'),
(160, 179, '2020-09-12'),
(161, 179, '2020-09-12'),
(162, 179, '2020-09-12'),
(163, 179, '2020-09-12'),
(164, 179, '2020-09-12'),
(165, 179, '2020-09-12'),
(166, 179, '2020-09-12'),
(167, 179, '2020-09-12'),
(168, 179, '2020-09-12'),
(169, 179, '2020-09-12'),
(170, 179, '2020-09-12'),
(171, 179, '2020-09-12'),
(172, 179, '2020-09-12'),
(173, 179, '2020-09-12'),
(174, 179, '2020-09-12'),
(175, 179, '2020-09-12'),
(176, 179, '2020-09-12'),
(177, 179, '2020-09-12'),
(178, 179, '2020-09-12'),
(179, 179, '2020-09-12'),
(180, 175, '2020-09-12'),
(181, 179, '2020-09-12'),
(182, 179, '2020-09-12'),
(183, 179, '2020-09-12'),
(184, 179, '2020-09-12'),
(185, 179, '2020-09-12'),
(186, 179, '2020-09-12'),
(187, 179, '2020-09-12'),
(188, 179, '2020-09-12'),
(189, 175, '2020-09-12'),
(190, 179, '2020-09-12'),
(191, 174, '2020-09-12'),
(192, 179, '2020-09-12'),
(193, 175, '2020-09-12'),
(194, 175, '2020-09-12'),
(195, 174, '2020-09-12'),
(196, 175, '2020-09-12'),
(197, 175, '2020-09-12'),
(198, 175, '2020-09-12'),
(199, 179, '2020-09-12'),
(200, 179, '2020-09-12'),
(201, 179, '2020-09-12'),
(202, 179, '2020-09-12'),
(203, 179, '2020-09-12'),
(204, 179, '2020-09-12'),
(205, 179, '2020-09-12'),
(206, 180, '2020-09-12'),
(207, 180, '2020-09-12'),
(208, 180, '2020-09-12'),
(209, 128, '2020-09-12'),
(210, 179, '2020-09-12'),
(211, 179, '2020-09-12'),
(212, 179, '2020-09-12'),
(213, 179, '2020-09-12'),
(214, 179, '2020-09-12'),
(215, 179, '2020-09-12'),
(216, 179, '2020-09-12'),
(217, 179, '2020-09-12'),
(218, 179, '2020-09-12'),
(219, 179, '2020-09-12'),
(220, 179, '2020-09-12'),
(221, 175, '2020-09-12'),
(222, 175, '2020-09-12'),
(223, 175, '2020-09-12'),
(224, 179, '2020-09-12'),
(225, 167, '2020-09-12'),
(226, 128, '2020-09-13'),
(227, 215, '2020-09-14'),
(228, 174, '2020-09-14'),
(229, 174, '2020-09-14'),
(230, 167, '2020-09-14'),
(231, 215, '2020-09-14'),
(232, 215, '2020-09-14'),
(233, 114, '2020-09-14'),
(234, 169, '2020-09-14'),
(235, 126, '2020-09-15'),
(236, 129, '2020-09-15'),
(237, 215, '2020-09-15'),
(238, 179, '2020-09-15'),
(239, 171, '2020-09-15'),
(240, 111, '2020-09-15'),
(241, 124, '2020-09-15'),
(242, 128, '2020-09-15'),
(243, 170, '2020-09-15'),
(244, 125, '2020-09-16'),
(245, 130, '2020-09-16'),
(246, 99, '2020-09-17'),
(247, 103, '2020-09-17'),
(248, 100, '2020-09-17'),
(249, 114, '2020-09-18'),
(250, 104, '2020-09-18'),
(251, 126, '2020-09-18'),
(252, 111, '2020-09-18'),
(253, 128, '2020-09-19'),
(254, 170, '2020-09-19'),
(255, 112, '2020-09-19'),
(256, 96, '2020-09-19'),
(257, 223, '2020-09-19'),
(258, 125, '2020-09-19'),
(259, 130, '2020-09-20'),
(260, 223, '2020-09-20'),
(261, 223, '2020-09-20'),
(262, 101, '2020-09-20'),
(263, 215, '2020-09-20'),
(264, 218, '2020-09-20'),
(265, 222, '2020-09-20'),
(266, 220, '2020-09-20'),
(267, 219, '2020-09-20'),
(268, 217, '2020-09-20'),
(269, 216, '2020-09-20'),
(270, 166, '2020-09-20'),
(271, 93, '2020-09-20'),
(272, 223, '2020-09-20'),
(273, 99, '2020-09-20'),
(274, 103, '2020-09-20'),
(275, 114, '2020-09-21'),
(276, 104, '2020-09-21'),
(277, 175, '2020-09-21'),
(278, 224, '2020-09-21'),
(279, 112, '2020-09-22'),
(280, 96, '2020-09-22'),
(281, 100, '2020-09-22'),
(282, 225, '2020-09-22'),
(283, 225, '2020-09-22'),
(284, 225, '2020-09-22'),
(285, 225, '2020-09-22'),
(286, 223, '2020-09-23'),
(287, 101, '2020-09-23'),
(288, 95, '2020-09-25'),
(289, 99, '2020-09-26'),
(290, 179, '2020-09-26'),
(291, 169, '2020-09-27'),
(292, 129, '2020-09-27'),
(293, 99, '2020-09-29'),
(294, 179, '2020-09-29'),
(295, 179, '2020-09-29'),
(296, 169, '2020-09-30'),
(297, 171, '2020-09-30'),
(298, 124, '2020-10-01'),
(299, 128, '2020-10-01'),
(300, 223, '2020-10-01'),
(301, 215, '2020-10-01'),
(302, 225, '2020-10-01'),
(303, 224, '2020-10-01'),
(304, 218, '2020-10-01'),
(305, 222, '2020-10-01'),
(306, 93, '2020-10-01'),
(307, 217, '2020-10-01'),
(308, 216, '2020-10-01'),
(309, 219, '2020-10-01'),
(310, 220, '2020-10-01'),
(311, 163, '2020-10-02'),
(312, 164, '2020-10-02'),
(313, 135, '2020-10-02'),
(314, 144, '2020-10-02'),
(315, 167, '2020-10-02'),
(316, 134, '2020-10-02'),
(317, 161, '2020-10-02'),
(318, 159, '2020-10-02'),
(319, 168, '2020-10-02'),
(320, 160, '2020-10-02'),
(321, 162, '2020-10-02'),
(322, 166, '2020-10-02'),
(323, 100, '2020-10-02'),
(324, 95, '2020-10-02'),
(325, 103, '2020-10-02'),
(326, 104, '2020-10-02'),
(327, 100, '2020-10-03'),
(328, 101, '2020-10-03'),
(329, 99, '2020-10-03'),
(330, 97, '2020-10-03'),
(331, 96, '2020-10-03'),
(332, 126, '2020-10-03'),
(333, 171, '2020-10-03'),
(334, 111, '2020-10-03'),
(335, 124, '2020-10-03'),
(336, 128, '2020-10-04'),
(337, 170, '2020-10-04'),
(338, 175, '2020-10-04'),
(339, 223, '2020-10-04'),
(340, 223, '2020-10-04'),
(341, 223, '2020-10-04'),
(342, 130, '2020-10-04'),
(343, 130, '2020-10-04'),
(344, 130, '2020-10-04'),
(345, 130, '2020-10-04'),
(346, 103, '2020-10-05'),
(347, 103, '2020-10-05'),
(348, 103, '2020-10-05'),
(349, 103, '2020-10-05'),
(350, 134, '2020-10-05'),
(351, 134, '2020-10-05'),
(352, 134, '2020-10-05'),
(353, 134, '2020-10-05'),
(354, 168, '2020-10-06'),
(355, 104, '2020-10-06'),
(356, 223, '2020-10-07'),
(357, 215, '2020-10-07'),
(358, 225, '2020-10-07'),
(359, 224, '2020-10-07'),
(360, 218, '2020-10-07'),
(361, 222, '2020-10-07'),
(362, 112, '2020-10-07'),
(363, 166, '2020-10-07'),
(364, 130, '2020-10-08'),
(365, 175, '2020-10-08'),
(366, 144, '2020-10-08'),
(367, 101, '2020-10-08'),
(368, 103, '2020-10-08'),
(369, 159, '2020-10-08'),
(370, 135, '2020-10-08'),
(371, 134, '2020-10-08'),
(372, 114, '2020-10-09'),
(373, 168, '2020-10-09'),
(374, 104, '2020-10-09'),
(375, 162, '2020-10-09'),
(376, 167, '2020-10-10'),
(377, 95, '2020-10-10'),
(378, 112, '2020-10-10'),
(379, 161, '2020-10-10'),
(380, 101, '2020-10-11'),
(381, 159, '2020-10-11'),
(382, 218, '2020-10-12'),
(383, 224, '2020-10-12'),
(384, 223, '2020-10-12'),
(385, 225, '2020-10-12'),
(386, 222, '2020-10-12'),
(387, 215, '2020-10-12'),
(388, 219, '2020-10-12'),
(389, 220, '2020-10-12'),
(390, 167, '2020-10-12'),
(391, 217, '2020-10-12'),
(392, 216, '2020-10-12'),
(393, 168, '2020-10-12'),
(394, 134, '2020-10-12'),
(395, 161, '2020-10-12'),
(396, 159, '2020-10-12'),
(397, 166, '2020-10-12'),
(398, 93, '2020-10-12'),
(399, 135, '2020-10-12'),
(400, 144, '2020-10-12'),
(401, 163, '2020-10-12'),
(402, 160, '2020-10-12'),
(403, 164, '2020-10-12'),
(404, 162, '2020-10-12'),
(405, 97, '2020-10-12'),
(406, 99, '2020-10-12'),
(407, 103, '2020-10-12'),
(408, 100, '2020-10-12'),
(409, 101, '2020-10-12'),
(410, 104, '2020-10-12'),
(411, 96, '2020-10-12'),
(412, 95, '2020-10-12'),
(413, 114, '2020-10-12'),
(414, 215, '2020-10-12'),
(415, 95, '2020-10-14'),
(416, 222, '2020-10-14'),
(417, 180, '2020-10-14'),
(418, 99, '2020-10-14'),
(419, 174, '2020-10-14'),
(420, 169, '2020-10-15'),
(421, 129, '2020-10-15'),
(422, 128, '2020-10-15'),
(423, 99, '2020-10-17'),
(424, 103, '2020-10-17'),
(425, 100, '2020-10-17'),
(426, 175, '2020-10-17'),
(427, 215, '2020-10-17'),
(428, 169, '2020-10-17'),
(429, 126, '2020-10-18'),
(430, 171, '2020-10-18'),
(431, 111, '2020-10-18'),
(432, 124, '2020-10-18'),
(433, 218, '2020-10-18'),
(434, 224, '2020-10-18'),
(435, 222, '2020-10-18'),
(436, 215, '2020-10-18'),
(437, 220, '2020-10-18'),
(438, 219, '2020-10-18'),
(439, 223, '2020-10-18'),
(440, 225, '2020-10-18'),
(441, 217, '2020-10-18'),
(442, 216, '2020-10-18'),
(443, 107, '2020-10-18'),
(444, 97, '2020-10-18'),
(445, 224, '2020-10-20'),
(446, 174, '2020-10-20'),
(447, 174, '2020-10-20'),
(448, 167, '2020-10-20'),
(449, 167, '2020-10-20'),
(450, 229, '2020-10-21'),
(451, 228, '2020-10-21'),
(452, 227, '2020-10-21'),
(453, 228, '2020-10-21'),
(454, 229, '2020-10-21'),
(455, 227, '2020-10-21'),
(456, 174, '2020-10-21'),
(457, 227, '2020-10-21'),
(458, 229, '2020-10-21'),
(459, 124, '2020-10-21'),
(460, 228, '2020-10-22'),
(461, 166, '2020-10-22'),
(462, 227, '2020-10-22'),
(463, 227, '2020-10-22'),
(464, 96, '2020-10-23'),
(465, 164, '2020-10-23'),
(466, 228, '2020-10-24'),
(467, 230, '2020-10-24'),
(468, 226, '2020-10-24'),
(469, 229, '2020-10-24'),
(470, 227, '2020-10-24'),
(471, 97, '2020-10-25'),
(472, 99, '2020-10-25'),
(473, 103, '2020-10-25'),
(474, 100, '2020-10-25'),
(475, 226, '2020-10-25'),
(476, 101, '2020-10-25'),
(477, 95, '2020-10-26'),
(478, 227, '2020-10-26'),
(479, 228, '2020-10-27'),
(480, 230, '2020-10-27'),
(481, 226, '2020-10-27'),
(482, 229, '2020-10-27'),
(483, 227, '2020-10-27'),
(484, 230, '2020-10-27'),
(485, 228, '2020-10-27'),
(486, 123, '2020-10-27'),
(487, 171, '2020-10-27'),
(488, 169, '2020-10-27'),
(489, 170, '2020-10-27'),
(490, 166, '2020-10-28'),
(491, 229, '2020-10-28'),
(492, 226, '2020-10-28'),
(493, 109, '2020-10-28'),
(494, 106, '2020-10-28'),
(495, 95, '2020-10-28'),
(496, 105, '2020-10-28'),
(497, 167, '2020-10-28'),
(498, 227, '2020-10-28'),
(499, 229, '2020-10-28'),
(500, 230, '2020-10-28'),
(501, 228, '2020-10-28'),
(502, 226, '2020-10-28'),
(503, 129, '2020-10-28'),
(504, 105, '2020-10-28'),
(505, 106, '2020-10-29'),
(506, 109, '2020-10-29'),
(507, 125, '2020-10-29'),
(508, 125, '2020-10-29'),
(509, 125, '2020-10-29'),
(510, 114, '2020-10-29'),
(511, 167, '2020-10-29'),
(512, 104, '2020-10-29'),
(513, 124, '2020-10-29'),
(514, 126, '2020-10-29'),
(515, 168, '2020-10-29'),
(516, 95, '2020-10-29'),
(517, 159, '2020-10-29'),
(518, 161, '2020-10-29'),
(519, 162, '2020-10-29'),
(520, 174, '2020-10-29'),
(521, 173, '2020-10-29'),
(522, 144, '2020-10-29'),
(523, 105, '2020-10-29'),
(524, 129, '2020-10-29'),
(525, 135, '2020-10-29'),
(526, 160, '2020-10-30'),
(527, 106, '2020-10-30'),
(528, 174, '2020-10-30'),
(529, 163, '2020-10-30'),
(530, 114, '2020-10-30'),
(531, 107, '2020-10-30'),
(532, 126, '2020-10-30'),
(533, 104, '2020-10-31'),
(534, 129, '2020-10-31'),
(535, 95, '2020-10-31'),
(536, 106, '2020-10-31'),
(537, 125, '2020-10-31'),
(538, 114, '2020-10-31'),
(539, 109, '2020-10-31'),
(540, 124, '2020-10-31'),
(541, 105, '2020-10-31'),
(542, 174, '2020-10-31'),
(543, 227, '2020-10-31'),
(544, 227, '2020-10-31'),
(545, 227, '2020-10-31'),
(546, 228, '2020-10-31'),
(547, 229, '2020-10-31'),
(548, 230, '2020-10-31'),
(549, 230, '2020-11-01'),
(550, 228, '2020-11-01'),
(551, 227, '2020-11-01'),
(552, 229, '2020-11-01'),
(553, 226, '2020-11-01'),
(554, 167, '2020-11-01'),
(555, 123, '2020-11-01'),
(556, 111, '2020-11-01'),
(557, 97, '2020-11-01'),
(558, 99, '2020-11-01'),
(559, 101, '2020-11-01'),
(560, 126, '2020-11-01'),
(561, 93, '2020-11-01'),
(562, 96, '2020-11-01'),
(563, 125, '2020-11-01'),
(564, 124, '2020-11-01'),
(565, 114, '2020-11-01'),
(566, 112, '2020-11-01'),
(567, 166, '2020-11-01'),
(568, 104, '2020-11-01'),
(569, 107, '2020-11-01'),
(570, 109, '2020-11-01'),
(571, 106, '2020-11-01'),
(572, 163, '2020-11-01'),
(573, 168, '2020-11-01'),
(574, 159, '2020-11-01'),
(575, 161, '2020-11-01'),
(576, 135, '2020-11-01'),
(577, 144, '2020-11-01'),
(578, 162, '2020-11-01'),
(579, 164, '2020-11-01'),
(580, 160, '2020-11-01'),
(581, 173, '2020-11-01'),
(582, 129, '2020-11-01'),
(583, 128, '2020-11-01'),
(584, 170, '2020-11-01'),
(585, 169, '2020-11-01'),
(586, 171, '2020-11-01'),
(587, 95, '2020-11-01'),
(588, 227, '2020-11-01'),
(589, 229, '2020-11-02'),
(590, 229, '2020-11-02'),
(591, 230, '2020-11-02'),
(592, 93, '2020-11-02'),
(593, 166, '2020-11-02'),
(594, 103, '2020-11-02'),
(595, 106, '2020-11-02'),
(596, 105, '2020-11-02'),
(597, 104, '2020-11-02'),
(598, 109, '2020-11-02'),
(599, 107, '2020-11-02'),
(600, 114, '2020-11-02'),
(601, 130, '2020-11-02'),
(602, 112, '2020-11-02'),
(603, 111, '2020-11-02'),
(604, 164, '2020-11-02'),
(605, 125, '2020-11-02'),
(606, 96, '2020-11-02'),
(607, 124, '2020-11-02'),
(608, 123, '2020-11-02'),
(609, 126, '2020-11-02'),
(610, 173, '2020-11-02'),
(611, 174, '2020-11-02'),
(612, 129, '2020-11-02'),
(613, 128, '2020-11-02'),
(614, 95, '2020-11-02'),
(615, 169, '2020-11-02'),
(616, 170, '2020-11-02'),
(617, 171, '2020-11-02'),
(618, 99, '2020-11-02'),
(619, 97, '2020-11-02'),
(620, 100, '2020-11-02'),
(621, 101, '2020-11-02'),
(622, 226, '2020-11-02'),
(623, 227, '2020-11-02'),
(624, 228, '2020-11-02'),
(625, 163, '2020-11-02'),
(626, 100, '2020-11-03'),
(627, 230, '2020-11-03'),
(628, 228, '2020-11-04'),
(629, 230, '2020-11-04'),
(630, 226, '2020-11-04'),
(631, 229, '2020-11-04'),
(632, 227, '2020-11-04'),
(633, 174, '2020-11-04'),
(634, 130, '2020-11-04'),
(635, 95, '2020-11-04'),
(636, 135, '2020-11-04'),
(637, 144, '2020-11-04'),
(638, 167, '2020-11-04'),
(639, 93, '2020-11-04'),
(640, 134, '2020-11-04'),
(641, 114, '2020-11-04'),
(642, 112, '2020-11-04'),
(643, 111, '2020-11-04'),
(644, 130, '2020-11-04'),
(645, 173, '2020-11-04'),
(646, 174, '2020-11-04'),
(647, 100, '2020-11-04'),
(648, 101, '2020-11-04'),
(649, 99, '2020-11-04'),
(650, 97, '2020-11-04'),
(651, 161, '2020-11-04'),
(652, 159, '2020-11-04'),
(653, 168, '2020-11-04'),
(654, 126, '2020-11-04'),
(655, 129, '2020-11-04'),
(656, 128, '2020-11-04'),
(657, 170, '2020-11-04'),
(658, 123, '2020-11-04'),
(659, 169, '2020-11-04'),
(660, 171, '2020-11-04'),
(661, 124, '2020-11-04'),
(662, 125, '2020-11-04'),
(663, 96, '2020-11-04'),
(664, 160, '2020-11-04'),
(665, 164, '2020-11-04'),
(666, 162, '2020-11-04'),
(667, 166, '2020-11-04'),
(668, 95, '2020-11-05'),
(669, 103, '2020-11-05'),
(670, 104, '2020-11-05'),
(671, 105, '2020-11-05'),
(672, 106, '2020-11-05'),
(673, 107, '2020-11-05'),
(674, 109, '2020-11-05'),
(675, 163, '2020-11-05'),
(676, 167, '2020-11-05'),
(677, 174, '2020-11-05'),
(678, 229, '2020-11-05'),
(679, 103, '2020-11-05'),
(680, 100, '2020-11-05'),
(681, 230, '2020-11-05'),
(682, 229, '2020-11-05'),
(683, 230, '2020-11-05'),
(684, 229, '2020-11-05'),
(685, 227, '2020-11-05'),
(686, 226, '2020-11-05'),
(687, 228, '2020-11-05'),
(688, 167, '2020-11-05'),
(689, 167, '2020-11-06'),
(690, 229, '2020-11-06'),
(691, 167, '2020-11-06'),
(692, 229, '2020-11-07'),
(693, 174, '2020-11-07'),
(694, 167, '2020-11-07'),
(695, 174, '2020-11-07'),
(696, 97, '2020-11-07'),
(697, 229, '2020-11-07'),
(698, 93, '2020-11-07'),
(699, 166, '2020-11-07'),
(700, 107, '2020-11-07'),
(701, 228, '2020-11-07'),
(702, 230, '2020-11-07'),
(703, 226, '2020-11-07'),
(704, 229, '2020-11-07'),
(705, 227, '2020-11-07'),
(706, 135, '2020-11-07'),
(707, 144, '2020-11-07'),
(708, 167, '2020-11-07'),
(709, 93, '2020-11-07'),
(710, 103, '2020-11-07'),
(711, 104, '2020-11-07'),
(712, 105, '2020-11-07'),
(713, 106, '2020-11-07'),
(714, 107, '2020-11-07'),
(715, 109, '2020-11-07'),
(716, 134, '2020-11-07'),
(717, 114, '2020-11-07'),
(718, 112, '2020-11-07'),
(719, 111, '2020-11-07'),
(720, 130, '2020-11-07'),
(721, 173, '2020-11-07'),
(722, 174, '2020-11-07'),
(723, 100, '2020-11-07'),
(724, 101, '2020-11-07'),
(725, 99, '2020-11-07'),
(726, 97, '2020-11-07'),
(727, 161, '2020-11-07'),
(728, 159, '2020-11-07'),
(729, 168, '2020-11-07'),
(730, 126, '2020-11-07'),
(731, 129, '2020-11-07'),
(732, 128, '2020-11-07'),
(733, 170, '2020-11-07'),
(734, 123, '2020-11-07'),
(735, 169, '2020-11-07'),
(736, 171, '2020-11-07'),
(737, 124, '2020-11-07'),
(738, 125, '2020-11-07'),
(739, 96, '2020-11-07'),
(740, 160, '2020-11-07'),
(741, 164, '2020-11-07'),
(742, 162, '2020-11-07'),
(743, 166, '2020-11-07'),
(744, 95, '2020-11-08'),
(745, 163, '2020-11-08'),
(746, 227, '2020-11-08'),
(747, 95, '2020-11-08'),
(748, 99, '2020-11-08'),
(749, 229, '2020-11-08'),
(750, 228, '2020-11-08'),
(751, 228, '2020-11-08'),
(752, 227, '2020-11-08'),
(753, 230, '2020-11-08'),
(754, 230, '2020-11-08'),
(755, 226, '2020-11-09'),
(756, 229, '2020-11-09'),
(757, 229, '2020-11-09'),
(758, 229, '2020-11-09'),
(759, 99, '2020-11-10'),
(760, 99, '2020-11-10'),
(761, 101, '2020-11-10'),
(762, 228, '2020-11-10'),
(763, 227, '2020-11-10'),
(764, 99, '2020-11-10'),
(765, 101, '2020-11-11'),
(766, 227, '2020-11-11'),
(767, 229, '2020-11-11'),
(768, 128, '2020-11-11'),
(769, 101, '2020-11-12'),
(770, 128, '2020-11-12'),
(771, 104, '2020-11-13'),
(772, 129, '2020-11-13'),
(773, 106, '2020-11-14'),
(774, 126, '2020-11-14'),
(775, 109, '2020-11-14'),
(776, 129, '2020-11-14'),
(777, 125, '2020-11-14'),
(778, 109, '2020-11-14'),
(779, 114, '2020-11-14'),
(780, 124, '2020-11-14'),
(781, 95, '2020-11-14'),
(782, 126, '2020-11-15'),
(783, 125, '2020-11-15'),
(784, 109, '2020-11-15'),
(785, 104, '2020-11-15'),
(786, 105, '2020-11-15'),
(787, 124, '2020-11-15'),
(788, 106, '2020-11-15'),
(789, 129, '2020-11-15'),
(790, 125, '2020-11-15'),
(791, 114, '2020-11-15'),
(792, 229, '2020-11-15'),
(793, 230, '2020-11-15'),
(794, 104, '2020-11-15'),
(795, 106, '2020-11-15'),
(796, 114, '2020-11-16'),
(797, 129, '2020-11-16'),
(798, 95, '2020-11-16'),
(799, 126, '2020-11-16'),
(800, 231, '2020-11-16'),
(801, 124, '2020-11-16'),
(802, 109, '2020-11-16'),
(803, 105, '2020-11-16'),
(804, 129, '2020-11-16'),
(805, 125, '2020-11-16'),
(806, 104, '2020-11-16'),
(807, 109, '2020-11-17'),
(808, 106, '2020-11-17'),
(809, 114, '2020-11-17'),
(810, 126, '2020-11-17'),
(811, 95, '2020-11-17'),
(812, 109, '2020-11-17'),
(813, 106, '2020-11-17'),
(814, 124, '2020-11-17'),
(815, 105, '2020-11-17'),
(816, 109, '2020-11-17'),
(817, 106, '2020-11-17'),
(818, 125, '2020-11-18'),
(819, 104, '2020-11-18'),
(820, 124, '2020-11-18'),
(821, 114, '2020-11-18'),
(822, 104, '2020-11-18'),
(823, 109, '2020-11-18'),
(824, 105, '2020-11-18'),
(825, 126, '2020-11-18'),
(826, 95, '2020-11-18'),
(827, 114, '2020-11-18'),
(828, 129, '2020-11-19'),
(829, 114, '2020-11-19'),
(830, 167, '2020-11-19'),
(831, 114, '2020-11-19'),
(832, 112, '2020-11-19'),
(833, 114, '2020-11-20'),
(834, 226, '2020-11-20'),
(835, 114, '2020-11-20'),
(836, 114, '2020-11-21'),
(837, 114, '2020-11-21'),
(838, 167, '2020-11-21'),
(839, 230, '2020-11-21'),
(840, 95, '2020-11-21'),
(841, 95, '2020-11-21'),
(842, 114, '2020-11-21'),
(843, 114, '2020-11-22'),
(844, 174, '2020-11-22'),
(845, 229, '2020-11-22'),
(846, 229, '2020-11-22'),
(847, 95, '2020-11-22'),
(848, 229, '2020-11-22'),
(849, 229, '2020-11-22'),
(850, 114, '2020-11-22'),
(851, 229, '2020-11-22'),
(852, 230, '2020-11-22'),
(853, 226, '2020-11-22'),
(854, 227, '2020-11-22'),
(855, 95, '2020-11-22'),
(856, 114, '2020-11-23'),
(857, 114, '2020-11-23'),
(858, 114, '2020-11-23'),
(859, 114, '2020-11-24'),
(860, 95, '2020-11-24'),
(861, 229, '2020-11-24'),
(862, 114, '2020-11-24'),
(863, 228, '2020-11-24'),
(864, 229, '2020-11-24'),
(865, 230, '2020-11-24'),
(866, 230, '2020-11-24'),
(867, 229, '2020-11-24'),
(868, 229, '2020-11-24'),
(869, 230, '2020-11-24'),
(870, 227, '2020-11-24'),
(871, 230, '2020-11-24'),
(872, 228, '2020-11-24'),
(873, 227, '2020-11-24'),
(874, 226, '2020-11-24'),
(875, 229, '2020-11-24'),
(876, 229, '2020-11-24'),
(877, 174, '2020-11-24'),
(878, 230, '2020-11-24'),
(879, 174, '2020-11-24'),
(880, 174, '2020-11-24'),
(881, 167, '2020-11-24'),
(882, 167, '2020-11-24'),
(883, 228, '2020-11-24'),
(884, 228, '2020-11-24'),
(885, 228, '2020-11-24'),
(886, 174, '2020-11-24'),
(887, 174, '2020-11-24'),
(888, 174, '2020-11-24'),
(889, 114, '2020-11-25'),
(890, 230, '2020-11-25'),
(891, 229, '2020-11-25'),
(892, 227, '2020-11-25'),
(893, 114, '2020-11-25'),
(894, 174, '2020-11-25'),
(895, 114, '2020-11-25'),
(896, 114, '2020-11-26'),
(897, 228, '2020-11-26'),
(898, 96, '2020-11-26'),
(899, 227, '2020-11-26'),
(900, 96, '2020-11-26'),
(901, 114, '2020-11-26'),
(902, 228, '2020-11-26'),
(903, 96, '2020-11-27'),
(904, 114, '2020-11-27'),
(905, 96, '2020-11-27'),
(906, 95, '2020-11-27'),
(907, 96, '2020-11-27'),
(908, 97, '2020-11-27'),
(909, 96, '2020-11-27'),
(910, 114, '2020-11-27'),
(911, 96, '2020-11-27'),
(912, 96, '2020-11-27'),
(913, 174, '2020-11-27'),
(914, 174, '2020-11-27'),
(915, 174, '2020-11-27'),
(916, 230, '2020-11-28'),
(917, 228, '2020-11-28'),
(918, 229, '2020-11-28'),
(919, 226, '2020-11-28'),
(920, 227, '2020-11-28'),
(921, 162, '2020-11-28'),
(922, 160, '2020-11-28'),
(923, 166, '2020-11-28'),
(924, 164, '2020-11-28'),
(925, 160, '2020-11-28'),
(926, 162, '2020-11-28'),
(927, 166, '2020-11-28'),
(928, 134, '2020-11-28'),
(929, 114, '2020-11-28'),
(930, 111, '2020-11-28'),
(931, 130, '2020-11-28'),
(932, 111, '2020-11-28'),
(933, 130, '2020-11-28'),
(934, 159, '2020-11-28'),
(935, 161, '2020-11-28'),
(936, 166, '2020-11-28'),
(937, 160, '2020-11-28'),
(938, 162, '2020-11-28'),
(939, 159, '2020-11-28'),
(940, 111, '2020-11-28'),
(941, 130, '2020-11-28'),
(942, 161, '2020-11-28'),
(943, 114, '2020-11-28'),
(944, 114, '2020-11-28'),
(945, 130, '2020-11-28'),
(946, 111, '2020-11-28'),
(947, 114, '2020-11-28'),
(948, 168, '2020-11-28'),
(949, 164, '2020-11-28'),
(950, 164, '2020-11-28'),
(951, 164, '2020-11-28'),
(952, 160, '2020-11-28'),
(953, 162, '2020-11-28'),
(954, 166, '2020-11-28'),
(955, 114, '2020-11-28'),
(956, 96, '2020-11-28'),
(957, 231, '2020-11-28'),
(958, 96, '2020-11-28'),
(959, 93, '2020-11-28'),
(960, 114, '2020-11-28'),
(961, 174, '2020-11-28'),
(962, 96, '2020-11-28'),
(963, 114, '2020-11-29'),
(964, 96, '2020-11-29'),
(965, 96, '2020-11-29'),
(966, 114, '2020-11-29'),
(967, 96, '2020-11-29'),
(968, 96, '2020-11-29'),
(969, 114, '2020-11-29'),
(970, 96, '2020-11-29'),
(971, 96, '2020-11-30'),
(972, 114, '2020-11-30'),
(973, 114, '2020-11-30'),
(974, 135, '2020-11-30'),
(975, 114, '2020-12-01'),
(976, 227, '2020-12-01'),
(977, 114, '2020-12-02'),
(978, 123, '2020-12-02'),
(979, 96, '2020-12-02'),
(980, 228, '2020-12-02'),
(981, 227, '2020-12-02'),
(982, 229, '2020-12-02'),
(983, 228, '2020-12-02'),
(984, 228, '2020-12-02'),
(985, 228, '2020-12-02'),
(986, 229, '2020-12-02'),
(987, 229, '2020-12-02'),
(988, 229, '2020-12-02'),
(989, 229, '2020-12-02'),
(990, 174, '2020-12-02'),
(991, 174, '2020-12-02'),
(992, 114, '2020-12-02'),
(993, 230, '2020-12-02'),
(994, 229, '2020-12-02'),
(995, 230, '2020-12-02'),
(996, 229, '2020-12-02'),
(997, 230, '2020-12-02'),
(998, 229, '2020-12-02'),
(999, 229, '2020-12-02'),
(1000, 228, '2020-12-02'),
(1001, 228, '2020-12-02'),
(1002, 228, '2020-12-02'),
(1003, 229, '2020-12-02'),
(1004, 229, '2020-12-02'),
(1005, 229, '2020-12-02'),
(1006, 174, '2020-12-02'),
(1007, 229, '2020-12-02'),
(1008, 228, '2020-12-02'),
(1009, 227, '2020-12-02'),
(1010, 174, '2020-12-02'),
(1011, 230, '2020-12-02'),
(1012, 229, '2020-12-02'),
(1013, 114, '2020-12-02'),
(1014, 230, '2020-12-03'),
(1015, 228, '2020-12-03'),
(1016, 167, '2020-12-03'),
(1017, 229, '2020-12-03'),
(1018, 227, '2020-12-03'),
(1019, 106, '2020-12-03'),
(1020, 109, '2020-12-03'),
(1021, 159, '2020-12-03'),
(1022, 107, '2020-12-03'),
(1023, 105, '2020-12-03'),
(1024, 93, '2020-12-03'),
(1025, 130, '2020-12-03'),
(1026, 95, '2020-12-03'),
(1027, 226, '2020-12-03'),
(1028, 174, '2020-12-03'),
(1029, 99, '2020-12-03'),
(1030, 103, '2020-12-03'),
(1031, 125, '2020-12-03'),
(1032, 100, '2020-12-03'),
(1033, 101, '2020-12-03'),
(1034, 104, '2020-12-03'),
(1035, 96, '2020-12-03'),
(1036, 161, '2020-12-03'),
(1037, 134, '2020-12-03'),
(1038, 135, '2020-12-03'),
(1039, 160, '2020-12-03'),
(1040, 162, '2020-12-03'),
(1041, 129, '2020-12-03'),
(1042, 126, '2020-12-03'),
(1043, 123, '2020-12-03'),
(1044, 163, '2020-12-03'),
(1045, 164, '2020-12-03'),
(1046, 114, '2020-12-03'),
(1047, 112, '2020-12-03'),
(1048, 111, '2020-12-03'),
(1049, 173, '2020-12-03'),
(1050, 231, '2020-12-03'),
(1051, 96, '2020-12-03'),
(1052, 114, '2020-12-03'),
(1053, 167, '2020-12-03'),
(1054, 163, '2020-12-03'),
(1055, 229, '2020-12-03'),
(1056, 229, '2020-12-03'),
(1057, 230, '2020-12-03'),
(1058, 230, '2020-12-03'),
(1059, 230, '2020-12-03'),
(1060, 228, '2020-12-03'),
(1061, 229, '2020-12-03'),
(1062, 230, '2020-12-03'),
(1063, 229, '2020-12-03'),
(1064, 230, '2020-12-03'),
(1065, 167, '2020-12-03'),
(1066, 229, '2020-12-03'),
(1067, 230, '2020-12-03'),
(1068, 230, '2020-12-03'),
(1069, 230, '2020-12-03'),
(1070, 95, '2020-12-03'),
(1071, 95, '2020-12-03'),
(1072, 227, '2020-12-03'),
(1073, 229, '2020-12-03'),
(1074, 229, '2020-12-03'),
(1075, 227, '2020-12-03'),
(1076, 229, '2020-12-03'),
(1077, 130, '2020-12-03'),
(1078, 167, '2020-12-03'),
(1079, 167, '2020-12-03'),
(1080, 167, '2020-12-03'),
(1081, 167, '2020-12-03'),
(1082, 174, '2020-12-03'),
(1083, 229, '2020-12-03'),
(1084, 226, '2020-12-03'),
(1085, 226, '2020-12-03'),
(1086, 229, '2020-12-03'),
(1087, 230, '2020-12-03'),
(1088, 166, '2020-12-03'),
(1089, 114, '2020-12-03'),
(1090, 230, '2020-12-04'),
(1091, 227, '2020-12-05'),
(1092, 227, '2020-12-05'),
(1093, 227, '2020-12-05'),
(1094, 227, '2020-12-05'),
(1095, 228, '2020-12-05'),
(1096, 114, '2020-12-05'),
(1097, 225, '2020-12-05'),
(1098, 227, '2020-12-05'),
(1099, 229, '2020-12-05'),
(1100, 226, '2020-12-05'),
(1101, 230, '2020-12-05'),
(1102, 228, '2020-12-05'),
(1103, 226, '2020-12-05'),
(1104, 226, '2020-12-05'),
(1105, 229, '2020-12-05'),
(1106, 229, '2020-12-05'),
(1107, 93, '2020-12-05'),
(1108, 228, '2020-12-05'),
(1109, 229, '2020-12-05'),
(1110, 226, '2020-12-05'),
(1111, 228, '2020-12-05'),
(1112, 228, '2020-12-05'),
(1113, 228, '2020-12-05'),
(1114, 126, '2020-12-05'),
(1115, 225, '2020-12-05'),
(1116, 228, '2020-12-05'),
(1117, 231, '2020-12-05'),
(1118, 228, '2020-12-05'),
(1119, 234, '2020-12-05'),
(1120, 234, '2020-12-05'),
(1121, 234, '2020-12-05'),
(1122, 234, '2020-12-05'),
(1123, 234, '2020-12-05'),
(1124, 225, '2020-12-06'),
(1125, 101, '2020-12-06'),
(1126, 234, '2020-12-06'),
(1127, 230, '2020-12-06'),
(1128, 234, '2020-12-06'),
(1129, 234, '2020-12-06'),
(1130, 228, '2020-12-06'),
(1131, 101, '2020-12-06'),
(1132, 234, '2020-12-06'),
(1133, 225, '2020-12-08'),
(1134, 234, '2020-12-08'),
(1135, 228, '2020-12-09'),
(1136, 123, '2020-12-09'),
(1137, 226, '2020-12-10'),
(1138, 230, '2020-12-11'),
(1139, 166, '2020-12-11'),
(1140, 168, '2020-12-11'),
(1141, 124, '2020-12-11'),
(1142, 171, '2020-12-11'),
(1143, 144, '2020-12-11'),
(1144, 128, '2020-12-11'),
(1145, 170, '2020-12-11'),
(1146, 169, '2020-12-11'),
(1147, 96, '2020-12-13'),
(1148, 225, '2020-12-14'),
(1149, 96, '2020-12-15'),
(1150, 227, '2020-12-15'),
(1151, 225, '2020-12-15'),
(1152, 227, '2020-12-15'),
(1153, 227, '2020-12-15'),
(1154, 227, '2020-12-15'),
(1155, 229, '2020-12-15'),
(1156, 234, '2020-12-15'),
(1157, 234, '2020-12-15'),
(1158, 230, '2020-12-15'),
(1159, 228, '2020-12-15'),
(1160, 230, '2020-12-15'),
(1161, 230, '2020-12-15'),
(1162, 229, '2020-12-15'),
(1163, 229, '2020-12-15'),
(1164, 229, '2020-12-15'),
(1165, 234, '2020-12-15'),
(1166, 234, '2020-12-15'),
(1167, 105, '2020-12-16'),
(1168, 229, '2020-12-17'),
(1169, 229, '2020-12-17'),
(1170, 229, '2020-12-17'),
(1171, 225, '2020-12-17'),
(1172, 236, '2020-12-17'),
(1173, 234, '2020-12-17'),
(1174, 229, '2020-12-17'),
(1175, 234, '2020-12-17'),
(1176, 234, '2020-12-17'),
(1177, 234, '2020-12-18'),
(1178, 230, '2020-12-18'),
(1179, 230, '2020-12-18'),
(1180, 230, '2020-12-18'),
(1181, 234, '2020-12-18'),
(1182, 229, '2020-12-18'),
(1183, 234, '2020-12-18'),
(1184, 226, '2020-12-18'),
(1185, 95, '2020-12-18'),
(1186, 103, '2020-12-18'),
(1187, 104, '2020-12-18'),
(1188, 100, '2020-12-18'),
(1189, 101, '2020-12-18'),
(1190, 99, '2020-12-18'),
(1191, 126, '2020-12-18'),
(1192, 124, '2020-12-18'),
(1193, 125, '2020-12-18'),
(1194, 96, '2020-12-18'),
(1195, 234, '2020-12-18'),
(1196, 229, '2020-12-18'),
(1197, 229, '2020-12-18'),
(1198, 229, '2020-12-18'),
(1201, 229, '2020-12-18'),
(1203, 96, '2020-12-19'),
(1204, 96, '2020-12-19'),
(1206, 234, '2020-12-19'),
(1209, 234, '2020-12-19'),
(1211, 230, '2020-12-19'),
(1212, 234, '2020-12-19'),
(1213, 228, '2020-12-19'),
(1214, 234, '2020-12-19'),
(1215, 226, '2020-12-20'),
(1216, 227, '2020-12-20'),
(1218, 231, '2020-12-20'),
(1219, 230, '2020-12-20'),
(1221, 234, '2020-12-20'),
(1223, 234, '2020-12-20'),
(1225, 234, '2020-12-20'),
(1226, 234, '2020-12-20'),
(1227, 234, '2020-12-20'),
(1228, 234, '2020-12-20'),
(1229, 230, '2020-12-21'),
(1230, 234, '2020-12-21'),
(1231, 234, '2020-12-21'),
(1232, 234, '2020-12-21'),
(1233, 234, '2020-12-21'),
(1234, 234, '2020-12-21'),
(1235, 230, '2020-12-21'),
(1236, 234, '2020-12-21'),
(1237, 234, '2020-12-21'),
(1238, 234, '2020-12-21'),
(1239, 234, '2020-12-21'),
(1240, 234, '2020-12-21'),
(1243, 230, '2020-12-21'),
(1245, 234, '2020-12-21'),
(1246, 234, '2020-12-21'),
(1247, 234, '2020-12-21'),
(1248, 234, '2020-12-21'),
(1249, 234, '2020-12-21'),
(1250, 229, '2020-12-21'),
(1251, 229, '2020-12-21'),
(1252, 229, '2020-12-21'),
(1253, 229, '2020-12-21'),
(1254, 228, '2020-12-21'),
(1255, 228, '2020-12-21'),
(1256, 227, '2020-12-21'),
(1257, 234, '2020-12-21'),
(1258, 95, '2020-12-22'),
(1259, 103, '2020-12-22'),
(1260, 104, '2020-12-22'),
(1261, 100, '2020-12-22'),
(1262, 101, '2020-12-22'),
(1263, 99, '2020-12-22'),
(1264, 126, '2020-12-22'),
(1265, 124, '2020-12-22'),
(1266, 125, '2020-12-22'),
(1267, 96, '2020-12-22'),
(1268, 234, '2020-12-22'),
(1269, 234, '2020-12-22'),
(1271, 228, '2020-12-22'),
(1272, 230, '2020-12-22'),
(1273, 230, '2020-12-22'),
(1274, 226, '2020-12-22'),
(1275, 228, '2020-12-22'),
(1276, 234, '2020-12-22'),
(1277, 227, '2020-12-22'),
(1278, 228, '2020-12-22'),
(1279, 230, '2020-12-22'),
(1280, 95, '2020-12-22'),
(1281, 234, '2020-12-22'),
(1282, 229, '2020-12-22'),
(1283, 234, '2020-12-22'),
(1284, 230, '2020-12-22'),
(1285, 128, '2020-12-22'),
(1286, 129, '2020-12-22'),
(1287, 231, '2020-12-22'),
(1288, 228, '2020-12-22'),
(1289, 96, '2020-12-23'),
(1290, 107, '2020-12-23'),
(1291, 93, '2020-12-23'),
(1292, 105, '2020-12-23'),
(1293, 106, '2020-12-23'),
(1294, 107, '2020-12-23'),
(1295, 109, '2020-12-23'),
(1296, 134, '2020-12-23'),
(1297, 166, '2020-12-23'),
(1298, 130, '2020-12-23'),
(1299, 229, '2020-12-23'),
(1300, 130, '2020-12-23'),
(1301, 229, '2020-12-23'),
(1302, 230, '2020-12-24'),
(1303, 226, '2020-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1561348138service2.png'),
(4, 0, '14 DAY RETURNS', '14-Day Return Policy', '1561348143service3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1561348147service4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1563247602brand1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1563247614brand2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1563247620brand3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1563247670brand4.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(50, NULL, '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '16043292411f5b837e-d0d6-4bb1-b47b-60e9909bdbc0.jpg', 'slide-one', '#'),
(51, '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '16043293976e3d8f0b-8d7c-45f0-a0e7-40941a9fddc6.jpg', 'slide-one', '#'),
(52, '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '1604329849808de90d-ee4e-40d6-85e6-a200b238bd41.jpg', 'slide-one', '#'),
(53, '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '16043298877760318b-6bd9-4b7d-85c6-fb146fdf42aa.jpg', 'slide-one', '3'),
(54, '1', '11', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '1', '1', '#000000', 'fadeIn', '16043299562fc6d607-8839-439e-bdf4-b8d4e756497a.jpg', 'slide-one', '1');

-- --------------------------------------------------------

--
-- Table structure for table `slider_ars`
--

CREATE TABLE `slider_ars` (
  `id` int(11) NOT NULL,
  `subtitle_text` text CHARACTER SET utf8 NOT NULL,
  `title_text` text CHARACTER SET utf8 NOT NULL,
  `details_text` text CHARACTER SET utf8 NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_ars`
--

INSERT INTO `slider_ars` (`id`, `subtitle_text`, `title_text`, `details_text`, `photo`) VALUES
(51, '1', '1', '11', '1604329397b089f909-d767-404e-bbb1-428d75461b50.jpg'),
(52, '1', '1', '1', '1604329849a70bcb5f-a48e-4517-bf2f-0d4c2bb9e6d2.jpg'),
(53, '1', '1', '1', '160432988763f9f7f8-f093-4046-9e80-32d6e4d2b4e7.jpg'),
(54, '1', '1', '1', '1604329956dfc5ceb9-a64b-435d-a134-4e5b0daa14ef.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 0, 0, 1, 0, '357717462158111', 'd9b6dc9836a08332a2a1bcd73cbdde92', 'https://www.amor.com.eg/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'https://www.amor.com.eg/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 36, '1049301112240395', 'facebook', '2020-11-25 09:25:29', '2020-11-25 09:25:29'),
(2, 37, '1019494865181433', 'facebook', '2020-11-25 13:58:31', '2020-11-25 13:58:31'),
(3, 40, '231488528306853', 'facebook', '2020-12-02 11:25:14', '2020-12-02 11:25:14'),
(4, 41, '10158180068689132', 'facebook', '2020-12-02 11:54:11', '2020-12-02 11:54:11'),
(5, 42, '10158992449394166', 'facebook', '2020-12-02 12:15:10', '2020-12-02 12:15:10'),
(6, 49, '1415836548764665', 'facebook', '2020-12-23 13:32:34', '2020-12-23 13:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `name_ar`, `slug`, `status`) VALUES
(2, 4, 'TELEVISION', '', 'television', 1),
(3, 4, 'REFRIGERATOR', '', 'refrigerator', 1),
(4, 4, 'WASHING MACHINE', '', 'washing-machine', 1),
(5, 4, 'AIR CONDITIONERS', '', 'air-conditioners', 1),
(6, 5, 'ACCESSORIES', '', 'accessories', 1),
(7, 5, 'BAGS', '', 'bags', 1),
(8, 5, 'CLOTHINGS', '', 'clothings', 1),
(9, 5, 'SHOES', '', 'shoes', 1),
(10, 7, 'APPLE', '', 'apple', 1),
(11, 7, 'SAMSUNG', '', 'samsung', 1),
(12, 7, 'LG', '', 'lg', 1),
(13, 7, 'SONY', '', 'sony', 1),
(14, 6, 'DSLR', '', 'dslr', 1),
(15, 6, 'Camera Phone', '', 'camera-phone', 1),
(16, 6, 'Hybrid Air', 'تستستستس', 'hybrid-air', 1),
(17, 6, 'Digital Camera', 'كاميرا ديجتال', 'digital-camera', 1),
(21, 4, 'phones', 'موبايلات', 'phone-12', 1),
(22, 10, 'Make Up', 'مستحضرات تجميل', 'Make-Up', 1),
(23, 4, 'Mobiles', 'تلفونات محموله', 'Mobile', 1),
(24, 5, 'men', 'رجالي', 'clothing', 1),
(25, 27, 'Men\'s Fashion', 'رجالي', 'Men', 1),
(26, 27, 'Women’s Fashion', 'أزياء حريمي', 'Women', 1),
(27, 27, 'Kids Fashion', 'أزياء اطفال', 'kids', 1),
(28, 27, 'Baby', 'حديثي الولادة', 'Baby', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'future.co_n@yahoo.com'),
(2, 'safwat_azam2000@yahoo.com'),
(3, 'ninoalon@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '$', 'NGN', 0, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', 'Washington, DC', 'Algeria', 'Space Needle 400 Broad St, Seattles', '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'LalPFeQPzwjqhcDajaM59f4N7DvlwyirtuL13yuOV4PYPjGDkvqYBawnZdla', '', '2018-03-07 17:05:44', '2020-03-22 08:08:05', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5000, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', '<br>', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 4978.02, '2019-11-24', 0),
(40, 'Hoda Ali', 'https://graph.facebook.com/v3.0/231488528306853/picture?width=1920', NULL, NULL, NULL, NULL, NULL, NULL, 'elhamahmed584@gmail.com', NULL, 'DNVW0jrzvMxUH25qD7U9aUwS5ZSBoH4CWj2785A1zSnQtK5N4v5jHlhilPzz', '', '2020-12-02 11:25:14', '2020-12-03 14:02:00', 1, 0, NULL, 'Yes', 'c8e85717dea72e80719c30a66f7e4759', 0, 'marslia', 'elham', '2323', 'cairo', '123456', 'rh4yy45', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-02', 0),
(41, 'Rimyo Aphland', 'https://graph.facebook.com/v3.0/10158180068689132/picture?width=1920', NULL, NULL, NULL, NULL, NULL, NULL, 'safwat_azam2000@yahoo.com', NULL, 'qTp4u8GDTUA36pgyraNpvwEzpgVOcVuTuwDHpFd7SEZoGl6qDZXVftTUR9F7', '', '2020-12-02 11:54:11', '2020-12-15 21:19:02', 1, 0, NULL, 'Yes', 'cd8db2f00665d6e8fef4bbca77977f8e', 0, 'on line shop', 'mando', '16', 'cairo', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-14', 0),
(42, 'Sasa Nino', 'https://graph.facebook.com/v3.0/10158992449394166/picture?width=1920', NULL, NULL, NULL, NULL, NULL, NULL, 'ninoalon@yahoo.com', NULL, 'qH4ElbjGkBzFbYy7SZU5eJkN35ZCZ1lMTxVezMos3znrW8WjQKsAbnIJlisG', '', '2020-12-02 12:15:10', '2020-12-02 12:15:10', 1, 0, NULL, 'Yes', '277e66d4e8a70b0ccc4bb359277946e2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(43, 'nehal kamal', NULL, NULL, NULL, NULL, 'cairo', '01019555339', NULL, 'nehal_kamal@yahoo.com', '$2y$10$C4ohKqtmyX/VoZ27Kn0u7uuQw844tS8e8j0blXgs52Dl.PmTEk8uu', 'sYvg05q0oTZuiO82yQ4lU17joK2BTqEZpMNirQY1Lqx5Dpy2JkcQNtyWeim7', '', '2020-12-05 15:03:38', '2020-12-05 15:05:47', 0, 0, 'dc9a05f21b28c921eb189333016b68c4', 'Yes', 'de9cec72b33d3d7dbe1b4883b580396b', 0, 'helen`s queen', 'nehal', '16', 'cairo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-04', 0),
(44, 'khaled waleed', NULL, NULL, NULL, NULL, 'test addres', '01009210452', NULL, 'php.programmr.94@gmail.com', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', NULL, 'Iwrvsa04hMUeeFzunaqxE4H6vQgJ8P37t3aygXrEnBufyZvQFpieP63BHuoI', '2020-12-13 09:34:14', '2020-12-15 13:22:25', 0, 0, 'db88d992aab3d1111f064358f0db6af3', 'Yes', '13278916197538b72be0e302b4b2b2a7', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(45, 'khaled waleed', NULL, NULL, NULL, NULL, 'test', '1233456', NULL, 'admin@demo.com', '$2y$10$y/.kzQe5p7vxL/bFwm76m.1SR4gvGeXu6pAzypr.dWODviYlQi4fu', 'oxcNcuS4VCIDgc3euX3VaTHvGlVCkk4F3xj4dz3ELBD3ScByLGMiMmKB3naH', NULL, '2020-12-15 11:32:46', '2020-12-15 11:32:46', 0, 0, '5462c7f76fcd39f8f69254d3a3ffae27', 'Yes', 'eda41b4949e1d5a6c630fa016a83a81a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(46, 'Shehab', NULL, NULL, NULL, NULL, 'Test', '01068078350', NULL, 'shehabanwerfathy@gmail.com', '$2y$10$YO2GCGrEN2Asts/I.zbEfe1D7TpFaCBCl64i/ibtDWjdMCde1gEUa', 'PqWtbFBEOGEtcOC3Po2ry04bfMKDxL2C4jFS4Z9iOLmImYVGoqroo3vetgTe', NULL, '2020-12-15 12:15:21', '2020-12-15 14:49:43', 0, 0, '521b0919404ccc108ad0b5c44b3cedc9', 'Yes', '747428a79a38382a80b054611022d0f2', 0, 'Pskdkdko', 'Xkxkxkdjdj', '578484849499', 'Hzbsbzbdbbd', '944878888566', 'Hhhxhxhdh', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-14', 0),
(47, 'Khaled waleed abdallah', NULL, NULL, NULL, NULL, '25 abo baker st', '01009210452', NULL, 'testdev@test.com', '$2y$10$tnp9wychQ4piUCmEgFfAc.buuA59PdidDIHHr8wIbF/287KrKXKp.', NULL, 'YWi5O9ySIDHX2P4nuJ1yRkVBnah8xm647TVTxm0uvNR2z7cl49oIDC7AJcII', '2020-12-15 12:50:44', '2020-12-15 12:53:22', 0, 0, '873eb7d49e80c4b313e4490b1bfce5cd', 'Yes', 'f3fbb8eafa3b49efa5a68b8f9a843dde', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(48, 'khaled waleed', NULL, NULL, NULL, NULL, 'test', '1233456', NULL, 'admin@lms.com', '$2y$10$wxpntd6oj7DCo/O2FTdyhuh.JsSUc4wifvuGmVQvvGKELSfE3msFW', 'slxpblmk6q8xZDooM4h99s8cjBncWplKQrywCA7o6rb1A2AYvkUMbFkE4Vgg', NULL, '2020-12-15 14:47:09', '2020-12-17 06:51:10', 0, 0, '70395088164784661980279bd690576f', 'Yes', 'a49fc807d89b5ba6a9dd0d9293666956', 0, 'test', 'khaled', '1234567', 'jgfhgvhjbjknklm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-31', 0),
(49, 'Elham Ahmed', 'https://graph.facebook.com/v3.0/1415836548764665/picture?width=1920', NULL, NULL, NULL, NULL, NULL, NULL, 'ahelham185@yahoo.com', NULL, 'dYavCxIQg5LdrHzauzUwKQBXXg4gqLY8q4qfxlQWnJ46iecm1gZv92nax2JT', NULL, '2020-12-23 13:32:34', '2020-12-23 13:32:34', 1, 0, NULL, 'Yes', 'b7de070eefd85397505ca9723ae74461', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(50, 'walid', NULL, NULL, NULL, NULL, 'cairo', '01023456666', NULL, 'vendor@mail.com', '$2y$10$MOJDvm2D94jP1Kvk.efyu.qWJXcybnqJ4.Xrq0dXmgPk4Pfm7r572', NULL, NULL, '2020-12-24 13:55:34', '2020-12-24 13:57:34', 0, 0, '76fcaeb2d0fcb6dfc4ea8dee71b4eb6c', 'Yes', '56a9c5f266d60902812d15de3e3eff1d', 0, 'watches', 'ramy', '4444', 'cairo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-23', 0),
(51, 'mahmoud mahsob', NULL, NULL, NULL, NULL, 'giza', '01033076500', NULL, 'mahmoudmahsob92@gmail.com', '$2y$10$4Kd/PU3LohTN7KUhByZ9J.u2oJpk2keusiJW8Lw41eylFv7NitoCa', NULL, NULL, '2020-12-24 21:18:09', '2020-12-24 21:18:44', 0, 0, '65a0e7df35313d6f3d146076b35dc3f7', 'Yes', 'a2f580a8f49cd2e271ff67ca6bd84f19', 0, 'mar', 'mahmoud', '7657', 'JKGKH', '66545', 'messge', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-02-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, '2019-10-09 19:32:57', '2020-12-17 06:50:43', 1, NULL),
(84, 13, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, '2019-10-10 00:35:29', '2020-12-17 06:50:43', 1, NULL),
(85, 29, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-08-17 13:55:58', '2020-12-02 18:24:35', 1, NULL),
(86, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Paypal', NULL, NULL, '2020-09-20 11:19:35', '2020-09-20 11:19:35', 0, NULL),
(87, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-09-23 06:53:44', '2020-12-17 06:50:43', 1, NULL),
(88, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2020-09-23 06:54:17', '2020-09-23 06:54:17', 1, NULL),
(89, 22, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-09-23 07:06:14', '2020-12-02 18:24:35', 1, NULL),
(90, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 07:32:54', '2020-12-17 06:50:43', 1, NULL),
(91, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 07:33:50', '2020-12-17 06:50:43', 1, NULL),
(92, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 07:34:29', '2020-12-17 06:50:43', 1, NULL),
(93, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 07:36:15', '2020-12-17 06:50:43', 1, NULL),
(94, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 07:41:12', '2020-09-23 07:41:12', 1, NULL),
(95, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 07:59:27', '2020-12-17 06:50:43', 1, NULL),
(96, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:21:12', '2020-09-23 08:21:12', 1, NULL),
(97, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:21:45', '2020-09-23 08:21:45', 1, NULL),
(98, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:22:10', '2020-09-23 08:22:10', 1, NULL),
(99, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:28:57', '2020-09-23 08:28:57', 1, NULL),
(100, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:29:20', '2020-09-23 08:29:20', 1, NULL),
(101, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:30:32', '2020-09-23 08:30:32', 1, NULL),
(102, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:33:11', '2020-09-23 08:33:11', 1, NULL),
(103, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:33:36', '2020-09-23 08:33:36', 1, NULL),
(104, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:34:08', '2020-09-23 08:34:08', 1, NULL),
(105, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:34:36', '2020-09-23 08:34:36', 1, NULL),
(106, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:34:47', '2020-09-23 08:34:47', 1, NULL),
(107, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 1000, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:39:28', '2020-09-23 08:39:28', 1, NULL),
(108, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 08:40:22', '2020-09-23 08:40:22', 1, NULL),
(109, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 09:13:30', '2020-09-23 09:13:30', 1, NULL),
(110, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 09:13:55', '2020-09-23 09:13:55', 1, NULL),
(111, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 09:39:23', '2020-09-23 09:39:23', 1, NULL),
(112, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 10:10:30', '2020-09-23 10:10:30', 1, NULL),
(113, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 10:10:45', '2020-09-23 10:10:45', 1, NULL),
(114, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 10:12:12', '2020-09-23 10:12:12', 1, NULL),
(115, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-23 10:12:54', '2020-09-23 10:12:54', 1, NULL),
(116, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 11:56:42', '2020-12-17 06:50:43', 1, NULL),
(117, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 11:57:15', '2020-12-17 06:50:43', 1, NULL),
(118, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 11:58:05', '2020-12-17 06:50:43', 1, NULL),
(119, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 11:58:46', '2020-12-17 06:50:43', 1, NULL),
(120, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-23 11:59:11', '2020-12-17 06:50:43', 1, NULL),
(121, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:23:37', '2020-09-24 06:23:37', 1, NULL),
(122, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:23:52', '2020-09-24 06:23:52', 1, NULL),
(123, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:24:53', '2020-09-24 06:24:53', 1, NULL),
(124, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:25:21', '2020-09-24 06:25:21', 1, NULL),
(125, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:25:40', '2020-09-24 06:25:40', 1, NULL),
(126, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:26:05', '2020-09-24 06:26:05', 1, NULL),
(127, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:28:19', '2020-09-24 06:28:19', 1, NULL),
(128, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:29:55', '2020-09-24 06:29:55', 1, NULL),
(129, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:38:54', '2020-09-24 06:38:54', 1, NULL),
(130, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:39:37', '2020-09-24 06:39:37', 1, NULL),
(131, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:51:12', '2020-09-24 06:51:12', 1, NULL),
(132, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:51:25', '2020-09-24 06:51:25', 1, NULL),
(133, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:52:21', '2020-09-24 06:52:21', 1, NULL),
(134, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 06:53:03', '2020-09-24 06:53:03', 1, NULL),
(135, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:08:34', '2020-09-24 07:08:34', 1, NULL),
(136, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:08:54', '2020-09-24 07:08:54', 1, NULL),
(137, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:10:16', '2020-09-24 07:10:16', 1, NULL),
(138, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:10:35', '2020-09-24 07:10:35', 1, NULL),
(139, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:11:02', '2020-09-24 07:11:02', 1, NULL),
(140, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:11:35', '2020-09-24 07:11:35', 1, NULL),
(141, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:12:26', '2020-09-24 07:12:26', 1, NULL),
(142, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:12:44', '2020-09-24 07:12:44', 1, NULL),
(143, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:12:59', '2020-09-24 07:12:59', 1, NULL),
(144, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:13:22', '2020-09-24 07:13:22', 1, NULL),
(145, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:14:21', '2020-09-24 07:14:21', 1, NULL),
(146, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:14:47', '2020-09-24 07:14:47', 1, NULL),
(147, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:15:06', '2020-09-24 07:15:06', 1, NULL),
(148, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:15:20', '2020-09-24 07:15:20', 1, NULL),
(149, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:15:37', '2020-09-24 07:15:37', 1, NULL),
(150, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:15:48', '2020-09-24 07:15:48', 1, NULL),
(151, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:16:19', '2020-09-24 07:16:19', 1, NULL),
(152, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:17:20', '2020-09-24 07:17:20', 1, NULL),
(153, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:18:21', '2020-09-24 07:18:21', 1, NULL),
(154, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:19:37', '2020-09-24 07:19:37', 1, NULL),
(155, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:21:21', '2020-09-24 07:21:21', 1, NULL),
(156, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:22:38', '2020-09-24 07:22:38', 1, NULL),
(157, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:23:26', '2020-09-24 07:23:26', 1, NULL),
(158, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:26:34', '2020-09-24 07:26:34', 1, NULL),
(159, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:27:03', '2020-09-24 07:27:03', 1, NULL),
(160, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:27:19', '2020-09-24 07:27:19', 1, NULL),
(161, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:28:28', '2020-09-24 07:28:28', 1, NULL),
(162, 22, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 07:36:43', '2020-09-24 07:36:43', 1, NULL),
(163, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 10:10:03', '2020-09-24 10:10:03', 1, NULL),
(164, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 10:10:25', '2020-09-24 10:10:25', 1, NULL),
(165, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 10:12:39', '2020-09-24 10:12:39', 1, NULL),
(166, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 10:17:19', '2020-09-24 10:17:19', 1, NULL),
(167, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:23:44', '2020-12-17 06:50:43', 1, NULL),
(168, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:24:07', '2020-12-17 06:50:43', 1, NULL),
(169, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:24:43', '2020-12-17 06:50:43', 1, NULL),
(170, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:25:00', '2020-12-17 06:50:43', 1, NULL),
(171, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:25:20', '2020-12-17 06:50:43', 1, NULL),
(172, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:25:20', '2020-12-17 06:50:43', 1, NULL),
(173, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:26:05', '2020-12-17 06:50:43', 1, NULL),
(174, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:26:31', '2020-12-17 06:50:43', 1, NULL),
(175, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:26:42', '2020-12-17 06:50:43', 1, NULL),
(176, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-09-24 10:28:07', '2020-12-17 06:50:43', 1, NULL),
(177, 22, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'APS', NULL, NULL, '2020-09-24 11:24:50', '2020-09-24 11:24:50', 1, NULL),
(178, 32, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-10-22 18:48:37', '2020-12-02 18:24:35', 1, NULL),
(179, 34, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-11-07 10:13:17', '2020-12-02 18:24:35', 1, NULL),
(180, 34, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-11-07 10:14:32', '2020-12-02 18:24:35', 1, NULL),
(181, 38, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-11-25 18:12:39', '2020-12-02 18:24:35', 1, NULL),
(182, 38, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-11-25 18:14:56', '2020-12-02 18:24:35', 1, NULL),
(183, 38, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-11-25 18:19:30', '2020-12-02 18:24:35', 1, NULL),
(184, 40, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-03 14:02:00', '2020-12-03 14:02:00', 1, NULL),
(185, 40, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-03 14:02:29', '2020-12-03 14:02:29', 1, NULL),
(186, 43, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-05 15:05:47', '2020-12-05 15:05:47', 1, NULL),
(187, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:49:02', '2020-12-15 14:49:02', 1, NULL),
(188, 48, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'APS', NULL, NULL, '2020-12-15 14:49:39', '2020-12-17 06:50:43', 1, NULL),
(189, 46, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:49:43', '2020-12-15 14:49:43', 1, NULL),
(190, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:51:11', '2020-12-15 14:51:11', 1, NULL),
(191, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:53:20', '2020-12-15 14:53:20', 1, NULL),
(192, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:53:43', '2020-12-15 14:53:43', 1, NULL),
(193, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:54:00', '2020-12-15 14:54:00', 1, NULL),
(194, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:54:14', '2020-12-15 14:54:14', 1, NULL),
(195, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:54:33', '2020-12-15 14:54:33', 1, NULL),
(196, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:55:05', '2020-12-15 14:55:05', 1, NULL),
(197, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 14:56:22', '2020-12-15 14:56:22', 1, NULL),
(198, 41, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-15 21:19:02', '2020-12-15 21:19:02', 1, NULL),
(199, 48, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-17 06:43:14', '2020-12-17 06:43:14', 1, NULL),
(200, 48, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Paypal', NULL, NULL, '2020-12-17 06:43:54', '2020-12-17 06:43:54', 0, NULL),
(201, 48, 5, 'Standard', '$', 'NGN', 0, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-17 06:51:10', '2020-12-17 06:51:10', 1, NULL),
(202, 50, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-24 13:56:24', '2020-12-24 13:56:24', 1, NULL),
(203, 50, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-24 13:56:55', '2020-12-24 13:56:55', 1, NULL),
(204, 50, 5, 'Standard', '$', 'NGN', 0, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-24 13:57:14', '2020-12-24 13:57:14', 1, NULL),
(205, 50, 8, 'Basic', 'Egyptian pound', 'EGP', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-24 13:57:34', '2020-12-24 13:57:34', 1, NULL),
(206, 51, 5, 'Standard', '$', 'NGN', 0, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-12-24 21:18:44', '2020-12-24 21:18:44', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 02:30:49', '2020-12-02 18:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(3, 22, 101),
(4, 22, 100),
(5, 22, 99),
(6, 22, 97),
(7, 22, 106),
(8, 22, 105),
(9, 22, 104),
(10, 22, 107),
(11, 22, 109),
(12, 22, 119),
(13, 22, 118),
(14, 22, 117),
(15, 22, 116),
(16, 32, 230),
(17, 38, 228),
(18, 38, 227),
(19, 38, 174),
(20, 37, 228),
(21, 42, 174),
(22, 42, 229),
(24, 40, 229),
(26, 44, 230),
(32, 48, 229);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1304;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
