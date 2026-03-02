-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2026 at 03:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrms-balatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, '2026-02-09 13:51:07', '2023-02-19 07:36:32', '2026-02-09 13:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrangements`
--

INSERT INTO `arrangements` (`id`, `event_id`, `team_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 31, 57, 1, '2026-02-10 16:22:31', '2026-02-10 16:22:31'),
(2, 31, 49, 2, '2026-02-10 16:22:33', '2026-02-10 16:22:33'),
(3, 31, 59, 3, '2026-02-10 16:22:38', '2026-02-10 16:22:38'),
(4, 31, 41, 4, '2026-02-10 16:22:44', '2026-02-10 16:22:44'),
(5, 31, 55, 5, '2026-02-10 16:22:49', '2026-02-10 16:22:49'),
(6, 31, 53, 4, '2026-02-10 16:22:53', '2026-02-10 16:22:53'),
(7, 30, 44, 1, '2026-02-10 16:23:30', '2026-02-10 16:23:30'),
(8, 30, 43, 2, '2026-02-10 16:23:36', '2026-02-10 16:23:36'),
(9, 30, 25, 3, '2026-02-10 16:23:57', '2026-02-10 16:23:57'),
(10, 30, 41, 4, '2026-02-10 16:24:12', '2026-02-10 16:24:12'),
(11, 30, 52, 5, '2026-02-10 16:24:33', '2026-02-10 16:24:33'),
(12, 30, 40, 5, '2026-02-10 16:24:38', '2026-02-10 16:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'miss-balatan', 'Miss Balatan', '2024-05-12 14:04:45', '2026-02-04 14:10:49'),
(2, 1, 'mister-balatan', 'Mister Balatan', '2023-04-06 13:25:10', '2026-02-04 14:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'mister-and-miss-balatan', 'Mister and Miss Balatan 2026', '2024-04-06 13:24:04', '2026-02-04 13:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(50, 15, 'Mastery, Energy, Poise & Personality', 40, '2026-02-05 12:35:41', '2026-02-05 12:35:41'),
(51, 15, 'Beauty of Face, Appeal & Charm, Sense of Style', 30, '2026-02-05 12:35:51', '2026-02-05 12:35:51'),
(52, 15, 'Self-Introduction, Wit & Self Expression', 20, '2026-02-05 12:36:02', '2026-02-05 12:36:02'),
(53, 15, 'Over- all Audience Impact', 10, '2026-02-05 12:36:16', '2026-02-05 12:36:16'),
(54, 23, ' Mastery, Energy, Poise & Personality', 40, '2026-02-05 12:37:18', '2026-02-05 12:37:18'),
(55, 23, ' Beauty of Face, Appeal & Charm, Sense of Style', 30, '2026-02-05 12:37:37', '2026-02-05 12:37:37'),
(56, 23, 'Self-Introduction, Wit & Self Expression', 20, '2026-02-05 12:37:47', '2026-02-05 12:37:47'),
(57, 23, 'Over- all Audience Impact', 10, '2026-02-05 12:38:01', '2026-02-05 12:38:01'),
(58, 24, 'Beauty of Face, Figure, Body Proportion', 50, '2026-02-05 12:40:21', '2026-02-05 12:40:21'),
(59, 24, 'Poise, Bearing &  Projection', 20, '2026-02-05 12:40:30', '2026-02-05 12:40:30'),
(60, 24, 'Fitness, Appropriateness of Attire & Style ', 20, '2026-02-05 12:40:43', '2026-02-05 12:40:43'),
(61, 24, 'Over- all Audience Impact', 10, '2026-02-05 12:40:54', '2026-02-05 12:40:54'),
(62, 27, 'Beauty of Face, Figure, Body Proportion', 50, '2026-02-05 12:41:21', '2026-02-05 12:41:21'),
(63, 27, 'Poise, Bearing &  Projection', 20, '2026-02-05 12:41:31', '2026-02-05 12:41:31'),
(64, 27, 'Fitness, Appropriateness of Attire & Style ', 20, '2026-02-05 12:41:46', '2026-02-05 12:41:46'),
(65, 27, 'Over- all Audience Impact', 10, '2026-02-05 12:42:00', '2026-02-05 12:42:00'),
(66, 25, 'Intelligence, Articulation & Wit', 40, '2026-02-05 12:43:18', '2026-02-05 12:43:18'),
(67, 25, 'Beauty of Face & Personality', 25, '2026-02-05 12:43:26', '2026-02-05 12:43:26'),
(68, 25, 'Poise, Stance & Projection under Pressure', 25, '2026-02-05 12:43:39', '2026-02-05 12:43:39'),
(69, 25, 'Over- All Packaging & Impact', 10, '2026-02-05 12:43:50', '2026-02-05 12:43:50'),
(70, 28, 'Intelligence, Articulation & Wit', 40, '2026-02-05 12:45:40', '2026-02-05 12:45:40'),
(71, 28, 'Beauty of Face & Personality', 25, '2026-02-05 12:45:50', '2026-02-05 12:45:50'),
(72, 28, 'Poise, Stance & Projection under Pressure', 25, '2026-02-05 12:46:06', '2026-02-05 12:46:06'),
(73, 28, 'Over- All Packaging & Impact', 10, '2026-02-05 12:46:14', '2026-02-05 12:46:14'),
(74, 26, 'Beauty of Face, Appeal  & Charm ', 40, '2026-02-05 12:47:02', '2026-02-05 12:47:02'),
(75, 26, 'Personality, Elegance & Stage Presence', 30, '2026-02-05 12:47:12', '2026-02-05 12:47:12'),
(76, 26, 'Fitness, Appropriateness of Attire & Style ', 20, '2026-02-05 12:47:26', '2026-02-05 12:47:26'),
(77, 26, 'Over- all Audience Impact', 10, '2026-02-05 12:47:38', '2026-02-05 12:47:38'),
(78, 29, 'Beauty of Face, Appeal  & Charm ', 40, '2026-02-05 12:48:10', '2026-02-05 12:48:10'),
(79, 29, 'Personality, Elegance & Stage Presence', 30, '2026-02-05 12:48:19', '2026-02-05 12:48:19'),
(80, 29, 'Fitness, Appropriateness of Attire & Style', 20, '2026-02-05 12:48:31', '2026-02-05 12:48:31'),
(81, 29, 'Over- all Audience Impact', 10, '2026-02-05 12:48:41', '2026-02-05 12:48:41'),
(83, 30, 'Beauty of Face,   Charm & Appeal', 50, '2026-02-05 12:49:33', '2026-02-05 12:49:33'),
(84, 30, 'Articulation, Wit,  Intelligence & Self Expression', 50, '2026-02-05 12:49:48', '2026-02-05 12:49:48'),
(85, 31, 'Beauty of Face,   Charm & Appeal', 50, '2026-02-05 12:50:01', '2026-02-05 12:50:01'),
(86, 31, 'Articulation, Wit,  Intelligence & Self Expression', 50, '2026-02-05 12:50:13', '2026-02-05 12:50:13'),
(87, 13, 'Appropriateness of Attire, Sense of Style, Suitability, Wearability,', 40, '2026-02-09 04:56:01', '2026-02-10 08:14:19'),
(89, 13, 'Concept, Originality of Design, Creativity, Cultural Significance, Theme Interpretation & Craftsmanship', 30, '2026-02-10 08:13:58', '2026-02-10 08:14:28'),
(90, 13, 'Poise, Bearing, Projection & Quality of Execution', 20, '2026-02-10 08:14:37', '2026-02-10 08:14:37'),
(91, 13, 'Elegance , Stage Presence Overall Impact', 10, '2026-02-10 08:14:56', '2026-02-10 08:14:56'),
(92, 14, 'Appropriateness of Attire, Sense of Style, Suitability, Wearability', 40, '2026-02-10 08:15:24', '2026-02-10 08:15:24'),
(93, 14, 'Concept, Originality of Design, Creativity, Cultural Significance, Theme Interpretation & Craftsmanship', 30, '2026-02-10 08:15:38', '2026-02-10 08:15:38'),
(94, 14, 'Poise, Bearing, Projection & Quality of Execution', 20, '2026-02-10 08:15:46', '2026-02-10 08:15:46'),
(95, 14, 'Elegance , Stage Presence Overall Impact', 10, '2026-02-10 08:15:55', '2026-02-10 08:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eliminations`
--

INSERT INTO `eliminations` (`id`, `event_id`, `team_id`, `created_at`, `updated_at`) VALUES
(99, 13, 48, '2026-02-05 10:13:38', '2026-02-05 10:13:38'),
(100, 13, 49, '2026-02-05 10:13:42', '2026-02-05 10:13:42'),
(101, 13, 50, '2026-02-05 10:13:46', '2026-02-05 10:13:46'),
(104, 13, 51, '2026-02-05 10:14:01', '2026-02-05 10:14:01'),
(105, 13, 52, '2026-02-05 10:14:05', '2026-02-05 10:14:05'),
(106, 13, 53, '2026-02-05 10:16:27', '2026-02-05 10:16:27'),
(107, 13, 54, '2026-02-05 10:16:31', '2026-02-05 10:16:31'),
(108, 13, 55, '2026-02-05 10:16:35', '2026-02-05 10:16:35'),
(109, 13, 56, '2026-02-05 10:16:48', '2026-02-05 10:16:48'),
(110, 13, 57, '2026-02-05 10:16:56', '2026-02-05 10:16:56'),
(111, 13, 58, '2026-02-05 10:17:00', '2026-02-05 10:17:00'),
(112, 13, 59, '2026-02-05 10:17:03', '2026-02-05 10:17:03'),
(113, 14, 23, '2026-02-05 10:18:29', '2026-02-05 10:18:29'),
(115, 14, 25, '2026-02-05 10:18:34', '2026-02-05 10:18:34'),
(116, 14, 27, '2026-02-05 10:18:36', '2026-02-05 10:18:36'),
(117, 14, 39, '2026-02-05 10:18:40', '2026-02-05 10:18:40'),
(118, 14, 40, '2026-02-05 10:18:45', '2026-02-05 10:18:45'),
(119, 14, 41, '2026-02-05 10:18:49', '2026-02-05 10:18:49'),
(120, 14, 42, '2026-02-05 10:18:55', '2026-02-05 10:18:55'),
(121, 14, 43, '2026-02-05 10:18:59', '2026-02-05 10:18:59'),
(122, 14, 44, '2026-02-05 10:19:03', '2026-02-05 10:19:03'),
(124, 14, 46, '2026-02-05 10:19:16', '2026-02-05 10:19:16'),
(125, 14, 47, '2026-02-05 10:19:20', '2026-02-05 10:19:20'),
(126, 14, 45, '2026-02-05 10:20:00', '2026-02-05 10:20:00'),
(127, 15, 48, '2026-02-05 10:29:42', '2026-02-05 10:29:42'),
(128, 15, 49, '2026-02-05 10:29:44', '2026-02-05 10:29:44'),
(129, 15, 50, '2026-02-05 10:29:45', '2026-02-05 10:29:45'),
(130, 15, 51, '2026-02-05 10:29:46', '2026-02-05 10:29:46'),
(131, 15, 52, '2026-02-05 10:29:48', '2026-02-05 10:29:48'),
(132, 15, 53, '2026-02-05 10:29:52', '2026-02-05 10:29:52'),
(133, 15, 54, '2026-02-05 10:29:53', '2026-02-05 10:29:53'),
(134, 15, 55, '2026-02-05 10:29:58', '2026-02-05 10:29:58'),
(136, 15, 56, '2026-02-05 10:30:05', '2026-02-05 10:30:05'),
(137, 15, 57, '2026-02-05 10:30:08', '2026-02-05 10:30:08'),
(138, 15, 58, '2026-02-05 10:30:10', '2026-02-05 10:30:10'),
(139, 15, 59, '2026-02-05 10:30:11', '2026-02-05 10:30:11'),
(224, 24, 48, '2026-02-05 11:47:39', '2026-02-05 11:47:39'),
(225, 24, 49, '2026-02-05 11:47:40', '2026-02-05 11:47:40'),
(226, 24, 50, '2026-02-05 11:47:41', '2026-02-05 11:47:41'),
(227, 24, 51, '2026-02-05 11:47:42', '2026-02-05 11:47:42'),
(228, 24, 52, '2026-02-05 11:47:44', '2026-02-05 11:47:44'),
(229, 24, 53, '2026-02-05 11:47:55', '2026-02-05 11:47:55'),
(230, 24, 54, '2026-02-05 11:47:56', '2026-02-05 11:47:56'),
(231, 24, 55, '2026-02-05 11:47:58', '2026-02-05 11:47:58'),
(232, 24, 56, '2026-02-05 11:48:01', '2026-02-05 11:48:01'),
(233, 24, 57, '2026-02-05 11:48:02', '2026-02-05 11:48:02'),
(234, 24, 58, '2026-02-05 11:48:04', '2026-02-05 11:48:04'),
(235, 24, 59, '2026-02-05 11:48:05', '2026-02-05 11:48:05'),
(236, 25, 48, '2026-02-05 11:48:19', '2026-02-05 11:48:19'),
(237, 25, 49, '2026-02-05 11:48:20', '2026-02-05 11:48:20'),
(238, 25, 50, '2026-02-05 11:48:21', '2026-02-05 11:48:21'),
(239, 25, 51, '2026-02-05 11:48:22', '2026-02-05 11:48:22'),
(240, 25, 52, '2026-02-05 11:48:24', '2026-02-05 11:48:24'),
(241, 25, 53, '2026-02-05 11:48:25', '2026-02-05 11:48:25'),
(242, 25, 54, '2026-02-05 11:48:27', '2026-02-05 11:48:27'),
(243, 25, 55, '2026-02-05 11:48:28', '2026-02-05 11:48:28'),
(244, 25, 56, '2026-02-05 11:48:32', '2026-02-05 11:48:32'),
(245, 25, 57, '2026-02-05 11:48:33', '2026-02-05 11:48:33'),
(246, 25, 58, '2026-02-05 11:48:35', '2026-02-05 11:48:35'),
(247, 25, 59, '2026-02-05 11:48:36', '2026-02-05 11:48:36'),
(248, 26, 48, '2026-02-05 11:48:39', '2026-02-05 11:48:39'),
(249, 26, 49, '2026-02-05 11:48:39', '2026-02-05 11:48:39'),
(250, 26, 50, '2026-02-05 11:48:40', '2026-02-05 11:48:40'),
(251, 26, 51, '2026-02-05 11:48:42', '2026-02-05 11:48:42'),
(252, 26, 52, '2026-02-05 11:48:45', '2026-02-05 11:48:45'),
(253, 26, 53, '2026-02-05 11:48:47', '2026-02-05 11:48:47'),
(254, 26, 54, '2026-02-05 11:48:49', '2026-02-05 11:48:49'),
(255, 26, 55, '2026-02-05 11:48:52', '2026-02-05 11:48:52'),
(256, 26, 56, '2026-02-05 11:48:56', '2026-02-05 11:48:56'),
(257, 26, 57, '2026-02-05 11:48:58', '2026-02-05 11:48:58'),
(258, 26, 58, '2026-02-05 11:49:01', '2026-02-05 11:49:01'),
(259, 26, 59, '2026-02-05 11:49:02', '2026-02-05 11:49:02'),
(260, 23, 23, '2026-02-05 11:54:28', '2026-02-05 11:54:28'),
(261, 27, 23, '2026-02-05 11:54:29', '2026-02-05 11:54:29'),
(262, 23, 25, '2026-02-05 11:54:32', '2026-02-05 11:54:32'),
(263, 27, 25, '2026-02-05 11:54:33', '2026-02-05 11:54:33'),
(264, 23, 27, '2026-02-05 11:54:35', '2026-02-05 11:54:35'),
(265, 27, 27, '2026-02-05 11:54:35', '2026-02-05 11:54:35'),
(266, 23, 39, '2026-02-05 11:54:36', '2026-02-05 11:54:36'),
(267, 27, 39, '2026-02-05 11:54:37', '2026-02-05 11:54:37'),
(268, 23, 40, '2026-02-05 11:54:39', '2026-02-05 11:54:39'),
(269, 27, 40, '2026-02-05 11:54:40', '2026-02-05 11:54:40'),
(270, 23, 41, '2026-02-05 11:54:41', '2026-02-05 11:54:41'),
(271, 27, 41, '2026-02-05 11:54:42', '2026-02-05 11:54:42'),
(272, 23, 42, '2026-02-05 11:54:44', '2026-02-05 11:54:44'),
(273, 27, 42, '2026-02-05 11:54:45', '2026-02-05 11:54:45'),
(274, 23, 43, '2026-02-05 11:54:46', '2026-02-05 11:54:46'),
(275, 23, 44, '2026-02-05 11:54:47', '2026-02-05 11:54:47'),
(276, 27, 43, '2026-02-05 11:54:48', '2026-02-05 11:54:48'),
(277, 27, 44, '2026-02-05 11:54:48', '2026-02-05 11:54:48'),
(278, 23, 45, '2026-02-05 11:54:50', '2026-02-05 11:54:50'),
(279, 27, 45, '2026-02-05 11:54:51', '2026-02-05 11:54:51'),
(280, 23, 46, '2026-02-05 11:54:52', '2026-02-05 11:54:52'),
(281, 27, 46, '2026-02-05 11:54:53', '2026-02-05 11:54:53'),
(282, 23, 47, '2026-02-05 11:54:54', '2026-02-05 11:54:54'),
(283, 27, 47, '2026-02-05 11:54:55', '2026-02-05 11:54:55'),
(284, 28, 23, '2026-02-05 11:55:22', '2026-02-05 11:55:22'),
(285, 29, 23, '2026-02-05 11:55:22', '2026-02-05 11:55:22'),
(286, 28, 25, '2026-02-05 11:55:25', '2026-02-05 11:55:25'),
(287, 29, 25, '2026-02-05 11:55:26', '2026-02-05 11:55:26'),
(288, 28, 27, '2026-02-05 11:55:28', '2026-02-05 11:55:28'),
(289, 29, 27, '2026-02-05 11:55:29', '2026-02-05 11:55:29'),
(290, 28, 39, '2026-02-05 11:55:31', '2026-02-05 11:55:31'),
(291, 29, 39, '2026-02-05 11:55:31', '2026-02-05 11:55:31'),
(292, 28, 40, '2026-02-05 11:55:33', '2026-02-05 11:55:33'),
(293, 29, 40, '2026-02-05 11:55:34', '2026-02-05 11:55:34'),
(294, 28, 41, '2026-02-05 11:55:36', '2026-02-05 11:55:36'),
(295, 29, 41, '2026-02-05 11:55:36', '2026-02-05 11:55:36'),
(296, 28, 42, '2026-02-05 11:55:39', '2026-02-05 11:55:39'),
(297, 29, 42, '2026-02-05 11:55:40', '2026-02-05 11:55:40'),
(298, 28, 43, '2026-02-05 11:55:42', '2026-02-05 11:55:42'),
(299, 29, 43, '2026-02-05 11:55:43', '2026-02-05 11:55:43'),
(301, 28, 44, '2026-02-05 11:55:48', '2026-02-05 11:55:48'),
(302, 29, 44, '2026-02-05 11:55:49', '2026-02-05 11:55:49'),
(303, 28, 45, '2026-02-05 11:55:50', '2026-02-05 11:55:50'),
(304, 29, 45, '2026-02-05 11:55:51', '2026-02-05 11:55:51'),
(305, 28, 46, '2026-02-05 11:55:53', '2026-02-05 11:55:53'),
(306, 29, 46, '2026-02-05 11:55:53', '2026-02-05 11:55:53'),
(307, 28, 47, '2026-02-05 11:55:55', '2026-02-05 11:55:55'),
(308, 29, 47, '2026-02-05 11:55:56', '2026-02-05 11:55:56'),
(310, 30, 48, '2026-02-05 11:59:33', '2026-02-05 11:59:33'),
(311, 30, 49, '2026-02-05 11:59:34', '2026-02-05 11:59:34'),
(313, 30, 50, '2026-02-05 11:59:34', '2026-02-05 11:59:34'),
(314, 30, 51, '2026-02-05 11:59:35', '2026-02-05 11:59:35'),
(315, 30, 39, '2026-02-05 11:59:36', '2026-02-05 11:59:36'),
(316, 30, 27, '2026-02-05 11:59:37', '2026-02-05 11:59:37'),
(317, 30, 52, '2026-02-05 11:59:37', '2026-02-05 11:59:37'),
(319, 30, 53, '2026-02-05 11:59:38', '2026-02-05 11:59:38'),
(321, 30, 54, '2026-02-05 11:59:39', '2026-02-05 11:59:39'),
(322, 30, 42, '2026-02-05 11:59:40', '2026-02-05 11:59:40'),
(323, 30, 55, '2026-02-05 11:59:41', '2026-02-05 11:59:41'),
(326, 30, 56, '2026-02-05 11:59:43', '2026-02-05 11:59:43'),
(327, 30, 45, '2026-02-05 11:59:43', '2026-02-05 11:59:43'),
(328, 30, 57, '2026-02-05 11:59:43', '2026-02-05 11:59:43'),
(330, 30, 58, '2026-02-05 11:59:45', '2026-02-05 11:59:45'),
(334, 31, 47, '2026-02-05 11:59:51', '2026-02-05 11:59:51'),
(336, 31, 46, '2026-02-05 11:59:51', '2026-02-05 11:59:51'),
(338, 31, 45, '2026-02-05 11:59:52', '2026-02-05 11:59:52'),
(339, 31, 56, '2026-02-05 11:59:53', '2026-02-05 11:59:53'),
(340, 31, 44, '2026-02-05 11:59:54', '2026-02-05 11:59:54'),
(341, 31, 43, '2026-02-05 11:59:54', '2026-02-05 11:59:54'),
(343, 31, 42, '2026-02-05 11:59:56', '2026-02-05 11:59:56'),
(344, 31, 54, '2026-02-05 11:59:56', '2026-02-05 11:59:56'),
(345, 31, 41, '2026-02-05 11:59:57', '2026-02-05 11:59:57'),
(347, 31, 40, '2026-02-05 11:59:58', '2026-02-05 11:59:58'),
(348, 31, 52, '2026-02-05 11:59:58', '2026-02-05 11:59:58'),
(349, 31, 39, '2026-02-05 12:00:00', '2026-02-05 12:00:00'),
(350, 31, 51, '2026-02-05 12:00:00', '2026-02-05 12:00:00'),
(351, 31, 27, '2026-02-05 12:00:01', '2026-02-05 12:00:01'),
(353, 31, 25, '2026-02-05 12:00:02', '2026-02-05 12:00:02'),
(355, 31, 23, '2026-02-05 12:00:04', '2026-02-05 12:00:04'),
(358, 30, 59, '2026-02-09 02:34:36', '2026-02-09 02:34:36'),
(360, 31, 48, '2026-02-09 02:37:11', '2026-02-09 02:37:11'),
(361, 30, 23, '2026-02-10 10:24:31', '2026-02-10 10:24:31'),
(364, 30, 46, '2026-02-10 10:24:34', '2026-02-10 10:24:34'),
(365, 30, 47, '2026-02-10 10:24:35', '2026-02-10 10:24:35'),
(367, 31, 50, '2026-02-10 10:24:44', '2026-02-10 10:24:44'),
(368, 31, 58, '2026-02-10 10:24:46', '2026-02-10 10:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(13, 1, 'festival-attire-1', 'Festival Attire (Female)', '2026-02-05 09:58:39', '2026-02-05 09:58:39'),
(14, 2, 'festival-attire-2', 'Festival Attire (Male)', '2026-02-05 10:07:39', '2026-02-05 10:07:39'),
(15, 1, 'production-1', 'Production Number (Female)', '2026-02-05 10:23:46', '2026-02-05 10:23:46'),
(23, 2, 'production-2', 'Production Number (Male)', '2026-02-05 11:26:19', '2026-02-05 11:56:57'),
(24, 1, 'swimsuit-1', 'Swimsuit (Female)', '2026-02-05 11:40:35', '2026-02-05 11:40:35'),
(25, 1, 'preliminary-q-and-a-1', 'Preliminary Question & Answer (Female)', '2026-02-05 11:41:24', '2026-02-05 11:41:24'),
(26, 1, 'long-gown-1', 'Long Gown (Female)', '2026-02-05 11:42:38', '2026-02-05 11:42:38'),
(27, 2, 'swimwear-2', 'Swimsuit (Male)', '2026-02-05 11:45:44', '2026-02-10 09:47:10'),
(28, 2, 'preliminary-q-and-a-2', 'Preliminary Question & Answer (Male)', '2026-02-05 11:46:29', '2026-02-05 11:46:29'),
(29, 2, 'formal-wear-2', 'Modern Barong (Male)', '2026-02-05 11:47:08', '2026-02-10 10:23:47'),
(30, 1, 'final-q-and-a-1', 'Final Q&A (Female)', '2026-02-05 11:58:33', '2026-02-05 11:58:33'),
(31, 2, 'final-q-and-a-2', 'Final Q&A (Male)', '2026-02-05 11:59:09', '2026-02-05 11:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 01 (Female)', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2023-04-06 13:58:11', '2026-02-10 18:29:54'),
(2, 2, 'Judge 02 (Female)', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2023-04-06 13:58:28', '2026-02-10 18:33:13'),
(3, 3, 'Judge 03 (Female)', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2023-04-06 13:58:42', '2026-02-10 18:36:04'),
(4, 3, 'Judge 03 (Male)', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, NULL, '2023-04-06 13:59:26', '2026-02-10 18:39:04'),
(5, 2, 'Judge 02 (Male)', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, NULL, '2023-04-06 14:00:00', '2026-02-10 18:42:59'),
(6, 1, 'Judge 01 (Male)', 'no-avatar.jpg', 'judge06', 'judge06', NULL, NULL, '2026-02-10 18:50:51', '2024-05-13 13:49:13', '2026-02-11 13:39:58'),
(8, 7, 'Tabulator01', 'no-avatar.jpg', 'Tabulator01', 'Tabulator01', NULL, NULL, NULL, '2024-05-21 05:57:36', '2026-02-10 08:57:26'),
(13, 8, 'Tabulator02', 'no-avatar.jpg', 'Tabulator02', 'Tabulator02', NULL, NULL, '2026-02-10 08:58:21', '2026-02-10 07:59:32', '2026-02-10 09:15:31'),
(14, 9, 'Tabulator03', 'no-avatar.jpg', 'Tabulator03', 'Tabulator03', NULL, NULL, NULL, '2026-02-10 07:59:54', '2026-02-10 08:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `active_team_id` tinyint(3) UNSIGNED NOT NULL,
  `has_active_team` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `active_team_id`, `has_active_team`, `created_at`, `updated_at`) VALUES
(63, 1, 15, 0, 23, 0, '2026-02-05 12:04:25', '2026-02-05 12:04:25'),
(64, 1, 24, 0, 23, 0, '2026-02-05 12:04:35', '2026-02-05 12:04:35'),
(65, 1, 25, 0, 23, 0, '2026-02-05 12:04:42', '2026-02-05 12:04:42'),
(66, 1, 26, 0, 23, 0, '2026-02-05 12:04:48', '2026-02-05 12:04:48'),
(67, 1, 30, 0, 23, 0, '2026-02-05 12:04:53', '2026-02-05 12:04:53'),
(68, 8, 13, 0, 23, 0, '2026-02-05 12:05:04', '2026-02-09 02:51:24'),
(69, 8, 14, 0, 23, 0, '2026-02-05 12:05:09', '2026-02-09 02:51:25'),
(71, 2, 15, 0, 23, 0, '2026-02-05 12:22:00', '2026-02-05 12:22:00'),
(72, 2, 24, 0, 23, 0, '2026-02-05 12:22:05', '2026-02-05 12:22:05'),
(73, 2, 25, 0, 23, 0, '2026-02-05 12:22:09', '2026-02-05 12:22:09'),
(74, 2, 26, 0, 23, 0, '2026-02-05 12:22:13', '2026-02-05 12:22:13'),
(75, 2, 30, 0, 23, 0, '2026-02-05 12:22:19', '2026-02-05 12:22:19'),
(76, 3, 15, 1, 23, 0, '2026-02-05 12:22:32', '2026-02-10 09:10:58'),
(77, 3, 24, 1, 23, 0, '2026-02-05 12:22:37', '2026-02-10 09:10:59'),
(78, 3, 25, 1, 23, 0, '2026-02-05 12:22:42', '2026-02-10 09:11:00'),
(79, 3, 26, 1, 23, 0, '2026-02-05 12:22:48', '2026-02-10 09:11:03'),
(80, 3, 30, 1, 23, 0, '2026-02-05 12:22:58', '2026-02-10 09:11:04'),
(81, 4, 23, 1, 23, 0, '2026-02-05 12:23:16', '2026-02-10 09:11:12'),
(82, 4, 27, 1, 23, 0, '2026-02-05 12:23:37', '2026-02-10 09:11:13'),
(83, 4, 28, 1, 23, 0, '2026-02-05 12:23:43', '2026-02-10 09:11:14'),
(84, 4, 29, 1, 23, 0, '2026-02-05 12:23:54', '2026-02-10 09:11:15'),
(85, 4, 31, 1, 23, 0, '2026-02-05 12:23:58', '2026-02-10 09:11:20'),
(86, 5, 23, 0, 23, 0, '2026-02-05 12:25:14', '2026-02-05 12:25:14'),
(87, 5, 27, 0, 23, 0, '2026-02-05 12:25:24', '2026-02-05 12:25:24'),
(88, 5, 28, 0, 23, 0, '2026-02-05 12:25:34', '2026-02-05 12:25:34'),
(89, 5, 29, 0, 23, 0, '2026-02-05 12:25:44', '2026-02-05 12:25:44'),
(90, 5, 31, 0, 23, 0, '2026-02-05 12:25:49', '2026-02-05 12:25:49'),
(91, 6, 23, 0, 23, 0, '2026-02-05 12:26:01', '2026-02-05 12:26:01'),
(92, 6, 27, 0, 23, 0, '2026-02-05 12:26:23', '2026-02-05 12:26:23'),
(93, 6, 28, 0, 23, 0, '2026-02-05 12:26:28', '2026-02-05 12:26:28'),
(94, 6, 29, 0, 23, 0, '2026-02-05 12:26:34', '2026-02-05 12:26:34'),
(95, 6, 31, 0, 23, 0, '2026-02-05 12:26:39', '2026-02-05 12:26:39'),
(104, 13, 13, 0, 23, 0, '2026-02-10 08:01:15', '2026-02-10 08:01:15'),
(105, 13, 14, 0, 23, 0, '2026-02-10 08:01:24', '2026-02-10 08:01:24'),
(106, 14, 13, 0, 23, 0, '2026-02-10 08:01:52', '2026-02-10 08:01:52'),
(107, 14, 14, 0, 23, 0, '2026-02-10 08:01:57', '2026-02-10 08:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(23, 1, 'HAZEL ANI A. BERJA', 'BALATAN', 'F_1.jpg', '2026-02-04 14:08:25', '2026-02-05 14:26:50'),
(25, 2, 'SHAYNE NESVERLIE S.SERMONA', 'BALATAN', 'F_2.jpg', '2026-02-04 14:37:56', '2026-02-05 14:30:30'),
(27, 3, 'ROHANNA MAE C. MUNOZ', 'IRIGA CITY', 'F_3.jpg', '2026-02-04 14:47:07', '2026-02-06 09:49:44'),
(39, 4, 'KYLA GRACE B. ANDALIS', 'BAAO', 'F_4.jpg', '2026-02-05 10:01:26', '2026-02-06 09:58:36'),
(40, 5, 'MARIAH MOIRA F. PARCO', 'BALATAN', 'F_5.jpg', '2026-02-05 10:03:32', '2026-02-06 09:58:43'),
(41, 6, 'SHANIA WENDY KATE G. ROS', 'LIBMANAN', 'F_6.jpg', '2026-02-05 10:04:00', '2026-02-06 09:58:53'),
(42, 7, 'KRISHA MAE B. MANGISTRADO', 'IRIGA CITY', 'F_7.jpg', '2026-02-05 10:04:18', '2026-02-06 09:59:01'),
(43, 8, 'PRINCESS MAUREEN R. DELFINO', 'LAGONOY', 'F_8.jpg', '2026-02-05 10:04:38', '2026-02-06 09:59:13'),
(44, 9, 'HANNA GRACE A. CLAVILLAS', 'BUHI', 'F_9.jpg', '2026-02-05 10:04:54', '2026-02-06 09:59:20'),
(45, 10, 'JENSEI S. SOLARES', 'BATO', 'F_10.jpg', '2026-02-05 10:05:09', '2026-02-06 09:59:50'),
(46, 11, 'JONA CRISTINA R. CESTINA', 'IRIGA CITY', 'F_11.jpg', '2026-02-05 10:05:27', '2026-02-06 09:59:58'),
(47, 12, 'FILDIAN S. SINGH', 'IRIGA CITY', 'F_12.jpg', '2026-02-05 10:05:44', '2026-02-06 10:00:06'),
(48, 1, 'GILMAR SABERON', 'SIPOCOT', 'M_1.jpg', '2026-02-05 10:08:08', '2026-02-05 14:28:08'),
(49, 2, 'KARL VINCENT C. SUAYAN', 'SAN FERNANDO', 'M_2.jpg', '2026-02-05 10:08:56', '2026-02-06 11:23:17'),
(50, 3, 'SEANDON UNO ELLIS P. TORIBIO', 'BULA', 'M_3.jpg', '2026-02-05 10:09:19', '2026-02-06 11:23:32'),
(51, 4, 'GASPER O. MORTEL', 'NAGA CITY', 'M_4.jpg', '2026-02-05 10:09:48', '2026-02-06 11:23:40'),
(52, 5, 'ANGELO KYLE A. SANTOS', 'NAGA CITY', 'M_5.jpg', '2026-02-05 10:10:03', '2026-02-06 11:23:47'),
(53, 6, 'MARK GLENCEL N. AMPARADO', 'BAAO', 'M_6.jpg', '2026-02-05 10:10:18', '2026-02-06 11:23:56'),
(54, 7, 'ELIJAH LEIGH V. LABORDO', 'BUHI', 'M_7.jpg', '2026-02-05 10:10:38', '2026-02-06 11:24:02'),
(55, 8, 'JOHN JOSHUA P. PENAOJAS', 'BALATAN', 'M_8.jpg', '2026-02-05 10:10:57', '2026-02-06 11:24:10'),
(56, 9, 'VINCENT JHON FRANCISCO', 'LIBMANAN', 'M_9.jpg', '2026-02-05 10:11:15', '2026-02-06 11:24:17'),
(57, 10, 'JANRY BON L. MEDIADO', 'IRIGA CITY', 'M_10.jpg', '2026-02-05 10:11:37', '2026-02-06 11:24:26'),
(58, 11, 'KHARLOU JAE V. EYO', 'NAGA CITY', 'M_11.jpg', '2026-02-05 10:11:58', '2026-02-06 11:24:33'),
(59, 12, 'JERRY C. GIBSON', 'PILI', 'M_12.jpg', '2026-02-05 10:12:18', '2026-02-06 11:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, NULL, '2023-02-19 08:58:58', '2023-04-06 14:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `active_team_id` tinyint(3) UNSIGNED NOT NULL,
  `has_active_team` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(185, 13, 1, 'Best in Festival Attire (Female)', '2026-02-05 09:58:53', '2026-02-09 01:43:54'),
(186, 13, 2, '1st runner up ', '2026-02-05 09:58:53', '2026-02-10 08:19:38'),
(187, 13, 3, '2nd runner up', '2026-02-05 09:58:53', '2026-02-10 08:19:46'),
(188, 13, 4, '', '2026-02-05 09:58:53', '2026-02-05 09:58:53'),
(189, 13, 5, '', '2026-02-05 09:58:53', '2026-02-05 09:58:53'),
(190, 13, 6, '', '2026-02-05 10:06:03', '2026-02-05 10:06:03'),
(191, 13, 7, '', '2026-02-05 10:06:03', '2026-02-05 10:06:03'),
(192, 13, 8, '', '2026-02-05 10:06:03', '2026-02-05 10:06:03'),
(193, 13, 9, '', '2026-02-05 10:06:03', '2026-02-05 10:06:03'),
(194, 13, 10, '', '2026-02-05 10:06:03', '2026-02-05 10:06:03'),
(195, 13, 11, '', '2026-02-05 10:06:03', '2026-02-05 10:06:03'),
(196, 13, 12, '', '2026-02-05 10:06:03', '2026-02-05 10:06:03'),
(197, 13, 13, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(198, 13, 14, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(199, 13, 15, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(200, 13, 16, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(201, 13, 17, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(202, 13, 18, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(203, 13, 19, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(204, 13, 20, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(205, 13, 21, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(206, 13, 22, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(207, 13, 23, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(208, 13, 24, '', '2026-02-05 10:17:12', '2026-02-05 10:17:12'),
(209, 14, 1, 'Best in Festival Attire (Male)', '2026-02-05 10:17:52', '2026-02-09 01:45:18'),
(210, 14, 2, '1st runner up ', '2026-02-05 10:17:52', '2026-02-10 08:22:52'),
(211, 14, 3, '2nd runner up ', '2026-02-05 10:17:52', '2026-02-10 08:23:00'),
(212, 14, 4, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(213, 14, 5, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(214, 14, 6, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(215, 14, 7, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(216, 14, 8, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(217, 14, 9, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(218, 14, 10, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(219, 14, 11, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(220, 14, 12, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(221, 14, 13, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(222, 14, 14, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(223, 14, 15, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(224, 14, 16, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(225, 14, 17, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(226, 14, 18, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(227, 14, 19, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(228, 14, 20, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(229, 14, 21, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(230, 14, 22, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(231, 14, 23, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(232, 14, 24, '', '2026-02-05 10:17:52', '2026-02-05 10:17:52'),
(233, 15, 1, 'Best in Production Number (Female)', '2026-02-05 10:29:26', '2026-02-09 01:44:04'),
(234, 15, 2, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(235, 15, 3, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(236, 15, 4, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(237, 15, 5, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(238, 15, 6, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(239, 15, 7, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(240, 15, 8, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(241, 15, 9, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(242, 15, 10, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(243, 15, 11, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(244, 15, 12, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(245, 15, 13, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(246, 15, 14, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(247, 15, 15, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(248, 15, 16, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(249, 15, 17, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(250, 15, 18, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(251, 15, 19, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(252, 15, 20, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(253, 15, 21, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(254, 15, 22, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(255, 15, 23, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(256, 15, 24, '', '2026-02-05 10:29:26', '2026-02-05 10:29:26'),
(425, 23, 1, 'Best in Production Number (Male)', '2026-02-05 11:26:31', '2026-02-09 01:45:35'),
(426, 23, 2, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(427, 23, 3, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(428, 23, 4, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(429, 23, 5, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(430, 23, 6, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(431, 23, 7, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(432, 23, 8, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(433, 23, 9, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(434, 23, 10, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(435, 23, 11, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(436, 23, 12, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(437, 23, 13, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(438, 23, 14, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(439, 23, 15, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(440, 23, 16, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(441, 23, 17, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(442, 23, 18, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(443, 23, 19, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(444, 23, 20, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(445, 23, 21, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(446, 23, 22, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(447, 23, 23, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(448, 23, 24, '', '2026-02-05 11:26:31', '2026-02-05 11:26:31'),
(449, 24, 1, 'Best in Swimsuit (Female) ', '2026-02-05 11:42:24', '2026-02-09 01:44:36'),
(450, 24, 2, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(451, 24, 3, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(452, 24, 4, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(453, 24, 5, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(454, 24, 6, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(455, 24, 7, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(456, 24, 8, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(457, 24, 9, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(458, 24, 10, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(459, 24, 11, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(460, 24, 12, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(461, 24, 13, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(462, 24, 14, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(463, 24, 15, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(464, 24, 16, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(465, 24, 17, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(466, 24, 18, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(467, 24, 19, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(468, 24, 20, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(469, 24, 21, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(470, 24, 22, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(471, 24, 23, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(472, 24, 24, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(473, 25, 1, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(474, 25, 2, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(475, 25, 3, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(476, 25, 4, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(477, 25, 5, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(478, 25, 6, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(479, 25, 7, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(480, 25, 8, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(481, 25, 9, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(482, 25, 10, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(483, 25, 11, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(484, 25, 12, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(485, 25, 13, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(486, 25, 14, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(487, 25, 15, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(488, 25, 16, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(489, 25, 17, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(490, 25, 18, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(491, 25, 19, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(492, 25, 20, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(493, 25, 21, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(494, 25, 22, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(495, 25, 23, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(496, 25, 24, '', '2026-02-05 11:42:24', '2026-02-05 11:42:24'),
(497, 26, 1, 'Best in Long Gown  (Female)', '2026-02-05 11:42:40', '2026-02-09 01:45:12'),
(498, 26, 2, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(499, 26, 3, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(500, 26, 4, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(501, 26, 5, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(502, 26, 6, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(503, 26, 7, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(504, 26, 8, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(505, 26, 9, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(506, 26, 10, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(507, 26, 11, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(508, 26, 12, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(509, 26, 13, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(510, 26, 14, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(511, 26, 15, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(512, 26, 16, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(513, 26, 17, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(514, 26, 18, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(515, 26, 19, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(516, 26, 20, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(517, 26, 21, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(518, 26, 22, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(519, 26, 23, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(520, 26, 24, '', '2026-02-05 11:42:40', '2026-02-05 11:42:40'),
(521, 27, 1, 'Best in Swimsuit (Male)', '2026-02-05 11:45:47', '2026-02-10 09:48:00'),
(522, 27, 2, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(523, 27, 3, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(524, 27, 4, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(525, 27, 5, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(526, 27, 6, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(527, 27, 7, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(528, 27, 8, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(529, 27, 9, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(530, 27, 10, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(531, 27, 11, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(532, 27, 12, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(533, 27, 13, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(534, 27, 14, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(535, 27, 15, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(536, 27, 16, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(537, 27, 17, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(538, 27, 18, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(539, 27, 19, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(540, 27, 20, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(541, 27, 21, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(542, 27, 22, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(543, 27, 23, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(544, 27, 24, '', '2026-02-05 11:45:47', '2026-02-05 11:45:47'),
(545, 28, 1, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(546, 28, 2, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(547, 28, 3, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(548, 28, 4, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(549, 28, 5, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(550, 28, 6, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(551, 28, 7, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(552, 28, 8, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(553, 28, 9, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(554, 28, 10, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(555, 28, 11, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(556, 28, 12, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(557, 28, 13, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(558, 28, 14, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(559, 28, 15, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(560, 28, 16, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(561, 28, 17, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(562, 28, 18, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(563, 28, 19, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(564, 28, 20, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(565, 28, 21, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(566, 28, 22, '', '2026-02-05 11:47:15', '2026-02-05 11:47:15'),
(567, 28, 23, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(568, 28, 24, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(569, 29, 1, 'Best in Modern Barong (Male)', '2026-02-05 11:47:16', '2026-02-10 10:24:04'),
(570, 29, 2, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(571, 29, 3, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(572, 29, 4, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(573, 29, 5, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(574, 29, 6, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(575, 29, 7, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(576, 29, 8, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(577, 29, 9, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(578, 29, 10, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(579, 29, 11, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(580, 29, 12, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(581, 29, 13, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(582, 29, 14, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(583, 29, 15, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(584, 29, 16, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(585, 29, 17, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(586, 29, 18, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(587, 29, 19, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(588, 29, 20, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(589, 29, 21, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(590, 29, 22, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(591, 29, 23, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(592, 29, 24, '', '2026-02-05 11:47:16', '2026-02-05 11:47:16'),
(593, 30, 1, 'Miss Balatan 2026', '2026-02-05 11:58:41', '2026-02-10 09:23:03'),
(594, 30, 2, 'Miss Balatan Pintakasi 2026', '2026-02-05 11:58:41', '2026-02-10 09:28:55'),
(595, 30, 3, 'Miss Balatan Tourism 2026', '2026-02-05 11:58:41', '2026-02-10 09:24:48'),
(596, 30, 4, '1st Runner up', '2026-02-05 11:58:41', '2026-02-10 09:25:34'),
(597, 30, 5, '2nd Runner up', '2026-02-05 11:58:41', '2026-02-10 09:25:40'),
(598, 30, 6, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(599, 30, 7, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(600, 30, 8, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(601, 30, 9, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(602, 30, 10, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(603, 30, 11, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(604, 30, 12, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(605, 30, 13, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(606, 30, 14, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(607, 30, 15, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(608, 30, 16, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(609, 30, 17, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(610, 30, 18, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(611, 30, 19, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(612, 30, 20, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(613, 30, 21, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(614, 30, 22, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(615, 30, 23, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(616, 30, 24, '', '2026-02-05 11:58:41', '2026-02-05 11:58:41'),
(617, 31, 1, 'Mister Balatan 2026', '2026-02-05 11:59:17', '2026-02-10 09:26:03'),
(618, 31, 2, 'Mister Balatan Pintakasi 2026', '2026-02-05 11:59:17', '2026-02-10 09:27:16'),
(619, 31, 3, 'Mister Balatan Tourism 2026', '2026-02-05 11:59:17', '2026-02-10 09:27:42'),
(620, 31, 4, '1st Runner up', '2026-02-05 11:59:17', '2026-02-10 09:27:55'),
(621, 31, 5, '2nd Runner up', '2026-02-05 11:59:17', '2026-02-10 09:28:10'),
(622, 31, 6, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(623, 31, 7, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(624, 31, 8, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(625, 31, 9, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(626, 31, 10, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(627, 31, 11, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(628, 31, 12, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(629, 31, 13, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(630, 31, 14, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(631, 31, 15, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(632, 31, 16, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(633, 31, 17, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(634, 31, 18, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(635, 31, 19, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(636, 31, 20, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(637, 31, 21, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(638, 31, 22, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(639, 31, 23, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17'),
(640, 31, 24, '', '2026-02-05 11:59:17', '2026-02-05 11:59:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `active_team_id` (`active_team_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `active_team_id` (`active_team_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8275;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_3` FOREIGN KEY (`active_team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_4` FOREIGN KEY (`active_team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
