-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 10:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hseapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-09-04 10:18:16.414000', '2023-09-04 10:18:16.414000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-09-04 10:18:16.421000', '2023-09-04 10:18:16.421000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-09-04 10:18:16.429000', '2023-09-04 10:18:16.429000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-09-04 10:18:16.436000', '2023-09-04 10:18:16.436000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-09-04 10:18:16.440000', '2023-09-04 10:18:16.440000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-09-04 10:18:16.446000', '2023-09-04 10:18:16.446000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-09-04 10:18:16.453000', '2023-09-04 10:18:16.453000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-09-04 10:18:16.459000', '2023-09-04 10:18:16.459000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-09-04 10:18:16.464000', '2023-09-04 10:18:16.464000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-09-04 10:18:16.470000', '2023-09-04 10:18:16.470000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-09-04 10:18:16.475000', '2023-09-04 10:18:16.475000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-09-04 10:18:16.479000', '2023-09-04 10:18:16.479000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-09-04 10:18:16.528000', '2023-09-04 10:18:16.528000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-09-04 10:18:16.539000', '2023-09-04 10:18:16.539000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-09-04 10:18:16.546000', '2023-09-04 10:18:16.546000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-09-04 10:18:16.553000', '2023-09-04 10:18:16.553000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-09-04 10:18:16.559000', '2023-09-04 10:18:16.559000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-09-04 10:18:16.568000', '2023-09-04 10:18:16.568000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-09-04 10:18:16.577000', '2023-09-04 10:18:16.577000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-09-04 10:18:16.589000', '2023-09-04 10:18:16.589000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-09-04 10:18:16.596000', '2023-09-04 10:18:16.596000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-09-04 10:18:16.602000', '2023-09-04 10:18:16.602000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-09-04 10:18:16.610000', '2023-09-04 10:18:16.610000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-09-04 10:18:16.615000', '2023-09-04 10:18:16.615000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-09-04 10:18:16.622000', '2023-09-04 10:18:16.622000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-09-04 10:18:16.628000', '2023-09-04 10:18:16.628000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-09-04 10:18:16.635000', '2023-09-04 10:18:16.635000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-09-04 10:18:16.642000', '2023-09-04 10:18:16.642000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-09-04 10:18:16.647000', '2023-09-04 10:18:16.647000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-09-04 10:18:16.652000', '2023-09-04 10:18:16.652000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-09-04 10:18:16.658000', '2023-09-04 10:18:16.658000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-09-04 10:18:16.663000', '2023-09-04 10:18:16.663000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-09-04 10:18:16.669000', '2023-09-04 10:18:16.669000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-09-04 10:18:16.677000', '2023-09-04 10:18:16.677000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-09-04 10:18:16.682000', '2023-09-04 10:18:16.682000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-09-04 10:18:16.688000', '2023-09-04 10:18:16.688000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-09-04 10:18:16.694000', '2023-09-04 10:18:16.694000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-09-04 10:18:16.698000', '2023-09-04 10:18:16.698000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-09-04 10:18:16.706000', '2023-09-04 10:18:16.706000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-09-04 10:18:16.711000', '2023-09-04 10:18:16.711000', NULL, NULL),
(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-09-04 10:18:16.717000', '2023-09-04 10:18:16.717000', NULL, NULL),
(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-09-04 10:18:16.723000', '2023-09-04 10:18:16.723000', NULL, NULL),
(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-09-04 10:18:16.727000', '2023-09-04 10:18:16.727000', NULL, NULL),
(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-09-04 10:18:16.732000', '2023-09-04 10:18:16.732000', NULL, NULL),
(48, 'admin::users.create', NULL, '{}', '[]', '2023-09-04 10:18:16.739000', '2023-09-04 10:18:16.739000', NULL, NULL),
(49, 'admin::users.read', NULL, '{}', '[]', '2023-09-04 10:18:16.744000', '2023-09-04 10:18:16.744000', NULL, NULL),
(50, 'admin::users.update', NULL, '{}', '[]', '2023-09-04 10:18:16.749000', '2023-09-04 10:18:16.749000', NULL, NULL),
(51, 'admin::users.delete', NULL, '{}', '[]', '2023-09-04 10:18:16.775000', '2023-09-04 10:18:16.775000', NULL, NULL),
(52, 'admin::roles.create', NULL, '{}', '[]', '2023-09-04 10:18:16.780000', '2023-09-04 10:18:16.780000', NULL, NULL),
(53, 'admin::roles.read', NULL, '{}', '[]', '2023-09-04 10:18:16.787000', '2023-09-04 10:18:16.787000', NULL, NULL),
(54, 'admin::roles.update', NULL, '{}', '[]', '2023-09-04 10:18:16.792000', '2023-09-04 10:18:16.792000', NULL, NULL),
(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-09-04 10:18:16.797000', '2023-09-04 10:18:16.797000', NULL, NULL),
(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-09-04 10:18:16.802000', '2023-09-04 10:18:16.802000', NULL, NULL),
(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-09-04 10:18:16.808000', '2023-09-04 10:18:16.808000', NULL, NULL),
(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-09-04 10:18:16.812000', '2023-09-04 10:18:16.812000', NULL, NULL),
(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-09-04 10:18:16.817000', '2023-09-04 10:18:16.817000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-09-04 10:18:16.821000', '2023-09-04 10:18:16.821000', NULL, NULL),
(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-09-04 10:18:16.826000', '2023-09-04 10:18:16.826000', NULL, NULL),
(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-09-04 10:18:16.832000', '2023-09-04 10:18:16.832000', NULL, NULL),
(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-09-04 10:18:16.838000', '2023-09-04 10:18:16.838000', NULL, NULL),
(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-09-04 10:18:16.842000', '2023-09-04 10:18:16.842000', NULL, NULL),
(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-09-04 10:18:16.851000', '2023-09-04 10:18:16.851000', NULL, NULL),
(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-09-04 10:18:16.867000', '2023-09-04 10:18:16.867000', NULL, NULL),
(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-09-04 10:18:16.900000', '2023-09-04 10:18:16.900000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-09-04 10:18:16.923000', '2023-09-04 10:18:16.923000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-09-04 10:18:16.934000', '2023-09-04 10:18:16.934000', NULL, NULL),
(73, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"Nama\",\"ProfilePicture\"]}', '[]', '2023-09-04 13:18:22.548000', '2023-09-04 13:18:22.548000', NULL, NULL),
(74, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"Nama\",\"ProfilePicture\"]}', '[]', '2023-09-04 13:18:22.556000', '2023-09-04 13:18:22.556000', NULL, NULL),
(75, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"Nama\",\"ProfilePicture\"]}', '[]', '2023-09-04 13:18:22.562000', '2023-09-04 13:18:22.562000', NULL, NULL),
(79, 'plugin::content-manager.explorer.delete', 'api::pertanyaan.pertanyaan', '{}', '[]', '2023-09-04 14:01:36.039000', '2023-09-04 14:01:36.039000', NULL, NULL),
(80, 'plugin::content-manager.explorer.publish', 'api::pertanyaan.pertanyaan', '{}', '[]', '2023-09-04 14:01:36.045000', '2023-09-04 14:01:36.045000', NULL, NULL),
(87, 'plugin::content-manager.explorer.delete', 'api::jenispertanyaan.jenispertanyaan', '{}', '[]', '2023-09-04 15:44:49.083000', '2023-09-04 15:44:49.083000', NULL, NULL),
(88, 'plugin::content-manager.explorer.publish', 'api::jenispertanyaan.jenispertanyaan', '{}', '[]', '2023-09-04 15:44:49.090000', '2023-09-04 15:44:49.090000', NULL, NULL),
(137, 'plugin::content-manager.explorer.create', 'api::pertanyaan.pertanyaan', '{\"fields\":[\"pertanyaan\",\"jenis\"]}', '[]', '2023-09-04 16:34:58.123000', '2023-09-04 16:34:58.123000', NULL, NULL),
(138, 'plugin::content-manager.explorer.read', 'api::pertanyaan.pertanyaan', '{\"fields\":[\"pertanyaan\",\"jenis\"]}', '[]', '2023-09-04 16:34:58.130000', '2023-09-04 16:34:58.130000', NULL, NULL),
(139, 'plugin::content-manager.explorer.update', 'api::pertanyaan.pertanyaan', '{\"fields\":[\"pertanyaan\",\"jenis\"]}', '[]', '2023-09-04 16:34:58.135000', '2023-09-04 16:34:58.135000', NULL, NULL),
(143, 'plugin::content-manager.explorer.create', 'api::jenispertanyaan.jenispertanyaan', '{\"fields\":[\"gambar\",\"nama\"]}', '[]', '2023-09-04 17:37:02.610000', '2023-09-04 17:37:02.610000', NULL, NULL),
(144, 'plugin::content-manager.explorer.read', 'api::jenispertanyaan.jenispertanyaan', '{\"fields\":[\"gambar\",\"nama\"]}', '[]', '2023-09-04 17:37:02.617000', '2023-09-04 17:37:02.617000', NULL, NULL),
(145, 'plugin::content-manager.explorer.update', 'api::jenispertanyaan.jenispertanyaan', '{\"fields\":[\"gambar\",\"nama\"]}', '[]', '2023-09-04 17:37:02.623000', '2023-09-04 17:37:02.623000', NULL, NULL),
(149, 'plugin::content-manager.explorer.delete', 'api::loading.loading', '{}', '[]', '2023-09-12 07:28:26.333000', '2023-09-12 07:28:26.333000', NULL, NULL),
(150, 'plugin::content-manager.explorer.publish', 'api::loading.loading', '{}', '[]', '2023-09-12 07:28:26.339000', '2023-09-12 07:28:26.339000', NULL, NULL),
(154, 'plugin::content-manager.explorer.create', 'api::testing.testing', '{\"fields\":[\"test1\"]}', '[]', '2023-09-12 12:03:41.900000', '2023-09-12 12:03:41.900000', NULL, NULL),
(155, 'plugin::content-manager.explorer.read', 'api::testing.testing', '{\"fields\":[\"test1\"]}', '[]', '2023-09-12 12:03:41.971000', '2023-09-12 12:03:41.971000', NULL, NULL),
(156, 'plugin::content-manager.explorer.update', 'api::testing.testing', '{\"fields\":[\"test1\"]}', '[]', '2023-09-12 12:03:41.976000', '2023-09-12 12:03:41.976000', NULL, NULL),
(157, 'plugin::content-manager.explorer.delete', 'api::testing.testing', '{}', '[]', '2023-09-12 12:03:41.982000', '2023-09-12 12:03:41.982000', NULL, NULL),
(158, 'plugin::content-manager.explorer.publish', 'api::testing.testing', '{}', '[]', '2023-09-12 12:03:41.987000', '2023-09-12 12:03:41.987000', NULL, NULL),
(162, 'plugin::content-manager.explorer.create', 'api::loading.loading', '{\"fields\":[\"kondisi1\",\"kodeBahaya1\",\"keterangan\",\"kondisi2\",\"kodeBahaya2\",\"keterangan2\",\"kondisi3\",\"kodeBahaya3\",\"keterangan3\",\"kondisi4\",\"kodeBahaya4\",\"keterangan4\",\"kondisi5\",\"kodeBhaya5\",\"keterangan5\",\"kondisi6\",\"kodeBahaya6\",\"keterangan6\",\"kondisi7\",\"kodeBahaya7\",\"keterangan7\",\"kondisi8\",\"kodeBahaya8\",\"keterangan8\",\"kondisi9\",\"kodeBahaya9\",\"keterangan9\",\"kondisi10\",\"kodeBahaya10\",\"keterangan10\",\"kondisi11\",\"kodeBahaya11\",\"keterangan11\",\"kondisi12\",\"kodeBahaya12\",\"keterangan12\",\"kondisi13\",\"kodeBahaya13\",\"keterangan13\",\"kondisi14\",\"kodeBahaya14\",\"keterangan14\",\"kondisi15\",\"kodeBahaya15\",\"keterangan15\",\"kondisi16\",\"kodeBahaya16\",\"keterangan16\",\"kondisi17\",\"kodeBahaya17\",\"keterangan17\",\"kondisi18\",\"kodeBahaya18\",\"keterangan18\",\"kondisi19\",\"kodeBahaya19\",\"keterangan19\",\"kondisi20\",\"kodeBahaya20\",\"keterangan20\",\"kondisi21\",\"kodeBahaya21\",\"keterangan21\",\"kondisi22\",\"kodebahaya22\",\"keterangan22\",\"kondisi23\",\"kodeBahaya23\",\"keterangan23\",\"kondisi24\",\"kodeBahaya24\",\"keterangan24\",\"kondisi25\",\"kodeBahaya25\",\"keterangan25\",\"kondisi26\",\"kodeBahaya26\",\"keterangan26\",\"tanggal\",\"nama_lokasi\",\"nama_loading\",\"shift\",\"grup\"]}', '[]', '2023-09-14 08:43:24.311000', '2023-09-14 08:43:24.311000', NULL, NULL),
(163, 'plugin::content-manager.explorer.read', 'api::loading.loading', '{\"fields\":[\"kondisi1\",\"kodeBahaya1\",\"keterangan\",\"kondisi2\",\"kodeBahaya2\",\"keterangan2\",\"kondisi3\",\"kodeBahaya3\",\"keterangan3\",\"kondisi4\",\"kodeBahaya4\",\"keterangan4\",\"kondisi5\",\"kodeBhaya5\",\"keterangan5\",\"kondisi6\",\"kodeBahaya6\",\"keterangan6\",\"kondisi7\",\"kodeBahaya7\",\"keterangan7\",\"kondisi8\",\"kodeBahaya8\",\"keterangan8\",\"kondisi9\",\"kodeBahaya9\",\"keterangan9\",\"kondisi10\",\"kodeBahaya10\",\"keterangan10\",\"kondisi11\",\"kodeBahaya11\",\"keterangan11\",\"kondisi12\",\"kodeBahaya12\",\"keterangan12\",\"kondisi13\",\"kodeBahaya13\",\"keterangan13\",\"kondisi14\",\"kodeBahaya14\",\"keterangan14\",\"kondisi15\",\"kodeBahaya15\",\"keterangan15\",\"kondisi16\",\"kodeBahaya16\",\"keterangan16\",\"kondisi17\",\"kodeBahaya17\",\"keterangan17\",\"kondisi18\",\"kodeBahaya18\",\"keterangan18\",\"kondisi19\",\"kodeBahaya19\",\"keterangan19\",\"kondisi20\",\"kodeBahaya20\",\"keterangan20\",\"kondisi21\",\"kodeBahaya21\",\"keterangan21\",\"kondisi22\",\"kodebahaya22\",\"keterangan22\",\"kondisi23\",\"kodeBahaya23\",\"keterangan23\",\"kondisi24\",\"kodeBahaya24\",\"keterangan24\",\"kondisi25\",\"kodeBahaya25\",\"keterangan25\",\"kondisi26\",\"kodeBahaya26\",\"keterangan26\",\"tanggal\",\"nama_lokasi\",\"nama_loading\",\"shift\",\"grup\"]}', '[]', '2023-09-14 08:43:24.319000', '2023-09-14 08:43:24.319000', NULL, NULL),
(164, 'plugin::content-manager.explorer.update', 'api::loading.loading', '{\"fields\":[\"kondisi1\",\"kodeBahaya1\",\"keterangan\",\"kondisi2\",\"kodeBahaya2\",\"keterangan2\",\"kondisi3\",\"kodeBahaya3\",\"keterangan3\",\"kondisi4\",\"kodeBahaya4\",\"keterangan4\",\"kondisi5\",\"kodeBhaya5\",\"keterangan5\",\"kondisi6\",\"kodeBahaya6\",\"keterangan6\",\"kondisi7\",\"kodeBahaya7\",\"keterangan7\",\"kondisi8\",\"kodeBahaya8\",\"keterangan8\",\"kondisi9\",\"kodeBahaya9\",\"keterangan9\",\"kondisi10\",\"kodeBahaya10\",\"keterangan10\",\"kondisi11\",\"kodeBahaya11\",\"keterangan11\",\"kondisi12\",\"kodeBahaya12\",\"keterangan12\",\"kondisi13\",\"kodeBahaya13\",\"keterangan13\",\"kondisi14\",\"kodeBahaya14\",\"keterangan14\",\"kondisi15\",\"kodeBahaya15\",\"keterangan15\",\"kondisi16\",\"kodeBahaya16\",\"keterangan16\",\"kondisi17\",\"kodeBahaya17\",\"keterangan17\",\"kondisi18\",\"kodeBahaya18\",\"keterangan18\",\"kondisi19\",\"kodeBahaya19\",\"keterangan19\",\"kondisi20\",\"kodeBahaya20\",\"keterangan20\",\"kondisi21\",\"kodeBahaya21\",\"keterangan21\",\"kondisi22\",\"kodebahaya22\",\"keterangan22\",\"kondisi23\",\"kodeBahaya23\",\"keterangan23\",\"kondisi24\",\"kodeBahaya24\",\"keterangan24\",\"kondisi25\",\"kodeBahaya25\",\"keterangan25\",\"kondisi26\",\"kodeBahaya26\",\"keterangan26\",\"tanggal\",\"nama_lokasi\",\"nama_loading\",\"shift\",\"grup\"]}', '[]', '2023-09-14 08:43:24.388000', '2023-09-14 08:43:24.388000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(73, 73, 1, 58),
(74, 74, 1, 59),
(75, 75, 1, 60),
(79, 79, 1, 64),
(80, 80, 1, 65),
(87, 87, 1, 72),
(88, 88, 1, 73),
(137, 137, 1, 79),
(138, 138, 1, 80),
(139, 139, 1, 81),
(143, 143, 1, 82),
(144, 144, 1, 83),
(145, 145, 1, 84),
(149, 149, 1, 88),
(150, 150, 1, 89),
(154, 154, 1, 93),
(155, 155, 1, 94),
(156, 156, 1, 95),
(157, 157, 1, 96),
(158, 158, 1, 97),
(162, 162, 1, 98),
(163, 163, 1, 99),
(164, 164, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-09-04 10:18:16.396000', '2023-09-04 10:18:16.396000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-09-04 10:18:16.404000', '2023-09-04 10:18:16.404000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-09-04 10:18:16.411000', '2023-09-04 10:18:16.411000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'satria', 'mulya', NULL, 'satriabae43@gmail.com', '$2a$10$rIRLpYSRiYeBUKfZHE/vy.C6cHVmg95TA2STuTE90VrPkzufnOJHS', NULL, NULL, 1, 0, NULL, '2023-09-04 10:18:35.249000', '2023-09-04 10:18:35.249000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(5, 'INFOGRAFIS.jpg', NULL, NULL, 620, 315, '{\"thumbnail\":{\"name\":\"thumbnail_INFOGRAFIS.jpg\",\"hash\":\"thumbnail_INFOGRAFIS_a2b9bd2b96\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":124,\"size\":7.6,\"url\":\"/uploads/thumbnail_INFOGRAFIS_a2b9bd2b96.jpg\"},\"small\":{\"name\":\"small_INFOGRAFIS.jpg\",\"hash\":\"small_INFOGRAFIS_a2b9bd2b96\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":254,\"size\":22.83,\"url\":\"/uploads/small_INFOGRAFIS_a2b9bd2b96.jpg\"}}', 'INFOGRAFIS_a2b9bd2b96', '.jpg', 'image/jpeg', 32.06, '/uploads/INFOGRAFIS_a2b9bd2b96.jpg', NULL, 'local', NULL, '/', '2023-09-04 17:48:36.129000', '2023-09-11 13:16:13.437000', 1, 1),
(6, 'Landscapers-1080x543.jpg', NULL, NULL, 1080, 543, '{\"thumbnail\":{\"name\":\"thumbnail_Landscapers-1080x543.jpg\",\"hash\":\"thumbnail_Landscapers_1080x543_9f0fb3ad5e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":123,\"size\":8.45,\"url\":\"/uploads/thumbnail_Landscapers_1080x543_9f0fb3ad5e.jpg\"},\"large\":{\"name\":\"large_Landscapers-1080x543.jpg\",\"hash\":\"large_Landscapers_1080x543_9f0fb3ad5e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":503,\"size\":62.4,\"url\":\"/uploads/large_Landscapers_1080x543_9f0fb3ad5e.jpg\"},\"medium\":{\"name\":\"medium_Landscapers-1080x543.jpg\",\"hash\":\"medium_Landscapers_1080x543_9f0fb3ad5e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":377,\"size\":42.84,\"url\":\"/uploads/medium_Landscapers_1080x543_9f0fb3ad5e.jpg\"},\"small\":{\"name\":\"small_Landscapers-1080x543.jpg\",\"hash\":\"small_Landscapers_1080x543_9f0fb3ad5e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":251,\"size\":24.35,\"url\":\"/uploads/small_Landscapers_1080x543_9f0fb3ad5e.jpg\"}}', 'Landscapers_1080x543_9f0fb3ad5e', '.jpg', 'image/jpeg', 59.24, '/uploads/Landscapers_1080x543_9f0fb3ad5e.jpg', NULL, 'local', NULL, '/', '2023-09-11 13:17:05.195000', '2023-09-11 13:17:05.195000', 1, 1),
(7, 'OIP.jfif', NULL, NULL, 474, 316, '{\"thumbnail\":{\"name\":\"thumbnail_OIP.jfif\",\"hash\":\"thumbnail_OIP_fd318a0857\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":234,\"height\":156,\"size\":4.16,\"url\":\"/uploads/thumbnail_OIP_fd318a0857.jfif\"}}', 'OIP_fd318a0857', '.jfif', 'image/jpeg', 10.33, '/uploads/OIP_fd318a0857.jfif', NULL, 'local', NULL, '/', '2023-09-11 13:18:05.261000', '2023-09-13 09:09:12.604000', 1, 1),
(8, 'OIP.jpg', NULL, NULL, 474, 180, '{\"thumbnail\":{\"name\":\"thumbnail_OIP.jpg\",\"hash\":\"thumbnail_OIP_3e3e866ddb\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":93,\"size\":6.94,\"url\":\"/uploads/thumbnail_OIP_3e3e866ddb.jpg\"}}', 'OIP_3e3e866ddb', '.jpg', 'image/jpeg', 15.81, '/uploads/OIP_3e3e866ddb.jpg', NULL, 'local', NULL, '/', '2023-09-11 14:05:09.368000', '2023-09-11 14:05:09.368000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(5, 5, 7, 'api::jenispertanyaan.jenispertanyaan', 'gambar', 1),
(6, 6, 6, 'api::jenispertanyaan.jenispertanyaan', 'gambar', 1),
(8, 8, 8, 'api::jenispertanyaan.jenispertanyaan', 'gambar', 1),
(9, 7, 2, 'plugin::users-permissions.user', 'ProfilePicture', 1),
(10, 7, 1, 'plugin::users-permissions.user', 'ProfilePicture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-09-04 10:18:16.368000', '2023-09-04 10:18:16.368000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenispertanyaans`
--

CREATE TABLE `jenispertanyaans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenispertanyaans`
--

INSERT INTO `jenispertanyaans` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `nama`) VALUES
(6, '2023-09-04 17:23:51.255000', '2023-09-11 13:17:08.844000', '2023-09-04 17:23:52.089000', 1, 1, 'k3'),
(7, '2023-09-04 17:48:46.393000', '2023-09-04 17:48:47.322000', '2023-09-04 17:48:47.319000', 1, 1, 'k2'),
(8, '2023-09-11 14:05:25.277000', '2023-09-11 14:15:08.068000', '2023-09-11 14:15:08.066000', 1, 1, 'safety campaign 3');

-- --------------------------------------------------------

--
-- Table structure for table `loadings`
--

CREATE TABLE `loadings` (
  `id` int(10) UNSIGNED NOT NULL,
  `kondisi_1` varchar(5) DEFAULT NULL,
  `kode_bahaya_1` varchar(1) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kondisi_2` varchar(5) DEFAULT NULL,
  `kode_bahaya_2` varchar(1) DEFAULT NULL,
  `keterangan_2` varchar(255) DEFAULT NULL,
  `kondisi_3` varchar(5) DEFAULT NULL,
  `kode_bahaya_3` varchar(1) DEFAULT NULL,
  `keterangan_3` varchar(255) DEFAULT NULL,
  `kondisi_4` varchar(5) DEFAULT NULL,
  `kode_bahaya_4` varchar(1) DEFAULT NULL,
  `keterangan_4` varchar(255) DEFAULT NULL,
  `kondisi_5` varchar(5) DEFAULT NULL,
  `kode_bhaya_5` varchar(1) DEFAULT NULL,
  `keterangan_5` varchar(255) DEFAULT NULL,
  `kondisi_6` varchar(5) DEFAULT NULL,
  `kode_bahaya_6` varchar(1) DEFAULT NULL,
  `keterangan_6` varchar(255) DEFAULT NULL,
  `kondisi_7` varchar(5) DEFAULT NULL,
  `kode_bahaya_7` varchar(1) DEFAULT NULL,
  `keterangan_7` varchar(255) DEFAULT NULL,
  `kondisi_8` varchar(5) DEFAULT NULL,
  `kode_bahaya_8` varchar(1) DEFAULT NULL,
  `keterangan_8` varchar(255) DEFAULT NULL,
  `kondisi_9` varchar(5) DEFAULT NULL,
  `kode_bahaya_9` varchar(1) DEFAULT NULL,
  `keterangan_9` varchar(255) DEFAULT NULL,
  `kondisi_10` varchar(5) DEFAULT NULL,
  `kode_bahaya_10` varchar(1) DEFAULT NULL,
  `keterangan_10` varchar(255) DEFAULT NULL,
  `kondisi_11` varchar(5) DEFAULT NULL,
  `kode_bahaya_11` varchar(1) DEFAULT NULL,
  `keterangan_11` varchar(255) DEFAULT NULL,
  `kondisi_12` varchar(5) DEFAULT NULL,
  `kode_bahaya_12` varchar(1) DEFAULT NULL,
  `keterangan_12` varchar(255) DEFAULT NULL,
  `kondisi_13` varchar(5) DEFAULT NULL,
  `kode_bahaya_13` varchar(1) DEFAULT NULL,
  `keterangan_13` varchar(255) DEFAULT NULL,
  `kondisi_14` varchar(5) DEFAULT NULL,
  `kode_bahaya_14` varchar(1) DEFAULT NULL,
  `keterangan_14` varchar(255) DEFAULT NULL,
  `kondisi_15` varchar(5) DEFAULT NULL,
  `kode_bahaya_15` varchar(1) DEFAULT NULL,
  `keterangan_15` varchar(255) DEFAULT NULL,
  `kondisi_16` varchar(5) DEFAULT NULL,
  `kode_bahaya_16` varchar(1) DEFAULT NULL,
  `keterangan_16` varchar(255) DEFAULT NULL,
  `kondisi_17` varchar(5) DEFAULT NULL,
  `kode_bahaya_17` varchar(1) DEFAULT NULL,
  `keterangan_17` varchar(255) DEFAULT NULL,
  `kondisi_18` varchar(5) DEFAULT NULL,
  `kode_bahaya_18` varchar(1) DEFAULT NULL,
  `keterangan_18` varchar(255) DEFAULT NULL,
  `kondisi_19` varchar(5) DEFAULT NULL,
  `kode_bahaya_19` varchar(1) DEFAULT NULL,
  `keterangan_19` varchar(255) DEFAULT NULL,
  `kondisi_20` varchar(5) DEFAULT NULL,
  `kode_bahaya_20` varchar(1) DEFAULT NULL,
  `keterangan_20` varchar(255) DEFAULT NULL,
  `kondisi_21` varchar(5) DEFAULT NULL,
  `kode_bahaya_21` varchar(1) DEFAULT NULL,
  `keterangan_21` varchar(255) DEFAULT NULL,
  `kondisi_22` varchar(5) DEFAULT NULL,
  `kodebahaya_22` varchar(1) DEFAULT NULL,
  `keterangan_22` varchar(255) DEFAULT NULL,
  `kondisi_23` varchar(5) DEFAULT NULL,
  `kode_bahaya_23` varchar(1) DEFAULT NULL,
  `keterangan_23` varchar(255) DEFAULT NULL,
  `kondisi_24` varchar(5) DEFAULT NULL,
  `kode_bahaya_24` varchar(1) DEFAULT NULL,
  `keterangan_24` varchar(255) DEFAULT NULL,
  `kondisi_25` varchar(5) DEFAULT NULL,
  `kode_bahaya_25` varchar(1) DEFAULT NULL,
  `keterangan_25` varchar(255) DEFAULT NULL,
  `kondisi_26` varchar(5) DEFAULT NULL,
  `kode_bahaya_26` varchar(1) DEFAULT NULL,
  `keterangan_26` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `published_at` timestamp(6) NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `tanggal` timestamp(6) NULL DEFAULT NULL,
  `nama_lokasi` varchar(255) DEFAULT NULL,
  `nama_loading` varchar(255) DEFAULT NULL,
  `shift` varchar(255) DEFAULT NULL,
  `grup` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `loadings`
--

INSERT INTO `loadings` (`id`, `kondisi_1`, `kode_bahaya_1`, `keterangan`, `kondisi_2`, `kode_bahaya_2`, `keterangan_2`, `kondisi_3`, `kode_bahaya_3`, `keterangan_3`, `kondisi_4`, `kode_bahaya_4`, `keterangan_4`, `kondisi_5`, `kode_bhaya_5`, `keterangan_5`, `kondisi_6`, `kode_bahaya_6`, `keterangan_6`, `kondisi_7`, `kode_bahaya_7`, `keterangan_7`, `kondisi_8`, `kode_bahaya_8`, `keterangan_8`, `kondisi_9`, `kode_bahaya_9`, `keterangan_9`, `kondisi_10`, `kode_bahaya_10`, `keterangan_10`, `kondisi_11`, `kode_bahaya_11`, `keterangan_11`, `kondisi_12`, `kode_bahaya_12`, `keterangan_12`, `kondisi_13`, `kode_bahaya_13`, `keterangan_13`, `kondisi_14`, `kode_bahaya_14`, `keterangan_14`, `kondisi_15`, `kode_bahaya_15`, `keterangan_15`, `kondisi_16`, `kode_bahaya_16`, `keterangan_16`, `kondisi_17`, `kode_bahaya_17`, `keterangan_17`, `kondisi_18`, `kode_bahaya_18`, `keterangan_18`, `kondisi_19`, `kode_bahaya_19`, `keterangan_19`, `kondisi_20`, `kode_bahaya_20`, `keterangan_20`, `kondisi_21`, `kode_bahaya_21`, `keterangan_21`, `kondisi_22`, `kodebahaya_22`, `keterangan_22`, `kondisi_23`, `kode_bahaya_23`, `keterangan_23`, `kondisi_24`, `kode_bahaya_24`, `keterangan_24`, `kondisi_25`, `kode_bahaya_25`, `keterangan_25`, `kondisi_26`, `kode_bahaya_26`, `keterangan_26`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `tanggal`, `nama_lokasi`, `nama_loading`, `shift`, `grup`) VALUES
(45, 'false', 'y', NULL, 'true', '', '', 'false', '', '', 'false', '', '', 'false', NULL, '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', NULL, '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', '2023-09-14 06:45:04.514000', '2023-09-14 06:45:04.514000', '2023-09-14 06:45:04.505000', 1, 1, '2023-09-14 06:45:01.000000', 'TAL', 'test', 'Shift 1', 'A'),
(75, 'true', '', NULL, 'true', '', '', 'false', '', '', 'false', '', '', 'false', NULL, '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', NULL, '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', '2023-09-14 06:49:23.242000', '2023-09-14 06:49:23.242000', '2023-09-14 06:49:23.237000', 1, 1, '2023-09-14 06:49:20.000000', 'TAL', 'test', 'Shift 1', 'A'),
(76, 'true', '', NULL, 'true', '', '', 'false', '', '', 'false', '', '', 'false', NULL, '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', NULL, '', 'false', '', '', 'false', '', '', 'false', '', '', 'false', '', '', '2023-09-14 06:49:57.936000', '2023-09-14 06:49:57.936000', '2023-09-14 06:49:57.931000', 1, 1, '2023-09-14 06:49:45.000000', 'TAL', 'test', 'Shift 1', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaans`
--

CREATE TABLE `pertanyaans` (
  `id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaans`
--

INSERT INTO `pertanyaans` (`id`, `pertanyaan`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `jenis`) VALUES
(1, 'Apakah Lebar Loading point sesuai dengan parameter hingga pergerakan manuver dump truck aman sesuai jenis dump truck', '2023-09-04 14:43:12.357000', '2023-09-04 16:35:06.856000', '2023-09-04 15:56:55.446000', 1, 1, 'LP'),
(2, 'Apakah permukaan loading point rata dan bebas dari tumpahan material berserakan?', '2023-09-04 14:50:44.508000', '2023-09-04 16:42:19.751000', '2023-09-04 15:57:23.412000', 1, 1, 'LP'),
(3, 'Apakah grade jalan atau rambu menuju loading sesuai parameter <8%', '2023-09-04 14:52:02.264000', '2023-09-04 16:42:51.454000', '2023-09-04 15:57:30.396000', 1, 1, 'LP'),
(4, 'Apakah ada alat support Buldozer untuk membersihkan loading point', '2023-09-04 14:52:29.471000', '2023-09-04 17:08:12.120000', '2023-09-04 17:08:12.118000', 1, 1, 'LP'),
(5, 'Apakah fatok survey sudah terpasang lengkap sebagai acuan', '2023-09-04 14:53:17.810000', '2023-09-04 17:56:27.377000', '2023-09-04 17:56:27.375000', 1, 1, 'LP'),
(6, 'Apakah penggalian sudah sesuai desain atau patok survey acuan kerja', '2023-09-04 14:53:45.506000', '2023-09-04 17:56:32.590000', '2023-09-04 17:56:32.577000', 1, 1, 'LP'),
(7, 'Apakah pada lokasi kerja aman dari potensi longsor dan material menggantung', '2023-09-04 14:54:10.640000', '2023-09-04 17:56:56.002000', '2023-09-04 17:56:56.000000', 1, 1, 'LP'),
(8, 'Apakah cukup penerangan untuk operasi malam hari (NAB:20LUX)', '2023-09-04 14:54:39.057000', '2023-09-04 17:57:01.124000', '2023-09-04 17:57:01.121000', 1, 1, 'LP'),
(9, 'Apakah material siap diloading (sudah diblasing,dripping,cukup lunak untuk digali dimuat) dan cukup untuk pada shift ini', '2023-09-04 14:55:20.152000', '2023-09-04 17:57:05.805000', '2023-09-04 17:57:05.802000', 1, 1, 'LP'),
(10, 'Apakah saluran air yang diluar atau didalam areal tambang berfungsi dengan baik?', '2023-09-04 14:55:45.899000', '2023-09-04 17:57:12.831000', '2023-09-04 17:57:12.829000', 1, 1, 'LP'),
(11, 'asdasdasdasdsadasdasd', '2023-09-04 15:32:13.766000', '2023-09-04 15:32:14.428000', '2023-09-04 15:32:14.426000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"Nama\":{\"type\":\"string\",\"required\":true},\"ProfilePicture\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"Nama\":{\"type\":\"string\",\"required\":true},\"ProfilePicture\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"api::jenispertanyaan.jenispertanyaan\":{\"kind\":\"collectionType\",\"collectionName\":\"jenispertanyaans\",\"info\":{\"singularName\":\"jenispertanyaan\",\"pluralName\":\"jenispertanyaans\",\"displayName\":\"safetycampaign\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"gambar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"nama\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"jenispertanyaans\",\"info\":{\"singularName\":\"jenispertanyaan\",\"pluralName\":\"jenispertanyaans\",\"displayName\":\"safetycampaign\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"gambar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"nama\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"jenispertanyaan\",\"connection\":\"default\",\"uid\":\"api::jenispertanyaan.jenispertanyaan\",\"apiName\":\"jenispertanyaan\",\"globalId\":\"Jenispertanyaan\",\"actions\":{},\"lifecycles\":{}},\"api::loading.loading\":{\"kind\":\"collectionType\",\"collectionName\":\"loadings\",\"info\":{\"singularName\":\"loading\",\"pluralName\":\"loadings\",\"displayName\":\"loading\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"kondisi1\":{\"type\":\"string\",\"required\":false},\"kodeBahaya1\":{\"type\":\"string\",\"required\":false},\"keterangan\":{\"type\":\"string\",\"required\":false},\"kondisi2\":{\"type\":\"string\",\"required\":false},\"kodeBahaya2\":{\"type\":\"string\",\"required\":false},\"keterangan2\":{\"type\":\"string\",\"required\":false},\"kondisi3\":{\"type\":\"string\",\"required\":false},\"kodeBahaya3\":{\"type\":\"string\"},\"keterangan3\":{\"type\":\"string\"},\"kondisi4\":{\"type\":\"string\"},\"kodeBahaya4\":{\"type\":\"string\"},\"keterangan4\":{\"type\":\"string\"},\"kondisi5\":{\"type\":\"string\"},\"kodeBhaya5\":{\"type\":\"string\"},\"keterangan5\":{\"type\":\"string\"},\"kondisi6\":{\"type\":\"string\"},\"kodeBahaya6\":{\"type\":\"string\"},\"keterangan6\":{\"type\":\"string\"},\"kondisi7\":{\"type\":\"string\"},\"kodeBahaya7\":{\"type\":\"string\"},\"keterangan7\":{\"type\":\"string\"},\"kondisi8\":{\"type\":\"string\"},\"kodeBahaya8\":{\"type\":\"string\"},\"keterangan8\":{\"type\":\"string\"},\"kondisi9\":{\"type\":\"string\"},\"kodeBahaya9\":{\"type\":\"string\"},\"keterangan9\":{\"type\":\"string\"},\"kondisi10\":{\"type\":\"string\"},\"kodeBahaya10\":{\"type\":\"string\"},\"keterangan10\":{\"type\":\"string\"},\"kondisi11\":{\"type\":\"string\"},\"kodeBahaya11\":{\"type\":\"string\"},\"keterangan11\":{\"type\":\"string\"},\"kondisi12\":{\"type\":\"string\"},\"kodeBahaya12\":{\"type\":\"string\"},\"keterangan12\":{\"type\":\"string\"},\"kondisi13\":{\"type\":\"string\"},\"kodeBahaya13\":{\"type\":\"string\"},\"keterangan13\":{\"type\":\"string\"},\"kondisi14\":{\"type\":\"string\"},\"kodeBahaya14\":{\"type\":\"string\"},\"keterangan14\":{\"type\":\"string\"},\"kondisi15\":{\"type\":\"string\"},\"kodeBahaya15\":{\"type\":\"string\"},\"keterangan15\":{\"type\":\"string\"},\"kondisi16\":{\"type\":\"string\"},\"kodeBahaya16\":{\"type\":\"string\"},\"keterangan16\":{\"type\":\"string\"},\"kondisi17\":{\"type\":\"string\"},\"kodeBahaya17\":{\"type\":\"string\"},\"keterangan17\":{\"type\":\"string\"},\"kondisi18\":{\"type\":\"string\"},\"kodeBahaya18\":{\"type\":\"string\"},\"keterangan18\":{\"type\":\"string\"},\"kondisi19\":{\"type\":\"string\"},\"kodeBahaya19\":{\"type\":\"string\"},\"keterangan19\":{\"type\":\"string\"},\"kondisi20\":{\"type\":\"string\"},\"kodeBahaya20\":{\"type\":\"string\"},\"keterangan20\":{\"type\":\"string\"},\"kondisi21\":{\"type\":\"string\"},\"kodeBahaya21\":{\"type\":\"string\"},\"keterangan21\":{\"type\":\"string\"},\"kondisi22\":{\"type\":\"string\"},\"kodebahaya22\":{\"type\":\"string\"},\"keterangan22\":{\"type\":\"string\"},\"kondisi23\":{\"type\":\"string\"},\"kodeBahaya23\":{\"type\":\"string\"},\"keterangan23\":{\"type\":\"string\"},\"kondisi24\":{\"type\":\"string\"},\"kodeBahaya24\":{\"type\":\"string\"},\"keterangan24\":{\"type\":\"string\"},\"kondisi25\":{\"type\":\"string\"},\"kodeBahaya25\":{\"type\":\"string\"},\"keterangan25\":{\"type\":\"string\"},\"kondisi26\":{\"type\":\"string\"},\"kodeBahaya26\":{\"type\":\"string\"},\"keterangan26\":{\"type\":\"string\"},\"tanggal\":{\"type\":\"datetime\"},\"nama_lokasi\":{\"type\":\"string\",\"maxLength\":30,\"required\":true},\"nama_loading\":{\"type\":\"string\",\"required\":true,\"maxLength\":40},\"shift\":{\"type\":\"string\",\"required\":true,\"maxLength\":9},\"grup\":{\"type\":\"string\",\"required\":true,\"maxLength\":15},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"loadings\",\"info\":{\"singularName\":\"loading\",\"pluralName\":\"loadings\",\"displayName\":\"loading\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"kondisi1\":{\"type\":\"string\",\"required\":false},\"kodeBahaya1\":{\"type\":\"string\",\"required\":false},\"keterangan\":{\"type\":\"string\",\"required\":false},\"kondisi2\":{\"type\":\"string\",\"required\":false},\"kodeBahaya2\":{\"type\":\"string\",\"required\":false},\"keterangan2\":{\"type\":\"string\",\"required\":false},\"kondisi3\":{\"type\":\"string\",\"required\":false},\"kodeBahaya3\":{\"type\":\"string\"},\"keterangan3\":{\"type\":\"string\"},\"kondisi4\":{\"type\":\"string\"},\"kodeBahaya4\":{\"type\":\"string\"},\"keterangan4\":{\"type\":\"string\"},\"kondisi5\":{\"type\":\"string\"},\"kodeBhaya5\":{\"type\":\"string\"},\"keterangan5\":{\"type\":\"string\"},\"kondisi6\":{\"type\":\"string\"},\"kodeBahaya6\":{\"type\":\"string\"},\"keterangan6\":{\"type\":\"string\"},\"kondisi7\":{\"type\":\"string\"},\"kodeBahaya7\":{\"type\":\"string\"},\"keterangan7\":{\"type\":\"string\"},\"kondisi8\":{\"type\":\"string\"},\"kodeBahaya8\":{\"type\":\"string\"},\"keterangan8\":{\"type\":\"string\"},\"kondisi9\":{\"type\":\"string\"},\"kodeBahaya9\":{\"type\":\"string\"},\"keterangan9\":{\"type\":\"string\"},\"kondisi10\":{\"type\":\"string\"},\"kodeBahaya10\":{\"type\":\"string\"},\"keterangan10\":{\"type\":\"string\"},\"kondisi11\":{\"type\":\"string\"},\"kodeBahaya11\":{\"type\":\"string\"},\"keterangan11\":{\"type\":\"string\"},\"kondisi12\":{\"type\":\"string\"},\"kodeBahaya12\":{\"type\":\"string\"},\"keterangan12\":{\"type\":\"string\"},\"kondisi13\":{\"type\":\"string\"},\"kodeBahaya13\":{\"type\":\"string\"},\"keterangan13\":{\"type\":\"string\"},\"kondisi14\":{\"type\":\"string\"},\"kodeBahaya14\":{\"type\":\"string\"},\"keterangan14\":{\"type\":\"string\"},\"kondisi15\":{\"type\":\"string\"},\"kodeBahaya15\":{\"type\":\"string\"},\"keterangan15\":{\"type\":\"string\"},\"kondisi16\":{\"type\":\"string\"},\"kodeBahaya16\":{\"type\":\"string\"},\"keterangan16\":{\"type\":\"string\"},\"kondisi17\":{\"type\":\"string\"},\"kodeBahaya17\":{\"type\":\"string\"},\"keterangan17\":{\"type\":\"string\"},\"kondisi18\":{\"type\":\"string\"},\"kodeBahaya18\":{\"type\":\"string\"},\"keterangan18\":{\"type\":\"string\"},\"kondisi19\":{\"type\":\"string\"},\"kodeBahaya19\":{\"type\":\"string\"},\"keterangan19\":{\"type\":\"string\"},\"kondisi20\":{\"type\":\"string\"},\"kodeBahaya20\":{\"type\":\"string\"},\"keterangan20\":{\"type\":\"string\"},\"kondisi21\":{\"type\":\"string\"},\"kodeBahaya21\":{\"type\":\"string\"},\"keterangan21\":{\"type\":\"string\"},\"kondisi22\":{\"type\":\"string\"},\"kodebahaya22\":{\"type\":\"string\"},\"keterangan22\":{\"type\":\"string\"},\"kondisi23\":{\"type\":\"string\"},\"kodeBahaya23\":{\"type\":\"string\"},\"keterangan23\":{\"type\":\"string\"},\"kondisi24\":{\"type\":\"string\"},\"kodeBahaya24\":{\"type\":\"string\"},\"keterangan24\":{\"type\":\"string\"},\"kondisi25\":{\"type\":\"string\"},\"kodeBahaya25\":{\"type\":\"string\"},\"keterangan25\":{\"type\":\"string\"},\"kondisi26\":{\"type\":\"string\"},\"kodeBahaya26\":{\"type\":\"string\"},\"keterangan26\":{\"type\":\"string\"},\"tanggal\":{\"type\":\"datetime\"},\"nama_lokasi\":{\"type\":\"string\",\"maxLength\":30,\"required\":true},\"nama_loading\":{\"type\":\"string\",\"required\":true,\"maxLength\":40},\"shift\":{\"type\":\"string\",\"required\":true,\"maxLength\":9},\"grup\":{\"type\":\"string\",\"required\":true,\"maxLength\":15}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"loading\",\"connection\":\"default\",\"uid\":\"api::loading.loading\",\"apiName\":\"loading\",\"globalId\":\"Loading\",\"actions\":{},\"lifecycles\":{}},\"api::pertanyaan.pertanyaan\":{\"kind\":\"collectionType\",\"collectionName\":\"pertanyaans\",\"info\":{\"singularName\":\"pertanyaan\",\"pluralName\":\"pertanyaans\",\"displayName\":\"pertanyaan\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"pertanyaan\":{\"type\":\"text\"},\"jenis\":{\"type\":\"enumeration\",\"enum\":[\"LP\",\"DP\",\"HR\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pertanyaans\",\"info\":{\"singularName\":\"pertanyaan\",\"pluralName\":\"pertanyaans\",\"displayName\":\"pertanyaan\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"pertanyaan\":{\"type\":\"text\"},\"jenis\":{\"type\":\"enumeration\",\"enum\":[\"LP\",\"DP\",\"HR\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"pertanyaan\",\"connection\":\"default\",\"uid\":\"api::pertanyaan.pertanyaan\",\"apiName\":\"pertanyaan\",\"globalId\":\"Pertanyaan\",\"actions\":{},\"lifecycles\":{}},\"api::testing.testing\":{\"kind\":\"collectionType\",\"collectionName\":\"testings\",\"info\":{\"singularName\":\"testing\",\"pluralName\":\"testings\",\"displayName\":\"testing\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"test1\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"testings\",\"info\":{\"singularName\":\"testing\",\"pluralName\":\"testings\",\"displayName\":\"testing\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"test1\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"testing\",\"connection\":\"default\",\"uid\":\"api::testing.testing\",\"apiName\":\"testing\",\"globalId\":\"Testing\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"Nama\":{\"edit\":{\"label\":\"Nama\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nama\",\"searchable\":true,\"sortable\":true}},\"ProfilePicture\":{\"edit\":{\"label\":\"ProfilePicture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ProfilePicture\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"Nama\",\"size\":6},{\"name\":\"ProfilePicture\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"29 15 13 * * 1\",\"lastWeeklyUpdate\":1694412929025}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::pertanyaan.pertanyaan', '{\"uid\":\"api::pertanyaan.pertanyaan\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"pertanyaan\":{\"edit\":{\"label\":\"pertanyaan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pertanyaan\",\"searchable\":true,\"sortable\":true}},\"jenis\":{\"edit\":{\"label\":\"jenis\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"jenis\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"pertanyaan\",\"createdAt\",\"jenis\"],\"edit\":[[{\"name\":\"pertanyaan\",\"size\":6},{\"name\":\"jenis\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::jenispertanyaan.jenispertanyaan', '{\"uid\":\"api::jenispertanyaan.jenispertanyaan\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"gambar\":{\"edit\":{\"label\":\"gambar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gambar\",\"searchable\":false,\"sortable\":false}},\"nama\":{\"edit\":{\"label\":\"nama\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nama\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"gambar\",\"nama\"],\"edit\":[[{\"name\":\"gambar\",\"size\":6},{\"name\":\"nama\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(25, 'plugin_content_manager_configuration_content_types::api::loading.loading', '{\"uid\":\"api::loading.loading\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"kondisi1\",\"defaultSortBy\":\"kondisi1\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"kondisi1\":{\"edit\":{\"label\":\"kondisi1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi1\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya1\":{\"edit\":{\"label\":\"kodeBahaya1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya1\",\"searchable\":true,\"sortable\":true}},\"keterangan\":{\"edit\":{\"label\":\"keterangan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan\",\"searchable\":true,\"sortable\":true}},\"kondisi2\":{\"edit\":{\"label\":\"kondisi2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi2\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya2\":{\"edit\":{\"label\":\"kodeBahaya2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya2\",\"searchable\":true,\"sortable\":true}},\"keterangan2\":{\"edit\":{\"label\":\"keterangan2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan2\",\"searchable\":true,\"sortable\":true}},\"kondisi3\":{\"edit\":{\"label\":\"kondisi3\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi3\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya3\":{\"edit\":{\"label\":\"kodeBahaya3\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya3\",\"searchable\":true,\"sortable\":true}},\"keterangan3\":{\"edit\":{\"label\":\"keterangan3\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan3\",\"searchable\":true,\"sortable\":true}},\"kondisi4\":{\"edit\":{\"label\":\"kondisi4\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi4\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya4\":{\"edit\":{\"label\":\"kodeBahaya4\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya4\",\"searchable\":true,\"sortable\":true}},\"keterangan4\":{\"edit\":{\"label\":\"keterangan4\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan4\",\"searchable\":true,\"sortable\":true}},\"kondisi5\":{\"edit\":{\"label\":\"kondisi5\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi5\",\"searchable\":true,\"sortable\":true}},\"kodeBhaya5\":{\"edit\":{\"label\":\"kodeBhaya5\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBhaya5\",\"searchable\":true,\"sortable\":true}},\"keterangan5\":{\"edit\":{\"label\":\"keterangan5\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan5\",\"searchable\":true,\"sortable\":true}},\"kondisi6\":{\"edit\":{\"label\":\"kondisi6\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi6\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya6\":{\"edit\":{\"label\":\"kodeBahaya6\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya6\",\"searchable\":true,\"sortable\":true}},\"keterangan6\":{\"edit\":{\"label\":\"keterangan6\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan6\",\"searchable\":true,\"sortable\":true}},\"kondisi7\":{\"edit\":{\"label\":\"kondisi7\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi7\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya7\":{\"edit\":{\"label\":\"kodeBahaya7\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya7\",\"searchable\":true,\"sortable\":true}},\"keterangan7\":{\"edit\":{\"label\":\"keterangan7\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan7\",\"searchable\":true,\"sortable\":true}},\"kondisi8\":{\"edit\":{\"label\":\"kondisi8\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi8\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya8\":{\"edit\":{\"label\":\"kodeBahaya8\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya8\",\"searchable\":true,\"sortable\":true}},\"keterangan8\":{\"edit\":{\"label\":\"keterangan8\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan8\",\"searchable\":true,\"sortable\":true}},\"kondisi9\":{\"edit\":{\"label\":\"kondisi9\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi9\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya9\":{\"edit\":{\"label\":\"kodeBahaya9\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya9\",\"searchable\":true,\"sortable\":true}},\"keterangan9\":{\"edit\":{\"label\":\"keterangan9\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan9\",\"searchable\":true,\"sortable\":true}},\"kondisi10\":{\"edit\":{\"label\":\"kondisi10\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi10\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya10\":{\"edit\":{\"label\":\"kodeBahaya10\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya10\",\"searchable\":true,\"sortable\":true}},\"keterangan10\":{\"edit\":{\"label\":\"keterangan10\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan10\",\"searchable\":true,\"sortable\":true}},\"kondisi11\":{\"edit\":{\"label\":\"kondisi11\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi11\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya11\":{\"edit\":{\"label\":\"kodeBahaya11\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya11\",\"searchable\":true,\"sortable\":true}},\"keterangan11\":{\"edit\":{\"label\":\"keterangan11\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan11\",\"searchable\":true,\"sortable\":true}},\"kondisi12\":{\"edit\":{\"label\":\"kondisi12\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi12\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya12\":{\"edit\":{\"label\":\"kodeBahaya12\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya12\",\"searchable\":true,\"sortable\":true}},\"keterangan12\":{\"edit\":{\"label\":\"keterangan12\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan12\",\"searchable\":true,\"sortable\":true}},\"kondisi13\":{\"edit\":{\"label\":\"kondisi13\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi13\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya13\":{\"edit\":{\"label\":\"kodeBahaya13\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya13\",\"searchable\":true,\"sortable\":true}},\"keterangan13\":{\"edit\":{\"label\":\"keterangan13\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan13\",\"searchable\":true,\"sortable\":true}},\"kondisi14\":{\"edit\":{\"label\":\"kondisi14\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi14\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya14\":{\"edit\":{\"label\":\"kodeBahaya14\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya14\",\"searchable\":true,\"sortable\":true}},\"keterangan14\":{\"edit\":{\"label\":\"keterangan14\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan14\",\"searchable\":true,\"sortable\":true}},\"kondisi15\":{\"edit\":{\"label\":\"kondisi15\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi15\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya15\":{\"edit\":{\"label\":\"kodeBahaya15\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya15\",\"searchable\":true,\"sortable\":true}},\"keterangan15\":{\"edit\":{\"label\":\"keterangan15\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan15\",\"searchable\":true,\"sortable\":true}},\"kondisi16\":{\"edit\":{\"label\":\"kondisi16\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi16\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya16\":{\"edit\":{\"label\":\"kodeBahaya16\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya16\",\"searchable\":true,\"sortable\":true}},\"keterangan16\":{\"edit\":{\"label\":\"keterangan16\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan16\",\"searchable\":true,\"sortable\":true}},\"kondisi17\":{\"edit\":{\"label\":\"kondisi17\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi17\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya17\":{\"edit\":{\"label\":\"kodeBahaya17\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya17\",\"searchable\":true,\"sortable\":true}},\"keterangan17\":{\"edit\":{\"label\":\"keterangan17\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan17\",\"searchable\":true,\"sortable\":true}},\"kondisi18\":{\"edit\":{\"label\":\"kondisi18\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi18\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya18\":{\"edit\":{\"label\":\"kodeBahaya18\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya18\",\"searchable\":true,\"sortable\":true}},\"keterangan18\":{\"edit\":{\"label\":\"keterangan18\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan18\",\"searchable\":true,\"sortable\":true}},\"kondisi19\":{\"edit\":{\"label\":\"kondisi19\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi19\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya19\":{\"edit\":{\"label\":\"kodeBahaya19\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya19\",\"searchable\":true,\"sortable\":true}},\"keterangan19\":{\"edit\":{\"label\":\"keterangan19\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan19\",\"searchable\":true,\"sortable\":true}},\"kondisi20\":{\"edit\":{\"label\":\"kondisi20\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi20\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya20\":{\"edit\":{\"label\":\"kodeBahaya20\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya20\",\"searchable\":true,\"sortable\":true}},\"keterangan20\":{\"edit\":{\"label\":\"keterangan20\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan20\",\"searchable\":true,\"sortable\":true}},\"kondisi21\":{\"edit\":{\"label\":\"kondisi21\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi21\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya21\":{\"edit\":{\"label\":\"kodeBahaya21\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya21\",\"searchable\":true,\"sortable\":true}},\"keterangan21\":{\"edit\":{\"label\":\"keterangan21\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan21\",\"searchable\":true,\"sortable\":true}},\"kondisi22\":{\"edit\":{\"label\":\"kondisi22\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi22\",\"searchable\":true,\"sortable\":true}},\"kodebahaya22\":{\"edit\":{\"label\":\"kodebahaya22\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodebahaya22\",\"searchable\":true,\"sortable\":true}},\"keterangan22\":{\"edit\":{\"label\":\"keterangan22\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan22\",\"searchable\":true,\"sortable\":true}},\"kondisi23\":{\"edit\":{\"label\":\"kondisi23\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi23\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya23\":{\"edit\":{\"label\":\"kodeBahaya23\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya23\",\"searchable\":true,\"sortable\":true}},\"keterangan23\":{\"edit\":{\"label\":\"keterangan23\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan23\",\"searchable\":true,\"sortable\":true}},\"kondisi24\":{\"edit\":{\"label\":\"kondisi24\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi24\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya24\":{\"edit\":{\"label\":\"kodeBahaya24\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya24\",\"searchable\":true,\"sortable\":true}},\"keterangan24\":{\"edit\":{\"label\":\"keterangan24\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan24\",\"searchable\":true,\"sortable\":true}},\"kondisi25\":{\"edit\":{\"label\":\"kondisi25\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi25\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya25\":{\"edit\":{\"label\":\"kodeBahaya25\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya25\",\"searchable\":true,\"sortable\":true}},\"keterangan25\":{\"edit\":{\"label\":\"keterangan25\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan25\",\"searchable\":true,\"sortable\":true}},\"kondisi26\":{\"edit\":{\"label\":\"kondisi26\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kondisi26\",\"searchable\":true,\"sortable\":true}},\"kodeBahaya26\":{\"edit\":{\"label\":\"kodeBahaya26\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kodeBahaya26\",\"searchable\":true,\"sortable\":true}},\"keterangan26\":{\"edit\":{\"label\":\"keterangan26\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keterangan26\",\"searchable\":true,\"sortable\":true}},\"tanggal\":{\"edit\":{\"label\":\"tanggal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tanggal\",\"searchable\":true,\"sortable\":true}},\"nama_lokasi\":{\"edit\":{\"label\":\"nama_lokasi\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nama_lokasi\",\"searchable\":true,\"sortable\":true}},\"nama_loading\":{\"edit\":{\"label\":\"nama_loading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nama_loading\",\"searchable\":true,\"sortable\":true}},\"shift\":{\"edit\":{\"label\":\"shift\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shift\",\"searchable\":true,\"sortable\":true}},\"grup\":{\"edit\":{\"label\":\"grup\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"grup\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"kondisi1\",\"kodeBahaya1\"],\"edit\":[[{\"name\":\"kondisi1\",\"size\":6}],[{\"name\":\"kodeBahaya1\",\"size\":6},{\"name\":\"keterangan\",\"size\":6}],[{\"name\":\"kondisi2\",\"size\":6},{\"name\":\"kodeBahaya2\",\"size\":6}],[{\"name\":\"keterangan2\",\"size\":6},{\"name\":\"kondisi3\",\"size\":6}],[{\"name\":\"kodeBahaya3\",\"size\":6},{\"name\":\"keterangan3\",\"size\":6}],[{\"name\":\"kondisi4\",\"size\":6},{\"name\":\"kodeBahaya4\",\"size\":6}],[{\"name\":\"keterangan4\",\"size\":6},{\"name\":\"kondisi5\",\"size\":6}],[{\"name\":\"kodeBhaya5\",\"size\":6},{\"name\":\"keterangan5\",\"size\":6}],[{\"name\":\"kondisi6\",\"size\":6},{\"name\":\"kodeBahaya6\",\"size\":6}],[{\"name\":\"keterangan6\",\"size\":6},{\"name\":\"kondisi7\",\"size\":6}],[{\"name\":\"kodeBahaya7\",\"size\":6},{\"name\":\"keterangan7\",\"size\":6}],[{\"name\":\"kondisi8\",\"size\":6},{\"name\":\"kodeBahaya8\",\"size\":6}],[{\"name\":\"keterangan8\",\"size\":6},{\"name\":\"kondisi9\",\"size\":6}],[{\"name\":\"kodeBahaya9\",\"size\":6},{\"name\":\"keterangan9\",\"size\":6}],[{\"name\":\"kondisi10\",\"size\":6},{\"name\":\"kodeBahaya10\",\"size\":6}],[{\"name\":\"keterangan10\",\"size\":6},{\"name\":\"kondisi11\",\"size\":6}],[{\"name\":\"kodeBahaya11\",\"size\":6},{\"name\":\"keterangan11\",\"size\":6}],[{\"name\":\"kondisi12\",\"size\":6},{\"name\":\"kodeBahaya12\",\"size\":6}],[{\"name\":\"keterangan12\",\"size\":6},{\"name\":\"kondisi13\",\"size\":6}],[{\"name\":\"kodeBahaya13\",\"size\":6},{\"name\":\"keterangan13\",\"size\":6}],[{\"name\":\"kondisi14\",\"size\":6},{\"name\":\"kodeBahaya14\",\"size\":6}],[{\"name\":\"keterangan14\",\"size\":6},{\"name\":\"kondisi15\",\"size\":6}],[{\"name\":\"kodeBahaya15\",\"size\":6},{\"name\":\"keterangan15\",\"size\":6}],[{\"name\":\"kondisi16\",\"size\":6},{\"name\":\"kodeBahaya16\",\"size\":6}],[{\"name\":\"keterangan16\",\"size\":6},{\"name\":\"kondisi17\",\"size\":6}],[{\"name\":\"kodeBahaya17\",\"size\":6},{\"name\":\"keterangan17\",\"size\":6}],[{\"name\":\"kondisi18\",\"size\":6},{\"name\":\"kodeBahaya18\",\"size\":6}],[{\"name\":\"keterangan18\",\"size\":6},{\"name\":\"kondisi19\",\"size\":6}],[{\"name\":\"kodeBahaya19\",\"size\":6},{\"name\":\"keterangan19\",\"size\":6}],[{\"name\":\"kondisi20\",\"size\":6},{\"name\":\"kodeBahaya20\",\"size\":6}],[{\"name\":\"keterangan20\",\"size\":6},{\"name\":\"kondisi21\",\"size\":6}],[{\"name\":\"kodeBahaya21\",\"size\":6},{\"name\":\"keterangan21\",\"size\":6}],[{\"name\":\"kondisi22\",\"size\":6},{\"name\":\"kodebahaya22\",\"size\":6}],[{\"name\":\"keterangan22\",\"size\":6},{\"name\":\"kondisi23\",\"size\":6}],[{\"name\":\"kodeBahaya23\",\"size\":6},{\"name\":\"keterangan23\",\"size\":6}],[{\"name\":\"kondisi24\",\"size\":6},{\"name\":\"kodeBahaya24\",\"size\":6}],[{\"name\":\"keterangan24\",\"size\":6},{\"name\":\"kondisi25\",\"size\":6}],[{\"name\":\"kodeBahaya25\",\"size\":6},{\"name\":\"keterangan25\",\"size\":6}],[{\"name\":\"kondisi26\",\"size\":6},{\"name\":\"kodeBahaya26\",\"size\":6}],[{\"name\":\"keterangan26\",\"size\":6},{\"name\":\"tanggal\",\"size\":4}],[{\"name\":\"nama_lokasi\",\"size\":6},{\"name\":\"nama_loading\",\"size\":6}],[{\"name\":\"shift\",\"size\":6},{\"name\":\"grup\",\"size\":6}]]}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::testing.testing', '{\"uid\":\"api::testing.testing\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"test1\",\"defaultSortBy\":\"test1\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"test1\":{\"edit\":{\"label\":\"test1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"test1\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"test1\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"test1\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(24, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"nama\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"jenispertanyaans\",\"indexes\":[{\"name\":\"jenispertanyaans_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"jenispertanyaans_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"jenispertanyaans_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"jenispertanyaans_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nama\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"loadings\",\"indexes\":[{\"name\":\"loadings_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"loadings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"loadings_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"loadings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"kondisi_1\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_1\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_2\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_2\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_2\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_3\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_3\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_3\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_4\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_4\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_4\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_5\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bhaya_5\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_5\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_6\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_6\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_6\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_7\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_7\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_7\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_8\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_8\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_8\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_9\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_9\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_9\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_10\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_10\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_10\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_11\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_11\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_11\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_12\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_12\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_12\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_13\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_13\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_13\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_14\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_14\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_14\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_15\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_15\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_15\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_16\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_16\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_16\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_17\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_17\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_17\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_18\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_18\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_18\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_19\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_19\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_19\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_20\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_20\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_20\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_21\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_21\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_21\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_22\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kodebahaya_22\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_22\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_23\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_23\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_23\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_24\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_24\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_24\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_25\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_25\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_25\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kondisi_26\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kode_bahaya_26\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keterangan_26\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tanggal\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"nama_lokasi\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"nama_loading\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"shift\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"grup\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"pertanyaans\",\"indexes\":[{\"name\":\"pertanyaans_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"pertanyaans_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"pertanyaans_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"pertanyaans_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"pertanyaan\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"jenis\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"testings\",\"indexes\":[{\"name\":\"testings_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"testings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"testings_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"testings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"test_1\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"],\"type\":null},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"],\"type\":null}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-09-14 08:43:23', '24350dc3b85b3486660681f4a3d3c1b9');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testings`
--

CREATE TABLE `testings` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_1` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testings`
--

INSERT INTO `testings` (`id`, `test_1`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'kjhasd', '2023-09-12 12:14:11.018000', '2023-09-12 12:14:11.018000', '2023-09-12 12:14:11.017000', NULL, NULL),
(2, 'kjdhkf', '2023-09-12 12:20:31.079000', '2023-09-12 12:20:31.079000', '2023-09-12 12:20:31.078000', NULL, NULL),
(3, 'kjdhkf', '2023-09-12 12:20:42.855000', '2023-09-12 12:20:42.855000', '2023-09-12 12:20:42.855000', NULL, NULL),
(4, 'value1', '2023-09-12 14:29:05.031000', '2023-09-12 14:29:05.031000', '2023-09-12 14:29:05.030000', NULL, NULL),
(5, 'value12', '2023-09-12 14:29:13.876000', '2023-09-12 14:29:13.876000', '2023-09-12 14:29:13.875000', NULL, NULL),
(6, 'value1', '2023-09-13 09:31:58.441000', '2023-09-13 09:31:58.441000', '2023-09-13 09:31:58.440000', NULL, NULL),
(7, 'value1', '2023-09-13 09:32:06.091000', '2023-09-13 09:32:06.091000', '2023-09-13 09:32:06.090000', NULL, NULL),
(8, 'value1', '2023-09-13 09:32:14.486000', '2023-09-13 09:32:14.486000', '2023-09-13 09:32:14.485000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-09-04 10:18:16.326000', '2023-09-04 10:18:16.326000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-09-04 10:18:16.326000', '2023-09-04 10:18:16.326000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-09-04 10:18:16.343000', '2023-09-04 10:18:16.343000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-09-04 10:18:16.343000', '2023-09-04 10:18:16.343000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-09-04 10:18:16.343000', '2023-09-04 10:18:16.343000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-09-04 10:18:16.343000', '2023-09-04 10:18:16.343000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-09-04 10:18:16.343000', '2023-09-04 10:18:16.343000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-09-04 10:18:16.343000', '2023-09-04 10:18:16.343000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-09-04 10:18:16.343000', '2023-09-04 10:18:16.343000', NULL, NULL),
(10, 'plugin::users-permissions.user.me', '2023-09-04 12:44:03.461000', '2023-09-04 12:44:03.461000', NULL, NULL),
(11, 'api::pertanyaan.pertanyaan.find', '2023-09-04 14:44:13.731000', '2023-09-04 14:44:13.731000', NULL, NULL),
(12, 'api::jenispertanyaan.jenispertanyaan.find', '2023-09-04 17:24:20.983000', '2023-09-04 17:24:20.983000', NULL, NULL),
(13, 'api::loading.loading.create', '2023-09-12 07:29:17.716000', '2023-09-12 07:29:17.716000', NULL, NULL),
(14, 'api::loading.loading.find', '2023-09-12 07:29:22.266000', '2023-09-12 07:29:22.266000', NULL, NULL),
(16, 'api::testing.testing.create', '2023-09-13 09:26:51.891000', '2023-09-13 09:26:51.891000', NULL, NULL),
(17, 'api::testing.testing.find', '2023-09-13 09:28:24.809000', '2023-09-13 09:28:24.809000', NULL, NULL),
(19, 'api::loading.loading.find', '2023-09-13 09:48:37.068000', '2023-09-13 09:48:37.068000', NULL, NULL),
(20, 'api::loading.loading.create', '2023-09-13 10:42:08.845000', '2023-09-13 10:42:08.845000', NULL, NULL),
(21, 'api::jenispertanyaan.jenispertanyaan.find', '2023-09-14 10:42:09.490000', '2023-09-14 10:42:09.490000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 2),
(5, 6, 2, 2),
(6, 7, 2, 2),
(7, 8, 2, 2),
(8, 9, 2, 2),
(9, 5, 2, 2),
(10, 10, 2, 3),
(11, 11, 2, 4),
(12, 12, 2, 5),
(13, 13, 2, 6),
(14, 14, 2, 7),
(16, 16, 1, 2),
(17, 17, 1, 3),
(19, 19, 1, 4),
(20, 20, 1, 5),
(21, 21, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-09-04 10:18:16.315000', '2023-09-14 10:42:09.484000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-09-04 10:18:16.320000', '2023-09-13 09:28:13.469000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nama`) VALUES
(1, 'satria', 'satriabae@gmail.com', 'local', '$2a$10$bocAcfjIZeDPBij2/eKzF.5tnM7blGWK3hkgmzPtfJuc7FcrkshSO', NULL, NULL, 1, 0, '2023-09-04 10:30:10.332000', '2023-09-13 09:27:03.399000', 1, 1, 'Satria Mulya'),
(2, 'viktor', 'viktor@bukitasam.id', 'local', '$2a$10$cmvmemjwAfPHzGynsRzPL.e9RTnp3c.1ehofUXk2bz/irgCzsmOaS', NULL, NULL, 1, 0, '2023-09-04 17:18:42.842000', '2023-09-13 09:09:17.155000', 1, 1, 'viktor hasibuan');

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(2, 2, 2, 1),
(3, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `jenispertanyaans`
--
ALTER TABLE `jenispertanyaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenispertanyaans_created_by_id_fk` (`created_by_id`),
  ADD KEY `jenispertanyaans_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `loadings`
--
ALTER TABLE `loadings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loadings_created_by_id_fk` (`created_by_id`),
  ADD KEY `loadings_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaans_created_by_id_fk` (`created_by_id`),
  ADD KEY `pertanyaans_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testings`
--
ALTER TABLE `testings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testings_created_by_id_fk` (`created_by_id`),
  ADD KEY `testings_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenispertanyaans`
--
ALTER TABLE `jenispertanyaans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loadings`
--
ALTER TABLE `loadings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testings`
--
ALTER TABLE `testings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `jenispertanyaans`
--
ALTER TABLE `jenispertanyaans`
  ADD CONSTRAINT `jenispertanyaans_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `jenispertanyaans_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `loadings`
--
ALTER TABLE `loadings`
  ADD CONSTRAINT `loadings_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `loadings_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  ADD CONSTRAINT `pertanyaans_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pertanyaans_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testings`
--
ALTER TABLE `testings`
  ADD CONSTRAINT `testings_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `testings_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
