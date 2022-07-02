-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 10:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seliseintdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book`, `author_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'পাইথন দিয়ে প্রোগ্রামিং শেখা - ৪র্থ খণ্ড', 'তামিম শাহরিয়ার সুবিন', 275, '2022-07-02 01:12:16', '2022-07-02 01:12:16'),
(2, 'প্রোগ্রামিং কনটেস্ট সমস্যা ও সমাধান', 'মো: মাহবুবুল হাসান', 387, '2022-07-02 01:12:16', '2022-07-02 01:12:16'),
(3, 'সহজ বাংলায় R প্রোগ্রামিং', 'ড. মুনশী নাসের ইবনে আফজাল', 129, '2022-07-02 01:12:16', '2022-07-02 01:12:16'),
(4, 'কম্পিউটার প্রোগ্রামিং-দ্বিতীয় খণ্ড', 'তামিম শাহরিয়ার সুবিন', 228, '2022-07-02 01:12:16', '2022-07-02 01:12:16'),
(5, 'কম্পিউটার প্রোগ্রামিং-প্রথম খণ্ড', 'তামিম শাহরিয়ার সুবিন', 241, '2022-07-02 01:12:16', '2022-07-02 01:12:16'),
(6, 'পাইথন দিয়ে প্রোগ্রামিং শেখা', 'তামিম শাহরিয়ার সুবিন', 181, '2022-07-02 01:12:16', '2022-07-02 01:12:16');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2022_07_02_070043_create_books_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'my-app-token', '688e049f55c81cdf7dbdee8d2cdfba71e6c9ebea1ccaa423bbbdafe3ae7b06f7', '[\"*\"]', NULL, '2022-07-02 00:50:46', '2022-07-02 00:50:46'),
(2, 'App\\Models\\User', 1, 'my-app-token', '7114361d8fe0a8476ed742f4f16e69bff2f6499327467c0fb56e9d658a04b876', '[\"*\"]', NULL, '2022-07-02 00:50:53', '2022-07-02 00:50:53'),
(3, 'App\\Models\\User', 1, 'my-app-token', '6ee134a986d309268a89cee35eba968611a87a07c27c0b8f34fcf8c4264ea544', '[\"*\"]', NULL, '2022-07-02 00:51:09', '2022-07-02 00:51:09'),
(4, 'App\\Models\\User', 1, 'my-app-token', '7685b4b909ada39b3d83ead0140f0ba9b139e8717bc3de48b3722ccea3f3afae', '[\"*\"]', NULL, '2022-07-02 00:51:16', '2022-07-02 00:51:16'),
(5, 'App\\Models\\User', 1, 'my-app-token', 'e848f529334118360d3974ce07338a551a4b577b696680bf2042624d40056957', '[\"*\"]', NULL, '2022-07-02 00:51:21', '2022-07-02 00:51:21'),
(6, 'App\\Models\\User', 1, 'my-app-token', '44d534f388a80c3c23d75393731ab791c7117304e3fdd0f67e5e314dbef2f3c4', '[\"*\"]', NULL, '2022-07-02 00:51:33', '2022-07-02 00:51:33'),
(7, 'App\\Models\\User', 1, 'my-app-token', 'f74cde17d07c0a6437017cdd53f2bc0e46c5cb6ca550f4d27fd3510a4c6ec6d2', '[\"*\"]', NULL, '2022-07-02 00:52:15', '2022-07-02 00:52:15'),
(8, 'App\\Models\\User', 1, 'my-app-token', '362cd4d11026a1b3ccf7b20e027e5526de3eeada4d82eb3f850f860c783dba6d', '[\"*\"]', NULL, '2022-07-02 01:15:17', '2022-07-02 01:15:17'),
(9, 'App\\Models\\User', 1, 'my-app-token', '86a560ba2d0f6dca4388d98a40ebee45649d2dde5972bb6feacbb43bbbe5f2b9', '[\"*\"]', NULL, '2022-07-02 01:23:41', '2022-07-02 01:23:41'),
(10, 'App\\Models\\User', 1, 'my-app-token', 'b97bcdc6f272dd1a3f2f2d7d7d0cc9d08641d82684556acac004a70566412b22', '[\"*\"]', NULL, '2022-07-02 01:28:21', '2022-07-02 01:28:21'),
(11, 'App\\Models\\User', 1, 'my-app-token', '62ca2edcb743b3afe3df3f05c969acbbd35b5c32345b8d0490c83c9dbdded37d', '[\"*\"]', NULL, '2022-07-02 01:29:41', '2022-07-02 01:29:41'),
(12, 'App\\Models\\User', 1, 'my-app-token', 'ee27c574b979b2385949b73670c8efe5550fd7fd77450d1ab2a18e462b73d4f6', '[\"*\"]', NULL, '2022-07-02 01:32:11', '2022-07-02 01:32:11'),
(13, 'App\\Models\\User', 1, 'my-app-token', '4809a8c8470953a927068953ea83e106e904baffef4e9bd3ea401b2d3f06612f', '[\"*\"]', NULL, '2022-07-02 01:34:18', '2022-07-02 01:34:18'),
(14, 'App\\Models\\User', 1, 'my-app-token', 'fd4a9b5fe11fe471e03a9d5a99295ca5f46ed3e5070e4a8cf5e6c1adc963e235', '[\"*\"]', NULL, '2022-07-02 01:41:25', '2022-07-02 01:41:25'),
(15, 'App\\Models\\User', 1, 'my-app-token', '403ac26b486d35922b01f54272d67c5c24893a66d4b8bc2f5fd497034694cc83', '[\"*\"]', NULL, '2022-07-02 01:42:21', '2022-07-02 01:42:21'),
(16, 'App\\Models\\User', 1, 'my-app-token', '9bde43e118481c4c1c77429b37341dde40a9c602b74f00f8ee807c4e384ce9b7', '[\"*\"]', NULL, '2022-07-02 01:42:42', '2022-07-02 01:42:42'),
(17, 'App\\Models\\User', 1, 'my-app-token', 'e5a32a8e1e88e8cb1cc0c46a68596d8b528ebfe517e401199f364084e09d5a06', '[\"*\"]', NULL, '2022-07-02 01:42:48', '2022-07-02 01:42:48'),
(18, 'App\\Models\\User', 1, 'my-app-token', 'a2bacc295a6636f17a486ef2a5a963a0b5a66593b55887e46c614bb507412690', '[\"*\"]', NULL, '2022-07-02 01:43:51', '2022-07-02 01:43:51'),
(19, 'App\\Models\\User', 1, 'my-app-token', '36e04f0ca148f8f3be96d7e70a1a38c958d87351c5ed1778844749ed1e2d1928', '[\"*\"]', NULL, '2022-07-02 01:44:33', '2022-07-02 01:44:33'),
(20, 'App\\Models\\User', 1, 'my-app-token', '89d2d1dc5116822e41ab638fcdc2324953979249908eaa4f94e2b46b6ad1afe2', '[\"*\"]', NULL, '2022-07-02 01:54:20', '2022-07-02 01:54:20'),
(21, 'App\\Models\\User', 1, 'my-app-token', '0c8b5468c89827d41ddd75625b60e60dd2e759172ae6159b433980ddf03c5667', '[\"*\"]', NULL, '2022-07-02 01:58:00', '2022-07-02 01:58:00'),
(22, 'App\\Models\\User', 1, 'my-app-token', 'c024377cafb350e3b6fc76902f5b7b3dc4e7ec8ef35333df7a657e5c78503406', '[\"*\"]', NULL, '2022-07-02 01:58:55', '2022-07-02 01:58:55'),
(23, 'App\\Models\\User', 1, 'my-app-token', '3d4d8b062f21289bc2edf5a38cd1b3cb231b6c4643cbe28b25fbb1f1a9f8867c', '[\"*\"]', NULL, '2022-07-02 02:00:48', '2022-07-02 02:00:48'),
(24, 'App\\Models\\User', 1, 'my-app-token', 'd6fadab3367c0825decf82b3e30ba5a6b55d1d5353ea8a41f7d46bf5fec71a8c', '[\"*\"]', NULL, '2022-07-02 02:08:53', '2022-07-02 02:08:53'),
(25, 'App\\Models\\User', 1, 'my-app-token', '32708567a4e2d322f91e62c9615b1416805395d35658c782fac0c0d4fc649d31', '[\"*\"]', NULL, '2022-07-02 02:09:58', '2022-07-02 02:09:58'),
(26, 'App\\Models\\User', 1, 'my-app-token', '4dc6ec4120debfa4b2eb9f590e625690f7a421d7b05252be74e33f2b69464214', '[\"*\"]', NULL, '2022-07-02 02:10:01', '2022-07-02 02:10:01'),
(27, 'App\\Models\\User', 1, 'my-app-token', '23969a42de12b3190dad99cbc10717d870cadd9c95c07776e4371246a20602ee', '[\"*\"]', NULL, '2022-07-02 02:10:05', '2022-07-02 02:10:05'),
(28, 'App\\Models\\User', 1, 'my-app-token', '215400db9b46493a751f51ae83e46cc23a28bb2eb8231bf1d6b75cf639df00a4', '[\"*\"]', NULL, '2022-07-02 02:11:13', '2022-07-02 02:11:13'),
(29, 'App\\Models\\User', 1, 'my-app-token', '97325b51820dbe49205c30e27edd97b7fc2e8c02e82e7e3d64914830afd036cf', '[\"*\"]', NULL, '2022-07-02 02:43:30', '2022-07-02 02:43:30'),
(30, 'App\\Models\\User', 1, 'my-app-token', '14e6d398730e2df2b923d29895f3f1ec84db803dc5b4f35c5bc625b94def66f0', '[\"*\"]', NULL, '2022-07-02 02:45:35', '2022-07-02 02:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ariful Hoque', 'Shourav', 'arif@drawhousedhaka.com', NULL, '$2y$10$om/yMFyPMghG8UPQpJth/utkAawo8mJbJsmQ6rzb5pFjcMw/Vov12', NULL, '2022-07-02 00:50:41', '2022-07-02 00:50:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
