-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2023 pada 03.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `Nama` varchar(30) NOT NULL,
  `Jenis Kelamin` varchar(20) NOT NULL,
  `Usia` int(2) NOT NULL,
  `Nominal Donasi` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi_kemanusiaan`
--

CREATE TABLE `donasi_kemanusiaan` (
  `nama_penerima` varchar(30) NOT NULL,
  `Id_penerima` int(5) NOT NULL,
  `umur_penerima` varchar(10) NOT NULL,
  `jenis_bantuan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_gd`
--

CREATE TABLE `form_gd` (
  `jenis_bantuan` varchar(100) NOT NULL,
  `penerima_bantuan` varchar(100) NOT NULL,
  `alamat_penerima` varchar(100) NOT NULL,
  `domisili_penerima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `form_gd`
--

INSERT INTO `form_gd` (`jenis_bantuan`, `penerima_bantuan`, `alamat_penerima`, `domisili_penerima`) VALUES
('kemanusian', 'fahmi', 'bekasi', 'bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galangdana`
--

CREATE TABLE `galangdana` (
  `nama_penerima` varchar(30) NOT NULL,
  `Id_penerima` int(5) NOT NULL,
  `umur_penerima` int(2) NOT NULL,
  `jenis_bantuan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('admin', '123'),
('fahmi', '1234'),
('ricoasu', '123'),
('admin', '123'),
('admin', '123'),
('radhit', '123'),
('radhit', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
