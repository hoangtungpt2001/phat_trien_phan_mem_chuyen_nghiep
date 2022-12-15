-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 02:04 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `pass` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `isSell` int(2) DEFAULT NULL,
  `isAdmin` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `user`, `pass`, `isSell`, `isAdmin`) VALUES
(1, 'hoangngoctung', 'hoangngoctung', 1, 0),
(2, 'admin', 'admin', 0, 1),
(3, 'phamdinhvan', 'phamdinhvan', 1, 0),
(4, 'nguyenichnguyen', 'nguyenichnguyen', 0, 0),
(5, 'maianhbac', 'maianhbac', 0, 0),
(35, 'tung', 'tung', 0, 0),
(36, 'phamdinhvan1', 'phamdinhvan1', 0, 0),
(37, 'hophuong', 'hophuong', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(5000) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'Giày ADIDAS'),
(2, 'Giày NIKE'),
(3, 'Giày CONVERSE'),
(4, 'Giày VANS');

-- --------------------------------------------------------

--
-- Table structure for table `oder`
--

CREATE TABLE `oder` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `oder`
--

INSERT INTO `oder` (`id`, `aid`, `pid`, `quantity`, `date`) VALUES
(34, 2, 5, 1, '2022-12-15'),
(35, 3, 7, 2, '2022-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `image` varchar(5000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `description` varchar(5000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sexid` int(2) DEFAULT NULL,
  `cateid` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `title`, `description`, `sexid`, `cateid`, `sell_id`, `quantity`) VALUES
(5, 'Giày CONVERSE', 'https://giaygiare.vn/upload/sanpham/thumbs/converse-chuck-70-plus-white.jpg', 1200, 'CONVERSE CHUCK 70 PLUS WHITE', 'Giày CONVERSE trắng siêu đẹp', 2, 3, 1, 20),
(6, 'Giày CONVERSE', 'https://giaygiare.vn/upload/sanpham/thumbs/converse-chuck-70-plus-black.jpg', 400, 'CONVERSE CHUCK 70 PLUS BLACK\r\n', 'Giày CONVERSE CHUCK 70 PLUS BLACK màu đen đẳng cấp\r\n', 2, 3, 3, 25),
(7, 'giày VANS', 'https://giaygiare.vn/upload/sanpham/thumbs/vans-fear-of-god-nam-nu.jpg', 200, 'VANS FEAR OF GOD NAM, NỮ\r\n', 'Giày VANS thiết kế thời thượng', 2, 4, 1, 5),
(11, 'Giày Nike', 'https://cf.shopee.vn/file/fe943422073beca23cf3c9322aefd974', 100, 'nike air force 1 auth', 'Giày siêu siêu đẹp', NULL, 2, 1, 18),
(13, 'giay nike', 'https://vn-live-01.slatic.net/p/8fc8b0949d42407908e0467ee45f21d5.jpg', 140, 'qua ok', 'aaa', NULL, 2, 1, 0),
(14, 'giay nike', 'https://vn-live-01.slatic.net/p/8fc8b0949d42407908e0467ee45f21d5.jpg', 100, 'qua ok llaaaaa', 'giày đi bộ', NULL, 4, 3, 0),
(15, 'giay nike', 'https://vn-live-01.slatic.net/p/8fc8b0949d42407908e0467ee45f21d5.jpg', 140, 'da sua', 'aaa', NULL, 1, 1, 0),
(16, 'giay nike', 'https://vn-live-01.slatic.net/p/8fc8b0949d42407908e0467ee45f21d5.jpg', 140, 'đi ngủ', 'aaa', NULL, 1, 1, 0),
(17, 'ngoctung', 'https://vn-live-01.slatic.net/p/8fc8b0949d42407908e0467ee45f21d5.jpg', 100, 'qua ok', 'giày xấu', NULL, 1, 1, 0),
(20, 'giày nike siêu cute', 'https://vn-live-01.slatic.net/p/8fc8b0949d42407908e0467ee45f21d5.jpg', 100, 'giày jhodan', 'giày đẹp', NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sex`
--

CREATE TABLE `sex` (
  `sexid` int(11) NOT NULL,
  `sex` varchar(5000) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sex`
--

INSERT INTO `sex` (`sexid`, `sex`) VALUES
(1, 'Nam'),
(2, 'Nữ\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lienket_account` (`aid`),
  ADD KEY `lienket_product` (`pid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lienket_category` (`cateid`),
  ADD KEY `ketnoi_sell` (`sell_id`);

--
-- Indexes for table `sex`
--
ALTER TABLE `sex`
  ADD PRIMARY KEY (`sexid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sex`
--
ALTER TABLE `sex`
  MODIFY `sexid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oder`
--
ALTER TABLE `oder`
  ADD CONSTRAINT `lienket_account` FOREIGN KEY (`aid`) REFERENCES `account` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `ketnoi_sell` FOREIGN KEY (`sell_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `lienket_category` FOREIGN KEY (`cateid`) REFERENCES `category` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
