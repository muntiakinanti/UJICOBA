-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2026 at 04:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujicoba_muntiakinantiputri`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_koperasiDesa`
--

CREATE TABLE `tabel_koperasidesa` (
  `id_transaksi` int NOT NULL,
  `jenis_transaksi` enum('Pembelian','Penjualan') NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pelanggan_atau_supplier` varchar(150) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `kategori_produk` varchar(100) DEFAULT NULL,
  `jumlah` int NOT NULL,
  `harga_satuan` decimal(12,2) NOT NULL,
  `total_harga` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_koperasiDesa`
--

INSERT INTO `tabel_koperasiDesa` (`id_transaksi`, `jenis_transaksi`, `tanggal`, `nama_pelanggan_atau_supplier`, `alamat`, `no_telp`, `nama_produk`, `kategori_produk`, `jumlah`, `harga_satuan`, `total_harga`) VALUES
(1, 'Pembelian', '2026-06-01', 'CV Tani Makmur', 'Jl. Tani Raya No. 5', '08123456789', 'Pupuk Urea Subsidi', 'Pertanian', 50, '120000.00', '6000000.00'),
(2, 'Pembelian', '2026-06-01', 'CV Tani Makmur', 'Jl. Tani Raya No. 5', '08123456789', 'Benih Padi Unggul', 'Pertanian', 20, '50000.00', '1000000.00'),
(3, 'Pembelian', '2026-06-02', 'PT Sembako Nusantara', 'Kawasan Industri Blok C', '08134567890', 'Beras Ramos 10kg', 'Sembako', 30, '135000.00', '4050000.00'),
(4, 'Pembelian', '2026-06-02', 'PT Sembako Nusantara', 'Kawasan Industri Blok C', '08134567890', 'Minyak Goreng 2L', 'Sembako', 40, '34000.00', '1360000.00'),
(5, 'Pembelian', '2026-06-03', 'Distributor Elektronik Desa', 'Jl. Merdeka No. 10', '08145678901', 'Lampu LED 12W', 'Elektronik', 15, '25000.00', '375000.00'),
(6, 'Pembelian', '2026-06-05', 'CV Tani Makmur', 'Jl. Tani Raya No. 5', '08123456789', 'Cangkul Baja', 'Peralatan', 10, '75000.00', '750000.00'),
(7, 'Pembelian', '2026-06-05', 'PT Sembako Nusantara', 'Kawasan Industri Blok C', '08134567890', 'Gula Pasir 1kg', 'Sembako', 100, '16000.00', '1600000.00'),
(8, 'Pembelian', '2026-06-06', 'Distributor Elektronik Desa', 'Jl. Merdeka No. 10', '08145678901', 'Kabel Roll 10m', 'Elektronik', 5, '85000.00', '425000.00'),
(9, 'Pembelian', '2026-06-10', 'CV Tani Makmur', 'Jl. Tani Raya No. 5', '08123456789', 'Pestisida Cair', 'Pertanian', 25, '60000.00', '1500000.00'),
(10, 'Pembelian', '2026-06-12', 'PT Sembako Nusantara', 'Kawasan Industri Blok C', '08134567890', 'Tepung Terigu 1kg', 'Sembako', 50, '12000.00', '600000.00'),
(11, 'Penjualan', '2026-06-15', 'Budi Santoso', 'RT 01 RW 02 Desa Merah Putih', '08561111222', 'Pupuk Urea Subsidi', 'Pertanian', 2, '135000.00', '270000.00'),
(12, 'Penjualan', '2026-06-15', 'Siti Aminah', 'RT 03 RW 01 Desa Merah Putih', '08563333444', 'Beras Ramos 10kg', 'Sembako', 1, '145000.00', '145000.00'),
(13, 'Penjualan', '2026-06-16', 'Ahmad Subarjo', 'RT 02 RW 02 Desa Merah Putih', '08565555666', 'Benih Padi Unggul', 'Pertanian', 4, '60000.00', '240000.00'),
(14, 'Penjualan', '2026-06-16', 'Siti Aminah', 'RT 03 RW 01 Desa Merah Putih', '08563333444', 'Minyak Goreng 2L', 'Sembako', 2, '38000.00', '76000.00'),
(15, 'Penjualan', '2026-06-17', 'Eko Prasetyo', 'RT 01 RW 01 Desa Merah Putih', '08567777888', 'Lampu LED 12W', 'Elektronik', 3, '30000.00', '90000.00'),
(16, 'Penjualan', '2026-06-18', 'Budi Santoso', 'RT 01 RW 02 Desa Merah Putih', '08561111222', 'Cangkul Baja', 'Peralatan', 1, '90000.00', '90000.00'),
(17, 'Penjualan', '2026-06-19', 'Dewi Lestari', 'RT 04 RW 02 Desa Merah Putih', '08569999000', 'Gula Pasir 1kg', 'Sembako', 5, '18000.00', '90000.00'),
(18, 'Penjualan', '2026-06-20', 'Ahmad Subarjo', 'RT 02 RW 02 Desa Merah Putih', '08565555666', 'Pestisida Cair', 'Pertanian', 1, '70000.00', '70000.00'),
(19, 'Penjualan', '2026-06-21', 'Eko Prasetyo', 'RT 01 RW 01 Desa Merah Putih', '08567777888', 'Kabel Roll 10m', 'Elektronik', 1, '100000.00', '100000.00'),
(20, 'Penjualan', '2026-06-22', 'Dewi Lestari', 'RT 04 RW 02 Desa Merah Putih', '08569999000', 'Tepung Terigu 1kg', 'Sembako', 3, '14000.00', '42000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_koperasiDesa`
--
ALTER TABLE `tabel_koperasiDesa`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_koperasiDesa`
--
ALTER TABLE `tabel_koperasiDesa`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
