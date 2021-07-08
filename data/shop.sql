-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 04 2021 г., 18:10
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `goods_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `session_id`, `goods_id`) VALUES
(18, '0', 1),
(20, '0', 1),
(21, '0', 1),
(22, '0', 5),
(23, '0', 6),
(40, '1', 3),
(41, '1', 3),
(42, '1', 3),
(45, '1', 3),
(46, '1', 3),
(47, '0', 3),
(48, '0', 4),
(50, '0', 5),
(51, '0', 5),
(52, '0', 4),
(55, '2', 1),
(56, '2', 1),
(57, '2', 1),
(58, '2', 2),
(59, '2', 3),
(60, '2', 3),
(77, '0speaic7empibon0gjeuur3b4u1jtunc', 1);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `cart_goods_detailed`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `cart_goods_detailed` (
`id_in_cart` int
,`session_id` varchar(255)
,`id` int
,`image` text
,`name` text
,`description` text
,`price` int
);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Спорт'),
(2, 'Политика');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `feedback`) VALUES
(15, 'Посетитель', 'Еще отзыв'),
(25, 'Вася', 'Еще один отзыв 222');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int NOT NULL,
  `image` text NOT NULL,
  `name` text NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `image`, `name`, `description`, `price`) VALUES
(1, 'metla.png', 'Метла', 'Отличная метла для любого хозяйственного дворника!', 22),
(2, 'matches.png', 'Спички', 'Спички особые, изготовленные из редких пород дерева.', 1),
(3, 'vedro-plastik.jpg', 'Ведро', 'Пластиковое ведро с крепчайшей ручкой для самых сильных хозяев.', 14),
(4, 'Касафлекс акватерм.jpg', 'Касафлекс', 'Трубы касафлекс - гофрированные трубы из нержавеющей стали в пенополиуретановой изоляции в оболочке из ПНД', 156),
(5, 'Концевой предохранитель dhec3280.jpg', 'Концевой предохранитель', 'Концевой предохранитель или термоусажеваемая торцевая изоляция(заглушка) DHEC предохранения торцов для двутрубных систем Изопрофлекс Тандем', 50),
(6, 'ТЗИ12.jpg', 'ТЗИ', 'Термоусаживаемая торцевая изоляция(заглушка) предохранения торцов для двутрубных систем ТВЭЛ-ПЭКС-2', 49),
(7, 'Тандем.jpg', 'Изопрофлекс Тандем', 'Трубы Изопрофлекс Тандем - система из двух напорных труб из сшитого полиэтилена в общей изоляции и оболочке ПНД', 122),
(8, 'компрессионные фитинги2.jpg', 'Компрессионный фитинг', 'Компрессионные фитинги - переходы сшитый полиэтилен - резьба. Не требуют специального инструмента для монтажа', 40),
(9, 'book.jpg', 'Фантастика', 'Супервселенная', 23),
(10, 'book.jpg', 'Фантастика', 'Супервселенная', 23),
(11, 'book.jpg', 'Фантастика', 'Супервселенная', 23),
(12, 'book.jpg', 'Фантастика', 'Супервселенная', 23),
(13, 'book.jpg', 'Фантастика', 'Супервселенная', 23);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `category` int NOT NULL,
  `prev` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `category`, `prev`, `text`) VALUES
(1, 2, 'В штабе Зеленского не признают референдум в Крыму', 'КИЕВ, 15 апр — РИА Новости. Пресс-служба кандидата в президенты Украины Владимира Зеленского заявила, что в его штабе не признают референдум о воссоединении Крыма с Россией.\r\n\"Так называемый \"референдум\" не может считаться актом, свидетельствующим о свободном волеизъявлении жителей Крыма\", — говорится в заявлении, которое имеется в распоряжении РИА Новости.'),
(2, 2, 'Путин подписал закон о запрете размещения хостелов в жилых домах', 'МОСКВА, 15 апр - РИА Новости. Владимир Путин подписал закон о запрете размещения хостелов в многоквартирных домах с первого октября 2019 года, соответствующий документ опубликован на официальном портале правовой информации.\r\nЗакон запрещает использовать жилые помещения в качестве гостиницы или другого средства временного размещения. Предусматривается, что оказывать гостиничные услуги можно лишь после перевода жилого помещения в нежилое и оснащения его оборудованием надлежащего качества:');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_carts`
--

CREATE TABLE `order_carts` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `goods_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `order_short_details`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `order_short_details` (
`order_id` bigint unsigned
,`id` int
,`name` text
,`price` int
);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `pass` text NOT NULL,
  `hash` text NOT NULL,
  `role` bit(1) DEFAULT b'0',
  `phone` bigint DEFAULT '80000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `hash`, `role`, `phone`) VALUES
(1, 'admin', '$2y$10$GAh95KWqFf1Fw4YyH/BCnuODYbJ1Mln78vDuOIwj7WQvChhR8QcX.', '209963262660ad14a00d8340.17191439', b'1', 80000000000),
(2, 'user', '$2y$10$GAh95KWqFf1Fw4YyH/BCnuODYbJ1Mln78vDuOIwj7WQvChhR8QcX.', '146865865060ab823d993165.03227758', b'0', 80000000000),
(3, 'Иван', '$2y$10$71.uV9qy03jpGwOy9GC0QOilr7/oUEPoaYHpvL3soA.mW5f40.1Ba', '', b'0', 80000000000),
(4, 'Булкин', '$2y$10$jB0sAf5Po74KeQK7havkIutiRyI/PVtBWbbPvRyGWEu8CO1aK0AcS', '', b'0', 89265535459),
(6, 'Патронов', '$2y$10$CrKIFjnZvHhrtQr3Zb30IelqeXuBOQ5YF1gimV7h9qQkgqczcJ7jm', 'e31gjons2ug8ppspe00nt47itdvopvb3', b'0', 1111111111),
(7, 'петька', '$2y$10$auMRvpQ7Fw3RLnUpvhJmNe/3tcn0x5ntos5R4oadgwlMYJhz5R4cS', 'fku19chep4e7utn7t01mvlf66p05s0c0', b'0', 11133333),
(8, 'пцвап', '$2y$10$mVqd9Md6VlLJTFVG4.5zMO3NYZvbWZ5gRcY0xDOxEyQHYt.OPc/Y2', 'uda5iom80rhrfp6e6ijkbvobv7800853', b'0', 11133333);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `user_id_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `user_id_1` (
`id` int
,`login` varchar(255)
,`pass` text
,`hash` text
);

-- --------------------------------------------------------

--
-- Структура для представления `cart_goods_detailed`
--
DROP TABLE IF EXISTS `cart_goods_detailed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `cart_goods_detailed`  AS SELECT `c`.`id` AS `id_in_cart`, `c`.`session_id` AS `session_id`, `g`.`id` AS `id`, `g`.`image` AS `image`, `g`.`name` AS `name`, `g`.`description` AS `description`, `g`.`price` AS `price` FROM (`cart` `c` join `goods` `g` on((`c`.`goods_id` = `g`.`id`))) ORDER BY `c`.`session_id` ASC, `c`.`goods_id` ASC ;

-- --------------------------------------------------------

--
-- Структура для представления `order_short_details`
--
DROP TABLE IF EXISTS `order_short_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `order_short_details`  AS SELECT `o`.`id` AS `order_id`, `g`.`id` AS `id`, `g`.`name` AS `name`, `g`.`price` AS `price` FROM ((`orders` `o` join `order_carts` `oc` on((`o`.`id` = `oc`.`order_id`))) join `goods` `g` on((`oc`.`goods_id` = `g`.`id`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `user_id_1`
--
DROP TABLE IF EXISTS `user_id_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `user_id_1`  AS SELECT `users`.`id` AS `id`, `users`.`login` AS `login`, `users`.`pass` AS `pass`, `users`.`hash` AS `hash` FROM `users` WHERE (`users`.`id` = 1) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_goods_id` (`goods_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `order_carts`
--
ALTER TABLE `order_carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `order_carts`
--
ALTER TABLE `order_carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_carts`
--
ALTER TABLE `order_carts`
  ADD CONSTRAINT `order_carts_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
