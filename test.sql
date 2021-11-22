-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 22 2021 г., 10:49
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ad`
--

CREATE TABLE `ad` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `ad`
--

INSERT INTO `ad` (`id`, `title`, `text`, `img1`, `img2`, `img3`, `price`, `date`) VALUES
(1, 'Объявление 1', 'Текст объявления', 'https://via.placeholder.com/250', '', '', 100, '2021-11-18'),
(2, 'Объявление 2', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', '', 200, '2021-11-18'),
(3, 'Объявление 3', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(4, 'Объявление 4', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(5, 'Объявление 5', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(6, 'Объявление 6', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(7, 'Объявление 7', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(8, 'Объявление 8', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(9, 'Объявление 9', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(10, 'Объявление 10', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(11, 'Объявление 11', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(12, 'Объявление 12', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(13, 'Объявление 13', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(14, 'Объявление 14', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(15, 'Объявление 15', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(16, 'Объявление 16', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(17, 'Объявление 17', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(18, 'Объявление 18', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(19, 'Объявление 19', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(20, 'Объявление 20', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(21, 'Объявление 21', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(22, 'Объявление 22', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18'),
(23, 'Объявление 23', 'Текст объявления', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 'https://via.placeholder.com/250', 300, '2021-11-18');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
