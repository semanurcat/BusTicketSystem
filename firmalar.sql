-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Ara 2023, 01:52:57
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `firmalar`
--

DELIMITER $$
--
-- Yordamlar
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `dorepeat` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 15 DO
    INSERT INTO Koltuklar (koltuk_id, durum, ucret) VALUES (i, FLOOR(0 + (RAND() * 2)), 0);
    SET i = i + 1;
  END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aotobus1`
--

CREATE TABLE `aotobus1` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `aotobus1`
--

INSERT INTO `aotobus1` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 1, 300),
(3, 1, 300),
(4, 1, 300),
(5, 1, 300),
(6, 1, 300),
(7, 0, 0),
(8, 1, 300),
(9, 0, 0),
(10, 1, 300),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 1, 300),
(15, 1, 300),
(16, 0, 0),
(17, 1, 300),
(18, 1, 300),
(19, 0, 0),
(20, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aotobus1bilet`
--

CREATE TABLE `aotobus1bilet` (
  `id` int(11) NOT NULL,
  `isim` varchar(50) NOT NULL,
  `soyisim` varchar(50) NOT NULL,
  `tcno` bigint(20) NOT NULL,
  `dg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aotobus2`
--

CREATE TABLE `aotobus2` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `aotobus2`
--

INSERT INTO `aotobus2` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 1, 300),
(3, 1, 300),
(4, 0, 0),
(5, 1, 300),
(6, 1, 300),
(7, 1, 300),
(8, 1, 300),
(9, 0, 0),
(10, 0, 0),
(11, 1, 300),
(12, 1, 300),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `otobüs_id` int(11) NOT NULL,
  `arac_tip` varchar(255) NOT NULL,
  `firma` varchar(255) NOT NULL,
  `koltuk_sayisi` int(11) NOT NULL,
  `yakit` int(11) NOT NULL,
  `sefer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `araclar`
--

INSERT INTO `araclar` (`otobüs_id`, `arac_tip`, `firma`, `koltuk_sayisi`, `yakit`, `sefer`) VALUES
(1, 'Otobus 1', 'A', 20, 0, 3),
(2, 'Otobus 2', 'A', 15, 0, 3),
(3, 'Otobus 1', 'B', 15, 1, 3),
(4, 'Otobus 2', 'B', 20, 1, 4),
(5, 'Otobus 1', 'C', 20, 1, 4),
(6, 'Uçak 1', 'C', 30, 3, 5),
(7, 'Uçak 2', 'C', 30, 3, 5),
(8, 'Tren 1', 'D', 25, 2, 1),
(9, 'Tren 2', 'D', 25, 2, 2),
(10, 'Tren 3', 'D', 25, 2, 2),
(11, 'Uçak 1', 'F', 30, 3, 6),
(12, 'Uçak 2', 'F', 30, 3, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aucret`
--

CREATE TABLE `aucret` (
  `idUcret` int(11) NOT NULL,
  `cıkıs_sehri` varchar(50) NOT NULL,
  `varis_sehri` varchar(50) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `arac_tip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `aucret`
--

INSERT INTO `aucret` (`idUcret`, `cıkıs_sehri`, `varis_sehri`, `fiyat`, `arac_tip`) VALUES
(1, 'İstanbul', 'Kocaeli', 50, 'Otobus 1'),
(2, 'İstanbul', 'Ankara', 300, 'Otobus 1'),
(3, 'Kocaeli ', 'İstanbul', 50, 'Otobus 1'),
(4, 'Kocaeli ', 'Ankara', 400, 'Otobus 1'),
(5, 'Ankara', 'İstanbul', 300, 'Otobus 1'),
(6, 'Ankara', 'Kocaeli', 400, 'Otobus 1'),
(24, 'İstanbul', 'Kocaeli', 50, 'Otobus 2'),
(25, 'İstanbul', 'Ankara', 300, 'Otobus 2'),
(26, 'Kocaeli', 'İstanbul', 50, 'Otobus 2'),
(27, 'Kocaeli ', 'Ankara', 400, 'Otobus 2'),
(28, 'Ankara', 'İstanbul', 300, 'Otobus 2'),
(29, 'Ankara ', 'Kocaeli', 400, 'Otobus 2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `botobus1`
--

CREATE TABLE `botobus1` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `botobus1`
--

INSERT INTO `botobus1` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 1, 300),
(5, 0, 0),
(6, 0, 0),
(7, 1, 300),
(8, 0, 0),
(9, 1, 300),
(10, 0, 0),
(11, 0, 0),
(12, 1, 300),
(13, 1, 300),
(14, 1, 300),
(15, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `botobus2`
--

CREATE TABLE `botobus2` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `botobus2`
--

INSERT INTO `botobus2` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 1, 300),
(3, 1, 300),
(4, 1, 300),
(5, 1, 300),
(6, 0, 0),
(7, 1, 300),
(8, 0, 0),
(9, 1, 300),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 1, 300),
(15, 1, 300),
(16, 1, 300),
(17, 1, 300),
(18, 0, 0),
(19, 1, 300),
(20, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bucret`
--

CREATE TABLE `bucret` (
  `idUcret` int(11) NOT NULL,
  `cıkıs_sehri` varchar(50) NOT NULL,
  `varis_sehri` varchar(50) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `arac_tip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `bucret`
--

INSERT INTO `bucret` (`idUcret`, `cıkıs_sehri`, `varis_sehri`, `fiyat`, `arac_tip`) VALUES
(1, 'İstanbul', 'Kocaeli', 50, 'Otobus 1'),
(2, 'İstanbul', 'Ankara', 300, 'Otobus 1'),
(3, 'Kocaeli', 'İstanbul', 50, 'Otobus 1'),
(4, 'Kocaeli', 'Ankara', 400, 'Otobus 1'),
(5, 'Ankara', 'İstanbul', 300, 'Otobus 1'),
(6, 'Ankara', 'Kocaeli', 400, 'Otobus 1'),
(7, 'İstanbul', 'Kocaeli', 50, 'Otobus 2'),
(8, 'İstanbul', 'Eskişehir', 150, 'Otobus 2'),
(9, 'İstanbul', 'Konya', 300, 'Otobus 2'),
(10, 'Kocaeli', 'İstanbul', 50, 'Otobus 2'),
(11, 'Kocaeli', 'Eskişehir', 100, 'Otobus 2'),
(12, 'Kocaeli', 'Konya', 250, 'Otobus 2'),
(13, 'Eskişehir', 'İstanbul', 150, 'Otobus 2'),
(14, 'Eskişehir', 'Kocaeli', 100, 'Otobus 2'),
(15, 'Eskişehir', 'Konya', 150, 'Otobus 2'),
(16, 'Konya', 'İstanbul', 300, 'Otobus 2'),
(17, 'Konya', 'Kocaeli', 250, 'Otobus 2'),
(18, 'Konya', 'Eskişehir', 150, 'Otobus 2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cotobus1`
--

CREATE TABLE `cotobus1` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `cotobus1`
--

INSERT INTO `cotobus1` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 1, 300),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 1, 300),
(6, 1, 300),
(7, 0, 0),
(8, 0, 0),
(9, 1, 300),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 1, 300),
(14, 0, 0),
(15, 0, 0),
(16, 1, 300),
(17, 0, 0),
(18, 1, 300),
(19, 0, 0),
(20, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cucak1`
--

CREATE TABLE `cucak1` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `cucak1`
--

INSERT INTO `cucak1` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 1, 300),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 1, 300),
(6, 0, 0),
(7, 1, 300),
(8, 0, 0),
(9, 1, 300),
(10, 1, 300),
(11, 1, 300),
(12, 0, 0),
(13, 1, 300),
(14, 1, 300),
(15, 0, 0),
(16, 0, 0),
(17, 1, 300),
(18, 0, 0),
(19, 1, 300),
(20, 1, 300),
(21, 1, 300),
(22, 1, 300),
(23, 1, 300),
(24, 1, 300),
(25, 0, 0),
(26, 1, 300),
(27, 1, 300),
(28, 1, 300),
(29, 1, 300),
(30, 1, 300);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cucak2`
--

CREATE TABLE `cucak2` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `cucak2`
--

INSERT INTO `cucak2` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 1, 300),
(2, 0, 0),
(3, 1, 300),
(4, 1, 300),
(5, 1, 300),
(6, 1, 300),
(7, 0, 0),
(8, 0, 0),
(9, 1, 300),
(10, 1, 300),
(11, 1, 300),
(12, 0, 0),
(13, 1, 300),
(14, 0, 0),
(15, 1, 300),
(16, 1, 300),
(17, 0, 0),
(18, 1, 300),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 1, 300),
(23, 0, 0),
(24, 1, 300),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 1, 300),
(30, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cucret`
--

CREATE TABLE `cucret` (
  `idUcret` int(11) NOT NULL,
  `cıkıs_sehri` varchar(50) NOT NULL,
  `varis_sehri` varchar(50) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `arac_tip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `cucret`
--

INSERT INTO `cucret` (`idUcret`, `cıkıs_sehri`, `varis_sehri`, `fiyat`, `arac_tip`) VALUES
(1, 'İstanbul', 'Kocaeli', 50, 'Otobus 1'),
(2, 'İstanbul', 'Eskişehir', 150, 'Otobus 1'),
(3, 'İstanbul', 'Konya', 300, 'Otobus 1'),
(4, 'Kocaeli', 'İstanbul', 50, 'Otobus 1'),
(5, 'Kocaeli', 'Eskişehir', 100, 'Otobus 1'),
(6, 'Kocaeli', 'Konya', 250, 'Otobus 1'),
(7, 'Eskişehir', 'İstanbul', 150, 'Otobus 1'),
(8, 'Eskişehir', 'Kocaeli', 100, 'Otobus 1'),
(9, 'Eskişehir', 'Konya', 150, 'Otobus 1'),
(10, 'Konya', 'İstanbul', 300, 'Otobus 1'),
(11, 'Konya', 'Kocaeli', 250, 'Otobus 1'),
(12, 'Konya', 'Eskişehir', 150, 'Otobus 1'),
(13, 'İstanbul', 'Konya', 1200, 'Uçak 1'),
(14, 'Konya', 'İstanbul', 1200, 'Uçak 1'),
(15, 'İstanbul', 'Konya', 1200, 'Uçak 2'),
(16, 'Konya', 'İstanbul', 1200, 'Uçak 2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dtren1`
--

CREATE TABLE `dtren1` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `dtren1`
--

INSERT INTO `dtren1` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 1, 300),
(3, 1, 300),
(4, 1, 300),
(5, 0, 0),
(6, 1, 300),
(7, 1, 300),
(8, 1, 300),
(9, 1, 300),
(10, 0, 0),
(11, 0, 0),
(12, 1, 300),
(13, 1, 300),
(14, 0, 0),
(15, 1, 300),
(16, 1, 300),
(17, 1, 300),
(18, 0, 0),
(19, 1, 300),
(20, 1, 300),
(21, 1, 300),
(22, 1, 300),
(23, 1, 300),
(24, 1, 300),
(25, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dtren2`
--

CREATE TABLE `dtren2` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `dtren2`
--

INSERT INTO `dtren2` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 1, 300),
(3, 0, 0),
(4, 0, 0),
(5, 1, 300),
(6, 0, 0),
(7, 1, 300),
(8, 0, 0),
(9, 0, 0),
(10, 1, 300),
(11, 1, 300),
(12, 0, 0),
(13, 1, 300),
(14, 0, 0),
(15, 0, 0),
(16, 1, 300),
(17, 0, 0),
(18, 1, 300),
(19, 1, 300),
(20, 1, 300),
(21, 1, 300),
(22, 0, 0),
(23, 0, 0),
(24, 1, 300),
(25, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dtren3`
--

CREATE TABLE `dtren3` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `dtren3`
--

INSERT INTO `dtren3` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 1, 300),
(2, 1, 300),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 1, 300),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 1, 300),
(16, 1, 300),
(17, 1, 300),
(18, 1, 300),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 1, 300),
(23, 0, 0),
(24, 1, 300),
(25, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ducret`
--

CREATE TABLE `ducret` (
  `idUcret` int(11) NOT NULL,
  `cıkıs_sehri` varchar(50) NOT NULL,
  `varis_sehri` varchar(50) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `arac_tip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `ducret`
--

INSERT INTO `ducret` (`idUcret`, `cıkıs_sehri`, `varis_sehri`, `fiyat`, `arac_tip`) VALUES
(1, 'İstanbul', 'Kocaeli', 50, 'Tren 1'),
(2, 'İstanbul', 'Bilecik', 150, 'Tren 1'),
(3, 'İstanbul', 'Eskişehir', 200, 'Tren 1'),
(4, 'İstanbul ', 'Ankara', 250, 'Tren 1'),
(5, 'Kocaeli ', 'İstanbul', 50, 'Tren 1'),
(6, 'Kocaeli', 'Bilecik', 50, 'Tren 1'),
(7, 'Kocaeli ', 'Eskişehir', 100, 'Tren 1'),
(8, 'Kocaeli', 'Ankara', 200, 'Tren 1'),
(9, 'Bilecik ', 'İstanbul', 150, 'Tren 1'),
(10, 'Bilecik', 'Kocaeli', 50, 'Tren 1'),
(11, 'Bilecik', 'Eskişehir', 50, 'Tren 1'),
(12, 'Bilecik ', 'Ankara', 150, 'Tren 1'),
(13, 'Eskişehir', 'İstanbul', 200, 'Tren 1'),
(14, 'Eskişehir', 'Kocaeli', 100, 'Tren 1'),
(15, 'Eskişehir', 'Bilecik', 50, 'Tren 1'),
(16, 'Eskişehir', 'Ankara', 100, 'Tren 1'),
(17, 'Ankara ', 'İstanbul', 250, 'Tren 1'),
(18, 'Ankara', 'Kocaeli', 200, 'Tren 1'),
(19, 'Ankara', 'Bilecik', 150, 'Tren 1'),
(20, 'Ankara', 'Eskişehir', 100, 'Tren 1'),
(21, 'İstanbul', 'Kocaeli', 50, 'Tren 2'),
(22, 'Kocaeli', 'İstanbul', 50, 'Tren 2'),
(23, 'İstanbul', 'Bilecik', 150, 'Tren 2'),
(24, 'Bilecik', 'İstanbul', 150, 'Tren 2'),
(25, 'İstanbul', 'Eskişehir', 200, 'Tren 2'),
(26, 'Eskişehir', 'İstanbul', 200, 'Tren 2'),
(27, 'İstanbul', 'Konya', 300, 'Tren 2'),
(28, 'Konya', 'İstanbul', 300, 'Tren 2'),
(29, 'Kocaeli', 'Bilecik', 50, 'Tren 2'),
(30, 'Bilecik', 'Kocaeli', 50, 'Tren 2'),
(31, 'Kocaeli', 'Eskişehir', 100, 'Tren 2'),
(32, 'Eskişehir', 'Kocaeli', 100, 'Tren 2'),
(33, 'Kocaeli', 'Konya', 250, 'Tren 2'),
(34, 'Konya', 'Kocaeli', 250, 'Tren 2'),
(35, 'Bilecik', 'Eskişehir', 50, 'Tren 2'),
(36, 'Eskişehir', 'Bilecik', 50, 'Tren 2'),
(37, 'Bilecik', 'Konya', 200, 'Tren 2'),
(38, 'Konya', 'Bilecik', 200, 'Tren 2'),
(39, 'Eskişehir', 'Konya', 150, 'Tren 2'),
(40, 'Konya', 'Eskişehir', 150, 'Tren 2'),
(41, 'İstanbul', 'Kocaeli', 50, 'Tren 3'),
(42, 'Kocaeli', 'İstanbul', 50, 'Tren 3'),
(43, 'İstanbul', 'Bilecik', 150, 'Tren 3'),
(44, 'Bilecik', 'İstanbul', 150, 'Tren 3'),
(45, 'İstanbul', 'Eskişehir', 200, 'Tren 3'),
(46, 'Eskişehir', 'İstanbul', 200, 'Tren 3'),
(47, 'İstanbul', 'Konya', 300, 'Tren 3'),
(48, 'Konya', 'İstanbul', 300, 'Tren 3'),
(49, 'Kocaeli', 'Bilecik', 50, 'Tren 3'),
(50, 'Bilecik', 'Kocaeli', 50, 'Tren 3'),
(51, 'Kocaeli', 'Eskişehir', 100, 'Tren 3'),
(52, 'Eskişehir', 'Kocaeli', 100, 'Tren 3'),
(53, 'Kocaeli', 'Konya', 250, 'Tren 3'),
(54, 'Konya', 'Kocaeli', 250, 'Tren 3'),
(55, 'Bilecik', 'Eskişehir', 50, 'Tren 3'),
(56, 'Eskişehir', 'Bilecik', 50, 'Tren 3'),
(57, 'Bilecik', 'Konya', 200, 'Tren 3'),
(58, 'Konya', 'Bilecik', 200, 'Tren 3'),
(59, 'Eskişehir', 'Konya', 150, 'Tren 3'),
(60, 'Konya', 'Eskişehir', 150, 'Tren 3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firmalar`
--

CREATE TABLE `firmalar` (
  `id` int(10) NOT NULL,
  `firma` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `firmalar`
--

INSERT INTO `firmalar` (`id`, `firma`, `sifre`) VALUES
(1, 'A', '1'),
(2, 'B', '1'),
(3, 'C', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fucak1`
--

CREATE TABLE `fucak1` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `fucak1`
--

INSERT INTO `fucak1` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 1, 300),
(5, 1, 300),
(6, 1, 300),
(7, 1, 300),
(8, 0, 0),
(9, 0, 0),
(10, 1, 300),
(11, 1, 300),
(12, 1, 300),
(13, 1, 300),
(14, 0, 0),
(15, 1, 300),
(16, 0, 0),
(17, 1, 300),
(18, 0, 0),
(19, 0, 0),
(20, 1, 300),
(21, 1, 300),
(22, 1, 300),
(23, 1, 300),
(24, 1, 300),
(25, 1, 300),
(26, 1, 300),
(27, 1, 300),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fucak2`
--

CREATE TABLE `fucak2` (
  `koltuk_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `fucak2`
--

INSERT INTO `fucak2` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 1, 300),
(2, 1, 300),
(3, 1, 300),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 1, 300),
(8, 0, 0),
(9, 1, 300),
(10, 1, 300),
(11, 0, 0),
(12, 1, 300),
(13, 1, 300),
(14, 0, 0),
(15, 0, 0),
(16, 1, 300),
(17, 1, 300),
(18, 1, 300),
(19, 0, 0),
(20, 1, 300),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 1, 300),
(27, 1, 300),
(28, 1, 300),
(29, 0, 0),
(30, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fucret`
--

CREATE TABLE `fucret` (
  `idUcret` int(11) NOT NULL,
  `cıkıs_sehri` varchar(50) NOT NULL,
  `varis_sehri` varchar(50) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `arac_tip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `fucret`
--

INSERT INTO `fucret` (`idUcret`, `cıkıs_sehri`, `varis_sehri`, `fiyat`, `arac_tip`) VALUES
(1, 'İstanbul', 'Ankara', 1000, 'Uçak 1'),
(2, 'Ankara', 'İstanbul', 1000, 'Uçak 1'),
(3, 'İstanbul', 'Ankara', 1000, 'Uçak 2'),
(4, 'Ankara', 'İstanbul', 1000, 'Uçak 2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `koltuklar`
--

CREATE TABLE `koltuklar` (
  `koltuk_id` int(11) DEFAULT NULL,
  `durum` int(11) DEFAULT NULL,
  `ucret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `koltuklar`
--

INSERT INTO `koltuklar` (`koltuk_id`, `durum`, `ucret`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 1, 300),
(4, 0, 0),
(5, 1, 300),
(6, 0, 0),
(7, 1, 300),
(8, 1, 300),
(9, 1, 300),
(10, 1, 300),
(11, 1, 300),
(12, 0, 0),
(13, 1, 300),
(14, 1, 300),
(15, 0, 0),
(1, 0, NULL),
(2, 1, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 1, NULL),
(10, 0, NULL),
(11, 1, NULL),
(12, 1, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 1, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seferler`
--

CREATE TABLE `seferler` (
  `sefer_id` int(20) NOT NULL,
  `rota` varchar(255) NOT NULL,
  `tarih` date NOT NULL,
  `arac_tip` varchar(255) NOT NULL,
  `firma` varchar(255) NOT NULL,
  `koltuk_sayisi` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `seferler`
--

INSERT INTO `seferler` (`sefer_id`, `rota`, `tarih`, `arac_tip`, `firma`, `koltuk_sayisi`) VALUES
(1, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-08', 'Otobus 1', 'A', 20),
(2, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-09', 'Otobus 1', 'A', 20),
(3, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-10', 'Otobus 1', 'A', 20),
(4, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-11', 'Otobus 1', 'A', 20),
(5, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-12', 'Otobus 1', 'A', 20),
(6, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-13', 'Otobus 1', 'A', 20),
(7, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-14', 'Otobus 1', 'A', 20),
(8, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-08', 'Otobus 2', 'A', 15),
(9, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-09', 'Otobus 2', 'A', 15),
(10, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-10', 'Otobus 2', 'A', 15),
(11, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-11', 'Otobus 2', 'A', 15),
(12, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-12', 'Otobus 2', 'A', 15),
(13, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-13', 'Otobus 2', 'A', 15),
(14, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-14', 'Otobus 2', 'A', 15),
(15, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-08', 'Otobus 1', 'B', 15),
(16, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-09', 'Otobus 1', 'B', 15),
(17, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-10', 'Otobus 1', 'B', 15),
(18, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-11', 'Otobus 1', 'B', 15),
(19, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-12', 'Otobus 1', 'B', 15),
(20, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-13', 'Otobus 1', 'B', 15),
(21, 'İstanbul - Kocaeli - Ankara - Kocaeli - İstanbul', '2023-12-14', 'Otobus 1', 'B', 15),
(22, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-08', 'Otobus 2', 'B', 20),
(23, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-09', 'Otobus 2', 'B', 20),
(24, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-10', 'Otobus 2', 'B', 20),
(25, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-11', 'Otobus 2', 'B', 20),
(26, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-12', 'Otobus 2', 'B', 20),
(27, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-13', 'Otobus 2', 'B', 20),
(28, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-14', 'Otobus 2', 'B', 20),
(29, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-08', 'Otobus 1', 'C', 20),
(30, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-09', 'Otobus 1', 'C', 20),
(31, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-10', 'Otobus 1', 'C', 20),
(32, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-11', 'Otobus 1', 'C', 20),
(33, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-12', 'Otobus 1', 'C', 20),
(34, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-13', 'Otobus 1', 'C', 20),
(35, 'İstanbul - Kocaeli - Eskişehir - Konya - Eskişehir - Kocaeli - İstanbul', '2023-12-14', 'Otobus 1', 'C', 20),
(36, 'İstanbul - Konya - İstanbul', '2023-12-08', 'Uçak 1', 'C', 30),
(37, 'İstanbul - Konya - İstanbul', '2023-12-09', 'Uçak 1', 'C', 30),
(38, 'İstanbul - Konya - İstanbul', '2023-12-10', 'Uçak 1', 'C', 30),
(39, 'İstanbul - Konya - İstanbul', '2023-12-11', 'Uçak 1', 'C', 30),
(40, 'İstanbul - Konya - İstanbul', '2023-12-12', 'Uçak 1', 'C', 30),
(41, 'İstanbul - Konya - İstanbul', '2023-12-13', 'Uçak 1', 'C', 30),
(42, 'İstanbul - Konya - İstanbul', '2023-12-14', 'Uçak 1', 'C', 30),
(43, 'İstanbul - Konya - İstanbul', '2023-12-08', 'Uçak 2', 'C', 30),
(44, 'İstanbul - Konya - İstanbul', '2023-12-09', 'Uçak 2', 'C', 30),
(45, 'İstanbul - Konya - İstanbul', '2023-12-10', 'Uçak 2', 'C', 30),
(46, 'İstanbul - Konya - İstanbul', '2023-12-11', 'Uçak 2', 'C', 30),
(47, 'İstanbul - Konya - İstanbul', '2023-12-12', 'Uçak 2', 'C', 30),
(48, 'İstanbul - Konya - İstanbul', '2023-12-13', 'Uçak 2', 'C', 30),
(49, 'İstanbul - Konya - İstanbul', '2023-12-14', 'Uçak 2', 'C', 30),
(50, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Ankara - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-08', 'Tren 1', 'D', 25),
(51, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Ankara - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-09', 'Tren 1', 'D', 25),
(52, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Ankara - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-10', 'Tren 1', 'D', 25),
(53, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Ankara - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-11', 'Tren 1', 'D', 25),
(54, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Ankara - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-12', 'Tren 1', 'D', 25),
(55, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Ankara - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-13', 'Tren 1', 'D', 25),
(56, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Ankara - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-14', 'Tren 1', 'D', 25),
(57, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-08', 'Tren 2', 'D', 25),
(58, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-09', 'Tren 2', 'D', 25),
(59, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-10', 'Tren 2', 'D', 25),
(60, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-11', 'Tren 2', 'D', 25),
(61, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-12', 'Tren 2', 'D', 25),
(62, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-13', 'Tren 2', 'D', 25),
(63, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-14', 'Tren 2', 'D', 25),
(64, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-08', 'Tren 3', 'D', 25),
(65, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-09', 'Tren 3', 'D', 25),
(66, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-10', 'Tren 3', 'D', 25),
(67, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-11', 'Tren 3', 'D', 25),
(68, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-12', 'Tren 3', 'D', 25),
(69, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-13', 'Tren 3', 'D', 25),
(70, 'İstanbul - Kocaeli - Bilecik - Eskişehir - Konya - Eskişehir\r\n- Bilecik - Kocaeli - İstanbul', '2023-12-14', 'Tren 3', 'D', 25),
(71, 'İstanbul - Ankara - İstanbul', '2023-12-08', 'Uçak 1', 'F', 30),
(72, 'İstanbul - Ankara - İstanbul', '2023-12-09', 'Uçak 1', 'F', 30),
(73, 'İstanbul - Ankara - İstanbul', '2023-12-10', 'Uçak 1', 'F', 30),
(74, 'İstanbul - Ankara - İstanbul', '2023-12-11', 'Uçak 1', 'F', 30),
(75, 'İstanbul - Ankara - İstanbul', '2023-12-12', 'Uçak 1', 'F', 30),
(76, 'İstanbul - Ankara - İstanbul', '2023-12-13', 'Uçak 1', 'F', 30),
(77, 'İstanbul - Ankara - İstanbul', '2023-12-14', 'Uçak 1', 'F', 30),
(78, 'İstanbul - Ankara - İstanbul', '2023-12-08', 'Uçak 2', 'F', 30),
(79, 'İstanbul - Ankara - İstanbul', '2023-12-09', 'Uçak 2', 'F', 30),
(80, 'İstanbul - Ankara - İstanbul', '2023-12-10', 'Uçak 2', 'F', 30),
(81, 'İstanbul - Ankara - İstanbul', '2023-12-11', 'Uçak 2', 'F', 30),
(82, 'İstanbul - Ankara - İstanbul', '2023-12-12', 'Uçak 2', 'F', 30),
(83, 'İstanbul - Ankara - İstanbul', '2023-12-13', 'Uçak 2', 'F', 30),
(84, 'İstanbul - Ankara - İstanbul', '2023-12-14', 'Uçak 2', 'F', 30);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `aotobus1`
--
ALTER TABLE `aotobus1`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `aotobus2`
--
ALTER TABLE `aotobus2`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`otobüs_id`);

--
-- Tablo için indeksler `aucret`
--
ALTER TABLE `aucret`
  ADD PRIMARY KEY (`idUcret`);

--
-- Tablo için indeksler `botobus1`
--
ALTER TABLE `botobus1`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `botobus2`
--
ALTER TABLE `botobus2`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `cotobus1`
--
ALTER TABLE `cotobus1`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `cucak1`
--
ALTER TABLE `cucak1`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `cucak2`
--
ALTER TABLE `cucak2`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `dtren1`
--
ALTER TABLE `dtren1`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `dtren2`
--
ALTER TABLE `dtren2`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `dtren3`
--
ALTER TABLE `dtren3`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `ducret`
--
ALTER TABLE `ducret`
  ADD PRIMARY KEY (`idUcret`);

--
-- Tablo için indeksler `firmalar`
--
ALTER TABLE `firmalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fucak1`
--
ALTER TABLE `fucak1`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `fucak2`
--
ALTER TABLE `fucak2`
  ADD PRIMARY KEY (`koltuk_id`);

--
-- Tablo için indeksler `fucret`
--
ALTER TABLE `fucret`
  ADD PRIMARY KEY (`idUcret`);

--
-- Tablo için indeksler `seferler`
--
ALTER TABLE `seferler`
  ADD PRIMARY KEY (`sefer_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `aotobus1`
--
ALTER TABLE `aotobus1`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `aotobus2`
--
ALTER TABLE `aotobus2`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `otobüs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `aucret`
--
ALTER TABLE `aucret`
  MODIFY `idUcret` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `botobus1`
--
ALTER TABLE `botobus1`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `botobus2`
--
ALTER TABLE `botobus2`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `cotobus1`
--
ALTER TABLE `cotobus1`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `cucak1`
--
ALTER TABLE `cucak1`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `cucak2`
--
ALTER TABLE `cucak2`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `dtren1`
--
ALTER TABLE `dtren1`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `dtren2`
--
ALTER TABLE `dtren2`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `dtren3`
--
ALTER TABLE `dtren3`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `ducret`
--
ALTER TABLE `ducret`
  MODIFY `idUcret` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Tablo için AUTO_INCREMENT değeri `firmalar`
--
ALTER TABLE `firmalar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `fucak1`
--
ALTER TABLE `fucak1`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `fucak2`
--
ALTER TABLE `fucak2`
  MODIFY `koltuk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `fucret`
--
ALTER TABLE `fucret`
  MODIFY `idUcret` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `seferler`
--
ALTER TABLE `seferler`
  MODIFY `sefer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
