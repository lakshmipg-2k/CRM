-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 02:04 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `firstname`, `phonenumber`, `address`) VALUES
(1, 'admin', 'admin123', 'Lucky', '1234567891', 'Kolar');

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

CREATE TABLE `prequest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `wdd` varchar(255) DEFAULT NULL,
  `cms` varchar(255) DEFAULT NULL,
  `seo` varchar(255) DEFAULT NULL,
  `smo` varchar(255) DEFAULT NULL,
  `swd` varchar(255) DEFAULT NULL,
  `dwd` varchar(255) DEFAULT NULL,
  `fwd` varchar(255) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  `whs` varchar(255) DEFAULT NULL,
  `wm` varchar(255) DEFAULT NULL,
  `ed` varchar(255) DEFAULT NULL,
  `wta` varchar(255) DEFAULT NULL,
  `opi` varchar(255) DEFAULT NULL,
  `ld` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `osc` varchar(255) DEFAULT NULL,
  `nd` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `wdd`, `cms`, `seo`, `smo`, `swd`, `dwd`, `fwd`, `dr`, `whs`, `wm`, `ed`, `wta`, `opi`, `ld`, `da`, `osc`, `nd`, `others`, `query`, `posting_date`, `remark`, `status`) VALUES
(2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', '8765435212', 'ABC', 'Website Design & Development', '', '', '', '', '', '', 'Domain Registration', '', '', '', '', '', '', '', '', '', '', 'Test', '2022-06-06', NULL, NULL),
(3, 'Lakshmi PG', 'lakshmi.pg@outlook.com', '8765435212', 'ABC', 'Website Design & Development', '', 'SEO (Search Engine Optimization)', '', 'Static Website Design', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Test', '2022-06-09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(11) DEFAULT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext DEFAULT NULL,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(13, '6', 'lakshmi.pg@outlook.com', 'Test', 'billing', 'important', 'test', NULL, 'closed', 'closed', '2022-05-29', '2022-06-01 02:45:03'),
(14, '7', 'lakshmi.pg@outlook.com', 'Test', 'billing', 'important', 'test', NULL, 'closed', 'solved\r\n', '2022-05-29', '2022-06-08 22:20:56'),
(15, '7', 'lakshmi.pg@outlook.com', 'Test', 'billing', 'important', 'Test', NULL, 'Open', NULL, '2022-06-06', '2022-06-06 18:32:19'),
(16, '1', 'lakshmi.pg@outlook.com', 'Test', 'ot1', 'important', 'Test', NULL, 'Open', NULL, '2022-06-09', '2022-06-08 22:18:09'),
(17, '2', 'lakshmi.pg@outlook.com', 'Test', 'billing', 'important', 'Test', NULL, 'Open', NULL, '2022-06-09', '2022-06-08 22:20:01'),
(18, '8', 'lakshmi.pg@outlook.com', 'Test', 'billing', 'important', 'h', NULL, 'Open', NULL, '2022-06-09', '2022-06-08 23:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`) VALUES
(3, 'A', 'a@outlook.com', NULL, '123', '8765435212', 'm', NULL, NULL, '2022-06-07 22:53:20'),
(2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 'lakshmi.pg@outlook.com', '123', '8765435212', 'f', 'Kolar', NULL, '2022-05-28 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

CREATE TABLE `usercheck` (
  `id` int(11) NOT NULL,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(16) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(30, '2022/06/09', '05:17:23am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(29, '2022/06/09', '04:55:29am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(28, '2022/06/09', '03:41:37am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(27, '2022/06/08', '01:25:59am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(26, '2022/06/08', '11:23:03pm', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(25, '2022/06/08', '11:05:44am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(24, '2022/06/08', '04:23:45am', 3, 'A', 'A@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(23, '2022/06/07', '11:26:40pm', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(22, '2022/06/07', '09:47:52am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(18, '2022/06/06', '11:47:40pm', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(19, '2022/06/06', '12:31:54am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(20, '2022/06/06', '01:57:07am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', ''),
(21, '2022/06/07', '03:53:25am', 2, 'Lakshmi PG', 'lakshmi.pg@outlook.com', 0x3a3a31, 0x41302d32392d31392d36382d37392d35, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prequest`
--
ALTER TABLE `prequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercheck`
--
ALTER TABLE `usercheck`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prequest`
--
ALTER TABLE `prequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usercheck`
--
ALTER TABLE `usercheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
