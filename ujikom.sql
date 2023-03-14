-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 04:26 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom2`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('327789065450958', 'ririn', 'riri', '989', '0897665347688'),
('32779070666685949', 'faris', 'aris', '321', '0897755535'),
('32779796975596', 'Abyan Athar', 'aby', '123', '08977447589'),
('3576497103910001', 'Anggi Puspita Dewi', 'anggii', '123', '081212546716'),
('6307116604930001', 'Arabella Deolinda', 'arabella', '123', '08917420536'),
('6309061512810002', 'Renatha Zeindra', 'rena', '123', '08974690218'),
('637103190795004', 'Aisyah Ayudisha', 'aisyah', '123', '08974295470'),
('6371032209970004', 'Bima Kusuma', 'bima', '123', '08214790321'),
('6371036706970004', 'Zaskia Wardhana', 'zaskia', '123', '08387690396'),
('6371051208990005', 'Raditya Feindrawan', 'raditya', '123', '082854280481');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(36, '2023-02-26', '6307116604930001', 'Hujan yang terjadi akhir-akhir ini membuat daerah Leuwigajah banjir, namun banjir bukan hanya disebabkan oleh hujan saja tapi juga disebabkan oleh masyarakat nya yang sering membuang sampah sembarangan. Mohon segera ditindaklanjuti demi kenyamanan bersama.', 'Banjir Daerah Leuwigajah.jpg', 'selesai'),
(38, '2023-02-26', '637103190795004', 'Pukul 1 tadi malam ketika saya pulang kerja saya melewati jalan Margaasih dan tidak sengaja melihat sekumpulan remaja yang sedang melakukan balap liar dengan knalpot berisik. Ini akan membuat masyarakat sekitar tidak nyaman, mohon ditindaklanjuti. ', 'Balap Liar.jpg', 'selesai'),
(39, '2023-02-26', '6371032209970004', 'Sudah berkali-kali tembok tempat saya berjualan di coret-coret oleh orang-orang tidak bertanggung jawab, saya sudah beberapa kali melihat wajahnya dan sudah sering saya tegur namun mereka tidak menghiraukan. Tolong ditindaklanjuti agar hal ini tidak terjadi lagi kepada saya ataupun orang lain. Saya berjualan di daerah Cigugur Tengah, tepat di depan Puskesmas.', 'Coretan Tembok.jpg', 'selesai'),
(40, '2023-02-26', '6309061512810002', 'Saya membuka toko kelontong di Pasar Andir, sudah sejak dua tahun lalu saya berjualan disitu dan tidak pernah berpindah tempat/ruko. Namun sejak sebulan terakhir, ada beberapa orang yang melakukan pungutan liar kepada pedagang, termasuk saya. Hal ini membuat kami para pedagang resah, tolong ditindaklanjuti secepatnya. ', 'Pungli.jpg', 'selesai'),
(42, '2023-02-26', '6371036706970004', 'Di daerah Jalan Budi sudah diberikan tanda jangan membuang sampah sembarangan, namun masih banyak warga yang membuang sampah ditempat tersebut. Mohon segera ditindaklanjuti karena jika hal ini dibiarkan akan berakibat fatal.', 'Buang Sampah Sembarangan.jpg', 'selesai'),
(43, '2023-02-26', '6371051208990005', 'Tadi siang ketika saya sedang berkendara di sekitar Cimahi Mall, saya melihat sekumpulan remaja yang diam ditengah jalan dan menghalangi truk yang sedang melintas. Jika truk tsb tidak segera berhenti, remaja-remaja itu akan celaka. Saya mohon tindaklanjuti agar tidak ada korban.', 'Remaja Menghadang Truk.jpg', 'selesai'),
(44, '2023-02-27', '3277855944809', 'terjadi gunung meletus di bromo', 'gunung meletus.jpg', 'selesai'),
(45, '2023-02-27', '3277855944809', '', '', '0'),
(46, '2023-02-27', '2344', '', '', '0'),
(47, '2023-02-27', '6371032209970004', '', '', '0'),
(48, '2023-03-05', '32779070666685949', 'hdgligfihgjhsdiowfhwl', 'Pohon Tumbang.jpg', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'admin', 'admin', 'admin', '0876252038', 'admin'),
(2, 'petugas', 'petugas', 'petugas', '08389572047', 'petugas'),
(18, 'admin', 'anggi', '123', '62846383628', 'admin'),
(19, 'icha', 'ichi', '456', '0897665545', 'petugas'),
(20, 'icha', 'admin', '777', '6258644448', 'petugas'),
(21, 'aaaaa', 'admin', '123', '6258644448', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` varchar(250) NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(32, 36, '2023-02-26', 'Terimakasih atas laporan yang telah anda berikan, kami akan memproses laporan ini lebih lanjut dan akan memastikan bahwa hal ini tidak akan terjadi lagi.', 1),
(33, 38, '2023-02-26', 'Laporan telah kami terima dan kasus tersebut akan diproses oleh pihak kepolisian. Terimakasih atas laporan yang telah anda berikan.', 1),
(34, 39, '2023-02-26', 'Terimakasih telah menyampaikan hal ini, laporan anda akan segera kami proses dan kami tindaklanjuti. Kami pastikan anda ataupun orang lain tidak mengalami hal ini lagi.', 1),
(35, 40, '2023-02-26', 'Kami telah menerima laporan anda, hal ini akan segera ditindaklanjuti oleh kepolisian sekitar dalam kurun waktu 24 jam. ', 1),
(36, 42, '2023-02-26', 'Terimakasih telah melaporkan, laporan ini akan ditindaklanjuti oleh petugas kebersihan setempat dalam waktu selambat-lambatnya dua hari. ', 1),
(37, 43, '2023-02-26', 'Terimakasih telah melaporkan. Laporan ini akan segera kami teruskan ke pihak kepolisan, dan kami pastikan hal ini tidak akan terjadi lagi. ', 1),
(38, 44, '2023-02-27', 'sudah ditanggapi', 1),
(39, 48, '2023-03-05', 'okkk', 1),
(40, 48, '2023-03-05', 'okkk', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
