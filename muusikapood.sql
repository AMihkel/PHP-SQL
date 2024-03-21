-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 21, 2024 kell 03:12 PL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `muusikapood`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `albumid`
--

CREATE TABLE `albumid` (
  `id` int(10) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `aasta` year(4) NOT NULL,
  `hind` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `albumid`
--

INSERT INTO `albumid` (`id`, `artist`, `album`, `aasta`, `hind`) VALUES
(1, 'Onu Bella', 'ma võtsin viina', '1998', 100.00),
(3, 'Emmi', 'Job', '1992', 98.00),
(4, 'Irita', 'Stringtough', '1993', 85.00),
(5, 'Aurel', 'Stronghold', '2007', 76.00),
(6, 'Noam', 'Y-Solowarm', '2010', 60.00),
(7, 'Ahmed', 'Quo Lux', '2000', 87.00),
(8, 'Audrye', 'Zoolab', '1993', 24.00),
(9, 'Renato', 'Voltsillam', '2009', 15.00),
(10, 'Hermon', 'Vagram', '1998', 88.00),
(11, 'Gearalt', 'Ronstring', '2010', 82.00),
(12, 'Nelson', 'Lotlux', '1993', 95.00),
(13, 'Morgun', 'Prodder', '2007', 13.00),
(14, 'Torin', 'Greenlam', '2006', 53.00),
(15, 'Isabelita', 'Wrapsafe', '1988', 5.00),
(16, 'Kendra', 'Holdlamis', '2009', 8.00),
(17, 'Zara', 'Home Ing', '2007', 86.00),
(18, 'Myrtia', 'Overhold', '1996', 81.00),
(19, 'Katie', 'Holdlamis', '2008', 73.00),
(20, 'Julietta', 'Ronstring', '2001', 15.00),
(21, 'Tessa', 'Tempsoft', '1993', 56.00),
(22, 'Kerrin', 'Domainer', '2008', 61.00),
(23, 'Sig', 'Zathin', '1997', 35.00),
(24, 'Bradley', 'Zaam-Dox', '2011', 27.00),
(25, 'Constancy', 'Tempsoft', '1995', 16.00),
(26, 'Marcy', 'Zoolab', '2001', 43.00),
(27, 'Whitaker', 'Kanlam', '2006', 65.00),
(28, 'Jacky', 'Tin', '2011', 61.00),
(29, 'Early', 'Bigtax', '2004', 22.00),
(30, 'Umberto', 'Cookley', '2012', 44.00),
(31, 'Florance', 'Mat Lam Tam', '1973', 37.00),
(32, 'Elbertina', 'Sonair', '1963', 43.00),
(33, 'Hurley', 'Keylex', '1996', 40.00),
(34, 'Frederick', 'Regrant', '1995', 38.00),
(35, 'Blinny', 'Sonsing', '2011', 29.00),
(36, 'Edi', 'Flowdesk', '1997', 65.00),
(37, 'Fleurette', 'Stringtough', '2002', 73.00),
(38, 'Jesse', 'Bytecard', '2000', 2.00),
(39, 'Hester', 'Otcom', '2000', 52.00),
(40, 'Sile', 'Flexidy', '1992', 70.00),
(41, 'Binni', 'Redhold', '2001', 94.00),
(42, 'Lindsey', 'Kanlam', '2012', 51.00),
(43, 'Jacob', 'Lotstring', '1989', 47.00),
(44, 'Ricky', 'Solarbreeze', '2007', 85.00),
(45, 'Lane', 'Veribet', '2002', 30.00),
(46, 'Killian', 'Tresom', '2007', 76.00),
(47, 'Barbi', 'Overhold', '1998', 65.00),
(48, 'Calv', 'Daltfresh', '2002', 31.00),
(49, 'Ariella', 'Voltsillam', '2006', 92.00),
(50, 'Graehme', 'Lotstring', '1992', 59.00),
(51, 'Arleta', 'Fix San', '2009', 4.00),
(52, 'Berke', 'Konklux', '2007', 54.00),
(53, 'Clarisse', 'Namfix', '2007', 34.00),
(54, 'Esra', 'Namfix', '2012', 25.00),
(55, 'Zedekiah', 'Voyatouch', '2005', 24.00),
(56, 'Sophey', 'Sub-Ex', '1985', 93.00),
(57, 'Carmelita', 'Veribet', '2013', 35.00),
(58, 'Lindon', 'Vagram', '1988', 65.00),
(59, 'Tillie', 'Voyatouch', '2011', 90.00),
(60, 'Terrye', 'Alphazap', '2005', 65.00),
(61, 'Donnell', 'Overhold', '2006', 88.00),
(62, 'Colene', 'Cookley', '1998', 16.00),
(63, 'Sadie', 'Redhold', '2011', 9.00),
(64, 'Christy', 'Subin', '1996', 12.00),
(65, 'Charis', 'Viva', '2009', 35.00),
(66, 'Ephraim', 'Temp', '2001', 80.00),
(67, 'Yves', 'Bamity', '2004', 29.00),
(68, 'Annnora', 'Otcom', '2005', 53.00),
(69, 'Janette', 'Solarbreeze', '2007', 84.00),
(70, 'Elsworth', 'Flowdesk', '2012', 5.00),
(71, 'Cristabel', 'Gembucket', '2011', 23.00),
(72, 'Bartie', 'Cardguard', '1996', 69.00),
(73, 'Vanya', 'Domainer', '2009', 28.00),
(74, 'Kerr', 'Holdlamis', '1996', 44.00),
(75, 'Garik', 'Tempsoft', '1993', 33.00),
(76, 'Farrel', 'Zontrax', '2008', 31.00),
(77, 'Estelle', 'Kanlam', '1988', 57.00),
(78, 'Burke', 'Tin', '2008', 100.00),
(79, 'Steward', 'Bamity', '2006', 93.00),
(80, 'Hansiain', 'Transcof', '2000', 45.00),
(81, 'Gisella', 'Pannier', '2000', 87.00),
(82, 'Lamont', 'Zamit', '2003', 51.00),
(83, 'Flori', 'Fix San', '1998', 88.00),
(84, 'Arnold', 'Viva', '1985', 75.00),
(85, 'Flynn', 'Fintone', '1986', 70.00),
(86, 'Celestyna', 'Keylex', '2006', 8.00),
(87, 'Oneida', 'Mat Lam Tam', '2003', 45.00),
(88, 'Paton', 'Span', '2010', 96.00),
(89, 'Margeaux', 'Overhold', '2006', 29.00),
(90, 'Kermie', 'Pannier', '1993', 24.00),
(91, 'Jacquelin', 'Tempsoft', '1985', 85.00),
(92, 'Sunny', 'Bamity', '2000', 28.00),
(93, 'Adolf', 'Redhold', '1984', 26.00),
(94, 'Charlene', 'Vagram', '1992', 25.00),
(95, 'Anastasie', 'Sonsing', '2002', 25.00),
(96, 'Danell', 'Span', '2005', 94.00),
(97, 'Redford', 'Rank', '2000', 4.00),
(98, 'Arleyne', 'Temp', '2009', 76.00),
(99, 'Randal', 'Vagram', '2007', 15.00),
(100, 'Kathleen', 'Duobam', '1988', 35.00),
(101, 'Ania', 'Voyatouch', '1998', 47.00),
(102, 'Cornall', 'Bigtax', '1994', 79.00);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `albumid`
--
ALTER TABLE `albumid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `albumid`
--
ALTER TABLE `albumid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
