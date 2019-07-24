-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Tem 2019, 01:54:13
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `beykoz`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `postId` int(11) NOT NULL,
  `postUserId` int(11) NOT NULL,
  `postContent` varchar(500) NOT NULL,
  `postDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`postId`, `postUserId`, `postContent`, `postDate`) VALUES
(44, 1, 'Hava kurşun gibi ağır!!\r\nBağır\r\nbağır\r\nbağır\r\nbağırıyorum.', '2019-07-24 02:27:22'),
(45, 1, 'Sevgilim, değişti mevsim çekişen gelişmelerden sonra bir sıçramakla. Ve karın altında mağrur, hamarat sürüp gidiyor hayat…', '2019-07-24 01:27:22'),
(46, 20, 'Telgrafın tellerini kurşunlamalı <br>\r\nÖyle değildi bu türkü bilirim <br>\r\nBir de içime <br>\r\n-Her istasyonda duran sonra tekrar yürüyen- <br>\r\nBir posta katarı gibi simsiyah dumanlar dökerek <br>\r\nBazan gelmesi beklenen bazan ansızın çıkagelen <br>\r\nHaberler bilirim mektuplar bilirim. ', '2019-07-24 00:27:22'),
(47, 21, ' Herkes duysun: \r\nYargıç değilim yargılamam, Avukat değilim savunmam, Savcı değilim suçlamam, <br>\r\nHerkes ve her şey duysun. <br>\r\nKendime şahidim, zamana şahidim, sonsuzluğa şahidim <br>\r\nVe herkes ve herşey de şahit olsun ki, bu devrimci duruşumla bütün evreni selamlıyorum.', '2019-07-23 23:27:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `userNameSurname` varchar(250) NOT NULL,
  `userEmail` varchar(250) NOT NULL,
  `userCity` varchar(250) NOT NULL,
  `userImage` varchar(500) NOT NULL DEFAULT '/img/mustafa-kemal-ataturk.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`userId`, `username`, `password`, `userNameSurname`, `userEmail`, `userCity`, `userImage`) VALUES
(1, 'nazimhikmet', 'tahir', 'Nazım Hikmet', 'nazım@hikmet', 'Selanik - Osmanlı', '/img/1.jpg'),
(20, 'erdembeyazit', 'siiravcisi', 'Adil ERDEM', 'adil@erdem.beyazit', '', '/img/erdem-bayazit.jpg'),
(21, 'nuripakdil', 'devrim', 'Nuri Pakdil', 'nuri@pakdil.com', '', '/img/nuripakdil.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
