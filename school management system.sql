-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2026 at 03:49 PM
-- Server version: 10.6.24-MariaDB
-- PHP Version: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kalabotrades_kalabotradesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `nrc_path` varchar(255) DEFAULT NULL,
  `grade12_path` varchar(255) DEFAULT NULL,
  `other_doc_path` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Under Review','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `full_name`, `email`, `phone`, `program`, `address`, `nrc_path`, `grade12_path`, `other_doc_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'student4', 'student4@gmail.com', '0975096323', 'electrical', 'kalabo', NULL, NULL, NULL, 'Approved', NULL, '2025-10-18 00:39:46'),
(2, 'munalula Chinyama musoka', 'munalula@gmail.com', '0977752657', 'ICT', 'PO BOX 930050', 'applications/nrc/Aw3mCpnR8goJcmad8qYfr6p4EWcp3gXWA4wNvu1D.png', 'applications/grade12/x5pBiPeYLFmXeAQXXkWAPuLxCvN0eIVPrdXc3Sbj.png', 'applications/others/NjGmASiNIrZiFQQGEh8jzqoRvlKm3tbnWdBklzrM.png', 'Approved', '2025-10-16 11:39:32', '2025-10-25 13:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `assign_class_teacher`
--

CREATE TABLE `assign_class_teacher` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_class_teacher`
--

INSERT INTO `assign_class_teacher` (`id`, `class_id`, `teacher_id`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 18, 0, 0, 1, '2025-10-16 19:32:06', '2025-10-16 19:32:06'),
(18, 2, 3, 0, 0, 1, '2025-12-19 18:30:32', '2025-12-19 18:30:32'),
(19, 1, 8, 0, 0, 1, '2026-01-07 08:21:17', '2026-01-07 08:21:17'),
(20, 1, 9, 0, 0, 1, '2026-01-07 08:21:17', '2026-01-07 08:21:17'),
(21, 6, 2, 0, 0, 1, '2026-01-07 08:21:46', '2026-01-07 08:21:46'),
(22, 6, 14, 0, 0, 1, '2026-01-07 08:21:46', '2026-01-07 08:21:46'),
(23, 4, 10, 0, 0, 1, '2026-01-07 08:22:09', '2026-01-07 08:22:09'),
(24, 4, 11, 0, 0, 1, '2026-01-07 08:22:09', '2026-01-07 08:22:09'),
(25, 3, 6, 0, 0, 1, '2026-01-07 08:22:38', '2026-01-07 08:22:38'),
(26, 3, 7, 0, 0, 1, '2026-01-07 08:22:38', '2026-01-07 08:22:38'),
(27, 10, 6, 0, 0, 1, '2026-01-07 10:01:08', '2026-01-07 10:01:08'),
(28, 10, 7, 0, 0, 1, '2026-01-07 10:01:08', '2026-01-07 10:01:08'),
(29, 17, 6, 0, 0, 1, '2026-01-07 10:01:44', '2026-01-07 10:01:44'),
(30, 17, 7, 0, 0, 1, '2026-01-07 10:01:44', '2026-01-07 10:01:44'),
(31, 9, 3, 0, 0, 1, '2026-01-15 09:54:17', '2026-01-15 09:54:17'),
(32, 16, 3, 0, 0, 1, '2026-01-15 09:54:33', '2026-01-15 09:54:33'),
(33, 11, 10, 0, 0, 1, '2026-01-15 09:55:02', '2026-01-15 09:55:02'),
(34, 11, 11, 0, 0, 1, '2026-01-15 09:55:02', '2026-01-15 09:55:02'),
(35, 18, 10, 0, 0, 1, '2026-01-15 09:55:16', '2026-01-15 09:55:16'),
(36, 18, 11, 0, 0, 1, '2026-01-15 09:55:16', '2026-01-15 09:55:16'),
(37, 13, 2, 0, 0, 1, '2026-01-15 09:55:44', '2026-01-15 09:55:44'),
(38, 13, 14, 0, 0, 1, '2026-01-15 09:55:44', '2026-01-15 09:55:44'),
(39, 20, 2, 0, 0, 1, '2026-01-15 09:56:01', '2026-01-15 09:56:01'),
(40, 20, 14, 0, 0, 1, '2026-01-15 09:56:01', '2026-01-15 09:56:01'),
(41, 8, 8, 0, 0, 1, '2026-01-15 09:56:33', '2026-01-15 09:56:33'),
(42, 8, 9, 0, 0, 1, '2026-01-15 09:56:33', '2026-01-15 09:56:33'),
(43, 15, 8, 0, 0, 1, '2026-01-15 09:56:49', '2026-01-15 09:56:49'),
(44, 15, 9, 0, 0, 1, '2026-01-15 09:56:49', '2026-01-15 09:56:49'),
(45, 5, 15, 0, 0, 1, '2026-01-15 12:22:44', '2026-01-15 12:22:44'),
(46, 12, 15, 0, 0, 1, '2026-01-15 12:23:00', '2026-01-15 12:23:00'),
(47, 19, 15, 0, 0, 1, '2026-01-15 12:23:11', '2026-01-15 12:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not read, 1: read',
  `created_date` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`, `message`, `file`, `status`, `created_date`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'hi👋', NULL, 1, 1766171088, '2025-12-19 19:04:48', '2026-01-07 09:52:41'),
(2, 1, 4, 'hi\r\n👋', NULL, 1, 1767778942, '2026-01-07 09:42:22', '2026-01-07 09:43:34'),
(3, 1, 4, 'where are you you are needed', NULL, 1, 1767778996, '2026-01-07 09:43:16', '2026-01-07 09:43:34'),
(4, 1, 9, 'hi', NULL, 1, 1767792947, '2026-01-07 13:35:47', '2026-01-07 13:36:16'),
(5, 1, 9, 'hello there', NULL, 1, 1767792962, '2026-01-07 13:36:02', '2026-01-07 13:36:16'),
(6, 9, 1, 'here is your document', '20260107013754mtwmawzb5twjeyiciyw0.xlsx', 1, 1767793074, '2026-01-07 13:37:54', '2026-01-07 13:38:34'),
(7, 1, 6, 'hello sir.', NULL, 1, 1767889593, '2026-01-08 16:26:33', '2026-01-08 16:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: active, 1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not, 1:yes',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `amount`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Automotive Engineering TTL1', 2500, 0, 0, 1, '2025-09-08 07:45:15', '2026-01-07 07:43:07'),
(2, 'Computer Studies TTL1', 2600, 0, 0, 1, '2025-09-08 08:15:13', '2026-01-07 07:43:19'),
(3, 'Electrical Technology TTL1', 2500, 0, 0, 1, '2025-09-08 19:11:58', '2026-01-07 07:43:35'),
(4, 'FDTT TTL1', 2500, 0, 0, 1, '2025-12-06 14:25:34', '2026-01-07 07:44:00'),
(5, 'Carpentry and joinery TTL1', 2500, 0, 0, 1, '2025-12-10 08:17:11', '2026-01-07 07:44:13'),
(6, 'General Agriculture TTL1', 2500, 0, 0, 1, '2025-12-19 18:12:01', '2026-01-07 07:44:27'),
(7, 'Bricklaying and Masonry TTL1', 2500, 0, 0, 1, '2025-12-19 18:12:37', '2026-01-07 07:44:43'),
(8, 'Automotive Engineering TTL2', 2500, 0, 0, 1, '2026-01-07 07:45:24', '2026-01-07 07:45:24'),
(9, 'Computer Studies TTL2', 2500, 0, 0, 1, '2026-01-07 07:46:05', '2026-01-07 07:46:05'),
(10, 'Electrical Technology TTL2', 2500, 0, 0, 1, '2026-01-07 07:47:17', '2026-01-07 07:47:17'),
(11, 'FDTT TTL2', 2500, 0, 0, 1, '2026-01-07 07:52:36', '2026-01-07 07:52:36'),
(12, 'Carpentry and joinery TTL2', 2500, 0, 0, 1, '2026-01-07 07:53:12', '2026-01-07 07:53:12'),
(13, 'General Agriculture TTL2', 2500, 0, 0, 1, '2026-01-07 07:53:46', '2026-01-07 07:53:46'),
(14, 'Bricklaying and Masonry TTL2', 2500, 0, 0, 1, '2026-01-07 07:54:18', '2026-01-07 07:54:18'),
(15, 'Automotive Engineering TTL3', 2500, 0, 0, 1, '2026-01-07 07:55:06', '2026-01-07 07:55:06'),
(16, 'Computer Studies TTL3', 2500, 0, 0, 1, '2026-01-07 07:56:59', '2026-01-07 07:56:59'),
(17, 'Electrical Technology TTL3', 2500, 0, 0, 1, '2026-01-07 07:57:35', '2026-01-07 07:57:35'),
(18, 'FDTT TTL3', 2500, 0, 0, 1, '2026-01-07 07:58:14', '2026-01-07 07:58:14'),
(19, 'Carpentry and joinery TTL3', 2500, 0, 0, 1, '2026-01-07 07:58:42', '2026-01-07 07:58:42'),
(20, 'General Agriculture TTL3', 2500, 0, 0, 1, '2026-01-07 07:59:11', '2026-01-07 07:59:11'),
(21, 'Bricklaying and Masonry TTL3', 2500, 0, 0, 1, '2026-01-07 07:59:36', '2026-01-07 07:59:36'),
(22, 'Driving Class B', 2500, 0, 0, 1, '2026-01-15 12:49:24', '2026-01-15 12:49:24'),
(23, 'Driving Class B', 2500, 0, 1, 1, '2026-01-22 07:25:04', '2026-01-22 07:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not, 1:yes',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: active, 1:not active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `created_by`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(2, 2, 2, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(3, 2, 3, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(4, 2, 7, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(5, 2, 8, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(6, 2, 1, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(7, 2, 6, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(8, 2, 4, 1, 0, 0, '2026-01-07 08:08:21', '2026-01-07 08:08:21'),
(13, 16, 2, 1, 0, 0, '2026-01-07 08:10:33', '2026-01-07 08:10:33'),
(14, 16, 7, 1, 0, 0, '2026-01-07 08:10:33', '2026-01-07 08:10:33'),
(15, 16, 1, 1, 0, 0, '2026-01-07 08:10:33', '2026-01-07 08:10:33'),
(16, 9, 2, 1, 0, 0, '2026-01-07 08:11:38', '2026-01-07 08:11:38'),
(17, 9, 7, 1, 0, 0, '2026-01-07 08:11:38', '2026-01-07 08:11:38'),
(18, 9, 1, 1, 0, 0, '2026-01-07 08:11:38', '2026-01-07 08:11:38'),
(19, 9, 4, 1, 0, 0, '2026-01-07 08:11:38', '2026-01-07 08:11:38'),
(20, 6, 5, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(21, 6, 10, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(22, 6, 7, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(23, 6, 13, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(24, 6, 14, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(25, 6, 15, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(26, 6, 12, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(27, 6, 9, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(28, 6, 11, 1, 0, 0, '2026-01-15 10:10:43', '2026-01-15 10:10:43'),
(33, 5, 24, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(34, 5, 27, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(35, 5, 23, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(36, 5, 19, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(37, 5, 26, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(38, 5, 25, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(39, 5, 28, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(40, 5, 22, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(41, 5, 21, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(42, 5, 20, 1, 0, 0, '2026-01-15 12:34:49', '2026-01-15 12:34:49'),
(43, 19, 18, 1, 0, 0, '2026-01-15 12:36:15', '2026-01-15 12:36:15'),
(44, 19, 23, 1, 0, 0, '2026-01-15 12:36:15', '2026-01-15 12:36:15'),
(45, 19, 9, 1, 0, 0, '2026-01-15 12:36:15', '2026-01-15 12:36:15'),
(46, 19, 16, 1, 0, 0, '2026-01-15 12:36:15', '2026-01-15 12:36:15'),
(47, 12, 18, 1, 0, 0, '2026-01-15 12:38:07', '2026-01-15 12:38:07'),
(48, 12, 9, 1, 0, 0, '2026-01-15 12:38:07', '2026-01-15 12:38:07'),
(49, 12, 17, 1, 0, 0, '2026-01-15 12:38:07', '2026-01-15 12:38:07'),
(50, 12, 26, 1, 0, 0, '2026-01-15 12:38:07', '2026-01-15 12:38:07'),
(51, 12, 16, 1, 0, 0, '2026-01-15 12:38:07', '2026-01-15 12:38:07'),
(52, 1, 29, 1, 0, 0, '2026-01-16 06:13:12', '2026-01-16 06:13:12'),
(53, 1, 31, 1, 0, 0, '2026-01-16 06:13:12', '2026-01-16 06:13:12'),
(54, 1, 33, 1, 0, 0, '2026-01-16 06:13:12', '2026-01-16 06:13:12'),
(55, 1, 30, 1, 0, 0, '2026-01-16 06:13:12', '2026-01-16 06:13:12'),
(56, 1, 20, 1, 0, 0, '2026-01-16 06:13:12', '2026-01-16 06:13:12'),
(57, 8, 31, 1, 0, 0, '2026-01-16 06:14:51', '2026-01-16 06:14:51'),
(58, 8, 33, 1, 0, 0, '2026-01-16 06:14:51', '2026-01-16 06:14:51'),
(59, 8, 30, 1, 0, 0, '2026-01-16 06:14:51', '2026-01-16 06:14:51'),
(60, 8, 20, 1, 0, 0, '2026-01-16 06:14:51', '2026-01-16 06:14:51'),
(61, 15, 31, 1, 0, 0, '2026-01-16 06:15:17', '2026-01-16 06:15:17'),
(62, 15, 33, 1, 0, 0, '2026-01-16 06:15:17', '2026-01-16 06:15:17'),
(63, 15, 20, 1, 0, 0, '2026-01-16 06:15:17', '2026-01-16 06:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_timetable`
--

CREATE TABLE `class_subject_timetable` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `week_id` int(11) DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject_timetable`
--

INSERT INTO `class_subject_timetable` (`id`, `class_id`, `subject_id`, `week_id`, `start_time`, `end_time`, `room_number`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 5, '22:32', '13:33', 'Room 3', '2025-12-19 18:34:08', '2025-12-19 18:34:08'),
(2, 2, 7, 3, '14:00', '16:00', 'Room 3', '2025-12-19 18:36:06', '2025-12-19 18:36:06'),
(3, 2, 1, 1, '08:00', '10:00', 'Room 3', '2025-12-19 18:39:50', '2025-12-19 18:39:50'),
(4, 2, 1, 3, '10:00', '00:00', 'Room 3', '2025-12-19 18:39:51', '2025-12-19 18:39:51'),
(5, 2, 2, 2, '08:00', '10:00', 'Comp Lab', '2025-12-19 18:41:32', '2025-12-19 18:41:32'),
(6, 2, 2, 4, '14:00', '16:00', 'Comp Lab', '2025-12-19 18:41:32', '2025-12-19 18:41:32'),
(7, 2, 3, 3, '08:00', '10:00', 'Room 3', '2025-12-19 18:42:56', '2025-12-19 18:42:56'),
(8, 2, 3, 5, '08:00', '10:00', 'Room 3', '2025-12-19 18:42:56', '2025-12-19 18:42:56'),
(9, 2, 8, 2, '10:00', '00:00', 'Room 3', '2025-12-19 18:44:47', '2025-12-19 18:44:47'),
(10, 2, 8, 4, '08:00', '10:00', 'Room 3', '2025-12-19 18:44:47', '2025-12-19 18:44:47'),
(11, 2, 4, 1, '10:00', '00:00', 'Room 3', '2025-12-19 18:46:33', '2025-12-19 18:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`, `note`, `created_by`, `created_at`, `updated_at`, `is_delete`) VALUES
(1, 'Assignment One', 'Term 1', 1, '2025-10-20 06:10:42', '2025-12-17 08:09:25', 0),
(2, 'Assessment Two', 'Term 1', 1, '2025-10-20 07:00:58', '2026-01-07 09:31:00', 0),
(3, 'Mid Term Test', 'Term 1', 1, '2025-11-18 14:43:06', '2026-01-07 09:31:42', 0),
(4, 'End of Term Test', 'Term 1', 1, '2026-01-07 09:32:07', '2026-01-07 09:32:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(25) DEFAULT NULL,
  `full_marks` varchar(25) DEFAULT NULL,
  `passing_marks` varchar(25) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`id`, `exam_id`, `class_id`, `subject_id`, `exam_date`, `start_time`, `end_time`, `room_number`, `full_marks`, `passing_marks`, `created_by`, `created_at`, `updated_at`) VALUES
(19, 3, 1, 6, '2025-10-26', '10:00', '12:00', '1', '100', '70', 1, '2025-10-28 13:35:24', '2025-10-28 13:35:24'),
(20, 3, 1, 7, '2025-10-27', '10:00', '12:00', '2', '100', '70', 1, '2025-10-28 13:35:24', '2025-10-28 13:35:24'),
(47, 3, 2, 6, '2025-11-24', '09:00', '10:00', '1', '100', '50', 1, '2025-11-20 19:20:51', '2025-11-20 19:20:51'),
(48, 3, 2, 8, '2025-11-27', '11:00', '12:00', '1', '100', '50', 1, '2025-11-20 19:20:51', '2025-11-20 19:20:51'),
(49, 3, 2, 1, '2025-11-24', '12:00', '13:00', '1', '100', '50', 1, '2025-11-20 19:20:51', '2025-11-20 19:20:51'),
(50, 3, 2, 5, '2025-11-25', '08:00', '10:00', '1', '100', '50', 1, '2025-11-20 19:20:51', '2025-11-20 19:20:51'),
(51, 3, 2, 2, '2025-11-25', '12:00', '13:00', '2', '100', '50', 1, '2025-11-20 19:20:51', '2025-11-20 19:20:51'),
(52, 3, 2, 7, '2025-11-26', '08:00', '09:00', '2', '100', '50', 1, '2025-11-20 19:20:51', '2025-11-20 19:20:51'),
(53, 2, 2, 8, '2025-11-11', '11:00', '12:00', '1', '100', '50', 1, '2025-11-20 19:27:57', '2025-11-20 19:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `uploaded_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `title`, `uploaded_by`, `created_at`, `updated_at`) VALUES
(0, '1767791915_best gents.jpg', 'Automotive engineering students with their lecturer', 1, '2026-01-07 11:18:35', '2026-01-07 11:18:35'),
(0, '1767792086_2944faff-5c81-44d0-b906-78711503d5ee.JPG', 'Agriculture Gardens', 1, '2026-01-07 11:21:26', '2026-01-07 11:21:26'),
(0, '1767792144_NSANTA AND FRIENDS.JPG', '2023 intake auto', 1, '2026-01-07 11:22:24', '2026-01-07 11:22:24'),
(0, '1767792171_tailoring.jpg', 'FDTT 2023', 1, '2026-01-07 11:22:51', '2026-01-07 11:22:51'),
(0, '1767792198_f38385f3-6c58-4f5c-9482-4d6656648b3e.JPG', 'Computer 2023', 1, '2026-01-07 11:23:18', '2026-01-07 11:23:18'),
(0, '1768393587_Screenshot_20260105-222428.jpg', 'Automotive students 2024', 1, '2026-01-14 10:26:27', '2026-01-14 10:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `document_file` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `class_id`, `subject_id`, `homework_date`, `submission_date`, `document_file`, `description`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 8, '2025-12-03', '2025-12-05', '20260122112527xeqmuydibzyexa0e5f9n.docx', '<p>assignment one</p>', 0, 1, '2025-12-01 17:32:52', '2026-01-22 11:25:27'),
(2, 1, 7, '2025-12-02', '2025-12-12', '20251202124115wiqw18beio76iwucjyxz.pdf', 'shut up you', 0, 1, '2025-12-02 12:41:15', '2025-12-02 12:41:31'),
(3, 1, 6, '2025-12-10', '2025-12-17', NULL, '<p>hi all</p>', 0, 1, '2025-12-02 14:49:48', '2025-12-02 14:49:48'),
(4, 2, 7, '2025-12-02', '2025-12-09', '20251202045337wvnckpofmozqow3suhlm.docx', '<p>hello computer guruz</p>', 0, 18, '2025-12-02 16:53:37', '2025-12-02 16:53:37'),
(5, 3, 3, '2025-12-02', '2025-12-05', '20251202053110zavq6v1rbqnafvvepdd6.jpg', '<p>jefjksd</p>', 0, 18, '2025-12-02 17:31:10', '2025-12-02 17:54:55'),
(6, 2, 6, '2025-12-05', '2025-12-12', '20251205025223r2e1fgbe4wf9d4of8dy9.pdf', '<p>hi all</p>', 0, 1, '2025-12-05 02:52:23', '2025-12-05 03:39:14'),
(7, 2, 8, '2025-12-05', '2025-12-12', '20251205053550s1a1yrrtcn7vwogond5v.xlsx', '<p>Assignment two term 2</p>', 0, 1, '2025-12-05 05:35:50', '2025-12-05 05:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `homework_submit`
--

CREATE TABLE `homework_submit` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `document_file` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homework_submit`
--

INSERT INTO `homework_submit` (`id`, `homework_id`, `student_id`, `description`, `document_file`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '<p>good afternoon sir, here is my homework</p>', '20251204032345mgrhluylssfwm9ag967v.pptx', '2025-12-04 15:23:45', '2025-12-04 15:23:45'),
(2, 4, 7, 'find my work attached herewith', '20251204040754ytyfk3qyzwocrsbv0pji.docx', '2025-12-04 16:07:54', '2025-12-04 16:07:54'),
(3, 6, 7, '<p>here is my file</p>', '20251205025601u8clmklo2z6odpdyhg5g.jpeg', '2025-12-05 02:56:01', '2025-12-05 02:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grade`
--

CREATE TABLE `marks_grade` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `percentage_from` int(11) NOT NULL DEFAULT 0,
  `percentage_to` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_grade`
--

INSERT INTO `marks_grade` (`id`, `name`, `percentage_from`, `percentage_to`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'A', 90, 100, 1, '2025-11-22 10:04:38', '2025-11-22 10:42:51'),
(2, 'B', 80, 89, 1, '2025-11-22 10:43:27', '2025-11-22 10:47:58'),
(3, 'C', 70, 79, 1, '2025-11-22 10:44:02', '2025-11-22 10:48:08'),
(4, 'D', 60, 69, 1, '2025-11-22 10:45:02', '2025-11-22 10:48:19'),
(5, 'E', 50, 59, 1, '2025-11-22 10:45:21', '2025-11-22 10:48:29'),
(7, 'F', 1, 49, 1, '2025-11-22 11:12:32', '2025-11-22 17:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `marks_register`
--

CREATE TABLE `marks_register` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `assignment_one` int(11) NOT NULL DEFAULT 0,
  `assignment_two` int(11) NOT NULL DEFAULT 0,
  `mid_term_test` int(11) NOT NULL DEFAULT 0,
  `final_test` int(11) NOT NULL DEFAULT 0,
  `full_marks` int(11) NOT NULL DEFAULT 0,
  `passing_marks` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_register`
--

INSERT INTO `marks_register` (`id`, `student_id`, `exam_id`, `class_id`, `subject_id`, `assignment_one`, `assignment_two`, `mid_term_test`, `final_test`, `full_marks`, `passing_marks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 2, 6, 20, 20, 20, 40, 100, 50, 1, '2025-11-20 14:36:30', '2025-11-20 14:59:20'),
(2, 7, 3, 2, 8, 10, 10, 45, 10, 100, 50, 1, '2025-11-20 14:36:30', '2025-11-20 14:36:30'),
(3, 7, 3, 2, 1, 20, 10, 5, 15, 100, 50, 1, '2025-11-20 14:36:30', '2025-11-22 18:00:08'),
(4, 7, 3, 2, 5, 15, 15, 15, 15, 100, 50, 1, '2025-11-20 14:36:30', '2025-11-20 14:36:30'),
(5, 7, 3, 2, 2, 12, 5, 20, 13, 100, 50, 1, '2025-11-20 14:36:31', '2025-11-22 17:58:18'),
(6, 7, 3, 2, 7, 5, 5, 5, 50, 100, 50, 1, '2025-11-20 14:36:31', '2025-11-22 15:18:45'),
(7, 7, 2, 2, 8, 20, 20, 30, 10, 100, 50, 1, '2025-11-20 19:28:31', '2025-11-20 19:28:31'),
(8, 12, 2, 2, 8, 10, 10, 10, 50, 100, 50, 1, '2025-11-20 19:28:57', '2025-11-20 19:28:57'),
(9, 10, 3, 1, 6, 20, 20, 20, 20, 100, 70, 1, '2025-11-22 11:42:52', '2025-11-22 11:42:52'),
(10, 10, 3, 1, 7, 20, 20, 20, 8, 100, 70, 1, '2025-11-22 11:42:53', '2025-11-22 12:08:46'),
(11, 4, 3, 2, 6, 28, 20, 20, 20, 100, 50, 3, '2026-01-07 09:49:59', '2026-01-22 11:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_10_16_120844_create_applications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `tittle`, `notice_date`, `publish_date`, `message`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Opening Date for TEVET Institutions', '2026-01-12', '2026-01-12', '<p>This serves to remind you that all TEVET accredited institutions shall formally open and resume operations on 12th January 2026.</p><p>Returning students are encouraged to report before the stated date without fail.</p><p>yours faithfully,</p><p><b>Systems Administrator</b></p><p><u>kalabo trades training institute</u></p>', 1, '2025-12-11 13:06:08', '2026-01-15 10:27:08'),
(2, 'TEVETA Exam enrollments and Verifications - April/May 2026', '2026-01-15', '2026-01-15', '<p>Be reminded that Teveta Examination enrollment and verification process is <b>currently open</b>.</p><p>Ensure your details have been entered correctly by visiting the ICT Department for verifications.</p><p><b>Systems Administrator</b></p><p><u>Kalabo Trades Training Institute</u></p>', 1, '2026-01-15 10:42:43', '2026-01-15 10:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board_message`
--

CREATE TABLE `notice_board_message` (
  `id` int(11) NOT NULL,
  `notice_board_id` int(11) DEFAULT NULL,
  `message_to` int(11) DEFAULT NULL COMMENT 'user type',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice_board_message`
--

INSERT INTO `notice_board_message` (`id`, `notice_board_id`, `message_to`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2026-01-15 10:33:09', '2026-01-15 10:33:09'),
(2, 1, 4, '2026-01-15 10:33:09', '2026-01-15 10:33:09'),
(3, 1, 2, '2026-01-15 10:33:09', '2026-01-15 10:33:09'),
(6, 2, 3, '2026-01-15 10:46:12', '2026-01-15 10:46:12'),
(7, 2, 2, '2026-01-15 10:46:12', '2026-01-15 10:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `stripe_key` varchar(500) DEFAULT NULL,
  `stripe_secret` varchar(500) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `fevicon_icon` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `statement_description` text DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `paypal_email`, `stripe_key`, `stripe_secret`, `logo`, `fevicon_icon`, `school_name`, `statement_description`, `address`, `created_at`, `updated_at`) VALUES
(1, 'jairosmoono@gmail.com', 'pk_test_51Sc3p9KzOyaW5ysgM0HIACR491iZBNeVd7JO2zI9FSnvjidiL17cX9zBb5Q7YquvIvmiWPBSTLBa4BN34r8vNgyo00xi2kPvkz', 'sk_test_51Sc3p9KzOyaW5ysgYDcuH6HrcJ6QzhP2tyXAmhYeXfN1xVUtaGI0X7HiRO6QkFyWeU9UE6pwoiG6Wk4aSJF6LiNy00PAC2lqY9', '20251226085845mw5przprny.PNG', '20251226085845nh4dwgp2qo.PNG', 'KALABO TRADES TRAINING INSTITUTE', 'This Statement of Results is system-generated from the Learner Management System. While every effort has been made to ensure accuracy, the University shall not be held liable for any errors or omissions Details. Verification of Details may be requested through the Registrar’s Office.', 'PO. Box 930050, Kalabo. Zambia <br /> +260967155022 | kalabotrades@gmail.com', NULL, '2026-01-07 09:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `student_add_payment`
--

CREATE TABLE `student_add_payment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT 0,
  `paid_amount` int(11) DEFAULT 0,
  `remaining_amount` int(11) DEFAULT 0,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_data` text DEFAULT NULL,
  `stripe_session_id` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `is_payment` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_add_payment`
--

INSERT INTO `student_add_payment` (`id`, `student_id`, `class_id`, `total_amount`, `paid_amount`, `remaining_amount`, `payment_type`, `payment_data`, `stripe_session_id`, `remarks`, `is_payment`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 7, 2, 2600, 600, 2000, 'Stripe', '{\"id\":\"cs_test_a1oVX1FcrCiZ0o3AohjVzvwCELt2UZWRiGI4OwDZOxJvAq47gk5KWLAPmy\",\"object\":\"checkout.session\",\"adaptive_pricing\":{\"enabled\":true},\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":60000,\"amount_total\":60000,\"automatic_tax\":{\"enabled\":false,\"liability\":null,\"provider\":null,\"status\":null},\"billing_address_collection\":null,\"branding_settings\":{\"background_color\":\"#ffffff\",\"border_style\":\"rounded\",\"button_color\":\"#0074d4\",\"display_name\":\"edunex solutions sandbox\",\"font_family\":\"default\",\"icon\":null,\"logo\":null},\"cancel_url\":\"http:\\/\\/localhost\\/school.com\\/student\\/stripe\\/payment-error\",\"client_reference_id\":null,\"client_secret\":null,\"collected_information\":{\"business_name\":null,\"individual_name\":null,\"shipping_details\":null},\"consent\":null,\"consent_collection\":null,\"created\":1765280453,\"currency\":\"zmw\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"after_submit\":null,\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_account\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":null,\"country\":\"ZM\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"business_name\":null,\"email\":\"tembok@gmail.com\",\"individual_name\":null,\"name\":\"tembo kelly\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":\"tembok@gmail.com\",\"discounts\":[],\"expires_at\":1765366853,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"issuer\":null,\"metadata\":[],\"rendering_options\":null}},\"livemode\":false,\"locale\":null,\"metadata\":[],\"mode\":\"payment\",\"origin_context\":null,\"payment_intent\":\"pi_3ScPISKzOyaW5ysg1biCxMFh\",\"payment_link\":null,\"payment_method_collection\":\"if_required\",\"payment_method_configuration_details\":null,\"payment_method_options\":{\"card\":{\"request_three_d_secure\":\"automatic\"}},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"permissions\":null,\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"saved_payment_method_options\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/localhost\\/school.com\\/student\\/stripe\\/payment-success\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null,\"wallet_options\":null}', 'cs_test_a1oVX1FcrCiZ0o3AohjVzvwCELt2UZWRiGI4OwDZOxJvAq47gk5KWLAPmy', 'if you try its ok now', 1, 7, '2025-12-09 11:40:56', '2025-12-09 11:41:44'),
(4, 7, 2, 2000, 1000, 1000, 'Stripe', '{\"id\":\"cs_test_a16rrEC6D3iRKV8j4N3HHeoa9yI2aaYol4TLZjBMdL1q6HIVueptENmTuK\",\"object\":\"checkout.session\",\"adaptive_pricing\":{\"enabled\":true},\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":100000,\"amount_total\":100000,\"automatic_tax\":{\"enabled\":false,\"liability\":null,\"provider\":null,\"status\":null},\"billing_address_collection\":null,\"branding_settings\":{\"background_color\":\"#ffffff\",\"border_style\":\"rounded\",\"button_color\":\"#0074d4\",\"display_name\":\"edunex solutions sandbox\",\"font_family\":\"default\",\"icon\":null,\"logo\":null},\"cancel_url\":\"http:\\/\\/localhost\\/school.com\\/student\\/stripe\\/payment-error\",\"client_reference_id\":null,\"client_secret\":null,\"collected_information\":{\"business_name\":null,\"individual_name\":null,\"shipping_details\":null},\"consent\":null,\"consent_collection\":null,\"created\":1765282817,\"currency\":\"zmw\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"after_submit\":null,\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_account\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":null,\"country\":\"ZM\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"business_name\":null,\"email\":\"tembok@gmail.com\",\"individual_name\":null,\"name\":\"tembo kelly\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":\"tembok@gmail.com\",\"discounts\":[],\"expires_at\":1765369217,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"issuer\":null,\"metadata\":[],\"rendering_options\":null}},\"livemode\":false,\"locale\":null,\"metadata\":[],\"mode\":\"payment\",\"origin_context\":null,\"payment_intent\":\"pi_3ScPu4KzOyaW5ysg0KOtnGwy\",\"payment_link\":null,\"payment_method_collection\":\"if_required\",\"payment_method_configuration_details\":null,\"payment_method_options\":{\"card\":{\"request_three_d_secure\":\"automatic\"}},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"permissions\":null,\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"saved_payment_method_options\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/localhost\\/school.com\\/student\\/stripe\\/payment-success\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null,\"wallet_options\":null}', 'cs_test_a16rrEC6D3iRKV8j4N3HHeoa9yI2aaYol4TLZjBMdL1q6HIVueptENmTuK', 'yous faithfully', 1, 7, '2025-12-09 12:20:15', '2025-12-09 12:20:32'),
(28, 7, 2, 1000, 50, 950, 'Paypal', NULL, NULL, 'Tuition Fees', 0, 7, '2025-12-17 07:41:49', '2025-12-17 07:41:49'),
(29, 12, 2, 2600, 1000, 1600, 'Cash', NULL, NULL, 'Tuition Fees', 1, 1, '2025-12-17 12:38:05', '2025-12-17 12:38:05'),
(30, 24, 2, 2600, 1000, 1600, 'Cheque', NULL, NULL, 'Tuition Fees', 1, 1, '2025-12-17 12:38:47', '2025-12-17 12:38:47'),
(31, 10, 1, 2500, 2500, 0, 'Cash', NULL, NULL, 'Tuition Fees', 1, 1, '2025-12-17 12:40:38', '2025-12-17 12:40:38'),
(32, 14, 3, 2500, 2500, 0, 'Cash', NULL, NULL, 'Tuition Fees', 1, 1, '2025-12-17 12:41:06', '2025-12-17 12:41:06'),
(33, 18, 2, 2600, 25, 2575, 'Stripe', NULL, 'cs_test_a1jUd5fBwDlinvux6YPTVCRSAS5M87ahBsPehUHw47KsXDI1oaiAo7jNJn', 'Tuition Fees', 0, 18, '2026-01-22 09:23:35', '2026-01-22 09:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `attendance_type` int(11) DEFAULT NULL COMMENT '1=Present,2=Late,3=Absent,4=Sick,5=Halfday,6=Holiday',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `class_id`, `attendance_date`, `student_id`, `attendance_type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-11-23', 10, 4, 1, '2025-11-23 10:28:27', '2025-11-23 11:09:37'),
(2, 1, '2025-11-23', 13, 4, 1, '2025-11-23 10:29:27', '2025-11-23 16:07:48'),
(3, 2, '2025-11-23', 7, 1, 1, '2025-11-23 12:40:36', '2025-11-23 15:15:25'),
(4, 2, '2025-11-23', 12, 3, 1, '2025-11-23 12:40:42', '2025-11-23 12:40:42'),
(5, 2, '2025-11-24', 7, 3, 1, '2025-11-23 12:40:54', '2025-11-23 12:40:54'),
(6, 2, '2025-11-24', 12, 4, 1, '2025-11-23 12:40:59', '2025-11-23 12:40:59'),
(7, 2, '2025-11-25', 7, 2, 18, '2025-11-23 15:17:17', '2025-11-23 15:17:17'),
(8, 2, '2026-01-02', 4, 1, 1, '2026-01-02 15:02:08', '2026-01-02 15:02:08'),
(9, 2, '2026-01-22', 4, 1, 3, '2026-01-22 11:16:26', '2026-01-22 11:16:26'),
(10, 2, '2026-01-22', 18, 3, 3, '2026-01-22 11:16:37', '2026-01-22 11:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(127) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1: inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not, 1: yes',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `type`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'INTRODUCTION TO INFORMATION COMMUNICATION TECHNOLOGY', 'Theory', 1, 0, 0, '2025-12-19 18:17:38', '2025-12-19 18:17:38'),
(2, 'COMPUTER APPLICATION PACKAGES', 'Practical', 1, 0, 0, '2025-12-19 18:18:14', '2025-12-19 18:18:14'),
(3, 'DATA COMMUNICATION AND NETWORKING', 'Theory', 1, 0, 0, '2025-12-19 18:18:51', '2025-12-19 18:18:51'),
(4, 'STRUCTURED CABLING', 'Theory', 1, 0, 0, '2025-12-19 18:19:15', '2025-12-19 18:19:15'),
(5, 'COMMUNICATION SKILLS', 'Theory', 1, 0, 0, '2025-12-19 18:19:38', '2025-12-19 18:19:38'),
(6, 'OPERATING SYSTEMS', 'Theory', 1, 0, 0, '2025-12-19 18:20:00', '2025-12-19 18:20:00'),
(7, 'ENTREPRENEURSHIP', 'Theory', 1, 0, 0, '2025-12-19 18:20:23', '2025-12-19 18:20:23'),
(8, 'INFORMATION TECHNOLOGY HELP DESK', 'Theory', 1, 0, 0, '2025-12-19 18:20:57', '2025-12-19 18:20:57'),
(9, 'OCCUPATIONAL SAFETY,HEALTH & ENVIRONMENT', 'Theory', 1, 0, 0, '2026-01-15 10:07:06', '2026-01-15 10:07:06'),
(10, 'CROP PRODUCTION', 'Theory', 1, 0, 0, '2026-01-15 10:07:31', '2026-01-15 10:07:31'),
(11, 'SOIL SCIENCE', 'Theory', 1, 0, 0, '2026-01-15 10:07:51', '2026-01-15 10:07:51'),
(12, 'LIVESTOCK PRODUCTION', 'Practical', 1, 0, 0, '2026-01-15 10:08:17', '2026-01-15 10:08:17'),
(13, 'FARM ENGINEERING', 'Practical', 1, 0, 0, '2026-01-15 10:08:36', '2026-01-15 10:08:36'),
(14, 'FISH FARMING', 'Theory', 1, 0, 0, '2026-01-15 10:08:56', '2026-01-15 10:08:56'),
(15, 'INRODUCTION TO COMPUTERS', 'Practical', 1, 0, 0, '2026-01-15 10:09:41', '2026-01-15 10:09:41'),
(16, 'woodworking hand tools, materials and machinery', 'Practical', 1, 0, 0, '2026-01-15 12:24:41', '2026-01-15 12:24:41'),
(17, 'Roof Construction', 'Practical', 1, 0, 0, '2026-01-15 12:25:05', '2026-01-15 12:25:05'),
(18, 'Ceiling Construction', 'Practical', 1, 0, 0, '2026-01-15 12:25:27', '2026-01-15 12:25:27'),
(19, 'Health and Safety', 'Theory', 1, 0, 0, '2026-01-15 12:28:45', '2026-01-15 12:28:45'),
(20, 'Workshop processes and practices', 'Practical', 1, 0, 0, '2026-01-15 12:29:25', '2026-01-15 12:29:25'),
(21, 'Woodworking materials', 'Practical', 1, 0, 0, '2026-01-15 12:29:55', '2026-01-15 12:29:55'),
(22, 'woodworking joints', 'Practical', 1, 0, 0, '2026-01-15 12:30:16', '2026-01-15 12:30:16'),
(23, 'furniture construction', 'Practical', 1, 0, 0, '2026-01-15 12:30:41', '2026-01-15 12:30:41'),
(24, 'cabinet construction', 'Practical', 1, 0, 0, '2026-01-15 12:31:03', '2026-01-15 12:31:03'),
(25, 'trade mathermatics', 'Practical', 1, 0, 0, '2026-01-15 12:31:24', '2026-01-15 12:31:24'),
(26, 'Technical Drawing', 'Practical', 1, 0, 0, '2026-01-15 12:31:50', '2026-01-15 12:31:50'),
(27, 'Door and Window construction', 'Practical', 1, 0, 0, '2026-01-15 12:32:21', '2026-01-15 12:32:21'),
(28, 'Wood Finishing and Decorations', 'Practical', 1, 0, 0, '2026-01-15 12:32:56', '2026-01-15 12:32:56'),
(29, 'Engine Systems', 'Theory', 1, 0, 0, '2026-01-16 06:08:01', '2026-01-16 06:08:01'),
(30, 'Transmission System', 'Theory', 1, 0, 0, '2026-01-16 06:08:49', '2026-01-16 06:08:49'),
(31, 'Steering System', 'Theory', 1, 0, 0, '2026-01-16 06:09:14', '2026-01-16 06:09:14'),
(32, 'Workshop processes and practice', 'Practical', 1, 0, 1, '2026-01-16 06:09:54', '2026-01-16 06:11:43'),
(33, 'Suspension System', 'Theory', 1, 0, 0, '2026-01-16 06:10:48', '2026-01-16 06:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `admission_number` varchar(10) DEFAULT NULL,
  `nrc_number` varchar(15) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `intake` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(10) DEFAULT NULL,
  `admission_date` varchar(4) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `sponsor` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `constituency` varchar(50) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `residence_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:boarder,1:day',
  `work_experience` varchar(255) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1:admin, 2:teacher, 3:student, 4:parent',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not deleted, 1:deleted',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `admission_number`, `nrc_number`, `class_id`, `gender`, `date_of_birth`, `intake`, `religion`, `mobile_number`, `admission_date`, `profile_pic`, `sponsor`, `district`, `constituency`, `employment_status`, `occupation`, `address`, `permanent_address`, `qualification`, `marital_status`, `residence_type`, `work_experience`, `user_type`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', NULL, 'admin@kalabotrades.edu.zm', NULL, '$2y$12$zEpnQ2ntqwb/QBp/85yUvutUmDQhjZ7gAuXmYo51ZPVpX2BsJ1f2S', 'BS2Sc92Q0Qfh3iO541TdtKYR4KeCLX6Xz7jZTLXLVxSwEN97KXANLPLX3Tib', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '20251214103723jyintvpw9eqtgujk2imd.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0, '2025-09-13 01:03:06', '2026-01-22 09:33:27'),
(2, NULL, 'Nalukui', 'Wamundila', 'ireenedwin4@gmail.com', NULL, '$2y$12$hTtx6FqDSUh5yfKAdws0JejqpXtq7m.ssNw4RZ3r9LfjqC9zhnZCm', '7oBfjKlQVGNLXy47HtRkDiwRXKWiv0TQerUosIKqQoLLUoTjTLM3ve2b3KYp', NULL, NULL, NULL, 'Female', '2001-06-30', NULL, NULL, '0972758856', '2022', '20251012081856wmyabuiqt21mltbxrbaa.jpeg', NULL, NULL, NULL, NULL, NULL, 'kalabo trades', 'mongu, imwiko Stage 1', 'Certificate', 'Married', 0, '3 years', 2, 0, 0, '2025-09-13 01:03:06', '2025-12-19 17:03:44'),
(3, NULL, 'Jairos', 'Sibusenga', 'jairosmoono@gmail.com', NULL, '$2y$12$EezFASL68ATPQ0LA0w.SMO0kjtI1CBFm7EjFXdRozcZFnNS4pZRB2', NULL, NULL, NULL, NULL, 'Male', '1996-12-08', NULL, NULL, '0975096323', '2022', '20251219062942ao83gtpbosakmnbfxzzq.PNG', NULL, NULL, NULL, NULL, NULL, 'kalabo trades', 'makunka, kazungula', 'Diploma', 'Married', 0, '4 years', 2, 0, 0, '2025-12-19 16:29:43', '2026-01-22 09:29:14'),
(4, NULL, 'Rebecca', 'Alibandila', 'rebbecaalibandila@gmail.com', NULL, '$2y$12$H4EinFkvMoxrqktCYULcC.2GnoQrAgjhlbgRKl9yzsCewH2/xGjza', NULL, '2025-0001', '141414/14/1', 2, 'Female', '2000-01-01', 'January', 'Christian', '0773436398', '2026', '20260107093736ocrcliakkcs71yxbk2lz.jpg', 'GRZ', 'Mongu', 'Mongu Central', 'not employed', NULL, NULL, NULL, NULL, NULL, 0, NULL, 3, 0, 0, '2025-12-21 06:37:17', '2026-01-07 08:00:16'),
(5, NULL, 'saasa', 'walubita', 'saasa@gmail.com', NULL, '$2y$12$8DsCLUlGtQkJUIvm0Xn.2e8RWotLjwU2QJXQUGFj73U5ULbOTB80C', NULL, '2025-0002', '140406/97/1', 3, 'Male', '2006-01-01', 'January', 'Christian', '0773436398', '2026', '20251221091132ljase7tapwwqpwnot4ac.jpeg', 'Self', 'Kalabo', 'Kalabo Central', 'not employed', NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, 0, 0, '2025-12-21 07:11:32', '2026-01-08 14:30:34'),
(6, NULL, 'mwenemundu', 'muyamba', 'muyambamuyamba412@gmail.com', NULL, '$2y$12$EhYE2ZqHAySevmZhXREQ2epQha8trS0D.EiWyODRuJ.uHmRZ/XZyS', 'ZsBoKRZUesKOGeqRFpC1OJ2xjGVKQieTHzKg527Di6k8fxrLbZo8MpJeoPYh', NULL, NULL, NULL, 'Male', '1996-02-05', NULL, NULL, '0975096323', '2022', '20260108111414osgnvvmvrwgdvxobobrb.jpg', NULL, NULL, NULL, NULL, NULL, 'kalabo trades', 'kalabo', 'Diploma', 'Divorced', 0, '4 years', 2, 0, 0, '2026-01-05 05:01:20', '2026-01-22 07:54:58'),
(7, NULL, 'Newton', 'chilongo', 'newtonchilongo@gmail.com', NULL, '$2y$12$8eLUnO2T4.YSO8dSetIcUOlbfSA6hBA0.pqY8GFicUNE5AP6UO/Mq', NULL, NULL, NULL, NULL, 'Male', '2026-02-01', NULL, NULL, '0975096323', '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'kalabo trades', '', 'Other', 'Single', 0, '4 years', 2, 0, 0, '2026-01-05 05:03:05', '2026-01-22 07:01:08'),
(8, NULL, 'mwiya', 'ndiyoyi', 'mwiyandiyoyi@gmail.com', NULL, '$2y$12$40z0wHmRSGyVIZxEz.Snauz8Q/ysHduCjy.kaPTl2lEfadD/PBU1a', NULL, NULL, NULL, NULL, 'Male', '2026-02-01', NULL, NULL, '0975096323', '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'kalabo trades', '', 'Other', 'Single', 0, '4 years', 2, 0, 0, '2026-01-05 05:04:16', '2026-01-16 04:20:17'),
(9, NULL, 'henry', 'mukumbuta', 'henrymukumbutascience@gmail.com', NULL, '$2y$12$nn3zJ1WcDG.FHzTE1qsTquYU4ye71LgjZ7Lxpl0ZPhJxft4YPQ1Ce', NULL, NULL, NULL, NULL, 'Male', '1990-02-11', NULL, NULL, '0971608050', '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'kalabo trades', '', 'Other', 'Married', 0, '4 years', 2, 0, 0, '2026-01-05 05:05:32', '2026-01-22 08:55:08'),
(10, NULL, 'sibeso', 'kalaluka', 'sibesokalaluka9@gmail.com', NULL, '$2y$12$Kckjqjmh7D4PBpNknOiyEOva3rhMB86rgUUECKrVxx1U7UjYKi0QS', NULL, NULL, NULL, NULL, 'Female', '2026-02-01', NULL, NULL, '0975096323', '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'kalabo trades', '', 'Other', 'Married', 0, '4 years', 2, 0, 0, '2026-01-05 05:07:14', '2026-01-05 05:07:14'),
(11, NULL, 'mulemwa', 'mundia', 'mulemwamundia@gmail.com', NULL, '$2y$12$1NKcJsbXgM.WYoUTVZcfQub.ZVibMy/zO4cw.csAH0MZ4OhPcdCu.', NULL, NULL, NULL, NULL, 'Female', '2026-02-01', NULL, NULL, '0975096323', '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'kalabo trades', '', 'Other', 'Married', 0, '4 years', 2, 0, 0, '2026-01-05 05:10:01', '2026-01-05 05:57:40'),
(12, NULL, 'Andrew wamupu mwikisa', NULL, 'andymwiks@gmail.com', NULL, '$2y$12$o74UNCQEiOQuQXpnj18mdOpOo.Q.C5hbZ1QBN59MyG1PNAhWU/pWi', '6K5VXTDUEN77WHIIL8h9gbkgAInECCSf1gXPOsAGCKmuXK890WvfVeSJJHB2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0, '2026-01-05 05:11:53', '2026-01-21 05:11:01'),
(13, NULL, 'mulenga enerst', NULL, 'enerst3mulenga@gmail.com', NULL, '$2y$12$SyMQWaVKObrmKKAgFt/ReeMTKsZhzxVjvb0mhDhdq33WxJGSHCKLG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0, '2026-01-05 05:12:33', '2026-01-05 05:12:33'),
(14, NULL, 'Pumulo', 'Mbambo', 'pumulombambo3@gmail.com', NULL, '$2y$12$0O2xDQ3c68tZZXcBv7K/0ue6fgAOkHLKMH9.3z3UYcC3tRuRjS3GW', NULL, NULL, NULL, NULL, 'Male', '1998-07-10', NULL, NULL, '0976211451', '2020', NULL, NULL, NULL, NULL, NULL, NULL, 'Kalabo trades', 'Kaoma', 'Certificate', 'Single', 0, '6 Years', 2, 0, 0, '2026-01-07 06:18:09', '2026-01-07 08:13:16'),
(15, NULL, 'Kabuyana', 'Mulobela', 'kabuyanamulobela42@gmail.com', NULL, '$2y$12$T1MRheqkmYhHcIz09xq/FO4KOctgbDfPnWabaOYtj2AIqnOhM2POa', NULL, NULL, NULL, NULL, 'Male', '1978-07-26', NULL, NULL, '0976684692', '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'kalabo', 'mongu, ilute', 'Certificate', 'Married', 0, '4 years', 2, 0, 0, '2026-01-15 10:16:55', '2026-01-15 12:17:40'),
(16, NULL, 'admin', NULL, 'admin@gmail.com', NULL, '$2y$12$LM/rzAnm2mN3O7o8JvIMaep/Py6dheW0Ivr06Y.Z5w0F9BEJO8cG.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0, '2026-01-22 04:41:28', '2026-01-22 04:41:28'),
(17, NULL, 'Teacher', 'test', 'teacher@gmail.com', NULL, '$2y$12$32fr3iHK.7TulnbBojHxRe/4U7c7s9f3ilXzj3llzcYB2D2MEFyp.', NULL, NULL, NULL, NULL, 'Male', '2026-01-21', NULL, NULL, '0976684692', '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'kalabo', 'mongu, ilute', 'Certificate', 'Married', 0, '4 years', 2, 0, 0, '2026-01-22 04:42:33', '2026-01-22 08:55:42'),
(18, NULL, 'Student', 'test', 'student@gmail.com', NULL, '$2y$12$9/uightyOJDt1h.PxEHAoOZ3uLytlGUNuSifFLlnvmllZ/k.cp8E6', NULL, '2026-0001', '141414/14/1', 2, 'Male', '2026-01-21', 'January', 'christian', '0976684692', '2026', NULL, 'GRZ', 'Kalabo', 'Kalabo Central', 'not employed', NULL, NULL, NULL, NULL, NULL, 0, NULL, 3, 0, 0, '2026-01-22 04:44:31', '2026-01-22 08:36:56'),
(19, NULL, 'Parent', 'Test', 'parent@gmail.com', NULL, '$2y$12$B9erW58bqxPiv/ZM53BKhuevtuArghg37l61zytB/KX87acua1gg.', NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, '0976684692', NULL, NULL, NULL, NULL, NULL, NULL, 'Nurse', 'kalabo', NULL, NULL, NULL, 0, NULL, 4, 0, 0, '2026-01-22 04:45:25', '2026-01-22 04:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fullcalendar_day` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`id`, `name`, `fullcalendar_day`, `created_at`, `updated_at`) VALUES
(1, 'Monday', 1, NULL, NULL),
(2, 'Tuesday ', 2, NULL, NULL),
(3, 'Wednesday ', 3, NULL, NULL),
(4, 'Thursday', 4, NULL, NULL),
(5, 'Friday', 5, NULL, NULL),
(6, 'Saturday ', 6, NULL, NULL),
(7, 'Sunday', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_class_teacher`
--
ALTER TABLE `assign_class_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework_submit`
--
ALTER TABLE `homework_submit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_grade`
--
ALTER TABLE `marks_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_register`
--
ALTER TABLE `marks_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board_message`
--
ALTER TABLE `notice_board_message`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_add_payment`
--
ALTER TABLE `student_add_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `week`
--
ALTER TABLE `week`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_class_teacher`
--
ALTER TABLE `assign_class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `homework_submit`
--
ALTER TABLE `homework_submit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks_grade`
--
ALTER TABLE `marks_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marks_register`
--
ALTER TABLE `marks_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice_board_message`
--
ALTER TABLE `notice_board_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_add_payment`
--
ALTER TABLE `student_add_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `week`
--
ALTER TABLE `week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
