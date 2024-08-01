-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.3.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table spdt.art
CREATE TABLE IF NOT EXISTS `art` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `IdSampel` bigint DEFAULT NULL,
  `NamaArt` text COLLATE utf8mb4_general_ci,
  `Hub` int DEFAULT NULL,
  `Jk` int DEFAULT NULL,
  `Umur` int DEFAULT NULL,
  `PartSekolah` int DEFAULT NULL,
  `IjazahTertinggi` int DEFAULT NULL,
  `IsUsahaTani` int DEFAULT NULL,
  `IsBuruhTani` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_art_sampel` (`IdSampel`),
  CONSTRAINT `FK_art_sampel` FOREIGN KEY (`IdSampel`) REFERENCES `sampel` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table spdt.art: ~2 rows (approximately)
INSERT INTO `art` (`Id`, `IdSampel`, `NamaArt`, `Hub`, `Jk`, `Umur`, `PartSekolah`, `IjazahTertinggi`, `IsUsahaTani`, `IsBuruhTani`) VALUES
	(1, 7, 'dfddf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 7, 'rtrtrtrtrtt', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table spdt.makanan
CREATE TABLE IF NOT EXISTS `makanan` (
  `IdSampel` bigint DEFAULT NULL,
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `JenisBarang` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kualitas` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Satuan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kode` varchar(7) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Banyaknya` int DEFAULT NULL,
  `Nilai` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_konsumsi_makanan_sampel` (`IdSampel`),
  CONSTRAINT `FK_konsumsi_makanan_sampel` FOREIGN KEY (`IdSampel`) REFERENCES `sampel` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table spdt.makanan: ~1 rows (approximately)
INSERT INTO `makanan` (`IdSampel`, `Id`, `JenisBarang`, `Kualitas`, `Satuan`, `Kode`, `Banyaknya`, `Nilai`) VALUES
	(7, 1, 'fgfgf', 'fgfg', 'fgfg', 'fgfgf', 123, 23);

-- Dumping structure for table spdt.nonmakanan
CREATE TABLE IF NOT EXISTS `nonmakanan` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `IdSampel` bigint DEFAULT NULL,
  `JenisBarang` text COLLATE utf8mb4_general_ci,
  `Kualitas` text COLLATE utf8mb4_general_ci,
  `Satuan` text COLLATE utf8mb4_general_ci,
  `Kode` varchar(7) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BanyaknyaSebulan` int DEFAULT NULL,
  `NilaiSebulan` int DEFAULT NULL,
  `NilaiSetahun` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_konsumsi_non_makanan_sampel` (`IdSampel`),
  CONSTRAINT `FK_konsumsi_non_makanan_sampel` FOREIGN KEY (`IdSampel`) REFERENCES `sampel` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table spdt.nonmakanan: ~0 rows (approximately)

-- Dumping structure for table spdt.sampel
CREATE TABLE IF NOT EXISTS `sampel` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Prov` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Kab` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kec` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Desa` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nurts` text COLLATE utf8mb4_general_ci,
  `NamaPemilik` text COLLATE utf8mb4_general_ci,
  `KodePencacah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `KodePemeriksa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `TglPencacahan` text COLLATE utf8mb4_general_ci,
  `TglPemeriksaan` text COLLATE utf8mb4_general_ci,
  `Catatan` text COLLATE utf8mb4_general_ci,
  `Status` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table spdt.sampel: ~7 rows (approximately)
INSERT INTO `sampel` (`Id`, `Prov`, `Kab`, `Kec`, `Desa`, `Nurts`, `NamaPemilik`, `KodePencacah`, `KodePemeriksa`, `TglPencacahan`, `TglPemeriksaan`, `Catatan`, `Status`) VALUES
	(1, '33', '17', '010', '001', '1', 'DIANA', NULL, NULL, NULL, NULL, NULL, 'Utama'),
	(2, '33', '16', '010', '002', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'Cadangan'),
	(7, '', NULL, NULL, NULL, '89', 'Lambe', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, '', NULL, NULL, NULL, '89', 'Lambe', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, '', NULL, NULL, NULL, '89', 'Lambe', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, '', NULL, NULL, NULL, '89', 'Lambe', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, '', NULL, NULL, NULL, '89', 'Lambe', NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table spdt.user
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int DEFAULT NULL,
  `Username` text COLLATE utf8mb4_general_ci,
  `Password` text COLLATE utf8mb4_general_ci,
  `Nama` text COLLATE utf8mb4_general_ci,
  `Level` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table spdt.user: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
