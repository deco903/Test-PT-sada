-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk ptsada
CREATE DATABASE IF NOT EXISTS `ptsada` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ptsada`;

-- membuang struktur untuk table ptsada.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ptsada.migrations: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2020_03_22_051447_create_sekolah_table', 2),
	(6, '2020_03_22_055637_create_siswa_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table ptsada.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ptsada.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table ptsada.sekolah
CREATE TABLE IF NOT EXISTS `sekolah` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ptsada.sekolah: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;
INSERT INTO `sekolah` (`id`, `nama_sekolah`, `created_at`, `updated_at`) VALUES
	(1, 'tunas jakasampurna', NULL, NULL),
	(2, 'labschool', NULL, NULL),
	(3, 'pelita harapan', NULL, NULL);
/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;

-- membuang struktur untuk table ptsada.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sekolah_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ptsada.siswa: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` (`id`, `sekolah_id`, `name`, `alamat`, `nohp`, `created_at`, `updated_at`) VALUES
	(1, 1, 'budi', 'jakarta', '849686436', '2020-03-22 06:02:26', '2020-03-22 06:02:26'),
	(2, 2, 'dedy mulyadi', 'bandung', '048364862', '2020-03-22 06:02:53', '2020-03-22 06:02:53'),
	(3, 1, 'sri intan', 'bekasi', '074876422532', '2020-03-22 06:03:07', '2020-03-22 06:03:07'),
	(4, 1, 'jimy william', 'semarang', '0825376486343', '2020-03-22 06:03:24', '2020-03-22 06:03:24'),
	(5, 1, 'ryan ardiansyah', 'bandung', '08643716633', '2020-03-22 06:03:55', '2020-03-22 06:03:55'),
	(6, 2, 'novelia audah', 'banten', '08467826244', '2020-03-22 06:04:11', '2020-03-22 06:04:11'),
	(7, 1, 'ayu ekawati', 'tanggerang', '08457829832', '2020-03-22 06:04:32', '2020-03-22 06:04:32'),
	(8, 2, 'riri laksmiwati', 'ujung genteng', '08323673281', '2020-03-22 06:04:59', '2020-03-22 06:04:59'),
	(9, 1, 'fitri chayani', 'sukabumi', '095376328871', '2020-03-22 06:05:21', '2020-03-22 06:05:21'),
	(10, 3, 'sammy simorangkir', 'bandung barat', '09787538782', '2020-03-22 06:05:43', '2020-03-22 06:05:43'),
	(11, 2, 'lenny kusumawati', 'rangkas bitung', '0856937828', '2020-03-22 06:06:03', '2020-03-22 06:06:03'),
	(12, 3, 'iksan kamal', 'jakarta', '08667388274', '2020-03-22 06:06:23', '2020-03-22 06:06:23'),
	(13, 1, 'ibrahim sanjaya', 'magelang', '08653767878', '2020-03-22 06:06:48', '2020-03-22 06:06:48'),
	(14, 1, 'afizah nurlaelawati', 'banten', '08578328782', '2020-03-22 06:07:11', '2020-03-22 06:07:11'),
	(15, 2, 'rahmi ayutri', 'tanggerang', '09765843800', '2020-03-22 06:07:35', '2020-03-22 06:07:35');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

-- membuang struktur untuk table ptsada.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ptsada.users: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'deco', 'decopiak@gmail.com', NULL, '$2y$10$r0WiRzQ8EKj0a/ORvGghHe4YXHbsdPq524cIRcLQMtdcKdHj0jpqW', NULL, '2020-03-22 05:24:27', '2020-03-22 05:24:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
