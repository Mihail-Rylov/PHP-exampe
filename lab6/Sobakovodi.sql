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
-- База данных: `test_4`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_club`
--

CREATE TABLE `lab6_club` (
  `Номер_клуба` int(11) NOT NULL,
  `Наименование` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_club`
--

INSERT INTO `lab6_club` (`Номер_клуба`, `Наименование`) VALUES
(1, 'Собачья жизнь'),
(2, 'Алиса'),
(3, 'Лапы'),
(6, 'Собачье сердце'),
(8, 'Добрые руки'),
(10, 'Верные друзья'),
(11, 'Кинолог-Дог'),
(12, 'Клуб защиты животных');

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_dogs`
--

CREATE TABLE `lab6_dogs` (
  `Код_собаки` int(11) NOT NULL,
  `Кличка` varchar(10) DEFAULT NULL,
  `Год_рождения` int(10) DEFAULT NULL,
  `Хозяин` int(11) NOT NULL,
  `Клуб` int(11) NOT NULL,
  `Порода` int(11) NOT NULL,
  `Вес` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_dogs`
--

INSERT INTO `lab6_dogs` (`Код_собаки`, `Кличка`, `Год_рождения`, `Хозяин`, `Клуб`, `Порода`, `Вес`) VALUES
(1, 'Бобик', 2010, 10, 11, 9, 60),
(2, 'Астра', 2015, 4, 12, 5, 50),
(3, 'Граф', 2016, 2, 3, 2, 64),
(4, 'Анфиса', 2010, 2, 3, 10, 55),
(5, 'Зефир', 2017, 9, 8, 3, 41),
(6, 'Лара', 2017, 7, 6, 1, 50),
(7, 'Нео', 2018, 4, 10, 6, 58),
(8, 'Морган', 2018, 1, 6, 10, 63);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_exhibition`
--

CREATE TABLE `lab6_exhibition` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_exhibition`
--

INSERT INTO `lab6_exhibition` (`id`, `name`, `data`, `country`) VALUES
(1, 'Выставка собак всех пород ранга САС КЧФ г \"МИЛЛИОН ДРУЗЕЙ\"', '2020-10-08', 'Россия'),
(2, 'Региональная выставка собак всех пород ранга САС ЧФ \"СОЛНЕЧНЫЙ ПЁС-2020\"', '2020-07-15', 'Россия'),
(3, 'Выставка собак всех пород ранга САС ЧФ \"Курганские встречи 2019\"', '2019-07-15', 'Россия'),
(4, 'Международная выставка всех пород \"DOG SHOW-2018\"', '2018-05-05', 'Финляндия'),
(5, 'Национальная выставка всех пород \"DOGS-2020\"', '2020-07-15', 'Финляндия'),
(6, 'ВЫСТАВКА СОБАК ВСЕХ ПОРОД РАНГА САС КЧФ \"ВЛАДИМИР ГРАД\"', '2020-10-15', 'Россия'),
(7, 'Выставка собак всех пород ранга САС КЧФ \"СОЛНЕЧНЫЙ ПЁС-2019\"\"', '2019-10-15', 'Россия'),
(8, 'Выставка собак всех пород ранга САС КЧФ ', '2020-05-28', 'Россия'),
(9, 'НОВАЯ КЛАССИКА Выставка собак всех пород ранга САС КЧФ', '2020-08-20', 'Россия'),
(10, 'Выставка собак всех пород ранга САС КЧФ \"Весенний кубок-2020\"\"', '2020-03-10', 'Россия');

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_master`
--

CREATE TABLE `lab6_master` (
  `Код_хозяина` int(11) NOT NULL,
  `ФИО` varchar(20) DEFAULT NULL,
  `Город_проживания` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_master`
--

INSERT INTO `lab6_master` (`Код_хозяина`, `ФИО`, `Город_проживания`) VALUES
(1, 'Иванов В.Г.', 'г. Москва'),
(2, 'Григорьева Е.А.', 'г. Москва'),
(3, 'Березняков М.В.', 'г. Краснодар'),
(4, 'Петров О.С.', 'г. Сочи'),
(5, 'Хворостяая А.А.', 'г. Краснодар'),
(6, 'Петрова Н.Е.', 'г. Сочи'),
(7, 'Мамонтов А.В.', 'г. Краснодар'),
(8, 'Воробева Т.А.', 'г. Тольятти'),
(9, 'Кравченко Е.А.', 'г. Москва'),
(10, 'Колесник В.Н.', 'г. Сочи');

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_participants`
--

CREATE TABLE `lab6_participants` (
  `Код_собаки` int(11) NOT NULL,
  `Выставка` int(11) DEFAULT NULL,
  `Занятое_место` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_participants`
--

INSERT INTO `lab6_participants` (`Код_собаки`, `Выставка`, `Занятое_место`) VALUES
(4, 4, 1),
(2, 4, 2),
(1, 4, 3),
(3, 9, 2),
(6, 9, 1),
(3, 7, 1),
(5, 7, 2),
(7, 7, 3),
(8, 2, 1),
(3, 2, 2),
(2, 2, 3),
(2, 10, 1),
(7, 10, 2),
(3, 10, 3),
(4, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_poroda`
--

CREATE TABLE `lab6_poroda` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_poroda`
--

INSERT INTO `lab6_poroda` (`id`, `name`) VALUES
(1, 'Немецкая овчарка'),
(2, 'Лабрадор'),
(3, 'Пудель'),
(4, 'Бульдог'),
(5, 'Хаски'),
(6, 'Ротвейлер'),
(7, 'Бигль'),
(8, 'Корги'),
(9, 'Доберман'),
(10, 'Чау-чау');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lab6_club`
--
ALTER TABLE `lab6_club`
  ADD PRIMARY KEY (`Номер_клуба`);

--
-- Индексы таблицы `lab6_dogs`
--
ALTER TABLE `lab6_dogs`
  ADD PRIMARY KEY (`Код_собаки`),
  ADD KEY `Хозяин` (`Хозяин`),
  ADD KEY `Клуб` (`Клуб`),
  ADD KEY `Порода` (`Порода`);

--
-- Индексы таблицы `lab6_exhibition`
--
ALTER TABLE `lab6_exhibition`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lab6_master`
--
ALTER TABLE `lab6_master`
  ADD PRIMARY KEY (`Код_хозяина`);

--
-- Индексы таблицы `lab6_participants`
--
ALTER TABLE `lab6_participants`
  ADD KEY `Код собаки` (`Код_собаки`),
  ADD KEY `Выставка` (`Выставка`);

--
-- Индексы таблицы `lab6_poroda`
--
ALTER TABLE `lab6_poroda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lab6_club`
--
ALTER TABLE `lab6_club`
  MODIFY `Номер_клуба` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `lab6_dogs`
--
ALTER TABLE `lab6_dogs`
  MODIFY `Код_собаки` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `lab6_exhibition`
--
ALTER TABLE `lab6_exhibition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `lab6_master`
--
ALTER TABLE `lab6_master`
  MODIFY `Код_хозяина` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `lab6_poroda`
--
ALTER TABLE `lab6_poroda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `lab6_dogs`
--
ALTER TABLE `lab6_dogs`
  ADD CONSTRAINT `lab6_dogs_ibfk_1` FOREIGN KEY (`Хозяин`) REFERENCES `lab6_master` (`Код_хозяина`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_dogs_ibfk_2` FOREIGN KEY (`Клуб`) REFERENCES `lab6_club` (`Номер_клуба`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_dogs_ibfk_3` FOREIGN KEY (`Порода`) REFERENCES `lab6_poroda` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `lab6_participants`
--
ALTER TABLE `lab6_participants`
  ADD CONSTRAINT `lab6_participants_ibfk_1` FOREIGN KEY (`Выставка`) REFERENCES `lab6_exhibition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_participants_ibfk_2` FOREIGN KEY (`Код_собаки`) REFERENCES `lab6_dogs` (`Код_собаки`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
