-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 10 2018 г., 16:20
-- Версия сервера: 5.7.16
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dir2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '''''',
  `price` int(11) DEFAULT NULL COMMENT '''''',
  `approved_main` tinyint(1) DEFAULT NULL,
  `approved_test` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id`, `status`, `sort`, `name`, `price`, `approved_main`, `approved_test`) VALUES
(1, 1, NULL, 'Lada Kalina Sport', 450000, NULL, NULL),
(2, 1, NULL, 'Lada granta', 400000, NULL, NULL),
(3, 1, NULL, 'Lada priora', 250000, NULL, NULL),
(4, 1, NULL, NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `car_translation`
--

CREATE TABLE `car_translation` (
  `id` int(11) NOT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL COMMENT '''''',
  `name` varchar(100) DEFAULT NULL COMMENT '''''',
  `price` int(11) DEFAULT NULL COMMENT '''''',
  `language_code` varchar(100) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `car_translation`
--

INSERT INTO `car_translation` (`id`, `sort`, `car_id`, `name`, `price`, `language_code`) VALUES
(1, NULL, 1, NULL, NULL, NULL),
(2, NULL, 1, NULL, NULL, NULL),
(3, NULL, 1, NULL, NULL, NULL),
(4, NULL, 4, 'nissan skyline', 1000000, 'ru'),
(5, NULL, 4, 'nissan skyline', 1500000, 'ru-test'),
(6, NULL, 5, 'Тойота', 40000, 'ru'),
(7, NULL, 5, 'Тойота', 40000, 'ru-test'),
(8, NULL, 5, NULL, NULL, 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `dealer`
--

CREATE TABLE `dealer` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dealer`
--

INSERT INTO `dealer` (`id`, `status`, `sort`, `title`, `position`) VALUES
(1, 1, 1, 'ЮжУралАвто2', '55.15710095758846,61.37958526611328'),
(2, 1, 0, 'ЧелябАвтоЛюкс', '55.18239627962354,61.3970947265625');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `table_name` varchar(100) NOT NULL DEFAULT '',
  `row_id` int(11) UNSIGNED DEFAULT '0',
  `user` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `data` text,
  `delta` text,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `parent_table` varchar(100) DEFAULT NULL,
  `parent_changed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Did the top-level record in the change set alter (scalar values/many-to-one relationships)? Or only the data within its related foreign collection records? (*toMany)',
  `datetime` datetime DEFAULT NULL,
  `logged_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(1, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-03 05:57:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(2, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-03 08:28:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(3, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-03 11:52:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(4, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 16, 1, '{\"id\":\"16\",\"table_name\":\"discount\",\"column_name\":\"depend\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"discount\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"depend\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\"}\",\"junction_key_right\":\"depend\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"related_table\":\"discount\",\"sort\":6,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"junction_table\":null,\"junction_key_left\":null,\"id\":\"16\"}', NULL, NULL, 1, '2018-05-03 13:16:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(5, 'ENTRY', 'ADD', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada kalina\",\"price\":\"300000\"}', '[]', NULL, NULL, 1, '2018-05-03 13:18:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(6, 'ENTRY', 'ADD', '2', 'car', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada granta\",\"price\":\"400000\"}', '[]', NULL, NULL, 1, '2018-05-03 13:18:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(7, 'ENTRY', 'ADD', '3', 'car', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada priora\",\"price\":\"250000\"}', '[]', NULL, NULL, 1, '2018-05-03 13:19:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(8, 'ENTRY', 'ADD', '1', 'discount', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"skidos1\",\"title\":\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u04301\",\"value\":\"25000\",\"depend\":null,\"is_percent\":null,\"individual\":\"1\"}', '[]', NULL, NULL, 1, '2018-05-03 13:20:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(9, 'ENTRY', 'ADD', '2', 'discount', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"name\":\"skidos2\",\"title\":\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u04302\",\"value\":\"10\",\"depend\":null,\"is_percent\":\"1\",\"individual\":\"1\"}', '[]', NULL, NULL, 1, '2018-05-03 13:20:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(10, 'ENTRY', 'ADD', '3', 'discount', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"skidos3\",\"title\":\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u04303\",\"value\":\"5000\",\"depend\":\"2\",\"is_percent\":\"0\",\"individual\":\"1\"}', '[]', NULL, NULL, 1, '2018-05-03 13:21:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(11, 'ENTRY', 'ADD', '4', 'discount', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":\"skidos4\",\"title\":\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u04304\",\"value\":\"5\",\"depend\":null,\"is_percent\":\"1\",\"individual\":\"0\"}', '[]', NULL, NULL, 1, '2018-05-03 13:21:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(12, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-04 05:57:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(13, 'ENTRY', 'ADD', NULL, 'directus_privileges', 15, 1, '{\"id\":\"15\",\"table_name\":\"car\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}', '[]', NULL, NULL, 1, '2018-05-04 05:57:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(14, 'ENTRY', 'ADD', NULL, 'directus_privileges', 16, 1, '{\"id\":\"16\",\"table_name\":\"discount\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}', '[]', NULL, NULL, 1, '2018-05-04 05:57:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(15, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-04 08:10:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(16, 'ENTRY', 'UPDATE', NULL, 'directus_privileges', 16, 1, '{\"id\":\"16\",\"table_name\":\"discount\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"1\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}', '{\"allow_add\":1,\"allow_edit\":2,\"allow_delete\":2,\"allow_alter\":1,\"allow_view\":2,\"id\":\"16\"}', NULL, NULL, 1, '2018-05-04 08:44:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(17, 'ENTRY', 'UPDATE', NULL, 'directus_privileges', 15, 1, '{\"id\":\"15\",\"table_name\":\"car\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"1\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}', '{\"allow_add\":1,\"allow_edit\":2,\"allow_delete\":2,\"allow_alter\":1,\"allow_view\":2,\"id\":\"15\"}', NULL, NULL, 1, '2018-05-04 08:44:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(18, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-04 09:30:30', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(19, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-05 13:53:58', '77.222.99.171', 'Mozilla/5.0 (Linux; Android 6.0.1; Le X527 Build/IMXOSOP5801910311S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(20, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-05 13:54:33', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(21, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 26, 1, '{\"id\":\"26\",\"table_name\":\"dealer\",\"column_name\":\"position\",\"data_type\":\"VARCHAR\",\"ui\":\"map\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"map\\\",\\\"google_api_key\\\":\\\"AIzaSyBUgfWStBv5iVs2k6brg9x1vTdbpzNvUfo\\\",\\\"show_lat_lng\\\":1}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"map\\\",\\\"google_api_key\\\":\\\"AIzaSyBUgfWStBv5iVs2k6brg9x1vTdbpzNvUfo\\\",\\\"show_lat_lng\\\":1}\",\"data_type\":\"VARCHAR\",\"ui\":\"map\",\"sort\":4,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"26\"}', NULL, NULL, 1, '2018-05-05 14:09:39', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(22, 'ENTRY', 'ADD', '1', 'dealer', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e\",\"position\":\"55.15710095758846,61.37958526611328\"}', '[]', NULL, NULL, 1, '2018-05-05 14:10:09', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(23, 'ENTRY', 'ADD', '2', 'dealer', 2, 1, '{\"id\":\"2\",\"status\":\"2\",\"sort\":null,\"title\":\"\\u0427\\u0435\\u043b\\u044f\\u0431\\u0410\\u0432\\u0442\\u043e\\u041b\\u044e\\u043a\\u0441\",\"position\":\"55.18239627962354,61.3970947265625\"}', '[]', NULL, NULL, 1, '2018-05-05 14:10:40', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(24, 'ENTRY', 'UPDATE', '2', 'dealer', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"\\u0427\\u0435\\u043b\\u044f\\u0431\\u0410\\u0432\\u0442\\u043e\\u041b\\u044e\\u043a\\u0441\",\"position\":\"55.18239627962354,61.3970947265625\"}', '{\"status\":1,\"id\":\"2\"}', NULL, NULL, 1, '2018-05-05 14:10:46', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(25, 'ENTRY', 'UPDATE', '1', 'dealer', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e2\",\"position\":\"55.15710095758846,61.37958526611328\"}', '{\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e2\",\"id\":\"1\"}', NULL, NULL, 1, '2018-05-05 14:11:04', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(26, 'ENTRY', 'UPDATE', '1', 'dealer', 1, 1, '{\"id\":\"1\",\"status\":\"2\",\"sort\":null,\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e2\",\"position\":\"55.15710095758846,61.37958526611328\"}', '{\"status\":2,\"id\":\"1\"}', NULL, NULL, 1, '2018-05-05 14:15:31', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(27, 'ENTRY', 'UPDATE', '1', 'dealer', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e2\",\"position\":\"55.15710095758846,61.37958526611328\"}', '{\"status\":1,\"id\":\"1\"}', NULL, NULL, 1, '2018-05-05 14:15:38', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(28, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 25, 1, '{\"id\":\"25\",\"table_name\":\"dealer\",\"column_name\":\"title\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"25\"}', NULL, NULL, 1, '2018-05-05 14:33:22', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(29, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 25, 1, '{\"id\":\"25\",\"table_name\":\"dealer\",\"column_name\":\"title\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":false,\"id\":\"25\"}', NULL, NULL, 1, '2018-05-05 14:33:23', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(30, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 25, 1, '{\"id\":\"25\",\"table_name\":\"dealer\",\"column_name\":\"title\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"text_input\\\",\\\"size\\\":\\\"medium\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"text_input\\\",\\\"size\\\":\\\"medium\\\"}\",\"required\":false,\"ui\":\"text_input\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"25\"}', NULL, NULL, 1, '2018-05-05 14:33:44', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(31, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 25, 1, '{\"id\":\"25\",\"table_name\":\"dealer\",\"column_name\":\"title\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"text_input\\\",\\\"size\\\":\\\"small\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"text_input\\\",\\\"size\\\":\\\"small\\\"}\",\"required\":false,\"ui\":\"text_input\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"25\"}', NULL, NULL, 1, '2018-05-05 14:34:00', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(32, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 25, 1, '{\"id\":\"25\",\"table_name\":\"dealer\",\"column_name\":\"title\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"text_input\\\",\\\"size\\\":\\\"large\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"text_input\\\",\\\"size\\\":\\\"large\\\"}\",\"required\":false,\"ui\":\"text_input\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"25\"}', NULL, NULL, 1, '2018-05-05 14:34:11', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(33, 'ENTRY', 'UPDATE', '1', 'dealer', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e2\",\"position\":\"55.15710095758846,61.37958526611328\"}', '{\"sort\":1,\"id\":1}', NULL, NULL, 1, '2018-05-05 15:50:03', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(34, 'ENTRY', 'UPDATE', '2', 'dealer', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":\"0\",\"title\":\"\\u0427\\u0435\\u043b\\u044f\\u0431\\u0410\\u0432\\u0442\\u043e\\u041b\\u044e\\u043a\\u0441\",\"position\":\"55.18239627962354,61.3970947265625\"}', '{\"sort\":0,\"id\":2}', NULL, NULL, 1, '2018-05-05 15:50:03', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(35, 'ENTRY', 'UPDATE', '2', 'dealer', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\\u0427\\u0435\\u043b\\u044f\\u0431\\u0410\\u0432\\u0442\\u043e\\u041b\\u044e\\u043a\\u0441\",\"position\":\"55.18239627962354,61.3970947265625\"}', '{\"sort\":1,\"id\":2}', NULL, NULL, 1, '2018-05-05 15:50:04', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(36, 'ENTRY', 'UPDATE', '1', 'dealer', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e2\",\"position\":\"55.15710095758846,61.37958526611328\"}', '{\"sort\":0,\"id\":1}', NULL, NULL, 1, '2018-05-05 15:50:04', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(37, 'ENTRY', 'UPDATE', '1', 'dealer', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\\u042e\\u0436\\u0423\\u0440\\u0430\\u043b\\u0410\\u0432\\u0442\\u043e2\",\"position\":\"55.15710095758846,61.37958526611328\"}', '{\"sort\":1,\"id\":1}', NULL, NULL, 1, '2018-05-05 15:50:11', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(38, 'ENTRY', 'UPDATE', '2', 'dealer', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":\"0\",\"title\":\"\\u0427\\u0435\\u043b\\u044f\\u0431\\u0410\\u0432\\u0442\\u043e\\u041b\\u044e\\u043a\\u0441\",\"position\":\"55.18239627962354,61.3970947265625\"}', '{\"sort\":0,\"id\":2}', NULL, NULL, 1, '2018-05-05 15:50:11', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(39, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-07 04:58:35', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(40, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina\",\"price\":\"300000\"}', '{\"name\":\"Lada Kalina\",\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 05:01:20', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(41, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina\",\"price\":\"350000\"}', '{\"price\":\"350000\",\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 05:01:28', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(42, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"350000\"}', '{\"name\":\"Lada Kalina Sport\",\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 05:54:59', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(43, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-07 06:34:13', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(44, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"450000\"}', '{\"price\":\"450000\",\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 06:38:42', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(45, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"2\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"450000\"}', '{\"status\":2,\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 06:39:00', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(46, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"450000\"}', '{\"status\":1,\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 06:39:11', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(47, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"2\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"450000\"}', '{\"status\":2,\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 06:41:01', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(48, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"450000\"}', '{\"status\":1,\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 06:41:13', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(49, 'ENTRY', 'ADD', '1', 'languages', 1, 1, '{\"id\":\"1\",\"status\":\"2\",\"sort\":null,\"code\":\"ru\",\"name\":\"ru\"}', '[]', NULL, NULL, 1, '2018-05-07 08:23:36', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(50, 'ENTRY', 'ADD', '2', 'languages', 2, 1, '{\"id\":\"2\",\"status\":\"2\",\"sort\":null,\"code\":\"ru-test\",\"name\":\"ru test\"}', '[]', NULL, NULL, 1, '2018-05-07 08:23:52', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(51, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 37, 1, '{\"id\":\"37\",\"table_name\":\"car\",\"column_name\":\"translations\",\"data_type\":\"ALIAS\",\"ui\":\"translation\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"car_translation\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"car_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"translation\\\",\\\"languages_table\\\":\\\"languages\\\",\\\"languages_name_column\\\":\\\"name\\\",\\\"languages_code_column\\\":\\\"code\\\",\\\"default_language_id\\\":\\\"ru\\\",\\\"left_column_name\\\":\\\"language_code\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"translation\\\",\\\"languages_table\\\":\\\"languages\\\",\\\"languages_name_column\\\":\\\"name\\\",\\\"languages_code_column\\\":\\\"code\\\",\\\"default_language_id\\\":\\\"ru\\\",\\\"left_column_name\\\":\\\"language_code\\\"}\",\"related_table\":\"car_translation\",\"junction_key_right\":\"car_id\",\"relationship_type\":\"ONETOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"translation\",\"sort\":5,\"required\":false,\"hidden_input\":false,\"junction_table\":null,\"junction_key_left\":null,\"id\":\"37\"}', NULL, NULL, 1, '2018-05-07 08:26:21', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(52, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"350000\",\"language_code\":\"ru\"}', '{\"language_code\":\"ru\",\"price\":\"350000\",\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 08:28:17', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(53, 'ENTRY', 'ADD', '1', 'car_translation', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"car_id\":\"1\"}', '[]', 1, 'car', 1, '2018-05-07 08:28:17', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(54, 'ENTRY', 'UPDATE', '1', 'car', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada Kalina Sport\",\"price\":\"450000\",\"language_code\":\"ru-test\"}', '{\"language_code\":\"ru-test\",\"price\":\"450000\",\"id\":\"1\"}', NULL, NULL, 1, '2018-05-07 08:28:35', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(55, 'ENTRY', 'UPDATE', '1', 'car_translation', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"car_id\":\"1\"}', '{\"id\":1,\"car_id\":\"1\"}', 1, 'car', 1, '2018-05-07 08:28:35', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(56, 'ENTRY', 'ADD', '2', 'car_translation', 2, 1, '{\"id\":\"2\",\"status\":\"2\",\"sort\":null,\"car_id\":\"1\"}', '[]', 1, 'car', 1, '2018-05-07 08:28:35', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(57, 'ENTRY', 'ADD', '3', 'car_translation', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"car_id\":\"1\"}', '[]', 1, 'car', 1, '2018-05-07 08:28:35', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(58, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 38, 1, '{\"id\":\"38\",\"table_name\":\"languages\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"hidden_input\":false,\"id\":\"38\"}', NULL, NULL, 1, '2018-05-07 08:39:29', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(59, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 38, 1, '{\"id\":\"38\",\"table_name\":\"languages\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"required\":false,\"id\":\"38\"}', NULL, NULL, 1, '2018-05-07 08:39:38', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(60, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 41, 1, '{\"id\":\"41\",\"table_name\":\"languages\",\"column_name\":\"code\",\"data_type\":\"VARCHAR\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"primary_key\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"primary_key\\\"}\",\"required\":false,\"ui\":\"primary_key\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"41\"}', NULL, NULL, 1, '2018-05-07 08:40:10', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(61, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 41, 1, '{\"id\":\"41\",\"table_name\":\"languages\",\"column_name\":\"code\",\"data_type\":\"VARCHAR\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"primary_key\\\"}\"}', '{\"required\":true,\"id\":\"41\"}', NULL, NULL, 1, '2018-05-07 08:40:22', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(62, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 44, 1, '{\"id\":\"44\",\"table_name\":\"car\",\"column_name\":\"articles_translations\",\"data_type\":\"ALIAS\",\"ui\":\"translation\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"car_translation\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"car_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"translation\\\",\\\"languages_table\\\":\\\"languages\\\",\\\"languages_name_column\\\":\\\"name\\\",\\\"languages_code_column\\\":\\\"code\\\",\\\"default_language_id\\\":\\\"ru\\\",\\\"left_column_name\\\":\\\"language_code\\\"}\"}', '{\"sort\":7,\"options\":\"{\\\"id\\\":\\\"translation\\\",\\\"languages_table\\\":\\\"languages\\\",\\\"languages_name_column\\\":\\\"name\\\",\\\"languages_code_column\\\":\\\"code\\\",\\\"default_language_id\\\":\\\"ru\\\",\\\"left_column_name\\\":\\\"language_code\\\"}\",\"required\":false,\"ui\":\"translation\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"car_translation\",\"junction_table\":null,\"junction_key_right\":\"car_id\",\"junction_key_left\":null,\"data_type\":\"ALIAS\",\"id\":\"44\"}', NULL, NULL, 1, '2018-05-07 08:49:12', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(63, 'ENTRY', 'DELETE', '1', 'car_translation', 1, 1, '{\"id\":\"1\",\"status\":\"0\",\"sort\":null,\"car_id\":\"1\",\"name\":null,\"price\":null,\"language_code\":null}', '{\"status\":0,\"id\":1}', NULL, NULL, 1, '2018-05-07 08:49:34', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(64, 'ENTRY', 'DELETE', '2', 'car_translation', 2, 1, '{\"id\":\"2\",\"status\":\"0\",\"sort\":null,\"car_id\":\"1\",\"name\":null,\"price\":null,\"language_code\":null}', '{\"status\":0,\"id\":2}', NULL, NULL, 1, '2018-05-07 08:49:34', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(65, 'ENTRY', 'DELETE', '3', 'car_translation', 3, 1, '{\"id\":\"3\",\"status\":\"0\",\"sort\":null,\"car_id\":\"1\",\"name\":null,\"price\":null,\"language_code\":null}', '{\"status\":0,\"id\":3}', NULL, NULL, 1, '2018-05-07 08:49:34', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(66, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 9, 1, '{\"id\":\"9\",\"table_name\":\"car\",\"column_name\":\"price\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"9\"}', NULL, NULL, 1, '2018-05-07 09:02:04', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(67, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 8, 1, '{\"id\":\"8\",\"table_name\":\"car\",\"column_name\":\"name\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"8\"}', NULL, NULL, 1, '2018-05-07 09:02:05', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(68, 'ENTRY', 'ADD', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"2\",\"sort\":null,\"name\":null,\"price\":null}', '[]', NULL, NULL, 1, '2018-05-07 09:04:02', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(69, 'ENTRY', 'ADD', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\"}', '[]', 4, 'car', 1, '2018-05-07 09:04:02', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(70, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"status\":1,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-07 09:04:48', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(71, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-07 09:04:48', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(72, 'ENTRY', 'ADD', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1500000\",\"language_code\":\"ru-test\"}', '[]', 4, 'car', 1, '2018-05-07 09:04:48', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(73, 'ENTRY', 'ADD', '1', 'directus_users', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"first_name\":\"\",\"last_name\":\"\",\"email\":\"test@test.ru\",\"password\":\"$2y$12$IorVPmUBwiTicPabKp3NxOtdAXv0CI5xn8HvFiiB36LzUEQg5Srz.\",\"salt\":\"h9TbwCOSvrw7xHml\",\"token\":null,\"access_token\":\"\",\"reset_token\":\"\",\"reset_expiration\":\"2018-05-07 14:13:26\",\"position\":\"\",\"email_messages\":\"1\",\"last_login\":\"2018-05-07 14:13:26\",\"last_access\":\"2018-05-07 14:13:26\",\"last_page\":\"\",\"ip\":\"\",\"group\":\"1\",\"avatar\":\"\\/\\/www.gravatar.com\\/avatar\\/cbc4c5829ca103f23a20b31dbf953d05?s=200&d=identicon&r=g\",\"avatar_file_id\":null,\"location\":null,\"phone\":null,\"address\":null,\"city\":null,\"state\":null,\"country\":null,\"zip\":null,\"language\":\"en\",\"timezone\":\"America\\/New_York\",\"invite_token\":null,\"invite_date\":null,\"invite_sender\":null,\"invite_accepted\":null}', '[]', NULL, NULL, 1, '2018-05-07 09:13:30', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(74, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 2, NULL, NULL, NULL, NULL, 0, '2018-05-07 09:14:04', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(75, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"2\",\"sort\":null,\"name\":null,\"price\":null}', '{\"status\":2,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-07 09:15:06', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(76, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"status\":1,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-07 09:15:18', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(77, 'ENTRY', 'UPDATE', '1', 'languages', 0, 1, '{\"status\":\"1\",\"sort\":null,\"code\":\"en\",\"name\":\"English\"}', '{\"code\":\"en\",\"status\":\"1\",\"name\":\"English\"}', NULL, NULL, 1, '2018-05-07 09:21:15', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(78, 'ENTRY', 'UPDATE', '1', 'languages', 0, 1, '{\"status\":\"1\",\"sort\":null,\"code\":\"ru\",\"name\":\"ru\"}', '{\"status\":1,\"code\":\"ru\"}', NULL, NULL, 1, '2018-05-07 09:21:26', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(79, 'ENTRY', 'UPDATE', '1', 'languages', 0, 1, '{\"status\":\"1\",\"sort\":null,\"code\":\"ru-test\",\"name\":\"ru test\"}', '{\"status\":1,\"code\":\"ru-test\"}', NULL, NULL, 1, '2018-05-07 09:21:29', '77.222.113.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(80, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 5, 2, '{\"id\":\"5\",\"table_name\":\"car\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"hidden_input\":false,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 09:23:04', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(81, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 5, 2, '{\"id\":\"5\",\"table_name\":\"car\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"hidden_input\":true,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 09:33:31', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(82, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 8, 2, '{\"id\":\"8\",\"table_name\":\"car\",\"column_name\":\"name\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":false,\"id\":\"8\"}', NULL, NULL, 1, '2018-05-07 09:33:33', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(83, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 8, 2, '{\"id\":\"8\",\"table_name\":\"car\",\"column_name\":\"name\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"8\"}', NULL, NULL, 1, '2018-05-07 09:33:45', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(84, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 8, 2, '{\"id\":\"8\",\"table_name\":\"car\",\"column_name\":\"name\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":false,\"id\":\"8\"}', NULL, NULL, 1, '2018-05-07 09:34:26', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(85, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 5, 2, '{\"id\":\"5\",\"table_name\":\"car\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"hidden_input\":false,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 09:34:28', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(86, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 9, 2, '{\"id\":\"9\",\"table_name\":\"car\",\"column_name\":\"price\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":false,\"id\":\"9\"}', NULL, NULL, 1, '2018-05-07 09:34:29', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(87, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 8, 2, '{\"id\":\"8\",\"table_name\":\"car\",\"column_name\":\"name\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"8\"}', NULL, NULL, 1, '2018-05-07 09:35:19', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(88, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 9, 2, '{\"id\":\"9\",\"table_name\":\"car\",\"column_name\":\"price\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"9\"}', NULL, NULL, 1, '2018-05-07 09:35:20', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(89, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 44, 2, '{\"id\":\"44\",\"table_name\":\"car\",\"column_name\":\"articles_translations\",\"data_type\":\"ALIAS\",\"ui\":\"translation\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"car_translation\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"car_id\",\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"translation\\\",\\\"languages_table\\\":\\\"languages\\\",\\\"languages_name_column\\\":\\\"name\\\",\\\"languages_code_column\\\":\\\"code\\\",\\\"default_language_id\\\":\\\"ru\\\",\\\"left_column_name\\\":\\\"language_code\\\"}\"}', '{\"hidden_input\":true,\"id\":\"44\"}', NULL, NULL, 1, '2018-05-07 09:35:20', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(90, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 5, 2, '{\"id\":\"5\",\"table_name\":\"car\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"hidden_input\":true,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 09:35:21', '149.255.6.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(91, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-07 11:47:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(92, 'ENTRY', 'ADD', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '[]', NULL, NULL, 1, '2018-05-07 11:58:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(93, 'ENTRY', 'ADD', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\"}', '[]', 5, 'car', 1, '2018-05-07 11:58:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(94, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 11:59:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(95, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 11:59:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(96, 'ENTRY', 'ADD', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\"}', '[]', 5, 'car', 1, '2018-05-07 11:59:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(97, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 48, 1, '{\"id\":\"48\",\"table_name\":\"car_translation\",\"column_name\":\"approved\",\"data_type\":\"TINYTEXT\",\"ui\":\"checkboxes\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"checkboxes\\\",\\\"options\\\":\\\"{\\\\n\\\\t\\\\\\\"true\\\\\\\": \\\\\\\"\\u041e\\u0434\\u043e\\u0431\\u0440\\u0435\\u043d\\u043e\\\\\\\"\\\\n}\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"checkboxes\\\",\\\"options\\\":\\\"{\\\\n\\\\t\\\\\\\"true\\\\\\\": \\\\\\\"\\u041e\\u0434\\u043e\\u0431\\u0440\\u0435\\u043d\\u043e\\\\\\\"\\\\n}\\\"}\",\"data_type\":\"TINYTEXT\",\"ui\":\"checkboxes\",\"sort\":7,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"48\"}', NULL, NULL, 1, '2018-05-07 12:34:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(98, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 49, 1, '{\"id\":\"49\",\"table_name\":\"car_translation\",\"column_name\":\"approved\",\"data_type\":\"VARCHAR\",\"ui\":\"checkboxes\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"checkboxes\\\",\\\"options\\\":\\\"{\\\\n\\\\t\\\\\\\"true\\\\\\\": \\\\\\\"\\u041e\\u0434\\u043e\\u0431\\u0440\\u0435\\u043d\\u043e\\\\\\\"\\\\n}\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"checkboxes\\\",\\\"options\\\":\\\"{\\\\n\\\\t\\\\\\\"true\\\\\\\": \\\\\\\"\\u041e\\u0434\\u043e\\u0431\\u0440\\u0435\\u043d\\u043e\\\\\\\"\\\\n}\\\"}\",\"data_type\":\"VARCHAR\",\"ui\":\"checkboxes\",\"sort\":7,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"49\"}', NULL, NULL, 1, '2018-05-07 12:36:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(99, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 12:55:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(100, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":null}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 12:55:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(101, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"approved\":\",true,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 12:55:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(102, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 12:56:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');
INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(103, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"approved\":\",true,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 12:56:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(104, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 12:56:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(105, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 12:57:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(106, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 12:57:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(107, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 12:57:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(108, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1500000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"approved\":\",true,\",\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 13:03:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(109, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":\"6\"}', NULL, NULL, 1, '2018-05-07 13:34:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(110, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"approved\":\",true,\",\"id\":\"6\"}', NULL, NULL, 1, '2018-05-07 13:34:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(111, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 13:34:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(112, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:34:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(113, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:34:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(114, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 13:36:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(115, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:36:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(116, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:36:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(117, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 13:36:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(118, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"approved\":\",true,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:36:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(119, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:36:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(120, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 13:36:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(121, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:36:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(122, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:36:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(123, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-07 13:37:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(124, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:37:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(125, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-07 13:37:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(126, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-10 05:11:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(127, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-10 06:14:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(128, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 06:53:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(129, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota123\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"Toyota123\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 06:53:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(130, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 06:53:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(131, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 07:08:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(132, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota1233333\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"Toyota1233333\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:08:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(133, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:08:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(134, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 07:22:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(135, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Toyota13\",\"price\":\"900000\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"Toyota13\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:22:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(136, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:22:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(137, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 07:35:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(138, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar\",\"price\":\"20\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"name\":\"TestCar\",\"price\":\"20\",\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:34:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(139, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 07:41:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(140, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar2\",\"price\":\"202\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar2\",\"price\":\"202\",\"approved\":\",true,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:41:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(141, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:41:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(142, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 07:45:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(143, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar18\",\"price\":\"18\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar18\",\"price\":\"18\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:45:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(144, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:45:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(145, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 07:46:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(146, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar180\",\"price\":\"180\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar180\",\"price\":\"180\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:46:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(147, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 07:46:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(148, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-10 09:28:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(149, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 09:43:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(150, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar1801\",\"price\":\"180\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar1801\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 09:43:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(151, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 09:43:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(152, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:11:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(153, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar180122\",\"price\":\"180\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar180122\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:11:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(154, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:11:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(155, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:12:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(156, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar180122\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"price\":\"180132\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:12:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(157, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:12:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(158, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:13:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(159, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar18012\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar18012\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:13:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(160, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:13:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(161, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:13:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(162, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar18012123\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar18012123\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:13:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(163, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:13:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(164, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:17:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(165, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar180121232\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar180121232\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:17:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(166, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:17:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(167, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:18:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(168, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:18:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(169, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:18:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(170, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:18:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(171, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar2\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar2\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:18:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(172, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:18:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(173, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:20:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(174, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar22\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar22\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:20:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(175, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:20:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(176, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:23:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(177, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar22\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:23:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(178, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:23:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(179, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:23:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(180, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar222\",\"price\":\"180132\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar222\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:23:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(181, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:23:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(182, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:23:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(183, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar222\",\"price\":\"180132123\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"price\":\"180132123\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:23:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(184, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:23:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(185, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:24:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(186, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar2223\",\"price\":\"180132123\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar2223\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:24:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(187, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:24:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(188, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:24:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(189, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar22234\",\"price\":\"180132123\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar22234\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:24:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(190, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:24:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(191, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:27:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(192, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar22234000\",\"price\":\"180132123\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar22234000\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:27:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(193, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:27:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(194, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:28:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(195, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"TestCar222340007\",\"price\":\"180132123\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"TestCar222340007\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:28:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(196, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:28:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(197, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:30:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(198, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test\",\"price\":\"180132123\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"Test\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:30:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(199, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:30:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(200, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:31:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(201, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test\",\"price\":\"12\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"price\":\"12\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:31:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(202, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:31:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(203, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:32:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(204, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test12\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"Test12\",\"price\":\"1232\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:32:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(205, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:32:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(206, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:34:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(207, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test123\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"Test123\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:34:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(208, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:34:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(209, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:36:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(210, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",true,\"}', '{\"name\":\"Test113\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:36:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(211, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:36:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(212, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:39:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(213, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:39:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(214, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:39:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(215, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:39:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(216, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:39:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(217, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04301\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:39:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(218, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:39:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(219, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:39:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(220, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:39:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(221, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:40:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(222, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:40:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(223, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:40:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(224, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(225, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(226, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(227, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:41:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(228, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:41:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(229, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:41:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(230, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:44:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(231, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"approved\":\",,\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:44:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');
INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(232, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043023\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043023\",\"approved\":\",,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:44:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(233, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:45:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(234, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:45:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(235, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430234\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430234\",\"approved\":\",true,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:45:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(236, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:46:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(237, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:46:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(238, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302345\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302345\",\"approved\":\",,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:46:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(239, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 11:46:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(240, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"Test113\",\"price\":\"1232\",\"language_code\":\"ru\",\"approved\":\",,\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:46:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(241, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\",\"approved\":\",true,\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"approved\":\",true,\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 11:46:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(242, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 50, 1, '{\"id\":\"50\",\"table_name\":\"car\",\"column_name\":\"approved_main\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"8\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u0442\\u0435\\u0441\\u0442\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u0442\\u0435\\u0441\\u0442\\\"}\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"sort\":8,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"50\"}', NULL, NULL, 1, '2018-05-10 11:58:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(243, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 50, 1, '{\"id\":\"50\",\"table_name\":\"car\",\"column_name\":\"approved_main\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"8\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u0442\\u0435\\u0441\\u0442\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u0442\\u0435\\u0441\\u0442\\\"}\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"sort\":8,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"50\"}', NULL, NULL, 1, '2018-05-10 11:58:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(244, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 51, 1, '{\"id\":\"51\",\"table_name\":\"car\",\"column_name\":\"approved_test\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"9\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\\"}\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"sort\":9,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"51\"}', NULL, NULL, 1, '2018-05-10 11:58:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(245, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 51, 1, '{\"id\":\"51\",\"table_name\":\"car\",\"column_name\":\"approved_test\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"9\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"toggle\\\",\\\"show_as_checkbox\\\":1,\\\"label\\\":\\\"\\u041f\\u0435\\u0440\\u0435\\u043d\\u0435\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\\"}\",\"data_type\":\"TINYINT\",\"ui\":\"toggle\",\"sort\":9,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"51\"}', NULL, NULL, 1, '2018-05-10 11:58:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(246, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"1\",\"approved_test\":null}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:02:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(247, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"test\",\"price\":\"1\",\"language_code\":\"ru\"}', '{\"name\":\"test\",\"price\":\"1\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:02:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(248, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:02:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(249, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"1\"}', '{\"approved_main\":0,\"approved_test\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:03:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(250, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"test2\",\"price\":\"1\",\"language_code\":\"ru\"}', '{\"name\":\"test2\",\"price\":1,\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:03:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(251, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru-test\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:03:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(252, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:09:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(253, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_test\":0,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:09:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(254, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":850000,\"id\":6}', NULL, NULL, 1, '2018-05-10 12:09:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(255, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:09:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(256, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_test\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:09:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(257, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:09:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(258, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:09:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(259, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"850000\",\"language_code\":\"ru\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:09:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(260, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"700000\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:09:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(261, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":700000,\"id\":6}', NULL, NULL, 1, '2018-05-10 12:09:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(262, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:09:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(263, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_test\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:09:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(264, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":700000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:10:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(265, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:10:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(266, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:10:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(267, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04303\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"price\":700000,\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04303\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:10:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(268, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":700000,\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:10:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(269, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04303\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04303\",\"price\":700000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:10:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(270, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:10:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(271, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:10:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(272, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:11:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(273, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:11:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(274, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"price\":700000,\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:11:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(275, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043035\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043035\",\"price\":700000,\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:11:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(276, 'ENTRY', 'ADD', '8', 'car_translation', 8, 1, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"5\",\"name\":null,\"price\":null,\"language_code\":\"en\"}', '[]', 5, 'car', 1, '2018-05-10 12:11:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(277, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":700000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:11:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(278, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043035\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043035\",\"price\":700000,\"id\":6}', NULL, NULL, 1, '2018-05-10 12:11:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(279, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:11:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(280, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"approved_test\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:11:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(281, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":700000,\"id\":6}', NULL, NULL, 1, '2018-05-10 12:11:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(282, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:11:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(283, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_test\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:11:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(284, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":700000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:23:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(285, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:23:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(286, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:23:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(287, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 2, NULL, NULL, NULL, NULL, 0, '2018-05-10 12:39:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(288, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":700000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:40:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(289, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(290, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(291, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 2, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(292, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 2, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u043034\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(293, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 2, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"5\",\"name\":null,\"price\":null,\"language_code\":\"en\"}', '{\"id\":8,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:40:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(294, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":700000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:42:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(295, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:42:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(296, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:42:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(297, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:42:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(298, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:42:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(299, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 2, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:42:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(300, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 2, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"500000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"500000\",\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:42:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(301, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 2, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"5\",\"name\":null,\"price\":null,\"language_code\":\"en\"}', '{\"id\":8,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:42:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(302, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"500000\",\"language_code\":\"ru\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":500000,\"id\":6}', NULL, NULL, 1, '2018-05-10 12:42:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(303, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:42:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(304, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_test\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:42:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(305, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"500000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":500000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:42:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(306, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:42:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(307, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:42:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(308, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 2, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"700000\",\"language_code\":\"ru\"}', '{\"price\":\"700000\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:42:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(309, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 2, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"500000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":500000,\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:42:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(310, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 2, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"5\",\"name\":null,\"price\":null,\"language_code\":\"en\"}', '{\"id\":8,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:42:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(311, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"700000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":700000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:43:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(312, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:43:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(313, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:43:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(314, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 2, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"40000\",\"language_code\":\"ru\"}', '{\"price\":\"40000\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:43:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(315, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 2, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"500000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":500000,\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:43:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(316, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 2, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"5\",\"name\":null,\"price\":null,\"language_code\":\"en\"}', '{\"id\":8,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:43:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(317, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"40000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":40000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:44:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(318, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:44:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(319, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:44:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(320, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 2, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"40000\",\"language_code\":\"ru\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"id\":6,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:44:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(321, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 2, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u04302\",\"price\":\"40000\",\"language_code\":\"ru-test\"}', '{\"id\":7,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:44:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(322, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 2, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"5\",\"name\":null,\"price\":null,\"language_code\":\"en\"}', '{\"id\":8,\"car_id\":\"5\"}', 5, 'car', 1, '2018-05-10 12:44:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(323, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"5\",\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":\"40000\",\"language_code\":\"ru-test\"}', '{\"name\":\"\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430\",\"price\":40000,\"id\":7}', NULL, NULL, 1, '2018-05-10 12:54:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(324, 'ENTRY', 'UPDATE', '5', 'car', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":0,\"approved_test\":0,\"id\":5}', NULL, NULL, 1, '2018-05-10 12:54:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(325, 'ENTRY', 'UPDATE', '5', 'car', 5, 2, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null,\"approved_main\":\"0\",\"approved_test\":\"0\"}', '{\"approved_main\":1,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-10 12:54:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(326, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-10 13:03:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_bookmarks`
--

CREATE TABLE `directus_bookmarks` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_bookmarks`
--

INSERT INTO `directus_bookmarks` (`id`, `user`, `title`, `url`, `section`) VALUES
(1, 1, 'Activity', 'activity', 'other'),
(2, 1, 'Files', 'files', 'other'),
(3, 1, 'Messages', 'messages', 'other'),
(4, 1, 'Users', 'users', 'other'),
(5, 2, 'Activity', 'activity', 'other'),
(6, 2, 'Files', 'files', 'other'),
(7, 2, 'Messages', 'messages', 'other'),
(8, 2, 'Users', 'users', 'other');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_columns`
--

CREATE TABLE `directus_columns` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `data_type` varchar(64) DEFAULT NULL,
  `ui` varchar(64) DEFAULT NULL,
  `relationship_type` enum('MANYTOONE','MANYTOMANY','ONETOMANY') DEFAULT NULL,
  `related_table` varchar(64) DEFAULT NULL,
  `junction_table` varchar(64) DEFAULT NULL,
  `junction_key_left` varchar(64) DEFAULT NULL,
  `junction_key_right` varchar(64) DEFAULT NULL,
  `hidden_input` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `options` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_columns`
--

INSERT INTO `directus_columns` (`id`, `table_name`, `column_name`, `data_type`, `ui`, `relationship_type`, `related_table`, `junction_table`, `junction_key_left`, `junction_key_right`, `hidden_input`, `required`, `sort`, `comment`, `options`) VALUES
(1, 'directus_users', 'group', NULL, 'many_to_one', 'MANYTOONE', 'directus_groups', NULL, NULL, 'group_id', 0, 0, NULL, '', NULL),
(2, 'directus_users', 'avatar_file_id', 'INT', 'single_file', 'MANYTOONE', 'directus_files', NULL, NULL, 'avatar_file_id', 0, 0, NULL, '', NULL),
(3, 'directus_groups', 'users', 'ALIAS', 'directus_users', 'ONETOMANY', 'directus_users', NULL, NULL, 'group', 0, 0, NULL, NULL, NULL),
(4, 'directus_groups', 'permissions', 'ALIAS', 'directus_permissions', 'ONETOMANY', 'directus_privileges', NULL, NULL, 'group_id', 0, 0, NULL, NULL, NULL),
(5, 'car', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(6, 'car', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(7, 'car', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(8, 'car', 'name', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 1, 0, 5, '', NULL),
(9, 'car', 'price', 'INT', 'numeric', NULL, NULL, NULL, NULL, NULL, 1, 0, 6, '', NULL),
(10, 'discount', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(11, 'discount', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(12, 'discount', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(13, 'discount', 'name', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(14, 'discount', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', NULL),
(15, 'discount', 'value', 'INT', 'numeric', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, '', NULL),
(16, 'discount', 'depend', 'INT', 'many_to_one', 'MANYTOONE', 'discount', NULL, NULL, 'depend', 0, 0, 6, '', '{\"id\":\"many_to_one\",\"visible_column\":\"name\",\"visible_column_template\":\"{{name}}\"}'),
(17, 'discount', 'is_percent', 'TINYINT', 'toggle', NULL, NULL, NULL, NULL, NULL, 0, 0, 7, '', NULL),
(18, 'discount', 'individual', 'TINYINT', 'toggle', NULL, NULL, NULL, NULL, NULL, 0, 0, 8, '', NULL),
(22, 'dealer', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(23, 'dealer', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(24, 'dealer', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(25, 'dealer', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', '{\"id\":\"text_input\",\"size\":\"large\"}'),
(26, 'dealer', 'position', 'VARCHAR', 'map', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', '{\"id\":\"map\",\"google_api_key\":\"AIzaSyBUgfWStBv5iVs2k6brg9x1vTdbpzNvUfo\",\"show_lat_lng\":1}'),
(33, 'car_translation', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(34, 'car_translation', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(36, 'car_translation', 'car_id', 'INT', 'numeric', NULL, NULL, NULL, NULL, NULL, 0, 0, 6, '', NULL),
(39, 'languages', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(40, 'languages', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(41, 'languages', 'code', 'VARCHAR', 'primary_key', NULL, NULL, NULL, NULL, NULL, 0, 1, 3, '', NULL),
(42, 'languages', 'name', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', NULL),
(44, 'car', 'articles_translations', 'ALIAS', 'translation', 'ONETOMANY', 'car_translation', NULL, NULL, 'car_id', 1, 0, 7, '', '{\"id\":\"translation\",\"languages_table\":\"languages\",\"languages_name_column\":\"name\",\"languages_code_column\":\"code\",\"default_language_id\":\"ru\",\"left_column_name\":\"language_code\"}'),
(45, 'car_translation', 'name', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(46, 'car_translation', 'price', 'INT', 'numeric', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', NULL),
(47, 'car_translation', 'language_code', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, '', NULL),
(50, 'car', 'approved_main', 'TINYINT', 'toggle', NULL, NULL, NULL, NULL, NULL, 0, 0, 8, '', '{\"id\":\"toggle\",\"show_as_checkbox\":1,\"label\":\"Перенести на тест\"}'),
(51, 'car', 'approved_test', 'TINYINT', 'toggle', NULL, NULL, NULL, NULL, NULL, 0, 0, 9, '', '{\"id\":\"toggle\",\"show_as_checkbox\":1,\"label\":\"Перенести на прод\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_files`
--

CREATE TABLE `directus_files` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `location` varchar(200) DEFAULT NULL,
  `caption` text,
  `type` varchar(255) DEFAULT '',
  `charset` varchar(50) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `width` int(11) UNSIGNED DEFAULT '0',
  `height` int(11) UNSIGNED DEFAULT '0',
  `size` int(11) UNSIGNED DEFAULT '0',
  `embed_id` varchar(200) DEFAULT NULL,
  `user` int(11) UNSIGNED NOT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `storage_adapter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_files`
--

INSERT INTO `directus_files` (`id`, `status`, `name`, `title`, `location`, `caption`, `type`, `charset`, `tags`, `width`, `height`, `size`, `embed_id`, `user`, `date_uploaded`, `storage_adapter`) VALUES
(1, 1, '00000000001.jpg', 'Mountain Range', 'Earth', 'A gorgeous view of this wooded mountain range', 'image/jpeg', 'binary', 'trees,rocks,nature,mountains,forest', 1800, 1200, 602058, NULL, 1, '2018-05-03 05:57:39', 'local');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_groups`
--

CREATE TABLE `directus_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `restrict_to_ip_whitelist` text,
  `nav_override` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_groups`
--

INSERT INTO `directus_groups` (`id`, `name`, `description`, `restrict_to_ip_whitelist`, `nav_override`) VALUES
(1, 'Administrator', 'Admins have access to all managed data within the system by default', NULL, NULL),
(2, 'Public', 'This sets the data that is publicly available through the API without a token', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `directus_messages`
--

CREATE TABLE `directus_messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `from` int(11) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachment` varchar(512) DEFAULT NULL,
  `response_to` int(11) UNSIGNED DEFAULT NULL,
  `comment_metadata` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_messages`
--

INSERT INTO `directus_messages` (`id`, `from`, `subject`, `message`, `datetime`, `attachment`, `response_to`, `comment_metadata`) VALUES
(1, 1, 'Car: Test project', 'Test comment', '2018-05-07 02:02:13', NULL, NULL, 'car:1');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_messages_recipients`
--

CREATE TABLE `directus_messages_recipients` (
  `id` int(11) UNSIGNED NOT NULL,
  `message_id` int(11) UNSIGNED NOT NULL,
  `recipient` int(11) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL,
  `group` int(11) UNSIGNED DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `directus_preferences`
--

CREATE TABLE `directus_preferences` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `table_name` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `columns_visible` varchar(300) DEFAULT NULL,
  `sort` varchar(64) DEFAULT 'id',
  `sort_order` varchar(5) DEFAULT 'ASC',
  `status` varchar(64) DEFAULT '3',
  `search_string` text,
  `list_view_options` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_preferences`
--

INSERT INTO `directus_preferences` (`id`, `user`, `table_name`, `title`, `columns_visible`, `sort`, `sort_order`, `status`, `search_string`, `list_view_options`) VALUES
(1, 1, 'directus_activity', NULL, 'type,action,identifier,table_name,row_id,user,data', 'id', 'ASC', '1,2', NULL, NULL),
(2, 1, 'directus_bookmarks', NULL, 'user,title,url,section', 'id', 'ASC', '1,2', NULL, NULL),
(3, 1, 'directus_files', NULL, 'name,title,location,caption,type,charset,tags', 'date_uploaded', 'DESC', '1,2', NULL, NULL),
(4, 1, 'directus_groups', NULL, 'name,description,restrict_to_ip_whitelist,nav_override,users,permissions', 'id', 'ASC', '1,2', NULL, NULL),
(5, 1, 'directus_messages', NULL, 'from,subject,message,datetime,attachment,response_to,comment_metadata', 'id', 'ASC', '1,2', NULL, NULL),
(6, 1, 'directus_messages_recipients', NULL, 'message_id,recipient,read,group,archived', 'id', 'ASC', '1,2', NULL, NULL),
(7, 1, 'directus_schema_migrations', NULL, 'version', 'id', 'ASC', '1,2', NULL, NULL),
(8, 1, 'directus_users', NULL, 'first_name,last_name,email,password,salt,token,access_token', 'id', 'ASC', '1,2', NULL, NULL),
(9, 1, 'car', NULL, 'articles_translations', 'id', 'ASC', '1,2', '', '{\"spacing\":\"cozy\",\"item_numbers\":false,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"last_updated\":true,\"currentView\":\"table\",\"table\":{\"item_numbers\":true,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"spacing\":\"compact\",\"last_updated\":false}}'),
(10, 1, 'discount', NULL, 'name,title,value,depend,is_percent,individual', 'id', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"item_numbers\":true,\"comments_count\":true,\"revisions_count\":true,\"show_footer\":true,\"last_updated\":false,\"currentView\":\"table\",\"table\":{\"item_numbers\":false,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"spacing\":\"compact\"}}'),
(12, 1, 'dealer', NULL, 'title,position', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"compact\",\"item_numbers\":false,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"last_updated\":false,\"currentView\":\"table\",\"table\":{\"item_numbers\":true,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"spacing\":\"comfortable\",\"last_updated\":false}}'),
(15, 1, 'car_translation', NULL, 'car_id', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"item_numbers\":false,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"last_updated\":false,\"currentView\":\"table\",\"table\":{\"item_numbers\":false,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"spacing\":\"compact\",\"last_updated\":false}}'),
(16, 1, 'languages', NULL, 'code,name', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"compact\",\"item_numbers\":false,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"last_updated\":false,\"currentView\":\"table\",\"table\":{\"item_numbers\":false,\"comments_count\":false,\"revisions_count\":false,\"show_footer\":false,\"spacing\":\"compact\",\"last_updated\":false}}'),
(17, 2, 'car', NULL, 'name,price,articles_translations', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\",\"item_numbers\":true,\"show_footer\":true,\"revisions_count\":true,\"comments_count\":true,\"last_updated\":true,\"table\":{\"item_numbers\":true,\"show_footer\":true,\"revisions_count\":true,\"comments_count\":true,\"last_updated\":true,\"spacing\":\"compact\"}}'),
(18, 2, 'car_translation', NULL, 'car_id,name,price,language_code', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(19, 2, 'dealer', NULL, 'title,position', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(20, 2, 'directus_activity', NULL, 'type,action,identifier,table_name,row_id,user,data', 'id', 'ASC', '1,2', NULL, NULL),
(21, 2, 'directus_bookmarks', NULL, 'user,title,url,section', 'id', 'ASC', '1,2', NULL, NULL),
(22, 2, 'directus_files', NULL, 'name,title,location,caption,type,charset,tags', 'id', 'DESC', '1,2', NULL, NULL),
(23, 2, 'directus_groups', NULL, 'name,description,restrict_to_ip_whitelist,nav_override,users,permissions', 'id', 'ASC', '1,2', NULL, NULL),
(24, 2, 'directus_messages', NULL, 'from,subject,message,datetime,attachment,response_to,comment_metadata', 'id', 'ASC', '1,2', NULL, NULL),
(25, 2, 'directus_messages_recipients', NULL, 'message_id,recipient,read,group,archived', 'id', 'ASC', '1,2', NULL, NULL),
(26, 2, 'directus_schema_migrations', NULL, 'version', 'id', 'ASC', '1,2', NULL, NULL),
(27, 2, 'directus_users', NULL, 'first_name,last_name,email,password,salt,token,access_token', 'id', 'ASC', '1,2', NULL, NULL),
(28, 2, 'discount', NULL, 'name,title,value,depend,is_percent,individual', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(29, 2, 'languages', NULL, 'name', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_privileges`
--

CREATE TABLE `directus_privileges` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `allow_view` tinyint(1) NOT NULL DEFAULT '0',
  `allow_add` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delete` tinyint(1) NOT NULL DEFAULT '0',
  `allow_alter` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) UNSIGNED NOT NULL,
  `read_field_blacklist` varchar(1000) DEFAULT NULL,
  `write_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `nav_listed` tinyint(1) NOT NULL DEFAULT '1',
  `status_id` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_privileges`
--

INSERT INTO `directus_privileges` (`id`, `table_name`, `allow_view`, `allow_add`, `allow_edit`, `allow_delete`, `allow_alter`, `group_id`, `read_field_blacklist`, `write_field_blacklist`, `nav_listed`, `status_id`) VALUES
(1, 'directus_activity', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(2, 'directus_columns', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(3, 'directus_groups', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(4, 'directus_files', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(5, 'directus_messages', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(6, 'directus_preferences', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(7, 'directus_privileges', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(8, 'directus_settings', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(9, 'directus_tables', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(10, 'directus_users', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(11, 'directus_messages_recipients', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(12, 'directus_bookmarks', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(13, 'car', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(14, 'discount', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(15, 'car', 2, 1, 2, 2, 1, 2, NULL, NULL, 1, NULL),
(16, 'discount', 2, 1, 2, 2, 1, 2, NULL, NULL, 1, NULL),
(18, 'dealer', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(21, 'car_translation', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(22, 'languages', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `directus_schema_migrations`
--

CREATE TABLE `directus_schema_migrations` (
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `directus_schema_migrations`
--

INSERT INTO `directus_schema_migrations` (`version`) VALUES
('20150203221946'),
('20150203235646'),
('20150204002341'),
('20150204003426'),
('20150204015251'),
('20150204021255'),
('20150204022237'),
('20150204023325'),
('20150204024327'),
('20150204031412'),
('20150204041007'),
('20150204042725');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `collection`, `name`, `value`) VALUES
(1, 'global', 'cms_user_auto_sign_out', '60'),
(2, 'global', 'project_name', 'Test project'),
(3, 'global', 'project_url', 'http://dir.loc/'),
(4, 'global', 'rows_per_page', '200'),
(5, 'files', 'thumbnail_quality', '100'),
(6, 'files', 'thumbnail_size', '200'),
(7, 'global', 'cms_thumbnail_url', ''),
(8, 'files', 'file_naming', 'file_id'),
(9, 'files', 'thumbnail_crop_enabled', '1'),
(10, 'files', 'youtube_api_key', '');

-- --------------------------------------------------------

--
-- Структура таблицы `directus_tables`
--

CREATE TABLE `directus_tables` (
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_template` varchar(255) DEFAULT '',
  `preview_url` varchar(255) DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '1',
  `footer` tinyint(1) DEFAULT '0',
  `column_groupings` varchar(255) DEFAULT NULL,
  `primary_column` varchar(64) DEFAULT NULL,
  `sort_column` varchar(64) DEFAULT NULL,
  `status_column` varchar(64) DEFAULT NULL,
  `status_mapping` text,
  `user_create_column` varchar(64) DEFAULT NULL,
  `user_update_column` varchar(64) DEFAULT NULL,
  `date_create_column` varchar(64) DEFAULT NULL,
  `date_update_column` varchar(64) DEFAULT NULL,
  `filter_column_blacklist` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_tables`
--

INSERT INTO `directus_tables` (`table_name`, `display_template`, `preview_url`, `hidden`, `single`, `default_status`, `footer`, `column_groupings`, `primary_column`, `sort_column`, `status_column`, `status_mapping`, `user_create_column`, `user_update_column`, `date_create_column`, `date_update_column`, `filter_column_blacklist`) VALUES
('car', '{{name}} - {{id}}', '', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('car_translation', '', '', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('directus_bookmarks', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL),
('directus_files', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL),
('directus_messages_recipients', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'recipient', NULL, NULL, NULL, NULL),
('directus_preferences', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL),
('directus_users', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'id', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `directus_users`
--

CREATE TABLE `directus_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `first_name` varchar(50) DEFAULT '',
  `last_name` varchar(50) DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `salt` varchar(255) DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT '',
  `reset_token` varchar(255) DEFAULT '',
  `reset_expiration` datetime DEFAULT NULL,
  `position` varchar(500) DEFAULT '',
  `email_messages` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `last_page` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `group` int(11) UNSIGNED DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `avatar_file_id` int(11) UNSIGNED DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en',
  `timezone` varchar(32) DEFAULT 'America/New_York',
  `invite_token` varchar(255) DEFAULT NULL,
  `invite_date` datetime DEFAULT NULL,
  `invite_sender` int(11) UNSIGNED DEFAULT NULL,
  `invite_accepted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `directus_users`
--

INSERT INTO `directus_users` (`id`, `status`, `first_name`, `last_name`, `email`, `password`, `salt`, `token`, `access_token`, `reset_token`, `reset_expiration`, `position`, `email_messages`, `last_login`, `last_access`, `last_page`, `ip`, `group`, `avatar`, `avatar_file_id`, `location`, `phone`, `address`, `city`, `state`, `country`, `zip`, `language`, `timezone`, `invite_token`, `invite_date`, `invite_sender`, `invite_accepted`) VALUES
(1, 1, 'Admin', 'User', 'admin@admin.ru', '$2y$12$2ufdhIqgRwQgbkli4QdpUehFjG0i4V9QD3lfau8aRd7zTiHmZg4qC', 'Fr9d8hBTeF90IvZK', 'MhRqktlKi2Wcmsae9UvqgPAzXySldwTM', 'cb27544bc446626dd3e950de7be6686291c86a0b', '', NULL, '', 1, '2018-05-10 13:03:07', '2018-05-10 13:09:38', '{\"path\":\"tables/car/5\",\"route\":\"entry\"}', '127.0.0.1', 1, '//www.gravatar.com/avatar/2e64a65177d9b1008b2b7895e1090c8d?s=200&d=identicon&r=g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 'America/New_York', NULL, NULL, NULL, NULL),
(2, 1, '', '', 'test@test.ru', '$2y$12$IorVPmUBwiTicPabKp3NxOtdAXv0CI5xn8HvFiiB36LzUEQg5Srz.', 'h9TbwCOSvrw7xHml', NULL, NULL, '', '2018-05-07 14:13:26', '', 1, '2018-05-10 12:39:56', '2018-05-10 13:02:37', '{\"path\":\"settings/permissions/1\",\"route\":\"settingsPermissions\"}', '127.0.0.1', 1, '//www.gravatar.com/avatar/cbc4c5829ca103f23a20b31dbf953d05?s=200&d=identicon&r=g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 'America/New_York', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '''''',
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `value` int(11) DEFAULT NULL COMMENT '''''',
  `depend` int(11) DEFAULT NULL,
  `is_percent` tinyint(1) DEFAULT NULL COMMENT '''''',
  `individual` tinyint(1) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `discount`
--

INSERT INTO `discount` (`id`, `status`, `sort`, `name`, `title`, `value`, `depend`, `is_percent`, `individual`) VALUES
(1, 1, NULL, 'skidos1', 'Скидка1', 25000, NULL, NULL, 1),
(2, 1, NULL, 'skidos2', 'Скидка2', 10, NULL, 1, 1),
(3, 1, NULL, 'skidos3', 'Скидка3', 5000, 2, 0, 1),
(4, 1, NULL, 'skidos4', 'Скидка4', 5, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`status`, `sort`, `code`, `name`) VALUES
(1, NULL, 'en', 'English'),
(1, NULL, 'ru', 'ru'),
(1, NULL, 'ru-test', 'ru test');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `car_translation`
--
ALTER TABLE `car_translation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directus_bookmarks`
--
ALTER TABLE `directus_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directus_columns`
--
ALTER TABLE `directus_columns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table-column` (`table_name`,`column_name`);

--
-- Индексы таблицы `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directus_groups`
--
ALTER TABLE `directus_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_name_unique` (`name`);

--
-- Индексы таблицы `directus_messages`
--
ALTER TABLE `directus_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directus_messages_recipients`
--
ALTER TABLE `directus_messages_recipients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directus_preferences`
--
ALTER TABLE `directus_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`,`table_name`,`title`),
  ADD UNIQUE KEY `pref_title_constraint` (`user`,`table_name`,`title`);

--
-- Индексы таблицы `directus_privileges`
--
ALTER TABLE `directus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directus_schema_migrations`
--
ALTER TABLE `directus_schema_migrations`
  ADD UNIQUE KEY `idx_directus_schema_migrations_version` (`version`);

--
-- Индексы таблицы `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique Collection and Name` (`collection`,`name`);

--
-- Индексы таблицы `directus_tables`
--
ALTER TABLE `directus_tables`
  ADD PRIMARY KEY (`table_name`);

--
-- Индексы таблицы `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD UNIQUE KEY `directus_users_token_unique` (`token`);

--
-- Индексы таблицы `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `car_translation`
--
ALTER TABLE `car_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `dealer`
--
ALTER TABLE `dealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT для таблицы `directus_bookmarks`
--
ALTER TABLE `directus_bookmarks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `directus_columns`
--
ALTER TABLE `directus_columns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT для таблицы `directus_files`
--
ALTER TABLE `directus_files`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `directus_groups`
--
ALTER TABLE `directus_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `directus_messages`
--
ALTER TABLE `directus_messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `directus_messages_recipients`
--
ALTER TABLE `directus_messages_recipients`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `directus_preferences`
--
ALTER TABLE `directus_preferences`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `directus_privileges`
--
ALTER TABLE `directus_privileges`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `directus_users`
--
ALTER TABLE `directus_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
