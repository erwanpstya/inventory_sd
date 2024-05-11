-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2024 at 10:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_sd`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `access_id` int(20) NOT NULL,
  `apps_id` varchar(200) DEFAULT NULL,
  `access_name` varchar(200) DEFAULT NULL,
  `host_name` varchar(200) DEFAULT NULL,
  `ip_address` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `api_key` varchar(200) DEFAULT NULL,
  `secret_key` varchar(200) DEFAULT NULL,
  `access_token` varchar(200) DEFAULT NULL,
  `key1` varchar(200) DEFAULT NULL,
  `key2` varchar(200) DEFAULT NULL,
  `key3` varchar(200) DEFAULT NULL,
  `key4` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `accessories_id` int(20) NOT NULL,
  `accessories_name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `brand_id` int(20) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `serial_no` varchar(200) DEFAULT NULL,
  `supplier_id` int(20) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `warranty_duration` varchar(200) DEFAULT NULL,
  `warranty_end_date` date DEFAULT NULL,
  `issue_to` varchar(200) DEFAULT NULL,
  `status` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `apps_id` int(20) NOT NULL,
  `apps_name` varchar(200) DEFAULT NULL,
  `apps_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(20) NOT NULL,
  `brand_name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `description`) VALUES
(1, 'Informa', ''),
(2, 'HP', 'Hewlet Pakert'),
(8, 'SNI', ''),
(10, 'IKEA', ''),
(11, 'ACE', 'ACE HARDWARE');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'Buku', 'Buku Pelajaran / Buku Baca'),
(2, 'Equipment', ''),
(3, 'ATK', ''),
(4, 'Jasa', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computer`
--

CREATE TABLE `computer` (
  `id` int(20) NOT NULL,
  `computer_name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `processor` varchar(200) DEFAULT NULL,
  `ram` varchar(200) DEFAULT NULL,
  `brand_id` int(20) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `os_id` int(20) DEFAULT NULL,
  `serial_no` varchar(200) DEFAULT NULL,
  `supplier_id` int(20) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `warranty_duration` varchar(200) DEFAULT NULL,
  `warranty_end_date` date DEFAULT NULL,
  `issue_to` varchar(200) DEFAULT NULL,
  `status` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`id`, `computer_name`, `type`, `description`, `processor`, `ram`, `brand_id`, `model`, `os_id`, `serial_no`, `supplier_id`, `purchase_date`, `warranty_duration`, `warranty_end_date`, `issue_to`, `status`) VALUES
(8, 'ONE', 'desktop', 'Dekstop Receptionist', 'Intel Core i3-2100 CPU @ 3.GHz (4 CPUs)', '3 GB', 0, 'CPU+Monitor', 75, '-', 0, '2017-01-01', '365', '2018-01-01', 'one', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `settings_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`settings_id`, `title`, `value`) VALUES
(3, 'system_name', 'Sistem Inventory Sekolah'),
(2, 'company_name', 'SDN 05 Kedung Waringin'),
(6, 'address', 'Jl. Perumahan Bukit Waringin No.23, Kedung Waringin, Kecamatan Bojonggede, Kabupaten Bogor, Jawa Barat 16923'),
(4, 'phone', '0810101010'),
(1, 'system_email', 'system@sdnnollima.sch.id');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `equipment_id` int(20) NOT NULL,
  `equipment_name` varchar(200) DEFAULT NULL,
  `category_id` int(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `brand_id` int(20) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `no_spk` varchar(200) DEFAULT NULL,
  `no_referensi` int(200) DEFAULT NULL,
  `supplier_id` int(20) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `warranty_duration` varchar(200) DEFAULT NULL,
  `warranty_end_date` date DEFAULT NULL,
  `issue_to` varchar(200) DEFAULT NULL,
  `status` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`equipment_id`, `equipment_name`, `category_id`, `description`, `brand_id`, `model`, `no_spk`, `no_referensi`, `supplier_id`, `purchase_date`, `warranty_duration`, `warranty_end_date`, `issue_to`, `status`) VALUES
(7, 'Meja Belajar', 2, 'Meja Belajar Anak SD', 11, '001', 'spk001', 0, NULL, '2024-05-12', NULL, NULL, 'Kelas 3', 1),
(8, 'Buku Pelajaran Matematika Algoritma', 1, 'Buku Pelajaran Matematika Algoritma Kelas 6', 8, 'model01', 'spk02', 0, NULL, '2024-04-29', NULL, NULL, 'Perpustakaan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

CREATE TABLE `ip` (
  `ip_id` int(20) NOT NULL,
  `host_name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `ipv4` varchar(200) DEFAULT NULL,
  `ipv6` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `subnet` varchar(200) DEFAULT NULL,
  `gateway` varchar(200) DEFAULT NULL,
  `dns1` varchar(200) DEFAULT NULL,
  `dns2` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `os`
--

CREATE TABLE `os` (
  `os_id` int(20) NOT NULL,
  `os_name` varchar(200) DEFAULT NULL,
  `os_desc` varchar(200) DEFAULT NULL,
  `platform` varchar(200) DEFAULT NULL,
  `developer` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `supplier_address` varchar(200) DEFAULT NULL,
  `supplier_phone` varchar(200) DEFAULT NULL,
  `supplier_email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `email`, `password`, `role`, `status`) VALUES
(1, 'Welcome Admin', 'erwan', 'erwan@sdn.com', 'ac4256575f3ccee1601f115d8a333551', 'admin', 1),
(2, 'User', 'user', 'user.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', 1),
(3, 'Admin', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`accessories_id`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`apps_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `access_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `accessories_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `apps_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `computer`
--
ALTER TABLE `computer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `equipment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ip`
--
ALTER TABLE `ip`
  MODIFY `ip_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `os`
--
ALTER TABLE `os`
  MODIFY `os_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
