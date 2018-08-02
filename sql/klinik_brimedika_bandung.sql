-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2018 at 12:20 PM
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
-- Table structure for table `daftar_berobat`
--

CREATE TABLE `daftar_berobat` (
  `idBerobat` int(11) NOT NULL,
  `tglBerobat` date NOT NULL,
  `kdPoli` varchar(4) NOT NULL,
  `idPasien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_berobat`
--

INSERT INTO `daftar_berobat` (`idBerobat`, `tglBerobat`, `kdPoli`, `idPasien`) VALUES
(1, '2018-08-21', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `idDokter` int(10) NOT NULL,
  `namaDokter` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `jenisKelamin` varchar(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `hakAkses` varchar(2) NOT NULL,
  `kdPoli` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(10) NOT NULL,
  `namaPasien` varchar(50) NOT NULL,
  `jenisKelamin` varchar(11) NOT NULL,
  `umur` int(2) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `noTelp` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idPasien`, `namaPasien`, `jenisKelamin`, `umur`, `alamat`, `pekerjaan`, `noTelp`) VALUES
(1, 'boox', 'pria', 20, 'asd', '123', 321),
(4, 'Robby Kartika Sandy', 'pria', 12, '123321', '123321', 32131233);

-- --------------------------------------------------------

--
-- Table structure for table `petugasadministrasi`
--

CREATE TABLE `petugasadministrasi` (
  `idPetAdministrasi` int(2) NOT NULL,
  `namaPetAdministrasi` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hakAkses` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugasadministrasi`
--

INSERT INTO `petugasadministrasi` (`idPetAdministrasi`, `namaPetAdministrasi`, `password`, `hakAkses`) VALUES
(1, 'admin', 'admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `kdPoli` varchar(4) NOT NULL,
  `jenisPoli` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`kdPoli`, `jenisPoli`) VALUES
('1', 'umum'),
('2', 'gigi');

-- --------------------------------------------------------

--
-- Table structure for table `rekammedis`
--

CREATE TABLE `rekammedis` (
  `noRM` bigint(20) NOT NULL,
  `tglPemeriksaan` date NOT NULL,
  `anamnesa` varchar(250) NOT NULL,
  `diagnosa` varchar(250) NOT NULL,
  `pengobtan` varchar(20) NOT NULL,
  `detPengobatan` varchar(250) NOT NULL,
  `idDokter` int(10) NOT NULL,
  `idPasien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `idTindakan` varchar(6) NOT NULL,
  `namaTindakan` varchar(50) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` bigint(12) NOT NULL,
  `tglTransaksi` date NOT NULL,
  `totalTransaksi` int(11) NOT NULL,
  `idPasien` int(10) NOT NULL,
  `idPetAdministrasi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_berobat`
--
ALTER TABLE `daftar_berobat`
  ADD PRIMARY KEY (`idBerobat`),
  ADD KEY `kdPoli` (`kdPoli`),
  ADD KEY `idPasien` (`idPasien`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`idDokter`),
  ADD KEY `kdPoli` (`kdPoli`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indexes for table `petugasadministrasi`
--
ALTER TABLE `petugasadministrasi`
  ADD PRIMARY KEY (`idPetAdministrasi`);

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
  ADD KEY `idDokter` (`idDokter`),
  ADD KEY `idPasien` (`idPasien`),
  ADD KEY `idDokter_2` (`idDokter`),
  ADD KEY `idPasien_2` (`idPasien`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`idTindakan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`),
  ADD KEY `idPetAdministrasi` (`idPetAdministrasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_berobat`
--
ALTER TABLE `daftar_berobat`
  MODIFY `idBerobat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `idDokter` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `petugasadministrasi`
--
ALTER TABLE `petugasadministrasi`
  MODIFY `idPetAdministrasi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekammedis`
--
ALTER TABLE `rekammedis`
  MODIFY `noRM` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idTransaksi` bigint(12) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_berobat`
--
ALTER TABLE `daftar_berobat`
  ADD CONSTRAINT `daftar_berobat_ibfk_1` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `daftar_berobat_ibfk_2` FOREIGN KEY (`kdPoli`) REFERENCES `poli` (`kdPoli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`kdPoli`) REFERENCES `poli` (`kdPoli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD CONSTRAINT `rekammedis_ibfk_1` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`idDokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekammedis_ibfk_2` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idPetAdministrasi`) REFERENCES `petugasadministrasi` (`idPetAdministrasi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
