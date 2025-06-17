-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2025 at 02:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas_230302044`
--

-- --------------------------------------------------------

--
-- Table structure for table `magang`
--

CREATE TABLE `magang` (
  `id_magang` int NOT NULL,
  `npm_mhs` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_perusahaan` int DEFAULT NULL,
  `nidn_pembimbing` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `status_magang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `magang`
--

INSERT INTO `magang` (`id_magang`, `npm_mhs`, `id_perusahaan`, `nidn_pembimbing`, `tgl_mulai`, `tgl_selesai`, `status_magang`) VALUES
(3, '230102030', 3010, '2000002', '2025-08-15', '2025-09-15', 'mandiri');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm_mhs` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_mhs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `prodi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `no_telp` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm_mhs`, `nama_mhs`, `prodi`, `alamat`, `no_telp`, `email`) VALUES
('230102030', 'Aulia Zuifani', 'Teknik Informatika', 'Jalan Ternate', '089979110352', 'Fani@gmail.com'),
('230102031', 'Aulia Zuifani', 'Teknik Informatika', 'Jalan Ternate', '089979110352', 'Fani@gmail.com'),
('230102039', 'Muhammad Alva Rezal', 'Teknik Informatika', 'Jalan Kuntul', '089979110281', 'Rezal@gmail.com'),
('230102040', 'Noni Aprillia', 'Teknik Informatika', 'Jalan Kuntul', '089979110052', 'Noni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing`
--

CREATE TABLE `pembimbing` (
  `nidn_pembimbing` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nama_pembimbing` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `no_telp` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pembimbing`
--

INSERT INTO `pembimbing` (`nidn_pembimbing`, `email`, `nama_pembimbing`, `no_telp`) VALUES
('2000001', 'adphr@gmail.com', 'Andesita Prihantara, S.T., M. Eng.', '811223344155'),
('2000002', 'fjrmdk@gmail.com', 'Fajar Mahardika, S.Kom., M.Kom', '813445566787');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int NOT NULL,
  `nama_perusahaan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `no_telp` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email_perusahaan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_perusahaan`, `no_telp`, `alamat`, `email_perusahaan`) VALUES
(3010, 'PT. Maju Sejahtera', '92187654321', 'Jl. Sudirman No.5, Jakarta', 'admin@ptmajusejahtera.com'),
(3011, 'PT. Dharmapala Usaha Sukses', '8123679152', 'Jl. Tambakreja', 'dusclp@gmail.com'),
(3012, 'PT Sukses Selalu', '08234567890', 'Jl. Bisnis N0.456, Bandung', 'contact@suksesselalu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'aulia', '11111', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_magangg`
-- (See below for the actual view)
--
CREATE TABLE `v_magangg` (
`nama_mhs` varchar(20)
,`nama_pembimbing` varchar(50)
,`id_perusahaan` int
,`nama_perusahaan` varchar(50)
,`tgl_mulai` date
,`tgl_selesai` date
,`status_magang` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_magangg`
--
DROP TABLE IF EXISTS `v_magangg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_magangg`  AS SELECT `mahasiswa`.`nama_mhs` AS `nama_mhs`, `pembimbing`.`nama_pembimbing` AS `nama_pembimbing`, `perusahaan`.`id_perusahaan` AS `id_perusahaan`, `perusahaan`.`nama_perusahaan` AS `nama_perusahaan`, `magang`.`tgl_mulai` AS `tgl_mulai`, `magang`.`tgl_selesai` AS `tgl_selesai`, `magang`.`status_magang` AS `status_magang` FROM (((`magang` join `mahasiswa` on((`magang`.`npm_mhs` = `mahasiswa`.`npm_mhs`))) join `pembimbing` on((`magang`.`nidn_pembimbing` = `pembimbing`.`nidn_pembimbing`))) join `perusahaan` on((`magang`.`id_perusahaan` = `perusahaan`.`id_perusahaan`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `magang`
--
ALTER TABLE `magang`
  ADD PRIMARY KEY (`id_magang`) USING BTREE,
  ADD UNIQUE KEY `npm_mhs` (`npm_mhs`,`id_perusahaan`) USING BTREE,
  ADD KEY `id_perusahaan` (`id_perusahaan`) USING BTREE,
  ADD KEY `nidn_pembimbing` (`nidn_pembimbing`) USING BTREE;

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm_mhs`) USING BTREE;

--
-- Indexes for table `pembimbing`
--
ALTER TABLE `pembimbing`
  ADD PRIMARY KEY (`nidn_pembimbing`) USING BTREE;

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `magang`
--
ALTER TABLE `magang`
  MODIFY `id_magang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3013;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `magang`
--
ALTER TABLE `magang`
  ADD CONSTRAINT `magang_ibfk_1` FOREIGN KEY (`npm_mhs`) REFERENCES `mahasiswa` (`npm_mhs`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `magang_ibfk_2` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `magang_ibfk_3` FOREIGN KEY (`nidn_pembimbing`) REFERENCES `pembimbing` (`nidn_pembimbing`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
