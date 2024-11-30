-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 07:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livechat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'rahul@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `phone`, `message`) VALUES
(14, 'shiva', 'shiv@gmail.com', '8948452338', 'nice');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messages_id` int(11) NOT NULL,
  `outgoing` varchar(20) NOT NULL,
  `incoming` varchar(20) NOT NULL,
  `messages` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messages_id`, `outgoing`, `incoming`, `messages`) VALUES
(1, '2', '1', 'Hello'),
(2, '1', '2', 'Hii'),
(3, '1', '2', 'How are You'),
(4, '3', '1', 'Hlw bro'),
(5, '1', '3', 'Hii'),
(6, '5', '1', 'Hlw'),
(7, '1', '5', 'Hii'),
(8, '1', '5', 'How are You'),
(9, '5', '1', 'I am Fine'),
(10, '5', '1', 'and u'),
(11, '1', '5', 'i am also fine'),
(12, '3', '1', 'kya hal hai'),
(13, '1', '3', 'mast hai'),
(14, '1', '3', 'apna batao'),
(15, '1', '2', 'hlw'),
(16, '2', '1', 'hlw'),
(17, '1', '2', 'hii'),
(18, '1', '3', 'Good Morning'),
(19, '1', '3', 'Good Mornign'),
(20, '2', '1', 'Good Morning '),
(21, '1', '2', 'Good Morning'),
(22, '2', '5', 'hii'),
(23, '5', '2', 'hlw'),
(24, '1', '2', 'hii'),
(25, '3', '1', 'rahul@gmail.com'),
(26, '1', '3', '7607264029'),
(27, '1', '2', 'Good Morning'),
(28, '2', '1', 'Good Morning'),
(29, '2', '1', 'hii'),
(30, '1', '2', 'hlw');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `image`, `status`) VALUES
(1, 'Rahul', 'Raj', 'rahul@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9592169931691789618img.jpg', 'Offline'),
(2, 'Ateeq', 'Ahmad', 'ateeq@gmail.com', '5e8667a439c68f5145dd2fcbecf02209', '5462952881691790143img10.jpeg', 'Offline'),
(3, 'Ranjit', 'Raj', 'ranjit@gmail.com', '25d55ad283aa400af464c76d713c07ad', '4543614451691820077img6.jpg', 'Offline'),
(5, 'Mr.', 'Shivshankar', 'mrshiva@gmail.com', '25d55ad283aa400af464c76d713c07ad', '6891233131691834787shivaa.jpg', 'Offline'),
(6, 'Vishal', 'Sharma', 'vishal@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9721955031695703273vishal.jpg', 'Offline'),
(8, 'Neha', 'Kakkar', 'neha@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9964203881695703620neha.jpg', 'Online');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messages_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
