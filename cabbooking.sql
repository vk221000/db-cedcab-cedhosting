-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2021 at 07:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cabbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `distance` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `name`, `distance`, `is_available`) VALUES
(6, 'Basti', '150', 0),
(22, 'Lekhraj', '13', 1),
(23, 'Charbagh', '20', 1),
(25, 'mumbai', '100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ride`
--

CREATE TABLE `tbl_ride` (
  `ride_id` int(11) NOT NULL,
  `ride_date` date NOT NULL,
  `from` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `to` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cab_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `total_distance` int(15) NOT NULL,
  `luggage` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `total_fare` int(15) NOT NULL,
  `status` int(1) NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_ride`
--

INSERT INTO `tbl_ride` (`ride_id`, `ride_date`, `from`, `to`, `cab_type`, `total_distance`, `luggage`, `total_fare`, `status`, `user_id`) VALUES
(95, '2021-01-05', 'Charbagh', 'Indira Nagar', 'CedMini', 10, '455.65', 495, 2, 32),
(96, '2021-01-05', 'Charbagh', 'Basti', 'CedMini', 150, '5', 2003, 0, 28),
(97, '2021-01-05', 'Indira Nagar', 'Barabanki', 'CedMini', 50, '455.65', 1015, 2, 32),
(98, '2021-01-06', 'Charbagh', 'Indira Nagar', 'CedMicro', 10, '', 185, 2, 40),
(99, '2021-01-06', 'Charbagh', 'BBD', 'CedMicro', 30, '', 425, 2, 40),
(100, '2021-01-06', 'Charbagh', 'Indira Nagar', 'CedMicro', 10, '', 185, 2, 42),
(101, '2021-01-06', 'Indira Nagar', 'Barabanki', 'CedMini', 50, '12', 915, 2, 42),
(102, '2021-01-06', 'Indira Nagar', 'Lahore', 'CedMicro', 190, '', 2060, 0, 37),
(103, '2021-01-06', 'Charbagh', 'Kushinagar', 'CedMini', 250, '21', 3120, 2, 37),
(104, '2021-01-06', 'Charbagh', 'Indira Nagar', 'CedMicro', 10, '', 185, 2, 48),
(105, '2021-01-06', 'Charbagh', 'Kushinagar', 'CedMini', 250, '21', 3120, 2, 37),
(106, '2021-01-06', 'Indira Nagar', 'BBD', 'CedMini', 20, '', 425, 2, 40),
(107, '2021-01-06', 'Charbagh', 'Faizabad', 'CedMini', 100, '5', 1443, 2, 49),
(109, '2021-01-06', 'Faizabad', 'Charbagh', 'CedMicro', 100, '', 1193, 0, 50),
(110, '2021-01-06', 'Charbagh', 'Gorakhpur', 'CedSUV', 210, '25', 3460, 2, 49),
(112, '2021-01-06', 'Charbagh', 'Faizabad', 'CedMini', 100, '10', 1443, 0, 50),
(113, '2021-01-06', 'Munshi Pulia', 'Basti', 'CedMini', 150, '', 1953, 0, 40),
(114, '2021-01-06', 'Munshi Pulia', 'Faizabad', 'CedMicro', 100, '', 1193, 0, 57),
(115, '2021-01-06', 'Munshi Pulia', 'Faizabad', 'CedMini', 100, '12', 1493, 2, 34),
(117, '2021-01-06', 'Munshi Pulia', 'Basti', 'CedMicro', 150, '', 1703, 2, 34),
(118, '2021-01-06', 'Munshi Pulia', 'Faizabad', 'CedMicro', 100, '', 1193, 2, 57),
(119, '2021-01-06', 'Munshi Pulia', 'Lahore', 'CedMicro', 200, '', 2145, 0, 37),
(120, '2021-01-06', '', 'Gorakhpur', 'CedSUV', 210, '25', 3460, 2, 49),
(121, '2021-01-06', 'Munshi Pulia', 'Gorakhpur', 'CedRoyal', 210, '55', 3000, 2, 49),
(127, '2021-01-06', 'Munshi Pulia', 'Faizabad', 'CedMicro', 100, '', 1193, 2, 37),
(128, '2021-01-06', 'Munshi Pulia', 'Basti', 'CedMicro', 150, '', 1703, 0, 50),
(129, '2021-01-06', 'Gorakhpur', 'Basti', 'CedMicro', 60, '', 785, 0, 50),
(130, '2021-01-06', 'Munshi Pulia', 'Basti', 'CedMini', 150, '50', 2153, 2, 49),
(132, '2021-01-06', 'Munshi Pulia', 'Faizabad', 'CedMicro', 100, '', 1193, 2, 50),
(133, '2021-01-07', 'Munshi Pulia', 'Gorakhpur', 'CedMicro', 210, '', 2230, 0, 40),
(134, '2021-01-07', 'Faizabad', 'Gorakhpur', 'CedMicro', 110, '', 1295, 0, 68),
(135, '2021-01-07', 'Basti', 'Munshi Pulia', 'CedRoyal', 150, '4', 2203, 0, 28),
(136, '2021-01-07', 'Faizabad', 'Munshi Pulia', 'CedMini', 100, '4', 1443, 2, 28),
(137, '2021-01-07', 'Munshi Pulia', 'Basti', 'CedMicro', 150, '', 1703, 0, 66),
(138, '2021-01-07', 'Munshi Pulia', 'Faizabad', 'CedMini', 100, '455.65', 1593, 2, 54),
(141, '2021-01-07', 'Munshi Pulia', 'Basti', 'CedMicro', 150, '', 1703, 0, 68),
(146, '2021-01-07', 'Munshi Pulia', 'Gorakhpur', 'CedMini', 210, '', 2540, 0, 66),
(147, '2021-01-07', 'Faizabad', 'Gorakhpur', 'CedMini', 110, '', 1505, 0, 70),
(148, '2021-01-07', 'Faizabad', 'Kushinagar', 'CedMicro', 150, '', 1703, 0, 70),
(149, '2021-01-07', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 0, 50),
(150, '2021-01-07', 'Gorakhpur', 'Faizabad', 'CedMini', 110, '12', 1605, 0, 40),
(151, '2021-01-07', 'Basti', 'Gorakhpur', 'CedMicro', 60, '', 785, 2, 50),
(152, '2021-01-07', 'Faizabad', 'Gorakhpur', 'CedMicro', 110, '', 1295, 2, 40),
(153, '2021-01-07', 'Basti', 'Kushinagar', 'CedMini', 100, '', 1393, 2, 40),
(154, '2021-01-07', 'Gorakhpur', 'Basti', 'CedMicro', 60, '', 785, 0, 40),
(155, '2021-01-07', 'Kushinagar', 'Gorakhpur', 'CedRoyal', 40, '', 775, 0, 40),
(156, '2021-01-07', 'Gorakhpur', 'Faizabad', 'CedSUV', 110, '455.65', 2225, 0, 54),
(157, '2021-01-07', 'Faizabad', 'Basti', 'CedMini', 50, '455.65', 1015, 0, 54),
(158, '2021-01-07', 'Basti', 'Kushinagar', 'CedRoyal', 100, '', 1543, 0, 70),
(159, '2021-01-07', 'Faizabad', 'Basti', 'CedMini', 50, '455.65', 1015, 2, 54),
(160, '2021-01-07', 'Faizabad', 'Basti', 'CedMini', 50, '10', 865, 2, 42),
(161, '2021-01-07', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 2, 42),
(162, '2021-01-07', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 2, 50),
(164, '2021-01-07', 'Gorakhpur', 'Kushinagar', 'CedMini', 40, '2', 735, 0, 66),
(165, '2021-01-07', 'Pakistan', 'Gorakhpur', 'CedMini', 490, '2', 5250, 0, 66),
(166, '2021-01-07', 'Gorakhpur', 'Pakistan', 'CedRoyal', 490, '2', 5790, 0, 66),
(167, '2021-01-07', 'Kushinagar', 'Faizabad', 'CedMini', 150, '2', 2003, 2, 66),
(168, '2021-01-07', 'Faizabad', 'Basti', 'CedMini', 50, '12', 915, 0, 28),
(169, '2021-01-07', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 0, 28),
(170, '2021-01-07', 'Gorakhpur', 'Pakistan', 'CedMini', 490, '45', 5400, 0, 28),
(171, '2021-01-07', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 2, 50),
(172, '2021-01-07', 'Kushinagar', 'Gorakhpur', 'CedMini', 40, '', 685, 2, 50),
(173, '2021-01-07', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 2, 57),
(174, '2021-01-07', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 2, 57),
(175, '2021-01-07', 'Faizabad', 'Gorakhpur', 'CedMini', 110, '22', 1705, 0, 28),
(176, '2021-01-07', 'Faizabad', 'Gorakhpur', 'CedMini', 110, '32', 1705, 2, 28),
(177, '2021-01-07', 'Faizabad', 'Kushinagar', 'CedRoyal', 150, '578', 2353, 2, 28),
(178, '2021-01-08', 'Gorakhpur', 'Faizabad', 'CedMicro', 110, '', 1295, 0, 70),
(179, '2021-01-08', 'Gorakhpur', 'Faizabad', 'CedMicro', 110, '', 1295, 2, 70),
(180, '2021-01-08', 'Faizabad', 'Basti', 'CedMini', 50, '2', 865, 0, 28),
(181, '2021-01-08', 'Faizabad', 'Basti', 'CedMini', 50, '2', 865, 0, 28),
(182, '2021-01-08', 'Faizabad', 'Gorakhpur', 'CedRoyal', 110, '12', 1765, 2, 28),
(183, '2021-01-08', 'Faizabad', 'Basti', 'CedMini', 50, '11', 915, 2, 54),
(184, '2021-01-08', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 2, 70),
(185, '2021-01-08', 'Basti', 'Faizabad', 'CedMicro', 50, '', 665, 2, 70),
(186, '2021-01-08', 'Faizabad', 'Basti', 'CedMini', 50, '12', 915, 0, 28),
(187, '2021-01-08', 'Faizabad', 'Basti', 'CedMini', 50, '12', 915, 0, 28),
(188, '2021-01-08', 'Faizabad', 'Basti', 'CedMini', 50, '12', 915, 0, 28),
(189, '2021-01-08', 'Basti', 'Gorakhpur', 'CedMini', 60, '', 945, 2, 75),
(191, '2021-01-08', 'Faizabad', 'Basti', 'CedMicro', 50, '', 665, 0, 74),
(192, '2021-01-08', 'Faizabad', 'Kushinagar', 'CedMini', 150, '12', 2053, 2, 74),
(193, '2021-01-08', 'Faizabad', 'Gorakhpur', 'CedRoyal', 110, '', 1665, 2, 66),
(194, '2021-01-08', 'Faizabad', 'Basti', 'CedRoyal', 50, '4', 965, 2, 28),
(195, '2021-01-08', 'Basti', 'Gorakhpur', 'CedMini', 60, '12', 1045, 0, 54),
(198, '2021-01-08', 'Faizabad', 'Basti', 'CedMini', 50, '1', 865, 0, 28),
(199, '2021-01-09', 'Basti', 'Faizabad', 'CedMini', 50, '3', 865, 0, 28),
(200, '2021-01-09', 'Basti', 'Gorakhpur', 'CedMini', 60, '12', 1045, 0, 28),
(201, '2021-01-09', 'Gorakhpur', 'Faizabad', 'CedMicro', 110, '', 1295, 0, 28),
(202, '2021-01-09', 'Lekhraj', 'Charbagh', 'CedMini', 7, '', 252, 0, 66),
(203, '2021-01-09', 'Faizabad', 'Gorakhpur', 'CedMicro', 110, '', 1295, 2, 40),
(204, '2021-01-09', 'Charbagh', 'Lekhraj', 'CedSUV', 7, '2', 466, 1, 54);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dateofsignup` datetime NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isblock` tinyint(1) DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `name`, `dateofsignup`, `mobile`, `isblock`, `password`, `is_admin`) VALUES
(23, 'QQQ', 'QQQ', '2020-12-28 12:04:39', '1234567890', 1, 'b2ef9c7b10eb0985365f913420ccb84a', 0),
(28, 'Preeti@123', 'Preeti', '2021-01-05 17:45:50', '56778891', 1, '827ccb0eea8a706c4c34a16891f84e7b', 0),
(29, 'abc123@', 'abc', '2021-01-05 17:46:59', '9887778879', 1, '0d7f943d633e49fb06fe6c53acabe3c5', 0),
(31, 'mallika', 'mallika jaiswal', '2021-01-05 17:56:41', '7518448884', 1, '21232f297a57a5a743894a0e4a801fc3', 0),
(32, 'navneet', 'navneet', '2021-01-05 17:57:57', '9452610901', 1, 'e10adc3949ba59abbe56e057f20f883e', 0),
(34, 'sher', 'sher', '2021-01-05 17:59:19', '8577851005', 1, '202cb962ac59075b964b07152d234b70', 0),
(35, 'alok12', 'alok', '2021-01-05 18:07:37', '123456789', 1, '25f9e794323b453885f5181f1b624d0b', 0),
(36, 'mallika23', 'mallika', '2021-01-05 18:11:10', '23344', 1, 'ce4cfe05df35297d361dda5fbcf4cf46', 0),
(37, 'me.prince729@gmail.com', 'Prince Kumar Yadav', '2021-01-05 18:11:51', '9565867787', 1, 'd0970714757783e6cf17b26fb8e2298f', 0),
(39, 'ashay2505@gmail.com', 'Danish', '2021-01-05 19:34:43', '456677', 1, '202cb962ac59075b964b07152d234b70', 0),
(40, 'ak17', 'amit', '2021-01-06 14:23:58', '6754565', 1, '202cb962ac59075b964b07152d234b70', 0),
(42, 'smartvishalsingh@gmail.com', 'Vishal', '2021-01-06 15:03:03', '7607906213', 1, '827ccb0eea8a706c4c34a16891f84e7b', 0),
(43, 'admin@gmail.com', 'vaibhav', '2021-01-06 15:03:16', '8736956326', 1, '1f1a538add01fc7818cc5f9652bac7d7', 0),
(44, 'prince1190', 'Prince Kumar Yadav', '2021-01-06 15:19:43', '9565867787', 1, 'd0970714757783e6cf17b26fb8e2298f', 0),
(48, 'amin2', 'adminnew', '2021-01-06 15:57:16', '8766565323', 1, 'c84258e9c39059a89ab77d846ddab909', 0),
(49, 'alizafar', 'Zafar', '2021-01-06 16:21:59', '8736956326', 1, '1b0527a886daeda9d30e54a1beb18eb0', 0),
(50, 'raunak@gmail.com', 'Raunak', '2021-01-06 17:00:30', '9999999999', 1, '827ccb0eea8a706c4c34a16891f84e7b', 0),
(54, 'surya', 'surya1', '2021-01-06 17:52:07', '1234567', 1, 'e10adc3949ba59abbe56e057f20f883e', 0),
(55, 'm27@gmail.com', 'ryyrr', '2021-01-06 18:20:31', '5456454646', 1, 'a71378c0f8d76dbf90feeecd095d0ed9', 0),
(56, 'mallika26', 'mallika', '2021-01-06 18:26:00', '7518448884', 1, 'd16fb36f0911f878998c136191af705e', 0),
(57, 'sunil123@', 'sunil', '2021-01-06 18:29:01', '7905772517', 1, '4ffc911b4c0404a0b76017b5d7bf79b9', 0),
(58, 'a2s', 'Harsh', '2021-01-06 18:31:19', '45677889', 1, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(63, 'g', 'g', '2021-01-06 18:57:03', '5', 1, '6c8349cc7260ae62e3b1396831a8398f', 0),
(64, 'alok', 'alokw', '2021-01-06 19:44:36', '12345677', 1, 'bad220c335d0c1f53548f6acdb17e265', 0),
(65, 'harshvikramsingh88@gmail.com', 'harsh', '2021-01-06 19:51:45', '8948264854', 1, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(66, 'vricha217@gmail.com', 'rich', '2021-01-07 09:50:17', '639322', 1, '202cb962ac59075b964b07152d234b70', 0),
(68, 'yashsaxena', 'yash', '2021-01-07 10:54:31', '7084161028454', 1, '827ccb0eea8a706c4c34a16891f84e7b', 0),
(69, 'v', 'v', '2021-01-07 11:11:55', '2333', 1, '8613985ec49eb8f757ae6439e879bb2a', 0),
(70, 'amit@gmail.com', 'Amit', '2021-01-07 12:44:35', '7896541325', 1, 'e10adc3949ba59abbe56e057f20f883e', 0),
(71, 'abc@gmail.com', 'abc', '2021-01-07 12:44:38', '5678990', 1, 'fd2cc6c54239c40495a0d3a93b6380eb', 0),
(72, 'rajmca', 'raj', '2021-01-07 13:08:42', '999938382', 1, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(73, 'shall@will.com', 'shall', '2021-01-07 15:54:20', '9876543', 1, 'e834955cdb1984d34b24c53ebe5bf211', 0),
(74, 'stuti@123', 'STUTI', '2021-01-08 12:40:43', '4561234755', 1, 'f5bb0c8de146c67b44babbf4e6584cc0', 0),
(75, 'abcd@gmail.com', 'abcd', '2021-01-08 13:35:32', '123', 1, '5f4dcc3b5aa765d61d8327deb882cf99', 0),
(76, 'hyx', 'xyz', '2021-01-08 14:26:29', '3434', 1, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(77, 'admin', 'admin', '2021-01-08 16:11:30', '9198486869', 1, '0192023a7bbd73250516f069df18b500', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  ADD PRIMARY KEY (`ride_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  MODIFY `ride_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  ADD CONSTRAINT `tbl_ride_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
