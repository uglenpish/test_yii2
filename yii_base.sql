-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Янв 19 2021 г., 14:45
-- Версия сервера: 5.7.32-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii_base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`, `date_birth`) VALUES
(1, 'Анджей Сапковский', '1948-06-21'),
(2, 'Стивен Кинг', '1947-09-21'),
(3, 'Джон Толкин', '1892-01-03');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_manuf` int(4) DEFAULT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `date_manuf`, `author`) VALUES
(3, 'Ведьмак \"Последнее желание2\"', 1990, 1),
(4, 'Ведьмак \"Меч Предназначения\"', 1992, 1),
(5, 'Ведьмак \"Кровь эльфов\"', 1994, 1),
(6, 'Ведьмак \"Час Презрения\"', 1996, 1),
(7, 'Ведьмак \"Крещение огнём\"', 1996, 1),
(8, 'Ведьмак \"Башня Ласточки\"', 1997, 1),
(9, 'Ведьмак \"Владычица Озера\"', 1998, 1),
(10, 'Ведьмак \"Сезон гроз\"', 2013, 1),
(11, 'Кэрри', 1974, 2),
(12, 'Жребий', 1975, 2),
(13, 'Сияние', 1977, 2),
(14, 'Противостояние', 1978, 2),
(15, 'Мёртвая зона', 1979, 2),
(16, 'Воспламеняющая взглядом', 1980, 2),
(17, 'Куджо', 1981, 2),
(18, 'Кристина', 1983, 2),
(19, 'Кладбище домашних животных', 1983, 2),
(20, 'Оно', 1986, 2),
(21, 'Нужные вещи', 1991, 2),
(22, 'Игра Джералда', 1992, 2),
(23, 'Долорес Клейборн', 1992, 2),
(24, 'Бессонница', 1994, 2),
(25, 'Роза Марена', 1995, 2),
(26, 'Зелёная миля', 1996, 2),
(27, 'Безнадёга', 1996, 2),
(28, 'Мешок с костями', 1998, 2),
(29, 'Девочка, которая любила Тома Гордона', 1999, 2),
(30, 'Ловец снов', 2001, 2),
(31, 'Чёрный дом', 2001, 2),
(32, 'Парень из Колорадо', 2005, 2),
(33, 'Мобильник', 2006, 2),
(34, 'Под куполом', 2009, 2),
(35, 'Хоббит, или Туда и обратно', 1937, 3),
(36, 'Властелин Колец: Братство Кольца', 1954, 3),
(37, 'Властелин Колец: Две крепости (Две твердыни)', 1954, 3),
(38, 'Властелин Колец: Возвращение Короля', 1955, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author`) REFERENCES `authors` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
