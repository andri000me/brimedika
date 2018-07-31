-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2018 at 08:45 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik_brimedika_bandung`
--

-- --------------------------------------------------------

--
-- Table structure for table `det_pemeriksaan`
--

CREATE TABLE `det_pemeriksaan` (
  `id_detpemeriksaan` int(10) NOT NULL,
  `nm_detpemeriksaan` varchar(100) NOT NULL,
  `idPemeriksaan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `det_pemeriksaan`
--

INSERT INTO `det_pemeriksaan` (`id_detpemeriksaan`, `nm_detpemeriksaan`, `idPemeriksaan`) VALUES
(0, '', 0),
(1, 'Riwayat Penyakit Hepatitis A/B/C', 4),
(2, 'Riwayat Pengobatan TBC (Tahun)', 4),
(3, 'Hipertensi', 4),
(4, 'Diabetes Melitus', 4),
(5, 'Alergi', 4),
(6, 'Riwayat Rawat Operasi', 4),
(7, 'Riwayat Penyakit Jantung', 4),
(8, 'Pengobatan Rawat Inap', 4),
(9, 'Patah Tulang', 4),
(10, 'Obat yang Rutin Dikonsumsi', 4),
(11, 'Riwayat Penyakit Jantung', 5),
(12, 'Penyakit Darah Tinggi', 5),
(13, 'Penyakit Kencing Manis', 5),
(14, 'Penyakit Stroke', 5),
(15, 'Penyakit Paru/Asma/TBC', 5),
(16, 'Penyakit Kanker', 5),
(17, 'Penyakit Gangguan Jiwa', 5),
(18, 'Penyakit Ginjal', 5),
(19, 'Penyakit Saluran Cerna', 5),
(20, 'Penyakit Lainnya ', 5),
(21, 'Tinggi Badan ', 6),
(22, 'Berat Badan', 6),
(23, 'Nadi', 6),
(24, 'Pernapasan', 6),
(25, 'Tensi', 6),
(26, 'Mata', 6),
(27, 'Olahraga', 7),
(28, 'Merokok', 7),
(29, 'Minum Kopi', 7),
(30, 'Alkohol', 7),
(31, 'Flu Like Syndrome', 8),
(32, 'Keluhan Perut', 8),
(33, 'Sesak', 8),
(34, 'Haemoroid Grade I/II/III', 8),
(35, 'Keluhan Kulit', 8),
(36, 'Sedang Mengandung', 8),
(37, 'Nyeri Dada', 8),
(38, 'Keluhan Otot,Tulang Syaraf', 8),
(39, 'Hernia', 8),
(40, 'Lainnya', 8),
(41, 'Kesan Umum', 9),
(42, 'BMI (Badan Massa Index)', 9),
(43, 'Kulit', 9),
(44, 'Mata', 9),
(45, 'Hemoglobin', 1),
(46, 'Eritrosit', 1),
(47, 'Hematokrit', 1),
(48, 'Leukosit', 1),
(49, 'Laju Endap Darah', 1),
(50, 'Thrombosit', 1),
(51, 'MCV', 1),
(52, 'MCH', 1),
(53, 'MCHC', 1),
(54, 'Basofil', 1),
(55, 'Eosinofil', 1),
(56, 'Batang', 1),
(57, 'Segmen', 1),
(58, 'Limposit', 1),
(59, 'Monosit', 1),
(60, 'Syphilis', 3),
(61, 'HbsAg', 3),
(62, 'Widal', 3),
(63, 'Warna', 2),
(64, 'Kejernihan', 2),
(65, 'BJ', 2),
(66, 'PH', 2),
(67, 'Protein', 2),
(68, 'Glukosa', 2),
(69, 'Keton', 2),
(70, 'Bilirubin', 2),
(71, 'Urobilinogen', 2),
(72, 'Nitrit', 2),
(73, 'Darah', 2),
(74, 'Leukosit', 2),
(75, 'sEritrosit', 2),
(76, 'sLeukosit', 2),
(77, 'sEpitel', 2),
(78, 'Kristal', 2),
(79, 'Bentuk', 12),
(80, 'Palpasi/Perkusi', 12),
(81, 'Hati', 12),
(82, 'Limpa', 12),
(83, 'Ginjal', 12),
(84, 'Rectal', 12),
(85, 'Hernia', 12),
(86, 'Hernia', 12),
(87, 'Haemoroid', 12),
(88, 'Lainnya', 12),
(89, 'Leher', 11),
(90, 'Reflex Fisiologin', 14),
(91, 'Reflex Patologis', 14),
(92, 'Kekuatan Motorik', 14),
(93, 'Kelainan Syaraf Pusat', 14),
(94, 'Kelainan Syaraf Tepi', 14),
(95, 'Lidah', 14),
(96, 'Lainnya', 14),
(97, 'Bentuk', 10),
(98, 'Ekspansi', 10),
(99, 'Palpasi', 10),
(100, 'Perkusi', 10),
(101, 'Auskultasi', 10),
(102, 'Lain', 10),
(103, 'Daun Telinga', 15),
(104, 'Lubang Telinga', 15),
(105, 'Membran Tympani', 15),
(106, 'Hidung', 15),
(107, 'Sinus', 15),
(108, 'Faring', 15),
(109, 'Tensil', 15),
(110, 'Lidah', 15),
(111, 'Gusi', 15),
(112, 'Gigi', 15),
(113, 'Karang', 15),
(114, 'Lubang Gigi', 15),
(115, 'Tambal Gigi', 15),
(116, 'Gigi Tanggal', 15),
(117, 'Gigi Miring', 15),
(118, 'Radix', 15),
(119, 'Kelainan Tulang/Syaraf', 13),
(120, 'Kelainan Otot', 13),
(121, 'Kelainan Jari Tangan', 13),
(122, 'Kelainan Jari Kaki', 13),
(123, 'Lainnya', 13),
(0, '', 0),
(1, 'Riwayat Penyakit Hepatitis A/B/C', 4),
(2, 'Riwayat Pengobatan TBC (Tahun)', 4),
(3, 'Hipertensi', 4),
(4, 'Diabetes Melitus', 4),
(5, 'Alergi', 4),
(6, 'Riwayat Rawat Operasi', 4),
(7, 'Riwayat Penyakit Jantung', 4),
(8, 'Pengobatan Rawat Inap', 4),
(9, 'Patah Tulang', 4),
(10, 'Obat yang Rutin Dikonsumsi', 4),
(11, 'Riwayat Penyakit Jantung', 5),
(12, 'Penyakit Darah Tinggi', 5),
(13, 'Penyakit Kencing Manis', 5),
(14, 'Penyakit Stroke', 5),
(15, 'Penyakit Paru/Asma/TBC', 5),
(16, 'Penyakit Kanker', 5),
(17, 'Penyakit Gangguan Jiwa', 5),
(18, 'Penyakit Ginjal', 5),
(19, 'Penyakit Saluran Cerna', 5),
(20, 'Penyakit Lainnya ', 5),
(21, 'Tinggi Badan ', 6),
(22, 'Berat Badan', 6),
(23, 'Nadi', 6),
(24, 'Pernapasan', 6),
(25, 'Tensi', 6),
(26, 'Mata', 6),
(27, 'Olahraga', 7),
(28, 'Merokok', 7),
(29, 'Minum Kopi', 7),
(30, 'Alkohol', 7),
(31, 'Flu Like Syndrome', 8),
(32, 'Keluhan Perut', 8),
(33, 'Sesak', 8),
(34, 'Haemoroid Grade I/II/III', 8),
(35, 'Keluhan Kulit', 8),
(36, 'Sedang Mengandung', 8),
(37, 'Nyeri Dada', 8),
(38, 'Keluhan Otot,Tulang Syaraf', 8),
(39, 'Hernia', 8),
(40, 'Lainnya', 8),
(41, 'Kesan Umum', 9),
(42, 'BMI (Badan Massa Index)', 9),
(43, 'Kulit', 9),
(44, 'Mata', 9),
(45, 'Hemoglobin', 1),
(46, 'Eritrosit', 1),
(47, 'Hematokrit', 1),
(48, 'Leukosit', 1),
(49, 'Laju Endap Darah', 1),
(50, 'Thrombosit', 1),
(51, 'MCV', 1),
(52, 'MCH', 1),
(53, 'MCHC', 1),
(54, 'Basofil', 1),
(55, 'Eosinofil', 1),
(56, 'Batang', 1),
(57, 'Segmen', 1),
(58, 'Limposit', 1),
(59, 'Monosit', 1),
(60, 'Syphilis', 3),
(61, 'HbsAg', 3),
(62, 'Widal', 3),
(63, 'Warna', 2),
(64, 'Kejernihan', 2),
(65, 'BJ', 2),
(66, 'PH', 2),
(67, 'Protein', 2),
(68, 'Glukosa', 2),
(69, 'Keton', 2),
(70, 'Bilirubin', 2),
(71, 'Urobilinogen', 2),
(72, 'Nitrit', 2),
(73, 'Darah', 2),
(74, 'Leukosit', 2),
(75, 'sEritrosit', 2),
(76, 'sLeukosit', 2),
(77, 'sEpitel', 2),
(78, 'Kristal', 2),
(79, 'Bentuk', 12),
(80, 'Palpasi/Perkusi', 12),
(81, 'Hati', 12),
(82, 'Limpa', 12),
(83, 'Ginjal', 12),
(84, 'Rectal', 12),
(85, 'Hernia', 12),
(86, 'Hernia', 12),
(87, 'Haemoroid', 12),
(88, 'Lainnya', 12),
(89, 'Leher', 11),
(90, 'Reflex Fisiologin', 14),
(91, 'Reflex Patologis', 14),
(92, 'Kekuatan Motorik', 14),
(93, 'Kelainan Syaraf Pusat', 14),
(94, 'Kelainan Syaraf Tepi', 14),
(95, 'Lidah', 14),
(96, 'Lainnya', 14),
(97, 'Bentuk', 10),
(98, 'Ekspansi', 10),
(99, 'Palpasi', 10),
(100, 'Perkusi', 10),
(101, 'Auskultasi', 10),
(102, 'Lain', 10),
(103, 'Daun Telinga', 15),
(104, 'Lubang Telinga', 15),
(105, 'Membran Tympani', 15),
(106, 'Hidung', 15),
(107, 'Sinus', 15),
(108, 'Faring', 15),
(109, 'Tensil', 15),
(110, 'Lidah', 15),
(111, 'Gusi', 15),
(112, 'Gigi', 15),
(113, 'Karang', 15),
(114, 'Lubang Gigi', 15),
(115, 'Tambal Gigi', 15),
(116, 'Gigi Tanggal', 15),
(117, 'Gigi Miring', 15),
(118, 'Radix', 15),
(119, 'Kelainan Tulang/Syaraf', 13),
(120, 'Kelainan Otot', 13),
(121, 'Kelainan Jari Tangan', 13),
(122, 'Kelainan Jari Kaki', 13),
(123, 'Lainnya', 13);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `idDokter` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `namaDokter` varchar(50) NOT NULL,
  `jenisKelamin` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`idDokter`, `password`, `namaDokter`, `jenisKelamin`, `alamat`) VALUES
(0, 'tes', 'tes', 'wanita', 'tes'),
(1, 'tes', 'tes', 'wanita', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `observasi`
--

CREATE TABLE `observasi` (
  `idObservasi` int(10) NOT NULL,
  `tglObservasi` date NOT NULL,
  `Hasil` varchar(25) NOT NULL,
  `Keterangan` varchar(500) NOT NULL,
  `idPaket` int(10) NOT NULL,
  `id_detpemeriksaan` int(10) NOT NULL,
  `idPemeriksaan` int(10) NOT NULL,
  `idPerawat` int(10) NOT NULL,
  `idDokter` int(10) NOT NULL,
  `idPasien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `idPaket` int(10) NOT NULL,
  `nmPaket` varchar(100) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `idPemeriksaan` int(10) NOT NULL,
  `id_detpemeriksaan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(11) NOT NULL,
  `nmPasien` varchar(100) NOT NULL,
  `umur` int(15) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `noTelp` varchar(15) NOT NULL,
  `tempatLahir` varchar(50) NOT NULL,
  `tglLahir` date NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idPasien`, `nmPasien`, `umur`, `gender`, `alamat`, `noTelp`, `tempatLahir`, `tglLahir`, `pekerjaan`) VALUES
(1, 'xx', 0, 'pria', 'axxax', '231', 'xasd', '2018-07-19', 'xxx'),
(11, 'Robby Yulianto S', 11, 'wanita', '11', '123', 'tessssst', '2018-07-18', '321');

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `idPemeriksaan` int(10) NOT NULL,
  `nmPemeriksaan` varchar(100) NOT NULL,
  `Harga` bigint(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`idPemeriksaan`, `nmPemeriksaan`, `Harga`) VALUES
(1, 'Hematologi', 0),
(2, 'Urinalis', 0),
(3, 'Serologi', 0),
(4, 'Anamse', 0),
(5, 'Riwayat Penyakit Keluarga', 0),
(6, 'Pemeriksaan', 0),
(7, 'Kebiasaan', 0),
(8, 'Keluhan Sekarang', 0),
(9, 'Keadaan Umum', 0),
(10, 'Thorax ', 0),
(11, 'Leher', 0),
(12, 'Abdomen', 0),
(13, 'Extremitas', 0),
(14, 'Neurologis', 0),
(15, 'THT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `perawat`
--

CREATE TABLE `perawat` (
  `idperawat` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `id_perawat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perawat`
--

INSERT INTO `perawat` (`idperawat`, `username`, `password`, `nama`, `jabatan`, `id_perawat`) VALUES
(1, 'admin', 'admin', 'Ulfah Okta A', 'Laboratorium', 'LAB1'),
(2, 'medical', 'medical', 'Intan Pramitha P', 'Medical', 'MED1'),
(3, 'radio', 'radio', 'Isur', 'Radiologi', 'RAD1');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `kdPoli` varchar(10) NOT NULL,
  `jenisPoli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekammedis`
--

CREATE TABLE `rekammedis` (
  `noRM` int(6) NOT NULL,
  `tglPemeriksaan` date NOT NULL,
  `anamnesa` varchar(200) NOT NULL,
  `diagnosa` varchar(200) NOT NULL,
  `terapi` varchar(100) NOT NULL,
  `ketTerapi` varchar(1000) NOT NULL,
  `idPasien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekammedis`
--

INSERT INTO `rekammedis` (`noRM`, `tglPemeriksaan`, `anamnesa`, `diagnosa`, `terapi`, `ketTerapi`, `idPasien`) VALUES
(8, '2018-07-19', '123', '321', '123', '321', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` bigint(20) NOT NULL,
  `tglTransakasi` date NOT NULL,
  `biayaPemeriksaan` bigint(200) NOT NULL,
  `totalTransaksi` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`idDokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indexes for table `perawat`
--
ALTER TABLE `perawat`
  ADD PRIMARY KEY (`idperawat`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`kdPoli`);

--
-- Indexes for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD PRIMARY KEY (`noRM`),
  ADD KEY `idPasien` (`idPasien`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `perawat`
--
ALTER TABLE `perawat`
  MODIFY `idperawat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rekammedis`
--
ALTER TABLE `rekammedis`
  MODIFY `noRM` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idTransaksi` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD CONSTRAINT `rekammedis_ibfk_1` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
