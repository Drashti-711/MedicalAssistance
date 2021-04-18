-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Apr 18, 2021 at 10:41 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medassistance`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `role`, `username`, `password`) VALUES
(1, 'Doctor', 'abc', '$2y$10$G8aQQRRn4UMcB'),
(2, 'Doctor', 'drashti', '$2y$10$bCgOwwBgAdKlY'),
(3, 'Hospital', 'admin', '$2y$10$Y3pSnn0hhXG5k'),
(4, 'Doctor', 'abc', '$2y$10$G8aQQRRn4UMcB'),
(5, 'Doctor', 'drashti', '$2y$10$bCgOwwBgAdKlY'),
(6, 'Hospital', 'admin', '$2y$10$Y3pSnn0hhXG5k'),
(7, 'Doctor', 'abc', '$2y$10$G8aQQRRn4UMcB'),
(8, 'Hospital', 'admin', '$2y$10$Y3pSnn0hhXG5k'),
(9, 'Doctor', 'abc@email.com', '$2y$10$G8aQQRRn4UMcB'),
(10, 'Hospital', 'abc12@email.com', '$2y$10$Y3pSnn0hhXG5k'),
(11, 'Hospital', 'abc12@email.com', '$2y$10$Y3pSnn0hhXG5k'),
(12, 'Hospital', 'abc12@email.com', '$2y$10$Y3pSnn0hhXG5k'),
(13, 'Hospital', 'abc12@email.com', '$2y$10$Y3pSnn0hhXG5k'),
(14, 'Doctor', 'drashti@email.com', '$2y$10$bCgOwwBgAdKlY'),
(15, 'Doctor', '1@email.com', '$2y$10$CT1B.Jj3ZjWDO');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `role` enum('Doctor','Hospital','Medical Store') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `confirm_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `role`, `firstname`, `lastname`, `email`, `username`, `password`, `confirm_password`) VALUES
(1, 'Doctor', 'hdsbh', 'dc', 'abc@email.com', 'abc', '$2y$10$G8aQQRRn4UMcBGOx83A1jOvXMutkD.B6WsHUHNpw2w8m9Mvm9O7sq', '$2y$10$gSZxzZPk9p6GubD9bnxabuoMJ0VhzOIqfeNmXfJT310ekH2CsZhBa'),
(2, 'Doctor', 'drashti', 'kansare', 'drashti@email.com', 'drashti', '$2y$10$bCgOwwBgAdKlY9EVyl6D0ONO.aBab2FGtl3gbm6A/UpvWlE3dzd4O', '$2y$10$t8lMTUp5h4/9wwypoI.KkOM2QgrDu6NQ1kvfbBo7zJ8dK/wfj4UfO'),
(3, 'Hospital', 'hdsbh', 'dc', 'abc12@email.com', 'admin', '$2y$10$Y3pSnn0hhXG5k6YkhmHm2.nX48kvvazuqYJT7dZNrUcgF75Nj5UmW', '$2y$10$/oqTWXtcGOd61TfheWlJ6uO06LqDHMP8S8rbhK3fWR1Rpgbcm2Ibi'),
(4, 'Doctor', 'abc', 'dc', '1@email.com', 'abc_12', '$2y$10$CT1B.Jj3ZjWDOrKWT8l7/ep8opAzxd7F8Fl5NKrElLfp4s1Ce0i56', '$2y$10$ky8HqW23DikDJMb6AZJLCuHIAxX9GoCpWu4cDirMRbQklTiHE1gtO');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'abc_12', '$2y$10$RdPZ62eAAi2OjQ3ZHTg9k.H9OWbPuUc06.SpjGa0PqIntdxQrn2ZW', '2021-02-16 16:11:15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
