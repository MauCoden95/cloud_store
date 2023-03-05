-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-03-2023 a las 17:48:18
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cloud_store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_28_184800_create_sessions_table', 1),
(7, '2023_03_04_151724_create_products_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `img` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `stock_replacement` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `img`, `stock`, `stock_replacement`, `created_at`, `updated_at`) VALUES
(1, 'Auriculares', 'accessories', 1500, 'Auriculares.png', 25, 22, NULL, NULL),
(2, 'Iphone 11', 'cellphones', 215000, 'Celular1.png', 5, 2, NULL, NULL),
(3, 'Samsung Galaxy S6', 'cellphones', 78000, 'Celular2.png', 4, 15, NULL, NULL),
(4, 'LG K20', 'cellphones', 56000, 'Celular3.png', 9, 10, NULL, NULL),
(5, 'LG K40', 'cellphones', 80000, 'Celular4.png', 6, 4, NULL, NULL),
(6, 'Samsung Galaxy 10', 'cellphones', 120000, 'Celular5.png', 14, 12, NULL, NULL),
(7, 'Memoria Externa 1TB', 'storage', 20000, 'Memoriaexterna1tb.png', 20, 22, NULL, NULL),
(8, 'Microfono', 'accesories', 5600, 'Microfono.png', 35, 33, NULL, NULL),
(9, 'Mouse Gamer', 'accesories', 3000, 'Mouse.png', 45, 46, NULL, NULL),
(10, 'Pendrive 8GB', 'storage', 2500, 'Pendrive8gb.png', 50, 34, NULL, NULL),
(11, 'Pendrive 16GB ', 'storage', 3750, 'Pendrive16gb.png', 25, 27, NULL, NULL),
(12, 'Pendrive 64GB', 'storage', 5000, 'Pendrive64gb.png', 15, 22, NULL, NULL),
(13, 'Silla Gamer', 'accesories', 30000, 'Sillagamer.png', 5, 2, NULL, NULL),
(14, 'Smart TV 32\"', 'tv', 45000, 'SmartTv32.png', 10, 7, NULL, NULL),
(15, 'Smart TV 32\" 2', 'tv', 47000, 'SmartTv32ii.png', 7, 8, NULL, NULL),
(16, 'Smart TV 50\"', 'tv', 50000, 'SmartTv50.png', 5, 3, NULL, NULL),
(17, 'Smart TV 50\" 2', 'tv', 60000, 'SmartTv50ii.png', 5, 2, NULL, NULL),
(18, 'Smart TV 64\"', 'tv', 90000, 'SmartTv64.png', 3, 1, NULL, NULL),
(19, 'Tablet 7\"', 'tablets', 13000, 'Tablet1.png', 10, 15, NULL, NULL),
(20, 'Tablet 12\"', 'tablets', 18000, 'Tablet2.png', 10, 7, NULL, NULL),
(21, 'Tablet 5\"', 'tablets', 7000, 'Tablet3.png', 15, 10, NULL, NULL),
(22, 'Tablet 15\"', 'tablets', 25000, 'Tablet4.png', 15, 10, NULL, NULL),
(23, 'Tablet 17\"', 'tablets', 75000, 'Tablet5.png', 3, 1, NULL, NULL),
(24, 'Teclado USB', 'accesories', 1500, 'Teclado.png', 30, 25, NULL, NULL),
(25, 'Webcam', 'accesories', 2500, 'Webcam.png', 15, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oirv6NczKVqgitqNvgcifJdvu68RgN4fts2AwNfi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjI5ejV4OGhlQUF6QWZZek1hd1pkVFdlTEoySGhVWGlYMlFGeWVoeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1678029876),
('Ry9QkSfnKQnVHwVn5mGnav6byT7fjkJdl2e8cHp0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVdJUjExaWxjZE1YUlRQNmtsMGIxb0Z4ZDU0V29GMTBlN0NVcDF1WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1678038262);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
