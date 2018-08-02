-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2018 at 04:07 PM
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
(1, '2018-08-01', '01', 1),
(2, '2018-08-01', '02', 2);

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

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`idDokter`, `namaDokter`, `password`, `jenisKelamin`, `alamat`, `hakAkses`, `kdPoli`) VALUES
(1, 'Indira Mega Pujarama Ismand', 'indiramega', 'Wanita', 'Jl Sokearno Hatta No 574', 'PU', '01'),
(2, 'dok', 'dok', 'Wanita', 'Jl Kawaluyan No 34', 'PG', '02');

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
(1, 'Booby', 'pria', 0, 'Jakarta', 'babam', 0),
(2, 'Ayu Wandari', 'Wanita', 24, 'Jl Sindangsari II RT 03 RW 14 No 18', 'hoho', 82240206);

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
(1, 'ra', 'ra', 'admin');

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
('01', 'Umum'),
('02', 'Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `rekammedis`
--

CREATE TABLE `rekammedis` (
  `noRM` bigint(20) NOT NULL,
  `tglPemeriksaan` date NOT NULL,
  `anamnesa` varchar(250) NOT NULL,
  `diagnosa` varchar(250) NOT NULL,
  `pengobatan` varchar(20) NOT NULL,
  `detPengobatan` varchar(250) NOT NULL,
  `idDokter` int(10) NOT NULL,
  `idPasien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekammedis`
--

INSERT INTO `rekammedis` (`noRM`, `tglPemeriksaan`, `anamnesa`, `diagnosa`, `pengobatan`, `detPengobatan`, `idDokter`, `idPasien`) VALUES
(3, '2018-08-01', '123', '321', '123', '312', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `idTindakan` varchar(10) NOT NULL,
  `namaTindakan` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `kdPoli` varchar(4) NOT NULL,
  `idTransaksi` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`idTindakan`, `namaTindakan`, `tarif`, `kdPoli`, `idTransaksi`) VALUES
('AFF', 'AFF Cateter', 30000, '01', 1),
('BM1', 'Ekstraksi Tanpa Suntik', 100000, '02', 1),
('BM2', 'Ekstraksi Dengan Suntik', 150000, '02', 1),
('BM3A', 'Ekstraksi dengan komplikasi kecil', 175000, '02', 1),
('BM3B', 'Ekstraksi dengan komplikasi besar', 200000, '02', 1),
('BM4A', 'Operasi Gigi Impaksi / Odontectomy Kecil', 1000000, '02', 1),
('BM4B', 'Operasi Gigi Impaksi / Odontectomy Besar', 1200000, '02', 1),
('BM5', 'Alveolectomy persegmen', 400000, '02', 1),
('BM6', 'Operculectomy / Gingivektomy', 400000, '02', 1),
('EKS1', 'Ekstraksi benda asing di hidung', 100000, '01', 1),
('EKS2', 'Ekstraksi benda asing di telinga', 100000, '01', 1),
('GVL1', 'GV Luka < 5 cm', 40000, '01', 1),
('GVL2', 'GV Luka < 10 cm', 60000, '01', 1),
('GVL3', 'GV Luka < 15 cm', 75000, '01', 1),
('H1', 'Hecting 1 cm', 70000, '01', 1),
('H2', 'Hecting 2-3 cm', 100000, '01', 1),
('H3', 'Hecting 4-5 cm', 150000, '01', 1),
('H4', 'Hecting 6-10 cm', 200000, '01', 1),
('H5', 'Hecting 11-15cm', 300000, '01', 1),
('K1', 'Konsultasi Dokter Poli Umum', 40000, '01', 1),
('K2', 'Konsultasi Dokter Poli Gigi', 50000, '02', 1),
('NEB', 'Nebulizer', 55000, '01', 1),
('OKS1', 'Oksigen 1-5 Liter', 1000, '01', 1),
('OKS2', 'Oksigen 5-10 Liter', 1500, '01', 1),
('OR1', 'Fix', 5500000, '02', 1),
('OR2', 'Kontrol', 150000, '02', 1),
('PG10', 'Trepanasi', 75000, '02', 1),
('PG1A', 'Tambal Glass Ionomer (GI) Kecil', 125000, '02', 1),
('PG1B', 'Tambalan Glass Ionomer (GI) Besar', 150000, '02', 1),
('PG2A', 'Tambalan Composite / Light Curing Kecil', 150000, '02', 1),
('PG2B', 'Tambalan Composite / Curing Besar', 200000, '02', 1),
('PG3A', 'Perawatan Syaraf / Pulpotomy / Tambalan Sementara Kecil', 75000, '02', 1),
('PG3B', 'Perawatan Syaraf / Pulpotomy / Tambalan Sementara Besar', 100000, '02', 1),
('PG4', 'Pulp Capping', 90000, '02', 1),
('PG5', 'Perawatan Syaraf Dengan Jarum File / Reamer', 100000, '02', 1),
('PG6', 'Pengisian Akar Ganda Dengan Guttap', 100000, '02', 1),
('PG7', 'Pengisian Akar Tunggal Dengan Guttap', 125000, '02', 1),
('PG8', 'Inlay / Onlay Metal', 600000, '02', 1),
('PG9A', 'Inlay Porcelain', 1300000, '02', 1),
('PG9B', 'Onlay Porcelain Kecil', 800000, '02', 1),
('PG9C', 'Onlay Porcelain Besar', 1000000, '02', 1),
('PRD1', 'Scalling + Polish Per Rahang', 150000, '02', 1),
('PRD2', 'Curret Per Regio', 125000, '02', 1),
('PRD3', 'Splinting Per Gigi', 100000, '02', 1),
('PRS1', 'Jacket Crown Acrylic', 600000, '02', 1),
('PRS10', 'REparasi / Rebase Perbaikan Cangkolan', 25000, '02', 1),
('PRS11', 'REparasi / Rebase Pergantian Gigi / Penambahan Gigi', 200000, '02', 1),
('PRS12', 'Full Dental Rahang Atas / Bawah', 2000000, '02', 1),
('PRS13', 'Full Dental Rahang Atas & Bawah', 2000000, '02', 1),
('PRS14', 'Gigi tiruan sebagian lepasan FRS / valplast - Gigi Pertama', 1500000, '02', 1),
('PRS15', 'Gigi tiruan sebagian lepasan FRS / valplast - Gigi Selanjutnya', 200000, '02', 1),
('PRS16', 'Frame Denture', 1500000, '02', 1),
('PRS17', 'Frame Denture - kerangka logam / landasan', 200000, '02', 1),
('PRS18', 'Frame Denture - Gigi Pertama dst', 150000, '02', 1),
('PRS19', 'Gigi tiruan kombinasi frame denture + valplast - kerangka logam landasan', 1500000, '02', 1),
('PRS2', 'Jacket Crown Porcelain / PFM', 1500000, '02', 1),
('PRS20', 'Gigi tiruan kombinasi frame denture + valplast - gigi pertama dst', 200000, '02', 1),
('PRS21', 'Gigi tiruan kombinasi frame denture + valplast - Valplast (hanya biaya lab)', 450000, '02', 1),
('PRS22', 'Kontrol / insersi', 100000, '02', 1),
('PRS3', 'Jacket Crown Porcelain / all Porcelain', 2500000, '02', 1),
('PRS4', 'Pin Crown Porcelain', 350000, '02', 1),
('PRS5', 'Metal Crown', 750000, '02', 1),
('PRS6', 'Crown Sementara', 250000, '02', 1),
('PRS7', 'Gigi Tiruan Sebagian Lepasan Acrylic ', 600000, '02', 1),
('PRS8', 'Gigi Tiruan Sebagian Lepasan Acrylic Gigi Pertama', 200000, '02', 1),
('PRS9', 'Reparasi / Rebase ', 300000, '02', 1);

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
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idTransaksi`, `tglTransaksi`, `totalTransaksi`, `idPasien`, `idPetAdministrasi`) VALUES
(1, '0000-00-00', 0, 1, 1);

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
  ADD PRIMARY KEY (`idTindakan`),
  ADD KEY `kdPoli` (`kdPoli`),
  ADD KEY `idTransaksi` (`idTransaksi`),
  ADD KEY `kdPoli_2` (`kdPoli`),
  ADD KEY `idTransaksi_2` (`idTransaksi`),
  ADD KEY `kdPoli_3` (`kdPoli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`),
  ADD KEY `idPetAdministrasi` (`idPetAdministrasi`),
  ADD KEY `idPasien` (`idPasien`),
  ADD KEY `idPetAdministrasi_2` (`idPetAdministrasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_berobat`
--
ALTER TABLE `daftar_berobat`
  MODIFY `idBerobat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `idDokter` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petugasadministrasi`
--
ALTER TABLE `petugasadministrasi`
  MODIFY `idPetAdministrasi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekammedis`
--
ALTER TABLE `rekammedis`
  MODIFY `noRM` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idTransaksi` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD CONSTRAINT `tindakan_ibfk_1` FOREIGN KEY (`kdPoli`) REFERENCES `poli` (`kdPoli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idPetAdministrasi`) REFERENCES `petugasadministrasi` (`idPetAdministrasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
