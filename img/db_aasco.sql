-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2022 at 04:15 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aasco`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `get_date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `get_from` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `get_date`, `image`, `get_from`, `details`, `row_status`, `created_at`, `updated_at`) VALUES
(1, 'Iusto aut nihil vita', '2021-03-07', '1649149147624c04db92940.png', 'Et eos dolore ullamc', 'Exercitationem sint', 1, '2022-04-05 02:59:08', '2022-04-05 02:59:08'),
(2, 'Iusto aut nihil vita', '2021-03-07', '1649149151624c04df5480d.png', 'Et eos dolore ullamc', 'Exercitationem sint', 1, '2022-04-05 02:59:11', '2022-04-05 02:59:11'),
(3, 'Iusto aut nihil vita', '2021-03-07', '1649149157624c04e502e5d.png', 'Et eos dolore ullamc', 'Exercitationem sint', 1, '2022-04-05 02:59:17', '2022-04-05 02:59:17'),
(4, 'Iusto aut nihil vita', '2021-03-07', '1649149162624c04ead559f.png', 'Et eos dolore ullamc', 'Exercitationem sint', 1, '2022-04-05 02:59:23', '2022-04-05 02:59:23'),
(5, 'Iusto aut nihil vita', '2021-03-07', '1649149168624c04f012698.png', 'Et eos dolore ullamc', 'Exercitationem sint', 1, '2022-04-05 02:59:28', '2022-04-05 02:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `row_status`, `created_at`, `updated_at`) VALUES
(6, 'Avian Products', 1, '2022-01-26 01:26:15', '2022-01-27 04:37:39'),
(9, 'Ruminant Products', 1, '2022-01-26 23:30:27', '2022-01-26 23:30:27'),
(10, 'Companion Animal Products', 1, '2022-01-26 23:30:45', '2022-01-26 23:30:45'),
(11, 'Others Products', 1, '2022-01-26 23:30:59', '2022-03-27 00:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_branch`, `employee_id`, `employee_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'HEAD OFFICE', 'HEAD OFFICE', '$2y$10$O/voj1WAoDxEcDMGJ2ZeguX26MVNmBAL4dgNs7BGB5slhAEea78Ja', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(2, 'SARDAGONG', 'SARDAGONG', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(3, 'LALMATIA', 'LALMATIA', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(4, 'MOTIJHEEL', 'MOTIJHEEL', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(5, 'GAZIPUR', 'GAZIPUR', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(6, 'MAONA', 'MAONA', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(7, 'MYMENSINGH', 'MYMENSINGH', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(8, 'JAMALPUR', 'JAMALPUR', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(9, 'BOGURA', 'BOGURA', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(10, 'JOYPURHAT', 'JOYPURHAT', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(11, 'PABNA', 'PABNA', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(12, 'KHULNA', 'KHULNA', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(13, 'FARIDPUR', 'FARIDPUR', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(14, 'BARISHAL', 'BARISHAL', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(15, 'CUMILLA', 'CUMILLA', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(16, 'NOAKHALI', 'NOAKHALI', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(17, 'CHATTOGRAM', 'CHATTOGRAM', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(18, 'COXS BAZAR', 'COXS BAZAR', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(19, 'NARSINGDI', 'NARSINGDI', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00'),
(20, 'HOBIGANJ', 'HOBIGANJ', '$2y$10$d4Hd4SYGrAj6k.hTi29u5eU4j0LBACRKVAiREyVoB2xo5D4ZAqPvS', NULL, '2022-02-23 06:00:00', '2022-02-23 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `image`, `details`, `row_status`, `created_at`, `updated_at`) VALUES
(1, 'In sint optio commo', '16445661426206167e02cf4.jpg', 'Soluta anim dolores', 1, '2022-02-11 01:55:42', '2022-02-11 01:55:42');

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
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` date NOT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `title`, `year`, `file`, `details`, `row_status`, `created_at`, `updated_at`) VALUES
(10, 'Totam fugit a ab re', '2008-04-13', '202201311643625874.docx', 'Dolores elit perspi', 1, '2022-01-31 04:44:34', '2022-01-31 04:44:34'),
(11, 'Nobis ut ipsum cons', '1981-01-14', '202202011643690662.jpg', 'In id voluptatem au', 1, '2022-01-31 22:44:22', '2022-01-31 22:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `khamars`
--

CREATE TABLE `khamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bangle_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khamars`
--

INSERT INTO `khamars` (`id`, `year`, `number`, `bangle_month`, `english_month`, `pdf_file`, `row_status`, `created_at`, `updated_at`) VALUES
(2, '27', '7', 'কার্তিক-১৪২৮', 'October-2021', '202202121644643325.pdf', 0, '2022-02-11 23:22:05', '2022-02-12 04:26:27'),
(3, '28', '8', 'অগ্রহায়ণ-১৪২৮', 'November-2021', '202202121644661632.pdf', 1, '2022-02-11 23:50:40', '2022-02-12 04:27:12'),
(4, '27', '9', 'পৌষ-১৪২৮', 'December-2021', '202202121644645336.pdf', 1, '2022-02-11 23:55:36', '2022-02-11 23:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pcr_prefix` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcr_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `apply_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forward_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forward_designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `resume_date` date DEFAULT NULL,
  `pay_type` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_status` enum('Submit','Accept','Delete','Approved','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `pcr_prefix`, `pcr_no`, `date`, `apply_to`, `address`, `branch_name`, `forward_name`, `forward_designation`, `subject`, `applicant_name`, `designation`, `employee_id`, `base_area`, `leave_type`, `due_to`, `need_days`, `reason`, `date_from`, `date_to`, `resume_date`, `pay_type`, `application_status`, `created_at`, `updated_at`) VALUES
(1, 'MOT', '1', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MOTIJHEEL', NULL, NULL, 'LEAVE APPLICATION', 'Ariel Crane', 'Deleniti amet labor', '49', 'Sint ullam nesciunt', 'Permission Leave for H.Q', 'Ea esse rem iure li', '24', 'Et iure dolor rerum', '2022-03-01', '2022-03-18', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:04:23'),
(2, 'MOT', '1', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MOTIJHEEL', NULL, NULL, 'LEAVE APPLICATION', 'Ariel Crane', 'Deleniti amet labor', '49', 'Sint ullam nesciunt', 'Permission Leave for H.Q', 'Ea esse rem iure li', '24', 'Et iure dolor rerum', '2022-03-01', '2022-03-18', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:04:33'),
(3, 'MOT', '1', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MOTIJHEEL', NULL, NULL, 'LEAVE APPLICATION', 'Ariel Crane', 'Deleniti amet labor', '49', 'Sint ullam nesciunt', 'Permission Leave for H.Q', 'Ea esse rem iure li', '24', 'Et iure dolor rerum', '2022-03-01', '2022-03-18', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:07:02'),
(4, 'LAL', '1', '2022-03-06', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', NULL, NULL, 'LEAVE APPLICATION', 'Tanya Mitchell', 'Ratione error quae n', '93', 'Dolore officia nisi', 'Special Leave', 'Ex facere dolor dign', '20', 'Repellendus Facilis', '2022-03-01', '2022-03-31', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:07:26'),
(5, 'LAL', '1', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', NULL, NULL, 'LEAVE APPLICATION', 'Melodie Cantu', 'In eiusmod sed dolor', '59', 'Dolor molestiae quis', 'Special Leave', 'Sunt dolor eu laudan', '28', 'Exercitation elit p', '2022-03-01', '2022-03-16', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:08:07'),
(6, 'LAL', '2', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', NULL, NULL, 'LEAVE APPLICATION', 'Lana Doyle', 'Magnam veniam ad do', '50', 'Omnis consequatur I', 'Annual Leave', 'Quo ut aliquid labor', '24', 'Ut et soluta qui con', '2022-03-01', '2022-03-16', NULL, NULL, 'Delete', '2022-03-05 18:00:00', '2022-04-01 18:00:00'),
(7, 'LAL', '2', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', NULL, NULL, 'LEAVE APPLICATION', 'Hedy Weber', 'Excepturi velit quis', '70', 'Quibusdam consequatu', 'Annual Leave', 'Recusandae Fugiat', '6', 'Dignissimos ratione', '2022-03-01', '2022-03-10', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:16:48'),
(8, 'LAL', '3', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', NULL, NULL, 'LEAVE APPLICATION', 'Selma Mcdaniel', 'Delectus quia ab ma', '20', 'Eiusmod eiusmod ut l', 'Annual Leave', 'Suscipit accusantium', '2', 'Delectus perspiciat', '2022-03-01', '2022-03-08', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:35:43'),
(9, 'LAL', '4', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', NULL, NULL, 'LEAVE APPLICATION', 'Wendy Moses', 'Proident quam fuga', '21', 'Sit corporis ex nul', 'Permission Leave for H.Q', 'Illo fugiat possimu', '28', 'Soluta quia modi id', '2022-03-08', '2022-03-10', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:36:00'),
(10, 'GAZ', '1', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'GAZIPUR', NULL, NULL, 'LEAVE APPLICATION', 'Cain Macdonald', 'Qui eligendi aute qu', '25', 'Enim ut officia adip', 'Sick Leave', 'Qui reprehenderit l', '3', 'Ab tempora qui sequi', '2022-03-01', '2022-03-16', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:36:20'),
(11, 'GAZ', '2', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'GAZIPUR', NULL, NULL, 'LEAVE APPLICATION', 'Chaney Walter', 'Consectetur corporis', '27', 'Et quasi est est et', 'Special Leave', 'In et vel molestias', '3', 'Veniam non est ess', '2022-03-02', '2022-03-16', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:36:45'),
(12, 'GAZ', '3', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'GAZIPUR', NULL, NULL, 'LEAVE APPLICATION', 'Carly Mosley', 'Ullamco optio a rer', '64', 'Et aut ut occaecat i', 'Special Leave', 'Ad voluptatem error', '13', 'Error qui non veniam', '2022-03-01', '2022-03-15', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:37:58'),
(13, 'GAZ', '4', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'GAZIPUR', NULL, NULL, 'LEAVE APPLICATION', 'Rafael Berry', 'Consectetur iste re', '52', 'Voluptate est itaqu', 'Annual Leave', 'Libero quo proident', '13', 'Ipsam quidem aliquam', '2022-03-02', '2022-03-10', NULL, NULL, 'Submit', '2022-03-05 18:00:00', '2022-03-06 05:53:44'),
(14, 'JAM', '1', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'JAMALPUR', NULL, NULL, 'LEAVE APPLICATION', 'Ulric Mccarthy', 'Sunt fugiat incidun', '31', 'Voluptatem quia eius', 'Special Leave', 'Qui in sed dolorem n', '24', 'Ut et eius minima li', '2022-03-01', '2022-03-10', '2022-03-25', 'Pay', 'Delete', '2022-03-05 18:00:00', '2022-04-02 18:00:00'),
(15, 'MOT', '2', '2022-03-10', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MOTIJHEEL', NULL, NULL, 'LEAVE APPLICATION', 'Eden Velazquez', 'Architecto vero rem', '77', 'Velit veniam impedi', 'Casual Leave', 'Numquam explicabo Q', '6', 'In ea iure illo labo', '2022-03-11', '2022-03-19', '2022-03-20', NULL, 'Approved', '2022-03-09 18:00:00', '2022-03-23 18:00:00'),
(16, 'HEA', '1', '2022-03-12', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HEAD OFFICE', NULL, NULL, 'LEAVE APPLICATION', 'g', 'asdg', '222', 'ag', 'Casual Leave', 'sdff', '1', 'sdfsf', '2022-03-20', '2022-03-21', NULL, 'Pay', 'Delete', '2022-03-11 18:00:00', '2022-03-21 01:07:55'),
(17, 'KHU', '1', '2022-03-27', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'KHULNA', NULL, NULL, 'LEAVE APPLICATION', 'MD.Razaul Karim', 'SO', '43', 'Chuadanga', 'Casual Leave', 'fever', '3', 'visiting doctor', '2022-03-28', '2022-03-30', '2022-03-31', NULL, 'Approved', '2022-03-26 18:00:00', '2022-03-26 18:00:00'),
(18, 'GAZ', '5', '2022-03-28', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'GAZIPUR', NULL, NULL, 'LEAVE APPLICATION', 'Yvonne Oliver', 'Officia qui dolorum', '60', 'Voluptatem quidem ea', 'Casual Leave', 'Ipsum sequi odit co', '16', 'Proident consequunt', '2022-03-22', '2022-03-23', NULL, NULL, 'Submit', '2022-03-27 18:00:00', '2022-03-27 23:14:08'),
(19, 'LAL', '5', '2022-03-29', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', NULL, NULL, 'LEAVE APPLICATION', 'Md. Nazrul Islam', 'Dy. Manager, Accounts', '6', 'Dhaka', 'Annual Leave', 'Cousin wedding', '3(three)', 'visiting at home', '2022-03-29', '2022-04-01', '2022-04-29', 'Without Pay', 'Approved', '2022-03-28 18:00:00', '2022-04-02 04:13:51'),
(20, 'BAR', '1', '2022-04-03', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'BARISHAL', NULL, NULL, 'LEAVE APPLICATION', 'Darryl Kelly', 'Voluptate aliquam di', '84', 'Quis repellendus Si', 'Permission Leave for H.Q', 'Elit ea ad omnis am', '14', 'Consequatur Ipsum', '2022-04-04', '2022-04-06', NULL, NULL, 'Submit', '2022-04-02 18:00:00', '2022-04-03 03:29:01'),
(21, 'NOA', '1', '2022-04-03', 'FINANCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'NOAKHALI', NULL, NULL, 'LEAVE APPLICATION', 'Lila Donovan', 'Quia fugiat dolorem', '71', 'Dolor enim et at obc', 'Permission Leave for H.Q', 'Nesciunt quis aut d', '6', 'Incidunt in exceptu', '2022-04-01', '2022-04-06', NULL, NULL, 'Submit', '2022-04-02 18:00:00', '2022-04-03 04:23:15'),
(22, 'HOB', '1', '2022-04-03', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HOBIGANJ', NULL, NULL, 'LEAVE APPLICATION', 'Nadine Buckner', 'Omnis sit qui debit', '66', 'Labore aliqua In pr', 'Permission Leave for H.Q', 'Mollitia neque cillu', '7', 'Porro qui ad dolores', '2022-04-13', '2022-04-22', NULL, NULL, 'Submit', '2022-04-02 18:00:00', '2022-04-03 04:40:33'),
(23, 'MYM', '1', '2022-04-05', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MYMENSINGH', NULL, NULL, 'LEAVE APPLICATION', 'Ursula Pacheco', 'Consectetur ratione', '57', 'Velit impedit nihil', 'Annual Leave', 'Pariatur Et laudant', '16', 'Voluptates vel eos e', '2022-04-06', '2022-04-14', NULL, NULL, 'Approved', '2022-04-04 18:00:00', '2022-04-05 00:45:53'),
(24, 'MYM', '2', '2022-04-09', 'FINANCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MYMENSINGH', 'Anamul', 'Manager', 'LEAVE APPLICATION', 'Jamalia Hansen', 'Store Keeper', '26', 'Mymensingh', 'Special Leave', 'In nemo reiciendis d', '3', 'Saepe adipisicing qu', '2022-04-09', '2022-04-12', NULL, NULL, 'Submit', '2022-04-08 18:00:00', '2022-04-08 23:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `lfas`
--

CREATE TABLE `lfas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pcr_prefix` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcr_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `apply_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forward_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forward_designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  `in_word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_status` enum('Submit','Accept','Delete','Approved','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lfas`
--

INSERT INTO `lfas` (`id`, `pcr_prefix`, `pcr_no`, `date`, `apply_to`, `address`, `branch_name`, `forward_name`, `forward_designation`, `subject`, `applicant_name`, `designation`, `employee_id`, `base_area`, `month`, `total_amount`, `in_word`, `application_status`, `created_at`, `updated_at`) VALUES
(1, 'SAR', '1', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'SARDAGONG', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Desirae English', 'Vero ipsam hic venia', '99', 'Maiores natus ut cil', '1999', 27, 'Fugiat esse molest', 'Approved', '2022-03-05 18:00:00', '2022-03-23 18:00:00'),
(2, 'GAZ', '1', '2022-03-06', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'GAZIPUR', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Serena Beach', 'Sunt eu Nam earum la', '87', 'Ullamco ducimus cor', '2022', 90, 'Quia libero id volu', 'Delete', '2022-03-05 18:00:00', '2022-04-02 18:00:00'),
(3, 'CHA', '1', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'CHATTOGRAM', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Victor West', 'Quis beatae adipisic', '11', 'Incididunt quia fugi', '2022', 54, 'Placeat excepteur o', 'Submit', '2022-03-05 18:00:00', '2022-03-06 00:37:59'),
(4, 'SAR', '1', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'SARDAGONG', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Maite Lee', 'Lorem recusandae Do', '22', 'Libero veniam volup', '2022', 44, 'Doloremque error qui', 'Submit', '2022-03-05 18:00:00', '2022-03-06 00:38:36'),
(5, 'BAR', '1', '2022-03-06', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'BARISHAL', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Mona Graham', 'Reprehenderit esse', '15', 'Voluptatem debitis a', '2022', 61, 'At dolores eius eum', 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:11:46'),
(6, 'BAR', '2', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'BARISHAL', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Whitney Espinoza', 'Ipsam duis quis quia', '74', 'Laudantium dolores', '2022', 96, 'Deleniti rem dolorem', 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:13:59'),
(7, 'BAR', '2', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'BARISHAL', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Jennifer Hampton', 'Dolor quis est proid', '7', 'Aut dolores est anim', '2022', 81, 'Sapiente quisquam es', 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:14:35'),
(8, 'CHA', '2', '2022-03-06', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'CHATTOGRAM', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Thane Vaughn', 'Autem illo debitis o', '82', 'Deserunt labore dele', '2022', 94, 'Sit Nam elit hic e', 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:15:10'),
(9, 'CHA', '2', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'CHATTOGRAM', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Aurelia Cash', 'Sed esse vero tempor', '20', 'Est velit incididun', '2022', 22, 'Est aliqua Voluptas', 'Submit', '2022-03-05 18:00:00', '2022-03-06 01:15:48'),
(10, 'KHU', '1', '2022-03-06', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'KHULNA', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Melodie Calhoun', 'Minus duis deleniti', '94', 'Minima non rerum dol', '2022', 1, 'Omnis impedit commo', 'Accept', '2022-03-05 18:00:00', '2022-03-21 03:26:41'),
(11, 'CHA', '3', '2022-03-06', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'CHATTOGRAM', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Zelda Stephenson', 'Laborum et aut sit', '40', 'Non a neque deserunt', '2022', 10, 'Corporis cupidatat n', 'Submit', '2022-03-05 18:00:00', '2022-03-06 05:57:56'),
(12, 'CUM', '1', '2022-03-09', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'CUMILLA', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Lev Townsend', 'Quia occaecat explic', '75', 'Expedita nostrud asp', '2022', 78, 'Temporibus expedita', 'Submit', '2022-03-08 18:00:00', '2022-03-09 03:19:51'),
(13, 'HOB', '1', '2022-03-10', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HOBIGANJ', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Luke Floyd', 'Dolor quisquam in su', '57', 'Non quis consequatur', '2022', 80, 'Corrupti possimus', 'Submit', '2022-03-09 18:00:00', '2022-03-09 23:19:42'),
(14, 'HEA', '1', '2022-03-12', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HEAD OFFICE', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Raihan Mia', 'Store Kipper', '545', 'Dhaka', '2022', 5242, 'fsfsdf', 'Submit', '2022-03-11 18:00:00', '2022-03-12 00:30:32'),
(15, 'HEA', '2', '2022-04-04', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HEAD OFFICE', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'MD. KAMRUI  ISLAM', 'SO', '45', 'Chuadanga', '2022', 999, 'ONE THOUSAND TAKA ONLY', 'Approved', '2022-03-26 18:00:00', '2022-04-02 18:00:00'),
(16, 'CHA', '4', '2022-04-03', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'CHATTOGRAM', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Madison Keith', 'Odio cum qui quo ut', '19', 'Consequatur Molesti', '2022', 25, 'Assumenda amet eum', 'Submit', '2022-04-02 18:00:00', '2022-04-03 04:24:40'),
(17, 'JAM', '1', '2022-04-03', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'JAMALPUR', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Baker Riley', 'Autem totam ab a aut', '56', 'Ut voluptatem ea re', '1986', 47, 'Possimus eaque aute', 'Submit', '2022-04-02 18:00:00', '2022-04-03 04:35:52'),
(18, 'HOB', '2', '2022-04-03', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HOBIGANJ', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Stacey Barnett', 'Itaque doloribus sit', '37', 'Ut eos dolor sint', '2023', 33, 'Libero dolore aliqua', 'Submit', '2022-04-02 18:00:00', '2022-04-03 04:39:59'),
(19, 'HEA', '3', '2022-04-04', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HEAD OFFICE', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Kobir', 'Storekeeper', '0114', 'Mirpur', '2022', 500, 'Five Thusands', 'Submit', '2022-04-03 18:00:00', '2022-04-04 04:15:51'),
(20, 'JAM', '2', '2022-04-04', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', '\nMYMENSINGH', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Mara Sawyer', 'Dicta laboriosam mi', '2', 'Dignissimos ad dolor', '2022', 100, 'One Hundred', 'Approved', '2022-04-03 18:00:00', '2022-04-04 04:17:29'),
(21, 'KHU', '2', '2022-04-05', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', '\nMYMENSINGH', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Nash Grimes', 'Aliquid est voluptat', '81', 'Nostrud dolore iste', '2022', 67, 'Ipsam quo rerum debi', 'Approved', '2022-04-04 18:00:00', '2022-04-05 00:45:15'),
(22, 'PAB', '1', '2022-04-05', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', '\nMYMENSINGH', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Hedy Johnson', 'Assumenda architecto', '42', 'Ut nulla nihil asper', '2022', 21, 'Ex temporibus aliqui', 'Approved', '2022-04-04 18:00:00', '2022-04-05 02:33:49'),
(23, 'MYM', '1', '2022-04-05', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MYMENSINGH', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Joseph English', 'Deleniti laborum Et', '11', 'Quasi qui quia omnis', '2022', 58, 'Natus in nulla labor', 'Approved', '2022-04-04 18:00:00', '2022-04-05 02:35:03'),
(24, 'MYM', '2', '2022-04-05', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MYMENSINGH', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Rhiannon Bender', 'Quasi distinctio Se', '43', 'Cumque atque velit', '2022', 30, 'Esse libero et labo', 'Submit', '2022-04-04 18:00:00', '2022-04-05 04:34:39'),
(25, 'BAR', '3', '2022-04-07', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'BARISHAL', NULL, NULL, 'LEAVE FARE ASSISTANCE(LFA)', 'Thomas Mercado', 'Atque ad et explicab', '24', 'Ut adipisicing volup', '2022', 83, 'Odio dolores reprehe', 'Submit', '2022-04-06 18:00:00', '2022-04-07 02:32:05'),
(26, 'PAB', '2', '2022-04-09', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'PABNA', 'Jordan Mccormick', 'Vel voluptatem In c', 'LEAVE FARE ASSISTANCE(LFA)', 'Emma Kemp', 'Fugiat dignissimos a', '40', 'Deleniti quia repreh', '2022', 67, 'Quod quia amet vel', 'Submit', '2022-04-08 18:00:00', '2022-04-09 00:37:18'),
(27, 'MAO', '1', '2022-04-09', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MAONA', 'Casey Levine', 'Voluptatem id aliqu', 'LEAVE FARE ASSISTANCE(LFA)', 'Steel Hancock', 'Esse sunt illo aliqu', '94', 'Cumque nisi enim ips', '2022', 67, 'In velit dolor quis', 'Submit', '2022-04-08 18:00:00', '2022-04-09 03:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `literatures`
--

CREATE TABLE `literatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `literatures`
--

INSERT INTO `literatures` (`id`, `title`, `file`, `details`, `row_status`, `created_at`, `updated_at`) VALUES
(2, 'বঙ্গবন্ধুকে যারা মুছতে চেয়েছিল', '202203301648635287.pdf', NULL, 1, '2022-03-30 04:14:47', '2022-03-30 04:14:47'),
(3, 'Minus R NN', '202203301648636281.jpg', NULL, 1, '2022-03-30 04:16:13', '2022-03-30 04:31:21'),
(4, 'তারাই আজ আস্তাকুঁড়ে', '202203301648636327.pdf', NULL, 1, '2022-03-30 04:32:07', '2022-03-30 04:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `material_requisitions`
--

CREATE TABLE `material_requisitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pcr_prefix` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcr_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `apply_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forward_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forward_designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_status` enum('Submit','Accept','Delete','Approved','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_requisitions`
--

INSERT INTO `material_requisitions` (`id`, `pcr_prefix`, `pcr_no`, `date`, `apply_to`, `address`, `branch_name`, `forward_name`, `forward_designation`, `subject`, `applicant_name`, `designation`, `employee_id`, `base_area`, `application_status`, `created_at`, `updated_at`) VALUES
(1, 'LAL', '1', '2022-03-08', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', '', '', 'Material Requisition', 'Scarlet Ochoa', 'Magnam aut dolores e', '62', 'Distinctio Qui comm', 'Submit', '2022-03-08 04:42:33', '2022-03-08 04:42:33'),
(2, 'GAZ', '1', '2022-03-08', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'GAZIPUR', '', '', 'Material Requisition', 'Deacon Howe', 'Aut perferendis et u', '87', 'Et adipisicing magna', 'Submit', '2022-03-08 04:58:09', '2022-03-08 04:58:09'),
(3, 'KHU', '2', '2022-03-23', 'FINANCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'KHULNA', '', '', 'Material Requisition', 'sf', 'store keeper', '333', 'Khulna', 'Submit', '2022-03-23 02:52:55', '2022-03-23 02:52:55'),
(4, 'LAL', '1', '2022-03-25', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', '', '', 'Material Requisition', 'Aunik', 'Accounts Officer', '148', 'Lalmatia', 'Submit', '2022-03-24 22:00:43', '2022-03-24 22:00:43'),
(5, 'LAL', '1', '2022-03-27', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'LALMATIA', '', '', 'Material Requisition', 'MD. KAMRUI  ISLAM', 'SO', '45', 'Chuadanga', 'Submit', '2022-03-27 02:08:01', '2022-03-27 02:08:01'),
(6, 'JOY', '1', '2022-04-03', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'JOYPURHAT', '', '', 'Material Requisition', 'Kareem Wilcox', 'Suscipit qui nemo es', '75', 'Non excepturi nemo m', 'Submit', '2022-04-03 04:54:54', '2022-04-03 04:54:54'),
(7, 'NOA', '1', '2022-04-04', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'NOAKHALI', '', '', 'Material Requisition', 'Carolyn Hurst', 'Et explicabo Conseq', '74', 'Ex vel maxime magna', 'Submit', '2022-04-03 23:44:31', '2022-04-03 23:44:31'),
(8, 'SAR', '1', '2022-04-05', 'FINANCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'SARDAGONG', '', '', 'Material Requisition', 'Neil Deleon', 'Enim expedita quis e', '78', 'Consectetur in quia', 'Submit', '2022-04-05 02:12:03', '2022-04-05 02:12:03'),
(9, 'COX', '1', '2022-04-05', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'COX\'S BAZAR', '', '', 'Material Requisition', 'Juliet Craig', 'Sit culpa esse sit', '11', 'Ut odit elit incidi', 'Submit', '2022-04-05 04:40:09', '2022-04-05 04:40:09'),
(10, 'NAR', '3', '2022-04-10', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'NARSINGDI', '', '', 'Material Requisition', 'Kelly Morales', 'Fugiat sit non qui', '26', 'Explicabo Est quisq', 'Submit', '2022-04-10 02:06:19', '2022-04-10 02:06:19'),
(11, 'MAO', '2', '2022-04-10', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MAONA', '', '', 'Material Requisition', 'Noelle Hawkins', 'Sint commodo explic', '3', 'Aut quasi cum beatae', 'Approved', '2022-04-10 02:08:39', '2022-04-10 02:08:39'),
(12, 'MAO', '2', '2022-04-10', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MAONA', 'Alice Silva', 'Atque velit expedita', 'Material Requisition', 'Timothy Andrews', 'Non est consequat V', '53', 'Ea magnam sed dolore', 'Approved', '2022-04-10 02:41:57', '2022-04-10 02:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `materital_details`
--

CREATE TABLE `materital_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `material_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_speci` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materital_details`
--

INSERT INTO `materital_details` (`id`, `material_id`, `item_name`, `item_speci`, `item_size`, `item_qty`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 'Adria Leach', '', 'Deleniti enim volupt', '798', 'Omnis consequuntur o', NULL, NULL),
(2, 1, 'Halee Bray', '', 'Ipsa et magna nihil', '655', 'Tenetur quis ad ut a', NULL, NULL),
(3, 1, 'Omar Reilly', '', 'Qui corporis dolore', '890', 'Dolor ut quod recusa', NULL, NULL),
(4, 2, 'Oren Brooks', '', 'Nihil ut labore et e', '629', 'Non iure nulla ut do', NULL, NULL),
(5, 2, 'Hayes Glenn', '', 'Similique et quo cup', '224', 'Quis sit tenetur off', NULL, NULL),
(6, 2, 'Kylee Avila', '', 'Accusantium non blan', '802', 'Cumque sed aspernatu', NULL, NULL),
(7, 2, 'Sierra Roberson', '', 'Omnis veniam sit d', '235', 'Aute nemo ex alias d', NULL, NULL),
(8, 2, 'Victoria Chambers', '', 'Doloremque quia sunt', '430', 'Nobis ut id adipisic', NULL, NULL),
(9, 2, 'Veda Mills', '', 'Velit saepe dolorem', '208', 'Velit velit elit m', NULL, NULL),
(10, 2, 'Amery Mclean', '', 'Sunt cumque dolorem', '173', 'Omnis possimus exer', NULL, NULL),
(11, 3, 'Printer', '', '1', '1', 'Printer', NULL, NULL),
(12, 3, 'Toner', '', 'l', '13', 'Toner', NULL, NULL),
(13, 3, 'Pen', '', '1', '1 Box', '1', NULL, NULL),
(14, 4, 'Printer Toner', '', '1', '1', 'M12a', NULL, NULL),
(15, 4, 'Printer Toner', '', '1', '1', 'Cannon LBP 6000', NULL, NULL),
(16, 5, 'printer', '', '1', '1', 'm12', NULL, NULL),
(17, 6, 'Yetta Fowler', '', 'Voluptas nostrum sit', '120', 'Esse hic est est cu', NULL, NULL),
(18, 6, 'Ross Burks', '', 'Possimus dolores ut', '705', 'Occaecat omnis dolor', NULL, NULL),
(19, 7, 'Juliet Lane', '', 'Sit itaque enim comm', '358', 'Ea eligendi iusto ve', NULL, NULL),
(20, 8, 'Avye Blake', '', 'Iusto consequatur l', '262', 'Voluptates aspernatu', NULL, NULL),
(21, 8, 'Adena Mccarty', '', 'Numquam voluptatem', '837', 'Consectetur reprehen', NULL, NULL),
(22, 9, 'Ramona Solomon', '', 'Voluptates consequat', '838', 'Eiusmod in similique', NULL, NULL),
(23, 10, 'Lamar Potter', 'Delectus non labori', 'Minima quis repudian', '244', 'Ipsum voluptatibus', NULL, NULL),
(24, 10, 'Maxwell Moody', 'Accusamus tenetur et', 'Minima quo numquam q', '163', 'Qui ex maxime magna', NULL, NULL),
(25, 10, 'Yvonne Osborne', 'Et qui ea blanditiis', 'Enim adipisicing et', '948', 'Et magna omnis volup', NULL, NULL),
(26, 11, 'Aretha Sanchez', 'Voluptatem reprehend', 'Et proident sint d', '826', 'In qui autem sit lab', NULL, NULL),
(27, 11, 'Upton Booth', 'Deserunt dolore offi', 'Molestiae incidunt', '369', 'Ullamco nostrum omni', NULL, NULL),
(28, 11, 'Indira Gallagher', 'Incididunt facilis o', 'Non maxime officia n', '622', 'Voluptatibus culpa c', NULL, NULL),
(29, 11, 'Kiayada Fernandez', 'Id nulla ex suscipit', 'Id quis est amet e', '61', 'Consequatur in iste', NULL, NULL),
(30, 11, 'Clayton Wong', 'Et totam ad aliquam', 'Quam eu ullamco aliq', '899', 'Rerum modi aut dolor', NULL, NULL),
(31, 12, 'Evelyn Vazquez', 'Voluptas aut aute co', 'Eaque molestiae opti', '571', 'Aut consequuntur atq', NULL, NULL),
(32, 12, 'Mira Mercado', 'Ratione omnis autem', 'Sint facere temporib', '978', 'Enim facilis ullam p', NULL, NULL);

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
(5, '2022_01_20_061533_create_categories_table', 1),
(6, '2022_01_20_061757_create_sub_categories_table', 1),
(7, '2022_01_27_090949_create_website_info_table', 2),
(8, '2022_01_29_050448_create_histories_table', 3),
(9, '2022_01_31_080039_create_awards_table', 4),
(10, '2022_02_01_044805_create_over_views_table', 5),
(11, '2022_02_01_070103_create_our_brands_table', 6),
(12, '2022_02_01_092107_create_sister_concerns_table', 7),
(13, '2022_02_01_105346_create_news_table', 8),
(14, '2022_02_11_070030_create_events_table', 9),
(15, '2022_02_11_082210_create_khamars_table', 10),
(16, '2022_02_12_104640_create_videos_table', 11),
(17, '2022_02_15_073514_create_products_table', 12),
(18, '2022_02_22_055922_create_petty_cashes_table', 13),
(19, '2022_02_22_060138_create_lfas_table', 13),
(20, '2022_02_22_060224_create_leave_applications_table', 13),
(21, '2022_02_24_053429_create_employees_table', 14),
(22, '2022_03_08_044548_create_material_requisitions_table', 15),
(24, '2022_03_08_100003_create_materital_details_table', 16),
(25, '2022_03_30_085306_create_literatures_table', 17),
(26, '2022_03_30_085343_create_notices_table', 17),
(27, '2022_04_04_045436_create_sliders_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `details`, `row_status`, `created_at`, `updated_at`) VALUES
(1, 'Test new update', '164431041762022f91b31b5.png', 'sdfdff update', 0, '2022-02-08 02:53:15', '2022-02-08 02:53:37'),
(3, 'Architecto illum ma', '164431044662022fae44494.jpg', 'Mollitia sed eveniet', 1, '2022-02-08 02:54:06', '2022-02-08 02:54:06'),
(4, 'Iusto rerum dolor eu', '164431045662022fb8928f8.png', 'Non aperiam distinct', 1, '2022-02-08 02:54:16', '2022-02-08 02:54:16'),
(5, 'Duis quo doloremque', '1644311265620232e112940.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur dicta quas, voluptate dolorum dolores id nulla autem. Rem odio tenetur alias. Dolore corrupti autem dicta saepe excepturi sapiente, soluta aut natus voluptate.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur dicta quas, voluptate dolorum dolores id nulla autem. Rem odio tenetur alias. Dolore corrupti autem dicta saepe excepturi sapiente, soluta aut natus voluptate.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur dicta quas, voluptate dolorum dolores id nulla autem. Rem odio tenetur alias. Dolore corrupti autem dicta saepe excepturi sapiente, soluta aut natus voluptate.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur dicta quas, voluptate dolorum dolores id nulla autem. Rem odio tenetur alias. Dolore corrupti autem dicta saepe excepturi sapiente, soluta aut natus voluptate.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur dicta quas, voluptate dolorum dolores id nulla autem. Rem odio tenetur alias. Dolore corrupti autem dicta saepe excepturi sapiente, soluta aut natus voluptate.', 1, '2022-02-08 03:07:45', '2022-02-08 03:07:45'),
(6, 'Aut animi dolorem e', '1644566056620616288e51e.jpg', 'Qui minus possimus', 1, '2022-02-11 01:54:16', '2022-02-11 01:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `file`, `details`, `row_status`, `created_at`, `updated_at`) VALUES
(1, 'Elit amet est labo', '202203301648638341.pdf', 'Commodo cupiditate e', 1, '2022-03-30 05:05:41', '2022-03-30 05:05:41'),
(2, 'Adipisicing ipsa ni', '202203301648638636.pdf', NULL, 1, '2022-03-30 05:10:36', '2022-03-30 05:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `our_brands`
--

CREATE TABLE `our_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_brands`
--

INSERT INTO `our_brands` (`id`, `title`, `image`, `row_status`, `created_at`, `updated_at`) VALUES
(1, 'Global', '16486177756243e92f70b2f.jpg', 1, '2022-03-27 02:38:57', '2022-03-29 23:22:55'),
(2, 'Do', '16486179766243e9f87e836.jpg', 1, '2022-03-27 02:39:10', '2022-03-29 23:26:16'),
(3, 'Vet', '16486177326243e9049ecf8.jpg', 1, '2022-03-27 02:39:25', '2022-03-29 23:22:12'),
(4, 'ASP', '16486178096243e9512db05.jpg', 1, '2022-03-29 23:23:29', '2022-03-29 23:23:29'),
(5, 'BIO', '16486178346243e96a3e2a8.jpg', 1, '2022-03-29 23:23:54', '2022-03-29 23:23:54'),
(6, 'PULIKE', '16486178946243e9a6c239f.jpg', 1, '2022-03-29 23:24:54', '2022-03-29 23:24:54'),
(7, 'DDC', '16486180416243ea39e90fd.jpg', 1, '2022-03-29 23:27:21', '2022-03-29 23:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `over_views`
--

CREATE TABLE `over_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `petty_cashes`
--

CREATE TABLE `petty_cashes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pcr_prefix` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcr_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `apply_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forward_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forward_designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` double NOT NULL,
  `total_expense_in_last_month` double NOT NULL,
  `estimated_total_expense_in_current_month` double NOT NULL,
  `petty_cash_in_current_month` double NOT NULL,
  `in_word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_rent` double NOT NULL,
  `internet_bill` double NOT NULL,
  `utility_bill` double NOT NULL,
  `delivery_expense` double NOT NULL,
  `other_expense` double NOT NULL,
  `application_status` enum('Submit','Accept','Delete','Approved','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `total_bill` double NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petty_cashes`
--

INSERT INTO `petty_cashes` (`id`, `pcr_prefix`, `pcr_no`, `date`, `apply_to`, `address`, `branch_name`, `forward_name`, `forward_designation`, `subject`, `applicant_name`, `designation`, `employee_id`, `base_area`, `month`, `opening_balance`, `total_expense_in_last_month`, `estimated_total_expense_in_current_month`, `petty_cash_in_current_month`, `in_word`, `office_rent`, `internet_bill`, `utility_bill`, `delivery_expense`, `other_expense`, `application_status`, `created_at`, `total_bill`, `updated_at`) VALUES
(1, 'PAB', '1', '2022-03-05', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'PABNA', NULL, NULL, 'Depot Petty Cash Requisition', 'Keely Rush', '2415', '2323232', 'Et non necessitatibu', 'March-2022', 232342, 222, 22323, 1, 'Velit laboris a in', 3, 29, 28, 69, 62, 'Submit', '2022-03-04 23:32:34', 75, '2022-03-04 23:32:34'),
(2, 'NAR', '1', '2022-03-05', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'NARSINGDI', NULL, NULL, 'Depot Petty Cash Requisition', 'Ferdinand Estes', '15145', '515', 'Adipisci exercitatio', '3', 44, 1, 2, 3, 'Quis id voluptas sae', 94, 80, 14, 68, 35, 'Submit', '2022-03-04 23:45:26', 90, '2022-03-04 23:45:26'),
(3, 'PAB', '2', '2022-03-05', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'PABNA', NULL, NULL, 'Depot Petty Cash Requisition', 'Howard Summers', 'Quod commodo in est', '35', 'Natus adipisicing id', '12', 39, 9, 10, 12, 'Sit qui voluptatem', 14, 31, 85, 55, 97, 'Submit', '2022-03-04 23:52:22', 32, '2022-03-04 23:52:22'),
(4, 'PAB', '3', '2022-03-06', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'PABNA', NULL, NULL, 'Depot Petty Cash Requisition', 'Garth Roberts', 'Sit rerum qui sit p', '54', 'Molestiae et distinc', 'March-2022', 44, 9, 3, 4, 'Quibusdam in deserun', 68, 49, 74, 16, 44, 'Submit', '2022-03-06 01:39:20', 66, '2022-03-06 01:39:20'),
(5, 'FAR', '1', '2022-03-06', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'FARIDPUR', NULL, NULL, 'Depot Petty Cash Requisition', 'Xaviera Allison', 'Excepteur in tempore', '10', 'Cumque sit ipsum rer', '9', 22, 7, 8, 11, 'Adipisci officia max', 33, 7, 44, 1, 97, 'Submit', '2022-03-06 05:52:56', 42, '2022-03-06 05:52:56'),
(6, 'BOG', '1', '2022-03-06', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'BOGURA', NULL, NULL, 'Depot Petty Cash Requisition', 'Aubrey Decker', 'Adipisci ratione est', '30', 'Nemo voluptatem sap', 'March-2022', 5, 8, 6, 6, 'Atque dolore assumen', 92, 18, 80, 3, 72, 'Submit', '2022-03-06 05:56:27', 92, '2022-03-06 05:56:27'),
(7, 'JAM', '1', '2022-03-07', 'FINFNCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'JAMALPUR', NULL, NULL, 'Depot Petty Cash Requisition', 'Korim Mia', 'Store Keeper', '454', 'Barishal', 'March-2022', 4520, 140, 445, 541, 'TEst', 545, 455, 8715, 178, 1551, 'Submit', '2022-03-07 00:33:26', 4784, '2022-03-07 00:33:26'),
(8, 'Hea', '1', '2022-03-07', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'Head Office', NULL, NULL, 'Depot Petty Cash Requisition', 'Camilla Atkinson', 'Eaque anim tempor es', '31', 'Veniam ab exercitat', 'March-2022', 76, 2, 6, 2, 'Alias architecto tem', 82, 6, 6, 81, 88, 'Submit', '2022-03-07 04:18:04', 51551, '2022-03-07 04:18:04'),
(9, 'PAB', '4', '2022-03-09', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'PABNA', NULL, NULL, 'Depot Petty Cash Requisition', 'Keane Dixon', 'Magnam et reprehende', '66', 'Minim commodi quos v', 'March-2022', 91, 1, 7, 1, 'Sit neque voluptate', 21, 59, 42, 24, 24, 'Submit', '2022-03-09 00:22:12', 93, '2022-03-09 00:22:12'),
(10, 'HEA', '2', '2022-03-10', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HEAD OFFICE', NULL, NULL, 'Depot Petty Cash Requisition', 'asd', 'sads', '2323', 'asd', 'March-2022', 1233, 3232, 2323, 2323, '232323', 232, 232, 232, 3245, 23534, 'Submit', '2022-03-10 01:08:36', 2353532, '2022-03-10 01:08:36'),
(11, 'HEA', '3', '2022-03-10', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HEAD OFFICE', NULL, NULL, 'Depot Petty Cash Requisition', 'sdfdf', 'sdfdf', '4541', 'sd', 'March-2022', 34, 343, 34, 3364, 'sdfgg', 344, 343, 343, 34, 3434, 'Submit', '2022-03-10 04:52:23', 34343, '2022-03-10 04:52:23'),
(12, 'KHU', '1', '2022-03-21', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'KHULNA', NULL, NULL, 'Depot Petty Cash Requisition', 'Arsenio Acevedo', 'Eiusmod maiores volu', '78', 'Laborum Dicta volup', '1', 50, 6, 5, 7, 'Earum facere et nequ', 77, 65, 81, 56, 52, 'Accept', '2022-03-20 23:35:19', 14, '2022-03-23 18:00:00'),
(13, 'HEA', '4', '2022-03-27', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HEAD OFFICE', NULL, NULL, 'Depot Petty Cash Requisition', 'MD. KAMRUI  ISLAM', 'SO', '45', 'Chuadanga', 'March-2022', 100, 100, 100, 100, '400', 100, 100, 100, 100, 1000, 'Submit', '2022-03-27 01:57:12', 100, '2022-03-27 01:57:12'),
(14, 'PAB', '5', '2022-03-27', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'PABNA', NULL, NULL, 'Depot Petty Cash Requisition', 'MD. KAMRUI  ISLAM', 'SO', '45', 'Chuadanga', 'May-2022', 100, 100, 100, 100, '400', 100, 100, 100, 100, 1000, 'Approved', '2022-03-27 01:57:57', 1, '2022-04-02 18:00:00'),
(15, 'HOB', '1', '2022-04-03', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'HOBIGANJ', NULL, NULL, 'Depot Petty Cash Requisition', 'Germane Hogan', 'Fugiat quis voluptas', '43', 'Repudiandae reprehen', '12', 45, 11, 7, 6, 'Sed rerum placeat u', 55, 13, 78, 6, 93, 'Submit', '2022-04-03 03:23:18', 85, '2022-04-03 03:23:18'),
(16, 'FAR', '2', '2022-04-03', 'DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'FARIDPUR', NULL, NULL, 'Depot Petty Cash Requisition', 'Kimberley Heath', 'Laudantium sequi el', '75', 'Nobis corrupti culp', '9', 16, 7, 7, 6, 'Duis molestiae velit', 48, 33, 38, 18, 55, 'Submit', '2022-04-03 04:39:26', 34, '2022-04-03 04:39:26'),
(17, 'KHU', '2', '2022-04-05', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'KHULNA', NULL, NULL, 'Depot Petty Cash Requisition', 'Hammett Conway', 'Consequatur exercit', '96', 'Itaque eum laborum', 'April-2022', 73, 3, 10, 1, 'Necessitatibus error', 40, 87, 38, 8, 1, 'Submit', '2022-04-05 00:06:52', 19, '2022-04-05 00:06:52'),
(18, 'NAR', '2', '2022-04-05', 'FINANCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'NARSINGDI', NULL, NULL, 'Depot Petty Cash Requisition', 'Kennan Cantrell', 'Non nisi porro conse', '95', 'Natus est sed facili', '6', 26, 3, 2, 11, 'Proident quibusdam', 20, 13, 48, 6, 68, 'Submit', '2022-04-05 02:20:44', 86, '2022-04-05 02:20:44'),
(19, 'FAR', '3', '2022-04-05', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'FARIDPUR', NULL, NULL, 'Depot Petty Cash Requisition', 'Alexander Mcintosh', 'Beatae architecto in', '48', 'Et quis quidem ut ut', 'April-2022', 89, 9, 2, 5, 'Ut qui cum alias cup', 11, 7, 21, 34, 17, 'Submit', '2022-04-05 02:42:44', 69, '2022-04-05 02:42:44'),
(20, 'MYM', '1', '2022-04-05', 'FINANCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MYMENSINGH', NULL, NULL, 'Depot Petty Cash Requisition', 'Rigel Puckett', 'Ipsam et et molestia', '9', 'Ipsa nulla quod non', 'April-2022', 78, 10, 3, 7, 'Dolorem ipsum sed p', 100, 33, 94, 42, 25, 'Approved', '2022-04-05 02:43:40', 68, '2022-04-05 02:43:40'),
(21, 'MYM', '2', '2022-04-05', 'FINANCE DIRECTOR', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MYMENSINGH', NULL, NULL, 'Depot Petty Cash Requisition', 'Cassady Galloway', 'Amet excepteur ex q', '96', 'Eveniet veritatis n', 'April-2022', 20, 1, 4, 8, 'Quasi non sunt volup', 49, 100, 71, 83, 27, 'Submit', '2022-04-05 04:24:32', 26, '2022-04-05 04:24:32'),
(22, 'MAO', '1', '2022-04-09', 'DIST. & CC MANAGER', '2/10, Block-B, Lalmatia, Dhaka-1207.', 'MAONA', NULL, NULL, 'Depot Petty Cash Requisition', 'April Talley', 'Voluptatem Quis Nam', '47', 'Illum non quidem co', 'April-2022', 65, 7, 8, 5, 'Tenetur esse labore', 32, 23, 41, 98, 52, 'Submit', '2022-04-09 02:34:26', 3, '2022-04-09 02:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_keypoints` text COLLATE utf8mb4_unicode_ci,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_title`, `product_image`, `product_keypoints`, `product_details`, `row_status`, `created_at`, `updated_at`) VALUES
(1, 6, 7, 'BIOLACT-PREMIX', '16484608596241843b97ffb.jpg', NULL, '<ol><ol><li style=\"text-align: justify; \"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">COMPOSITION (PER KG):</font></b></li><li style=\"text-align: justify;\">Vitamin A -------------------------------------- 2,500,000 IU<span style=\"white-space:pre\">	</span></li><li style=\"text-align: justify;\">Vitamin D3 --------------------------------------- 500,000 IU<span style=\"white-space:pre\">	</span></li><li style=\"text-align: justify;\">Vitamin E ---------------------------------------------5.0 G<span style=\"white-space:pre\">	</span></li><li style=\"text-align: justify;\">Yeast Extract--------------------------------------- 300.0 G<span style=\"white-space:pre\">	</span></li><li style=\"text-align: justify; \">Brewer Yeast and Calcium Carbonate add up to-------1,000.0 G</li></ol><li style=\"text-align: justify; \"><br></li><li style=\"text-align: justify; \"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">GUARANTEED ANALYSIS:</font></b></li><li style=\"text-align: justify;\">Vitamin A----------------------------min. 2,500 IU/g</li><li style=\"text-align: justify;\">Vitamin D3---------------------------min. 500 IU/g</li><li style=\"text-align: justify;\">Vitamin E----------------------------min. 5 mg/g&nbsp;</li><li style=\"text-align: justify;\">Crude Protein Analysis---------------min. 300 mg/g</li><li style=\"text-align: justify;\"><br></li><li style=\"text-align: justify; \"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">DESCRIPTION:</font></b></li><li style=\"text-align: justify;\">To promote pullets (12th - 16th Weeks) general health and to prepare for egg laying and to ensure good egg quality, increase of egg yield as well as prolonging the egg laying period when they reach the stage of adult hens. Also, designed for layers from 17th weeks onwards till retirement. It is used to promote general health of layers and for improving egg laying &amp; egg shell and good egg quality, increase of egg yield as well as prolonging the egg peak performance period and overall egg laying period.</li><li style=\"text-align: justify;\"><br></li><li style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">DOSAGE:</font></b></li><li style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">(12th - 16th) Weeks:</font></b> 1Kg - 1.5Kg per MT of feed.</li><li style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">(17th - 60th) Weeks:</font></b> 500g - 1Kg per MT of feed.</li><li style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">60th Weeks to Retired:</font></b> 500g per MT of feed.</li><li style=\"text-align: justify;\">In cases where there is a sudden drop of egg yield as a result of sickness, environmental factors dosage of BIOLACT PREMIX (LAYERS) use up to 1.5Kg per MT of feed for 3-5 days.</li><li style=\"text-align: justify;\"><br></li><li style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">PRECAUTION:</font></b></li><li style=\"text-align: justify;\">BIOLACT PREMIX (LAYERS)&nbsp;is a free flowing light brown to brown insoluble powder with typical yeast odor</li><li style=\"text-align: justify;\">BIOLACT PREMIX (LAYERS) being a nutritional/dietary supplement is generally safe and does not require any withdrawal period and no special precaution is needed. Do not exceed or prolong the dosing period.</li><li style=\"text-align: justify;\"><br></li><li style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">SHELF-LIFE:</font></b></li><li style=\"text-align: justify;\">The shelf-life for BIOLACT PREMIX (LAYERS) is 24 months when stored in proper storage condition.&nbsp;</li><li style=\"text-align: justify;\">Once the bag is open, use the product within 30 days.</li><li style=\"text-align: justify;\"><b style=\"font-size: 0.875rem;\"><br></b></li><li style=\"text-align: justify;\"><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\"><b style=\"font-size: 0.875rem;\">STORAGE:</b><br></font></li><li style=\"text-align: justify;\">Store BIOLACT PREMIX (LAYERS) in a cool and dry place without direct light and with proper ventilation.&nbsp;</li><li style=\"text-align: justify;\">Product should not be placed on floor.</li><li style=\"text-align: justify;\"><br></li><li style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">PACKING:</font></b></li><li style=\"text-align: justify;\">BIOLACT PREMIX (LAYERS) is packed in 10Kg per HDPE pail with tightly sealed cover.</li><li style=\"text-align: justify;\"><br></li></ol>', 1, '2022-02-23 01:25:38', '2022-03-28 03:51:56'),
(2, 9, 9, 'DEXALON', '16484476446241509c0b957.jpg', '<ul><li>Rapid action</li><li>Double killing effect</li><li>Very low resistance rate</li></ul>', '<div style=\"text-align: justify; \"><font color=\"#085294\"><b>COMPOSITION</b>&nbsp;</font></div><div style=\"text-align: justify;\">(per 100 ml) Solution for injection</div><div style=\"text-align: justify;\">Dexamethasone qodium phosphate------------------------200 mg</div><div style=\"text-align: justify;\">(equivalent to dexatncthasone base 152 tug)</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">PROPERTIES</font></b></div><div style=\"text-align: justify;\">Dexamethasone is a very potent corticostcriod, which main effect arc as follows :</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">Anti-inflammatory activity :</font>&nbsp;</b>20 to 30 times more potent than cortisol.</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">neoglycogenesic activity&nbsp; :</font>&nbsp;</b>20 to 30 times more potent than cortisol.</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">mineralocorticoid activity :</font>&nbsp;</b>(retention of sodium and water) : practically no effect on electrolyte balance.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Dexamethasone is used for its anti-inflammatory and immunosusppressant glucocorticoid Properties, which suppress the clinical manifestations of disease in a wide range of disorders (allergic disorders : asthma, eczema, ketosis, pregnancy toxaemia, lameness, arthritis.<span style=\"font-size: 0.875rem;\">The parenteral route allows to act in severe disease or if an emergency arises (acute anaphylaxis).</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">INDICATION</font></div><div style=\"text-align: justify;\">Equidae, cattle, sheep, and goats : anti-inflammatory treatment.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">ADMINISTRATION ROUTE AND DOSAGE</font></b></div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">Parenteral route :</font></b> I.M., I.V., S.C., intra and periarticutar.</div><div style=\"text-align: justify;\">1 to 5 ml per 100 kg, for 1 to 3 consecutive days, without exceeding 20 ml per animal :&nbsp; &nbsp;</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">Adult horses :</font> </b>1.5 to 2 ml per 100 kg of live weight.&nbsp; &nbsp;</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">Foals :</font></b> 2.5 to 5 ml per 100 kg of live weight.&nbsp; &nbsp;</div><div style=\"text-align: justify;\"><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\"><b>Adult cattle :</b> </font>1.5 ml per 100 kg of live weight.&nbsp; &nbsp;</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">Young cattle </font>:</b> 2.5 to 5 ml per 100 kg of live weight.&nbsp; &nbsp;</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">Sheep and goats :</font></b> 1.5 ml per 100 kg of live weight.</div><div style=\"text-align: justify;\">&nbsp;</div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">CONTRAINDICATIONS AND PRECAUTIONS&nbsp;</font></b></div><div style=\"text-align: justify;\">Renal dysfunctions, diabetes.</div><div style=\"text-align: justify;\">Do not use in pregnant female during the second half of pregnancy.</div><div style=\"text-align: justify;\">Viral diseases (corticosteroids generally decreases the efficacy of the immune system).</div><div style=\"text-align: justify;\">Do not use in the beginning of the lactating period (corticosteroids inhibit temporarily the lacteal secretion).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">WITHDRAWAL PERIOD</font></b></div><div style=\"text-align: justify;\">Treated animals should not be slaughtered for human consumption during treatment and within 6 days after the end of the treatment.&nbsp;<span style=\"font-size: 0.875rem;\">Milk taken from dairy females during treatment and for 6 </span>milking\'s<span style=\"font-size: 0.875rem;\">&nbsp;after treatment must not be delivered to human consumption.</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">PACKAGING</font></b></div><div style=\"text-align: justify;\">Box of 12 bottles of 50 ml</div><div style=\"text-align: justify;\">Bottle of 100 ml</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\">Manufactured By:</font></b></div><div style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255);\">Dopharma</span></div><div style=\"text-align: justify;\">France S.A.S.</div><div style=\"text-align: justify;\">23 Rue du Prieuré, Saint-Herblon</div><div style=\"text-align: justify;\">44150 Vair-sur-Loire, France</div><div style=\"text-align: justify; \"><br></div>', 1, '2022-02-23 01:45:15', '2022-03-31 00:34:47'),
(3, 9, 9, 'HEPARENOL', '164844312262413ef2d4666.jpg', NULL, '<ol><li><div style=\"text-align: justify;\"><b style=\"white-space: break-spaces; font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 0.875rem;\"><font color=\"#295218\">INDICATIONS</font></b></div><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Feed supplement for improving towards liver functioning of Cattle, Sheep, Goat and Poultry.</span></div></font></li><li><div style=\"text-align: justify;\"><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><span style=\"white-space: break-spaces;\"><br></span></font></div><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\" color=\"#295218\"><div style=\"text-align: justify; background-color: rgb(255, 255, 255);\"><b style=\"white-space: break-spaces; font-size: 0.875rem;\">COMPOSITION</b><span style=\"white-space: break-spaces; font-size: 0.875rem;\"> </span></div></font></li><li><div style=\"text-align: justify;\"><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\" style=\"font-size: 0.875rem;\"><span style=\"white-space: break-spaces;\">(per 100 ml) </span></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\" style=\"font-size: 0.875rem;\"><span style=\"white-space: break-spaces;\">Drinkable solution</span></font></div><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Sorbitol --------------------------------------35 g</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Acetyl methionine ------------------------10 g&nbsp;</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Choline chloride --------------------------7.5 g</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Betain</span><span style=\"font-size: 0.875rem; white-space: pre;\">	</span><span style=\"white-space: break-spaces; font-size: 0.875rem;\">&nbsp;</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Lysine HCI</span><span style=\"font-size: 0.875rem; white-space: pre;\">	</span><span style=\"white-space: break-spaces; font-size: 0.875rem;\">&nbsp;</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Flavored excipient containing plant extracts (artichoke, gentia, boldo).</span></div></font></li></ol><p></p><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 0.875rem; background-color: rgb(255, 255, 255);\"><b style=\"\"><font color=\"#295218\">PROPERTIES</font></b></span></div><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><b style=\"\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\">Sorbitol :</font></b><font color=\"#121212\"> Stimulates bilary functions therefore nutriments assimilation (especially emulsification of fats and absorption of fat-soluble vitamins: A, D, K and E).</font></span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><b style=\"\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\">Acetylmethionine :</font></b><font color=\"#121212\"> Hydrolysed in vivo, it releases Methionine, a sulphur containing amino acid, which is an essential constituent of the diet, lipotropic and protecting the hepatic cell.</font></span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><b style=\"\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\">Choline :</font></b><font color=\"#121212\"> An acetylcholine precursor, involved in lipid metabolism.</font></span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><b style=\"\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\">Betain :</font></b><font color=\"#121212\"> Methyl containing amino acid, its lipotropic function avoid fatty liver.</font></span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><b style=\"\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\">Lysine :</font></b><font color=\"#121212\"> An aliphatic amino acid which is an essential constituent of the diet.</font></span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">By improving and stimulating vital functions of the body, HEPARENOL facilitates the digestion of all nutriments and the elimination of toxins during intensive production period or when changing diets.</span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"color: rgb(18, 18, 18); text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem; background-color: rgb(255, 255, 255);\"><b style=\"\"><font color=\"#295218\">USES </font></b></span></div><div style=\"color: rgb(18, 18, 18); text-align: justify;\"><span style=\"font-size: 0.875rem; white-space: break-spaces;\">Mix HEPARENOL in feed or drinking water.</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">1 to 2 ml per 10 kg L.W.</span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\"><b style=\"\">Cattle :</b> </font><font color=\"#121212\">20 to 50 ml per day.</font></span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\"><b style=\"\">Sheep, goats and calves </b>:</font><font color=\"#121212\"> 5 to 15 ml per day.</font></span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><b style=\"\"><font color=\"#295218\" style=\"background-color: rgb(255, 255, 255);\">Poultry :</font></b><font color=\"#121212\"> 1 to 2 ml per litre of drinking water. For 5 to 10 consecutive days.</font></span></div><div style=\"color: rgb(18, 18, 18); text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\"><br></span></div></font><font face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem; background-color: rgb(255, 255, 255);\"><b style=\"\"><font color=\"#295218\">PACKAGING</font></b></span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Bottle of 1 </span><span style=\"text-align: left; white-space: break-spaces;\">liter</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Can of 5 </span><span style=\"text-align: left; white-space: break-spaces;\">liters</span></div></font><font color=\"#121212\" face=\"Shurjo, SolaimanLipi, Siyam Rupali, Roboto, Arial, Helvetica, monospace\"><div style=\"text-align: justify;\"><span style=\"white-space: break-spaces; font-size: 0.875rem;\">Drum of 60 </span><span style=\"text-align: left; white-space: break-spaces;\">liter</span></div></font><p></p><div style=\"text-align: justify; \"><br></div>', 1, '2022-02-23 04:07:59', '2022-03-28 00:11:09'),
(4, 6, 4, 'LIVACOX-Q', '164844643362414be153da9.jpg', NULL, '<ol><li><ol><ol><li style=\"text-align: justify; \"><b style=\"background-color: rgb(255, 255, 255);\"><font color=\"#311873\">COMPOSITION</font></b></li></ol></ol><ol><ol><li style=\"text-align: justify; \">1 ml of LIVACOX Q contains 30,000 - 50,000 oocysts of each attenuated lines of Eimeria tene//a, E acervu/ina and E.&nbsp;<span style=\"font-size: 0.875rem;\">maxima and 10,000 oocysts of F. necatrixin 1 % w/v water solution of chloramine B.</span></li></ol></ol><ol><ol><li style=\"text-align: justify;\"><span style=\"font-size: 0.875rem;\"><br></span></li></ol></ol><ol><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">INDICATIONS</font></b></li></ol><ol><li style=\"text-align: justify;\">Vaccine for stimulation of life-long immunity against coccidiosis in breeders and commercial layers of domestic poultry (Ga//us domesticus). T<span style=\"font-size: 0.875rem;\">he immunity will develop 10 - 14 days after vaccination.</span></li></ol><ol><li style=\"text-align: justify;\"><span style=\"font-size: 0.875rem;\"><br></span></li></ol><ol><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">DESCRIPTION</font></b></li></ol><ol><li style=\"text-align: justify;\"><span style=\"font-size: 0.875rem;\">Whitish suspension.</span></li></ol><ol><li style=\"text-align: justify;\"><span style=\"font-size: 0.875rem;\"><br></span></li></ol><ol><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">ADMINISTRATION AND DOSAGE</font></b></li></ol><ol><li style=\"text-align: justify; \">LIVACOX Q should be administered orally to chickens 1 - 10 days old. Shake the bottle well and dilute its content with the appropriate amount of drinking water as indicated below.&nbsp;<span style=\"font-size: 0.875rem;\">To ensure consumption of the whole vaccination dose by every one chicken stimulate thirst by discontinuing the water supply for 2 hours before vaccination.&nbsp;</span><span style=\"font-size: 0.875rem;\">The birds should then drink all the water containing LIVACOX&nbsp; Q dry within next 2 hours.&nbsp;</span>LIVACOX Q can be administered either through individual waterers or via central watering tank connected to automatic drinkers including nipple watering systems.&nbsp;<span style=\"font-size: 0.875rem;\">Mix 1 ml ( 2 100 doses) of LIVACOX&nbsp; Q in 1 litre of drinking water,&nbsp;</span><span style=\"font-size: 0.875rem;\">i.e. the content of 10-ml bottle diluted with 10 L water will vaccinate 1,000 chickens, the content of 50-ml bottle diluted with 50 L water will vaccinate 5,000 chickens.</span></li><li style=\"text-align: justify; \"><span style=\"font-size: 0.875rem;\"><br></span></li></ol><ol><li style=\"text-align: justify;\"><b style=\"font-size: 0.875rem;\"><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">CAUTION</font></b></li></ol><ol><li style=\"text-align: justify;\">Chickens to be vaccinated with LIVACOX @ Q must be healthy and raised under good management conditions.&nbsp;<span style=\"font-size: 0.875rem;\">Do not use anticoccidial drugs or furazolidone in feed during the whole growing period.&nbsp;</span><span style=\"font-size: 0.875rem;\">Discontinue the use of sulphonamides and amprolium for at least 2 days before and 7 days after the vaccination with LIVACOX Q.&nbsp;</span><span style=\"font-size: 0.875rem;\">Dilute LIVACOX Q with cold drinking water only.</span><span style=\"font-size: 0.875rem;\">Provide adequate number of drinkers so that all birds can receive the correct dose of the vaccine.&nbsp;</span><span style=\"font-size: 0.875rem;\">Inform the diagnostic laboratory to which carcasses of vaccinated chickens are sent that the chickens were vaccinated with LIVACOX Q;&nbsp;&nbsp;</span><span style=\"font-size: 0.875rem;\">otherwise the presence of coccidian oocysts originating from the vaccine could lead to false diagnosis of coccidiosis.</span></li></ol><ol><li style=\"text-align: justify;\"><br></li></ol><ol><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">CONTRA-INDICATIONS</font></b></li></ol><ol><li style=\"text-align: justify;\">No negative interactions of LIVACOX Q with other vaccination programs used in poultry production and rearing are known.</li></ol><ol><li style=\"text-align: justify;\"><br></li></ol><ol><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">WITHDRAWAL PERIOD </font></b></li></ol><ol><li style=\"text-align: justify;\">Nil.</li></ol><ol><li style=\"text-align: justify;\"><b><br></b></li><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">SHELF - LIFE</font></b></li></ol><ol><li style=\"text-align: justify;\">9 months from the date of manufacture.</li></ol><ol><li style=\"text-align: justify;\"><br></li><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">STORAGE</font></b></li></ol><ol><li style=\"text-align: justify;\">Store between +20 to +80 C. Keep out of reach of children.</li></ol><ol><li style=\"text-align: justify;\">Do not freeze.</li></ol><ol><li style=\"text-align: justify;\"><br></li></ol><ol><li style=\"text-align: justify;\"><b><font color=\"#311873\" style=\"background-color: rgb(255, 255, 255);\">PRESENTATION</font></b></li></ol><ol><li style=\"text-align: justify;\">10 mL (=1,000 doses) or 50 mL (=5,000 doses) of vaccine in polyethylene screw cap bottles.&nbsp;</li></ol><ol><li style=\"text-align: justify;\">Cardboard boxes containing 10 bottles of either size.</li></ol></li></ol><div style=\"text-align: justify;\"><br></div>', 1, '2022-02-24 06:01:53', '2022-03-28 00:09:51'),
(5, 6, 7, 'AMPROL-12', '164846316062418d38033ee.jpg', '<ul><li>Rapid action</li><li>Double killing effect</li><li>Very low resistance rate</li></ul>', '<ol><li><font color=\"#083139\">(Amprolium)&nbsp;</font></li><li>Treatment and prevention of coccidiosis in poultry</li><li>1, 5 Litres Can containing an oral 12% Amprolium Hydrochloride</li><li><br></li><li><b><font color=\"#083139\">COMPOSITION</font></b></li><li>100ml of the oral solution contain:</li><li>Amprolium Hydrochloride 12.0g (correspond ing to 10.6g of Amprolium) Excipients qs 100ml</li><li><br></li><li><b><font color=\"#083139\">THERAPEUTIC INDICATIONS</font></b></li><li>Treatment and prevention of coccidiosis in poultry due to infections of Eimeria spp sensitive to amprolium.</li><li><br></li><li><b><font color=\"#083139\">ROUTE AND METHOD OF ADMINISTRATION</font></b></li><li>Oral route. Administer via the drinking water.&nbsp;</li><li><br></li><li><b><font color=\"#083139\">DOSAGE TREATMENT :</font></b></li><li>For usual outbreak, 1ml of Amprolium 12% Solution per litre of drinking water for 5 to 7 days.&nbsp;</li><li>For sever outbreak, 2ml of Amprolium 12% Solution per litre of drinking water for 5 to 7 days.&nbsp;</li><li><font color=\"#083139\"><br></font></li><li><b><font color=\"#083139\">MAINTENANCE TREATMENT :</font></b></li><li>0.5ml of Amprolium 12% Solution per litre of drinking water for 1 to 2 weeks.</li><li><b><font color=\"#083139\">Prophylaxis:</font></b></li><li>0.5ml of Amprolium 12% Solution per litre of drinking water for the duration of risk periods.</li><li><font color=\"#083139\"><br></font></li><li><b><font color=\"#083139\">PRECAUTIONS FOR USE:</font></b></li><li>—<span style=\"white-space:pre\">	</span>Shake before use.</li><li>—<span style=\"white-space:pre\">	</span>Do not smoke or eat while handling the product.</li><li>—<span style=\"white-space:pre\">	</span>Wash hands after handling the product.</li><li>—<span style=\"white-space:pre\">	</span>Keep out of reach of children.</li><li><br></li><li><b><font color=\"#083139\">WITHDRAWAL PERIOD</font></b></li><li>Nil.</li><li><br></li><li><b><font color=\"#083139\">PRESENTATION</font></b></li><li>1, 5 Litres Can.</li><li><br></li><li><br></li><li><br></li></ol>', 1, '2022-03-28 04:26:00', '2022-03-31 00:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `sister_concerns`
--

CREATE TABLE `sister_concerns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sister_concerns`
--

INSERT INTO `sister_concerns` (`id`, `title`, `image`, `row_status`, `created_at`, `updated_at`) VALUES
(2, 'Khamar', '1648370263624022579df7d.gif', 1, '2022-02-01 03:40:23', '2022-03-27 02:37:43'),
(3, 'Bio', '16483702836240226b4139b.jpg', 1, '2022-03-27 02:38:03', '2022-03-27 02:38:03'),
(4, 'Rp', '16483702946240227672e3c.jpg', 1, '2022-03-27 02:38:14', '2022-03-27 02:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `row_status`, `created_at`, `updated_at`) VALUES
(1, 'Test Slider', '1649049605624a80057cbe1.jpg', 1, '2022-04-03 23:20:05', '2022-04-03 23:20:05'),
(3, 'Welcome to', '1649050029624a81ad27c9f.png', 1, '2022-04-03 23:27:09', '2022-04-03 23:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `row_status`, `created_at`, `updated_at`) VALUES
(4, 6, 'VACCINE', 1, '2022-01-26 23:29:36', '2022-03-27 00:19:33'),
(6, 6, 'PHARMACEUTICAL', 1, '2022-01-26 23:31:49', '2022-03-27 00:20:02'),
(7, 6, 'VITAMINE, NUTRITION & PREMIX', 1, '2022-01-26 23:32:11', '2022-03-27 00:21:22'),
(8, 6, 'OTHERS', 1, '2022-01-26 23:32:28', '2022-01-26 23:32:28'),
(9, 9, 'VACCINE', 1, '2022-03-26 23:58:13', '2022-03-27 00:24:54'),
(10, 9, 'PHARMACEUTICAL', 1, '2022-03-26 23:58:34', '2022-03-27 00:25:51'),
(11, 9, 'VITAMINE, NUTRITION & PREMIX', 1, '2022-03-26 23:58:41', '2022-03-27 00:26:43'),
(12, 9, 'OTHERS', 1, '2022-03-26 23:58:48', '2022-03-26 23:58:48'),
(13, 10, 'VACCINE', 1, '2022-03-26 23:59:31', '2022-03-27 00:25:06'),
(14, 10, 'PHARMACEUTICAL', 1, '2022-03-26 23:59:38', '2022-03-27 00:26:01'),
(15, 10, 'VITAMINE, NUTRITION & PREMIX', 1, '2022-03-26 23:59:44', '2022-03-27 00:27:12'),
(16, 10, 'OTHERS', 1, '2022-03-26 23:59:54', '2022-03-26 23:59:54'),
(20, 11, 'OTHERS', 1, '2022-03-27 00:00:30', '2022-03-27 00:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3' COMMENT '1 = super admin, 2 = admin, 3 = staff',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `user_type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '01587421457', 'root@email.com', '1', NULL, '$2y$10$tiPuFeIUmvZhOpmWkiUFJu3DXpzTfgCZmHTtI4LsnXQUsJyEV9sga', NULL, '2022-01-25 18:00:00', '2022-01-25 18:00:00'),
(2, 'Admin', '01587421458', 'admin@email.com', '2', NULL, '$2y$10$C2RskRt.q6gC0xy2cq.nIeVPDCPhqLgoBqMM159qsc0.mACSkw6xi', NULL, '2022-01-25 18:00:00', '2022-01-25 18:00:00'),
(3, 'Staff', '01587421459', 'staff@email.com', '3', NULL, '$2y$10$AqpkAlgY.9PAg8FR5uF7h.HU6M59iaC9GvSt5/Wj9NlYZWfbZNXFe', NULL, '2022-01-25 18:00:00', '2022-01-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `iframe_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `details`, `iframe_code`, `row_status`, `created_at`, `updated_at`) VALUES
(4, 'Advance Horticulture & Fisheries', 'Project Name: Advance Horticulture.\r\nLocation: Tonki Bazar, Islampur, Jamalpur.\r\nFounder & MD: Dr. M. M. Khan\r\n\r\n--------------------------------------------------------------------------------------------------------------\r\nProject Name: Advance Fisheries.\r\nLocation: RouharKanda, Islampur, Jamalpur.\r\nFounder & MD: Dr. M. M. Khan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PzE1MyZIL38\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2022-03-27 21:35:06', '2022-03-28 00:03:27'),
(5, 'Advance Livestock & Poultry Development Center', 'Project Name: Advance Livestock Development Center (ALDC)\r\nLocation: Sardagonj, Kashimpur, Gazipur.\r\nFounder & MD: Dr. M.M. Khan\r\n\r\n----------------------------------------------------------------------------------------------------------\r\n\r\nProject Name: Advance Poultry Development Center (APDC)\r\nLocation: Latifpur, Kashimpur, Gazipur.\r\nFounder & MD: Dr. M.M. Khan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kiq8kyjdR2M\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2022-03-27 21:36:16', '2022-03-28 00:04:08'),
(6, 'Khamar Bari', 'Project Name: Late A.K.M Nurur Rahman Khan Memorial Garden.\r\nLocation: Laudatta Khanbari, Islampur, Jamalpur.\r\nFounder: Dr. M. M. Khan (Founder & MD of Advance Animal Science Co. Ltd.)\r\nEstablished: 2003', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0DqBp2VHKPs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2022-03-27 21:37:38', '2022-03-28 00:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `website_info`
--

CREATE TABLE `website_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mission` longtext COLLATE utf8mb4_unicode_ci,
  `vision` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_info`
--

INSERT INTO `website_info` (`id`, `mission`, `vision`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa alias odio asperiores hic voluptas velit vel perferendis fugit veniam provident id, omnis corrupti perspiciatis vero quod possimus accusantium, quam quo quas labore consequuntur autem? Non cum repudiandae, mollitia dolor sit amet consectetur adipisicing elit. Ipsa alias odio asperiores hic voluptas velit vel perferendis fugit veniam provident id, omnis corrupti perspiciatis vero quod possimus accusantium, quam quo quas labore consequuntur autem? Non cum repudiandae, mollitia dolor sit amet consectetur adipisicing elit. Ipsa alias odio asperiores hic voluptas velit vel perferendis fugit veniam provident id, omnis corrupti perspiciatis vero quod possimus accusantium, quam quo quas labore consequuntur autem? Non cum repudiandae, mollitia dolor sit amet consectetur adipisicing elit. Ipsa alias odio asperiores hic voluptas velit vel perferendis fugit veniam provident id, omnis corrupti perspiciatis vero quod possimus accusantium, quam quo quas labore consequuntur autem? Non cum repudiandae, mollitia dolor sit amet consectetur adipisicing elit. Ipsa alias odio asperiores hic voluptas velit vel perferendis fugit veniam provident id, omnis corrupti perspiciatis vero quod possimus accusantium, quam quo quas labore consequuntur autem? Non cum repudiandae, mollitia dolor sit amet consectetur adipisicing elit. Ipsa alias odio asperiores hic voluptas velit vel perferendis fugit veniam provident id, omnis corrupti perspiciatis vero quod possimus accusantium, quam quo quas labore consequuntur autem? Non cum repudiandae, mollitia', 'dolor sit amet consectetur adipisicing elit. Ipsa alias odio asperiores hic voluptas velit vel perferendis fugit veniam provident id, omnis corrupti perspiciatis vero quod possimus accusantium, quam quo quas labore consequuntur autem? Non cum repudiandae, mollitia', '2022-01-27 09:49:22', '2022-01-27 09:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_employee_id_unique` (`employee_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khamars`
--
ALTER TABLE `khamars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lfas`
--
ALTER TABLE `lfas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `literatures`
--
ALTER TABLE `literatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_requisitions`
--
ALTER TABLE `material_requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materital_details`
--
ALTER TABLE `materital_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materital_details_material_id_foreign` (`material_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_brands`
--
ALTER TABLE `our_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `over_views`
--
ALTER TABLE `over_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petty_cashes`
--
ALTER TABLE `petty_cashes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `sister_concerns`
--
ALTER TABLE `sister_concerns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_info`
--
ALTER TABLE `website_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `khamars`
--
ALTER TABLE `khamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `lfas`
--
ALTER TABLE `lfas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `literatures`
--
ALTER TABLE `literatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `material_requisitions`
--
ALTER TABLE `material_requisitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `materital_details`
--
ALTER TABLE `materital_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `our_brands`
--
ALTER TABLE `our_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `over_views`
--
ALTER TABLE `over_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petty_cashes`
--
ALTER TABLE `petty_cashes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sister_concerns`
--
ALTER TABLE `sister_concerns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `website_info`
--
ALTER TABLE `website_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materital_details`
--
ALTER TABLE `materital_details`
  ADD CONSTRAINT `materital_details_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `material_requisitions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
