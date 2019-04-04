-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 04 2019 г., 11:51
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zyyr97jg_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--
-- Создание: Апр 04 2019 г., 08:30
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`id`, `name`, `last_name`) VALUES
(1, 'Михаил', 'Булгаков'),
(2, 'Илья', 'Ильф'),
(3, 'Евгений', 'Петров'),
(4, 'Жюль', 'Верн');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--
-- Создание: Апр 04 2019 г., 07:05
-- Последнее обновление: Апр 04 2019 г., 08:24
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(64) NOT NULL,
  `isbn` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `isbn`, `name`, `date`) VALUES
(1, '', 'Мастер и Маргарита', '2019-04-04'),
(2, '', 'Двенадцать стульев', '2019-04-01'),
(3, '', 'Двадцать тысяч лье под водой', '2019-04-02'),
(4, '', 'Путешествие к центру земли', '2019-04-02');

-- --------------------------------------------------------

--
-- Структура таблицы `j_book_author`
--
-- Создание: Апр 04 2019 г., 08:26
-- Последнее обновление: Апр 04 2019 г., 08:28
--

DROP TABLE IF EXISTS `j_book_author`;
CREATE TABLE `j_book_author` (
  `id` int(64) NOT NULL,
  `book_id` int(64) NOT NULL,
  `author_id` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `j_book_author`
--

INSERT INTO `j_book_author` (`id`, `book_id`, `author_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 3, 4),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `j_book_style`
--
-- Создание: Апр 04 2019 г., 07:58
-- Последнее обновление: Апр 04 2019 г., 08:24
--

DROP TABLE IF EXISTS `j_book_style`;
CREATE TABLE `j_book_style` (
  `id` int(64) NOT NULL,
  `book_id` int(64) NOT NULL,
  `style_id` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `j_book_style`
--

INSERT INTO `j_book_style` (`id`, `book_id`, `style_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3),
(4, 3, 2),
(5, 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `style`
--
-- Создание: Апр 04 2019 г., 07:14
--

DROP TABLE IF EXISTS `style`;
CREATE TABLE `style` (
  `id` int(64) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `style`
--

INSERT INTO `style` (`id`, `name`) VALUES
(1, 'роман'),
(2, 'повесть'),
(3, 'фантастика');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `j_book_author`
--
ALTER TABLE `j_book_author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `j_book_style`
--
ALTER TABLE `j_book_style`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `j_book_author`
--
ALTER TABLE `j_book_author`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `j_book_style`
--
ALTER TABLE `j_book_style`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `style`
--
ALTER TABLE `style`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
