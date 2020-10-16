-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2020 at 11:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` varchar(64) NOT NULL,
  `jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `jurusan`) VALUES
('16ff3b15-7c37-4fec-afab-27741ce630b3', 'Jakarta-Banten'),
('4e8dc30b-75d1-492f-a505-b539ccbf2e86', 'Jakarta-Jonggol'),
('926d3cbb-7f18-441a-a9e4-018fdfa73df5', 'Jakarta-Merak'),
('b0f0105e-8ba0-420e-aa52-baf29f0e0a4a', 'Jakarta-Bandung'),
('bb79aaf1-4fb5-42df-964c-05d12790a682', 'Jakarta-Merak'),
('ef1d6c8d-04ab-4cd6-a14f-3f7387b9b439', 'Jakarta-Bandung'),
('f2b82705-b4d1-4b34-8b09-392dfa199bcb', 'Jakarta-Merak');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `jurusan_id` varchar(64) DEFAULT NULL,
  `id` varchar(64) NOT NULL,
  `name` varchar(15) NOT NULL,
  `nik` int(11) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`jurusan_id`, `id`, `name`, `nik`, `address`) VALUES
('16ff3b15-7c37-4fec-afab-27741ce630b3', '2d3a3a76-0942-466d-8673-62cba30bdcac', 'Maman', 100000, 'Jl Nin aja'),
('ef1d6c8d-04ab-4cd6-a14f-3f7387b9b439', '4a95c9af-eea0-4818-851c-5bad683cc45f', 'Bambang', 1200000, 'Jl Nin aja'),
('4e8dc30b-75d1-492f-a505-b539ccbf2e86', '4e4ec8d4-77b5-4fa4-938e-76a853a4f8c5', 'Acong', 1200000, 'Jl Nin aja'),
('b0f0105e-8ba0-420e-aa52-baf29f0e0a4a', '6462bb26-e8df-442b-b1c8-6f6ec13e030a', 'Testing DB', 140450, 'Jl Nin aja dulu'),
('f2b82705-b4d1-4b34-8b09-392dfa199bcb', '9e8dc0c3-a472-45a6-88a8-2e7d879691c6', 'Testing', 140450, 'Jl Nin aja dulu');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id` varchar(64) NOT NULL,
  `matkul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `matkul`) VALUES
('4cfb1412-3256-4cd5-88ec-ce7a6d681f48', 'Ruby!'),
('68b33d31-583d-4210-8ea0-3dd8a8adff6b', 'Phyton!'),
('7bf0d5f4-4c16-489a-9531-aaba836bfa04', 'GOLANG!'),
('994dbbd1-4cc0-4976-bd65-4b127958f372', 'JavaScript!'),
('f202555f-a3a3-4a1b-a112-b89dbadb186b', 'Java!');

-- --------------------------------------------------------

--
-- Table structure for table `matkul_mahasiswa`
--

CREATE TABLE `matkul_mahasiswa` (
  `mahasiswa_id` varchar(64) NOT NULL,
  `matkul_id` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul_mahasiswa`
--

INSERT INTO `matkul_mahasiswa` (`mahasiswa_id`, `matkul_id`) VALUES
('2d3a3a76-0942-466d-8673-62cba30bdcac', '68b33d31-583d-4210-8ea0-3dd8a8adff6b'),
('4a95c9af-eea0-4818-851c-5bad683cc45f', '4cfb1412-3256-4cd5-88ec-ce7a6d681f48'),
('4e4ec8d4-77b5-4fa4-938e-76a853a4f8c5', '7bf0d5f4-4c16-489a-9531-aaba836bfa04'),
('6462bb26-e8df-442b-b1c8-6f6ec13e030a', '994dbbd1-4cc0-4976-bd65-4b127958f372'),
('9e8dc0c3-a472-45a6-88a8-2e7d879691c6', 'f202555f-a3a3-4a1b-a112-b89dbadb186b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cc6cafceb3738342489228a0e78` (`jurusan_id`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matkul_mahasiswa`
--
ALTER TABLE `matkul_mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`,`matkul_id`),
  ADD KEY `IDX_a835df3495d3f9db526de1070f` (`mahasiswa_id`),
  ADD KEY `IDX_f4796247c239e3774e28d1804f` (`matkul_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `FK_cc6cafceb3738342489228a0e78` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `matkul_mahasiswa`
--
ALTER TABLE `matkul_mahasiswa`
  ADD CONSTRAINT `FK_a835df3495d3f9db526de1070fe` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_f4796247c239e3774e28d1804fd` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
