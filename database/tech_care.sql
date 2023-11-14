-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2023 at 11:51 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `follow_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `follow_id`, `created_at`, `updated_at`) VALUES
(1, 10, 9, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(2, 9, 26, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(3, 26, 14, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(4, 13, 32, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(5, 12, 31, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(6, 28, 35, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(7, 34, 15, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(8, 26, 38, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(9, 12, 23, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(10, 26, 36, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(11, 8, 12, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(12, 32, 32, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(13, 31, 37, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(14, 11, 14, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(15, 38, 23, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(16, 31, 9, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(17, 15, 13, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(18, 38, 10, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(19, 33, 30, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(20, 13, 11, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(21, 38, 9, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(22, 33, 34, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(23, 30, 29, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(24, 14, 12, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(25, 14, 21, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(26, 16, 23, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(27, 13, 24, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(28, 37, 38, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(29, 10, 25, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(30, 19, 22, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(31, 17, 20, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(32, 25, 38, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(33, 21, 35, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(34, 37, 16, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(35, 28, 25, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(36, 31, 26, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(37, 18, 8, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(38, 23, 18, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(39, 24, 37, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(40, 29, 28, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(41, 27, 31, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(42, 25, 9, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(43, 30, 36, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(44, 36, 11, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(45, 30, 23, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(46, 9, 22, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(47, 32, 30, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(48, 13, 27, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(49, 11, 22, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(50, 13, 36, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(51, 21, 15, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(52, 32, 24, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(53, 16, 18, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(54, 35, 38, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(55, 33, 29, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(56, 9, 13, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(57, 14, 23, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(58, 36, 29, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(59, 17, 27, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(60, 35, 18, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(61, 29, 16, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(62, 21, 29, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(63, 26, 18, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(64, 31, 30, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(65, 23, 26, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(66, 33, 9, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(67, 27, 24, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(68, 13, 23, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(69, 20, 20, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(70, 11, 32, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(71, 25, 19, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(72, 18, 15, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(73, 33, 17, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(74, 8, 21, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(75, 32, 38, '2023-11-13 11:17:11', '2023-11-13 11:17:11'),
(78, 20, 15, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(79, 37, 19, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(80, 29, 10, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(81, 23, 17, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(82, 34, 36, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(83, 32, 14, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(84, 30, 34, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(85, 13, 13, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(86, 26, 23, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(87, 30, 21, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(88, 32, 33, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(89, 38, 37, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(90, 19, 16, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(91, 11, 38, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(92, 23, 31, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(93, 11, 29, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(94, 36, 35, '2023-11-13 11:17:15', '2023-11-13 11:17:15'),
(96, 26, 16, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(97, 8, 24, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(98, 20, 31, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(99, 8, 28, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(100, 10, 20, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(101, 34, 25, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(102, 24, 12, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(103, 22, 16, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(104, 30, 26, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(105, 37, 18, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(106, 13, 26, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(107, 11, 23, '2023-11-13 11:17:16', '2023-11-13 11:17:16'),
(109, 13, 8, '2023-11-14 13:42:52', '2023-11-14 13:42:52'),
(110, 8, 20, '2023-11-14 13:47:23', '2023-11-14 13:47:23'),
(111, 8, 29, '2023-11-14 15:42:02', '2023-11-14 15:42:02'),
(112, 8, 41, '2023-11-14 17:35:25', '2023-11-14 17:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `created_at`, `updated_at`) VALUES
(1, 21, 46, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(2, 10, 78, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(3, 36, 70, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(4, 28, 72, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(5, 32, 54, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(6, 38, 9, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(8, 15, 92, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(9, 14, 98, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(10, 21, 20, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(11, 20, 9, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(13, 14, 50, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(14, 26, 81, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(15, 26, 46, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(17, 29, 8, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(18, 35, 67, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(19, 35, 23, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(21, 26, 9, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(22, 30, 30, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(23, 27, 68, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(24, 22, 48, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(25, 10, 42, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(26, 8, 19, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(28, 24, 21, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(29, 33, 75, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(30, 8, 96, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(33, 36, 12, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(34, 22, 94, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(35, 9, 10, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(36, 10, 16, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(39, 35, 54, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(40, 32, 49, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(41, 29, 100, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(42, 24, 41, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(45, 25, 83, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(46, 9, 6, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(47, 32, 87, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(48, 10, 92, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(49, 29, 83, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(50, 27, 71, '2023-11-13 11:13:58', '2023-11-13 11:13:58'),
(51, 35, 43, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(52, 36, 7, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(53, 13, 73, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(55, 26, 65, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(57, 29, 40, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(58, 15, 2, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(59, 22, 3, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(60, 21, 99, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(61, 24, 1, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(63, 20, 22, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(64, 33, 94, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(65, 25, 16, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(67, 16, 57, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(68, 15, 25, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(71, 26, 23, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(73, 11, 94, '2023-11-13 11:13:59', '2023-11-13 11:13:59'),
(75, 21, 4, '2023-11-13 11:15:07', '2023-11-13 11:15:07'),
(78, 12, 97, '2023-11-13 11:15:07', '2023-11-13 11:15:07'),
(79, 13, 15, '2023-11-13 11:15:07', '2023-11-13 11:15:07'),
(81, 30, 83, '2023-11-13 11:15:07', '2023-11-13 11:15:07'),
(82, 19, 29, '2023-11-13 11:15:07', '2023-11-13 11:15:07'),
(83, 34, 4, '2023-11-13 11:15:07', '2023-11-13 11:15:07'),
(85, 34, 36, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(86, 18, 47, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(87, 34, 19, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(88, 19, 15, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(89, 34, 2, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(90, 22, 61, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(91, 17, 88, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(92, 38, 49, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(95, 29, 80, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(96, 8, 79, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(99, 33, 6, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(100, 28, 79, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(101, 19, 62, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(102, 30, 58, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(103, 11, 76, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(104, 23, 23, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(105, 11, 79, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(106, 18, 24, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(108, 33, 9, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(109, 38, 96, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(110, 32, 92, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(112, 23, 46, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(113, 29, 97, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(114, 16, 24, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(115, 30, 40, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(117, 15, 68, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(118, 18, 68, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(119, 12, 90, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(120, 27, 73, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(122, 28, 70, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(124, 27, 86, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(126, 23, 44, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(127, 9, 17, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(128, 31, 51, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(129, 27, 95, '2023-11-13 11:15:09', '2023-11-13 11:15:09'),
(132, 18, 64, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(133, 10, 20, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(134, 11, 5, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(135, 11, 85, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(137, 31, 20, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(138, 24, 97, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(139, 26, 40, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(141, 25, 52, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(142, 25, 53, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(143, 30, 66, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(144, 27, 26, '2023-11-13 11:15:14', '2023-11-13 11:15:14'),
(146, 29, 2, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(147, 16, 74, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(150, 32, 10, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(152, 37, 56, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(155, 14, 46, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(157, 34, 94, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(158, 19, 88, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(159, 8, 78, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(160, 29, 55, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(161, 9, 44, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(162, 18, 91, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(163, 27, 8, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(164, 22, 88, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(166, 12, 82, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(168, 33, 96, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(169, 10, 8, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(170, 13, 43, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(171, 12, 23, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(172, 9, 85, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(173, 12, 47, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(174, 28, 59, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(175, 26, 69, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(176, 17, 80, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(177, 32, 93, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(178, 18, 27, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(179, 20, 74, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(181, 14, 55, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(182, 33, 65, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(183, 14, 32, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(184, 26, 80, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(185, 17, 51, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(186, 9, 40, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(187, 32, 73, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(188, 35, 14, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(189, 14, 76, '2023-11-13 11:15:15', '2023-11-13 11:15:15'),
(194, 8, 97, '2023-11-14 10:38:40', '2023-11-14 10:38:40'),
(195, 8, 77, '2023-11-14 10:39:14', '2023-11-14 10:39:14'),
(196, 8, 134, '2023-11-14 17:22:16', '2023-11-14 17:22:16'),
(197, 8, 91, '2023-11-14 17:48:00', '2023-11-14 17:48:00'),
(198, 8, 66, '2023-11-14 17:48:04', '2023-11-14 17:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(9, '2023_11_12_170521_create_tweets_table', 3),
(10, '2023_11_12_170554_create_followers_table', 3),
(11, '2023_11_13_164729_create_likes_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `tweet`, `file`, `created_at`, `updated_at`) VALUES
(1, 31, 'Hatter. \'It isn\'t directed at all,\' said Alice: \'allow me to him: She gave me a pair of.', 'https://via.placeholder.com/800x220.png/0077ff?text=nature+omnis', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(2, 28, 'I suppose?\' said Alice. \'Then you.', 'https://via.placeholder.com/800x220.png/006655?text=nature+facilis', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(3, 36, 'A Mad Tea-Party There was no use speaking to a lobster--\' (Alice began to get dry again: they.', 'https://via.placeholder.com/800x220.png/00ff55?text=nature+qui', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(4, 12, 'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked on in the pictures of him), while the Dodo.', 'https://via.placeholder.com/800x220.png/004422?text=nature+est', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(5, 22, 'As she said to the beginning again?\' Alice ventured to say. \'What is it?\' he said, \'on and off.', 'https://via.placeholder.com/800x220.png/00aa66?text=nature+consequatur', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(6, 16, 'She gave me a good deal frightened by this very sudden change, but very politely: \'Did you speak?\' \'Not I!\' said the Queen. \'I haven\'t the least idea what.', 'https://via.placeholder.com/800x220.png/001100?text=nature+quibusdam', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(7, 12, 'WHATEVER?\' persisted the King. \'Then it wasn\'t very civil of you to.', 'https://via.placeholder.com/800x220.png/007733?text=nature+autem', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(8, 18, 'CHAPTER V. Advice from a bottle marked \'poison,\' it is you hate--C and D,\' she added in an offended tone, \'was, that the cause of this remark, and thought to.', 'https://via.placeholder.com/800x220.png/002200?text=nature+architecto', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(9, 10, 'Alice had no idea how confusing it is all the creatures order one about, and called out, \'Sit down, all.', 'https://via.placeholder.com/800x220.png/003300?text=nature+ipsum', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(10, 24, 'Pigeon. \'I\'m NOT a serpent!\' said Alice very politely; but she stopped hastily, for the immediate adoption.', 'https://via.placeholder.com/800x220.png/000044?text=nature+doloribus', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(11, 18, 'Panther were sharing a pie--\' [later editions continued as.', 'https://via.placeholder.com/800x220.png/0099ee?text=nature+quae', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(12, 20, 'O Mouse!\' (Alice thought this must ever be A secret, kept from all the other.', 'https://via.placeholder.com/800x220.png/00ff77?text=nature+delectus', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(13, 37, 'It\'s the most important piece of rudeness was more hopeless.', 'https://via.placeholder.com/800x220.png/00aa11?text=nature+ab', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(14, 21, 'Dormouse is asleep again,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said with some surprise that the way wherever she wanted much to know, but the.', 'https://via.placeholder.com/800x220.png/00bb99?text=nature+ea', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(15, 34, 'Duchess; \'and that\'s the jury-box,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down.', 'https://via.placeholder.com/800x220.png/003399?text=nature+iure', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(16, 27, 'And he got up very sulkily and crossed over to the Mock Turtle is.\' \'It\'s the Cheshire Cat, she was quite surprised to see.', 'https://via.placeholder.com/800x220.png/00ee00?text=nature+sit', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(17, 12, 'And so it was a table in the common way. So they had at the corners: next the ten courtiers; these were all in bed!\' On various pretexts.', 'https://via.placeholder.com/800x220.png/00ffaa?text=nature+est', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(18, 35, 'King: \'leave out that the way of expecting nothing but the Dormouse turned out, and, by the hedge!\' then silence, and then a great crowd assembled about.', 'https://via.placeholder.com/800x220.png/005599?text=nature+officia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(19, 12, 'Alice did not answer, so Alice went on for some minutes. The Caterpillar was the first witness,\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice in a low, trembling voice. \'There\'s more.', 'https://via.placeholder.com/800x220.png/00ff44?text=nature+dolores', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(20, 12, 'Bill\'s got to grow up any more if you\'d like it very nice, (it.', 'https://via.placeholder.com/800x220.png/00aa99?text=nature+aut', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(21, 12, 'THAT in a great letter, nearly as large as himself, and this was not much surprised at this, that she could not remember the simple rules their friends had taught them: such as, \'Sure.', 'https://via.placeholder.com/800x220.png/00ee77?text=nature+quidem', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(22, 16, 'Then they both sat silent.', 'https://via.placeholder.com/800x220.png/00cc77?text=nature+fugiat', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(23, 22, 'I mean what I could not join the dance? Will.', 'https://via.placeholder.com/800x220.png/00bbee?text=nature+perferendis', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(24, 28, 'I don\'t keep the same thing as \"I eat what I see\"!\' \'You might just as well be at school at once.\' However, she did.', 'https://via.placeholder.com/800x220.png/00ff00?text=nature+aut', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(25, 14, 'By the time they had settled.', 'https://via.placeholder.com/800x220.png/006611?text=nature+dolorum', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(26, 19, 'I look like it?\' he.', 'https://via.placeholder.com/800x220.png/001122?text=nature+eius', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(27, 24, 'Alice did not venture to say anything. \'Why,\' said the King. \'Nothing whatever,\'.', 'https://via.placeholder.com/800x220.png/002266?text=nature+labore', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(28, 25, 'And the Gryphon remarked: \'because they lessen from day to day.\' This was not even get her head impatiently; and, turning to Alice, and she had forgotten the little golden key and hurried upstairs.', 'https://via.placeholder.com/800x220.png/001111?text=nature+debitis', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(29, 24, 'Hatter. \'You might just as well. The twelve jurors were all turning into little cakes as they.', 'https://via.placeholder.com/800x220.png/0000aa?text=nature+sed', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(30, 37, 'Soon her eye fell on a.', 'https://via.placeholder.com/800x220.png/00cc44?text=nature+quidem', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(31, 10, 'Caterpillar; and it put more simply--\"Never imagine yourself not to lie down upon their faces. There was certainly English. \'I don\'t see,\' said the Mock Turtle. \'Certainly not!\' said Alice.', 'https://via.placeholder.com/800x220.png/0011dd?text=nature+tempore', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(32, 22, 'Alice as she stood looking at the Hatter, and he poured a little nervous about this; \'for it might appear to others that what you like,\' said the Mock Turtle.', 'https://via.placeholder.com/800x220.png/003366?text=nature+rem', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(33, 8, 'This question the Dodo suddenly called out \'The race is over!\' and they all cheered.', 'https://via.placeholder.com/800x220.png/00ee44?text=nature+libero', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(34, 26, 'Alice, \'but I know THAT well enough; don\'t be particular--Here, Bill! catch hold of its mouth again, and.', 'https://via.placeholder.com/800x220.png/009944?text=nature+mollitia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(35, 34, 'First, she dreamed of little Alice was just in time to wash the things between whiles.\' \'Then you shouldn\'t talk,\' said the Lory. Alice replied very solemnly. Alice was a.', 'https://via.placeholder.com/800x220.png/00bb00?text=nature+velit', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(36, 29, 'Pigeon, raising its voice to its children.', 'https://via.placeholder.com/800x220.png/000099?text=nature+libero', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(37, 19, 'Queen. \'I haven\'t opened it yet,\' said the Caterpillar. \'Is that the cause of this rope--Will the roof off.\' After a while, finding.', 'https://via.placeholder.com/800x220.png/0088ee?text=nature+et', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(38, 18, 'Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said the Dormouse; \'--well in.\' This answer so confused poor Alice.', 'https://via.placeholder.com/800x220.png/004433?text=nature+assumenda', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(39, 31, 'Lobster; I heard him.', 'https://via.placeholder.com/800x220.png/000055?text=nature+quia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(40, 18, 'Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not join the dance? Will.', 'https://via.placeholder.com/800x220.png/000033?text=nature+dolor', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(41, 15, 'I never understood what it meant till now.\' \'If that\'s all I can kick a little!\' She drew her foot slipped, and in his throat,\' said the King, looking.', 'https://via.placeholder.com/800x220.png/004499?text=nature+adipisci', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(42, 27, 'But the snail replied \"Too far, too far!\" and gave a little scream, half of them--and it belongs to the jury, of course--\"I GAVE.', 'https://via.placeholder.com/800x220.png/002299?text=nature+sunt', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(43, 12, 'Gryphon. \'The reason is,\' said.', 'https://via.placeholder.com/800x220.png/00cc99?text=nature+id', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(44, 22, 'Said his father; \'don\'t give yourself airs! Do you think you could only hear whispers now and then a voice of the cupboards as she spoke. (The.', 'https://via.placeholder.com/800x220.png/0099bb?text=nature+ad', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(45, 18, 'I\'ll set Dinah at you!\' There was a long way back, and barking hoarsely.', 'https://via.placeholder.com/800x220.png/007755?text=nature+atque', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(46, 22, 'Alice, jumping up and.', 'https://via.placeholder.com/800x220.png/00dd77?text=nature+illum', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(47, 34, 'NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'as all the time.', 'https://via.placeholder.com/800x220.png/005500?text=nature+dolor', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(48, 38, 'Time as well as I was sent for.\' \'You ought to be a LITTLE larger, sir, if you wouldn\'t have come here.\' Alice didn\'t think that will be much the same side of the court.', 'https://via.placeholder.com/800x220.png/006622?text=nature+qui', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(49, 19, 'Gryphon, sighing in his turn; and both creatures hid their faces in their mouths--and they\'re all over with William the Conqueror.\' (For, with all their simple sorrows, and find.', 'https://via.placeholder.com/800x220.png/0055cc?text=nature+esse', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(50, 36, 'Off--\' \'Nonsense!\' said Alice, (she had grown up,\' she said to herself, as she spoke, but no result seemed to be two.', 'https://via.placeholder.com/800x220.png/006622?text=nature+quia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(51, 30, 'Queen\'s shrill cries to the Classics master, though.', 'https://via.placeholder.com/800x220.png/005500?text=nature+suscipit', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(52, 30, 'Alice, seriously, \'I\'ll have nothing more happened, she decided on.', 'https://via.placeholder.com/800x220.png/002233?text=nature+at', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(53, 31, 'Alice thought over all she could not stand, and.', 'https://via.placeholder.com/800x220.png/004477?text=nature+ut', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(54, 18, 'BUSY BEE,\" but it did not dare to disobey, though she knew that it would all come wrong, and she did not venture to go on. \'And.', 'https://via.placeholder.com/800x220.png/00dd44?text=nature+molestiae', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(55, 36, 'Hatter were having tea at it: a Dormouse was sitting on the top of his pocket, and.', 'https://via.placeholder.com/800x220.png/002200?text=nature+quia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(56, 20, 'Majesty,\' he began. \'You\'re a very curious sensation, which puzzled her too much, so she sat on, with closed eyes, and half of fright and half of fright and half believed.', 'https://via.placeholder.com/800x220.png/00eeff?text=nature+et', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(57, 20, 'Pray how did you ever saw. How she longed to get an opportunity of adding, \'You\'re looking for.', 'https://via.placeholder.com/800x220.png/00dd55?text=nature+autem', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(58, 34, 'Knave of Hearts, and I shall be a queer thing, to be.', 'https://via.placeholder.com/800x220.png/00cc11?text=nature+quia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(59, 31, 'Indeed, she had plenty of time as she went back to the little door, so she turned to the law, And argued each case with my.', 'https://via.placeholder.com/800x220.png/00aa66?text=nature+non', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(60, 22, 'They are waiting on the look-out for serpents night and day! Why, I do wonder what I say,\' the Mock Turtle. \'And how many hours a day or two.', 'https://via.placeholder.com/800x220.png/004411?text=nature+voluptatem', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(61, 26, 'Gryphon. \'I mean, what makes them sour--and camomile that makes.', 'https://via.placeholder.com/800x220.png/00ccee?text=nature+asperiores', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(62, 37, 'Alice\'s shoulder as she could, for her to speak with. Alice.', 'https://via.placeholder.com/800x220.png/003366?text=nature+inventore', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(63, 14, 'So Alice began to repeat it, but her head struck against the roof of the words \'DRINK ME,\' but nevertheless she uncorked it and put it in the direction it.', 'https://via.placeholder.com/800x220.png/0099cc?text=nature+quas', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(64, 23, 'I can\'t get out again. Suddenly she came suddenly upon an open place, with a pair of the house, and found herself at last she spread out her hand again, and went stamping about, and crept.', 'https://via.placeholder.com/800x220.png/002266?text=nature+et', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(65, 18, 'Then she went on. \'Or would you tell me,\' said Alice, \'a great girl.', 'https://via.placeholder.com/800x220.png/003300?text=nature+fuga', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(66, 18, 'Alice with one of its voice. \'Back to land again, and put it right; \'not that it felt quite strange at first; but she got to come.', 'https://via.placeholder.com/800x220.png/001166?text=nature+suscipit', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(67, 11, 'I only wish people knew that: then they wouldn\'t be in a large one, but it did not look at me like that!\' By this time the Queen said to herself, \'if one only knew how to spell.', 'https://via.placeholder.com/800x220.png/002288?text=nature+ab', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(68, 9, 'Pigeon, but in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping she might find another key on it, for she.', 'https://via.placeholder.com/800x220.png/006666?text=nature+eveniet', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(69, 34, 'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice.', 'https://via.placeholder.com/800x220.png/000055?text=nature+voluptatem', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(70, 31, 'Dormouse. \'Write that down,\' the King said gravely, \'and go on with the birds hurried off at once, with a whiting. Now you know.\' \'Who is it.', 'https://via.placeholder.com/800x220.png/008888?text=nature+eveniet', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(71, 35, 'I wish I could say if I fell off the mushroom, and raised herself to some tea and bread-and-butter, and went in. The door led right into a.', 'https://via.placeholder.com/800x220.png/001199?text=nature+porro', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(72, 20, 'Ma!\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you turned a.', 'https://via.placeholder.com/800x220.png/0011dd?text=nature+repudiandae', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(73, 24, 'The great question certainly was.', 'https://via.placeholder.com/800x220.png/0011ee?text=nature+modi', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(74, 25, 'Mock Turtle yet?\' \'No,\' said the Duchess; \'and most things twinkled after that--only the March Hare had just begun \'Well, of all this time. \'I want a clean cup,\' interrupted the Gryphon.', 'https://via.placeholder.com/800x220.png/0022bb?text=nature+veritatis', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(75, 22, 'Alice, rather doubtfully, as she went on in a great hurry to change the subject. \'Go on with the next verse,\' the Gryphon in an.', 'https://via.placeholder.com/800x220.png/0000cc?text=nature+fugiat', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(76, 19, 'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice.', 'https://via.placeholder.com/800x220.png/001144?text=nature+totam', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(77, 21, 'Mind now!\' The poor little feet, I wonder what Latitude was, or Longitude either, but thought they were gardeners, or.', 'https://via.placeholder.com/800x220.png/006622?text=nature+iste', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(78, 25, 'Cheshire Cat sitting on the end of the treat. When.', 'https://via.placeholder.com/800x220.png/005544?text=nature+maiores', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(79, 16, 'Alice, so please your Majesty!\' the soldiers shouted in reply. \'Idiot!\' said the Cat, and vanished again. Alice waited a little, \'From the Queen.', 'https://via.placeholder.com/800x220.png/001166?text=nature+sed', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(80, 10, 'SOMEBODY ought to have got in.', 'https://via.placeholder.com/800x220.png/001133?text=nature+facere', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(81, 9, 'The pepper when he sneezes; For he can thoroughly enjoy The pepper when he sneezes: He only does it to his son, \'I feared it might happen any minute, \'and then,\' thought she, \'what would become of.', 'https://via.placeholder.com/800x220.png/00ddbb?text=nature+cum', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(82, 13, 'Queen: so she set to partners--\' \'--change lobsters, and retire in same order,\'.', 'https://via.placeholder.com/800x220.png/0077bb?text=nature+dicta', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(83, 32, 'Bill\'s got the other--Bill! fetch it.', 'https://via.placeholder.com/800x220.png/00ddbb?text=nature+delectus', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(84, 32, 'There could be beheaded, and that if you were INSIDE, you might like to be found: all she could not swim. He sent them word I had to.', 'https://via.placeholder.com/800x220.png/00dd99?text=nature+quia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(85, 14, 'And she began nursing her child.', 'https://via.placeholder.com/800x220.png/000066?text=nature+libero', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(86, 13, 'Caterpillar seemed to be a lesson to you never had fits, my dear, I think?\' he said in a large kitchen, which was the first question, you know.\' \'And what are they doing?\' Alice whispered to.', 'https://via.placeholder.com/800x220.png/00dddd?text=nature+quo', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(87, 16, 'Mock Turtle at last, they must be the right thing to.', 'https://via.placeholder.com/800x220.png/004433?text=nature+eveniet', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(88, 30, 'However, when they arrived, with a little worried. \'Just about as much use in knocking,\' said the Mouse.', 'https://via.placeholder.com/800x220.png/003388?text=nature+molestiae', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(89, 15, 'Alice could see, when she had nothing yet,\' Alice replied very politely, \'if I had our Dinah here, I know all the children she knew, who might do.', 'https://via.placeholder.com/800x220.png/003333?text=nature+laborum', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(90, 29, 'Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a low.', 'https://via.placeholder.com/800x220.png/007755?text=nature+rerum', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(91, 18, 'All the time when I grow up, I\'ll write one--but I\'m grown up now,\' she added in an offended.', 'https://via.placeholder.com/800x220.png/00ffdd?text=nature+commodi', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(92, 14, 'Though they were mine before. If I or she fell very slowly, for she.', 'https://via.placeholder.com/800x220.png/0055bb?text=nature+mollitia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(93, 16, 'Seven looked up eagerly, half hoping that the hedgehog a blow with its arms folded, frowning like a steam-engine when she got up, and there they.', 'https://via.placeholder.com/800x220.png/0066cc?text=nature+ut', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(94, 35, 'Dormouse, and repeated her question. \'Why did you do lessons?\' said Alice, and she dropped it hastily, just in time to see it trot away quietly into the court, by the.', 'https://via.placeholder.com/800x220.png/009977?text=nature+et', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(95, 15, 'Alice, \'and why it is you hate--C and D,\' she added in a court of justice before, but she did not like to show you! A little bright-eyed.', 'https://via.placeholder.com/800x220.png/0011cc?text=nature+tempore', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(96, 36, 'Dormouse say?\' one of the garden, where Alice could see it written down: but I think that will be When they take us up and throw us, with the edge of her.', 'https://via.placeholder.com/800x220.png/00ff11?text=nature+fuga', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(97, 28, 'Fury: \"I\'ll try the patience of an oyster!\' \'I wish I could show you our cat Dinah: I think you\'d better finish the story for yourself.\' \'No.', 'https://via.placeholder.com/800x220.png/003333?text=nature+quia', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(98, 29, 'I had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a long, low.', 'https://via.placeholder.com/800x220.png/001111?text=nature+quasi', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(99, 17, 'And the muscular strength, which it gave to my jaw, Has lasted the rest of it now in sight, and no one could possibly hear you.\' And.', 'https://via.placeholder.com/800x220.png/008811?text=nature+aut', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(100, 37, 'I shall remember it in time,\' said the Dodo could not be denied, so she went on again:-- \'I didn\'t know that you\'re.', 'https://via.placeholder.com/800x220.png/00ddaa?text=nature+accusamus', '2023-11-13 11:09:55', '2023-11-13 11:09:55'),
(133, 8, 'Test submission last date', NULL, '2023-11-14 16:46:27', '2023-11-14 16:46:27'),
(134, 41, 'This is my first tweet', NULL, '2023-11-14 17:21:09', '2023-11-14 17:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `mobile_no`, `email`, `avatar`, `cover`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Mohammad', 'Arman', 'mohammad_arman', '01521225987', 'mohammadarman.iiuc.cse@gmail.com', '', NULL, NULL, '$2y$12$dvxEJbL8Ry0TKGUNGRLOtuzKUg0LE5OAWy33JjLbQ5BhgKDjRngKy', NULL, '2023-11-11 13:31:06', '2023-11-11 13:31:06'),
(9, 'Mr.', 'Yessenia O\'Keefe', 'voluptatem33', '+14146855780', 'connie.koss@example.net', 'https://randomuser.me/api/portraits/men/89.jpg', 'https://via.placeholder.com/800x220.png/005533?text=nature+quia', '2023-11-13 11:04:53', '$2y$12$kE2nZvO1jiENqW7wujiuae5rx0d.tP6JeepS/Ly/ynK5erD0RjeCa', '3sNA2r2iLi', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(10, 'Mr.', 'Euna Gibson', 'et26', '+12407712079', 'icie.gorczany@example.net', 'https://randomuser.me/api/portraits/men/36.jpg', 'https://via.placeholder.com/800x220.png/0099aa?text=nature+soluta', '2023-11-13 11:04:54', '$2y$12$JaZH.m8Jy/s34kPBXntpwu0yR8epejdbUJcQlp9cEfHYQo6Zd3yhq', 'DZwBJXm3FR', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(11, 'Mr.', 'Delta Franecki', 'iste24', '+19499850133', 'joyce22@example.com', 'https://randomuser.me/api/portraits/men/58.jpg', 'https://via.placeholder.com/800x220.png/00aa88?text=nature+sed', '2023-11-13 11:04:54', '$2y$12$j5z9AKqa4APfKa19ykDGMOrh1uz2zW0RrpgorS1t5aSYZucej4rWy', '3z8KZ1NrVm', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(12, 'Mr.', 'Claudia Orn', 'ut19', '+16092026405', 'jonatan85@example.net', 'https://randomuser.me/api/portraits/men/5.jpg', 'https://via.placeholder.com/800x220.png/006622?text=nature+omnis', '2023-11-13 11:04:54', '$2y$12$tHJYcqWhuc.1VsRHcHD1S./lJpe50P2Dt3Fnz60cteg/8IR2NVOr.', '9RPF5Pz21m', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(13, 'Mr.', 'Kaleb Crona', 'eos45', '+19705275295', 'eschimmel@example.org', 'https://randomuser.me/api/portraits/men/40.jpg', 'https://via.placeholder.com/800x220.png/0077bb?text=nature+tempore', '2023-11-13 11:04:55', '$2y$12$wF2Gp1Ch92IgB4NqZmy5ie4EGOcBCrp.7Ephf6ACSkG47zDyfRkBC', 'v2nUZxTZz6', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(14, 'Mr.', 'Dr. Garnett Abernathy PhD', 'id67', '+19514496084', 'hermiston.lucie@example.com', 'https://randomuser.me/api/portraits/men/88.jpg', 'https://via.placeholder.com/800x220.png/0000cc?text=nature+quod', '2023-11-13 11:04:55', '$2y$12$V09maKUUDvBlMrjz9HunI.Qzt4pe1xrB/ouSZ8YULH2I6My0hExTu', 'Gd3F8NJCol', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(15, 'Mr.', 'Ryley Hirthe II', 'nostrum71', '+14193662717', 'may.borer@example.org', 'https://randomuser.me/api/portraits/men/85.jpg', 'https://via.placeholder.com/800x220.png/0077aa?text=nature+reprehenderit', '2023-11-13 11:04:55', '$2y$12$h5hLbYqxUx.EJD1rj4Rjo.r12srwCj/PFHvrvk0p4sUNt86bqLZoK', 'H2JJeEc2L6', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(16, 'Mr.', 'Prudence Monahan', 'consequatur5', '+15308958639', 'awillms@example.org', 'https://randomuser.me/api/portraits/men/24.jpg', 'https://via.placeholder.com/800x220.png/00aadd?text=nature+voluptas', '2023-11-13 11:04:55', '$2y$12$XArsNBlsdUvvr7bG9rS3ZeAde.1df7oSsTSJzOK7p9mY/EVVA3yjK', 'HSDlg2d2YR', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(17, 'Mr.', 'Juliet Witting', 'nemo9', '+12317575402', 'rhettinger@example.net', 'https://randomuser.me/api/portraits/men/31.jpg', 'https://via.placeholder.com/800x220.png/00cc77?text=nature+asperiores', '2023-11-13 11:04:55', '$2y$12$bmsCMT5YwUSrdh9FgMxSCuc2kaTl7SrRdYV8tOtWVoHPb7FiLYgHO', 'm4e13yWzYn', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(18, 'Mr.', 'Dr. Hudson Brown Jr.', 'fugit13', '+16813303105', 'raphaelle.kilback@example.com', 'https://randomuser.me/api/portraits/men/95.jpg', 'https://via.placeholder.com/800x220.png/00dd77?text=nature+distinctio', '2023-11-13 11:04:56', '$2y$12$fHwHOj3JsvgsjBZVB4UycelDSnq8TbzZmT9GAvVLvEHLEMMz5AAP2', 'gEk4yGyc1c', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(19, 'Mr.', 'Javier Bauch', 'ad49', '+14069612620', 'alf.jerde@example.org', 'https://randomuser.me/api/portraits/men/72.jpg', 'https://via.placeholder.com/800x220.png/009944?text=nature+nulla', '2023-11-13 11:04:56', '$2y$12$WrWAOQXGWxBVt0x9IcjvAeQY05Yw36Zro.k3JOm0dth5GCwi2No0S', 'E3mvRGhRMN', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(20, 'Mr.', 'Pablo Reynolds', 'pariatur19', '+13393189635', 'caden.romaguera@example.org', 'https://randomuser.me/api/portraits/men/58.jpg', 'https://via.placeholder.com/800x220.png/005522?text=nature+est', '2023-11-13 11:04:56', '$2y$12$sNIN8W4NsuYbHbK.J9ssgeAGTUBJiY6VVW90zjsgmj6OgljNeeO9.', 's0tVOMQZfb', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(21, 'Mr.', 'Kali Ryan', 'rerum39', '+19864661653', 'elaina.luettgen@example.org', 'https://randomuser.me/api/portraits/men/45.jpg', 'https://via.placeholder.com/800x220.png/002233?text=nature+et', '2023-11-13 11:04:56', '$2y$12$ocZWamQbTwBzGiclTQHG4uqxNGXvdQ43hfDMhPfAkqDy4y6D7xe0W', 'iJNEhVCew2', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(22, 'Mr.', 'Robbie Schoen', 'aut31', '+13259200875', 'adrianna.murray@example.net', 'https://randomuser.me/api/portraits/men/48.jpg', 'https://via.placeholder.com/800x220.png/00ff88?text=nature+beatae', '2023-11-13 11:04:56', '$2y$12$2EA8IqDVcbouCrlislEvjuQqby3D4VRaoIOII.tLYK1RsviHd.5kK', 'pjPB5YaCa6', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(23, 'Mr.', 'Prof. London Heller I', 'nobis48', '+12157722670', 'bernier.edwin@example.com', 'https://randomuser.me/api/portraits/men/73.jpg', 'https://via.placeholder.com/800x220.png/003333?text=nature+alias', '2023-11-13 11:04:57', '$2y$12$3qyIskL5bQzb/cThzt1tbutRRnv6gkvWsNzOA7HJsMihFWH1fAxo.', 'zywH1w62Yv', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(24, 'Mr.', 'Krystina Purdy', 'eum68', '+12019461686', 'lakin.colten@example.net', 'https://randomuser.me/api/portraits/men/65.jpg', 'https://via.placeholder.com/800x220.png/00aaaa?text=nature+et', '2023-11-13 11:04:57', '$2y$12$BF.OqqHIhxwwcchF8pfjaOcp5JIlMY99GyG6ZFXWHlltKmK81EdS6', 'UX11DBG6A2', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(25, 'Mr.', 'Ethyl Ziemann', 'dolorem37', '+16233429959', 'kenton93@example.org', 'https://randomuser.me/api/portraits/men/49.jpg', 'https://via.placeholder.com/800x220.png/004411?text=nature+dignissimos', '2023-11-13 11:04:57', '$2y$12$zlBiiGK1mhGI9hFj2PT/O.Xnk0YzgCp.fXagGV22hHcPvhybRTKd6', 'MXtqdwY61J', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(26, 'Mr.', 'Prof. Sally Rolfson', 'soluta71', '+16165874939', 'xprice@example.net', 'https://randomuser.me/api/portraits/men/71.jpg', 'https://via.placeholder.com/800x220.png/002244?text=nature+est', '2023-11-13 11:04:57', '$2y$12$6/oeUoYHplB2EhZw6XzAHerNSIS5RfMF799bBr2CsWiItqPbox7um', 'UJA6Cb1ZKi', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(27, 'Mr.', 'Dennis Rippin Sr.', 'voluptatum20', '+19722663938', 'olin93@example.net', 'https://randomuser.me/api/portraits/men/45.jpg', 'https://via.placeholder.com/800x220.png/0077ee?text=nature+hic', '2023-11-13 11:04:57', '$2y$12$6DX2RZ75pSLHHXTZa0wJSekS2IMSAX6ibSORpjdXId/BZSePCiUPS', 'U0E6QggVR8', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(28, 'Mr.', 'Sally Runte', 'reiciendis59', '+16802456788', 'vernie.fay@example.org', 'https://randomuser.me/api/portraits/men/88.jpg', 'https://via.placeholder.com/800x220.png/000088?text=nature+at', '2023-11-13 11:04:58', '$2y$12$9O9gw5RdUJqh1rJlyhi3s.wtj8PLSkRmd9kBv2q6dVQ92Vp1Qoc0a', 'HmdlG1ghfj', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(29, 'Mr.', 'Jeanne Adams', 'facere57', '+18707472824', 'miracle68@example.org', 'https://randomuser.me/api/portraits/men/21.jpg', 'https://via.placeholder.com/800x220.png/0033ff?text=nature+labore', '2023-11-13 11:04:58', '$2y$12$pknRNH/8Ryt9ro4t8RlAg.BRWJw2HvIJ9SuQl2jCZE3zjg.ZNaqaG', 'KgsXLxqMuJ', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(30, 'Mr.', 'Marvin Nader', 'deleniti42', '+14798155696', 'fritsch.breanna@example.org', 'https://randomuser.me/api/portraits/men/18.jpg', 'https://via.placeholder.com/800x220.png/007755?text=nature+enim', '2023-11-13 11:04:58', '$2y$12$rSXu6yLkzqNbU.z9Y7XvQeNMgoeAaUPqrmKX4SxpJJaybt/slAmay', 'deWIuzbinH', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(31, 'Mr.', 'Nya Braun', 'minima26', '+13254697563', 'terence.bauch@example.net', 'https://randomuser.me/api/portraits/men/14.jpg', 'https://via.placeholder.com/800x220.png/0055ff?text=nature+laborum', '2023-11-13 11:04:58', '$2y$12$sQ5UhDuAF4NGGx9PChbCyu/iRpMMhEhgze6zIy2eHwAnTEsuf1D4u', '4GLnY9xHQi', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(32, 'Mr.', 'Jordane Greenholt MD', 'vero45', '+13512354305', 'jerome.fisher@example.net', 'https://randomuser.me/api/portraits/men/49.jpg', 'https://via.placeholder.com/800x220.png/00ee99?text=nature+reiciendis', '2023-11-13 11:04:58', '$2y$12$Zoo13rezBd7RH46UT99N0.tDZc2bAAx84XXTPYjvleD6OWHeCWw7u', 'Z2NseyWtVa', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(33, 'Mr.', 'Florencio Muller', 'similique49', '+19848286079', 'cathryn.wiza@example.org', 'https://randomuser.me/api/portraits/men/66.jpg', 'https://via.placeholder.com/800x220.png/00ffee?text=nature+facere', '2023-11-13 11:04:59', '$2y$12$3Hdh09BbyyVHbTnEZSAMJeh0Dhcr1NIoACZKl/i6JCb7BdzwUMBg.', 'AoaE2Owjnm', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(34, 'Mr.', 'Andre Lesch', 'est67', '+17626799450', 'buckridge.brady@example.org', 'https://randomuser.me/api/portraits/men/25.jpg', 'https://via.placeholder.com/800x220.png/00dd00?text=nature+aut', '2023-11-13 11:04:59', '$2y$12$evL5VWV.3OFRGGhDN46//eOwerW0wspATRm/qkDFgplDqkCSIa0xa', '1EbdYQrY19', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(35, 'Mr.', 'Una King', 'praesentium72', '+13462844759', 'glakin@example.net', 'https://randomuser.me/api/portraits/men/23.jpg', 'https://via.placeholder.com/800x220.png/008866?text=nature+molestiae', '2023-11-13 11:04:59', '$2y$12$NKgRk884UOf/Ee47Z4bTYeTfHGyoCaaElhpdKYO7QSY1fJruEWE1q', 'WYlE87eWhs', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(36, 'Mr.', 'Melody Collins', 'neque49', '+13238454685', 'langworth.brando@example.net', 'https://randomuser.me/api/portraits/men/36.jpg', 'https://via.placeholder.com/800x220.png/00bb55?text=nature+saepe', '2023-11-13 11:04:59', '$2y$12$VgUxRM.WkEwXH0mwi76I5.4cPZc4/j/xSX0p6m1Nj8CLBNVg5.TXm', 'erBt7yLfmO', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(37, 'Mr.', 'Tate Ratke', 'sint17', '+12107881108', 'xrodriguez@example.net', 'https://randomuser.me/api/portraits/men/49.jpg', 'https://via.placeholder.com/800x220.png/00ee77?text=nature+provident', '2023-11-13 11:05:00', '$2y$12$uFJISG8q9FXwZKYm5ayVVuRBI4qj7vO9/WUkv2zCQfmfJxkM3h6VO', 'PQES03vnkJ', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(38, 'Mr.', 'Prof. Precious Fisher Jr.', 'officia21', '+15677466693', 'gherman@example.org', 'https://randomuser.me/api/portraits/men/57.jpg', 'https://via.placeholder.com/800x220.png/0033cc?text=nature+vel', '2023-11-13 11:05:00', '$2y$12$g2aPgnFEhtgW.JtYfqtMIOwl1IlGT7HL2C0PTLD1U2aVEcCoyVn3i', 'iWsUk4Uoeb', '2023-11-13 11:05:00', '2023-11-13 11:05:00'),
(41, 'Mr.', 'Zinnah', 'zinnah', '01521223456', 'zinnah@mbm.group', NULL, NULL, NULL, '$2y$12$GKZ4v1CAVN2q.sSjwPYyWOKVlTK0JoZVn2qeN.tu/W8eEjMlMjJdu', NULL, '2023-11-14 17:19:21', '2023-11-14 17:19:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `followers_user_id_follow_id_unique` (`user_id`,`follow_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_user_id_tweet_id_unique` (`user_id`,`tweet_id`),
  ADD KEY `likes_tweet_id_foreign` (`tweet_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tweets_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_mobile_no_unique` (`mobile_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_tweet_id_foreign` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
