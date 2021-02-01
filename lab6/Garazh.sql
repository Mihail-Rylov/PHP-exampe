-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2020 г., 14:06
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
-- База данных: `test_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_1avto`
--

CREATE TABLE `lab6_1avto` (
  `Номер` int(10) NOT NULL,
  `Производитель` text NOT NULL,
  `Модель` text NOT NULL,
  `Тип` text NOT NULL,
  `Количество_мест` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_1avto`
--

INSERT INTO `lab6_1avto` (`Номер`, `Производитель`, `Модель`, `Тип`, `Количество_мест`) VALUES
(133, 'Япония', 'Nissan', 'Лифтбек', 6),
(363, 'Италия', 'Mazerati', 'спорткар', 2),
(453, 'Узбекистан', 'Daewoo', 'Хэчбэк', 5),
(536, 'Россия', 'LADA', 'Седан', 5),
(567, 'Икарус', 'НК-543', 'Автобус', 139),
(632, 'Германия', ' Volkswagen', 'Купе', 5),
(731, 'Франция', 'Renault', 'Универсал', 5),
(732, 'Германия', 'BMW', 'Седан', 5),
(737, 'Honda', 'Япония', 'Лимузин', 30),
(833, 'Япония', 'Toyota', 'Минивен', 7),
(873, 'Украина', 'ВАЗ', 'Грузовой', 15),
(953, 'Икарус', 'НК-543', 'Автобус', 139);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_1customer`
--

CREATE TABLE `lab6_1customer` (
  `Код` int(11) NOT NULL,
  `Наименование` text NOT NULL,
  `Адрес` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_1customer`
--

INSERT INTO `lab6_1customer` (`Код`, `Наименование`, `Адрес`) VALUES
(1, 'ООО\"Моя оборона\"', 'г.Москва ул. Ленина 342'),
(2, 'ООО\"Читай город\"', 'г.Сочи ул. Горького 62'),
(3, 'ИП Павел', 'г. Кисловодск'),
(4, 'Агилерова Кристина Михайловна', 'г. Санкт-Петербург'),
(5, 'Розеткин Иван Георгиевич', 'г. Москва'),
(6, 'Топоров Игорь Игоревич', 'г. Самара'),
(7, 'Кузнецова Мария ', 'г. Калуга'),
(8, 'Попов Евгений Борисович', 'г. Сочи'),
(9, 'Букин Геннадий', 'г. Екатеренбург'),
(10, 'Творцов Ярослав Святославович ', 'г. Новгород'),
(11, 'ООО \"Клён\"', 'г. Краснодар'),
(12, 'ОАО \"Газпром\"', 'г. Москва');

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_1driver`
--

CREATE TABLE `lab6_1driver` (
  `ИД` int(11) NOT NULL,
  `Фамилия` text NOT NULL,
  `Имя` text NOT NULL,
  `Отчество` text NOT NULL,
  `Дата_рождения` date NOT NULL,
  `Телефон` int(11) NOT NULL,
  `Год_принятия` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_1driver`
--

INSERT INTO `lab6_1driver` (`ИД`, `Фамилия`, `Имя`, `Отчество`, `Дата_рождения`, `Телефон`, `Год_принятия`) VALUES
(1, 'Петров', 'Пётр', 'Петрович', '1953-12-11', 918085562, 2005),
(2, 'Иванов', 'Иван', 'Иванович', '1983-12-21', 914483647, 2003),
(3, 'Воеводин', 'Алексей', 'Инокентиевич', '2019-06-03', 2147483647, 2019),
(4, 'Сергеев', 'Петр', 'Милорадович', '1998-08-05', 2147483647, 2019),
(5, 'Рожков', 'Константин', 'Суренович', '1987-09-23', 2147483647, 2019),
(6, 'Федотов', 'Антон', 'Романович', '1969-11-13', 2147483647, 2019),
(7, 'Дмитров', 'Кирилл', 'Викторович', '1984-07-22', 2147483647, 2019),
(8, 'Ряшников', 'Роман', 'Трофимович', '1975-12-15', 2147483647, 2018),
(9, 'Печёнкин', 'Владислав', 'Русланович', '1982-05-21', 2147483647, 2019),
(10, 'Русаков', 'Николай', 'Анатольевич', '2019-08-18', 789582145, 2019),
(11, 'Арашничян', 'Карен', 'Азретович', '2019-07-16', 2147483647, 2019),
(12, 'Симонян', 'Мурик', 'Каренович', '2019-05-14', 2147483647, 2019);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_1order`
--

CREATE TABLE `lab6_1order` (
  `Шифр` int(10) NOT NULL,
  `Маршрут` int(10) NOT NULL,
  `Дата` date NOT NULL,
  `Заказчик` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_1order`
--

INSERT INTO `lab6_1order` (`Шифр`, `Маршрут`, `Дата`, `Заказчик`) VALUES
(93, 172, '2020-12-28', 2),
(544, 134, '2020-12-12', 1),
(623, 134, '2020-12-25', 1),
(1121, 125, '2019-09-16', 11),
(1123, 101, '2019-11-15', 5),
(1234, 859, '2019-11-15', 8),
(1283, 325, '2019-11-13', 5),
(1323, 695, '2019-11-15', 7),
(1525, 925, '2019-11-15', 10),
(1526, 334, '2019-11-15', 4),
(1742, 637, '2019-11-15', 3),
(1812, 101, '2019-11-18', 5),
(1911, 334, '2019-11-18', 2),
(2053, 637, '2019-11-18', 8),
(2334, 273, '2019-05-06', 5),
(4234, 134, '2020-04-17', 12),
(4325, 325, '2019-06-03', 6),
(5322, 172, '2020-01-02', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_1route`
--

CREATE TABLE `lab6_1route` (
  `Шифр` int(10) NOT NULL,
  `Место_назначения` text NOT NULL,
  `Расстояние` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_1route`
--

INSERT INTO `lab6_1route` (`Шифр`, `Место_назначения`, `Расстояние`) VALUES
(101, 'г.Краснодар', 5565),
(125, 'г.Сочи', 135),
(134, 'г.Горячий ключ', 1282),
(172, 'г.Пятигорск', 182),
(273, 'г.Москва', 850),
(325, 'г.С.Петербург', 635),
(334, 'г.Ростов', 2504),
(437, 'г.Туапсе', 795),
(637, 'г.Ульяновск', 1580),
(695, 'г.Волгоград', 584),
(859, 'г.Батайск', 698),
(925, 'г.Владивосток', 1226);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_1transportation`
--

CREATE TABLE `lab6_1transportation` (
  `Заказ` int(10) NOT NULL,
  `Автомобиль` int(10) NOT NULL,
  `ИД` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_1transportation`
--

INSERT INTO `lab6_1transportation` (`Заказ`, `Автомобиль`, `ИД`) VALUES
(93, 953, 1),
(623, 567, 2),
(1283, 133, 2),
(1121, 363, 2),
(1323, 731, 5),
(1911, 732, 4),
(4325, 873, 9),
(4234, 833, 7),
(2334, 953, 1),
(1123, 632, 3),
(5322, 453, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lab6_1avto`
--
ALTER TABLE `lab6_1avto`
  ADD PRIMARY KEY (`Номер`);

--
-- Индексы таблицы `lab6_1customer`
--
ALTER TABLE `lab6_1customer`
  ADD PRIMARY KEY (`Код`);

--
-- Индексы таблицы `lab6_1driver`
--
ALTER TABLE `lab6_1driver`
  ADD PRIMARY KEY (`ИД`);

--
-- Индексы таблицы `lab6_1order`
--
ALTER TABLE `lab6_1order`
  ADD PRIMARY KEY (`Шифр`),
  ADD KEY `Заказчик` (`Заказчик`),
  ADD KEY `Маршрут` (`Маршрут`);

--
-- Индексы таблицы `lab6_1route`
--
ALTER TABLE `lab6_1route`
  ADD PRIMARY KEY (`Шифр`);

--
-- Индексы таблицы `lab6_1transportation`
--
ALTER TABLE `lab6_1transportation`
  ADD KEY `Заказ` (`Заказ`),
  ADD KEY `ИД` (`ИД`),
  ADD KEY `Автомобиль` (`Автомобиль`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lab6_1customer`
--
ALTER TABLE `lab6_1customer`
  MODIFY `Код` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT для таблицы `lab6_1driver`
--
ALTER TABLE `lab6_1driver`
  MODIFY `ИД` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `lab6_1route`
--
ALTER TABLE `lab6_1route`
  MODIFY `Шифр` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=926;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `lab6_1order`
--
ALTER TABLE `lab6_1order`
  ADD CONSTRAINT `lab6_1order_ibfk_2` FOREIGN KEY (`Заказчик`) REFERENCES `lab6_1customer` (`Код`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_1order_ibfk_3` FOREIGN KEY (`Маршрут`) REFERENCES `lab6_1route` (`Шифр`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `lab6_1transportation`
--
ALTER TABLE `lab6_1transportation`
  ADD CONSTRAINT `lab6_1transportation_ibfk_1` FOREIGN KEY (`ИД`) REFERENCES `lab6_1driver` (`ИД`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_1transportation_ibfk_2` FOREIGN KEY (`Автомобиль`) REFERENCES `lab6_1avto` (`Номер`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_1transportation_ibfk_3` FOREIGN KEY (`Заказ`) REFERENCES `lab6_1order` (`Шифр`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
