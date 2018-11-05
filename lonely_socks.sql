-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Nov 2018 um 16:14
-- Server-Version: 10.1.28-MariaDB
-- PHP-Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `lonely socks`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_basket`
--

CREATE TABLE `tbl_basket` (
  `basket_id` int(10) NOT NULL,
  `cookie_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(10) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_cookies`
--

CREATE TABLE `tbl_cookies` (
  `cookie_id` int(10) NOT NULL,
  `cookie_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `logged_in` tinyint(1) NOT NULL,
  `login_expire` datetime NOT NULL,
  `fails` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(100) NOT NULL,
  `item_pic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `name`, `price`, `item_pic`, `description`, `stock`) VALUES
(3, 'Rot Blau karierte Socke', 5, 'rotblaukariert.png', '100% Baumwolle', 9),
(4, 'Blau gepunktete Socke', 5, 'blaupunkt.png', '100% Baumwolle', 6),
(5, 'Gelb Gr&uuml;n karierte Socke', 5, 'gelbgrunkariert.png', '100% Baumwolle', 13),
(6, 'Rot gepunktete Socke', 5, 'rotpunkt.png', '100% Baumwolle', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `amount` int(255) NOT NULL,
  `price` float NOT NULL,
  `amountprice` float NOT NULL,
  `orderdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plz` int(5) NOT NULL,
  `ort` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `firstname`, `lastname`, `street`, `plz`, `ort`, `mail`, `hash`) VALUES
(1, 'Lonely', 'Socks', 'Kirchhofallee 28', 24103, 'Kiel', 'merle.koch@web.de', 'test'),
(2, 'Merle', 'Koch', 'Langensaal 43', 24149, 'Kiel', 'merle.koch@gmx.de', 'nice');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tbl_basket`
--
ALTER TABLE `tbl_basket`
  ADD PRIMARY KEY (`basket_id`);

--
-- Indizes für die Tabelle `tbl_cookies`
--
ALTER TABLE `tbl_cookies`
  ADD PRIMARY KEY (`cookie_id`);

--
-- Indizes für die Tabelle `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indizes für die Tabelle `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indizes für die Tabelle `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tbl_basket`
--
ALTER TABLE `tbl_basket`
  MODIFY `basket_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `tbl_cookies`
--
ALTER TABLE `tbl_cookies`
  MODIFY `cookie_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
