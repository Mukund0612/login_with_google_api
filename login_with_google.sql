-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 12:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_with_google`
--

-- --------------------------------------------------------

--
-- Table structure for table `google_user`
--

CREATE TABLE `google_user` (
  `google_id` int(11) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `google_email` varchar(100) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `picture_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `google_user`
--

INSERT INTO `google_user` (`google_id`, `client_id`, `name`, `last_name`, `google_email`, `gender`, `picture_link`) VALUES
(1, '117659222961716462180', 'mukund', '', 'hirparamukund@gmail.com', '', 'https://lh6.googleusercontent.com/-_updXy8dF-I/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucleg9dS0wj9m0HcCSJwtLUHG-J7IQ/s96-c/photo.jpg'),
(2, '116650314480546434429', 'Email', '', 'testing.email7804@gmail.com', '', 'https://lh5.googleusercontent.com/-KpP2JbMGYW4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckr8a3lUNhYdpEmOl9E4Sso9cmBTQ/s96-c/photo.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `google_user`
--
ALTER TABLE `google_user`
  ADD PRIMARY KEY (`google_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `google_user`
--
ALTER TABLE `google_user`
  MODIFY `google_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
