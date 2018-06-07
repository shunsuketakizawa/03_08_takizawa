-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 6 月 07 日 14:02
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_product`
--

CREATE TABLE IF NOT EXISTS `mst_product` (
`code` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `gazou` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_product`
--

INSERT INTO `mst_product` (`code`, `name`, `price`, `gazou`) VALUES
(25, 'aaa', 111, 'gazou.jpg'),
(27, 'aaa', 380, '01gazou.jpg');

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_staff`
--

CREATE TABLE IF NOT EXISTS `mst_staff` (
`code` int(11) NOT NULL,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_staff`
--

INSERT INTO `mst_staff` (`code`, `name`, `password`) VALUES
(2, 'shunsuke', '2c216b1ba5e33a27eb6d3df7de7f8c36'),
(3, 'shunsuke', '2c216b1ba5e33a27eb6d3df7de7f8c36'),
(4, 'syunnsuke', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'あああああああ１２３', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'shunsuke', '672e8789aeb63f7dd92d5f4dcc0a641a'),
(7, 'たきざわ', '672e8789aeb63f7dd92d5f4dcc0a641a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_product`
--
ALTER TABLE `mst_product`
 ADD PRIMARY KEY (`code`), ADD KEY `code` (`code`), ADD KEY `code_2` (`code`), ADD KEY `code_3` (`code`), ADD KEY `code_4` (`code`);

--
-- Indexes for table `mst_staff`
--
ALTER TABLE `mst_staff`
 ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_product`
--
ALTER TABLE `mst_product`
MODIFY `code` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `mst_staff`
--
ALTER TABLE `mst_staff`
MODIFY `code` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
