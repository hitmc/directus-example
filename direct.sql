-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2018 at 01:21 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `direct`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '''''',
  `price` int(11) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `status`, `sort`, `name`, `price`) VALUES
(1, 1, NULL, 'Lada Kalina Sport', 450000),
(2, 1, NULL, 'Lada granta', 400000),
(3, 1, NULL, 'Lada priora', 250000),
(4, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_translation`
--

CREATE TABLE `car_translation` (
  `id` int(11) NOT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL COMMENT '''''',
  `name` varchar(100) DEFAULT NULL COMMENT '''''',
  `price` int(11) DEFAULT NULL COMMENT '''''',
  `language_code` varchar(100) DEFAULT NULL COMMENT '''''',
  `approved` tinyint(1) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_translation`
--

INSERT INTO `car_translation` (`id`, `sort`, `car_id`, `name`, `price`, `language_code`, `approved`) VALUES
(1, NULL, 1, 'nissan skyline', 50, NULL, NULL),
(2, NULL, 1, NULL, NULL, NULL, NULL),
(3, NULL, 1, NULL, NULL, NULL, NULL),
(4, NULL, 4, 'nissan skyline', 888, 'ru', 0),
(5, NULL, 4, 'nissan skyline', 888, 'ru-test', 0),
(6, NULL, 4, NULL, NULL, 'en', NULL),
(7, NULL, 3, NULL, NULL, 'ru', NULL),
(8, NULL, 3, 'test', 123, 'ru-test', 1),
(9, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`id`, `status`, `sort`, `title`, `position`) VALUES
(1, 1, 1, 'ЮжУралАвто2', '55.15710095758846,61.37958526611328'),
(2, 1, 0, 'ЧелябАвтоЛюкс', '55.18239627962354,61.3970947265625');

-- --------------------------------------------------------

--
-- Table structure for table `directus_activity`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=844 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_activity`
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
(91, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-05-08 04:41:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(92, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 05:34:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(93, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 05:34:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(94, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1500000\",\"language_code\":\"ru-test\",\"approved\":null}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 05:34:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(95, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 05:42:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(96, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 05:42:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(97, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1500000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 05:42:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(98, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:11:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(99, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:11:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(100, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1500000\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:11:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(101, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:11:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(102, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:11:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(103, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1500000\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:11:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(104, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(105, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(106, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1500000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');
INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(107, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"0\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"price\":0,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:18:17', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(108, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"0\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"price\":0,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:19:30', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(109, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:25:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(110, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"0\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:25:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(111, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"150\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"price\":\"150\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:25:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(112, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:25:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(113, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"0\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:25:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(114, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"150\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":150,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:25:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(115, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"0\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:26:52', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(116, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"0\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:27:29', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(117, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"160\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":160,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:28:38', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(118, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:28:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(119, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"0\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:28:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(120, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"160\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"price\":\"160\",\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:28:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(121, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:29:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(122, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"160\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:29:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(123, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"170\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"170\",\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:29:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(124, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:29:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(125, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"160\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:29:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(126, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"180\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"180\",\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:29:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(127, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:29:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(128, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"160\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:29:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(129, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"190\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"190\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:29:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(130, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"190\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":190,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:30:58', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(131, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:32:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(132, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"190\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:32:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(133, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"201\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"price\":\"201\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:32:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(134, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:32:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(135, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"190\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:32:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(136, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"201\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:32:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(137, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"201\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":201,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:32:58', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(138, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 06:32:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(139, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"190\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:32:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(140, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"201\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 06:32:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(141, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:12:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(142, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"201\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:12:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(143, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"price\":\"210\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:12:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(144, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:12:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(145, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"201\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:12:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(146, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"price\":210,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:12:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(147, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:13:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(148, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"300\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"300\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:13:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(149, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"price\":210,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:13:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(150, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:13:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(151, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"300\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":300,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:13:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(152, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"price\":210,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:13:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(153, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:19:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(154, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"300\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":300,\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:19:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(155, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":210,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:19:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(156, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:25:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(157, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"3001\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"3001\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:25:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(158, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":210,\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:25:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(159, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:26:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(160, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"3001\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":3001,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:26:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(161, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":210,\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:26:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(162, 'ENTRY', 'ADD', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '[]', 4, 'car', 1, '2018-05-08 07:26:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(163, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:31:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(164, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"3001\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:31:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(165, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:31:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(166, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:31:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(167, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:31:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(168, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"100\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:31:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(169, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:31:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(170, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:31:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(171, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:32:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(172, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":100,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:32:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(173, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:32:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(174, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:32:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(175, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:36:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(176, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":100,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:36:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(177, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:36:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(178, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:36:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(179, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":100,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:37:02', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(180, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:38:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(181, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(182, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(183, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(184, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:38:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(185, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"1001\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(186, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(187, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(188, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":1001,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:38:47', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(189, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:38:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(190, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(191, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(192, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:38:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(193, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":210,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-08 07:39:04', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(194, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:39:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(195, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(196, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(197, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(198, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:39:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(199, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(200, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(201, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(202, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:39:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(203, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(204, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(205, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:39:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(206, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":1001,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:39:59', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(207, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":1001,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:41:26', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(208, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:41:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(209, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(210, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(211, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(212, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:41:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(213, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1001\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(214, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(215, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(216, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:41:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(217, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"1\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(218, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(219, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:41:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(220, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":210,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-08 07:42:06', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(221, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:44:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(222, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(223, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(224, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(225, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":210,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:44:18', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(226, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:44:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(227, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(228, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(229, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(230, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:44:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(231, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"price\":\"2100\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(232, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(233, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(234, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:44:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(235, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":2100,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(236, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"210\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(237, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:44:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(238, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"name\":\"nissan skyline\",\"price\":2100,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-08 07:45:28', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(239, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:45:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(240, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:45:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');
INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(241, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:45:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(242, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:45:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(243, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:54:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(244, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(245, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(246, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(247, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:54:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(248, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(249, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(250, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(251, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:54:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(252, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"100\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(253, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2100\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(254, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:54:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(255, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":100,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-08 07:55:02', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(256, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:02', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(257, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(258, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(259, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(260, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(261, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"200\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":200,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:14', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(262, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"200\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-08 07:55:14', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(263, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(264, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"100\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(265, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"200\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"200\",\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(266, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(267, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(268, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"200\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(269, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"2000\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(270, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(271, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(272, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"300\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"300\",\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(273, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"2000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(274, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(275, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline2\",\"price\":\"2000\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline2\",\"price\":2000,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:49', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(276, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline2\",\"price\":\"2000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-08 07:55:49', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(277, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:55:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(278, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"300\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":300,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(279, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline2\",\"price\":\"2000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline2\",\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(280, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:55:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(281, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":1000000,\"id\":\"5\"}', NULL, NULL, 1, '2018-05-08 07:56:10', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(282, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:56:11', '127.0.0.1', 'GuzzleHttp/6.3.3 curl/7.51.0 PHP/7.1.0'),
(283, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 07:56:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(284, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":\"1000000\",\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:56:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(285, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:56:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(286, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 07:56:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(287, 'ENTRY', 'UPDATE', '1', 'car_translation', 1, 1, '{\"id\":\"1\",\"sort\":null,\"car_id\":\"1\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":null,\"approved\":null}', '{\"name\":\"nissan skyline\",\"price\":50,\"id\":1}', NULL, NULL, 1, '2018-05-08 08:15:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(288, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4}', NULL, NULL, 1, '2018-05-08 08:15:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(289, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 08:15:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(290, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"50\",\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:15:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(291, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:15:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(292, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:15:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(293, 'ENTRY', 'UPDATE', '1', 'car_translation', 1, 1, '{\"id\":\"1\",\"sort\":null,\"car_id\":\"1\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":null,\"approved\":null}', '{\"name\":\"nissan skyline\",\"price\":50,\"id\":1}', NULL, NULL, 1, '2018-05-08 08:15:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(294, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4}', NULL, NULL, 1, '2018-05-08 08:15:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(295, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 08:15:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(296, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:15:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(297, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:15:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(298, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:15:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(299, 'ENTRY', 'UPDATE', '1', 'car_translation', 1, 1, '{\"id\":\"1\",\"sort\":null,\"car_id\":\"1\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":null,\"approved\":null}', '{\"name\":\"nissan skyline\",\"price\":50,\"id\":1}', NULL, NULL, 1, '2018-05-08 08:34:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(300, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 08:47:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(301, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"50\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(302, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"1000000\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(303, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(304, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":60,\"id\":5}', NULL, NULL, 1, '2018-05-08 08:47:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(305, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":4}', NULL, NULL, 1, '2018-05-08 08:47:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(306, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 08:47:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(307, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":\"60\",\"approved\":1,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(308, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(309, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(310, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 08:47:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(311, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(312, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"price\":\"70\",\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(313, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(314, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 08:47:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(315, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(316, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(317, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:47:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(318, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 08:48:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(319, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:48:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(320, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:48:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(321, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 08:48:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(322, 'ENTRY', 'UPDATE', '3', 'car', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada priora\",\"price\":\"250000\"}', '{\"id\":\"3\"}', NULL, NULL, 1, '2018-05-08 08:48:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(323, 'ENTRY', 'ADD', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"3\",\"name\":null,\"price\":null,\"language_code\":\"ru\",\"approved\":null}', '[]', 3, 'car', 1, '2018-05-08 08:48:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(324, 'ENTRY', 'ADD', '8', 'car_translation', 8, 1, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"3\",\"name\":\"test\",\"price\":\"123\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '[]', 3, 'car', 1, '2018-05-08 08:48:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(325, 'ENTRY', 'UPDATE', '3', 'car', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada priora\",\"price\":\"250000\"}', '{\"id\":\"3\"}', NULL, NULL, 1, '2018-05-08 08:49:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(326, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"3\",\"name\":null,\"price\":null,\"language_code\":\"ru\",\"approved\":null}', '{\"id\":7,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 08:49:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(327, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 1, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"3\",\"name\":\"test\",\"price\":\"123\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":8,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 08:49:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(328, 'ENTRY', 'UPDATE', '3', 'car', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada priora\",\"price\":\"250000\"}', '{\"id\":\"3\"}', NULL, NULL, 1, '2018-05-08 08:49:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(329, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"3\",\"name\":null,\"price\":null,\"language_code\":\"ru\",\"approved\":null}', '{\"id\":7,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 08:49:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(330, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 1, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"3\",\"name\":\"test\",\"price\":\"123\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":8,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 08:49:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(331, 'ENTRY', 'UPDATE', '3', 'car', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada priora\",\"price\":\"250000\"}', '{\"id\":\"3\"}', NULL, NULL, 1, '2018-05-08 08:50:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(332, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"3\",\"name\":null,\"price\":null,\"language_code\":\"ru\",\"approved\":null}', '{\"id\":7,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 08:50:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(333, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 1, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"3\",\"name\":\"test\",\"price\":\"123\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":8,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 08:50:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(334, 'ENTRY', 'UPDATE', '3', 'car', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"Lada priora\",\"price\":\"250000\"}', '{\"id\":\"3\"}', NULL, NULL, 1, '2018-05-08 09:01:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(335, 'ENTRY', 'UPDATE', '7', 'car_translation', 7, 1, '{\"id\":\"7\",\"sort\":null,\"car_id\":\"3\",\"name\":null,\"price\":null,\"language_code\":\"ru\",\"approved\":null}', '{\"id\":7,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 09:01:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(336, 'ENTRY', 'UPDATE', '8', 'car_translation', 8, 1, '{\"id\":\"8\",\"sort\":null,\"car_id\":\"3\",\"name\":\"test\",\"price\":\"123\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":8,\"car_id\":\"3\"}', 3, 'car', 1, '2018-05-08 09:01:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(337, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:03:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(338, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:03:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(339, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:03:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(340, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:03:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(341, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:04:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(342, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:04:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(343, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:04:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(344, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:04:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(345, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:04:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(346, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:04:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(347, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:04:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(348, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:04:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(349, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:07:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(350, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:07:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(351, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:07:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(352, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:07:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(353, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:07:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(354, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:07:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(355, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:07:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(356, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:07:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(357, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:12:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(358, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:12:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(359, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:12:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(360, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:12:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(361, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:17:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(362, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:17:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(363, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:17:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(364, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:17:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(365, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:18:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(366, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:18:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(367, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:18:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(368, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:18:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(369, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:18:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(370, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:18:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(371, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:18:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(372, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:18:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(373, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:20:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');
INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(374, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:20:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(375, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:20:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(376, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:20:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(377, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:20:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(378, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:20:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(379, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:20:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(380, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:20:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(381, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:23:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(382, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:23:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(383, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:23:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(384, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:23:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(385, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:31:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(386, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"60\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:31:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(387, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:31:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(388, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:31:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(389, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":70,\"id\":4}', NULL, NULL, 1, '2018-05-08 09:41:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(390, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":70,\"id\":4}', NULL, NULL, 1, '2018-05-08 09:42:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(391, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5}', NULL, NULL, 1, '2018-05-08 09:42:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(392, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:42:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(393, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(394, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(395, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(396, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:42:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(397, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(398, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"80\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"80\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(399, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(400, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:42:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(401, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"70\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(402, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"80\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"price\":80,\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(403, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:42:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(404, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"80\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":80,\"id\":4}', NULL, NULL, 1, '2018-05-08 09:43:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(405, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"80\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5}', NULL, NULL, 1, '2018-05-08 09:43:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(406, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:43:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(407, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"80\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:43:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(408, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"801\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"801\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:43:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(409, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:43:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(410, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:45:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(411, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"80\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"price\":80,\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(412, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"77\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"77\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(413, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(414, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:45:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(415, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"80\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(416, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"77\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(417, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(418, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"77\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":77,\"id\":4}', NULL, NULL, 1, '2018-05-08 09:45:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(419, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"77\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5}', NULL, NULL, 1, '2018-05-08 09:45:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(420, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:45:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(421, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"77\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(422, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"777\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"777\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(423, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:45:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(424, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:53:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(425, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"77\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:53:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(426, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"888\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"price\":\"888\",\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:53:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(427, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:53:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(428, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:53:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(429, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"77\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:53:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(430, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"888\",\"language_code\":\"ru-test\",\"approved\":\"1\"}', '{\"price\":888,\"approved\":1,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:53:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(431, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:53:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(432, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"888\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"name\":\"nissan skyline\",\"price\":888,\"id\":4}', NULL, NULL, 1, '2018-05-08 09:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(433, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"888\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5}', NULL, NULL, 1, '2018-05-08 09:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(434, 'ENTRY', 'UPDATE', '4', 'car', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"name\":null,\"price\":null}', '{\"id\":\"4\"}', NULL, NULL, 1, '2018-05-08 09:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(435, 'ENTRY', 'UPDATE', '4', 'car_translation', 4, 1, '{\"id\":\"4\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"888\",\"language_code\":\"ru\",\"approved\":\"0\"}', '{\"id\":4,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(436, 'ENTRY', 'UPDATE', '5', 'car_translation', 5, 1, '{\"id\":\"5\",\"sort\":null,\"car_id\":\"4\",\"name\":\"nissan skyline\",\"price\":\"888\",\"language_code\":\"ru-test\",\"approved\":\"0\"}', '{\"approved\":0,\"id\":5,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(437, 'ENTRY', 'UPDATE', '6', 'car_translation', 6, 1, '{\"id\":\"6\",\"sort\":null,\"car_id\":\"4\",\"name\":null,\"price\":null,\"language_code\":\"en\",\"approved\":null}', '{\"id\":6,\"car_id\":\"4\"}', 4, 'car', 1, '2018-05-08 09:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `directus_bookmarks`
--

CREATE TABLE `directus_bookmarks` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=2048 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_bookmarks`
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
-- Table structure for table `directus_columns`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=481 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_columns`
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
(48, 'car_translation', 'approved', 'TINYINT', 'toggle', NULL, NULL, NULL, NULL, NULL, 0, 0, 7, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_files`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_files`
--

INSERT INTO `directus_files` (`id`, `status`, `name`, `title`, `location`, `caption`, `type`, `charset`, `tags`, `width`, `height`, `size`, `embed_id`, `user`, `date_uploaded`, `storage_adapter`) VALUES
(1, 1, '00000000001.jpg', 'Mountain Range', 'Earth', 'A gorgeous view of this wooded mountain range', 'image/jpeg', 'binary', 'trees,rocks,nature,mountains,forest', 1800, 1200, 602058, NULL, 1, '2018-05-03 05:57:39', 'local');

-- --------------------------------------------------------

--
-- Table structure for table `directus_groups`
--

CREATE TABLE `directus_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `restrict_to_ip_whitelist` text,
  `nav_override` text
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_groups`
--

INSERT INTO `directus_groups` (`id`, `name`, `description`, `restrict_to_ip_whitelist`, `nav_override`) VALUES
(1, 'Administrator', 'Admins have access to all managed data within the system by default', NULL, NULL),
(2, 'Public', 'This sets the data that is publicly available through the API without a token', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_messages`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_messages`
--

INSERT INTO `directus_messages` (`id`, `from`, `subject`, `message`, `datetime`, `attachment`, `response_to`, `comment_metadata`) VALUES
(1, 1, 'Car: Test project', 'Test comment', '2018-05-07 00:02:13', NULL, NULL, 'car:1');

-- --------------------------------------------------------

--
-- Table structure for table `directus_messages_recipients`
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
-- Table structure for table `directus_preferences`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=630 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_preferences`
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
(17, 2, 'car', NULL, 'name,price,articles_translations', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"item_numbers\":true,\"show_footer\":true,\"revisions_count\":true,\"comments_count\":true,\"last_updated\":true,\"currentView\":\"table\",\"table\":{\"item_numbers\":true,\"show_footer\":true,\"revisions_count\":true,\"comments_count\":true,\"last_updated\":true,\"spacing\":\"compact\"}}'),
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
-- Table structure for table `directus_privileges`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=862 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_privileges`
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
-- Table structure for table `directus_schema_migrations`
--

CREATE TABLE `directus_schema_migrations` (
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1365 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_schema_migrations`
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
-- Table structure for table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_settings`
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
-- Table structure for table `directus_tables`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=2340 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_tables`
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
-- Table structure for table `directus_users`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_users`
--

INSERT INTO `directus_users` (`id`, `status`, `first_name`, `last_name`, `email`, `password`, `salt`, `token`, `access_token`, `reset_token`, `reset_expiration`, `position`, `email_messages`, `last_login`, `last_access`, `last_page`, `ip`, `group`, `avatar`, `avatar_file_id`, `location`, `phone`, `address`, `city`, `state`, `country`, `zip`, `language`, `timezone`, `invite_token`, `invite_date`, `invite_sender`, `invite_accepted`) VALUES
(1, 1, 'Admin', 'User', 'admin@admin.ru', '$2y$12$2ufdhIqgRwQgbkli4QdpUehFjG0i4V9QD3lfau8aRd7zTiHmZg4qC', 'Fr9d8hBTeF90IvZK', 'MhRqktlKi2Wcmsae9UvqgPAzXySldwTM', 'd20b207d6c8a7cc1c2725a7bd7000adf554f2e09', '', NULL, '', 1, '2018-05-08 04:41:30', '2018-05-08 10:00:21', '{\"path\":\"settings/tables/car_translation\",\"route\":\"settingsTable\"}', '127.0.0.1', 1, '//www.gravatar.com/avatar/2e64a65177d9b1008b2b7895e1090c8d?s=200&d=identicon&r=g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 'America/New_York', NULL, NULL, NULL, NULL),
(2, 1, '', '', 'test@test.ru', '$2y$12$IorVPmUBwiTicPabKp3NxOtdAXv0CI5xn8HvFiiB36LzUEQg5Srz.', 'h9TbwCOSvrw7xHml', NULL, NULL, '', '2018-05-07 14:13:26', '', 1, '2018-05-07 09:14:04', '2018-05-07 09:43:43', '{\"path\":\"settings/tables/car\",\"route\":\"settingsTable\"}', '149.255.6.48', 1, '//www.gravatar.com/avatar/cbc4c5829ca103f23a20b31dbf953d05?s=200&d=identicon&r=g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 'America/New_York', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
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
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `status`, `sort`, `name`, `title`, `value`, `depend`, `is_percent`, `individual`) VALUES
(1, 1, NULL, 'skidos1', 'Скидка1', 25000, NULL, NULL, 1),
(2, 1, NULL, 'skidos2', 'Скидка2', 10, NULL, 1, 1),
(3, 1, NULL, 'skidos3', 'Скидка3', 5000, 2, 0, 1),
(4, 1, NULL, 'skidos4', 'Скидка4', 5, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`status`, `sort`, `code`, `name`) VALUES
(1, NULL, 'en', 'English'),
(1, NULL, 'ru', 'ru'),
(1, NULL, 'ru-test', 'ru test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_translation`
--
ALTER TABLE `car_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_bookmarks`
--
ALTER TABLE `directus_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_columns`
--
ALTER TABLE `directus_columns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table-column` (`table_name`,`column_name`);

--
-- Indexes for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_groups`
--
ALTER TABLE `directus_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_name_unique` (`name`);

--
-- Indexes for table `directus_messages`
--
ALTER TABLE `directus_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_messages_recipients`
--
ALTER TABLE `directus_messages_recipients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_preferences`
--
ALTER TABLE `directus_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pref_title_constraint` (`user`,`table_name`,`title`),
  ADD UNIQUE KEY `user` (`user`,`table_name`,`title`);

--
-- Indexes for table `directus_privileges`
--
ALTER TABLE `directus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_schema_migrations`
--
ALTER TABLE `directus_schema_migrations`
  ADD UNIQUE KEY `idx_directus_schema_migrations_version` (`version`);

--
-- Indexes for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique Collection and Name` (`collection`,`name`);

--
-- Indexes for table `directus_tables`
--
ALTER TABLE `directus_tables`
  ADD PRIMARY KEY (`table_name`);

--
-- Indexes for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD UNIQUE KEY `directus_users_token_unique` (`token`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `car_translation`
--
ALTER TABLE `car_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;
--
-- AUTO_INCREMENT for table `directus_bookmarks`
--
ALTER TABLE `directus_bookmarks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `directus_columns`
--
ALTER TABLE `directus_columns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `directus_files`
--
ALTER TABLE `directus_files`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `directus_groups`
--
ALTER TABLE `directus_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `directus_messages`
--
ALTER TABLE `directus_messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `directus_messages_recipients`
--
ALTER TABLE `directus_messages_recipients`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `directus_preferences`
--
ALTER TABLE `directus_preferences`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `directus_privileges`
--
ALTER TABLE `directus_privileges`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `directus_users`
--
ALTER TABLE `directus_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
