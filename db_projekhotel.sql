-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Apr 2022 pada 08.19
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_projekhotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis_kamar`
--

CREATE TABLE `tbl_jenis_kamar` (
  `id_jenis` int(11) NOT NULL,
  `jenis_kamar` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jenis_kamar`
--

INSERT INTO `tbl_jenis_kamar` (`id_jenis`, `jenis_kamar`, `keterangan`, `harga`, `foto`) VALUES
(1, 'FAMILY', 'FAMILY INI TERSEDIA 3 RANJANG', 100000, ''),
(2, 'delux', 'no', 6999, 0x36303030322e6a7067),
(3, 'delux', 'no', 6999, 0x36303030332e6a7067);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `id_kamar` int(11) NOT NULL,
  `nomor_kamar` varchar(100) NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`id_kamar`, `nomor_kamar`, `id_jenis`) VALUES
(1, '001', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konsumen`
--

CREATE TABLE `tbl_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_tengah` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `negara` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `no_identitas` varchar(100) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_konsumen`
--

INSERT INTO `tbl_konsumen` (`id_konsumen`, `nama_depan`, `nama_tengah`, `nama_belakang`, `alamat`, `negara`, `provinsi`, `kota`, `kelurahan`, `kecamatan`, `no_identitas`, `no_tlp`, `email`) VALUES
(10, 'l', 'ligh', 'sweet', 'flare', 'foul', 'cloud', 'fire', '', '', 'q1', '08967456443', 's@GMAIL.COM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hak_akses` enum('client','admin') NOT NULL,
  `aktivasi` enum('0','1') NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `hak_akses`, `aktivasi`, `no_hp`) VALUES
(1, 'lita', '3a4fc6bc223591e494da3591dc747806', 'client', '1', '08996335548'),
(3, 'litawahyuni', '3a4fc6bc223591e494da3591dc747806', 'admin', '1', '087835335134'),
(4, 'hilmi', '827ccb0eea8a706c4c34a16891f84e7b', 'client', '0', ''),
(5, 'dila', '827ccb0eea8a706c4c34a16891f84e7b', 'client', '0', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jenis_kamar`
--
ALTER TABLE `tbl_jenis_kamar`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `tbl_konsumen`
--
ALTER TABLE `tbl_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jenis_kamar`
--
ALTER TABLE `tbl_jenis_kamar`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_konsumen`
--
ALTER TABLE `tbl_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
