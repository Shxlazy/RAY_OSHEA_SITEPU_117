-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 07:08 AM
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
-- Database: `db_wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `penghasilan`
--

CREATE TABLE `penghasilan` (
  `id` varchar(11) NOT NULL,
  `nama_wisata` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penghasilan`
--

INSERT INTO `penghasilan` (`id`, `nama_wisata`, `deskripsi`, `gambar`) VALUES
('100', '', 'Jagung (Zea mays ssp. mays) adalah salah satu tanaman pangan penghasil karbohidrat yang terpenting di dunia, selain gandum dan padi. Bagi penduduk Amerika Tengah dan Selatan, bulir jagung adalah pangan pokok, sebagaimana bagi sebagian penduduk Afrika dan beberapa daerah di Indonesia. Pada masa kini, jagung juga sudah menjadi komponen penting pakan ternak. Penggunaan lainnya adalah sebagai sumber minyak pangan dan bahan dasar tepung maizena. Berbagai produk turunan hasil jagung menjadi bahan baku berbagai produk industri farmasi, kosmetika, dan kimia.', '13072023224436'),
('101', '', 'Kemiri (Aleurites moluccana) adalah tumbuhan yang bijinya dimanfaatkan sebagai sumber minyak dan rempah-rempah. Tumbuhan ini masih sekerabat dengan singkong dan termasuk dalam suku Euphorbiaceae. Dalam perdagangan antarnegara dikenal sebagai candleberry, Indian walnut, serta candlenut.', '13072023224757');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'erlambang', 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` varchar(11) NOT NULL,
  `nama_wisata` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama_wisata`, `deskripsi`, `gambar`) VALUES
('100', 'Pemandian Lau Timah', 'Desa Renun berada di Kecamatan Tanah Pinem yang dengan posisi  batas di sebelah Timur Desa Mangan Molih dan Kecamatan Lau Baleng (Kabupaten Karo, disebelah Barat berbatasan dengan Kecamatan Lau Baleng (Kabupaten Karo), di Sebelah Utara berbatasan dengan Kecamatan Lau Baleng (Kabupaten Karo), di sebelah Selatan berbatasan dengan Desa Mangan Molih dan Desa Lau Njuhar I. posisi Desa Renun juga berada di Daerah Aliran Sungai Lau Renun.', '13072023213914');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
