-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Des 2017 pada 15.44
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Struktur dari tabel `vha_dokter`
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
-- Struktur dari tabel `vha_dosis`
--

CREATE TABLE `vha_dosis` (
  `id_dosis` int(11) NOT NULL,
  `dosis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vha_obat_herbal`
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
-- Struktur dari tabel `vha_obat_kimia`
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
-- Struktur dari tabel `vha_penyakit`
--

CREATE TABLE `vha_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `id_jenis_penyakit` int(2) NOT NULL,
  `gejala` int(11) NOT NULL,
  `penyebab` text NOT NULL,
  `obat_kimia` int(11) NOT NULL,
  `obat_herbal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vha_user`
--

CREATE TABLE `vha_user` (
  `id_user` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vha_user`
--

INSERT INTO `vha_user` (`id_user`, `level`, `username`, `password`, `email`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'akhyar.arspada09@gmail.com'),
(2, 2, 'akhyar', 'ab86a1e1ef70dff97959067b723c5c24', 'akhyar.erpeel@gmail.com');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `vha_penyakit`
--
ALTER TABLE `vha_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

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
-- AUTO_INCREMENT for table `vha_penyakit`
--
ALTER TABLE `vha_penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vha_user`
--
ALTER TABLE `vha_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
