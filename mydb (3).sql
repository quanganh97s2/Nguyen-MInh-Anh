-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 11:32 AM
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
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL COMMENT '0(đã hiển thị),1(chưa hiển thị)',
  `slug` varchar(255) DEFAULT NULL,
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
(3, 'Dịch bệnh hoành hành khắp nơi trên Hàn Quốc', 'N Covid18', 'qqweqwfsafgakgjldanvbeotasn;wegafa;sfglqwoigak;qgaoikfjk', 1, '', 1, 1, '2020-03-05 04:14:50', '2020-03-05 04:17:28', '1', 1, 1),
(4, 'Dịch bệnh hoành hành khắp nơi trên Hàn Quốc a', 'ádasdasdad', '<p>Xin ch&agrave;o tất cả c&aacute;c bạn t&ocirc;i&nbsp;<strong>L&agrave;&nbsp;</strong><em>Ai<strong>&nbsp;trong cuộc đời n&agrave;y&nbsp;<img alt=\"Bao moi\" src=\"https://www.google.com/imgres?imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D284570219141356&amp;imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fbaomoitinnong24h%2Fposts&amp;docid=byzhcbB-U4psqM&amp;tbnid=UYPqGQL_GFGgNM%3A&amp;vet=10ahUKEwjF0O2csozoAhXpG6YKHYISD8kQMwhmKAAwAA..i&amp;w=960&amp;h=545&amp;bih=789&amp;biw=1600&amp;q=bao%20moi&amp;ved=0ahUKEwjF0O2csozoAhXpG6YKHYISD8kQMwhmKAAwAA&amp;iact=mrc&amp;uact=8\" style=\"height:10px; width:12px\" /></strong></em></p>\r\n', 1, 'dfas23123', 0, 1, '2020-03-09 03:01:01', '2020-03-09 03:01:01', '1', 2, 1),
(5, 'Ca bệnh thứ 17 lọt qua hệ thống kiểm dịch sân bay như thế nào?', 'N Covid18', '<p>Khi N.H.N. về nước, cửa khẩu Nội B&agrave;i đ&atilde; thực hiện khai b&aacute;o y tế đối với h&agrave;nh kh&aacute;ch trở về từ Italy. N. đ&atilde; khai b&aacute;o kh&ocirc;ng trung thực dẫn đến việc s&acirc;n bay bỏ lọt bệnh nh&acirc;n.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>Zing.vn</em>, b&aacute;c sĩ Khổng Minh Tuấn, Ph&oacute; gi&aacute;m đốc Trung t&acirc;m kiểm so&aacute;t bệnh tật H&agrave; Nội (CDC H&agrave; Nội), cho biết bệnh nh&acirc;n N.H.N. đ&atilde; được y&ecirc;u cầu khai b&aacute;o y tế ngay khi xuống s&acirc;n bay Nội B&agrave;i v&agrave;o rạng s&aacute;ng 2/3. Tuy nhi&ecirc;n, nữ h&agrave;nh kh&aacute;ch đ&atilde; khai b&aacute;o kh&ocirc;ng trung thực dẫn đến việc bỏ lọt một ca bệnh nguy hiểm.</p>\r\n\r\n<p>&quot;Khi h&agrave;nh kh&aacute;ch khai xong, ch&uacute;ng t&ocirc;i c&oacute; phỏng vấn, điều tra th&ecirc;m nhưng người n&agrave;y vẫn khẳng định chỉ đi từ Anh chứ kh&ocirc;ng qua c&aacute;c nước kh&aacute;c&quot;, &ocirc;ng Tuấn khẳng định.</p>\r\n\r\n<p><img alt=\"Sức khỏe của bệnh nhân N.H.N. vẫn đang tiến triển tốt. Ảnh: BSCC.\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/yfsgs/2020_03_08/benh_nhan_18.jpg\" style=\"height:348px; width:527px\" /></p>\r\n\r\n<h3>Phụ thuộc &yacute; thức tự gi&aacute;c</h3>\r\n\r\n<p>&Ocirc;ng Tuấn cho biết CDC H&agrave; Nội chịu tr&aacute;ch nhiệm kiểm tra tờ khai y tế tại s&acirc;n bay, c&ograve;n việc kiểm tra hộ chiếu của h&agrave;nh kh&aacute;ch do An ninh cửa khẩu Nội B&agrave;i thực hiện.</p>\r\n\r\n<p>&quot;Qua kiểm tra hộ chiếu cũng kh&ocirc;ng ph&aacute;t hiện dấu vết h&agrave;nh kh&aacute;ch từng đến Italy, nếu ph&aacute;t hiện được chắn chắn ch&uacute;ng t&ocirc;i đ&atilde; y&ecirc;u cầu c&aacute;ch ly ngay từ s&acirc;n bay&quot;, l&atilde;nh đạo CDC H&agrave; Nội cho biết.</p>\r\n\r\n<p>Để ngăn ngừa Covid-19 l&acirc;y lan, s&acirc;n bay Nội B&agrave;i được x&aacute;c định l&agrave; cửa ng&otilde; chiến lược, nơi tập trung 3 lực lượng c&ugrave;ng r&agrave; so&aacute;t h&agrave;nh kh&aacute;ch nhập cảnh gồm lực lượng kiểm dịch y tế quốc tế thuộc Trung t&acirc;m kiểm so&aacute;t bệnh tật H&agrave; Nội (CDC H&agrave; Nội), lực lượng An ninh cửa khẩu (Bộ C&ocirc;ng an) v&agrave; an ninh s&acirc;n bay (ACV).</p>\r\n\r\n<p>Tuy nhi&ecirc;n, cả 2 lần c&oacute; h&agrave;nh kh&aacute;ch nhiễm bệnh nhập cảnh (trường hợp 8 c&ocirc;ng nh&acirc;n Nihon Plast Việt Nam về từ Vũ H&aacute;n v&agrave; trường hợp h&agrave;nh kh&aacute;ch N.H.N.), &quot;bộ lọc&quot; tại s&acirc;n bay đều kh&ocirc;ng ph&aacute;t hiện.</p>\r\n\r\n<p>&quot;Nhiều trường hợp đến c&ocirc;ng an cũng kh&ocirc;ng ph&aacute;t hiện được, vậy n&ecirc;n điều quan trọng nhất vẫn l&agrave; &yacute; thức tự gi&aacute;c, trung thực của bản th&acirc;n người khai b&aacute;o&quot;, l&atilde;nh đạo CDC H&agrave; Nội nhấn mạnh.</p>\r\n\r\n<p>Ng&agrave;y 8/3, Cục H&agrave;ng kh&ocirc;ng Việt Nam đ&atilde; c&oacute; c&ocirc;ng văn y&ecirc;u cầu&nbsp;c&aacute;c s&acirc;n bay b&ecirc;n cạnh đảm bảo an ninh phải tham gia gi&aacute;m s&aacute;t chặt chẽ việc khai b&aacute;o y tế, đảm bảo kh&ocirc;ng để lọt, bỏ s&oacute;t h&agrave;nh kh&aacute;ch nhập cảnh v&agrave;o Việt Nam m&agrave; kh&ocirc;ng thực hiện thủ tục khai b&aacute;o y tế.</p>\r\n\r\n<h3>14 ca mới sức khỏe ổn định</h3>\r\n\r\n<p>Chiều 8/3, Bộ Y tế c&ocirc;ng bố th&ecirc;m 8 trường hợp dương t&iacute;nh với virus corona ở Việt Nam. C&aacute;c bệnh nh&acirc;n mới l&agrave; h&agrave;nh kh&aacute;ch nước ngo&agrave;i c&ugrave;ng chuyến bay VN0054 với bệnh nh&acirc;n thứ 17 (chị N.H.N., 26 tuổi, ngụ tại Tr&uacute;c Bạch, H&agrave; Nội) từ Anh về Việt Nam.</p>\r\n\r\n<p>Tổng số ca bệnh Covid-19 tại Việt Nam t&iacute;nh đến hết ng&agrave;y 8/3 l&agrave; 30, trong đ&oacute; 16 người đ&atilde; được điều trị khỏi ho&agrave;n to&agrave;n, 14 ca đang được điều trị c&aacute;ch ly, t&igrave;nh trạng sức khỏe ổn định.</p>\r\n\r\n<p>Trước đ&oacute;, đ&ecirc;m 6/3, UBND H&agrave; Nội c&ocirc;ng bố nữ bệnh nh&acirc;n N.H.N. l&agrave; ca bệnh đầu ti&ecirc;n tại H&agrave; Nội (thứ 17 tại Việt Nam) dương t&iacute;nh với virus corona. Theo điều tra dịch tễ, ng&agrave;y 15/2, bệnh nh&acirc;n xuất cảnh từ Nội B&agrave;i sang London (Anh). Đến 18/2, bệnh nh&acirc;n từ London sang Milan (Italy) khi nơi đ&acirc;y chưa ghi nhận dịch Covid-19 b&ugrave;ng ph&aacute;t. Đến 20/2, bệnh nh&acirc;n quay trở lại London để sang Paris (Ph&aacute;p) gặp chị g&aacute;i.</p>\r\n\r\n<p>Ng&agrave;y 26/2, bệnh nh&acirc;n quay lại London. Ng&agrave;y 29/2, c&ocirc; c&oacute; biểu hiện ho nhưng kh&ocirc;ng đi kh&aacute;m, h&ocirc;m sau xuất hiện th&ecirc;m triệu chứng đau mỏi người. Trong ng&agrave;y 1/3, bệnh nh&acirc;n đ&aacute;p chuyến bay VN0054 của Vietnam Airlines từ London về Nội B&agrave;i l&uacute;c 4h30 ng&agrave;y 2/3 (l&uacute;c n&agrave;y bệnh nh&acirc;n kh&ocirc;ng sốt).</p>\r\n\r\n<p>Sau khi về nh&agrave; ri&ecirc;ng tại phường Tr&uacute;c Bạch, b&ecirc;nh nh&acirc;n xuất hiện sốt (38 độ C), ho nhiều, c&oacute; đờm, mệt mỏi v&agrave; đ&atilde; đi kh&aacute;m tại Bệnh viện Hồng Ngọc cơ sở 55 Y&ecirc;n Ninh, quận Ba Đ&igrave;nh v&agrave;o ng&agrave;y 5/3. Sau khi được chẩn đo&aacute;n vi&ecirc;m phổi, bệnh nh&acirc;n được chuyển đến Bệnh viện Bệnh nhiệt đới Trung ương cơ sở v&agrave; được kết luận dương t&iacute;nh với Covid-19 tại đ&acirc;y.</p>\r\n\r\n<p><img alt=\"chuyến bay mang dịch trở lại Việt Nam\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/yfsgs/2020_03_08/INFO_Chuyen_bay_mang_covid19_3_.jpg\" style=\"height:1044px; width:660px\" /></p>\r\n', 1, 'Ca-benh-thu-17-lot-qua-he-thong-kiem-dich-san', 1, 1, '2020-03-09 03:12:17', '2020-03-09 03:12:17', '1', 38, 1);

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
  `user_group_id` int(11) DEFAULT 1 COMMENT '0 admin 1 user',
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
(4, 'admin', 'Anh', 'Nguyen', 1, '1997-05-25', 1, 0, 1, '$2y$10$I4sMZTTZAslpe4OwFo2bduYyTE6ObbT3MFyIToCsmns2vSWYz4xsS', '2020-03-04 04:09:31', '2020-03-04 04:09:31', 1, 1),
(11, 'anhnm', 'Minh Anh', 'Nguyen', 1, '1997-05-25', NULL, 1, NULL, '$2y$10$tn/JzwhkxlnH7S0e9kG4u.ejluc0DUPM2qqV6/OFQBsxfxVfktWcG', '2020-03-09 07:11:43', '2020-03-09 07:11:43', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
