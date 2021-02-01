-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 08 2020 г., 01:35
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
-- База данных: `test_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_audience`
--

CREATE TABLE `lab6_audience` (
  `id_aud` int(11) NOT NULL,
  `housing` text NOT NULL,
  `number` int(5) NOT NULL,
  `spaciousness` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_audience`
--

INSERT INTO `lab6_audience` (`id_aud`, `housing`, `number`, `spaciousness`) VALUES
(1, 'Защита растений', 234, 100),
(2, 'Гидрофак', 161, 150),
(3, 'Главный', 221, 30),
(4, 'Главный', 224, 36),
(5, 'Мехфак', 112, 87);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_days`
--

CREATE TABLE `lab6_days` (
  `id_day` int(11) NOT NULL,
  `nameday` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_days`
--

INSERT INTO `lab6_days` (`id_day`, `nameday`, `level`) VALUES
(1, 'Понедельник', 1),
(2, 'Вторник', 2),
(3, 'Среда', 3),
(4, 'Четверг', 4),
(5, 'Пятница', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_discipline`
--

CREATE TABLE `lab6_discipline` (
  `id_dis` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_discipline`
--

INSERT INTO `lab6_discipline` (`id_dis`, `name`) VALUES
(1, 'Информатика'),
(2, 'Мат. анализ'),
(3, 'Русский язык'),
(4, 'БЖД'),
(5, 'Право');

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_schedule`
--

CREATE TABLE `lab6_schedule` (
  `id` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `lesson` int(1) NOT NULL,
  `audience` int(11) NOT NULL,
  `discipline` int(11) NOT NULL,
  `teachers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_schedule`
--

INSERT INTO `lab6_schedule` (`id`, `week`, `day`, `lesson`, `audience`, `discipline`, `teachers`) VALUES
(1, 1, 1, 1, 5, 4, 5),
(2, 1, 2, 3, 4, 1, 1),
(3, 2, 3, 2, 5, 3, 4),
(4, 2, 3, 3, 1, 5, 3),
(5, 1, 2, 1, 1, 4, 2),
(6, 1, 4, 4, 4, 2, 1),
(7, 2, 4, 3, 1, 4, 4),
(8, 1, 4, 1, 2, 2, 2),
(9, 2, 5, 3, 2, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `lab6_teachers`
--

CREATE TABLE `lab6_teachers` (
  `id_tea` int(11) NOT NULL,
  `fio` text NOT NULL,
  `specialty` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lab6_teachers`
--

INSERT INTO `lab6_teachers` (`id_tea`, `fio`, `specialty`) VALUES
(1, 'Иванов И.И.', 'Информационные науки'),
(2, 'Петров П.П.', 'Облачные вычисления'),
(3, 'Сидоров С.С.', 'Юриспруденция'),
(4, 'Олегов О.О.', 'Точные науки'),
(5, 'Сергеев С.С.', 'Охрана труда');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lab6_audience`
--
ALTER TABLE `lab6_audience`
  ADD PRIMARY KEY (`id_aud`);

--
-- Индексы таблицы `lab6_days`
--
ALTER TABLE `lab6_days`
  ADD PRIMARY KEY (`id_day`);

--
-- Индексы таблицы `lab6_discipline`
--
ALTER TABLE `lab6_discipline`
  ADD PRIMARY KEY (`id_dis`);

--
-- Индексы таблицы `lab6_schedule`
--
ALTER TABLE `lab6_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audience` (`audience`),
  ADD KEY `discipline` (`discipline`),
  ADD KEY `teachers` (`teachers`),
  ADD KEY `day` (`day`);

--
-- Индексы таблицы `lab6_teachers`
--
ALTER TABLE `lab6_teachers`
  ADD PRIMARY KEY (`id_tea`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lab6_audience`
--
ALTER TABLE `lab6_audience`
  MODIFY `id_aud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `lab6_days`
--
ALTER TABLE `lab6_days`
  MODIFY `id_day` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `lab6_discipline`
--
ALTER TABLE `lab6_discipline`
  MODIFY `id_dis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `lab6_schedule`
--
ALTER TABLE `lab6_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `lab6_teachers`
--
ALTER TABLE `lab6_teachers`
  MODIFY `id_tea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `lab6_schedule`
--
ALTER TABLE `lab6_schedule`
  ADD CONSTRAINT `lab6_schedule_ibfk_1` FOREIGN KEY (`audience`) REFERENCES `lab6_audience` (`id_aud`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_schedule_ibfk_2` FOREIGN KEY (`discipline`) REFERENCES `lab6_discipline` (`id_dis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_schedule_ibfk_3` FOREIGN KEY (`teachers`) REFERENCES `lab6_teachers` (`id_tea`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab6_schedule_ibfk_4` FOREIGN KEY (`day`) REFERENCES `lab6_days` (`id_day`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
