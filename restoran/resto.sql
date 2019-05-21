-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2019 pada 06.14
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `stat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `stat`) VALUES
('01.04.2019.2001.07.29.2', 'kasir_vixma_group', '$2y$10$dyFhphLGRTmn6oBCKgVwp.2Lb2MDhQzrYuFPi7VMB3o1Z7ObrDcZ6', 'kasir'),
('01.04.2019.2001.11.19.1', 'vixma_group_2019', '$2y$10$reYtjCs2NISbrG9qcg.8DeCmXkOfsY75.oSEVN0SPD7XytI.gyd6e', 'admin'),
('06.04.2019.2000.08.21.5', 'bram', '$2y$10$6wlv8soZkA5l/mZvVx1sLe1gZWCcGkMfks.qfoVro0d1ThI9FkIbC', 'direktur'),
('1', '1', '1', 'meja'),
('2', '2', '2', 'meja'),
('29072021', 'owner', 'owner', 'owner'),
('3', '3', '3', 'meja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `foto` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`kode`, `nama`, `jenis`, `harga`, `foto`) VALUES
('MENU-002', 'Nasgor Balado', 'makanan', '25000', 'Nasgor Balado.jpg'),
('MENU-003', 'Sate Madura United', 'makanan', '25000', 'Sate Madura United.jpg'),
('MENU-004', 'Jus Melon', 'minuman', '15000', 'Jus Melon.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `no_meja` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sementara`
--

CREATE TABLE `sementara` (
  `id` int(11) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `no_meja` varchar(100) NOT NULL,
  `pesanan` varchar(100) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tgl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `no_transaksi`, `nip`, `no_meja`, `pesanan`, `total_bayar`, `bayar`, `kembalian`, `tgl`) VALUES
(1, '08/04/2019 05:45:50-1', '01.04.2019.2001.07.29.2', '1', 'MENU-003', 50000, 80000, 30000, '08/04/2019 05:45:50'),
(2, '08/04/2019 05:48:37-2', '01.04.2019.2001.07.29.2', '1', 'MENU-002', 75000, 80000, 5000, '08/04/2019 05:48:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pegawai`
--

CREATE TABLE `t_pegawai` (
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pegawai`
--

INSERT INTO `t_pegawai` (`nip`, `nama`, `jk`, `jabatan`) VALUES
('01.04.2019.2001.07.29.2', 'ai khodijah', 'P', 'kasir'),
('01.04.2019.2001.11.19.1', 'irsyad dhiyaulhaq h', 'L', 'admin'),
('02.04.2019.1994.07.13.5', 'risman', 'L', 'koki'),
('02.04.2019.1995.10.18.5', 'farida oktav', 'P', 'kasir'),
('02.04.2019.2000.06.20.2', 'rifky iqbal p', 'L', 'admin'),
('02.04.2019.2000.06.20.3', 'tirta', 'L', 'pelayan'),
('02.04.2019.2000.11.19.5', 'ahmad zaenul a', 'L', 'koki'),
('02.04.2019.2001.05.22.4', 'ilham', 'L', 'pelayan'),
('06.04.2019.2000.08.21.5', 'agustyana', 'L', 'direktur');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sementara`
--
ALTER TABLE `sementara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_pegawai`
--
ALTER TABLE `t_pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sementara`
--
ALTER TABLE `sementara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
