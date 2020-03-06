-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 11:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 duoc hien thi, 0 ko hien thi',
  `slug` varchar(50) NOT NULL COMMENT 'link to post',
  `sort` int(11) NOT NULL COMMENT 'sort theo thu tu mong muon',
  `modified` datetime NOT NULL,
  `user_created` int(11) NOT NULL,
  `user_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parent_id`, `created`, `status`, `slug`, `sort`, `modified`, `user_created`, `user_modified`) VALUES
(1, 'XÃ HỘI', 'news', 0, '0000-00-00 00:00:00', 1, 'dfas', 1, '2020-03-03 07:43:08', 1, 1),
(2, 'THẾ GIỚI', 'mục pháp luật', 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(3, 'VĂN HÓA', 'mục thế giới', 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(4, 'KINH TẾ', '', 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(5, 'GIÁO DỤC', '', 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(6, 'THỂ THAO', NULL, 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(7, 'GIẢI TRÍ', NULL, 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(8, 'PHÁP LUẬT', NULL, 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(9, 'CÔNG NGHỆ', NULL, 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(11, 'KHOA HỌC', NULL, 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(12, 'XE CỘ', NULL, 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(13, 'NHÀ ĐẤT', NULL, 0, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(14, 'THỜI SỰ', NULL, 1, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(15, 'GIAO THÔNG', NULL, 1, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(16, 'MÔI TRƯỜNG - KHÍ HẬU', NULL, 1, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(17, 'NGHỆ THUẬT', NULL, 3, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(18, 'ẨM THỰC', NULL, 3, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(19, 'DU LỊCH', NULL, 3, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(20, 'LAO ĐỘNG - VIỆC LÀM', NULL, 4, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(21, 'TÀI CHÍNH', NULL, 4, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(22, 'CHỨNG KHOÁN', NULL, 4, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(23, 'KINH DOANH', NULL, 4, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(24, 'HỌC BỔNG - DU HỌC', NULL, 5, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(25, 'ĐÀO TẠO - THI CỬ', NULL, 5, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(26, 'BÓNG ĐÁ QUỐC TẾ ', NULL, 6, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(27, 'BÓNG ĐÁ VIỆT NAM', NULL, 6, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(28, 'QUẦN VỢT', NULL, 6, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(29, 'ÂM NHẠC', NULL, 7, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(30, 'THỜI TRANG', NULL, 7, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(31, 'ĐIỆN ẢNH - TRUYỀN HÌNH', NULL, 7, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(32, 'AN NINH - TRẬT TỰ', NULL, 8, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(33, 'HÌNH SỰ - DÂN SỰ', NULL, 8, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(34, 'CNTT - VIỄN THÔNG', NULL, 9, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(35, 'THIẾT BỊ - PHẦN CỨNG', NULL, 9, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(36, 'DINH DƯỠNG - LÀM ĐẸP', NULL, 11, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(37, 'TÌNH YÊU - HÔN NHÂN', NULL, 11, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(38, 'SỨC KHỎE - Y TẾ', NULL, 11, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(39, 'QUẢN LÝ - QUY HOẠCH', NULL, 13, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1),
(40, 'KHÔNG GIAN - KIẾN TRÚC', NULL, 13, '0000-00-00 00:00:00', 1, '', 0, '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `parent` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_created` int(11) NOT NULL,
  `user_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `url` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_created` int(11) NOT NULL,
  `user_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL COMMENT '0(đã hiển thị),1(chưa hiển thị)',
  `slug` varchar(45) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `image` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_created` varchar(45) NOT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `user_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `status`, `slug`, `count`, `image`, `created`, `modified`, `user_created`, `categories_id`, `user_modified`) VALUES
(1, 'Viện trưởng Viện Pasteur TP.HCM: \'Học sinh đế', '', 'âfasfasf', 0, 'vien+truong', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 1, 1),
(2, '', '', '', 0, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', NULL, 0),
(3, 'Dịch bệnh hoành hành khắp nơi trên Hàn Quốc', 'N Covid18', 'qqweqwfsafgakgjldanvbeotasn;wegafa;sfglqwoigak;qgaoikfjk', 1, '', 1, 1, '2020-03-05 04:14:50', '2020-03-05 04:17:28', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 1 COMMENT '0 nữ, 1 nam',
  `birthday` date NOT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1(active),2 (deactive)',
  `user_group_id` int(11) DEFAULT NULL COMMENT '0 admin 1 user',
  `avata` int(11) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  `user_created` int(11) DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `first_name`, `last_name`, `gender`, `birthday`, `status`, `user_group_id`, `avata`, `password`, `created`, `modified`, `user_created`, `user_modified`) VALUES
(3, 'admin123', 'Minh', 'Anh', 1, '1999-12-20', 1, 0, 1, '$2y$10$OXqTov6VvvQeciKgA.NPu.e0CI2.eZTsebKp1FEx0qMI.udAZfZXS', '2020-03-04 03:43:45', '2020-03-04 03:43:45', 1, 1),
(4, 'admin', 'Anh', 'Nguyen', 1, '1997-05-25', 1, 1, 1, '$2y$10$I4sMZTTZAslpe4OwFo2bduYyTE6ObbT3MFyIToCsmns2vSWYz4xsS', '2020-03-04 04:09:31', '2020-03-04 04:09:31', 1, 1),
(6, 'admin123', 'Anh', 'Quang', 1, '1998-02-25', 0, 1, 1, '$2y$10$D8lbStNMk./mdTHo8XGpgurR66L6M7/TRuVb.m/Xeu/Elq4bMuj9i', '2020-03-04 10:13:31', '2020-03-04 10:13:31', 1, 1),
(8, 'chipheo', 'Anh', 'Chi', 1, '1999-01-09', 1, NULL, 1, '$2y$10$LuU/1YpEBZ3m6PBOpdhDke6gMGnoby1PdeeV0t5Hq3Wzy7cgzme0K', '2020-03-04 10:19:54', '2020-03-04 10:19:54', NULL, NULL),
(9, 'quanh', 'Anh', 'Quang', 1, '2011-11-11', 1, 0, 1, '$2y$10$/wMvu9NnOKVuF4f3/Va7zu9ltSZxS8IPZUQPZLwf8wZUQd/RgdIQy', '2020-03-05 02:29:04', '2020-03-05 02:35:21', 1, 1),
(10, 'moanh', 'Minh', 'Nguyen', 1, '2020-01-01', NULL, NULL, NULL, '$2y$10$J84ntyRVZzNgFLwl4KzZ6eSM3g7A4JmnpIGP628hQgK.fD4FOcs3K', '2020-03-05 10:09:36', '2020-03-05 10:09:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `name`, `description`, `created`, `modified`) VALUES
(0, 'admin', 'Admin', '2020-02-27 02:34:26', '2020-02-27 02:34:26'),
(1, 'user', 'Tài khoản người dùng', '2020-02-27 02:35:28', '2020-02-27 02:35:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
