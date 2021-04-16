-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th4 16, 2021 lúc 07:19 PM
-- Phiên bản máy phục vụ: 5.7.33-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freedbtech_truyencuoi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `comment` text NOT NULL,
  `creat_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_product`, `comment`, `creat_at`) VALUES
(24, 1, 1, 'comment 1', '2021-04-16 18:16:32'),
(25, 1, 2, 'comment 2', '2021-04-16 18:18:38'),
(26, 1, 3, 'comment 3', '2021-04-16 18:19:52'),
(27, 1, 4, 'comment 4', '2021-04-16 18:20:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `STT` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creat_at` datetime NOT NULL,
  `NXB` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `STT`, `id_parent`, `image`, `title`, `content`, `creat_at`, `NXB`, `status`) VALUES
(1, 1, 0, 'null', 'Người cha và đứa trẻ', 'Một đứa trẻ hỏi cha mình: ', '2021-04-16 00:00:00', 'Tuổi trẻ', 1),
(2, 0, 1, 'null', '', '\"Con người được sinh ra như thế nào?\"', '2021-04-16 00:00:00', 'Tuổi trẻ', 1),
(3, 0, 1, 'null', '', 'Vì vậy, cha ông ta nói, \"A-đam và Ê-va tạo ra trẻ sơ sinh, sau đó trẻ sơ sinh của họ trở thành người lớn và tạo ra trẻ sơ sinh, v.v.', '2021-04-16 00:00:00', 'Tuổi Trẻ', 1),
(4, 0, 1, 'null', '', 'Sau đó, đứa trẻ đến gặp mẹ, hỏi bà câu hỏi tương tự và bà nói với nó,', '2021-04-16 00:00:00', 'Tuổi Trẻ', 1),
(5, 0, 1, 'null', '', '\"Chúng ta là những con khỉ, sau đó chúng ta tiến hóa để trở thành như bây giờ.\"', '2021-04-16 00:00:00', 'Tuổi Trẻ', 1),
(6, 0, 1, 'null', '', 'Đứa trẻ chạy lại chỗ bố và nói: ', '2021-04-16 00:00:00', 'Tuổi Trẻ', 1),
(7, 0, 1, 'null', '', '\"Bố đã nói dối con!\"  ', '2021-04-16 00:00:00', 'Tuổi Trẻ', 1),
(8, 0, 1, 'null', '', 'Cha anh trả lời: \"Không, mẹ anh đang nói về khía cạnh gia đình của cô ấy.\"', '2021-04-16 00:00:00', 'Tuổi Trẻ', 1),
(9, 2, 0, 'null', 'Cô giáo và học trò', 'Cô giáo: \"Các con ơi, con gà cho các con làm gì?\" ', '2021-04-16 00:00:00', 'Nhi Đồng', 1),
(10, 0, 9, 'null', '', 'Học sinh: \"Thịt!\"', '2021-04-16 00:00:00', 'Nhi Đồng', 1),
(11, 0, 9, 'null', '', ' Cô giáo: \"Tốt lắm! Bây giờ con lợn cho cô cái gì?\"', '2021-04-16 00:00:00', 'Nhi Đồng', 1),
(12, 0, 9, 'null', '', ' Học sinh: \"Thịt ba rọi!\" ', '2021-04-16 00:00:00', 'Nhi Đồng', 1),
(13, 0, 9, 'null', '', '  Cô giáo: \"Tuyệt vời! Và con bò béo cho bạn cái gì?\"', '2021-04-16 00:00:00', 'Nhi Đồng', 1),
(14, 0, 9, 'null', '', '   Học sinh: \"Bài tập về nhà!\"', '2021-04-16 00:00:00', 'Nhi Đồng', 1),
(15, 3, 0, 'null', 'Giáo viên và học sinh', 'Giáo viên hỏi Jimmy,', '2021-04-16 00:00:00', 'Truyện cười', 1),
(16, 0, 15, 'null', '', '\"Tại sao con mèo của bạn ở trường hôm nay Jimmy?\"', '2021-04-16 00:00:00', 'Truyện cười', 1),
(17, 0, 15, 'null', '', 'Jimmy khóc lóc đáp lại, ', '2021-04-16 00:00:00', 'Truyện cười', 1),
(18, 0, 15, 'null', '', 'Bởi vì tôi nghe bố tôi nói với mẹ tôi, \'Tôi sẽ ăn cái âm hộ đó khi Jimmy đi học hôm nay!\'', '2021-04-16 00:00:00', 'Truyện cười', 1),
(19, 4, 0, 'null', 'Kế Toán và Luật Sư', 'Một bà nội trợ, một kế toán và một luật sư đã được hỏi \"2 + 2 là bao nhiêu?\" ', '2021-04-16 00:00:00', 'Truyện Vui', 1),
(20, 0, 19, 'null', '', ' Bà nội trợ đáp: \"Bốn!\". ', '2021-04-16 00:00:00', 'Truyện Vui\r\n', 1),
(21, 0, 19, 'null', '', ' Kế toán nói: \"Tôi nghĩ đó là 3 hoặc 4. Hãy để tôi chạy những số liệu đó qua bảng tính của mình một lần nữa.\" ', '2021-04-16 00:00:00', 'Truyện Vui\r\n', 1),
(22, 0, 19, 'null', '', 'Luật sư kéo rèm, làm mờ đèn và hỏi bằng một giọng kín tiếng,', '2021-04-16 00:00:00', 'Truyện Vui\r\n', 1),
(23, 0, 19, 'null', '', '\"Anh muốn nó là bao nhiêu?\"', '2021-04-16 00:00:00', 'Truyện Vui\r\n', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `creat_at` datetime NOT NULL,
  `expiration date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
