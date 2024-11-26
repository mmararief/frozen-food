-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 02:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duta_frozen`
--

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `an` varchar(100) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `rekening` varchar(30) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pajak` varchar(50) NOT NULL,
  `jasa` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `map` longtext NOT NULL,
  `ig` varchar(50) NOT NULL,
  `dev` varchar(100) NOT NULL,
  `wa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id`, `logo`, `title`, `an`, `bank`, `rekening`, `hp`, `email`, `pajak`, `jasa`, `alamat`, `map`, `ig`, `dev`, `wa`) VALUES
(1, '83767514_803123746855346_6718225391007301632_n.jpg', 'Duta Frozen', 'Duta Frozen', 'Bank Mandiri', '1670001843779', '0828121059835', 'dutarozen@gmail.com', '', '', 'Jl. Pakis 8C No. 3 Blok BB11, RT.006/RW.012, Pekayon Jaya, Kec. Bekasi Selatan, Kota Bekasi, Jawa Barat 17148', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6124.59535975474!2d106.9613255!3d-6.2622594!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698d73d186319d%3A0x7a781b706b80dd5c!2sDapur%20Kynan!5e1!3m2!1sid!2sid!4v1714234090452!5m2!1sid!2sid\" width=\"100%\" height=\"430\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'https://www.instagram.com/dapur.kynan/', 'Dapur Kynan', 'https://api.whatsapp.com/send?phone=6281233245579');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Kue', '28 April 2024, 23:57'),
(8, 'Cemilan', '16 May 2024, 13:15'),
(9, 'Frozen Food', '16 May 2024, 13:15'),
(10, 'Buah', '16 May 2024, 13:15');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `via` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_produk` text NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `tanggal`, `via`, `nama`, `nama_produk`, `whatsapp`, `alamat`, `metode_pembayaran`, `jumlah`, `status`) VALUES
(19, '2024-11-26 13:46:44', 'Online', 'faiz', 'Roti Maryam  x1, Pastel x1, Samosa x1', '6281289778826', 'vip', 'BCA - 3431108079 - Arie Sutrisno', 45000, 'Selesai'),
(20, '2024-11-26 13:49:44', 'Online', 'faiz', 'Dimsum x1', '6281289778826', 'villa indah permai, bekasi utara', 'BCA - 3431108079 - Arie Sutrisno', 15000, 'Proses'),
(21, '2024-11-26 13:58:53', 'Online', 'Ammar', 'Roti Maryam  x1, Bakso Frozen x1', '628872588744', 'Prima', 'BCA - 3431108079 - Arie Sutrisno', 75000, 'Proses'),
(22, '2024-11-26 14:00:13', 'Online', 'Ammar', 'Roti Maryam  x1, Bakso Frozen x1', '628872588744', 'Prima', 'BCA - 3431108079 - Arie Sutrisno', 75000, 'Proses'),
(23, '2024-11-26 14:00:39', 'Online', 'ammar', 'Roti Maryam  x1', '6212312312', 'qweqwe', 'Mandiri - 1670001843779 - Arie Sutrisno', 5000, 'Proses'),
(24, '2024-11-26 14:03:23', 'Online', 'asdas', 'Roti Maryam  x1', '628872588744', 'asdasd', 'BCA - 3431108079 - Arie Sutrisno', 5000, 'Proses'),
(25, '2024-11-26 14:05:28', 'Online', 'asdas', 'Roti Maryam  x1', '628872588744', 'asdasd', 'BCA - 3431108079 - Arie Sutrisno', 5000, 'Proses'),
(26, '2024-11-26 14:05:52', 'Online', 'a', 'Roti Maryam  x1, Bakso Frozen x1', '628872588744', 'sdfsf', 'BCA - 3431108079 - Arie Sutrisno', 75000, 'Proses'),
(27, '2024-11-26 14:12:50', 'Online', 'faiz', 'Dimsum x1, Pastel x1', '6281289778826', 'villa indah permai, bekasi utara', 'BCA - 3431108079 - Arie Sutrisno', 35000, 'Proses'),
(28, '2024-11-26 14:15:20', 'Online', 'Ammar', 'Roti Maryam  x1', '628872588744', 'Prima', 'BCA - 3431108079 - Arie Sutrisno', 5000, 'Proses'),
(29, '2024-11-26 14:20:40', 'Online', 'Test', 'Bakso Frozen x1', '628872588744', 'Ee', 'BCA - 3431108079 - Arie Sutrisno', 70000, 'Proses'),
(30, '2024-11-26 14:28:26', 'Online', 'adit', 'Roti Maryam  x1', '6281289778826', 'depok', 'BCA - 3431108079 - Arie Sutrisno', 5000, 'Proses');

-- --------------------------------------------------------

--
-- Table structure for table `landingpage`
--

CREATE TABLE `landingpage` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `prom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landingpage`
--

INSERT INTO `landingpage` (`id`, `title`, `subtitle`, `prom`) VALUES
(1, 'Duta Frozen', 'Solusi praktis untuk Santapan lezat ', 'Kami menghadirkan beragam pilihan makanan beku premium yang siap memanjakan selera Anda. Dari seafood segar hingga olahan siap saji, Duta Frozen menjamin kualitas, kesegaran, dan kehigienisan produk kami. Nikmati kemudahan memasak dan kepuasan citarasa dalam setiap hidangan!');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Duta Frozen', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `sumber` varchar(255) DEFAULT NULL,
  `jumlah` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `tanggal`, `keterangan`, `sumber`, `jumlah`) VALUES
(4, '2024-05-14', 'Tip', 'TIP', 50000),
(5, '2024-05-13', 'Transfer Modal', 'ATM', 500000),
(6, '2024-05-15', 'Pembelian Produk', 'Penjualan', 50000),
(9, '2024-05-16', 'Penjualan', 'ATM', 50000),
(10, '2024-05-19', 'Kue Kering', 'Penjualan', 50000),
(12, '2024-05-19', 'kunyit asemm', 'Penjualan', 50000),
(13, '2024-05-19', 'peyek kacang dan rebon', 'Penjualan', 5000),
(14, '2024-05-17', 'peyek kacang dan rebon', 'Penjualan', 100000),
(15, '2024-05-19', 'Kue Kering', 'Penjualan', 50000),
(16, '2024-05-19', 'kue kering', 'Penjualan', 45000),
(17, '2024-05-17', 'Sosis solo, Sosis solo', 'Penjualan', 10000),
(18, '2024-05-17', 'mac n cheese, mac n cheese, Arem arem mie', 'Penjualan', 70000),
(19, '2024-05-19', 'sambal cumi baby, sambal cumi baby, sambal cumi baby', 'Penjualan', 180000),
(20, '2024-11-19', 'sambal cumi baby x1, kunyit asemm x1', 'Penjualan', 110000),
(21, '2024-11-19', 'kunyit asemm x1', 'Penjualan', 50000),
(22, '2024-11-19', 'kunyit asemm x1', 'Penjualan', 50000),
(23, '2024-11-26', 'Roti Maryam  x1, Pastel x1, Samosa x1', 'Penjualan', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `sumber` varchar(255) DEFAULT NULL,
  `jumlah` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `tanggal`, `keterangan`, `sumber`, `jumlah`) VALUES
(5, '2024-05-11', 'belanja', 'Lain-Lain', 5000),
(8, '2024-05-10', 'Beli batu es', 'Keperluan Pribadi', 10000),
(9, '2024-05-13', 'Beli Kopi', 'Keperluan Pribadi', 7000),
(11, '2024-05-11', 'tambal ban', 'Kendaraan', 20000),
(12, '2024-05-16', 'Belanja Bahan', 'Organisasi', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga` int(255) NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga`, `status`, `gambar`) VALUES
(30, 1, 'zuppa soup', 15000, 'Tidak PO', '1732624170.jpg'),
(31, 1, 'Donat', 20000, 'Tidak PO', '1732624209.jpg'),
(32, 9, 'Chicker Karage', 40000, 'Tidak PO', '1732624250.jpg'),
(33, 10, 'Kurma Ranuna', 80000, 'Tidak PO', '1732624295.jpg'),
(34, 8, 'Tekwan', 20000, 'Tidak PO', '1732624343.jpg'),
(35, 1, 'Roti Srikaya', 8000, 'Tidak PO', '1732624408.jpg'),
(36, 9, 'Tahu Baso', 20000, 'Tidak PO', '1732624444.jpg'),
(37, 10, 'Kurma NR', 90000, 'Tidak PO', '1732624476.jpg'),
(38, 9, 'Bebek ungkep frozen', 50000, 'Tidak PO', '1732624518.jpg'),
(39, 9, 'Gyoza isi 10', 30000, 'Tidak PO', '1732624595.jpg'),
(40, 9, 'Samosa', 20000, 'Tidak PO', '1732624652.jpg'),
(41, 9, 'Pastel', 20000, 'Tidak PO', '1732624696.jpg'),
(42, 9, 'Dimsum', 15000, 'Tidak PO', '1732624744.jpg'),
(43, 9, 'Bakso Frozen', 70000, 'Tidak PO', '1732624787.jpg'),
(44, 1, 'Roti Maryam ', 5000, 'Tidak PO', '1732625095.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `nama_bank`, `no_rekening`, `nama_pemilik`) VALUES
(1, 'BCA', '3431108079', 'Arie Sutrisno'),
(2, 'Mandiri', '1670001843779', 'Arie Sutrisno'),
(3, 'BSI', '7124518258', 'Arie Sutrisno');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landingpage`
--
ALTER TABLE `landingpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `landingpage`
--
ALTER TABLE `landingpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
