-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 08:07 AM
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
  `created` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 duoc hien thi, 0 ko hien thi',
  `slug` varchar(50) NOT NULL COMMENT 'link to post',
  `sort` int(11) NOT NULL COMMENT 'sort theo thu tu mong muon',
  `modified` date NOT NULL,
  `user_created` int(11) NOT NULL,
  `user_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parent_id`, `created`, `status`, `slug`, `sort`, `modified`, `user_created`, `user_modified`) VALUES
(1, 'XÃ HỘI', 'news', 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(2, 'THẾ GIỚI', 'mục pháp luật', 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(3, 'VĂN HÓA', 'mục thế giới', 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(4, 'KINH TẾ', '', 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(5, 'GIÁO DỤC', '', 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(6, 'THỂ THAO', NULL, 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(7, 'GIẢI TRÍ', NULL, 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(8, 'PHÁP LUẬT', NULL, 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(9, 'CÔNG NGHỆ', NULL, 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(11, 'KHOA HỌC', NULL, 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(12, 'XE CỘ', NULL, 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(13, 'NHÀ ĐẤT', NULL, 0, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(14, 'THỜI SỰ', NULL, 1, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(15, 'GIAO THÔNG', NULL, 1, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(16, 'MÔI TRƯỜNG - KHÍ HẬU', NULL, 1, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(17, 'NGHỆ THUẬT', NULL, 3, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(18, 'ẨM THỰC', NULL, 3, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(19, 'DU LỊCH', NULL, 3, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(20, 'LAO ĐỘNG - VIỆC LÀM', NULL, 4, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(21, 'TÀI CHÍNH', NULL, 4, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(22, 'CHỨNG KHOÁN', NULL, 4, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(23, 'KINH DOANH', NULL, 4, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(24, 'HỌC BỔNG - DU HỌC', NULL, 5, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(25, 'ĐÀO TẠO - THI CỬ', NULL, 5, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(26, 'BÓNG ĐÁ QUỐC TẾ ', NULL, 6, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(27, 'BÓNG ĐÁ VIỆT NAM', NULL, 6, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(28, 'QUẦN VỢT', NULL, 6, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(29, 'ÂM NHẠC', NULL, 7, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(30, 'THỜI TRANG', NULL, 7, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(31, 'ĐIỆN ẢNH - TRUYỀN HÌNH', NULL, 7, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(32, 'AN NINH - TRẬT TỰ', NULL, 8, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(33, 'HÌNH SỰ - DÂN SỰ', NULL, 8, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(34, 'CNTT - VIỄN THÔNG', NULL, 9, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(35, 'THIẾT BỊ - PHẦN CỨNG', NULL, 9, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(36, 'DINH DƯỠNG - LÀM ĐẸP', NULL, 11, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(37, 'TÌNH YÊU - HÔN NHÂN', NULL, 11, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(38, 'SỨC KHỎE - Y TẾ', NULL, 11, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(39, 'QUẢN LÝ - QUY HOẠCH', NULL, 13, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1),
(40, 'KHÔNG GIAN - KIẾN TRÚC', NULL, 13, '0000-00-00', 1, '', 0, '0000-00-00', 1, 1);

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
(2, '', '', '', 0, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', NULL, 0);

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
  `status` int(11) NOT NULL COMMENT '1(active),2 (deactive)',
  `user_group_id` int(11) DEFAULT NULL,
  `avata` int(11) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created` varchar(45) NOT NULL,
  `modified` date NOT NULL,
  `user_created` int(11) NOT NULL,
  `user_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'admin', 'Admin', '2020-02-27 02:34:26', '2020-02-27 02:34:26'),
(2, 'user', 'Tài khoản người dùng', '2020-02-27 02:35:28', '2020-02-27 02:35:28');

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
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
