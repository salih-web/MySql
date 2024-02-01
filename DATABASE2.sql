-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 Oca 2024, 23:29:10
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `DATABASE2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Admin`
--

CREATE TABLE `Admin` (
  `AdminID` int(11) NOT NULL,
  `kullaniciAdi` varchar(50) NOT NULL,
  `parola` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `Admin`
--

INSERT INTO `Admin` (`AdminID`, `kullaniciAdi`, `parola`) VALUES
(1, 'mardinli47', '474747'),
(2, 'Karataşenes', '343434'),
(3, 'Ganyotçu', '212121'),
(4, 'admin', 'qwerty'),
(5, 'ıstanbul', 'asd213'),
(6, 'türkiye', 'ankara06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Categories`
--

CREATE TABLE `Categories` (
  `Categories_ID` int(11) NOT NULL,
  `categories_name` varchar(50) NOT NULL,
  `City_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `Categories`
--

INSERT INTO `Categories` (`Categories_ID`, `categories_name`, `City_ID`) VALUES
(1, 'London', 82),
(2, 'MARDIN', 83),
(3, 'BARCELONA', 85),
(4, 'MANCHESTER', 87),
(5, 'MADRID', 86),
(6, 'BERLIN', 90),
(7, 'MOSCOW', 92),
(8, 'ISTANBUL', 84),
(9, 'DIYARBAKIR', 89),
(10, 'ROME', 88),
(11, 'WASHINGTON', 91);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `City`
--

CREATE TABLE `City` (
  `City_ID` int(11) NOT NULL,
  `City_names` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `City`
--

INSERT INTO `City` (`City_ID`, `City_names`) VALUES
(82, 'LONDON'),
(83, 'MARDIN'),
(84, 'ISTANBUL'),
(85, 'BARCELONA'),
(86, 'MADRID'),
(87, 'MANCHESTER'),
(88, 'ROME'),
(89, 'DIYARBAKIR'),
(90, 'BERLIN'),
(91, 'WASHINGTON'),
(92, 'MOSCOW');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Customer`
--

CREATE TABLE `Customer` (
  `Customer_ID` int(11) NOT NULL,
  `C_Name` varchar(50) NOT NULL,
  `C_LastName` varchar(50) NOT NULL,
  `C_phone` varchar(50) NOT NULL,
  `C_Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `Customer`
--

INSERT INTO `Customer` (`Customer_ID`, `C_Name`, `C_LastName`, `C_phone`, `C_Email`) VALUES
(1, 'Yusuf', 'Ertaş', '05412354677', 'asddfg213@gmail.com'),
(2, 'Ozan', 'Güney', '05413131317', 'kkhkhhg213@gmail.com'),
(3, 'İlknur', 'Teber', '05123111154677', 'Teber3@gmail.com'),
(4, 'Oğuzhan', 'gök', '055531317', 'han213@gmail.com'),
(5, 'Esra', 'Ağır', '0512311677', 'ağır34@gmail.com'),
(6, 'Arda', 'Güler', '123456789', 'güler@gmail.com'),
(19, 'cristiano', 'Ronaldo', '123456789', 'CR7@gmail.com'),
(20, 'paparazi', 'Güler', '1006789', 'papa4734@gmail.com'),
(21, 'Ramazan', 'Demir', '56789', 'DEmircelik@gmail.com'),
(22, 'Eyşan', 'Çolak', '312355322', 'ezeleyşan@gmail.com'),
(23, 'ronaldinho', 'messi', '098556789', 'MSNrona46@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `House`
--

CREATE TABLE `House` (
  `House_ID` int(11) NOT NULL,
  `Floor_Level` varchar(50) NOT NULL,
  `Year_of_construction` varchar(50) NOT NULL,
  `heating_type` varchar(50) NOT NULL,
  `Owner_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `House`
--

INSERT INTO `House` (`House_ID`, `Floor_Level`, `Year_of_construction`, `heating_type`, `Owner_ID`) VALUES
(1, 'Kat 2', '2002', 'Gas', 1),
(2, 'Kat -2', '2015', 'Gas', 3),
(3, 'Kat 1', '2001', 'Gas', 2),
(4, 'Kat 2', '2004', 'Gas', 5),
(5, 'Kat 14', '2020', 'Gas', 5),
(6, 'Kat 36', '2023', 'Gas', 4),
(7, 'Kat 6', '2017', 'Gas', 1),
(8, 'Kat 4', '2010', 'Gas', 2),
(9, 'Kat 0', '2011', 'Gas', 3),
(10, 'Kat 30', '2021', 'Gas', 10),
(11, 'Kat 3', '2010', 'Gas', 9),
(12, 'Kat 5', '2019', 'Gas', 7),
(13, 'Kat 14', '2024', 'Gas', 8),
(14, 'Kat 8', '2017', 'Gas', 6),
(15, 'Kat3', '2018', 'Gas', 4),
(16, 'Kat 1', '2000', 'Gas', NULL),
(17, 'Kat 5', '2024', 'Gas', NULL),
(18, 'Kat 2', '2015', 'Gas', NULL),
(19, 'Kat 4', '2013', 'Gas', NULL),
(20, 'Kat 7', '2009', 'Gas', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `OLDSALE`
--

CREATE TABLE `OLDSALE` (
  `OLD_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `C_phone` varchar(50) DEFAULT NULL,
  `C_Name` varchar(50) DEFAULT NULL,
  `C_LastName` varchar(50) DEFAULT NULL,
  `C_Email` varchar(50) DEFAULT NULL,
  `House_ID` int(11) DEFAULT NULL,
  `OLDOWNER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `OLDSALE`
--

INSERT INTO `OLDSALE` (`OLD_ID`, `Customer_ID`, `C_phone`, `C_Name`, `C_LastName`, `C_Email`, `House_ID`, `OLDOWNER_ID`) VALUES
(1, 1, '05412354677', 'Yusuf', 'Ertaş', 'asddfg213@gmail.com', 17, 9),
(2, 19, '123456789', 'Cristiano', 'Ronaldo', 'CR7@gmail.com', 18, 8),
(3, 21, '56789', 'Ramazan', 'Demir', 'DEmircelik@gmail.com', 19, 6),
(4, 5, '0512311677', 'Esra', 'Ağır', 'ağır34@gmail.com', 20, 10),
(5, 2, '05413131317', 'Ozan', 'Güney', 'kkhkhhg213@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Owner`
--

CREATE TABLE `Owner` (
  `Owner_ID` int(11) NOT NULL,
  `Ow_Name` varchar(50) NOT NULL,
  `Ow_LastName` varchar(50) NOT NULL,
  `Ow_phone` varchar(50) NOT NULL,
  `Ow_Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `Owner`
--

INSERT INTO `Owner` (`Owner_ID`, `Ow_Name`, `Ow_LastName`, `Ow_phone`, `Ow_Email`) VALUES
(1, 'Yaren', 'Aydoğan', '051254677', 'doğan3@gmail.com'),
(2, 'Donald', 'Trump', '331254677', 'Trumptower@gmail.com'),
(3, 'Joe', 'Biden', '01123345', 'biden4747@gmail.com'),
(4, 'Barack', 'Obama', '33125154677', 'obarack34@gmail.com'),
(5, 'Nelson', 'Mandela', '23111154677', 'Nelson56h@gmail.com'),
(6, 'Tom', 'Cruise', '051254654', 'tom3433@gmail.com'),
(7, 'Angela', 'Yu', '338214677', 'Angelayu@gmail.com'),
(8, 'Mahmut', 'demir', '3476123345', 'Demirmahmut@gmail.com'),
(9, 'Ozan', 'Obama', '31075154677', 'obamaozan@gmail.com'),
(10, 'Bilal', 'Polat', '31851154677', 'polat12345@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Sale`
--

CREATE TABLE `Sale` (
  `Sale_ID` int(11) NOT NULL,
  `Explanation` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `City_ID` int(11) DEFAULT NULL,
  `Owner_ID` int(11) DEFAULT NULL,
  `House_ID` int(11) DEFAULT NULL,
  `Owner_Name` varchar(50) DEFAULT NULL,
  `Year_of_construction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `Sale`
--

INSERT INTO `Sale` (`Sale_ID`, `Explanation`, `Price`, `Location`, `City_ID`, `Owner_ID`, `House_ID`, `Owner_Name`, `Year_of_construction`) VALUES
(1, 'JUST FOR RENT', '3500', 'LONDON', 82, 1, 1, 'Yaren', '2002'),
(2, 'FOR SALE', '500000', 'LONDON', 82, 3, 2, 'Joe', '2015'),
(3, 'NEW HOUSE FOR SALE', '800000', 'MANCHESTER', 87, 2, 3, 'Donald', '2001'),
(4, 'JUST FOR SALE', '1200000', 'MOSCOW', 92, 5, 4, 'Nelson', '2004'),
(5, 'CALL ME FOR ALL DETAILS', '500000', 'ROME', 88, 5, 5, 'Nelson', '2020'),
(6, 'NEW HOUSE FROM THE OWNER FOR SALE', '2000000', 'BARCELONA', 85, 4, 6, 'Barack', '2023'),
(7, 'JUST FOR RENT', '5000', 'BERLIN', 90, 1, 7, 'Yaren', '2017'),
(8, 'JUST FOR SALE', '650000', 'ISTANBUL', 84, 2, 8, 'Donald', '2010'),
(9, 'JUST FOR RENT', '1200', 'MARDIN', 83, 3, 9, 'Joe', '2011'),
(10, 'Pazarlık vardır', '150000', 'BERLIN', 90, 6, 14, 'Tom', '2017'),
(11, 'GELECEĞİN YATIRIMI', '800000', 'BARCELONA', 85, 10, 10, 'Bilal', '2021'),
(12, 'ŞİMDİ AL ZENGİN OL', '600000', 'LONDON', 82, 8, 13, 'Mahmut', '2024'),
(13, 'RUSYA DEGERLENİYOR', '300000', 'MOSCOW', 92, 4, 15, 'Barack', '2018'),
(14, 'ŞİMDİ AL SONRA PİŞMAN OLMA', '250000', 'ISTANBUL', 84, 9, 11, 'Barack', '2010'),
(15, 'AVRUPANIN GÖBEĞİNDE EV AL', '2000000', 'BERLIN', 90, 7, 12, 'Angela', '2019');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Tablo için indeksler `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`Categories_ID`),
  ADD KEY `City_ID` (`City_ID`);

--
-- Tablo için indeksler `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`City_ID`);

--
-- Tablo için indeksler `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD UNIQUE KEY `C_Email` (`C_Email`),
  ADD KEY `C_phone` (`C_phone`),
  ADD KEY `C_Name` (`C_Name`,`C_LastName`);

--
-- Tablo için indeksler `House`
--
ALTER TABLE `House`
  ADD PRIMARY KEY (`House_ID`),
  ADD KEY `Owner_ID` (`Owner_ID`),
  ADD KEY `Year_of_construction` (`Year_of_construction`);

--
-- Tablo için indeksler `OLDSALE`
--
ALTER TABLE `OLDSALE`
  ADD PRIMARY KEY (`OLD_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `C_phone` (`C_phone`),
  ADD KEY `C_Email` (`C_Email`),
  ADD KEY `House_ID` (`House_ID`),
  ADD KEY `OLDOWNER` (`OLDOWNER_ID`);

--
-- Tablo için indeksler `Owner`
--
ALTER TABLE `Owner`
  ADD PRIMARY KEY (`Owner_ID`),
  ADD UNIQUE KEY `Ow_Email` (`Ow_Email`),
  ADD KEY `Ow_Name` (`Ow_Name`);

--
-- Tablo için indeksler `Sale`
--
ALTER TABLE `Sale`
  ADD PRIMARY KEY (`Sale_ID`),
  ADD KEY `City_ID` (`City_ID`),
  ADD KEY `Owner_ID` (`Owner_ID`),
  ADD KEY `House_ID` (`House_ID`),
  ADD KEY `Year_of_construction` (`Year_of_construction`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `Admin`
--
ALTER TABLE `Admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `Categories`
--
ALTER TABLE `Categories`
  MODIFY `Categories_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `City`
--
ALTER TABLE `City`
  MODIFY `City_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Tablo için AUTO_INCREMENT değeri `Customer`
--
ALTER TABLE `Customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `House`
--
ALTER TABLE `House`
  MODIFY `House_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `OLDSALE`
--
ALTER TABLE `OLDSALE`
  MODIFY `OLD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `Owner`
--
ALTER TABLE `Owner`
  MODIFY `Owner_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `Sale`
--
ALTER TABLE `Sale`
  MODIFY `Sale_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `Categories`
--
ALTER TABLE `Categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`City_ID`) REFERENCES `City` (`City_ID`);

--
-- Tablo kısıtlamaları `House`
--
ALTER TABLE `House`
  ADD CONSTRAINT `house_ibfk_1` FOREIGN KEY (`Owner_ID`) REFERENCES `Owner` (`Owner_ID`);

--
-- Tablo kısıtlamaları `OLDSALE`
--
ALTER TABLE `OLDSALE`
  ADD CONSTRAINT `oldsale_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  ADD CONSTRAINT `oldsale_ibfk_2` FOREIGN KEY (`C_phone`) REFERENCES `Customer` (`C_phone`),
  ADD CONSTRAINT `oldsale_ibfk_3` FOREIGN KEY (`C_Email`) REFERENCES `Customer` (`C_Email`),
  ADD CONSTRAINT `oldsale_ibfk_4` FOREIGN KEY (`House_ID`) REFERENCES `House` (`House_ID`),
  ADD CONSTRAINT `oldsale_ibfk_5` FOREIGN KEY (`OLDOWNER_ID`) REFERENCES `Owner` (`Owner_ID`);

--
-- Tablo kısıtlamaları `Sale`
--
ALTER TABLE `Sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`City_ID`) REFERENCES `City` (`City_ID`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`Owner_ID`) REFERENCES `Owner` (`Owner_ID`),
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`House_ID`) REFERENCES `House` (`House_ID`),
  ADD CONSTRAINT `sale_ibfk_4` FOREIGN KEY (`Year_of_construction`) REFERENCES `House` (`Year_of_construction`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
