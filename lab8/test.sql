-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 07 2020 г., 14:04
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
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `fio` varchar(100) DEFAULT NULL,
  `title` text NOT NULL,
  `message` text,
  `m_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `section_id`, `fio`, `title`, `message`, `m_time`) VALUES
(1, 3, 'Иванов И.И.', 'Прогноз погоды', 'Погода хорошая, местами смерчи.', '2020-12-06 22:33:07'),
(2, 1, 'Петров П.П.', 'Развитие компьютеров', 'Современные компьютеры, это только начало развития технологий', '2020-12-06 22:34:17'),
(3, 3, 'Сергеев С.С.', 'Глобальное потепление', 'Хотя и температура не повышается выше ноля, на улице довольно тепло.', '2020-12-06 22:35:26'),
(4, 2, 'Александров А.А.', 'Сельское хозяйство', 'В современном мире сельское хозяйство отходит на второй план.', '2020-12-06 22:36:26'),
(5, 1, 'Петров П.П.', 'Эволюция технологий', 'Устаревшие технологии неминуемо устаревают.', '2020-12-06 22:48:09'),
(6, 3, 'Сидоров С.С.', 'Повышение уровня воды', 'Льды Антарктиды, неминуемо повышают уровень мирового океана', '2020-12-06 22:51:02');

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_order` int(11) DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id`, `s_name`, `s_order`) VALUES
(1, 'ИТ', 500),
(2, 'Сельское хозяйство', 500),
(3, 'Погода', 500);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
