-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 20 2015 г., 01:45
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `yii_forum`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_block`
--

CREATE TABLE IF NOT EXISTS `tbl_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `tbl_block`
--

INSERT INTO `tbl_block` (`id`, `name`) VALUES
(1, 'Loream ipsum'),
(2, 'Loream ipsum'),
(3, 'Loream ipsum'),
(4, 'Ololorem ipsum amet');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_block` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_category_block` (`id_block`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `id_block`) VALUES
(1, 'Loream ipsum', 1),
(2, 'Loream ipsum', 1),
(3, 'Loream ipsum', 2),
(4, 'Loream ipsum', 2),
(5, 'Loream ipsum', 3),
(6, 'Loream ipsum', 3),
(7, 'Ololorem ripsum', 3),
(8, 'Sit amet quote', 4),
(9, 'Sit amet quote', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `id_post` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_comment_post` (`id_post`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `content`, `create_time`, `author`, `email`, `url`, `id_post`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1419813380, 'avdeev', 'world@net.ru', 'http://alexeyavdeev.ru', 4),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1421416963, 'f', 'world@net.ru', 'http://alexeyavdeev.ru', 4),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1421417019, 'f', 'world@net.ru', 'http://alexeyavdeev.ru', 4),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1421417034, 'ggggggggg', 'world@net.ru', 'http://alexeyavdeev.ru', 4),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1421417170, 'ffffffff', 'world@net.ru', 'http://alexeyavdeev.ru', 6),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1421417179, 'avdeev', 'world@net.ru', 'http://alexeyavdeev.ru', 6),
(7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1421417250, 'avdeev', 'world@net.ru', 'http://alexeyavdeev.ru', 6),
(10, 'Wtf is this language?!?! Spanish???', 1421430591, 'avdeev', 'world@net.ru', 'http://alexeyavdeev.ru', 8),
(11, 'I don''t understand you!!', 1421430839, 'avdeev', 'world@net.ru', 'http://alexeyavdeev.ru', 8),
(12, 'aaaaaaaaaaaaaaa', 1421430847, 'avdeev', 'world@net.ru', 'http://alexeyavdeev.ru', 8),
(13, 'lol', 1421526829, 'avdeev', 'world@net.ru', 'http://alexeyavdeev.ru', 2),
(14, 'ololo!!!!!!!!!11!рас', 1421532123, 'avdeev', 'world@net.ru', '', 7),
(15, 'вввввввввввввввв', 1421595498, 'avdeev', 'world@net.ru', '', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_post`
--

CREATE TABLE IF NOT EXISTS `tbl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_post_category` (`id_cat`),
  KEY `FK_post_author` (`id_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `id_author`, `id_cat`, `create_time`, `update_time`) VALUES
(1, 'Ololorem ripsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(2, 'Ololorem ripsum', '\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(3, 'Ololorem ripsum', '\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(4, 'Ololorem ripsum', '\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(5, 'Ololorem ripsum', '\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(6, 'Ololorem ripsum', '\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(7, 'Ololorem ripsum', '\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(8, 'Ololorem ripsum', '\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421532123, 1421532123),
(9, 'tetz', 'tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz tetz ', 1, 3, 1421532123, 1421532123),
(10, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 2, 1421686478, 1421686478),
(11, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 1, 1421686478, 1421686478),
(15, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 7, 1421701347, 1421701347),
(16, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 4, 1421701557, 1421701557),
(17, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 4, 1421701563, 1421701563),
(18, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 7, 1421701570, 1421701570),
(19, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 6, 1421701577, 1421701577),
(20, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 6, 1421701583, 1421701583),
(21, 'oLorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 5, 1421701601, 1421701601),
(22, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 9, 1421701815, 1421701815),
(23, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 8, 1421701825, 1421701825),
(24, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 8, 1421701835, 1421701835),
(25, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam egestas sollicitudin convallis. Ut laoreet tincidunt maximus. Nulla cursus ultricies arcu vel consequat. Etiam non neque posuere, tempor mi ut, facilisis neque. Curabitur quis tellus sed nibh posuere sodales. Sed vestibulum tortor a tellus auctor, sed posuere mauris facilisis. Aliquam in neque consectetur, imperdiet sem quis, gravida nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1, 8, 1421701842, 1421701842);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile` text,
  `nick` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `profile`, `nick`) VALUES
(1, 'admin', '$2a$10$JTJf6/XqC94rrOtzuF397OHa4mbmZrVTBOQCmYD9U.obZRUut4BoC', 'world@net.ru', NULL, 'avdeev');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD CONSTRAINT `FK_category_block` FOREIGN KEY (`id_block`) REFERENCES `tbl_block` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `FK_comment_post` FOREIGN KEY (`id_post`) REFERENCES `tbl_post` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `FK_post_author` FOREIGN KEY (`id_author`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_post_category` FOREIGN KEY (`id_cat`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
