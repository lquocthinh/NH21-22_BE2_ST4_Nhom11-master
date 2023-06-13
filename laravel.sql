-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2023 lúc 11:30 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `details`
--

CREATE TABLE `details` (
  `detail_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `details`
--

INSERT INTO `details` (`detail_id`, `product_id`, `payment_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, NULL, NULL),
(2, 2, 1, 1, NULL, NULL),
(3, 3, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manu_id` bigint(20) UNSIGNED NOT NULL,
  `manu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`manu_id`, `manu_name`, `created_at`, `updated_at`) VALUES
(1, 'Apple', NULL, NULL),
(2, 'Samsung', NULL, NULL),
(3, 'Oppo', NULL, NULL),
(4, 'Xiaomi', NULL, NULL),
(5, 'Realme', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_09_031932_create_products_table', 1),
(6, '2022_04_10_025548_create_manufacturers_table', 1),
(7, '2022_04_12_235741_create_payments_table', 1),
(8, '2022_04_13_000426_create_details_table', 1),
(9, '2022_05_05_124008_create_others_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `others`
--

CREATE TABLE `others` (
  `other_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `like` int(11) DEFAULT NULL,
  `submit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `others`
--

INSERT INTO `others` (`other_id`, `product_id`, `user_id`, `like`, `submit`, `star`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'Good!', 4, NULL, NULL),
(2, 1, 3, 1, 'Verry good!', 5, NULL, NULL),
(3, 2, 2, 0, 'Bad!', 3, NULL, NULL),
(4, 2, 3, 0, 'Verry bad!', 2, NULL, NULL),
(5, 19, 0, NULL, 'thinh#quocthinh16022002@gmail.com#jii#', 4, '2022-10-28 17:27:39', '2022-10-28 17:27:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '2022-03-04 17:00:00', NULL),
(2, 3, 5, '2022-01-20 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `manu_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `sale` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `manu_id`, `product_name`, `price`, `image`, `description`, `quantity`, `feature`, `sale`, `star`, `created_at`, `updated_at`) VALUES
(1, 1, 'iPhone 13 Pro Max', 32390000, 'iphone-13promax.jpg', 'Màn hình: OLED6.7\"Super Retina XDR#Hệ điều hành: iOS 15#Camera sau: 3 camera 12 MP#Camera trước: 12 MP#Chip: Apple A15 Bionic#RAM: 6 GB#Bộ nhớ trong: 128 GB#SIM:1 Nano SIM & 1 eSIM Hỗ trợ 5G#Pin, Sạc: 4352 mAh, 20 W', 5, 1, 0, 5, '2022-01-08 17:00:00', NULL),
(2, 1, 'iPhone 13 Pro', 29990000, 'iphone-13pro.jpg', 'Màn hình: OLED6.1\"Super Retina XDR#Hệ điều hành: iOS 15#Camera sau: 3 camera 12 MP#Camera trước: 12 MP#Chip: Apple A15 Bionic#RAM: 6 GB#Bộ nhớ trong: 256 GB#SIM:1 Nano SIM & 1 eSIM Hỗ trợ 5G#Pin, Sạc: 3095 mAh, 20 W', 5, 1, 5, 4, '2021-02-08 17:00:00', NULL),
(3, 1, 'iPhone 13', 22790000, 'iphone-13.jpg', 'Màn hình: OLED6.1\"Super Retina XDR#Hệ điều hành: iOS 15#Camera sau: 3 camera 12 MP#Camera trước: 12 MP#Chip: Apple A15 Bionic#RAM: 6 GB#Bộ nhớ trong: 128 GB#SIM:1 Nano SIM & 1 eSIM Hỗ trợ 5G#Pin, Sạc: 3240 mAh, 20 W', 10, 1, 5, 3, '2021-03-08 17:00:00', NULL),
(4, 1, 'iPhone 12 Pro Max', 29990000, 'iphone-12promax.jpg', 'Màn hình: OLED6.7\"Super Retina XDR#Hệ điều hành: iOS 15#Camera sau: 3 camera 12 MP#Camera trước: 12 MP#Chip: Apple A14 Bionic#RAM: 6 GB#Bộ nhớ trong: 256 GB#SIM:1 Nano SIM & 1 eSIM Hỗ trợ 5G#Pin, Sạc: 3687 mAh, 20 W', 15, 1, 10, 3, '2020-04-18 17:00:00', NULL),
(5, 1, 'iPhone 12 Pro', 26290000, 'iphone-12pro.jpg', 'Màn hình: OLED6.1\"Super Retina XDR#Hệ điều hành: iOS 15#Camera sau: 3 camera 12 MP#Camera trước: 12 MP#Chip: Apple A14 Bionic#RAM: 6 GB#Bộ nhớ trong: 256 GB#SIM:1 Nano SIM & 1 eSIM Hỗ trợ 5G#Pin, Sạc: 2815 mAh, 20 W', 20, 1, 15, 3, '2020-05-08 17:00:00', NULL),
(6, 2, 'Samsung Galaxy S22 Ultra', 30990000, 'samsung-galaxys22ultra.jpg', 'Màn hình: Dynamic AMOLED 2X6.8\"Quad HD+ (2K+)#Hệ điều hành: Android 12#Camera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP#Camera trước: 40 MP#Chip: Snapdragon 8 Gen 1 8 nhân#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G#Pin, Sạc: 5000 mAh, 45 W', 5, 1, 0, 5, '2021-06-08 17:00:00', NULL),
(7, 2, 'Samsung Galaxy S21 Ultra', 25990000, 'samsung-galaxys21ultra.jpg', 'Màn hình: Dynamic AMOLED 2X6.8\"Quad HD+ (2K+)#Hệ điều hành: Android 11#Camera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP#Camera trước: 40 MP#Chip: Exynos 2100#RAM: 12 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G#Pin, Sạc: 5000 mAh, 25 W', 10, 1, 5, 4, '2021-07-18 17:00:00', NULL),
(8, 2, 'Samsung Galaxy Z Flip3', 19990000, 'samsung-galaxyzflip3.jpg', 'Màn hình: Dynamic AMOLED 2X6.8\"Quad HD+ (2K+)#Hệ điều hành: Android 11#Camera sau: 2 camera 12 MP#Camera trước: 10 MP#Chip: Snapdragon 888#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G#Pin, Sạc: 3300 mAh, 15 W', 10, 1, 5, 3, '2020-01-18 17:00:00', NULL),
(9, 2, 'Samsung Galaxy Z Fold3', 36990000, 'samsung-galaxyzfold3.jpg', 'Màn hình: Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+#Hệ điều hành: Android 11#Camera sau: 3 camera 12 MP#Camera trước: 10 MP & 4 MP#Chip: Snapdragon 888#RAM: 12 GB#Bộ nhớ trong: 256 GB#SIM: 2 Nano SIM + 1 eSIM Hỗ trợ 5G#Pin, Sạc: 4400 mAh, 25 W', 5, 1, 10, 3, '2021-03-07 17:00:00', NULL),
(10, 2, 'Samsung Galaxy S22+', 25990000, 'samsung-galaxys22plus.jpg', 'Màn hình: Dynamic AMOLED 2X6.6\"Full HD+#Hệ điều hành: Android 12#Camera sau: Chính 50 MP & Phụ 12 MP, 10 MP#Camera trước: 10 MP#Chip: Snapdragon 8 Gen 1 8 nhân#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G#Pin, Sạc: 4500 mAh,45 W', 15, 1, 15, 3, '2022-01-31 17:00:00', NULL),
(11, 3, 'OPPO Reno7 Z', 10490000, 'oppo-reno7.jpg', 'Màn hình: AMOLED6.43\"Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 64 MP & Phụ 2 MP, 2 MP#Camera trước: 16 MP#Chip: Snapdragon 695 5G 8 nhân#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM (SIM 2 chung khe thẻ nhớ) Hỗ trợ 5G#Pin, Sạc: 4500 mAh, 33 W', 15, 1, 0, 5, '2021-12-08 17:00:00', NULL),
(12, 3, 'OPPO Reno6', 11990000, 'oppo-reno6.jpg', 'Màn hình: AMOLED6.43\"Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 64 MP & Phụ 8 MP, 2 MP#Camera trước: 32 MP#Chip: MediaTek Dimensity 900 5G#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 5G#Pin, Sạc: 4300 mAh, 65 W', 5, 1, 5, 4, '2021-05-09 17:00:00', NULL),
(13, 3, 'OPPO Reno5', 8990000, 'oppo-reno5.jpg', 'Màn hình: AMOLED6.43\"Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP#Camera trước: 32 MP#Chip: Snapdragon 765G#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 5G#Pin, Sạc: 4300 mAh, 65 W', 5, 1, 5, 3, '2019-04-08 17:00:00', NULL),
(14, 3, 'OPPO A16', 3990000, 'oppo-a16.jpg', 'Màn hình: IPS LCD 6.52\" HD+#Hệ điều hành: Android 11#Camera sau: Chính 13 MP & Phụ 2 MP, 2 MP#Camera trước: 8 MP#Chip: MediaTek Helio G35#RAM: 3 GB#Bộ nhớ trong: 32 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 10 W', 5, 0, 10, 3, '2021-08-08 17:00:00', NULL),
(15, 3, 'OPPO A15s', 4290000, 'oppo-a15s.jpg', 'Màn hình: IPS LCD 6.52\" HD+#Hệ điều hành: Android 11#Camera sau: Chính 13 MP & Phụ 2 MP, 2 MP#Camera trước: 8 MP#Chip: MediaTek Helio P35#RAM: 4 GB#Bộ nhớ trong: 64 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 4230 mAh, 10 W', 10, 0, 15, 3, '2020-07-08 17:00:00', NULL),
(16, 4, 'Xiaomi Redmi 9A', 2490000, 'xiaomi-redmi9a.jpg', 'Màn hình: IPS LCD 6.53\" HD+#Hệ điều hành: Android 10#Camera sau: 13 MP#Camera trước: 5 MP#Chip: MediaTek Helio G25#RAM: 2 GB#Bộ nhớ trong: 32 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 10 W', 20, 1, 0, 5, '2021-09-08 17:00:00', NULL),
(17, 4, 'Xiaomi Redmi 10', 4290000, 'xiaomi-redmi10.jpg', 'Màn hình: IPS LCD 6.5\" Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 50 MP & Phụ 8 MP, 2 MP, 2 MP#Camera trước: 8 MP#Chip: MediaTek Helio G88 8 nhân#RAM: 4 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 18 W', 15, 1, 5, 4, '2021-10-08 17:00:00', NULL),
(18, 4, 'Xiaomi Mi 11 Lite', 7990000, 'xiaomi-mi11.jpg', 'Màn hình: AMOLED 6.55\" Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 64 MP & Phụ 8 MP, 5 MP#Camera trước: 16 MP#Chip: Snapdragon 732G#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 4250 mAh, 33 W', 10, 1, 5, 3, '2022-02-21 17:00:00', NULL),
(19, 4, 'Xiaomi Redmi Note 10S', 6490000, 'xiaomi-redmi10s.jpg', 'Màn hình: AMOLED 6.43\" Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 64 MP & Phụ 8 MP, 2 MP, 2MP#Camera trước: 13 MP#Chip: MediaTek Helio G95#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 33 W', 10, 1, 10, 3, '2022-02-21 17:00:00', NULL),
(20, 4, 'Xiaomi Redmi Note 10S 6GB', 5990000, 'xiaomi-redmi10s6gb.jpg', 'Màn hình: AMOLED 6.43\" Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 64 MP & Phụ 8 MP, 2 MP, 2MP#Camera trước: 13 MP#Chip: MediaTek Helio G95#RAM: 6 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 33 W', 10, 1, 15, 3, '2020-02-23 17:00:00', NULL),
(21, 5, 'Realme C35', 3990000, 'realme-c35.jpg', 'Màn hình: IPS LCD 6.6\" Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 50 MP & Phụ 2 MP, 0.3 MP#Camera trước: 8 MP#Chip: Unisoc T616 8 nhân#RAM: 4 GB#Bộ nhớ trong: 64 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 18 W', 5, 1, 0, 5, '2021-03-21 17:00:00', NULL),
(22, 5, 'Realme 7 Pro', 8990000, 'realme-7pro.jpg', 'Màn hình: Super AMOLED 6.4\" Full HD+#Hệ điều hành: Android 11#Camera sau: Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP#Camera trước: 32 MP#Chip: Snapdragon 720G#RAM: 8 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 4500 mAh, 65 W', 8, 1, 5, 4, '2021-11-18 17:00:00', NULL),
(23, 5, 'Realme C25Y', 4690000, 'realme-c27y.jpg', 'Màn hình: IPS LCD 6.5\" HD+#Hệ điều hành: Android 11#Camera sau: Chính 50 MP & Phụ 2 MP, 2 MP#Camera trước: 8 MP#Chip: Unisoc T618 8 nhân#RAM: 4 GB#Bộ nhớ trong: 64 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 18 W', 9, 1, 5, 3, '2020-12-31 17:00:00', NULL),
(24, 5, 'Realme C25 series', 4690000, 'realme-c25.jpg', 'Màn hình: IPS LCD 6.5\" HD+#Hệ điều hành: Android 11#Camera sau: Chính 48 MP & Phụ 2 MP, 2 MP#Camera trước: 8 MP#Chip: MediaTek Helio G70#RAM: 4 GB#Bộ nhớ trong: 128 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 6000 mAh, 18 W', 10, 0, 10, 3, '2022-04-15 17:00:00', NULL),
(25, 5, 'Realme C11', 2990000, 'realme-c11.jpg', 'Màn hình: IPS LCD, 6.5\", HD+#Hệ điều hành: Android 11#Camera sau: 8 MP#Camera trước: 5 MP#Chip: Spreadtrum SC9863A#RAM: 2 GB#Bộ nhớ trong: 32 GB#SIM: 2 Nano SIM Hỗ trợ 4G#Pin, Sạc: 5000 mAh, 10 W', 5, 1, 15, 3, '2021-11-01 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$h7wBdFEVnp8B85BH3IwYguUeCO7eUq8tx9j/Z2YSehn56/ujLHyxK', NULL, '1', NULL, NULL),
(2, 'user1', 'user1@gmail.com', NULL, '$2y$10$icUm7sfS9rjlxPRA2qWv6emqva5RPdaQg966tmcjGd.EjHN50/eNK', NULL, '0', NULL, NULL),
(3, 'user2', 'user2@gmail.com', NULL, '$2y$10$gKCIkXdvj0sXqdeDbugrd.KGFvtZMXznmphyYdu7kyfEFfnR3G/eK', NULL, '0', NULL, NULL),
(4, 'user3', 'user3@gmail.com', NULL, '$2y$10$O5uJIAPMX.T9c.qbWHmalOIoS.9leegz1SLv7I9mCLUr1uXKhqlhG', NULL, '0', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`other_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `details`
--
ALTER TABLE `details`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `others`
--
ALTER TABLE `others`
  MODIFY `other_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
