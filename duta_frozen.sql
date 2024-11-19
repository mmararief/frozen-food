-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 10:50 AM
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
(1, 'Cake dan Roti', '28 April 2024, 23:57'),
(8, 'Cemilan', '16 May 2024, 13:15'),
(9, 'Healthy Drink', '16 May 2024, 13:15'),
(10, 'Sambal dan Bumbu', '16 May 2024, 13:15'),
(12, 'Minuman', '16 May 2024, 13:17');

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
(1, '2024-05-17 12:39:46', 'Online', 'fiqih alamsyah', 'mac n cheese, mac n cheese, Arem arem mie', '081286820815', 'setiadarma', 'BCA - 3431108079 - Arie Sutrisno', 70000, 'Selesai'),
(2, '2024-05-17 12:42:36', 'Online', 'fiqih alamsyah', 'Sosis solo, Sosis solo', '081286820815', 'Gunadarma', 'QR Dana', 10000, 'Selesai'),
(9, '2024-05-19 00:00:00', 'Offline', 'fiqih alamsyah', 'kue kering', '6281213417445', '', 'Cash', 45000, 'Selesai'),
(10, '2024-05-19 00:00:00', 'Offline', 'Aini', 'Kue Kering', '6285718705615', '', 'Hutang', 50000, 'Selesai'),
(11, '2024-05-17 00:00:00', 'Offline', 'Aini', 'peyek kacang dan rebon', '6285718705615', '', 'Cash', 100000, 'Selesai'),
(12, '2024-05-19 13:21:38', 'Online', 'fiqih alamsyah', 'peyek kacang dan rebon', '081286820815', '', 'QR Dana', 5000, 'Selesai'),
(13, '2024-05-19 13:23:39', 'Online', 'fiqih alamsyah', 'kunyit asemm', '081286820815', '', 'BCA - 3431108079 - Arie Sutrisno', 50000, 'Selesai'),
(14, '2024-05-19 13:30:32', 'Online', 'fiqih alamsyah', 'sambal cumi baby, sambal cumi baby, sambal cumi baby', '6281286820815', 'setiadarma', 'Mandiri - 1670001843779 - Arie Sutrisno', 180000, 'Selesai'),
(15, '2024-11-19 09:37:33', 'Online', 'ammar', 'kunyit asemm x1, mac n cheese x3, Lumpia Semarang x1', '628872588744', 'asdas', 'BCA - 3431108079 - Arie Sutrisno', 120000, 'Proses'),
(16, '2024-11-19 09:59:48', 'Online', 'dsadas', 'kunyit asemm x1, mac n cheese x1, peyek kacang dan rebon x1, Pastel bihun x1, Bongko pisang x1, Lapis Pelangi x1, Bubur sumsum x1, Arem arem mie x1, Ketan serundeng x1, Pukis x1, Lumpia Semarang x1', '62231312213123', '123123123', 'Mandiri - 1670001843779 - Arie Sutrisno', 166000, 'Proses'),
(17, '2024-11-19 10:06:02', 'Online', 'asdasd', 'kunyit asemm x1', '628872588744', 'dqwd', 'BCA - 3431108079 - Arie Sutrisno', 50000, 'Selesai'),
(18, '2024-11-19 10:07:36', 'Online', 'DSA', 'sambal cumi baby x1, kunyit asemm x1', '622313123', 'ASDASDASD', 'BCA - 3431108079 - Arie Sutrisno', 110000, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `landingpage`
--

CREATE TABLE `landingpage` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `prom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landingpage`
--

INSERT INTO `landingpage` (`id`, `title`, `subtitle`, `prom`) VALUES
(1, 'Duta Frozen', 'Temani Harimu dengan Cemilan Istimewa', 'Berbagai macam cemilan homemade dari bahan pilihan hadir disini');

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
(1, 'Kynan', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

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
(22, '2024-11-19', 'kunyit asemm x1', 'Penjualan', 50000);

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
(1, 1, 'Bolu Pelangi', 50000, 'PO', '1715091332.png'),
(2, 1, 'Marmer Cake', 10000, 'Tidak PO', '1715091561.png'),
(3, 1, 'CurryPuff Isi 10', 45000, 'PO', '1715090407.png'),
(4, 1, 'Curry Puff', 5000, 'PO', '1715090462.png'),
(5, 1, 'Vanilla cream puff', 100000, 'Tidak PO', '1715090496.png'),
(6, 1, 'Roti sisir', 10000, 'Tidak PO', '1715090541.png'),
(7, 1, 'Roti goreng isi daging', 30000, 'PO', '1715090565.png'),
(8, 1, 'Roti goreng kacang hijau', 15000, 'Tidak PO', '1715784533.png'),
(13, 8, 'Bongko pisang', 30000, 'PO', '1715858480.png'),
(14, 8, 'Bubur sumsum', 3000, 'Tidak PO', '1715858521.png'),
(15, 8, 'Lapis Pelangi', 5000, 'Tidak PO', '1715858538.png'),
(16, 8, 'Pukis', 4000, 'Tidak PO', '1715858605.png'),
(17, 8, 'Ketan serundeng', 6000, 'Tidak PO', '1715858649.png'),
(19, 8, 'Arem arem mie', 30000, 'Tidak PO', '1715858782.png'),
(20, 8, 'Risol mlepuh', 2000, 'PO', '1715858820.png'),
(21, 8, 'Pastel bihun', 3000, 'PO', '1715858843.png'),
(22, 8, 'Lumpia Semarang', 10000, 'Tidak PO', '1715858878.png'),
(23, 8, 'Sosis solo', 5000, 'Tidak PO', '1715858921.png'),
(24, 8, 'Sempol ayam', 1000, 'Tidak PO', '1715858939.png'),
(25, 8, 'peyek kacang dan rebon', 5000, 'Tidak PO', '1715858954.png'),
(26, 8, 'mac n cheese', 20000, 'PO', '1715858970.png'),
(27, 9, 'kunyit asemm', 50000, 'PO', '1715858990.png'),
(28, 10, 'sambal cumi baby', 60000, 'PO', '1715859009.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
