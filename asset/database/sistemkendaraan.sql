-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 11:42 AM
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
(1, 'Sekertaris'),
(2, 'Kassubag'),
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
('123', 'Sekertaris', '123', 'Sekertaris', '08123', 1, 'active'),
('1234', 'Kassubag', '1234', 'taufik@gmail.com', '085654545', 2, 'active'),
('Binmas123', 'Binmas', 'Binmas123', 'Binmas@gmail.com', '081928198192', 3, 'active'),
('Damkar123', 'Damkar', 'Damkar123', 'Damkar@gmail.com', '08128911982', 3, 'active'),
('Linmas123', 'Linmas\n', 'Linmas123', 'Linmas@gmail.com', '085645232121', 3, 'active'),
('P3123', 'P3', 'P3123', 'P3@gmail.com', '08127812781', 3, 'active'),
('Tibum123', 'Tibum', 'Tibum123', 'taufik@gmail.com', '08565565', 3, 'active');

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
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `plot_kendaraan`
--
ALTER TABLE `plot_kendaraan`
  MODIFY `id_plot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `servis_kendaraan`
--
ALTER TABLE `servis_kendaraan`
  MODIFY `id_servis` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
