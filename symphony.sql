-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2018 at 04:24 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symphony`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `travelledDistance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `make`, `model`, `travelledDistance`) VALUES
(1, 'Opel', 'Omega', 2147483647),
(2, 'Opel', 'Astra', 9223372036854775807),
(3, 'Opel', 'Astra', 922337203685807),
(4, 'Opel', 'Corsa', 214747),
(5, 'Opel', 'Kadet', 21474847),
(6, 'Opel', 'Vectra', 9223372854775807),
(7, 'Opel', 'Insignia', 2147483647),
(8, 'Opel', 'Astra', 922336854775807),
(9, 'Opel', 'Corsa', 21474847),
(10, 'Opel', 'Omega', 2147483647),
(11, 'Opel', 'Insignia', 9223372036854775807),
(12, 'Opel', 'Vectra', 2147483647),
(13, 'Opel', 'Astra', 2147483647),
(14, 'Opel', 'Omega', 2147483647),
(15, 'Opel', 'Corsa', 2147483647),
(16, 'Opel', 'Insignia', 9223372036854775807),
(17, 'Opel', 'Omega', 9223336854775807),
(18, 'Opel', 'Corsa', 2),
(19, 'Opel', 'Omega', 1),
(20, 'BMW', 'F20', 2147483647),
(21, 'BMW', 'F25', 9223372036854775807),
(22, 'BMW', 'M5 F10', 10),
(23, 'BMW', 'F04', 100000),
(24, 'BMW', 'E88', 200000),
(25, 'BMW', 'M Roadster E85', 92233720365807),
(26, 'BMW', '1M Coupe', 2147),
(27, 'BMW', 'X6 M', 922775807),
(28, 'BMW', 'E67', 21447),
(29, 'BMW', 'M6 E63', 92235807),
(30, 'BMW', 'M6 E63', 2147),
(31, 'BMW', 'F20', 21447),
(32, 'BMW', 'F04', 2143647),
(33, 'BMW', 'M5 F10', 27483647),
(34, 'BMW', 'X6 M', 2036854775807),
(35, 'BMW', 'F20', 83647),
(36, 'BMW', 'X6 M', 483647),
(37, 'BMW', 'F04', 483647),
(38, 'BMW', 'F20', 975807),
(39, 'BMW', 'M6 E63', 214747),
(40, 'Fiat', 'Panda', 92233854775807),
(41, 'Fiat', 'Panda 4x4 Antarctica', 214747),
(42, 'Fiat', '500 (2007) Abarth 695 Tributo Maserati', 214747),
(43, 'Fiat', 'Panda 4x4 Antarctica', 2183647),
(44, 'Fiat', 'Panda 4x4', 2147447),
(45, 'Fiat', 'Panda', 21447),
(46, 'Fiat', 'Freemont', 214647),
(47, 'Fiat', '500L', 21474847),
(48, 'Fiat', 'Panda', 21474837),
(49, 'Fiat', 'Freemont', 92233685477),
(50, 'Fiat', 'Panda 4x4', 92233736854775807),
(51, 'Fiat', 'Panda 4x4 Antarctica', 21483647),
(52, 'Fiat', '500L', 2147647),
(53, 'Fiat', '500L', 92233754775807),
(54, 'Fiat', '500 (2007) Abarth 695 Tributo Maserati', 922337205807),
(55, 'Fiat', 'Panda', 2147487),
(56, 'Fiat', '500L', 922337204775807),
(57, 'Fiat', 'Freemont', 21473647),
(58, 'Fiat', 'Panda 4x4', 922036854775807),
(59, 'Fiat', '500 (2007) Abarth 695 Tributo Maserati', 92236854775807),
(60, 'Fiat', 'Freemont', 2147647),
(61, 'Fiat', '500L', 922337203675807),
(62, 'Mercedes', 'A 140', 92233754775807),
(63, 'Mercedes', 'W212', 2147647),
(64, 'Mercedes', 'A 160', 9223372036),
(65, 'Mercedes', 'A 160 CDI', 4775807),
(66, 'Mercedes', 'W212', 54775807),
(67, 'Mercedes', 'W202', 92233754775807),
(68, 'Mercedes', 'W211', 47757),
(69, 'Mercedes', 'A 170 CDI', 9223775807),
(70, 'Mercedes', 'W212', 927254775807),
(71, 'Mercedes', 'W124', 922336854775807),
(72, 'Mercedes', 'W210', 9223372036854775807),
(73, 'Mercedes', 'W202', 2147647),
(74, 'Mercedes', 'W211', 922775807),
(75, 'Mercedes', 'W212', 2183647),
(76, 'Mercedes', 'W203', 5807),
(77, 'Mercedes', 'W211', 92775807),
(78, 'Mercedes', 'W210', 2147483647),
(79, 'Mercedes', 'W204', 9285807),
(80, 'Mercedes', 'W124', 2147647),
(81, 'Mercedes', 'W212', 927),
(82, 'Ford', 'Fiesta', 922807),
(83, 'Ford', 'Pinto', 9854775807),
(84, 'Ford', 'Torino', 2147),
(85, 'Ford', 'Fiesta', 214647),
(86, 'Ford', 'Pinto', 922337807),
(87, 'Ford', 'Taurus', 21473647),
(88, 'Ford', 'Fiesta', 2143647),
(89, 'Ford', 'Torino', 922337807),
(90, 'Ford', 'Pinto', 922337203),
(91, 'Ford', 'GT40', 92233775807),
(92, 'Ford', 'Pinto', 9223807),
(93, 'Ford', 'GT40', 9223377),
(94, 'Ford', 'Fiesta', 922337775807),
(95, 'Ford', 'Torino', 217),
(96, 'Ford', 'Fiesta', 922375807),
(97, 'Ford', 'Pinto', 214647),
(98, 'Ford', 'Taurus', 9223375807),
(99, 'Ford', 'Fiesta', 214647),
(100, 'Ford', 'Torino', 21474647),
(101, 'Ford', 'Ranger', 9223372007),
(102, 'Ford', 'Pinto', 2147647),
(103, 'Ford', 'Ranger', 92233775807),
(104, 'Toyota', 'Prius', 9223372037),
(105, 'Toyota', 'Tacoma', 96854775807),
(106, 'Toyota', 'Prius', 214747),
(107, 'Toyota', 'Tacoma', 94775807),
(108, 'Toyota', 'Prius', 922337207),
(109, 'Toyota', 'Corolla', 9223854775807),
(110, 'Toyota', 'Yaris', 21477),
(111, 'Toyota', 'Prius', 922337203685),
(112, 'Toyota', 'Camry Hybrid', 92275807),
(113, 'Toyota', 'Corolla', 92235807),
(114, 'Toyota', 'Prius', 21477),
(115, 'Toyota', 'Corolla', 9223807),
(116, 'Toyota', 'Tacoma', 9225807),
(117, 'Toyota', 'Camry Hybrid', 954775807),
(118, 'Toyota', 'Prius', 925807),
(119, 'Toyota', 'Tacoma', 922337807),
(120, 'Toyota', 'Corolla', 2147),
(121, 'Toyota', 'Prius', 21477),
(122, 'Toyota', 'Corolla', 975807),
(123, 'Toyota', 'Yaris', 94775807),
(124, 'Toyota', 'Corolla', 21477),
(125, 'Toyota', 'Prius', 283647),
(126, 'Toyota', 'Tacoma', 927),
(127, 'Toyota', 'Yaris', 9207),
(128, 'Toyota', 'Prius', 92233775807),
(129, 'Toyota', 'Tacoma', 247),
(130, 'Toyota', 'Prius', 9223354775807),
(131, 'Toyota', 'Yaris', 21477),
(132, 'Toyota', 'Prius', 92233775807),
(133, 'Toyota', 'Tacoma', 2147),
(134, 'Toyota', 'Camry Hybrid', 2143647),
(135, 'Toyota', 'Prius', 922337807),
(136, 'Toyota', 'Camry Hybrid', 214647),
(137, 'Toyota', 'Prius', 922335807),
(138, 'Toyota', 'Tacoma', 21474647),
(139, 'Toyota', 'Camry Hybrid', 214647),
(140, 'Nissan', 'GT-R', 21473647),
(141, 'Nissan', 'Altima', 9223372775807),
(142, 'Nissan', 'GT-R', 2147647),
(143, 'Nissan', '370Z', 2143647),
(144, 'Nissan', 'GT-R', 21477),
(145, 'Nissan', 'Altima', 9224775807),
(146, 'Nissan', 'GT-R', 23647),
(147, 'Nissan', '370Z', 922775807),
(148, 'Nissan', '370Z', 21477),
(149, 'Nissan', 'Altima', 2147),
(150, 'Nissan', '370Z', 21447),
(151, 'Nissan', 'Altima', 92233707),
(152, 'Nissan', 'GT-R', 954775807),
(153, 'Nissan', 'Altima', 214647),
(154, 'Nissan', '370Z', 922337205807),
(155, 'Nissan', 'GT-R', 96854775807),
(156, 'Nissan', 'Versa', 9223775807),
(157, 'Nissan', 'Altima', 2147447),
(158, 'Nissan', '370Z', 922307),
(159, 'Nissan', 'GT-R', 2147447),
(160, 'Nissan', 'Rogue', 9223807),
(161, 'Nissan', 'Altima', 213647),
(162, 'Nissan', 'GT-R', 2143647),
(163, 'Nissan', 'Altima', 214747),
(164, 'Nissan', 'Rogue', 214647),
(165, 'Nissan', 'GT-R', 2147483647),
(166, 'Nissan', 'Altima', 2147483647),
(167, 'Nissan', 'Versa', 2143647),
(168, 'Nissan', 'GT-R', 2143647),
(169, 'Nissan', 'Versa', 922775807),
(170, 'Great Wall', 'H2', 9236854775807),
(171, 'Great Wall', 'Haval M4', 213647),
(172, 'Great Wall', 'H2', 21647),
(173, 'Great Wall', 'H8', 21447),
(174, 'Great Wall', 'Steed 3', 922336854775807),
(175, 'Great Wall', 'Wingle 5', 214747),
(176, 'Great Wall', 'Haval M4', 9223372035807),
(177, 'Great Wall', 'Haval H6', 214747),
(178, 'Renault', 'Alaskan', 2647),
(179, 'Renault', 'Clio IV', 2147483647),
(180, 'Renault', 'Duster', 2147483647),
(181, 'Renault', 'Alaskan', 92807),
(182, 'Renault', 'Alaskan', 2147483647),
(183, 'Renault', 'Duster', 922337203685807),
(184, 'Renault', 'Alaskan', 2147483647),
(185, 'Renault', 'Clio IV', 92234775807),
(186, 'Renault', 'Duster', 922337203685807),
(187, 'Renault', 'Alaskan', 92233720375807),
(188, 'Renault', 'Captur', 9223807),
(189, 'Renault', 'Alaskan', 21447),
(190, 'Renault', 'Espace', 9223375807),
(191, 'Renault', 'Alaskan', 2147483647),
(192, 'Renault', 'Captur', 92233724775807),
(193, 'Renault', 'Espace', 2147487),
(194, 'Chevy', 'Camaro', 92233854775807),
(195, 'Chevy', 'Caprice', 2147647),
(196, 'Chevy', 'Camaro', 922335807),
(197, 'Chevy', 'Caprice', 2143647),
(198, 'Chevy', 'Malibu', 92233854775807),
(199, 'Chevy', 'Camaro', 283647),
(200, 'Chevy', 'Impala', 214747),
(201, 'Chevy', 'Malibu', 922337775807),
(202, 'Chevy', 'Impala', 214748347),
(203, 'Chevy', 'Camaro', 21473647),
(204, 'Chevy', 'Camaro', 2147483647),
(205, 'Chevy', 'Corvette', 92233720375807),
(206, 'Chevy', 'Cruze', 92775807),
(207, 'Chevy', 'Corvette', 21474847),
(208, 'Chevy', 'Camaro', 2147487),
(209, 'Chevy', 'Caprice', 2147483647),
(210, 'Chevy', 'Cruze', 9223372034775807),
(211, 'Chevy', 'Caprice', 9223372034775807),
(212, 'Chevy', 'Matiz', 922337203685807),
(213, 'Rolls-Royce', 'Phantom', 2147483647),
(214, 'Rolls-Royce', 'Phantom Drophead Coupé', 92233775807),
(215, 'Rolls-Royce', 'Phantom', 214647),
(216, 'Rolls-Royce', 'Ghost', 21473647),
(217, 'Rolls-Royce', 'Dawn', 214647),
(218, 'Rolls-Royce', 'Phantom', 922337254775807),
(219, 'Rolls-Royce', 'Ghost', 214747),
(220, 'Rolls-Royce', 'Wraith', 2147483647),
(221, 'Rolls-Royce', 'Phantom Drophead Coupé', 922336854775807),
(222, 'Rolls-Royce', 'Wraith', 21647),
(223, 'Rolls-Royce', 'Phantom Drophead Coupé', 9223372075807),
(224, 'Lamborghini', 'Gallardo', 92234775807),
(225, 'Lamborghini', 'Murciélago', 2143647),
(226, 'Lamborghini', 'Diablo', 283647),
(227, 'Lamborghini', 'Gallardo', 9223372054775807),
(228, 'Lamborghini', 'Murciélago', 214783647),
(229, 'Lamborghini', 'Gallardo', 923372054775807),
(230, 'Lamborghini', 'Diablo', 2147483647),
(231, 'Ferrari', 'Daytona', 92036854775807),
(232, 'Ferrari', '250 GTO', 214747),
(233, 'Ferrari', 'F430', 2147647),
(234, 'Ferrari', '275', 92854775807),
(235, 'Ferrari', 'F430', 92236854775807),
(236, 'Ferrari', 'F40', 2647),
(237, 'Ferrari', '250 GTO', 214747),
(238, 'Ferrari', 'Daytona', 922337275807),
(239, 'Ferrari', '275', 214647),
(240, 'Ferrari', '250 GTO', 2183647),
(241, 'Ferrari', 'F40', 214647),
(242, 'Ferrari', '250 GTO', 213647),
(243, 'Ferrari', 'F430', 214647),
(244, 'Ferrari', 'Daytona', 213647),
(245, 'Ferrari', 'F40', 21447),
(246, 'Ferrari', '250 GTO', 213647),
(247, 'Ferrari', '275', 2147647),
(248, 'Ferrari', 'Enzo', 2147483647),
(249, 'Ferrari', 'Daytona', 2147447),
(250, 'Alfa Romeo', 'Giulia', 214647),
(251, 'Alfa Romeo', 'Giulietta', 21474847),
(252, 'Alfa Romeo', 'AR51', 2147483647),
(253, 'Alfa Romeo', 'Alfetta', 92233720775807),
(254, 'Alfa Romeo', '75', 9223372775807),
(255, 'Alfa Romeo', 'AR51', 922337275807),
(256, 'Alfa Romeo', '156', 92233720368547),
(257, 'Alfa Romeo', 'Giulietta', 922337203685807),
(258, 'Alfa Romeo', '164', 92233775807),
(259, 'Alfa Romeo', '75', 72036854775807),
(260, 'Alfa Romeo', 'Giulietta', 2036854775807),
(261, 'Alfa Romeo', '156', 92036854775807),
(262, 'Alfa Romeo', 'Giulietta', 2036854775807),
(263, 'Alfa Romeo', '75', 9775807),
(264, 'Peugeot', '206', 214647),
(265, 'Peugeot', '405', 92236854775807),
(266, 'Peugeot', '206', 2147483647),
(267, 'Peugeot', '405', 922854775807),
(268, 'Peugeot', '306', 2036854775807),
(269, 'Peugeot', '308', 775807),
(270, 'Peugeot', '407', 854775807),
(271, 'Peugeot', '306', 2147483647),
(272, 'Peugeot', '308', 854775807),
(273, 'Peugeot', '405', 9226854775807),
(274, 'Peugeot', '306', 21474647),
(275, 'Peugeot', '407', 922036854775807),
(276, 'Peugeot', '206', 21474647),
(277, 'Peugeot', '407', 9223372775807),
(278, 'Peugeot', '206', 922036854775807),
(279, 'Peugeot', '308', 23647),
(280, 'Peugeot', '405', 92036854775807),
(281, 'Peugeot', '306', 2147483647),
(282, 'Peugeot', '405', 92233854775807),
(283, 'Peugeot', '308', 2147483647),
(284, 'Peugeot', '206', 922775807),
(285, 'Peugeot', '206', 214748347),
(286, 'Citroen', 'Berlingo', 922354775807),
(287, 'Citroen', 'C1', 924775807),
(288, 'Citroen', 'Berlingo', 9223354775807),
(289, 'Citroen', 'C5', 922334775807),
(290, 'Citroen', 'C5', 213647),
(291, 'Citroen', 'C8', 2147447),
(292, 'Citroen', 'Elysée', 922354775807),
(293, 'Citroen', 'C1', 2147),
(294, 'Citroen', 'C4', 2147487),
(295, 'Citroen', 'C5', 922337204775807),
(296, 'Citroen', 'C1', 922337854775807),
(297, 'Citroen', 'C3', 214647),
(298, 'Citroen', 'C1', 2483647),
(299, 'Citroen', 'C4', 92236854775807),
(300, 'Citroen', 'C1', 922336854775807),
(301, 'Citroen', 'C5', 2147483647),
(302, 'Citroen', 'C3', 2147647),
(303, 'Citroen', 'C8', 92236854775807),
(304, 'Citroen', 'C1', 2147483647),
(305, 'Citroen', 'C3', 9223336854775807),
(306, 'Citroen', 'Elysée', 23336854775),
(307, 'Citroen', 'C1', 92236854775807),
(308, 'Citroen', 'C4', 213647),
(309, 'Citroen', 'C3', 2147647),
(310, 'Citroen', 'C1', 9223775807),
(311, 'Citroen', 'C5', 2183647),
(312, 'Citroen', 'C1', 9854775807),
(313, 'Citroen', 'C8', 83647),
(314, 'Seat', 'Toledo', 21483647),
(315, 'Seat', 'Mii', 214783647),
(316, 'Seat', 'Ibiza', 21647),
(317, 'Seat', 'Mii', 2147447),
(318, 'Seat', 'Ibiza', 213647),
(319, 'Seat', 'Mii', 21447),
(320, 'Seat', 'Toledo', 2147647),
(321, 'Seat', 'Toledo', 21473647),
(322, 'Seat', 'Ibiza', 92234775807),
(323, 'Seat', 'Mii', 936854775807),
(324, 'Seat', 'Toledo', 21447),
(325, 'Seat', 'Mii', 214747),
(326, 'Seat', 'Toledo', 2147647),
(327, 'Seat', 'Ibiza', 21474847),
(328, 'Seat', 'Toledo', 2147447),
(329, 'Seat', 'Mii', 92236854775807),
(330, 'Skoda', 'Citigo', 214647),
(331, 'Skoda', 'Rapid Spaceback', 685477580),
(332, 'Skoda', 'Citigo', 92233854775807),
(333, 'Skoda', 'Citigo', 2183647),
(334, 'Skoda', 'Citigo', 214747),
(335, 'Skoda', 'Fabia', 9223372036875807),
(336, 'Skoda', 'Citigo', 214647),
(337, 'Skoda', 'Fabia', 214747),
(338, 'Skoda', 'Rapid', 9223372775807),
(339, 'Skoda', 'Fabia', 214647),
(340, 'Skoda', 'Fabia', 922337203775807),
(341, 'Skoda', 'Rapid', 2147447),
(342, 'Skoda', 'Rapid Spaceback', 474),
(343, 'Skoda', 'Fabia', 92233720368807),
(344, 'Dacia', 'Logan', 9036854775807),
(345, 'Dacia', 'Sandero Stepway', 92233724775807),
(346, 'Dacia', 'Sandero', 2147647),
(347, 'Dacia', 'Dokker', 213647),
(348, 'Dacia', 'Sandero', 2143647),
(349, 'Dacia', 'Logan', 21474647),
(350, 'Dacia', 'Logan', 9275807),
(351, 'Dacia', 'Dokker', 2147647),
(352, 'Dacia', 'Sandero', 922337254775807),
(353, 'Dacia', 'Dokker', 2147447),
(354, 'Dacia', 'Logan', 922337203687),
(355, 'Dacia', 'Duster', 21447),
(356, 'Dacia', 'Sandero Stepway', 922337807),
(357, 'Dacia', 'Duster', 922375807),
(358, 'Dacia', 'Logan', 213647);

-- --------------------------------------------------------

--
-- Table structure for table `cars_parts`
--

CREATE TABLE `cars_parts` (
  `car_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars_parts`
--

INSERT INTO `cars_parts` (`car_id`, `part_id`) VALUES
(1, 4),
(20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthDate` date NOT NULL,
  `isYoungDriver` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `birthDate`, `isYoungDriver`) VALUES
(1, 'Emmitt Benally', '1993-11-20', 1),
(2, 'Natalie Poli', '1990-10-04', 0),
(3, 'Marcelle Griego', '1990-10-04', 1),
(4, 'Zada Attwood', '1982-10-01', 1),
(5, 'Hai Everton', '1985-10-01', 1),
(6, 'Lino Subia', '1985-12-21', 0),
(7, 'Rico Peer', '1984-10-01', 1),
(8, 'Teddy Hobby', '1975-10-01', 1),
(9, 'Johnette Derryberry', '1995-10-01', 1),
(10, 'Audrea Cardinal', '1976-10-01', 0),
(11, 'Francis Mckim', '1977-10-01', 1),
(12, 'Carole Witman', '1987-10-01', 0),
(13, 'Oren Perlman', '1988-10-01', 1),
(14, 'Brett Brickley', '1980-10-01', 1),
(15, 'Kristian Engberg', '1981-10-03', 0),
(16, 'Carri Knapik', '1972-02-02', 1),
(17, 'Rema Revelle', '1970-05-01', 1),
(18, 'Taina Achenbach', '1994-10-01', 0),
(19, 'Yvonne Mccalla', '1992-03-02', 1),
(20, 'Nisha Markwell', '1994-04-04', 0),
(21, 'Cinthia Lasala', '1992-11-01', 1),
(22, 'Daniele Zarate', '1995-10-05', 0),
(23, 'Faustina Burgher', '1994-06-01', 0),
(24, 'Jimmy Grossi', '1986-07-01', 1),
(25, 'Sylvie Mcelravy', '1983-10-01', 0),
(26, 'Hipolito Lamoreaux', '1982-08-01', 1),
(27, 'Garret Capron', '1975-07-01', 0),
(28, 'Donnetta Soliz', '1963-10-01', 1),
(29, 'Louann Holzworth', '1960-10-01', 0),
(30, 'Ann Mcenaney', '1992-03-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20181130122932');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `supplier_id`, `name`, `price`, `quantity`) VALUES
(3, 1, 'Wheel', '100', 2),
(4, 2, 'Engine', '200', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `car_id`, `discount`) VALUES
(1, 1, 5, 5.5),
(2, 2, 16, 6.6);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isImporter` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `isImporter`) VALUES
(1, 'Angel Angelov', 0),
(2, 'Ivan Ivanov', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars_parts`
--
ALTER TABLE `cars_parts`
  ADD PRIMARY KEY (`car_id`,`part_id`),
  ADD KEY `IDX_F30DF478C3C6F69F` (`car_id`),
  ADD KEY `IDX_F30DF4784CE34BEC` (`part_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6940A7FE2ADD6D8C` (`supplier_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6B8170449395C3F3` (`customer_id`),
  ADD KEY `IDX_6B817044C3C6F69F` (`car_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars_parts`
--
ALTER TABLE `cars_parts`
  ADD CONSTRAINT `FK_F30DF4784CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `parts` (`id`),
  ADD CONSTRAINT `FK_F30DF478C3C6F69F` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);

--
-- Constraints for table `parts`
--
ALTER TABLE `parts`
  ADD CONSTRAINT `FK_6940A7FE2ADD6D8C` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `FK_6B8170449395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `FK_6B817044C3C6F69F` FOREIGN KEY (`car_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
