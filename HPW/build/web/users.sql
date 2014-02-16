-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: localhost
-- Χρόνος δημιουργίας: 11 Φεβ 2014 στις 16:34:41
-- Έκδοση διακομιστή: 5.5.36
-- Έκδοση PHP: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση δεδομένων: `database`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `first_name` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `last_name` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `username` varchar(10) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(8) COLLATE latin1_general_cs NOT NULL,
  `email` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `city` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `number_of_children` int(2) NOT NULL,
  UNIQUE KEY `username` (`username`,`password`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `username`, `password`, `email`, `city`, `number_of_children`) VALUES
('Maria', 'Koukouti', 'koukouti', '12345678', 'koukouti@inf.uth.gr', 'Larisa', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
