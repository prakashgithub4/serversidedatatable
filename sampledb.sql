-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2021 at 05:03 PM
-- Server version: 5.7.34-0ubuntu0.18.04.1
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampledb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_post_details` (IN `post_id` INT(11))  BEGIN
SELECT * from posts WHERE id = post_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `post_details` ()  BEGIN

SELECT * from posts;

SELECT * FROM replies;

END$$

DELIMITER ;

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
(4, '2021_05_18_084844_create_slugs_table', 1),
(5, '2021_05_24_103408_create_posts_table', 1),
(6, '2021_05_24_114522_create_replies_table', 2),
(7, '2021_05_24_143246_create_users2_table', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, '0Zs758B7JAtUUl8ivRrNyyoTR4nUMMlWyf2L8SPl', 'mPFhqP00CxpI9CCtAVz3hebptHjTEUqNCPXgmS1J56IjignHNT5vjdGguRSllrrLU5TGId1EdFz8FyI96WjScioy2k4zdVu6BLBv', NULL, NULL),
(3, 'yusfZWCAWuycM2GT4kg3LVDKvUVhwPgElkzJWhBy', '2CggbPPjnMTWjQ4ghCLy9YlI4xxm9QNsuXzGKvjmpn3jxFMlaFoQatZZGuV4uIM9J5nt4YrXhBOuF5HVgx19XjZlHrMirRG5QKp3', NULL, NULL),
(4, 'BZkFsRWDAyYF6nnSwWKsXSH31S4fVP7lUljQoJRh', 'ZLb3ApLqQXmjHaR41XPOwqk9u2NYFgQ04dKDGWCy4AK0ugjabZ9zqYZnN0GjaLHKbR8hjRRh1BL4iap4PZtTX25tkvE0kjehrUjY', NULL, NULL),
(5, 'VWmfTBkEHGq7QSIcEuTIbDfMy3M2LIMmVabCBtyx', 'p9iKAZZ42jgksE7nXmjeV3dHCnwbMQEVIozDju1IA46V8Wh4w2UI8weHph4wHjoI6A0e0hZKbEriDcuhsiOMWwAtGi3OYcRmaUxt', NULL, NULL),
(6, 'tOVDwhGIe8twhzHwn5SsqzlkRBZ8GZZI57MXGzO4', 'BhnIozKoHa45ncaDx6oCIqdWzTFNGrtPiibIRbmCfTAygqwHce9t5xSDHXFa34PmgrQy5z99A5xyqr075tOfB8qS2KjvfoGkYTZG', NULL, NULL),
(7, 'kNpO63yebq8iZjI6mb3xCMIvEXRvkz4xHQ1FO4Lo', '0f0JQpGpocejzubNnekoFo4DBWST3Itj6VYle6dmDnROYR9lB1vSsZCaZ4j1VBH0iRJuMuq4CAhbZD8BSElVW6mUIYEQQVwgrkwc', NULL, NULL),
(8, 'pm1Ih2RkBjg0kH975dgWy00IibiYd20OoYFR2vlH', 'GOvhKw0NA5SZc7WKZsA9psIgh3FuTwF5n8IT5JK9FEsoXiYsjiNaBdIAvyF9CNQZIIgcCTc1up7lOti1zAFG9l6TyGXsJtCl2NR9', NULL, NULL),
(9, 'aEhNKiKeBmhjDcuRYdfRtLXNER05hm7QcPoQN6MP', 'V2X6SiMxARDGMfaqO2IVBWwc9ihkkXrSSy3EZmjzKAlS4m8TP0RB9medLMN6WbX4csJSP9rwBEAzssj8D2a2SkqsH098yRPIwrgk', NULL, NULL),
(10, 'KrqnOZXGN6QNAS8FFei7af2PLmfn4HlYqTIiWnjT', 'PWSdOl5CtzNxhT3BDe7xrRyW57GGAE6fFBb30VHcC1oBcFwLDVlQHlG1LBPgaJ8FRhOtBo4MNX2LVIDpNXK0NflKP4Lo1GdoIOGQ', NULL, NULL),
(11, 'Un3lEcUiWbzP478oMZguY72ow6AhVjHZzxkCS84q', '8xT4C98squ3TDgcFIN3O3LZCTqJqZxUVWHV9tajkDMrUZodUnWZFIs8P88mVy6JXE5YJibXCFPVmJCA3WNzQ8Y2EtlluYBBR78SP', NULL, NULL),
(12, '5GhWVzjewRTNclt9AfRmOT9BWkM5QOvGXAArZIH8', 'fuoqG5jkUtTPtWxF0UeHthotTiNJtEjYcdSrIv1WzsB2XY84XJQ4TNVozyTFajz9UO2ANOg3ApnsHAMdTpptx8r4hjxBZIlUacXw', NULL, NULL),
(13, 'XBhC6BIaIoe0858ij6CloaDrlJpJRQZIl3lCbBKF', '8HMVtFutOvhhBXpYK49rznrA1FcJsTVY9xQddaOQFcFWqRIVcayH3QHH3MSTVdr3xD1BICVO9hbVk4sakbuF0te2YtxHT1vl6Xj0', NULL, NULL),
(14, 'dJ05lf3cyjMBy6jTHnLZGpjzSqutpkPDPdTStD8s', 'n0EdD7xA4iGnH7DBkGfO4HPV3uSQ2e3NKXrd6OnJQHJcXZafvvrTeZrr3UKkMI8iQTJQkyNv5RdBjDyTvHkSExBzwsutRp1U4ONx', NULL, NULL),
(15, 'I7W5Pu28cTPEqTTpYzotC10eo0p4MDXcumHYSoby', 'SjA7nrulMFoJT5QmZiMp5x4s0A0lte4qfixS0IIynRwduNfVrS5tvfSe5x5wmiWqJGUzQ7xSkjaR3kuimgxKitEtpV1WMJKeqW48', NULL, NULL),
(16, 'WJ135qoS4n297v9ePQflTriz9X3AeLH6nOPCvXST', 'vojgGgpeb32g4XCMNkKJZE9SlZbf94Crl3AWjibmKGsabAr7RXuya5m2e2fgatW7m3klgmeLbj1d9S7T5ziQ84Ffzp5JHR05duVL', NULL, NULL),
(17, 'FimPnOQywOBk8QyBdikO7Kb9bINJYZS7VMJN2FGZ', 'HkHkGHrry9BF4d918jSjR6yzV0GcQY7jTROCpksonMGRpUBPLTWpmirB0g4pM6ai4CjEtwd5j9Gvn8oLWmbFVY5aiEkEr00NypVD', NULL, NULL),
(18, 'oCNYNiGRCxVSdm5lTneOoALqrE9AQ62yh1dRU8O7', 'HKT7l4UWuXputKKmoH6S81mRqHaOQXbuVEdsVAMTOZ4d2Neg8Mn9gHEHNGBj790WNq0s59ROAvYhTjhP756T9NSoaD9PJv9hHz4F', NULL, NULL),
(19, 'sD4Kt28RZPnIeEOuPywZQVc48YbWN4kJQ5TnlxPO', 'qMnayEk12Csa6ogmofbAF5guntbVyveMvksVKptFGOCiiMloOwd0xpdJwlXTrbtUseEcSZXUg82mZIJbdCdYm7qXMFxUPNvs92nk', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `title`, `description`, `post_id`, `created_at`, `updated_at`) VALUES
(1, '0Zs758B7JAtUUl8ivRrNyyoTR4nUMMlWyf2L8SPl', 'mPFhqP00CxpI9CCtAVz3hebptHjTEUqNCPXgmS1J56IjignHNT5vjdGguRSllrrLU5TGId1EdFz8FyI96WjScioy2k4zdVu6BLBv', 2, NULL, NULL),
(2, 'yusfZWCAWuycM2GT4kg3LVDKvUVhwPgElkzJWhBy', '2CggbPPjnMTWjQ4ghCLy9YlI4xxm9QNsuXzGKvjmpn3jxFMlaFoQatZZGuV4uIM9J5nt4YrXhBOuF5HVgx19XjZlHrMirRG5QKp3', 3, NULL, NULL),
(3, 'BZkFsRWDAyYF6nnSwWKsXSH31S4fVP7lUljQoJRh', 'ZLb3ApLqQXmjHaR41XPOwqk9u2NYFgQ04dKDGWCy4AK0ugjabZ9zqYZnN0GjaLHKbR8hjRRh1BL4iap4PZtTX25tkvE0kjehrUjY', 4, NULL, NULL),
(4, 'VWmfTBkEHGq7QSIcEuTIbDfMy3M2LIMmVabCBtyx', 'p9iKAZZ42jgksE7nXmjeV3dHCnwbMQEVIozDju1IA46V8Wh4w2UI8weHph4wHjoI6A0e0hZKbEriDcuhsiOMWwAtGi3OYcRmaUxt', 5, NULL, NULL),
(5, 'tOVDwhGIe8twhzHwn5SsqzlkRBZ8GZZI57MXGzO4', 'BhnIozKoHa45ncaDx6oCIqdWzTFNGrtPiibIRbmCfTAygqwHce9t5xSDHXFa34PmgrQy5z99A5xyqr075tOfB8qS2KjvfoGkYTZG', 6, NULL, NULL),
(6, 'kNpO63yebq8iZjI6mb3xCMIvEXRvkz4xHQ1FO4Lo', '0f0JQpGpocejzubNnekoFo4DBWST3Itj6VYle6dmDnROYR9lB1vSsZCaZ4j1VBH0iRJuMuq4CAhbZD8BSElVW6mUIYEQQVwgrkwc', 7, NULL, NULL),
(7, 'pm1Ih2RkBjg0kH975dgWy00IibiYd20OoYFR2vlH', 'GOvhKw0NA5SZc7WKZsA9psIgh3FuTwF5n8IT5JK9FEsoXiYsjiNaBdIAvyF9CNQZIIgcCTc1up7lOti1zAFG9l6TyGXsJtCl2NR9', 8, NULL, NULL),
(8, 'aEhNKiKeBmhjDcuRYdfRtLXNER05hm7QcPoQN6MP', 'V2X6SiMxARDGMfaqO2IVBWwc9ihkkXrSSy3EZmjzKAlS4m8TP0RB9medLMN6WbX4csJSP9rwBEAzssj8D2a2SkqsH098yRPIwrgk', 9, NULL, NULL),
(9, 'KrqnOZXGN6QNAS8FFei7af2PLmfn4HlYqTIiWnjT', 'PWSdOl5CtzNxhT3BDe7xrRyW57GGAE6fFBb30VHcC1oBcFwLDVlQHlG1LBPgaJ8FRhOtBo4MNX2LVIDpNXK0NflKP4Lo1GdoIOGQ', 10, NULL, NULL),
(10, 'Un3lEcUiWbzP478oMZguY72ow6AhVjHZzxkCS84q', '8xT4C98squ3TDgcFIN3O3LZCTqJqZxUVWHV9tajkDMrUZodUnWZFIs8P88mVy6JXE5YJibXCFPVmJCA3WNzQ8Y2EtlluYBBR78SP', 11, NULL, NULL),
(11, '5GhWVzjewRTNclt9AfRmOT9BWkM5QOvGXAArZIH8', 'fuoqG5jkUtTPtWxF0UeHthotTiNJtEjYcdSrIv1WzsB2XY84XJQ4TNVozyTFajz9UO2ANOg3ApnsHAMdTpptx8r4hjxBZIlUacXw', 12, NULL, NULL),
(12, 'XBhC6BIaIoe0858ij6CloaDrlJpJRQZIl3lCbBKF', '8HMVtFutOvhhBXpYK49rznrA1FcJsTVY9xQddaOQFcFWqRIVcayH3QHH3MSTVdr3xD1BICVO9hbVk4sakbuF0te2YtxHT1vl6Xj0', 13, NULL, NULL),
(13, 'dJ05lf3cyjMBy6jTHnLZGpjzSqutpkPDPdTStD8s', 'n0EdD7xA4iGnH7DBkGfO4HPV3uSQ2e3NKXrd6OnJQHJcXZafvvrTeZrr3UKkMI8iQTJQkyNv5RdBjDyTvHkSExBzwsutRp1U4ONx', 14, NULL, NULL),
(14, 'I7W5Pu28cTPEqTTpYzotC10eo0p4MDXcumHYSoby', 'SjA7nrulMFoJT5QmZiMp5x4s0A0lte4qfixS0IIynRwduNfVrS5tvfSe5x5wmiWqJGUzQ7xSkjaR3kuimgxKitEtpV1WMJKeqW48', 15, NULL, NULL),
(15, 'WJ135qoS4n297v9ePQflTriz9X3AeLH6nOPCvXST', 'vojgGgpeb32g4XCMNkKJZE9SlZbf94Crl3AWjibmKGsabAr7RXuya5m2e2fgatW7m3klgmeLbj1d9S7T5ziQ84Ffzp5JHR05duVL', 16, NULL, NULL),
(16, 'FimPnOQywOBk8QyBdikO7Kb9bINJYZS7VMJN2FGZ', 'HkHkGHrry9BF4d918jSjR6yzV0GcQY7jTROCpksonMGRpUBPLTWpmirB0g4pM6ai4CjEtwd5j9Gvn8oLWmbFVY5aiEkEr00NypVD', 17, NULL, NULL),
(17, 'oCNYNiGRCxVSdm5lTneOoALqrE9AQ62yh1dRU8O7', 'HKT7l4UWuXputKKmoH6S81mRqHaOQXbuVEdsVAMTOZ4d2Neg8Mn9gHEHNGBj790WNq0s59ROAvYhTjhP756T9NSoaD9PJv9hHz4F', 18, NULL, NULL),
(18, 'sD4Kt28RZPnIeEOuPywZQVc48YbWN4kJQ5TnlxPO', 'qMnayEk12Csa6ogmofbAF5guntbVyveMvksVKptFGOCiiMloOwd0xpdJwlXTrbtUseEcSZXUg82mZIJbdCdYm7qXMFxUPNvs92nk', 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'khkhk', 'khkhk', '2021-06-03 11:49:54', '2021-06-03 11:49:54'),
(2, 'fhfhfhf', 'fhfhfhf', '2021-06-03 11:50:05', '2021-06-03 11:50:05'),
(3, 'zZZ', 'zzz', '2021-06-03 12:03:45', '2021-06-03 12:03:45'),
(4, 'aalnd', 'aalnd', '2021-06-07 03:24:28', '2021-06-07 03:24:28'),
(5, 'dsd', 'dsd', '2021-06-07 03:25:20', '2021-06-07 03:25:20'),
(6, 'ADA,ND', 'ada,nd', '2021-06-07 03:31:39', '2021-06-07 03:31:39'),
(7, 'TEST', 'test', '2021-06-07 03:32:08', '2021-06-07 03:32:08'),
(8, 'tt', 'tt', '2021-06-07 06:56:47', '2021-06-07 06:56:47'),
(9, 'dsdsd', 'dsdsd', '2021-07-08 05:57:44', '2021-07-08 05:57:44'),
(10, 'dsdsd', 'dsdsd', '2021-07-08 05:57:48', '2021-07-08 05:57:48'),
(11, 'dsdsd', 'dsdsd', '2021-07-08 05:58:07', '2021-07-08 05:58:07'),
(12, 'ASA', 'asa', '2021-07-08 05:59:56', '2021-07-08 05:59:56'),
(13, 'RRR', 'rrr', '2021-07-08 06:00:13', '2021-07-08 06:00:13');

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
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `device_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Prakash', 'pp@yopmail.com', NULL, '$2y$10$djn2uO50PbLoBPIjM6CHhelsuYIjbaOAbcTw9mwyTIkQKAExywmhK', '9733890305', NULL, NULL, NULL, NULL),
(5, 'Prasun', 'prp@yopmail.com', NULL, '$2y$10$Cg8Wp9x8NyjzjrqqMrfJEuqS2xtrIuV.7l3KcNiV1MtTw5ekKUMkS', '9733890305', NULL, NULL, NULL, NULL),
(20, 'prakash Paramanick', 'prakashmca577@gmail.com', NULL, '$2y$10$ShtT6byksf4uspwILOYU/./bNwzhgrTJvRuvgs/SSGSCLPHQfT4Ie', '9733890305', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

CREATE TABLE `users2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_post_id_foreign` (`post_id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
