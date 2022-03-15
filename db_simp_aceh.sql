-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 06:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simp_aceh`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jurnalis`
--

CREATE TABLE `data_jurnalis` (
  `id_media` bigint(20) UNSIGNED NOT NULL,
  `nama_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_jurnalis`
--

INSERT INTO `data_jurnalis` (`id_media`, `nama_media`, `nomor_telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Serambi Indonesia', '08526045287', 'Lampineung', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id_karyawan` bigint(20) UNSIGNED NOT NULL,
  `nama_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_karyawan`
--

INSERT INTO `data_karyawan` (`id_karyawan`, `nama_karyawan`, `jabatan`, `status`, `no_hp`, `alamat`, `created_at`, `updated_at`) VALUES
(9, 'Yakub', 'Kepala Bagian', 'Luar Kota', '08785632145', 'Ajun', NULL, NULL),
(10, 'Sudirman', 'Operator', 'Luar Kota', '085260145625', 'Lamtemen', NULL, NULL),
(11, 'meimei', 'Manager', 'Luar Kota', '08785632145', 'lampenerut', NULL, NULL);

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
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `nomor_surat` bigint(20) UNSIGNED NOT NULL,
  `judul_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi_surat` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_dari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ditujukan_kepada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`nomor_surat`, `judul_surat`, `isi_surat`, `surat_dari`, `ditujukan_kepada`, `status`, `keterangan`, `created_at`, `updated_at`) VALUES
(15, 'Wawancara', 'ingin mewawancara pak sudirman', 'User', 'Sudirman', 'Ditolak', NULL, '2021-05-06 15:59:20', NULL),
(17, 'Wawancara', '<p>ingin wawancara pak sudirman kamis jam 1ssss</p>', 'User', 'Sudirman', 'Proses', 'baik, di gedung A jam 13.20 wib', '2021-05-06 16:08:21', NULL),
(18, 'Wawancara', 'Assalamulaikum. Saya ingin melakukan wawancara dengan pak sudirman pada 10 juni 2020.', 'User', 'Sudirman', 'Revisi', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-01-06 06:47:58', NULL),
(19, 'ajukan surat', 'mengajukan', 'User', 'meimei', 'Proses', NULL, '2022-03-15 04:24:33', NULL),
(20, 'ajukan surat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus felis nec urna interdum suscipit. In mattis augue purus, ut ultrices lorem faucibus elementum. Etiam augue sapien, rutrum ac purus id, posuere ullamcorper orci. Phasellus blandit molestie enim, vitae rutrum erat sollicitudin non. Donec eu tincidunt lectus. Suspendisse sed hendrerit massa. Suspendisse mattis augue sit amet lobortis egestas. Maecenas gravida at ligula eu feugiat. Sed ac erat ac enim consequat hendrerit non et lectus. Integer non mattis tellus, nec congue libero. Morbi consequat aliquam luctus. Cras nec metus odio. Maecenas facilisis orci sit amet accumsan tempus. Cras elementum massa sit amet pulvinar lobortis. Sed posuere laoreet nisl fermentum aliquet.</p><p>Mauris hendrerit ante et dui tristique, tempor volutpat mi ornare. Nullam maximus gravida justo ac lobortis. Maecenas pellentesque vehicula luctus. Quisque maximus semper quam, ac molestie ipsum lobortis non. Ut id molestie velit. Pellentesque suscipit cursus felis at lobortis. Proin ut fringilla lorem, et porta lectus. Praesent gravida dui sollicitudin velit viverra mollis. Phasellus dignissim est at volutpat efficitur. Phasellus condimentum, leo vel egestas dignissim, tortor lacus eleifend libero, ut congue velit urna quis sapien.</p><p>Mauris aliquam, urna sed tincidunt faucibus, orci metus egestas est, sed viverra erat justo at odio. Vestibulum blandit in leo sit amet gravida. Maecenas tristique ipsum sed lacus ornare, eget iaculis justo vestibulum. Curabitur ac nibh vel libero pellentesque ultricies. Vestibulum consectetur molestie mauris. In dignissim augue tellus, vulputate mattis eros vulputate ac. Duis aliquet eget diam quis semper. Duis semper sit amet lacus sit amet porttitor. Quisque ut feugiat est, eget volutpat mi. Nullam tincidunt risus massa, nec porttitor lorem gravida et. Duis non mi bibendum, porta tortor at, ultrices libero. Aenean non egestas nunc. Proin quis imperdiet sem. Duis ut tincidunt dui, quis fermentum ante.</p><p>Fusce eu porta nibh. Vivamus consequat metus egestas pulvinar vulputate. Pellentesque non sollicitudin purus. Aliquam luctus mattis velit. Morbi ullamcorper in tortor sit amet consectetur. Vivamus in fermentum risus, non interdum dolor. Vestibulum finibus erat quis orci mollis malesuada. Integer a ligula fermentum, dignissim mi tincidunt, eleifend risus. Nam vel nunc in lacus vehicula mollis. Quisque interdum, nisl eu hendrerit pretium, nisi arcu pulvinar ex, id feugiat metus risus ut libero. Cras felis lacus, sodales eget porta ac, posuere a nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut aliquet ante nunc, non condimentum dolor scelerisque nec. Suspendisse porttitor vestibulum lacus sit amet semper.</p><p>Aenean vitae purus urna. Praesent et bibendum leo. In ut lacinia mi. Nam ac rutrum ipsum, nec sollicitudin lectus. Quisque risus ligula, venenatis ac risus a, tincidunt dignissim augue. Maecenas dolor lorem, eleifend id lacinia iaculis, tempus in nisi. Donec dui diam, egestas at aliquet sed, blandit a tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan mauris ut magna maximus, vel consectetur sapien tristique. Nulla lorem urna, condimentum eu pulvinar in, luctus tempor dui. Nam vitae rhoncus mi. Phasellus ut est porta, interdum neque at, fermentum neque. Vestibulum non purus convallis lorem fringilla facilisis sagittis at lectus. Sed lobortis dapibus blandit. Donec molestie ipsum in tempor egestas.</p>', 'User', 'Yakub', 'Proses', NULL, '2022-03-15 04:27:42', NULL);

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
(4, '2020_12_06_114014_mails', 2),
(5, '2020_12_07_061607_create_status', 3),
(6, '2020_12_07_062252_create_status', 4),
(7, '2020_12_08_121622_data_karyawan', 5),
(8, '2020_12_08_164138_data_jurnalis', 6);

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
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Disetujui', NULL, NULL),
(2, 'Ditolak', NULL, NULL),
(3, 'Proses', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin@gmail.com', NULL, 1, '$2y$10$fuo/vJaOlt.WzXrdQ5LATeZtQA30NISxg3BTlWkC01WDaG63M0tjy', NULL, '2020-12-04 23:35:28', '2020-12-04 23:35:28'),
(4, 'User', 'user@gmail.com', NULL, 0, '$2y$10$UhNQ3pfbfezcdzMzVKvwcOdd7xbZI.kKDfU4pxoc4PbGYWl0aOCJu', NULL, '2020-12-04 23:35:28', '2020-12-04 23:35:28'),
(5, 'rojaur', 'rojaurrafiqi25@gmail.com', NULL, 0, '$2y$10$aZG.jwQYM.TQk1.mZoDNau34qcKax9EfI3rpiPP3fthvySJzvaUyq', NULL, '2022-03-14 21:30:42', '2022-03-14 21:30:42'),
(6, 'rafiqi', 'rafiqi@gmail.com', NULL, 0, '$2y$10$seeZLTtmjIxpn8eY49QpJuibscBUShVNzeVVCpGd5QJd1y73jUuzi', NULL, '2022-03-14 21:37:28', '2022-03-14 21:37:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jurnalis`
--
ALTER TABLE `data_jurnalis`
  ADD PRIMARY KEY (`id_media`);

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`nomor_surat`);

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
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

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
-- AUTO_INCREMENT for table `data_jurnalis`
--
ALTER TABLE `data_jurnalis`
  MODIFY `id_media` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `id_karyawan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `nomor_surat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
