-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 12:10 PM
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
-- Database: `sistemkendaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `id`
--

CREATE TABLE `id` (
  `Id` int(2) NOT NULL,
  `Keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id`
--

INSERT INTO `id` (`Id`, `Keterangan`) VALUES
(1, 'Admin Utama'),
(2, 'Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` varchar(22) NOT NULL,
  `nama_kendaraan` varchar(50) NOT NULL,
  `merk_kendaraan` varchar(20) NOT NULL,
  `tahun_produksi` varchar(4) NOT NULL,
  `bpkb_kendaraan` varchar(15) NOT NULL,
  `nomor_polisi_merah` varchar(12) NOT NULL,
  `nomor_polisi_hitam` varchar(12) NOT NULL,
  `nomor_mesin` varchar(20) NOT NULL,
  `ket` enum('active','deleted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `nama_kendaraan`, `merk_kendaraan`, `tahun_produksi`, `bpkb_kendaraan`, `nomor_polisi_merah`, `nomor_polisi_hitam`, `nomor_mesin`, `ket`) VALUES
('121211212', 'bmw', 'bmw', 'bmw', 'bmw', 'bmw', '-', 'bmw', 'active'),
('142514521', '142514521', '142514521', '1425', '142514521', '142514521', '-', '142514521', 'deleted'),
('234', '234', '234', '234', '234', '234', '-', '234', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_peminjam` varchar(40) NOT NULL,
  `tujuan_peminjaman` varchar(20) NOT NULL,
  `jumlah_kendaraan` int(2) NOT NULL,
  `waktu_pinjam` datetime NOT NULL,
  `waktu_kembali` datetime NOT NULL,
  `keterangan_peminjaman` varchar(255) NOT NULL,
  `status_peminjaman` enum('Pending','Accepted','Rejected','Canceled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_peminjam`, `tujuan_peminjaman`, `jumlah_kendaraan`, `waktu_pinjam`, `waktu_kembali`, `keterangan_peminjaman`, `status_peminjaman`) VALUES
(6, '12345', 'Palembang', 100, '2023-01-01 15:18:00', '2023-01-01 15:20:00', '12345', 'Canceled'),
(7, '12345', 'Bangka', 100, '2023-01-01 16:46:00', '2023-02-01 15:47:00', 'asasa', 'Canceled'),
(8, '12345', 'Plaju', 25, '2023-01-02 15:02:00', '2023-01-01 15:01:00', 'test', 'Canceled'),
(9, '12345', 'Indralaya', 100, '2023-01-09 16:14:00', '2023-01-01 16:12:00', 'ywueywe', 'Rejected'),
(10, '12345', 'Tanjung Raja', 50, '2023-01-02 16:16:00', '2023-01-01 16:13:00', 'asjahas', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `plot_kendaraan`
--

CREATE TABLE `plot_kendaraan` (
  `id_plot` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_kendaraan` varchar(22) NOT NULL,
  `id_supir` varchar(20) NOT NULL,
  `ket` enum('ready','cancelled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plot_kendaraan`
--

INSERT INTO `plot_kendaraan` (`id_plot`, `id_peminjaman`, `id_kendaraan`, `id_supir`, `ket`) VALUES
(65, 6, '234', '123', 'ready'),
(66, 6, '234', '123', 'ready'),
(67, 6, '234', '123', 'ready'),
(68, 6, '234', '123', 'ready'),
(69, 6, '234', '123', 'ready'),
(70, 6, '234', '123', 'ready'),
(71, 6, '234', '123', 'ready'),
(72, 6, '234', '123', 'ready'),
(73, 6, '234', '123', 'ready'),
(74, 6, '234', '123', 'ready'),
(75, 6, '234', '123', 'ready'),
(76, 6, '234', '123', 'ready'),
(77, 6, '234', '123', 'ready'),
(78, 6, '234', '123', 'ready'),
(79, 6, '234', '123', 'ready'),
(80, 6, '234', '123', 'ready'),
(81, 6, '234', '123', 'ready'),
(82, 6, '234', '123', 'ready'),
(83, 6, '234', '123', 'ready'),
(84, 6, '234', '123', 'ready'),
(85, 6, '234', '123', 'ready'),
(86, 6, '234', '123', 'ready'),
(87, 6, '234', '123', 'ready'),
(88, 6, '234', '123', 'ready'),
(89, 6, '234', '123', 'ready'),
(90, 6, '234', '123', 'ready'),
(91, 6, '234', '123', 'ready'),
(92, 6, '234', '123', 'ready'),
(93, 6, '234', '123', 'ready'),
(94, 6, '234', '123', 'ready'),
(95, 6, '234', '123', 'ready'),
(96, 6, '234', '123', 'ready'),
(97, 6, '234', '123', 'ready'),
(98, 6, '234', '123', 'ready'),
(99, 6, '234', '123', 'ready'),
(100, 6, '234', '123', 'ready'),
(101, 6, '234', '123', 'ready'),
(102, 6, '234', '123', 'ready'),
(103, 6, '234', '123', 'ready'),
(104, 6, '234', '123', 'ready'),
(105, 6, '234', '123', 'ready'),
(106, 6, '234', '123', 'ready'),
(107, 6, '234', '123', 'ready'),
(108, 6, '234', '123', 'ready'),
(109, 6, '234', '123', 'ready'),
(110, 6, '234', '123', 'ready'),
(111, 6, '234', '123', 'ready'),
(112, 6, '234', '123', 'ready'),
(113, 6, '234', '123', 'ready'),
(114, 6, '234', '123', 'ready'),
(115, 6, '234', '123', 'ready'),
(116, 6, '234', '123', 'ready'),
(117, 6, '234', '123', 'ready'),
(118, 6, '234', '123', 'ready'),
(119, 6, '234', '123', 'ready'),
(120, 6, '234', '123', 'ready'),
(121, 6, '234', '123', 'ready'),
(122, 6, '234', '123', 'ready'),
(123, 6, '234', '123', 'ready'),
(124, 6, '234', '123', 'ready'),
(125, 6, '234', '123', 'ready'),
(126, 6, '234', '123', 'ready'),
(127, 6, '234', '123', 'ready'),
(128, 6, '234', '123', 'ready'),
(129, 6, '234', '123', 'ready'),
(130, 6, '234', '123', 'ready'),
(131, 6, '234', '123', 'ready'),
(132, 6, '234', '123', 'ready'),
(133, 6, '234', '123', 'ready'),
(134, 6, '234', '123', 'ready'),
(135, 6, '234', '123', 'ready'),
(136, 6, '234', '123', 'ready'),
(137, 6, '234', '123', 'ready'),
(138, 6, '234', '123', 'ready'),
(139, 6, '234', '123', 'ready'),
(140, 6, '234', '123', 'ready'),
(141, 6, '234', '123', 'ready'),
(142, 6, '234', '123', 'ready'),
(143, 6, '234', '123', 'ready'),
(144, 6, '234', '123', 'ready'),
(145, 6, '234', '123', 'ready'),
(146, 6, '234', '123', 'ready'),
(147, 6, '234', '123', 'ready'),
(148, 6, '234', '123', 'ready'),
(149, 6, '234', '123', 'ready'),
(150, 6, '234', '123', 'ready'),
(151, 6, '234', '123', 'ready'),
(152, 6, '234', '123', 'ready'),
(153, 6, '234', '123', 'ready'),
(154, 6, '234', '123', 'ready'),
(155, 6, '234', '123', 'ready'),
(156, 6, '234', '123', 'ready'),
(157, 6, '234', '123', 'ready'),
(158, 6, '234', '123', 'ready'),
(159, 6, '234', '123', 'ready'),
(160, 6, '234', '123', 'ready'),
(161, 6, '234', '123', 'ready'),
(162, 6, '234', '123', 'ready'),
(163, 6, '234', '123', 'ready'),
(164, 6, '234', '123', 'ready'),
(165, 7, '234', '123', 'ready'),
(166, 7, '234', '123', 'ready'),
(167, 7, '234', '123', 'ready'),
(168, 7, '234', '123', 'ready'),
(169, 7, '234', '123', 'ready'),
(170, 7, '234', '123', 'ready'),
(171, 7, '234', '123', 'ready'),
(172, 7, '234', '123', 'ready'),
(173, 7, '234', '123', 'ready'),
(174, 7, '234', '123', 'ready'),
(175, 7, '234', '123', 'ready'),
(176, 7, '234', '123', 'ready'),
(177, 7, '234', '123', 'ready'),
(178, 7, '234', '123', 'ready'),
(179, 7, '234', '123', 'ready'),
(180, 7, '234', '123', 'ready'),
(181, 7, '234', '123', 'ready'),
(182, 7, '234', '123', 'ready'),
(183, 7, '234', '123', 'ready'),
(184, 7, '234', '123', 'ready'),
(185, 7, '234', '123', 'ready'),
(186, 7, '234', '123', 'ready'),
(187, 7, '234', '123', 'ready'),
(188, 7, '234', '123', 'ready'),
(189, 7, '234', '123', 'ready'),
(190, 7, '234', '123', 'ready'),
(191, 7, '234', '123', 'ready'),
(192, 7, '234', '123', 'ready'),
(193, 7, '234', '123', 'ready'),
(194, 7, '234', '123', 'ready'),
(195, 7, '234', '123', 'ready'),
(196, 7, '234', '123', 'ready'),
(197, 7, '234', '123', 'ready'),
(198, 7, '234', '123', 'ready'),
(199, 7, '234', '123', 'ready'),
(200, 7, '234', '123', 'ready'),
(201, 7, '234', '123', 'ready'),
(202, 7, '234', '123', 'ready'),
(203, 7, '234', '123', 'ready'),
(204, 7, '234', '123', 'ready'),
(205, 7, '234', '123', 'ready'),
(206, 7, '234', '123', 'ready'),
(207, 7, '234', '123', 'ready'),
(208, 7, '234', '123', 'ready'),
(209, 7, '234', '123', 'ready'),
(210, 7, '234', '123', 'ready'),
(211, 7, '234', '123', 'ready'),
(212, 7, '234', '123', 'ready'),
(213, 7, '234', '123', 'ready'),
(214, 7, '234', '123', 'ready'),
(215, 7, '234', '123', 'ready'),
(216, 7, '234', '123', 'ready'),
(217, 7, '234', '123', 'ready'),
(218, 7, '234', '123', 'ready'),
(219, 7, '234', '123', 'ready'),
(220, 7, '234', '123', 'ready'),
(221, 7, '234', '123', 'ready'),
(222, 7, '234', '123', 'ready'),
(223, 7, '234', '123', 'ready'),
(224, 7, '234', '123', 'ready'),
(225, 7, '234', '123', 'ready'),
(226, 7, '234', '123', 'ready'),
(227, 7, '234', '123', 'ready'),
(228, 7, '234', '123', 'ready'),
(229, 7, '234', '123', 'ready'),
(230, 7, '234', '123', 'ready'),
(231, 7, '234', '123', 'ready'),
(232, 7, '234', '123', 'ready'),
(233, 7, '234', '123', 'ready'),
(234, 7, '234', '123', 'ready'),
(235, 7, '234', '123', 'ready'),
(236, 7, '234', '123', 'ready'),
(237, 7, '234', '123', 'ready'),
(238, 7, '234', '123', 'ready'),
(239, 7, '234', '123', 'ready'),
(240, 7, '234', '123', 'ready'),
(241, 7, '234', '123', 'ready'),
(242, 7, '234', '123', 'ready'),
(243, 7, '234', '123', 'ready'),
(244, 7, '234', '123', 'ready'),
(245, 7, '234', '123', 'ready'),
(246, 7, '234', '123', 'ready'),
(247, 7, '234', '123', 'ready'),
(248, 7, '234', '123', 'ready'),
(249, 7, '234', '123', 'ready'),
(250, 7, '234', '123', 'ready'),
(251, 7, '234', '123', 'ready'),
(252, 7, '234', '123', 'ready'),
(253, 7, '234', '123', 'ready'),
(254, 7, '234', '123', 'ready'),
(255, 7, '234', '123', 'ready'),
(256, 7, '234', '123', 'ready'),
(257, 7, '234', '123', 'ready'),
(258, 7, '234', '123', 'ready'),
(259, 7, '234', '123', 'ready'),
(260, 7, '234', '123', 'ready'),
(261, 7, '234', '123', 'ready'),
(262, 7, '234', '123', 'ready'),
(263, 7, '234', '123', 'ready'),
(264, 7, '234', '123', 'ready'),
(265, 8, '142514521', '123', 'ready'),
(266, 8, '142514521', '123', 'ready'),
(267, 8, '142514521', '123', 'ready'),
(268, 8, '142514521', '123', 'ready'),
(269, 8, '142514521', '123', 'ready'),
(270, 8, '142514521', '123', 'ready'),
(271, 8, '142514521', '123', 'ready'),
(272, 8, '142514521', '123', 'ready'),
(273, 8, '142514521', '123', 'ready'),
(274, 8, '142514521', '123', 'ready'),
(275, 8, '142514521', '123', 'ready'),
(276, 8, '142514521', '123', 'ready'),
(277, 8, '142514521', '123', 'ready'),
(278, 8, '142514521', '123', 'ready'),
(279, 8, '142514521', '123', 'ready'),
(280, 8, '142514521', '123', 'ready'),
(281, 8, '142514521', '123', 'ready'),
(282, 8, '142514521', '123', 'ready'),
(283, 8, '142514521', '123', 'ready'),
(284, 8, '142514521', '123', 'ready'),
(285, 8, '142514521', '123', 'ready'),
(286, 8, '142514521', '123', 'ready'),
(287, 8, '142514521', '123', 'ready'),
(288, 8, '142514521', '123', 'ready'),
(289, 8, '142514521', '123', 'ready'),
(290, 10, '121211212', '123', 'ready'),
(291, 10, '121211212', '123', 'ready'),
(292, 10, '121211212', '123', 'ready'),
(293, 10, '121211212', '123', 'ready'),
(294, 10, '121211212', '123', 'ready'),
(295, 10, '121211212', '123', 'ready'),
(296, 10, '121211212', '123', 'ready'),
(297, 10, '121211212', '123', 'ready'),
(298, 10, '121211212', '123', 'ready'),
(299, 10, '121211212', '123', 'ready'),
(301, 10, '121211212', '123', 'ready'),
(302, 10, '121211212', '123', 'ready'),
(303, 10, '121211212', '123', 'ready'),
(304, 10, '121211212', '123', 'ready'),
(305, 10, '121211212', '123', 'ready'),
(306, 10, '121211212', '123', 'ready'),
(307, 10, '121211212', '123', 'ready'),
(308, 10, '121211212', '123', 'ready'),
(309, 10, '121211212', '123', 'ready'),
(310, 10, '121211212', '123', 'ready'),
(311, 10, '121211212', '123', 'ready'),
(312, 10, '121211212', '123', 'ready'),
(313, 10, '121211212', '123', 'ready'),
(314, 10, '121211212', '123', 'ready'),
(315, 10, '121211212', '123', 'ready'),
(316, 10, '121211212', '123', 'ready'),
(317, 10, '121211212', '123', 'ready'),
(318, 10, '121211212', '123', 'ready'),
(319, 10, '121211212', '123', 'ready'),
(320, 10, '121211212', '123', 'ready'),
(321, 10, '121211212', '123', 'ready'),
(322, 10, '121211212', '123', 'ready'),
(323, 10, '121211212', '123', 'ready'),
(324, 10, '121211212', '123', 'ready'),
(325, 10, '121211212', '123', 'ready'),
(326, 10, '121211212', '123', 'ready'),
(327, 10, '121211212', '123', 'ready'),
(328, 10, '121211212', '123', 'ready'),
(329, 10, '121211212', '123', 'ready'),
(330, 10, '121211212', '123', 'ready'),
(331, 10, '121211212', '123', 'ready'),
(332, 10, '121211212', '123', 'ready'),
(333, 10, '121211212', '123', 'ready'),
(334, 10, '121211212', '123', 'ready'),
(335, 10, '121211212', '123', 'ready'),
(336, 10, '121211212', '123', 'ready'),
(337, 10, '121211212', '123', 'ready'),
(338, 10, '121211212', '123', 'ready'),
(339, 10, '121211212', '123', 'ready'),
(340, 10, '121211212', '123', 'ready'),
(341, 10, '121211212', '123', 'ready'),
(342, 10, '121211212', '123', 'ready'),
(343, 10, '121211212', '123', 'ready'),
(344, 10, '121211212', '123', 'ready'),
(345, 10, '121211212', '123', 'ready'),
(346, 10, '121211212', '123', 'ready'),
(347, 10, '121211212', '123', 'ready'),
(348, 10, '121211212', '123', 'ready'),
(349, 10, '121211212', '123', 'ready'),
(350, 10, '121211212', '123', 'ready');

-- --------------------------------------------------------

--
-- Table structure for table `servis_kendaraan`
--

CREATE TABLE `servis_kendaraan` (
  `id_servis` int(20) NOT NULL,
  `id_kendaraan` varchar(22) NOT NULL,
  `tanggal_servis` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `ket` enum('active','delete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servis_kendaraan`
--

INSERT INTO `servis_kendaraan` (`id_servis`, `id_kendaraan`, `tanggal_servis`, `keterangan`, `ket`) VALUES
(4, '234', '2023-01-01', '$_POST[\'kirim\']', 'active'),
(5, '234', '2023-01-16', 'sdsds', 'active'),
(6, '234', '2023-01-16', 'sdsds', 'active'),
(7, '234', '2023-01-24', 'test', 'active'),
(8, '234', '2023-01-12', 'awjaksjaks', 'active'),
(9, '234', '2023-01-12', 'Servis bas', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `supir`
--

CREATE TABLE `supir` (
  `id_supir` varchar(30) NOT NULL,
  `nama_supir` varchar(40) NOT NULL,
  `no_telepon_supir` varchar(15) NOT NULL,
  `alamat_supir` text NOT NULL,
  `ket` enum('active','deleted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supir`
--

INSERT INTO `supir` (`id_supir`, `nama_supir`, `no_telepon_supir`, `alamat_supir`, `ket`) VALUES
('123', 'Hadi', '0812718812', 'PLaju', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_pengguna` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `id` int(2) NOT NULL,
  `ket` enum('active','deleted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_pengguna`, `nama`, `password`, `email`, `no_telepon`, `id`, `ket`) VALUES
('12123', 'Admin 2', '121212', 'Admin 2', '71287182', 2, 'active'),
('123', 'Admin Utama', '123', 'Super Admin', '08123', 1, 'active'),
('1234', 'Admin', '1234', 'taufik@gmail.com', '085654545', 2, 'active'),
('12345', 'User', '12345', 'taufik@gmail.com', '08565565', 3, 'active'),
('13242', 'Taufiiqul Hakim', '13131311', 'Taufiiqul Hakim', '1627121', 2, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `id`
--
ALTER TABLE `id`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_peminjam` (`id_peminjam`);

--
-- Indexes for table `plot_kendaraan`
--
ALTER TABLE `plot_kendaraan`
  ADD PRIMARY KEY (`id_plot`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_kendaraan` (`id_kendaraan`),
  ADD KEY `id_sopir` (`id_supir`);

--
-- Indexes for table `servis_kendaraan`
--
ALTER TABLE `servis_kendaraan`
  ADD PRIMARY KEY (`id_servis`),
  ADD KEY `id_kendaraan` (`id_kendaraan`),
  ADD KEY `id_kendaraan_2` (`id_kendaraan`);

--
-- Indexes for table `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`id_supir`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `Id` (`id`),
  ADD KEY `Id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `plot_kendaraan`
--
ALTER TABLE `plot_kendaraan`
  MODIFY `id_plot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `servis_kendaraan`
--
ALTER TABLE `servis_kendaraan`
  MODIFY `id_servis` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_peminjam`) REFERENCES `user` (`id_pengguna`);

--
-- Constraints for table `plot_kendaraan`
--
ALTER TABLE `plot_kendaraan`
  ADD CONSTRAINT `plot_kendaraan_ibfk_1` FOREIGN KEY (`id_supir`) REFERENCES `supir` (`id_supir`),
  ADD CONSTRAINT `plot_kendaraan_ibfk_2` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`),
  ADD CONSTRAINT `plot_kendaraan_ibfk_3` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`);

--
-- Constraints for table `servis_kendaraan`
--
ALTER TABLE `servis_kendaraan`
  ADD CONSTRAINT `servis_kendaraan_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `id` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
