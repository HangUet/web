-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 13, 2017 lúc 08:59 AM
-- Phiên bản máy phục vụ: 5.7.19
-- Phiên bản PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUser` int(11) UNSIGNED NOT NULL,
  `idAlbumf` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `albums`
--

INSERT INTO `albums` (`id`, `title`, `idUser`, `idAlbumf`, `created_at`, `updated_at`) VALUES
(14, '123', 1, 0, '2017-10-11 01:11:54', '2017-10-11 01:11:54'),
(27, '1234', 1, 0, '2017-10-11 23:12:15', '2017-10-11 23:12:15'),
(28, 'Cường', 1, 0, '2017-10-12 00:16:40', '2017-10-12 00:16:40'),
(29, 'Dương', 1, 28, '2017-10-12 00:20:28', '2017-10-12 00:20:28'),
(32, 'Nha', 1, 28, '2017-10-12 01:44:30', '2017-10-12 01:44:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(11) UNSIGNED NOT NULL,
  `idImg` int(11) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `idUser`, `idImg`, `content`, `created_at`, `updated_at`) VALUES
(9, 1, 11, '1', '2017-10-12 18:25:43', '2017-10-12 18:25:43'),
(12, 1, 11, '5', '2017-10-12 18:25:55', '2017-10-12 18:25:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idAlbum` int(11) UNSIGNED NOT NULL,
  `idUser` int(11) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `title`, `content`, `idAlbum`, `idUser`, `img`, `created_at`, `updated_at`) VALUES
(7, NULL, NULL, 14, 1, '1W64_1.jpg', '2017-10-11 22:51:08', '2017-10-11 22:51:08'),
(8, NULL, NULL, 27, 1, 'z0Jk_2.jpg', '2017-10-11 23:13:14', '2017-10-11 23:13:14'),
(10, NULL, NULL, 29, 1, 'uNZa_2.jpg', '2017-10-12 00:26:38', '2017-10-12 00:26:38'),
(11, NULL, NULL, 27, 1, 'CYMJ_6.jpg', '2017-10-12 02:26:24', '2017-10-12 02:26:24'),
(12, NULL, NULL, 32, 1, 'aa82_qrcode.jpeg', '2017-10-13 01:51:52', '2017-10-13 01:51:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_21_041032_create_albums_table', 1),
(4, '2017_09_21_041253_create_images_table', 1),
(5, '2017_09_21_041602_create_comments_table', 1),
(6, '2017_09_21_041633_create_tags_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `idImg` int(11) UNSIGNED NOT NULL,
  `idUser` int(11) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `idImg`, `idUser`, `content`, `created_at`, `updated_at`) VALUES
(4, 11, 1, '1', '2017-10-12 18:25:16', '2017-10-12 18:25:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lv` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `lv`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cuong', 'osi19972@gmail.com', '$2y$10$V2ZSaut9L/fxYA2DPFIh8eR5YI8h/duAn..RY7VmeNZagyLm/hQQu', 1, '9SDUQ0ADCNQCKu7dcGHe5KdYnYwfMxvJpdHs1Vpw6XQRnEyLGNlNjMvfefHr', '2017-09-21 09:48:16', '2017-09-21 09:48:16'),
(2, 'duong', 'nameless2972@gmail.com', '$2y$10$8z6HZrEi8/x7BAZewgr/4euwoQZ23RZBmyRd.V8ADasUp7LaP7q7K', 0, 'wfe0q8xu6coML5QNaELP7MoBWM4vT0cROwIJp7ubgx8H0cPrgtMhSaitaQMw', '2017-09-22 07:49:59', '2017-09-22 07:49:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_album_user` (`idUser`),
  ADD KEY `fk_album_album` (`idAlbumf`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_user` (`idUser`),
  ADD KEY `fk_comment_image` (`idImg`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_image_album` (`idAlbum`),
  ADD KEY `fk_image_user` (`idUser`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_img_content` (`content`,`idImg`) USING HASH,
  ADD KEY `fk_tag_user` (`idUser`),
  ADD KEY `fk_tag_image` (`idImg`);

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
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `fk_album_user` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comment_image` FOREIGN KEY (`idImg`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_image_album` FOREIGN KEY (`idAlbum`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `fk_image_user` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_tag_image` FOREIGN KEY (`idImg`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_tag_user` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
