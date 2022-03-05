-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 02:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_bootstrap`
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
(5, '2022_03_05_033637_siswa_migrate', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zea1@gmail.com', '$2y$10$j5RXMeCLz86TnAjKbFDSNOzXUvBLZ//m57hB034mYHZlcMFGwWhlK', '2022-03-05 04:38:39'),
('zeapiaji@gmail.com', '$2y$10$3phpiM8WiYhPLUKt9oeZAe6f7mFPtNw3ODlRm12zzklnQdE2kI1Ca', '2022-03-05 04:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `alamat`, `umur`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 'Zeaaa', '3414 Gorczany Parkway Suite 132Sengerstad, NH 29140', '28', '+1.715.945.3194', NULL, '2022-03-05 03:57:01'),
(2, 'Destini Altenwerth', '3181 Suzanne Crescent Apt. 797\nNew Carleyton, CT 57621', '47', '878-985-8301', NULL, NULL),
(3, 'Miss Jessyca Turner II', '665 Khalid Squares\nIsomborough, NM 93478', '29', '+12282731043', NULL, NULL),
(4, 'Christelle O\'Keefe', '43237 Will Roads Apt. 691\nSengerville, NC 80475-3512', '32', '951.986.9076', NULL, NULL),
(5, 'Lonny O\'Connell', '929 Erick Parkway\nRosinaburgh, WV 71698-8745', '39', '952-667-2424', NULL, NULL),
(6, 'Winston Roob', '571 Shayna Keys\nLake Nikko, AL 36493', '38', '564-628-8870', NULL, NULL),
(7, 'Idella Kertzmann', '21794 Kathryn Trafficway Suite 610\nSouth Serena, KY 99045', '45', '301.212.6121', NULL, NULL),
(8, 'Kiera Turner', '177 O\'Hara Spring Suite 920\nNew Graciela, MD 66525', '30', '1-254-766-9333', NULL, NULL),
(9, 'Prof. Alvina Bartell II', '80067 Dicki Junction\nPaucekview, IA 98994-8876', '29', '847-475-5564', NULL, NULL),
(10, 'Miss Maeve Schuster IV', '68315 Jacobson Plain Suite 793\nJamelborough, NE 05903-7081', '49', '(747) 716-9651', NULL, NULL),
(11, 'Genevieve West III', '697 Gladyce Wells\nWest Clemens, AR 97083', '43', '854-699-3248', NULL, NULL),
(12, 'Dusty Ferry Sr.', '195 Muller Row Apt. 651\nNew Lucindaside, AK 47640', '37', '303.950.5347', NULL, NULL),
(13, 'Lillie Sporer', '791 Herman Rue Apt. 107\nSouth Jaquelin, AL 49418-7640', '32', '564.629.9210', NULL, NULL),
(14, 'Meredith Maggio', '284 Cathy Islands\nStoltenbergburgh, MO 12349', '38', '+19208189320', NULL, NULL),
(15, 'Orville Jones', '25931 Otis Common Suite 576\nBrianneview, CT 39008-6447', '35', '1-872-649-9145', NULL, NULL),
(16, 'Lincoln Waters', '88184 Abigail Street\nNorth Philip, KY 12864-2497', '49', '+1-563-566-4071', NULL, NULL),
(17, 'Savanah Reinger', '92512 Boyer Wells\nCristalbury, LA 47863', '36', '+1-772-755-7876', NULL, NULL),
(18, 'Jarvis Considine', '91096 Benny Spurs Suite 912\nWest Estefaniaborough, HI 44111-4766', '41', '+1-567-589-8325', NULL, NULL),
(19, 'Orville Klocko IV', '8036 Tianna Loop Apt. 109\nWavatown, OH 67002', '28', '239.601.8602', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lara BT', 'larabt@gmail.com', NULL, '$2y$10$Itj7SXlRVuxF5rlfEehIT.tEq54WaoVptGVmHpV/adG968oR0fTrK', 'AQBVa4QKLPl9sdHNGVTQYZxyz6EXKaKGwKKY3P5Wc4ac8nQq5Rqq2OOz5R1g', '2022-02-13 07:19:58', '2022-02-13 07:19:58'),
(2, 'Zea Piaji', 'zeapiaji@gmail.com', NULL, '$2y$10$WrG04U4bqWikRcPOPkAbDe2Lc1JH2we5w4Kyc13SdQ0U/GA.zjCAK', NULL, '2022-02-13 08:51:24', '2022-02-13 08:51:24'),
(3, 'Zea Piaji', 'zeapiaji12@gmail.com', NULL, '$2y$10$m6u24gmtV/GE8ibuJfYiFOVHLxqVOvzWcubvWLY0Tu8c18fCccOWS', NULL, '2022-02-15 19:42:59', '2022-02-15 19:42:59'),
(4, 'ads', 'zea@gmail.com', NULL, '$2y$10$7jXJLzX5rK8t8jJDWsAqU.ciJa0bHrz6JOZu8mfouvry0K.BfOwgu', NULL, '2022-03-01 20:45:44', '2022-03-01 20:45:44'),
(5, 'zeee', 'zeapiaji1212@gmail.com', NULL, '$2y$10$nBqSjAtN1uYE9CQyyr.tzOkfLsJqWRQZT/Mbdi8NLuzz.pv9t8EeW', NULL, '2022-03-04 20:48:09', '2022-03-04 20:48:09'),
(6, 'z', 'zea1@gmail.com', NULL, '$2y$10$X.GEMtQCkDc0WxV9eUizr.xv4mPO6HizCUzuG4ZUqkwUr91esfpwO', NULL, '2022-03-05 04:09:02', '2022-03-05 04:09:02');

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
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
