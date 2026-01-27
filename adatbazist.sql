-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Jan 27. 09:31
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `adatbazist`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `regriszt`
--

CREATE TABLE `regriszt` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefonszam` varchar(11) NOT NULL,
  `message` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `regriszt`
--

INSERT INTO `regriszt` (`id`, `email`, `telefonszam`, `message`, `name`) VALUES
(1, 'bela@gmail.com', '2147483647', 'gazsi,gazsia,bela', 'gazsik'),
(2, 'belal@gmail.com', '2147483647', 'gazsi,gazsia,bela', 'gazsik'),
(3, 'belall@gmail.com', '2147483647', 'gazsi,gazsia,bela', 'gazsik');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `regriszt`
--
ALTER TABLE `regriszt`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `regriszt`
--
ALTER TABLE `regriszt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
