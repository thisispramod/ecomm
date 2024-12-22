-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 06:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Electronics', 'electronics', 'fas fa-mobile-alt', 1, '2023-04-24 04:13:07', '2023-04-24 04:13:07'),
(11, 'Mens Fashion', 'mens-fashion', 'fas fa-tshirt', 1, '2023-05-07 00:01:57', '2023-05-07 00:01:57'),
(12, 'Womens Fashion', 'womens-fashion', 'fas fa-star', 1, '2023-05-07 16:00:18', '2023-05-07 16:00:18'),
(13, 'Shoes', 'shoes', 'fas fa-shoe-prints', 1, '2023-05-07 16:02:22', '2024-12-22 07:24:42'),
(14, 'Health and Beauty', 'health-and-beauty', 'fas fa-hands-helping', 1, '2023-05-07 16:56:57', '2023-05-07 16:56:57'),
(15, 'Groceries', 'groceries', 'fas fa-layer-group', 1, '2023-05-07 16:57:21', '2023-05-07 16:57:21'),
(16, 'Home and Life', 'home-and-life', 'fas fa-home', 1, '2023-05-07 16:57:49', '2023-05-07 16:57:49'),
(17, 'Sports and Outdoors', 'sports-and-outdoors', 'fab fa-hubspot', 1, '2023-05-07 16:58:39', '2023-05-07 16:58:39'),
(18, 'Automotive', 'automotive', 'fas fa-car-alt', 1, '2023-05-07 16:58:55', '2023-05-07 16:58:55'),
(19, 'Babies and Toys', 'babies-and-toys', 'fas fa-atom', 1, '2023-05-07 16:59:22', '2023-05-07 23:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 10, 13, 'Canon', 'canon', 1, '2023-04-24 04:14:29', '2023-04-24 04:14:29'),
(12, 10, 13, 'DJI', 'dji', 1, '2023-04-24 04:14:44', '2023-04-24 04:14:44'),
(13, 10, 13, 'GoPro', 'gopro', 1, '2023-04-24 04:15:05', '2023-04-24 04:15:05'),
(14, 10, 13, 'Pentax', 'pentax', 1, '2023-04-24 04:15:48', '2023-04-24 04:15:48'),
(15, 10, 14, 'Acer', 'acer', 1, '2023-04-24 04:16:16', '2023-04-24 04:16:16'),
(16, 10, 14, 'ASUS', 'asus', 1, '2023-04-24 04:16:31', '2023-04-24 04:16:31'),
(17, 10, 14, 'Lenovo', 'lenovo', 1, '2023-04-24 04:16:55', '2024-12-22 07:27:48'),
(18, 10, 14, 'MSI', 'msi', 1, '2023-04-24 04:17:15', '2023-04-24 04:17:15'),
(19, 10, 15, 'Google Pixel', 'google-pixel', 1, '2023-04-24 04:19:06', '2023-04-24 04:19:06'),
(20, 10, 15, 'One Plus', 'one-plus', 1, '2023-04-24 04:19:29', '2024-12-22 07:27:45'),
(21, 10, 15, 'SAMSUNG', 'samsung', 1, '2023-04-24 04:19:46', '2024-12-22 07:27:44'),
(22, 10, 15, 'Sony Xperia', 'sony-xperia', 1, '2023-04-24 04:20:05', '2024-12-22 07:27:44');

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
(5, '2023_10_28_125205_create_sliders_table', 2),
(6, '2024_05_18_081844_create_categories_table', 3),
(7, '2024_12_01_103814_create_sub_categories_table', 4),
(8, '2024_12_01_114109_create_child_categories_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$eWj.2Ztyt9/AuA2kpDPSc.SHh6MotlTG62trFU60Z/6FzAuGzl2de', '2023-10-24 14:18:29'),
('user@gmail.com', '$2y$10$J9b1dvggDHrXTZN3NZbh..a4sG.ZyVR17gn4/iDqp5kxvgn0XLQlG', '2023-10-24 14:38:36');

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
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `starting_price` varchar(255) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `banner`, `type`, `title`, `starting_price`, `btn_url`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(8, 'uploads/media_66376615ba0f6.jpg', 'New slider', 'New title for slider', '12000', 'http://127.0.0.1:8000/admin/slider/create', 122, 2, '2024-05-05 05:27:25', '2024-12-22 00:35:55'),
(9, 'uploads/media_663f57f0516d2.jpg', 'Hot Deals', 'Explore your areas', '1200', 'http://127.0.0.1:8000/admin/slider/create', 1222, 1, '2024-05-11 06:05:12', '2024-12-22 00:34:48'),
(10, 'uploads/media_663f582706a9b.jpg', 'Voluptate quis possi', 'Dicta corporis sunt', '72', 'http://127.0.0.1:8000/admin/slider/create', 1222, 1, '2024-05-11 06:06:07', '2024-12-22 00:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(13, 10, 'Camera', 'camera', 1, '2023-04-24 04:13:34', '2024-12-22 07:27:13'),
(14, 10, 'Laptops', 'laptops', 1, '2023-04-24 04:13:46', '2024-12-22 07:25:30'),
(15, 10, 'Smart Phones', 'smart-phones', 1, '2023-04-24 04:14:03', '2024-12-22 07:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `phone`, `email`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin user', 'adminuser', '/uploads/1967850426_IMG_20240418_152314.jpg', NULL, 'admin@gmail.com', 'admin', 'active', NULL, '$2y$10$jlcKV6udd4yA0WxY6adjm.ueDvF58hyPj9CZxvusT/OhAQV0WFw42', NULL, NULL, '2024-04-18 08:23:58'),
(2, 'Vendor user', 'vendoruser', '/uploads/1190844322_Screenshot 2023-10-28 175239.png', NULL, 'vendor@gmail.com', 'vendor', 'active', NULL, '$2y$10$xRQPzRuNzaj1iV/zuhW9ZejkgzYJsBQhyBtO/ZZc9q4mMks5kd3dC', NULL, NULL, '2023-10-28 06:56:07'),
(3, 'user', 'user', '/uploads/1274873815_profile_name.png', NULL, 'user@gmail.com', 'user', 'active', NULL, '$2y$10$I85xrP71hUI.agDdX5CKfeSaFQGlibKQqo3Z1.pktYJfgdZ1uuPbe', NULL, NULL, '2023-10-28 06:03:19'),
(4, 'demo', NULL, NULL, NULL, 'demo@gmail.com', 'user', 'active', NULL, '$2y$10$1HV0EUwr5uUByXDr1lySbOnc5RkNDRtdKOeWEvPPCYGYnX1BleP0G', NULL, '2023-10-24 13:35:41', '2023-10-24 13:35:41'),
(5, 'Pramod Prajapati', NULL, NULL, NULL, 'itspramod19@gmail.com', 'user', 'active', NULL, '$2y$10$NWwnNuuS3B8BSca03E3xWu64FSMYti3.wvYFaXu9/nBOteVx/Y5tW', 'UQJYGdvA61M2NK2MwlnpzqO4n0m7o09pc1O8NVRW5cKYlIO11WKEBWaD3jiM', '2023-10-24 13:56:48', '2023-10-24 14:39:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
