-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for keuangan_sample
CREATE DATABASE IF NOT EXISTS `keuangan_sample` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `keuangan_sample`;

-- Dumping structure for table keuangan_sample.data_transaksi
CREATE TABLE IF NOT EXISTS `data_transaksi` (
  `id` int(11) NOT NULL,
  `id_rekon` int(11) DEFAULT NULL,
  `sts_pembukuan` int(11) DEFAULT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `id_payment_code` int(11) DEFAULT NULL,
  `jns_pembayaran` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `nm_bank` varchar(255) DEFAULT NULL,
  `virtual_account` decimal(10,0) DEFAULT NULL,
  `trx_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_no` int(11) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `tagihan` decimal(10,0) DEFAULT NULL,
  `total_terbayar` decimal(10,0) DEFAULT NULL,
  `is_paid` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `kd_semester` int(11) DEFAULT NULL,
  `nominal_bayar` decimal(20,6) DEFAULT NULL,
  `maba` tinyint(1) DEFAULT NULL,
  `piutang` tinyint(1) DEFAULT NULL,
  `nim` decimal(10,0) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `prodi` int(11) DEFAULT NULL,
  `induk_prodi` int(11) DEFAULT NULL,
  `jenjang` varchar(255) DEFAULT NULL,
  `kat_ukt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table keuangan_sample.data_transaksi: ~10 rows (approximately)
/*!40000 ALTER TABLE `data_transaksi` DISABLE KEYS */;
REPLACE INTO `data_transaksi` (`id`, `id_rekon`, `sts_pembukuan`, `id_bank`, `id_payment_code`, `jns_pembayaran`, `deskripsi`, `nm_bank`, `virtual_account`, `trx_id`, `customer_name`, `customer_no`, `customer_email`, `tagihan`, `total_terbayar`, `is_paid`, `payment_date`, `kd_semester`, `nominal_bayar`, `maba`, `piutang`, `nim`, `angkatan`, `prodi`, `induk_prodi`, `jenjang`, `kat_ukt`) VALUES
	(1, 1001, 1, 101, 10001, 1, 'Pembayaran UKT', 'Bank Mandiri', 1234567890, 100001, 'Budi', 1000001, 'budi@email.com', 5000000, 5000000, 1, '2023-11-30', 1, 5000000.000000, 1, 0, 1234567890, 2023, 1, 1, 'S1', 1),
	(2, 1002, 1, 102, 10002, 2, 'Pembayaran SPP', 'Bank BCA', 2345678901, 100002, 'Ani', 1000002, 'ani@email.com', 3000000, 3000000, 1, '2023-11-29', 2, 3000000.000000, 0, 1, 2345678901, 2022, 2, 2, 'S2', 2),
	(3, 1003, 1, 103, 10003, 1, 'Pembayaran UKT', 'Bank BRI', 3456789012, 100003, 'Dodi', 1000003, 'dodi@email.com', 4000000, 4000000, 1, '2023-11-28', 3, 4000000.000000, 1, 0, 3456789012, 2021, 3, 3, 'S3', 3),
	(4, 1004, 1, 104, 10004, 2, 'Pembayaran SPP', 'Bank Mandiri', 4567890123, 100004, 'Eva', 1000004, 'eva@email.com', 3500000, 3500000, 1, '2023-11-27', 4, 3500000.000000, 0, 1, 4567890123, 2020, 4, 4, 'S4', 4),
	(5, 1005, 1, 105, 10005, 1, 'Pembayaran UKT', 'Bank BCA', 5678901234, 100005, 'Fajar', 1000005, 'fajar@email.com', 4500000, 4500000, 1, '2023-11-26', 5, 4500000.000000, 1, 0, 5678901234, 2019, 5, 5, 'S5', 5),
	(6, 1006, 1, 106, 10006, 1, 'Pembayaran UKT', 'Bank BRI', 6789012345, 100006, 'Gina', 1000006, 'gina@email.com', 4000000, 4000000, 1, '2023-11-25', 6, 4000000.000000, 1, 0, 6789012345, 2018, 6, 6, 'S6', 6),
	(7, 1007, 1, 107, 10007, 2, 'Pembayaran SPP', 'Bank Mandiri', 7890123456, 100007, 'Hari', 1000007, 'hari@email.com', 3500000, 3500000, 1, '2023-11-24', 7, 3500000.000000, 0, 1, 7890123456, 2017, 7, 7, 'S7', 7),
	(8, 1008, 1, 108, 10008, 1, 'Pembayaran UKT', 'Bank BCA', 8901234567, 100008, 'Intan', 1000008, 'intan@email.com', 4500000, 4500000, 1, '2023-11-23', 8, 4500000.000000, 1, 0, 8901234567, 2016, 8, 8, 'S8', 8),
	(9, 1009, 1, 109, 10009, 2, 'Pembayaran SPP', 'Bank BRI', 9012345678, 100009, 'Joko', 1000009, 'joko@email.com', 4000000, 4000000, 1, '2023-11-22', 9, 4000000.000000, 0, 1, 9012345678, 2015, 9, 9, 'S9', 9),
	(10, 1010, 1, 110, 10010, 1, 'Pembayaran UKT', 'Bank Mandiri', 123456789, 100010, 'Kiki', 1000010, 'kiki@email.com', 5000000, 5000000, 1, '2023-11-21', 10, 5000000.000000, 1, 0, 123456789, 2014, 10, 10, 'S10', 10);
/*!40000 ALTER TABLE `data_transaksi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
