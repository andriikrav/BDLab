-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 09 2023 г., 21:09
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magazine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `shopp`
--

CREATE TABLE `shopp` (
  `number` int(11) NOT NULL,
  `cipher` int(11) NOT NULL,
  `new` enum('YES','NO') NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float(30,0) DEFAULT 0,
  `edition` varchar(100) NOT NULL,
  `pages` int(11) NOT NULL,
  `format` varchar(50) DEFAULT 'Невказано',
  `date` date DEFAULT NULL,
  `circulation` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `shopp`
--

INSERT INTO `shopp` (`number`, `cipher`, `new`, `title`, `price`, `edition`, `pages`, `format`, `date`, `circulation`, `topic`, `category`) VALUES
(203, 44, 'NO', 'Відповіді на актуальні запитання щодо OS/2 Warp', 5, 'DiaSoft', 352, '60х84/16', '1996-03-20', 5000, 'Операційні системи', 'Iнші операційні системи'),
(222, 235, 'NO', 'Інформаційні системи і структури даних', 0, 'Києво-Могилянська академія', 288, '60х90/16', '0000-00-00', 400, 'Використання ПК в цілому', 'Інші книги'),
(190, 860, 'NO', 'Операційна система UNIX', 3, 'Видавнича група BHV', 395, '84х10016', '1997-05-05', 5000, 'Операційні системи', 'UNIX'),
(226, 2154, 'YES', 'Сервер на основі операційної системи FreeBSD 6.1', 0, 'Університет \"Україна\"', 216, '60х84/16', '2015-03-11', 500, 'Програмування', 'Інші операційні системи'),
(245, 2662, 'NO', 'Організація баз даних та знань', 0, 'Вінниця: ВДТУ', 208, '60х90/16', '2001-10-10', 1000, 'Програмування', 'SQL'),
(50, 3851, 'NO', 'Захист інформації та безпека комп`ютерних систем', 26, 'DiaSoft', 480, '84х108/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Захист і безпека ПК'),
(58, 3932, 'NO', 'Як перетворити персональний комп`ютер на вимірювальний комплекс', 8, 'ДМК', 144, '60х88/16', '2000-06-09', 5000, 'Використання ПК в цілому', 'Інші книги'),
(220, 4687, 'NO', 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів ', 18, 'ДМК', 240, '70х100/16', '2000-02-03', 5000, 'Програмування', 'C&C++'),
(59, 4713, 'NO', 'Plug-ins. Додаткові програми для музичних програм', 11, 'ДМК', 144, '70х100/16', '2000-02-22', 5000, 'Використання ПК в цілому', 'Інші книги'),
(176, 4829, 'NO', ' Windows 2000 Professional крок за кроком з CD', 25, 'Эком', 320, '70х100/16', '2000-04-28', 5000, 'Операційні системи', 'Windows 2000'),
(210, 4982, 'NO', 'Мова програмування С. Лекції та вправи', 29, 'DiaSoft', 432, '84х108/16', '2000-12-07', 5000, 'Програмування', 'C&C++'),
(8, 4985, 'NO', 'Засвой самостійно модернізацію та ремонт ПК за 24 години 2-ге вид', 19, 'Вільямс', 288, '70х100/16', '2000-07-07', 5000, 'Використання ПК в цілому', 'Підручники'),
(2, 5110, 'NO', 'Апаратні засоби мультимедіа. Відеосистема РС', 16, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Підручники'),
(31, 5111, 'NO', 'Апаратні засоби мультимедіа. Відеосистема РС', 16, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(20, 5127, 'NO', 'Автоматизація інженерно-графічних робіт', 12, 'Видавнича група BHV', 256, '70х100/16', '2000-06-15', 5000, 'Використання ПК в цілому', 'Підручники'),
(9, 5141, 'NO', 'Структури даних та алгоритми', 38, 'Вільямс', 384, '70х100/16', '2000-09-29', 5000, 'Використання ПК в цілому', 'Підручники'),
(188, 5170, 'NO', 'Linux версії', 24, 'ДМК', 346, '70х100/16', '1997-05-05', 5000, 'Операційні системи', 'Linux'),
(206, 5176, 'NO', 'Windows Ме. Супутник користувача', 13, 'Видавнича група BHV', 306, '', '2000-10-10', 5000, 'Операційні системи', 'Iнші операційні системи'),
(46, 5199, 'NO', 'Залізо IBM 2001', 30, 'МикроАрт', 368, '70х100/16', '2000-12-02', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(175, 5217, 'NO', ' Windows МЕ. Найновіші версії програм', 17, 'Триумф', 320, '70х100/16', '2000-08-25', 5000, 'Операційні системи', 'Windows 2000'),
(209, 5462, 'NO', 'Мова програмування С++. Лекції та вправи', 29, 'DiaSoft', 656, '84х108/16', '2000-12-12', 5000, 'Програмування', 'C&C++'),
(247, 5641, 'YES', 'Організація баз даних та знань', 0, 'Видавнича група BHV', 384, '70х100/16', '2021-12-15', 5000, 'Програмування', 'SQL'),
(225, 8746, 'YES', 'Бази даних в інформаційних системах', 0, 'Університет \"Україна\"', 418, '60х84/16', '2018-07-25', 100, 'Програмування', 'SQL');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `shopp`
--
ALTER TABLE `shopp`
  ADD PRIMARY KEY (`cipher`),
  ADD KEY `Sort` (`number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
