-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 26. Nopember 2017 jam 18:55
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `disposisi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_disposisi`
--

CREATE TABLE IF NOT EXISTS `tbl_disposisi` (
  `id_disposisi` int(3) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(25) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(25) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` text NOT NULL,
  `id_surat` int(5) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(1, 'Markipet. Spd', 'Harap hadiri undangan', 'Penting', '2017-11-19', '-', 13, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klasifikasi`
--

CREATE TABLE IF NOT EXISTS `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data untuk tabel `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `uraian`, `id_user`) VALUES
(1, '100', 'PENDIDIKAN', 'PENDIDIKAN', 1),
(2, '101', 'Donasi', 'Donasi', 1),
(3, '102', 'Pendidikan Khusus Klasifikasi disini Pendidikan Putra/I Irja', 'Pendidikan Khusus Klasifikasi disini Pendidikan Putra/I Irja', 1),
(4, '103', 'Pra Sekolah', 'Pra Sekolah', 1),
(5, '104', 'Sekolah Dasar', 'Sekolah Dasar', 1),
(6, '105', 'Sekolah Menengah', 'Sekolah Menengah', 1),
(7, '107', 'Sekolah Tinggi', 'Sekolah Tinggi', 1),
(8, '107', 'Sekolah Kejuruan', 'Sekolah Kejuruan', 1),
(9, '108', 'Kegiatan Sekolah, Dies Natalis Lustrum', 'Kegiatan Sekolah, Dies Natalis Lustrum', 1),
(10, '109', 'Kegiatan Pelajar', 'Kegiatan Pelajar', 1),
(11, '110', 'Reuni Darmawisata', 'Reuni Darmawisata', 1),
(12, '111', 'Pelajar Teladan', 'Pelajar Teladan', 1),
(13, '112', 'Resimen Siswa', 'Resimen Siswa', 1),
(14, '113', 'Sekolah Pendidikan Luar Biasa', 'Sekolah Pendidikan Luar Biasa', 1),
(15, '114', 'PLS / Pemberantasan Buta Huruf', 'PLS / Pemberantasan Buta Huruf', 1),
(16, '115', 'Administrasi Sekolah', 'Administrasi Sekolah', 1),
(17, '116', 'Persyaratan Masuk Sekolah, Testing, Ujian,Pendaftaran, Mapras', 'Persyaratan Masuk Sekolah, Testing, Ujian,Pendaftaran, Mapras', 1),
(18, '117', 'Tahun Pelajaran', 'Tahun Pelajaran', 1),
(19, '118', 'Hari Libur', 'Hari Libur', 1),
(20, '119', 'Uang Sekolah, Klasifikasi Disini SPP', 'Uang Sekolah, Klasifikasi Disini SPP', 1),
(21, '120', 'Beasiswa', 'Beasiswa', 1),
(22, '121', 'Metode Belajar', 'Metode Belajar', 1),
(23, '122', 'Kuliah', 'Kuliah', 1),
(24, '123', 'Ceramah, Simposium', 'Ceramah, Simposium', 1),
(25, '124', 'Diskusi', 'Diskusi', 1),
(26, '125', 'Widyawisata,Studi Tur', 'Widyawisata,Studi Tur', 1),
(27, '126', 'Kurikulum', 'Kurikulum', 1),
(28, '127', 'Karya Tulis', 'Karya Tulis', 1),
(29, '128', 'Ujian', 'Ujian', 1),
(30, '129', 'Tenaga Pengajar, Guru, Dosen, Dekan, Rektor', 'Tenaga Pengajar, Guru, Dosen, Dekan, Rektor', 1),
(31, '130', 'Sarana Pendidikan', 'Sarana Pendidikan', 1),
(32, '131', 'Gedung', 'Gedung', 1),
(33, '132', 'Gedung Sekolah', 'Gedung Sekolah', 1),
(34, '133', 'Kampus', 'Kampus', 1),
(35, '134', 'Pusat Kegiatan Mahasiswa', 'Pusat Kegiatan Mahasiswa', 1),
(36, '135', 'Buku', 'Buku', 1),
(37, '136', 'Perlengkapan Sekolah', 'Perlengkapan Sekolah', 1),
(38, '137', 'Keolahragaan', 'Keolahragaan', 1),
(39, '138', 'Cabang Olah Raga', 'Cabang Olah Raga', 1),
(40, '139', 'Sarana', 'Sarana', 1),
(41, '140', 'Gedung Olah Raga', 'Gedung Olah Raga', 1),
(42, '141', 'Stadion', 'Stadion', 1),
(43, '142', 'Lapangan', 'Lapangan', 1),
(44, '143', 'Kolam renang', 'Kolam renang', 1),
(45, '144', 'Pesta Olah Raga, Klasifikasi nya: PON, Porsade, Olimpiade,', 'Pesta Olah Raga, Klasifikasi nya: PON, Porsade, Olimpiade,', 1),
(46, '145', 'KONI', 'KONI', 1),
(47, '146', 'Kepramukaan Meliputi: Organisasi dan Kegiatan Remaja', 'Kepramukaan Meliputi: Organisasi dan Kegiatan Remaja', 1),
(48, '147', 'Kepramukaan', 'Kepramukaan', 1),
(49, '148', 'Pendidikan Kedinasan Untuk Depdagri', 'Pendidikan Kedinasan Untuk Depdagri', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sett`
--

CREATE TABLE IF NOT EXISTS `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 5, 5, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_keluar`
--

CREATE TABLE IF NOT EXISTS `tbl_surat_keluar` (
  `id_surat` int(5) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(5) NOT NULL,
  `tujuan` varchar(25) NOT NULL,
  `no_surat` varchar(25) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(3) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(4, 1, 'Orang Tua Murid', '101/097/SMP.TH/IX/2017', 'Himbauan Puasa Sunah Muhharam', '101', '2017-09-28', '2017-09-26', '8369-SuratKeluar1.jpg', 'Penting', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_masuk`
--

CREATE TABLE IF NOT EXISTS `tbl_surat_masuk` (
  `id_surat` int(5) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(5) NOT NULL,
  `no_surat` varchar(25) NOT NULL,
  `asal_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(3) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(13, 1, '1 / XII/M.BIG/2017', 'Musyawarah Guru Mata Pelajaran Bahasa Inggris', 'Surat edaran pertemuan rutin musyawarah guru mata pelajaran bahasa inggris.', '124', 'A.1', '2017-11-16', '2016-07-24', '', 'pertemuan guru secara tertutup', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin', '-', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
