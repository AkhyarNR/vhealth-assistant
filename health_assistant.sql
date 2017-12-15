-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2017 at 08:49 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health_assistant`
--

-- --------------------------------------------------------

--
-- Table structure for table `vha_antrian`
--

CREATE TABLE `vha_antrian` (
  `id_antrian` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_antrian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_dokter`
--

CREATE TABLE `vha_dokter` (
  `id_dokter` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_dokter` varchar(75) NOT NULL,
  `spesialis` int(2) NOT NULL,
  `daerah_asal` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenkel` int(1) NOT NULL,
  `nope` int(13) NOT NULL,
  `alamat` text NOT NULL,
  `sertifikasi` varchar(55) NOT NULL,
  `ijin_praktek` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_dosis`
--

CREATE TABLE `vha_dosis` (
  `id_dosis` int(11) NOT NULL,
  `dosis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_obat_herbal`
--

CREATE TABLE `vha_obat_herbal` (
  `id_obat_h` int(11) NOT NULL,
  `penyakit` int(11) NOT NULL,
  `bahan_dasar` text NOT NULL,
  `cara_membuat` text NOT NULL,
  `dosis_anak` int(1) NOT NULL,
  `dosis_dewasa` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_obat_kimia`
--

CREATE TABLE `vha_obat_kimia` (
  `id_obat_k` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `jenis_obat` int(2) NOT NULL,
  `fungsi` text NOT NULL,
  `efek_samping` text NOT NULL,
  `dosis_anak` int(1) NOT NULL,
  `dosis_dewasa` int(1) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_pasien`
--

CREATE TABLE `vha_pasien` (
  `id_pasien` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenkel` int(1) NOT NULL,
  `nope` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `tinggi` int(3) NOT NULL,
  `berat` int(3) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_penyakit`
--

CREATE TABLE `vha_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `id_jenis_penyakit` int(2) NOT NULL,
  `gejala` int(11) NOT NULL,
  `penyebab` text NOT NULL,
  `id_obat_k` int(11) NOT NULL,
  `id_obat_h` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_spesialis`
--

CREATE TABLE `vha_spesialis` (
  `id_spesialis` int(11) NOT NULL,
  `spesialis` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vha_user`
--

CREATE TABLE `vha_user` (
  `id_user` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vha_user`
--

INSERT INTO `vha_user` (`id_user`, `level`, `username`, `password`, `email`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'akhyar.arspada09@gmail.com'),
(2, 2, 'akhyar', 'ab86a1e1ef70dff97959067b723c5c24', 'akhyar.erpeel@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vha_antrian`
--
ALTER TABLE `vha_antrian`
  ADD PRIMARY KEY (`id_antrian`);

--
-- Indexes for table `vha_dokter`
--
ALTER TABLE `vha_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `vha_dosis`
--
ALTER TABLE `vha_dosis`
  ADD PRIMARY KEY (`id_dosis`);

--
-- Indexes for table `vha_obat_herbal`
--
ALTER TABLE `vha_obat_herbal`
  ADD PRIMARY KEY (`id_obat_h`);

--
-- Indexes for table `vha_obat_kimia`
--
ALTER TABLE `vha_obat_kimia`
  ADD PRIMARY KEY (`id_obat_k`);

--
-- Indexes for table `vha_pasien`
--
ALTER TABLE `vha_pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD UNIQUE KEY `UNIQUE` (`nik`);

--
-- Indexes for table `vha_penyakit`
--
ALTER TABLE `vha_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `vha_spesialis`
--
ALTER TABLE `vha_spesialis`
  ADD PRIMARY KEY (`id_spesialis`);

--
-- Indexes for table `vha_user`
--
ALTER TABLE `vha_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vha_antrian`
--
ALTER TABLE `vha_antrian`
  MODIFY `id_antrian` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_dokter`
--
ALTER TABLE `vha_dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_dosis`
--
ALTER TABLE `vha_dosis`
  MODIFY `id_dosis` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_obat_herbal`
--
ALTER TABLE `vha_obat_herbal`
  MODIFY `id_obat_h` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_obat_kimia`
--
ALTER TABLE `vha_obat_kimia`
  MODIFY `id_obat_k` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_pasien`
--
ALTER TABLE `vha_pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_penyakit`
--
ALTER TABLE `vha_penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_spesialis`
--
ALTER TABLE `vha_spesialis`
  MODIFY `id_spesialis` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_user`
--
ALTER TABLE `vha_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
