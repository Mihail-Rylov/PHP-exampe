-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2020 г., 14:05
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_2_books`
--

CREATE TABLE `lab6_2_books` (
  `id_book` int(11) NOT NULL,
  `name_book` text NOT NULL,
  `author` text NOT NULL,
  `publishing` text NOT NULL,
  `year_pub` int(4) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_2_books`
--

INSERT INTO `lab6_2_books` (`id_book`, `name_book`, `author`, `publishing`, `year_pub`, `count`) VALUES
(1, 'Страницы моей реальности\r\n', 'Талалина Ефросиния Мироновна\r\nБойцов Павел Тарасович', 'Клевер-Медиа-Групп	', 1489, 123654),
(2, 'Фрагменты прошлого в настоящем\r\n', 'Ручкина Людмила Германовна\r\nСилин Матвей Якубович\r\nБорцова Екатерина Несторовна', 'Мозаика-Синтез	', 1597, 19000),
(3, 'Забытое имя\r\n', 'Овчинникова Кира Афанасиевна', 'Мозаика-Синтез	', 1976, 19845),
(4, 'Слепая правда\r\n', 'Капылюшный Юнона Геннадиевна\r\nМилюкова Ефросиния Мефодиевна', 'Мозаика-Синтез	', 1965, 198000),
(5, 'Тень ангела\r\n', 'Букавицкий Адриан Богданович\r\nВоропаева Ника Брониславовна\r\nВасенин Егор Эрнстович', 'Мозаика-Синтез	', 1978, 5478213),
(6, 'Последний вагон\r\n', 'Деменкова Инна Германовна\r\nГоршков Аскольд Яковович', 'Экзамен', 1968, 845168),
(7, 'Потерянный разум\r\n', 'Случевский Егор Леонтиевич\r\nЯсев Федор Федотович\r\nКомпанец Варфоломей Ипполитович', 'Экзамен', 1965, 123789),
(8, 'Сила крови\r\n', 'Каганович Матвей Демьянович\r\nЭпингера Ангелина Олеговна\r\nМячин Игорь Ипатович\r\nКружков Бронислав Леонович\r\nПерешивкина Виктория Андрияновна\r\nБондарева ﻿Агата Константиновна', 'Просвещение', 1856, 98621),
(9, 'Туман нашей памяти\r\n', 'Пугин Марк Казимирович\r\nКлецка Людмила Святославовна', 'Просвещение', 1967, 4978654),
(10, 'Солнце на вершине xолма\r\n', 'Разина Розалия Василиевна\r\nФадеев Самуил Давыдович\r\nТенишев Вениамин Агапович\r\nКазючиц Артём Севастьянович\r\nДенисова Инга Трофимовна\r\nЗолин Иван Алексеевич', 'Просвещение', 1988, 9784651);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_2_inform`
--

CREATE TABLE `lab6_2_inform` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `reader_id` int(11) NOT NULL,
  `take_date` date NOT NULL,
  `return_date` date NOT NULL,
  `fact_return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_2_inform`
--

INSERT INTO `lab6_2_inform` (`id`, `book_id`, `reader_id`, `take_date`, `return_date`, `fact_return_date`) VALUES
(1, 5, 5, '2017-01-03', '2017-02-03', '2017-02-03'),
(2, 5, 3, '2008-11-20', '2008-12-20', '2008-11-30'),
(3, 9, 2, '2008-06-04', '2008-07-04', '2008-12-05'),
(4, 7, 6, '2020-11-01', '2020-12-31', '2020-12-30'),
(5, 1, 8, '2020-10-05', '2020-11-09', '2020-12-31'),
(6, 5, 2, '2020-10-01', '2020-12-01', NULL),
(7, 5, 5, '2020-04-01', '2020-04-30', '2020-04-15'),
(8, 4, 8, '2012-06-06', '2012-08-04', NULL),
(9, 5, 3, '2014-07-05', '2014-07-20', '2014-07-19'),
(10, 6, 8, '2006-11-09', '2006-12-10', '2006-12-08'),
(11, 9, 2, '2006-02-01', '2007-09-09', '2007-09-07'),
(12, 9, 1, '2008-09-01', '2008-12-06', NULL),
(13, 2, 6, '2016-01-25', '2016-02-01', '2016-02-01'),
(14, 4, 8, '2017-05-06', '2017-06-09', '2017-06-08'),
(15, 5, 2, '2017-06-09', '2017-08-10', '2017-07-20'),
(16, 1, 4, '2014-05-25', '2014-06-13', '2014-06-07'),
(17, 2, 9, '2014-02-14', '2014-03-30', '2014-03-29'),
(18, 5, 4, '2008-05-04', '2008-06-20', NULL),
(19, 4, 5, '2009-12-25', '2010-01-25', '2010-01-20'),
(20, 6, 3, '2010-02-14', '2010-03-15', '2010-04-10');

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_2_readers`
--

CREATE TABLE `lab6_2_readers` (
  `id_reader` int(11) NOT NULL,
  `fam` text NOT NULL,
  `im` text NOT NULL,
  `otch` text NOT NULL,
  `birthday` date NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_2_readers`
--

INSERT INTO `lab6_2_readers` (`id_reader`, `fam`, `im`, `otch`, `birthday`, `number`) VALUES
(1, 'Юбкина ', 'Влада ', 'Афанасиевн', '1998-12-05', 2147483647),
(2, 'Ясинский ', 'Тимофей', 'Остапович', '1956-05-13', 2147483647),
(3, 'Чуличкова', 'Агата ', 'Василиевна', '1987-04-19', 2147483647),
(4, 'Чайка ', 'Аза ', 'Геннадиевн', '2000-01-01', 2147483647),
(5, 'Куксюк', 'Феликс ', 'Никанорови', '1939-05-17', 2147483647),
(6, 'Анишин ', 'Карл ', 'Натанович', '2001-11-11', 2147483647),
(7, 'Вятт ', 'Мир ', 'Адамович', '2000-03-25', 2147483647),
(8, 'Расторгуева', 'Лариса ', 'Иларионовн', '1996-01-25', 2147483647),
(9, 'Смагин ', 'Артур ', 'Мартьянови', '1979-03-06', 2147483647),
(10, 'Меркушева ', 'Алиса ', 'Ираклиевна', '1975-12-06', 2147483647);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lab6_2_books`
--
ALTER TABLE `lab6_2_books`
  ADD PRIMARY KEY (`id_book`);

--
-- Индексы таблицы `lab6_2_inform`
--
ALTER TABLE `lab6_2_inform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `reader_id` (`reader_id`);

--
-- Индексы таблицы `lab6_2_readers`
--
ALTER TABLE `lab6_2_readers`
  ADD PRIMARY KEY (`id_reader`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lab6_2_books`
--
ALTER TABLE `lab6_2_books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `lab6_2_inform`
--
ALTER TABLE `lab6_2_inform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `lab6_2_readers`
--
ALTER TABLE `lab6_2_readers`
  MODIFY `id_reader` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `lab6_2_inform`
--
ALTER TABLE `lab6_2_inform`
  ADD CONSTRAINT `lab6_2_inform_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `lab6_2_books` (`id_book`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_2_inform_ibfk_2` FOREIGN KEY (`reader_id`) REFERENCES `lab6_2_readers` (`id_reader`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
