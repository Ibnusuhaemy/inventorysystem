-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 09. Januari 2019 jam 23:48
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kprpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(500) NOT NULL,
  `produsen` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `tanggal_produksi` date NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `produsen`, `jumlah`, `harga_beli`, `tanggal_beli`, `tanggal_produksi`, `gambar`, `kategori`, `status`, `bulan`, `tahun`) VALUES
(29, 'Molto', 'Warung', '4', '1500', '2018-12-18', '2018-11-29', '', 'Perlengkapan', 'Baik', 'November-2018', '2018'),
(30, 'Gula', 'warung', '2', '6000', '2018-12-19', '2018-12-03', '', 'Perlengkapan', 'Baik', 'December-2018', '2018'),
(40, 'Kain Pel', 'Alfamart', '1', '9000', '2018-12-27', '2018-12-16', '', 'Peralatan', 'Baik', 'January-2019', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_barang`
--

CREATE TABLE IF NOT EXISTS `kategori_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `kategori_barang`
--

INSERT INTO `kategori_barang` (`id`, `nama`) VALUES
(6, 'Aset'),
(10, 'Perlengkapan'),
(11, 'Peralatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','pimpinan') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(8, 'pimpinan', '12345', 'pimpinan'),
(11, 'admin', '12345', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
