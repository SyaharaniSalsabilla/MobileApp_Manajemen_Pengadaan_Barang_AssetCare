-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 04:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assetcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `revision` tinyint(4) DEFAULT 0,
  `due_date` varchar(50) DEFAULT NULL,
  `submit_date` varchar(50) DEFAULT NULL,
  `rejected_date` varchar(50) DEFAULT NULL,
  `approved_date` varchar(50) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `status`, `reason`, `revision`, `due_date`, `submit_date`, `rejected_date`, `approved_date`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 2, 'Pengawasan Kualitas', 'Memastikan bahwa barang dan jasa yang diterima sesuai dengan spesifikasi yang telah ditetapkan dan memantau kualitasnya secara terus-menerus.', 'Queue', NULL, 0, '2024-07-15T16:00:00.000', '', '', '', '', '2024-07-14 19:26:43.573', '2024-07-14 19:26:43.573'),
(2, 3, 'Negosiasi Kontrak', 'Melakukan negosiasi kontrak dengan pemasok untuk mendapatkan syarat dan ketentuan yang menguntungkan.', 'Queue', NULL, 0, '2024-07-14T21:26:03.457', '', '', '', '', '2024-07-14 21:26:38.233', '2024-07-14 21:26:38.233');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Owner', 'owner@go.id', '$2a$10$U94kTUwL6LUon5U4BKMKOOnXApBTjbcElSiPjdY/vihYYJCTa750a', '2024-07-14 00:01:41.492', '2024-07-14 00:01:41.492'),
(2, 'Employee', 'Billa', 'syaharanibilla1@gmail.com', '$2a$10$I2cG8KZiQCDYzNo6sNQ/Keado3GeB9DdzzO1hC1riXAeQ0LjLule.', '2024-07-14 00:26:56.583', '2024-07-14 00:26:56.583'),
(3, 'Employee', 'Rani', 'rani@gmail.com', '$2a$10$4GOHw2Y6PvBocYU8JlIykOQQ4/iqfIb/m8Llu7KYONeszdzvhnCUW', '2024-07-14 21:25:54.579', '2024-07-14 21:25:54.579');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_tasks` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_users_tasks` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
