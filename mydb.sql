-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 10:56 AM
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
(1, 'Thời sự', 'news', 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(2, 'Pháp luật', 'mục pháp luật', 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(3, 'Thế giới', 'mục thế giới', 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(4, 'Xuất bản', '', 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(5, 'Kinh doanh', '', 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(6, 'Công nghệ', NULL, 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(7, 'Thể thao', NULL, 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(8, 'Giải trí', NULL, 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(9, 'Đời sống', NULL, 0, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(11, 'Chính trị', NULL, 1, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(12, 'Giao thông', NULL, 1, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(13, 'Đô thị', NULL, 1, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(14, 'Pháp đình', NULL, 2, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(15, 'Vụ án', NULL, 2, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(16, 'Quân sự', NULL, 3, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(17, 'Tư liệu', NULL, 3, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(18, 'Phân tích', NULL, 3, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(19, 'Người Việt 4 phương', NULL, 3, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1),
(20, 'Chuyện lạ', NULL, 3, '0000-00-00', 0, '', 0, '0000-00-00', 1, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
