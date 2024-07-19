-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2024 at 10:49 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u233021038_kostanin`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `no_kamar` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fasilitas` varchar(255) NOT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kritik`
--

CREATE TABLE `kritik` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `kritik` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kritik`
--

INSERT INTO `kritik` (`id`, `nama`, `no_hp`, `kritik`, `created_at`) VALUES
(13, 'user123', '08888888888', 'Mohon maaff buk, dindingnya jebol/01', '2024-06-28 11:45:00'),
(15, 'surya', '000', 'kamar mandi bocor\r\n', '2024-07-16 08:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_kamar` varchar(20) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `jumlah_bayar` varchar(255) NOT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `id_user`, `nama`, `no_kamar`, `tanggal_pembayaran`, `jumlah_bayar`, `bukti_pembayaran`) VALUES
(16, 1, 'user', '1', '2024-07-12', '21112', 'Screenshot 2024-07-11 at 11.13.15.png'),
(17, 123456, 'Aulia', '02', '2024-07-13', '500.000', ''),
(18, 987654, 'Desi', '03', '2024-07-13', '1.500.000', 'bukti tf.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `durasi_sewa` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `jenis_bayar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `nama`, `durasi_sewa`, `nominal`, `jenis_bayar`) VALUES
(24, 'user123', '3 Bulan', '1.500.000', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telepon` varchar(11) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no`, `username`, `password`, `role`, `nama`, `no_telepon`, `alamat`) VALUES
(46, 'admin', 'admin', 'administrator', 'admin123', '08888888888', 'Condongcatur, Depok, Sleman'),
(53, 'user', 'user', 'user', 'user123', '08888888888', 'Condongcatur, Depok, Sleman'),
(55, 'admin1', 'admin1', 'user', 'Aulia Ratih Kuncoro', '08888888888', 'Condongcatur, Depok, Sleman'),
(56, 'novita', 'novita', 'administrator', 'Novita', '08888888888', 'Sleman'),
(57, 'surya', 'surya', 'user', 'Surya', '08888888888', 'Sleman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `kritik`
--
ALTER TABLE `kritik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `kritik`
--
ALTER TABLE `kritik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
