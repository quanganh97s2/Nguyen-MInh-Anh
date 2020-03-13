-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 11:32 AM
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
  `url` varchar(255) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_created` int(11) NOT NULL,
  `user_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `width`, `height`, `url`, `type`, `created`, `modified`, `user_created`, `user_modified`) VALUES
(1, 'benh nhan 35', 654, 436, 'https://znews-photo.zadn.vn/w660/Uploaded/yfsgs/2020_03_08/benh_nhan_18.jpg', 'post', '2020-03-11 07:33:53', '2020-03-13 07:32:40', 1, 1),
(2, 'benhnhan17', 527, 348, 'https://znews-photo.zadn.vn/w660/Uploaded/yfsgs/2020_03_08/benh_nhan_18.jpg', 'post', '2020-03-13 02:52:08', '2020-03-13 02:52:08', 1, 1),
(3, 'xetang', 193, 128, 'https://photo-3-baomoi.zadn.vn/w200_r3x2_sm/2020_03_13_294_34292162/ae85bc6faa2c43721a3d.jpg', 'post', '2020-03-13 07:56:59', '2020-03-13 07:56:59', 1, 1),
(4, 'thời sự', 112, 123123, '12312312', 'post', '2020-03-13 10:23:22', '2020-03-13 10:23:22', 1, 1);

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
(5, 'Ca bệnh thứ 17 lọt qua hệ thống kiểm dịch sân bay như thế nào?', 'N Covid18', '<p>Khi N.H.N. về nước, cửa khẩu Nội B&agrave;i đ&atilde; thực hiện khai b&aacute;o y tế đối với h&agrave;nh kh&aacute;ch trở về từ Italy. N. đ&atilde; khai b&aacute;o kh&ocirc;ng trung thực dẫn đến việc s&acirc;n bay bỏ lọt bệnh nh&acirc;n.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>Zing.vn</em>, b&aacute;c sĩ Khổng Minh Tuấn, Ph&oacute; gi&aacute;m đốc Trung t&acirc;m kiểm so&aacute;t bệnh tật H&agrave; Nội (CDC H&agrave; Nội), cho biết bệnh nh&acirc;n N.H.N. đ&atilde; được y&ecirc;u cầu khai b&aacute;o y tế ngay khi xuống s&acirc;n bay Nội B&agrave;i v&agrave;o rạng s&aacute;ng 2/3. Tuy nhi&ecirc;n, nữ h&agrave;nh kh&aacute;ch đ&atilde; khai b&aacute;o kh&ocirc;ng trung thực dẫn đến việc bỏ lọt một ca bệnh nguy hiểm.</p>\r\n\r\n<p>&quot;Khi h&agrave;nh kh&aacute;ch khai xong, ch&uacute;ng t&ocirc;i c&oacute; phỏng vấn, điều tra th&ecirc;m nhưng người n&agrave;y vẫn khẳng định chỉ đi từ Anh chứ kh&ocirc;ng qua c&aacute;c nước kh&aacute;c&quot;, &ocirc;ng Tuấn khẳng định.</p>\r\n\r\n<p><img alt=\"Sức khỏe của bệnh nhân N.H.N. vẫn đang tiến triển tốt. Ảnh: BSCC.\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/yfsgs/2020_03_08/benh_nhan_18.jpg\" style=\"height:348px; width:527px\" /></p>\r\n\r\n<h3>Phụ thuộc &yacute; thức tự gi&aacute;c</h3>\r\n\r\n<p>&Ocirc;ng Tuấn cho biết CDC H&agrave; Nội chịu tr&aacute;ch nhiệm kiểm tra tờ khai y tế tại s&acirc;n bay, c&ograve;n việc kiểm tra hộ chiếu của h&agrave;nh kh&aacute;ch do An ninh cửa khẩu Nội B&agrave;i thực hiện.</p>\r\n\r\n<p>&quot;Qua kiểm tra hộ chiếu cũng kh&ocirc;ng ph&aacute;t hiện dấu vết h&agrave;nh kh&aacute;ch từng đến Italy, nếu ph&aacute;t hiện được chắn chắn ch&uacute;ng t&ocirc;i đ&atilde; y&ecirc;u cầu c&aacute;ch ly ngay từ s&acirc;n bay&quot;, l&atilde;nh đạo CDC H&agrave; Nội cho biết.</p>\r\n\r\n<p>Để ngăn ngừa Covid-19 l&acirc;y lan, s&acirc;n bay Nội B&agrave;i được x&aacute;c định l&agrave; cửa ng&otilde; chiến lược, nơi tập trung 3 lực lượng c&ugrave;ng r&agrave; so&aacute;t h&agrave;nh kh&aacute;ch nhập cảnh gồm lực lượng kiểm dịch y tế quốc tế thuộc Trung t&acirc;m kiểm so&aacute;t bệnh tật H&agrave; Nội (CDC H&agrave; Nội), lực lượng An ninh cửa khẩu (Bộ C&ocirc;ng an) v&agrave; an ninh s&acirc;n bay (ACV).</p>\r\n\r\n<p>Tuy nhi&ecirc;n, cả 2 lần c&oacute; h&agrave;nh kh&aacute;ch nhiễm bệnh nhập cảnh (trường hợp 8 c&ocirc;ng nh&acirc;n Nihon Plast Việt Nam về từ Vũ H&aacute;n v&agrave; trường hợp h&agrave;nh kh&aacute;ch N.H.N.), &quot;bộ lọc&quot; tại s&acirc;n bay đều kh&ocirc;ng ph&aacute;t hiện.</p>\r\n\r\n<p>&quot;Nhiều trường hợp đến c&ocirc;ng an cũng kh&ocirc;ng ph&aacute;t hiện được, vậy n&ecirc;n điều quan trọng nhất vẫn l&agrave; &yacute; thức tự gi&aacute;c, trung thực của bản th&acirc;n người khai b&aacute;o&quot;, l&atilde;nh đạo CDC H&agrave; Nội nhấn mạnh.</p>\r\n\r\n<p>Ng&agrave;y 8/3, Cục H&agrave;ng kh&ocirc;ng Việt Nam đ&atilde; c&oacute; c&ocirc;ng văn y&ecirc;u cầu&nbsp;c&aacute;c s&acirc;n bay b&ecirc;n cạnh đảm bảo an ninh phải tham gia gi&aacute;m s&aacute;t chặt chẽ việc khai b&aacute;o y tế, đảm bảo kh&ocirc;ng để lọt, bỏ s&oacute;t h&agrave;nh kh&aacute;ch nhập cảnh v&agrave;o Việt Nam m&agrave; kh&ocirc;ng thực hiện thủ tục khai b&aacute;o y tế.</p>\r\n\r\n<h3>14 ca mới sức khỏe ổn định</h3>\r\n\r\n<p>Chiều 8/3, Bộ Y tế c&ocirc;ng bố th&ecirc;m 8 trường hợp dương t&iacute;nh với virus corona ở Việt Nam. C&aacute;c bệnh nh&acirc;n mới l&agrave; h&agrave;nh kh&aacute;ch nước ngo&agrave;i c&ugrave;ng chuyến bay VN0054 với bệnh nh&acirc;n thứ 17 (chị N.H.N., 26 tuổi, ngụ tại Tr&uacute;c Bạch, H&agrave; Nội) từ Anh về Việt Nam.</p>\r\n\r\n<p>Tổng số ca bệnh Covid-19 tại Việt Nam t&iacute;nh đến hết ng&agrave;y 8/3 l&agrave; 30, trong đ&oacute; 16 người đ&atilde; được điều trị khỏi ho&agrave;n to&agrave;n, 14 ca đang được điều trị c&aacute;ch ly, t&igrave;nh trạng sức khỏe ổn định.</p>\r\n\r\n<p>Trước đ&oacute;, đ&ecirc;m 6/3, UBND H&agrave; Nội c&ocirc;ng bố nữ bệnh nh&acirc;n N.H.N. l&agrave; ca bệnh đầu ti&ecirc;n tại H&agrave; Nội (thứ 17 tại Việt Nam) dương t&iacute;nh với virus corona. Theo điều tra dịch tễ, ng&agrave;y 15/2, bệnh nh&acirc;n xuất cảnh từ Nội B&agrave;i sang London (Anh). Đến 18/2, bệnh nh&acirc;n từ London sang Milan (Italy) khi nơi đ&acirc;y chưa ghi nhận dịch Covid-19 b&ugrave;ng ph&aacute;t. Đến 20/2, bệnh nh&acirc;n quay trở lại London để sang Paris (Ph&aacute;p) gặp chị g&aacute;i.</p>\r\n\r\n<p>Ng&agrave;y 26/2, bệnh nh&acirc;n quay lại London. Ng&agrave;y 29/2, c&ocirc; c&oacute; biểu hiện ho nhưng kh&ocirc;ng đi kh&aacute;m, h&ocirc;m sau xuất hiện th&ecirc;m triệu chứng đau mỏi người. Trong ng&agrave;y 1/3, bệnh nh&acirc;n đ&aacute;p chuyến bay VN0054 của Vietnam Airlines từ London về Nội B&agrave;i l&uacute;c 4h30 ng&agrave;y 2/3 (l&uacute;c n&agrave;y bệnh nh&acirc;n kh&ocirc;ng sốt).</p>\r\n\r\n<p>Sau khi về nh&agrave; ri&ecirc;ng tại phường Tr&uacute;c Bạch, b&ecirc;nh nh&acirc;n xuất hiện sốt (38 độ C), ho nhiều, c&oacute; đờm, mệt mỏi v&agrave; đ&atilde; đi kh&aacute;m tại Bệnh viện Hồng Ngọc cơ sở 55 Y&ecirc;n Ninh, quận Ba Đ&igrave;nh v&agrave;o ng&agrave;y 5/3. Sau khi được chẩn đo&aacute;n vi&ecirc;m phổi, bệnh nh&acirc;n được chuyển đến Bệnh viện Bệnh nhiệt đới Trung ương cơ sở v&agrave; được kết luận dương t&iacute;nh với Covid-19 tại đ&acirc;y.</p>\r\n\r\n<p><img alt=\"chuyến bay mang dịch trở lại Việt Nam\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/yfsgs/2020_03_08/INFO_Chuyen_bay_mang_covid19_3_.jpg\" style=\"height:1044px; width:660px\" /></p>\r\n', 1, 'Ca-benh-thu-17-lot-qua-he-thong-kiem-dich-san', 1, 2, '2020-03-09 03:12:17', '2020-03-09 03:12:17', '1', 38, 1),
(6, 'Số ca nhiễm vượt 9.000, Italy mở rộng phong tỏa ra cả nước', 'N Covid19', '<p><strong>Italy th&ocirc;ng b&aacute;o mở rộng phong tỏa đối với di chuyển c&aacute; nh&acirc;n v&agrave; c&aacute;c hoạt động tụ tập c&ocirc;ng cộng ra cả nước khi số ca nhiễm nước n&agrave;y tăng nhanh l&ecirc;n 9.172 trường hợp.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thủ tướng Giuseppe Conte ng&agrave;y 9/3 mở rộng c&aacute;c biện ph&aacute;p đối ph&oacute; virus corona tr&ecirc;n to&agrave;n quốc, y&ecirc;u cầu người d&acirc;n ở nh&agrave; v&agrave; cấm mọi hoạt động tụ tập nơi c&ocirc;ng cộng c&ugrave;ng với tất cả trận đấu trong khu&ocirc;n khổ giải v&ocirc; địch quốc gia Serie A.</p>\r\n\r\n<p>Đất nước n&agrave;y đ&atilde; ghi nhận hơn 9.172 ca nhiễm v&agrave; 463 ca tử vong - chiếm hơn một nửa ca tử vong của to&agrave;n ch&acirc;u &Acirc;u - v&agrave; c&aacute;c con số n&agrave;y vẫn tiếp tục tăng nhanh.</p>\r\n\r\n<p>C&aacute;c biện ph&aacute;p chưa từng c&oacute; tiền lệ được &aacute;p dụng tr&ecirc;n to&agrave;n quốc, t&aacute;c động đến hơn 60 triệu người - quy m&ocirc; tương đương với t&acirc;m điểm dịch tỉnh Hồ Bắc bị&nbsp;<a href=\"https://news.zing.vn/tieu-diem/trung-quoc.html\">Trung Quốc</a>&nbsp;phong tỏa.</p>\r\n\r\n<p><img alt=\"Cảnh sát Italy tại chốt chặn ở Valsamoggia giữa hai tỉnh được phong tỏa là Modena và Bologna hôm 9/3. Ảnh: Getty.\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/ohunaaa/2020_03_09/merlin_170245308_c905c7fc_ca50_4071_ae53_cfb04fc6aac3_superJumbo.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<h1><strong>&quot;Từ bỏ một số điều v&igrave; đất nước Italy&quot;</strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Italy th&ocirc;ng b&aacute;o mở rộng phong tỏa đối với di chuyển c&aacute; nh&acirc;n v&agrave; c&aacute;c hoạt động tụ tập c&ocirc;ng cộng ra cả nước khi số ca nhiễm nước n&agrave;y tăng nhanh l&ecirc;n 9.172 trường hợp.<br />\r\nThủ tướng Giuseppe Conte ng&agrave;y 9/3 mở rộng c&aacute;c biện ph&aacute;p đối ph&oacute; virus corona tr&ecirc;n to&agrave;n quốc, y&ecirc;u cầu người d&acirc;n ở nh&agrave; v&agrave; cấm mọi hoạt động tụ tập nơi c&ocirc;ng cộng c&ugrave;ng với tất cả trận đấu trong khu&ocirc;n khổ giải v&ocirc; địch quốc gia Serie A.</strong></p>\r\n\r\n<p><strong>Đất nước n&agrave;y đ&atilde; ghi nhận hơn 9.172 ca nhiễm v&agrave; 463 ca tử vong - chiếm hơn một nửa ca tử vong của to&agrave;n ch&acirc;u &Acirc;u - v&agrave; c&aacute;c con số n&agrave;y vẫn tiếp tục tăng nhanh.</strong></p>\r\n\r\n<p><strong>C&aacute;c biện ph&aacute;p chưa từng c&oacute; tiền lệ được &aacute;p dụng tr&ecirc;n to&agrave;n quốc, t&aacute;c động đến hơn 60 triệu người - quy m&ocirc; tương đương với t&acirc;m điểm dịch tỉnh Hồ Bắc bị Trung Quốc phong tỏa.</strong></p>\r\n\r\n<p><strong>So ca nhiem vuot 9.000, Italy mo rong phong toa ra ca nuoc hinh anh 1&nbsp;<br />\r\nCảnh s&aacute;t Italy tại chốt chặn ở Valsamoggia giữa hai tỉnh được phong tỏa l&agrave; Modena v&agrave; Bologna h&ocirc;m 9/3. Ảnh: Getty.</strong></p>\r\n\r\n<p><br />\r\n<strong>&quot;Từ bỏ một số điều v&igrave; đất nước Italy&quot;<br />\r\n&quot;T&ocirc;i sẽ k&yacute; một sắc lệnh, với nội dung được t&oacute;m gọn như sau: T&ocirc;i ở nh&agrave;&quot;, Thủ tướng Giuseppe Conte nhấn mạnh trong b&agrave;i ph&aacute;t biểu tr&ecirc;n truyền h&igrave;nh to&agrave;n quốc. &quot;To&agrave;n bộ Italy sẽ trở th&agrave;nh khu vực được bảo vệ&quot;.</strong></p>\r\n\r\n<p><strong>Italy chưa từng rơi v&agrave;o t&igrave;nh trạng kiểm so&aacute;t gắt gao như vậy kể từ Thế chiến II. C&aacute;c trạm kiểm tra của cảnh s&aacute;t được đặt ở nh&agrave; ga, s&acirc;n bay, trạm thu ph&iacute; v&agrave; mọi cửa ng&otilde; c&aacute;c th&agrave;nh phố.</strong></p>\r\n\r\n<p><strong>&quot;Tương lai của ch&uacute;ng ta, tương lai của Italy, đang nằm trong b&agrave;n tay ch&iacute;nh ch&uacute;ng ta. Ng&agrave;y h&ocirc;m nay, những b&agrave;n tay n&agrave;y cần phải c&oacute; tr&aacute;ch nhiệm hơn bao giờ hết&quot;, thủ tướng Italy nhấn mạnh.</strong></p>\r\n\r\n<p><strong>&quot;Ch&uacute;ng ta kh&ocirc;ng c&ograve;n thời gian. C&aacute;c số liệu cho thấy sự gia tăng đ&aacute;ng kể số ca nhiễm, số người cần được điều trị t&iacute;ch cực v&agrave; số ca tử vong. Ch&uacute;ng ta cần thay đổi th&oacute;i quen ngay lập tức. Ch&uacute;ng ta phải từ bỏ một số điều v&igrave; đất nước Italy&quot;, &ocirc;ng chia sẻ.</strong></p>\r\n\r\n<p><strong>Trước đ&oacute; một ng&agrave;y, Italy đ&atilde; &aacute;p dụng biện ph&aacute;p c&aacute;ch ly cho khu vực c&ocirc;ng nghiệp miền Bắc nước n&agrave;y, xung quanh th&agrave;nh phố Milan v&agrave; Venice.</strong></p>\r\n\r\n<p><strong>C&aacute;c biện ph&aacute;p hạn chế tr&ecirc;n to&agrave;n quốc c&oacute; hiệu lực đến ng&agrave;y 3/4. C&aacute;c trường phổ th&ocirc;ng v&agrave; đại học phải đ&oacute;ng cửa ngay lập tức. Hoạt động đi lại giữa c&aacute;c th&agrave;nh phố, xuất nhập cảnh cũng được hạn chế, theo AFP.</strong></p>\r\n\r\n<p><strong>Theo AFP, việc ch&iacute;nh phủ của Thủ tướng Giuseppe Conte n&acirc;ng lệnh phong tỏa ở miền Bắc l&ecirc;n quy m&ocirc; to&agrave;n quốc chỉ sau một ng&agrave;y cho thấy Italy đang chật vật để đối ph&oacute; với cuộc khủng hoảng y tế ở nước n&agrave;y.</strong></p>\r\n\r\n<h1>Huy động b&aacute;c sĩ về hưu trở lại</h1>\r\n\r\n<p>Ch&iacute;nh phủ nước n&agrave;y đ&atilde; k&ecirc;u gọi những b&aacute;c sĩ về hưu trở lại l&agrave;m việc với hy vọng kịp thời tăng viện cho đội ngũ nh&acirc;n vi&ecirc;n y tế quốc gia chỉ c&oacute; khoảng 20.000 người.</p>\r\n\r\n<p>Người d&acirc;n được y&ecirc;u cầu viết đơn &quot;tự chứng thực&quot; về c&aacute;c l&yacute; do đi lại, gửi cho cơ quan hữu quan tại c&aacute;c nh&agrave; ga, s&acirc;n bay v&agrave; chốt kiểm so&aacute;t tr&ecirc;n tuyến đường lớn kết nối c&aacute;c th&agrave;nh phố.</p>\r\n\r\n<p>Sắc lệnh nhấn mạnh đơn khai b&aacute;o dựa tr&ecirc;n cơ sở tin tưởng lẫn nhau v&agrave; người d&acirc;n kh&ocirc;ng cần cung cấp bằng chứng cho nhu cầu đi lại của m&igrave;nh.</p>\r\n', 11, 'So-ca-nhiem-vuot-9-000-Italy-mo-rong-phong-toa-ra-ca-nuoc', NULL, 1, '2020-03-10 02:24:08', '2020-03-10 02:24:08', '1', NULL, 1),
(8, 'Mỹ tiến hành không kích trả đũa nhóm dân quân được Iran hậu thuẫn ở Iraq', 'quân sự ', '<h2><strong>Theo ph&oacute;ng vi&ecirc;n TTXVN tại Washington, Lầu Năm G&oacute;c ng&agrave;y 12/3 cho biết qu&acirc;n đội Mỹ đ&atilde; tiến h&agrave;nh những cuộc kh&ocirc;ng k&iacute;ch nhằm v&agrave;o nh&oacute;m d&acirc;n qu&acirc;n được Iran hậu thuẫn ở Iraq.</strong></h2>\r\n\r\n<p>Chiến dịch trả đũa của Lầu Năm G&oacute;c được thực hiện 1 ng&agrave;y sau vụ tấn c&ocirc;ng bằng rocket nhằm v&agrave;o 1 căn cứ qu&acirc;n sự tại Iraq khiến 2 binh sĩ Mỹ v&agrave; 1 binh sĩ Anh thiệt mạng.<img alt=\"vu khi cua my\" src=\"https://cdnmedia.baotintuc.vn/Upload/3qVxwVtNEPp6Wp9kkF77g/files/2020/03/13/iraq-130320.jpg\" style=\"height:422px; width:665px\" /></p>\r\n\r\n<p>Tuy&ecirc;n bố của Lầu Năm G&oacute;c n&ecirc;u r&otilde;: &quot;Mỹ đ&atilde; tiến h&agrave;nh những cuộc tấn c&ocirc;ng ph&ograve;ng vệ ch&iacute;nh x&aacute;c nhằm v&agrave;o c&aacute;c cơ sở của lực lượng Kataib Hezbollah tr&ecirc;n to&agrave;n Iraq&hellip; Những kho chứa vũ kh&iacute; n&agrave;y bao gồm c&aacute;c cơ sở cất giữ những loại vũ kh&iacute; đ&atilde; được sử dụng để tấn c&ocirc;ng c&aacute;c binh sĩ Mỹ v&agrave; li&ecirc;n qu&acirc;n&quot;.</p>\r\n\r\n<p>Theo Lầu Năm G&oacute;c, những cuộc tấn c&ocirc;ng của qu&acirc;n đội Mỹ &ldquo;mang t&iacute;nh ph&ograve;ng vệ, tương xứng v&agrave; l&agrave; h&agrave;nh động đ&aacute;p trả trực tiếp đối với mối đe dọa từ c&aacute;c nh&oacute;m d&acirc;n qu&acirc;n Shi&#39;ite được Iran hậu thuẫn&rdquo;.</p>\r\n\r\n<p>Trước đ&oacute;, tối 11/3, Li&ecirc;n qu&acirc;n do Mỹ đứng đầu ở Iraq cho biết 18 quả rocket Katyusha đ&atilde; bắn tr&uacute;ng doanh trại Camp Taji ở ph&iacute;a Bắc thủ đ&ocirc; Baghdad, l&agrave;m 2 binh sĩ Mỹ v&agrave; 1 binh sĩ Anh thiệt mạng, 12 người kh&aacute;c bị thương.</p>\r\n', 1, 'dfas', 0, 3, '2020-03-13 07:54:27', '2020-03-13 07:57:19', '1', 2, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
