-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 02:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-02-28 04:52:21.310185'),
(2, 'auth', '0001_initial', '2026-02-28 04:52:22.869472'),
(3, 'admin', '0001_initial', '2026-02-28 04:52:23.187116'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-02-28 04:52:23.213201'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-02-28 04:52:23.228758'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-02-28 04:52:23.356836'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-02-28 04:52:23.507245'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-02-28 04:52:23.591369'),
(9, 'auth', '0004_alter_user_username_opts', '2026-02-28 04:52:23.617754'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-02-28 04:52:23.735289'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-02-28 04:52:23.744471'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-02-28 04:52:23.763772'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-02-28 04:52:23.796013'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-02-28 04:52:23.831098'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-02-28 04:52:23.869213'),
(16, 'auth', '0011_update_proxy_permissions', '2026-02-28 04:52:23.889158'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-02-28 04:52:23.919479'),
(18, 'sessions', '0001_initial', '2026-02-28 04:52:24.001004');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_27_061415_create_personal_access_tokens_table', 1),
(5, '2026_02_27_061543_add_role_to_users_table', 2),
(6, '2026_02_27_061621_create_projects_table', 3),
(7, '2026_02_27_061656_create_tasks_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api', '768982a77516dd2002ebcf922936e93514d9f45fcaeb5081863289026f2be165', '[\"*\"]', '2026-02-27 03:28:12', NULL, '2026-02-27 03:24:25', '2026-02-27 03:28:12'),
(2, 'App\\Models\\User', 1, 'api', 'fd19ce609ea607f2a04805933816e49223c563a2dd7f6f6cca90f500039bc588', '[\"*\"]', '2026-02-27 08:06:51', NULL, '2026-02-27 03:30:17', '2026-02-27 08:06:51'),
(3, 'App\\Models\\User', 2, 'api', 'e7ad9ec842e779343bed585b3cfdebffbd90bd39a02e3968a9187c921754888c', '[\"*\"]', '2026-02-27 03:52:37', NULL, '2026-02-27 03:40:01', '2026-02-27 03:52:37'),
(4, 'App\\Models\\User', 1, 'api', '3efb79a085a38a00e56f53cc1f560a3b8844b2daf5cbcb6b72d54f7a8f33f3a1', '[\"*\"]', '2026-02-27 08:17:41', NULL, '2026-02-27 07:53:38', '2026-02-27 08:17:41'),
(5, 'App\\Models\\User', 1, 'api', 'bda3e28de2964b0e3dfc4c1c12f0099bb26b8a80baf1f6993fefccc18e74e8a4', '[\"*\"]', '2026-02-27 10:11:45', NULL, '2026-02-27 07:57:59', '2026-02-27 10:11:45'),
(6, 'App\\Models\\User', 1, 'api', 'a155a932dffdbf546db00e81d8642de2da599d53f9e936d7c52bb04106ead0bb', '[\"*\"]', '2026-02-27 10:22:57', NULL, '2026-02-27 10:11:58', '2026-02-27 10:22:57'),
(7, 'App\\Models\\User', 1, 'api', 'f875dfa1f482ddee2ae23e499a3b6141548e210126d87d8d9490b8aa863ad62e', '[\"*\"]', '2026-02-27 10:31:21', NULL, '2026-02-27 10:23:00', '2026-02-27 10:31:21'),
(8, 'App\\Models\\User', 2, 'api', '6a43d94dbf8399d1a38dcb57d56f4c8d82ffde0d1e942e19084815c38460e888', '[\"*\"]', '2026-02-27 10:37:39', NULL, '2026-02-27 10:31:30', '2026-02-27 10:37:39'),
(9, 'App\\Models\\User', 1, 'api', '636a2d5554ab307b84907559a51944268cb529545dc909ab11f3cdc2655e0deb', '[\"*\"]', '2026-02-27 22:31:07', NULL, '2026-02-27 10:37:48', '2026-02-27 22:31:07'),
(10, 'App\\Models\\User', 1, 'api', '4a8e15ef0244adeb3c110e6f648676d4dc69ada550cc5e7d14d1fcf50e3756d9', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:10', '2026-02-27 22:31:10'),
(11, 'App\\Models\\User', 1, 'api', '8a184287324fdc2825b8972d7452c94c1670758bca5c8bc8976ffeb366c39305', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:11', '2026-02-27 22:31:11'),
(12, 'App\\Models\\User', 1, 'api', '7abbd3e81d51cbfcc850448e6187d88b9ce393a0e3eadb37a7096d0032223aaa', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:12', '2026-02-27 22:31:12'),
(13, 'App\\Models\\User', 1, 'api', '36776beb7e4ec3dee4864c3b84781b5a6d6d22c007620b6946c52ccee20ddd53', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:14', '2026-02-27 22:31:14'),
(14, 'App\\Models\\User', 1, 'api', '5dbff5dcca01596c044d64e8b323cbe6d8d111967143f66aa0fc42bc21e572b1', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:18', '2026-02-27 22:31:18'),
(15, 'App\\Models\\User', 1, 'api', 'dc7e5e694eb0c5172752600bf245cf6003b3bad5eee96f012281b45935696ad0', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:19', '2026-02-27 22:31:19'),
(16, 'App\\Models\\User', 1, 'api', '1f81ad1e6b8fd03a201f694ed553a5d1574ec0312df40a047043506c40b0973d', '[\"*\"]', '2026-02-27 22:31:43', NULL, '2026-02-27 22:31:21', '2026-02-27 22:31:43'),
(17, 'App\\Models\\User', 1, 'api', 'f261ee21414fad5469d71f2dba83ea70d2971bef30fc04323e14ef8b3f4af32f', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:22', '2026-02-27 22:31:22'),
(18, 'App\\Models\\User', 1, 'api', '05ff3b9a9fffe73fda751acb71ba5517f9cfe6148572929a06083c6d37ec3f6b', '[\"*\"]', NULL, NULL, '2026-02-27 22:31:23', '2026-02-27 22:31:23'),
(19, 'App\\Models\\User', 1, 'api', '861fa6f93fb89353ffa170bc6ac6aa55c4dcedd84c6376372d6ceb8fb3507a25', '[\"*\"]', '2026-02-27 22:33:00', NULL, '2026-02-27 22:32:02', '2026-02-27 22:33:00'),
(20, 'App\\Models\\User', 2, 'api', '8e07fced8d64cb62efd417d21935f6056a9c349d82eb28e214d9d53f482a0825', '[\"*\"]', '2026-02-27 22:34:02', NULL, '2026-02-27 22:33:15', '2026-02-27 22:34:02'),
(21, 'App\\Models\\User', 2, 'api', 'bb69406ea4000e1ffb523c500f23d70f03ed83a720b2aed44ee3a0a10b4f6867', '[\"*\"]', '2026-02-27 23:27:04', NULL, '2026-02-27 23:26:59', '2026-02-27 23:27:04'),
(22, 'App\\Models\\User', 2, 'api', '420511ed95e3f8f6d793704c7d918d7150d74267148973f2acd9086d59ee31d5', '[\"*\"]', '2026-02-28 00:03:03', NULL, '2026-02-27 23:59:39', '2026-02-28 00:03:03'),
(23, 'App\\Models\\User', 1, 'api', 'cb3cf13270ba2cfd948a98e256e53dbf2bc150a3d43dd648e79909af34b601e1', '[\"*\"]', '2026-02-28 00:03:40', NULL, '2026-02-28 00:03:08', '2026-02-28 00:03:40'),
(24, 'App\\Models\\User', 2, 'api', 'd2f9c665bfa7da16b8613541913e96453881d763ac1db3e6180976abe1650240', '[\"*\"]', '2026-02-28 00:04:04', NULL, '2026-02-28 00:03:44', '2026-02-28 00:04:04'),
(25, 'App\\Models\\User', 2, 'api', '3748f2212e4b12732759b6165280af07fc65b795b5c52522f4dae1aae2c1cf2b', '[\"*\"]', '2026-02-28 00:04:30', NULL, '2026-02-28 00:04:15', '2026-02-28 00:04:30'),
(26, 'App\\Models\\User', 1, 'api', '8aca23eda9ff456cd7e9d6908be716ac5d0b25d1e8ff543cfe875f862edd6cf6', '[\"*\"]', '2026-02-28 00:05:18', NULL, '2026-02-28 00:04:50', '2026-02-28 00:05:18'),
(27, 'App\\Models\\User', 2, 'api', 'b359d12cd4a6876be0faca2b9df75f3bfccb2c33db65ca6cfd5eca7380d28b5d', '[\"*\"]', '2026-02-28 00:06:11', NULL, '2026-02-28 00:05:36', '2026-02-28 00:06:11'),
(28, 'App\\Models\\User', 1, 'api', '808d3deebf822ebbde56e0d2d188c11a8c37521871b44bf2e9b7973ff5a3e263', '[\"*\"]', '2026-02-28 00:06:56', NULL, '2026-02-28 00:06:14', '2026-02-28 00:06:56'),
(29, 'App\\Models\\User', 2, 'api', '003435f1b3278db5410dd1ebb60791bb085686df6e14283c9819c60e6c1ca28b', '[\"*\"]', '2026-02-28 00:22:52', NULL, '2026-02-28 00:07:00', '2026-02-28 00:22:52'),
(30, 'App\\Models\\User', 1, 'api', 'c8fa5fb0acd4a3d13d9b72d4072331602a405deb0c7f33818853feefa348c10a', '[\"*\"]', '2026-02-28 00:19:54', NULL, '2026-02-28 00:19:38', '2026-02-28 00:19:54'),
(31, 'App\\Models\\User', 1, 'api', '1e9d3306e0d996cc88d9fff656d0f6be425dca67029844138139044e3f173c1b', '[\"*\"]', '2026-02-28 00:23:33', NULL, '2026-02-28 00:22:58', '2026-02-28 00:23:33'),
(32, 'App\\Models\\User', 2, 'api', '7b728bac19d92a4633dc47040f1998459b741a699d0d0a94bf8d442aeb5d383a', '[\"*\"]', '2026-03-01 02:06:16', NULL, '2026-02-28 00:23:37', '2026-03-01 02:06:16'),
(33, 'App\\Models\\User', 1, 'api', '3238fe74daeee96a896f4ee5ceb103b99d96ac55dd9e44bed1f4bf3cff9d2c2f', '[\"*\"]', '2026-02-28 00:59:49', NULL, '2026-02-28 00:54:10', '2026-02-28 00:59:49'),
(34, 'App\\Models\\User', 1, 'api', '1822c1e49279474f06df6f4b89a168cd9a351efa11a33157980646ad022dcfa8', '[\"*\"]', NULL, NULL, '2026-02-28 01:05:06', '2026-02-28 01:05:06'),
(35, 'App\\Models\\User', 1, 'api', 'ec31d8989cd93730a545849cff579ceb43fc5cc82088277b0f485839ffb60502', '[\"*\"]', '2026-02-28 01:06:08', NULL, '2026-02-28 01:05:40', '2026-02-28 01:06:08'),
(36, 'App\\Models\\User', 1, 'api', '6a6afac5efe9885340f53626da0c9f700b900e882f638c01f1f16c25ba1b0269', '[\"*\"]', NULL, NULL, '2026-03-01 02:02:11', '2026-03-01 02:02:11'),
(37, 'App\\Models\\User', 1, 'api', 'b7379a43519199273f6b8ff51eb2553cbeb98347e0753e7201479326f72019a0', '[\"*\"]', '2026-03-01 02:03:31', NULL, '2026-03-01 02:02:55', '2026-03-01 02:03:31'),
(38, 'App\\Models\\User', 1, 'api', '73b2851ed3d92c7fe88e2202ebb3bc7ae47bb8757042bc1cc1b5c9f6867661d6', '[\"*\"]', '2026-03-01 02:51:38', NULL, '2026-03-01 02:06:25', '2026-03-01 02:51:38'),
(39, 'App\\Models\\User', 1, 'api', '55373583930ae070ba860bbab9423bccc64c1e4a724b5c267865829ec9d0bb77', '[\"*\"]', '2026-03-01 02:42:01', NULL, '2026-03-01 02:34:31', '2026-03-01 02:42:01'),
(40, 'App\\Models\\User', 1, 'api', 'ba5e7dcf512690db1057e2e638bb9de65ffeff6c63793995b453f5d1043e45e5', '[\"*\"]', '2026-03-01 02:55:00', NULL, '2026-03-01 02:53:14', '2026-03-01 02:55:00'),
(41, 'App\\Models\\User', 1, 'api', '05371a474165305fc3b6f53b7ae9bcfa1f1fbbaff872b77fdfda5d5dba0ebbd8', '[\"*\"]', '2026-03-01 02:56:08', NULL, '2026-03-01 02:56:01', '2026-03-01 02:56:08'),
(42, 'App\\Models\\User', 1, 'api', '2148d15e31d96c8330eea15a857e2b8f6c3ae74ae7e1edb920aa90eb5ed48807', '[\"*\"]', '2026-03-01 02:59:15', NULL, '2026-03-01 02:57:17', '2026-03-01 02:59:15'),
(43, 'App\\Models\\User', 2, 'api', '0b64339ac86066de962852643bc8822d94dfcd30fe06679a47948f28f883f567', '[\"*\"]', '2026-03-01 03:01:36', NULL, '2026-03-01 03:00:43', '2026-03-01 03:01:36'),
(44, 'App\\Models\\User', 1, 'api', '633fe1f2cd3232b5b0aa418f5834275daf720cc9fe7199e984aa07668cdbf665', '[\"*\"]', '2026-03-01 03:02:21', NULL, '2026-03-01 03:01:43', '2026-03-01 03:02:21'),
(45, 'App\\Models\\User', 1, 'api', '6e2c55250ab42680f13b69dc2b0b2da57fb532c6e5f86c52a40b5729aa75a24d', '[\"*\"]', '2026-03-01 03:02:29', NULL, '2026-03-01 03:02:25', '2026-03-01 03:02:29'),
(46, 'App\\Models\\User', 1, 'api', 'e798a1f515aa4881b3b4d8abbfc7ca1f236af582f383a89ec15efc2e6865a056', '[\"*\"]', '2026-03-01 03:07:02', NULL, '2026-03-01 03:02:40', '2026-03-01 03:07:02'),
(47, 'App\\Models\\User', 2, 'api', 'caa1013985cd25806f6098bf6c57f20ec36895d344ad41a169f92ac7e905080a', '[\"*\"]', '2026-03-01 03:08:30', NULL, '2026-03-01 03:07:45', '2026-03-01 03:08:30'),
(48, 'App\\Models\\User', 1, 'api', 'dbcddd1004aeb0c118cec676aa95dd373558def9bf8cfc3665ce9c0a7f808229', '[\"*\"]', '2026-03-01 03:08:40', NULL, '2026-03-01 03:08:36', '2026-03-01 03:08:40'),
(49, 'App\\Models\\User', 1, 'api', '1185ea6a3691c2b90dd1f45d7aabc1a6bc8407e53598a474ad356043cce0fd56', '[\"*\"]', NULL, NULL, '2026-03-01 03:09:55', '2026-03-01 03:09:55'),
(50, 'App\\Models\\User', 1, 'api', 'bf45c221949cb18df2cbffc5d12c61a0ad80ea2654a1cc27531324382ccfe4f0', '[\"*\"]', '2026-03-01 03:18:51', NULL, '2026-03-01 03:11:40', '2026-03-01 03:18:51'),
(51, 'App\\Models\\User', 2, 'api', '50de39b8b530aff34beda98fbebf3e9c10cac97863ccc21dfed5611e7226e517', '[\"*\"]', '2026-03-01 03:19:04', NULL, '2026-03-01 03:18:57', '2026-03-01 03:19:04'),
(52, 'App\\Models\\User', 1, 'api', '51d0463462ff2c6f6e45f1d60e879273a54ab251c5a477255385c750868a0d91', '[\"*\"]', '2026-03-01 07:57:01', NULL, '2026-03-01 07:56:40', '2026-03-01 07:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Website Development', 'Task Manager Project', '2026-02-27 00:56:41', '2026-02-27 00:56:41'),
(2, 'Task Management System', 'Admin created project', '2026-02-27 03:30:43', '2026-02-27 03:30:43'),
(3, 'Task Management System', 'Admin created project', '2026-02-27 08:06:51', '2026-02-27 08:06:51'),
(4, 'New Website', 'Client project', '2026-02-28 00:57:47', '2026-02-28 00:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ht7SYoZzxKFJnHBm7lG7ctwLRDdHoD80tzKGWaUN', NULL, '127.0.0.1', 'PostmanRuntime/7.49.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjZTWlBkRUMzY0hzOWRIR1RGTzlETTI4U3Q2VGRGU05TQWFLQm45NCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1772184083),
('waF1BDBdeZ483LsOGzxTgBqOtdQ7P2pykQ1OxUmv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzhwQTJCMmZTZnFNMzB3NGFiVlJLYlpBMjhSN29jd2pCS0lhVmJvSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1772256513);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('PENDING','IN_PROGRESS','DONE','OVERDUE') NOT NULL DEFAULT 'PENDING',
  `priority` enum('LOW','MEDIUM','HIGH') NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `user_id`, `title`, `status`, `priority`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Create Login API', 'OVERDUE', 'HIGH', '2026-02-20', '2026-02-27 00:58:06', '2026-03-01 02:42:01'),
(2, 2, 2, 'Create Login API', 'DONE', 'HIGH', '2026-02-28', '2026-02-27 03:35:13', '2026-02-27 22:34:01'),
(3, 2, 2, 'Create Login API', 'DONE', 'HIGH', '2026-02-28', '2026-02-27 03:36:35', '2026-02-27 10:31:52'),
(4, 2, 2, 'Create Login API', 'OVERDUE', 'HIGH', '2026-02-28', '2026-02-27 03:46:31', '2026-02-27 03:46:31'),
(5, 2, 2, 'Create Login API', 'OVERDUE', 'HIGH', '2026-02-28', '2026-02-27 03:46:35', '2026-02-27 03:46:35'),
(6, 3, 1, 'web page', 'IN_PROGRESS', 'MEDIUM', '2026-03-04', '2026-02-27 10:30:38', '2026-02-27 10:30:50'),
(7, 3, 1, 'filament project', 'PENDING', 'HIGH', '2026-03-02', '2026-02-27 22:32:57', '2026-02-27 22:32:57'),
(8, 1, 1, 'backend process', 'PENDING', 'MEDIUM', '2026-03-04', '2026-02-28 00:03:30', '2026-02-28 00:03:30'),
(9, 2, 1, 'bakend task11', 'PENDING', 'HIGH', '2026-03-05', '2026-02-28 00:06:48', '2026-02-28 00:06:48'),
(10, 1, 2, 'dtabase task', 'PENDING', 'MEDIUM', '2026-03-04', '2026-02-28 00:23:24', '2026-02-28 00:23:24'),
(11, 1, 2, 'Create Login API', 'PENDING', 'HIGH', '2026-03-01', '2026-02-28 00:59:49', '2026-02-28 00:59:49'),
(12, 4, 2, 'salman', 'IN_PROGRESS', 'MEDIUM', '2026-03-04', '2026-03-01 03:03:39', '2026-03-01 03:04:47'),
(13, 1, 2, 'web page', 'PENDING', 'MEDIUM', '2026-03-26', '2026-03-01 03:18:40', '2026-03-01 03:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@test.com', NULL, '$2y$12$aOC.UeuCGk4Fc8vuRMxjg.pCSRBnxfxJz12AsP1uc8BZJ1Z7NaZuS', NULL, '2026-02-27 00:51:24', '2026-02-27 03:29:46', 'admin'),
(2, 'User', 'user@test.com', NULL, '$2y$12$FubXHNBkYwo80LYEoyrD5u4Zd0udEHJCmWDz4mEKFs3tZvZikwLcy', NULL, '2026-02-27 00:51:25', '2026-02-27 00:51:25', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
