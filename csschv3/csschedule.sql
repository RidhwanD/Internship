-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2017 at 03:08 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csschedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `actual`
--

CREATE TABLE `actual` (
  `idTask` int(11) NOT NULL,
  `exeDate` varchar(20) NOT NULL,
  `namaRuangan` varchar(30) DEFAULT NULL,
  `shift` varchar(20) NOT NULL,
  `namaPegawai` varchar(30) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `occurence` int(11) NOT NULL,
  `startTime` varchar(10) NOT NULL,
  `endTime` varchar(10) NOT NULL,
  `actEndTime` varchar(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `delay` tinyint(1) NOT NULL,
  `status_sms` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `area` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actual`
--

INSERT INTO `actual` (`idTask`, `exeDate`, `namaRuangan`, `shift`, `namaPegawai`, `kontak`, `duration`, `occurence`, `startTime`, `endTime`, `actEndTime`, `status`, `delay`, `status_sms`, `id`, `area`) VALUES
(21, '06-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 2, '16:35', '16:44', NULL, 0, 1, 1, 41, 'LT 3'),
(56, '06-07-2017', 'PANTRY', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:30', '18:34', NULL, 0, 1, 1, 42, 'LT 3'),
(62, '06-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '14:25', '14:29', NULL, 0, 1, 1, 43, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 7, '16:00', '16:14', NULL, 0, 1, 1, 44, 'LT 3'),
(12, '06-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '13:15', '13:19', NULL, 0, 1, 1, 45, 'LT 3'),
(29, '06-07-2017', 'R. LEGAL', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:25', '19:29', NULL, 0, 1, 1, 46, 'LT 3'),
(35, '06-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:35', '19:39', NULL, 0, 1, 1, 47, 'LT 3'),
(41, '06-07-2017', 'R. INTERVIEW', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:45', '18:49', NULL, 0, 1, 1, 48, 'LT 3'),
(47, '06-07-2017', 'R. BUYER 2', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:35', '18:39', NULL, 0, 1, 1, 49, 'LT 3'),
(70, '06-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '14:15', '14:24', NULL, 0, 1, 1, 50, 'LT 3'),
(75, '06-07-2017', 'R. MEETING ATSG', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '20:00', '20:04', NULL, 0, 1, 1, 51, 'LT 3'),
(81, '06-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '20:15', '20:24', NULL, 0, 1, 1, 52, 'LT 3'),
(87, '06-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '20:35', '20:44', NULL, 0, 1, 1, 53, 'LT 3'),
(93, '06-07-2017', 'LOBBY LIFT', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '15:45', '15:59', NULL, 0, 1, 1, 54, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 2, '13:30', '13:44', NULL, 0, 1, 1, 55, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 10, '17:15', '17:29', NULL, 0, 1, 1, 56, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 5, '15:00', '15:14', NULL, 0, 1, 1, 57, 'LT 3'),
(16, '06-07-2017', 'R. MEETING RUSH 1', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:05', '19:09', NULL, 0, 1, 1, 58, 'LT 3'),
(62, '06-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 2, '16:25', '16:29', NULL, 0, 1, 1, 59, 'LT 3'),
(68, '06-07-2017', 'R. MEETING CAMRY 2', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '20:05', '20:09', NULL, 0, 1, 1, 60, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 8, '16:30', '16:44', NULL, 0, 1, 1, 61, 'LT 3'),
(12, '06-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 2, '16:15', '16:19', NULL, 0, 1, 1, 62, 'LT 3'),
(70, '06-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 2, '16:15', '16:24', NULL, 0, 1, 1, 63, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 3, '14:00', '14:14', NULL, 0, 1, 1, 64, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 11, '18:00', '18:14', NULL, 0, 1, 1, 65, 'LT 3'),
(21, '06-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '13:20', '13:29', NULL, 0, 1, 1, 66, 'LT 3'),
(26, '06-07-2017', 'R. REMUNERATION', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:55', '18:59', NULL, 0, 1, 1, 67, 'LT 3'),
(32, '06-07-2017', 'EXPATRIAT AREA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:30', '19:34', NULL, 0, 1, 1, 68, 'LT 3'),
(38, '06-07-2017', 'R. CONSELING', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:50', '18:54', NULL, 0, 1, 1, 69, 'LT 3'),
(44, '06-07-2017', 'R. BUYER 1', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:40', '18:44', NULL, 0, 1, 1, 70, 'LT 3'),
(78, '06-07-2017', 'R. CRISIS CENTER', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:55', '19:59', NULL, 0, 1, 1, 71, 'LT 3'),
(84, '06-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '20:25', '20:34', NULL, 0, 1, 1, 72, 'LT 3'),
(90, '06-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '19:45', '19:54', NULL, 0, 1, 1, 73, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 6, '15:30', '15:44', NULL, 0, 1, 1, 74, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 75, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 9, '17:00', '17:14', NULL, 0, 1, 1, 76, 'LT 3'),
(13, '06-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '19:10', '19:24', NULL, 0, 1, 1, 77, 'LT 3'),
(19, '06-07-2017', 'R. MEETING RUSH 2', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:00', '19:04', NULL, 0, 1, 1, 78, 'LT 3'),
(65, '06-07-2017', 'R. MEETING CAMRY 1', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '20:10', '20:14', NULL, 0, 1, 1, 79, 'LT 3'),
(99, '06-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 4, '14:30', '14:44', NULL, 0, 1, 1, 80, 'LT 3'),
(98, '06-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '08:15', '08:29', NULL, 1, 1, 1, 181, 'LT 3'),
(736, '07-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 243, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 244, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 245, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 246, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 247, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 10, '12:45', '12:59', NULL, 0, 1, 1, 248, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 12, '13:45', '13:59', NULL, 0, 1, 1, 249, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 14, '14:45', '14:59', NULL, 0, 1, 1, 250, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 16, '15:45', '15:59', NULL, 0, 1, 1, 251, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 18, '16:45', '16:59', NULL, 0, 1, 1, 252, 'LT 3'),
(736, '07-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 2, '15:00', '15:14', NULL, 0, 1, 1, 253, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 254, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 255, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 256, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 257, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 9, '12:15', '12:29', NULL, 0, 1, 1, 258, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 11, '13:15', '13:29', NULL, 0, 1, 1, 259, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 13, '14:15', '14:29', NULL, 0, 1, 1, 260, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 15, '15:15', '15:29', NULL, 0, 1, 1, 261, 'LT 3'),
(742, '07-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 17, '16:15', '16:29', NULL, 0, 1, 1, 262, 'LT 3'),
(655, '07-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 2, '16:15', '16:19', NULL, 0, 1, 1, 263, 'LT 3'),
(664, '07-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 2, '16:35', '16:44', NULL, 0, 1, 1, 264, 'LT 3'),
(699, '07-07-2017', 'PANTRY', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:30', '18:34', NULL, 0, 1, 1, 265, 'LT 3'),
(706, '07-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 2, '16:25', '16:29', NULL, 0, 1, 1, 266, 'LT 3'),
(709, '07-07-2017', 'R. MEETING CAMRY 1', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '20:10', '20:14', NULL, 0, 1, 1, 267, 'LT 3'),
(712, '07-07-2017', 'R. MEETING CAMRY 2', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '20:05', '20:09', NULL, 0, 1, 1, 268, 'LT 3'),
(714, '07-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '14:15', '14:24', NULL, 0, 1, 1, 269, 'LT 3'),
(719, '07-07-2017', 'R. MEETING ATSG', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '20:00', '20:04', NULL, 0, 1, 1, 270, 'LT 3'),
(722, '07-07-2017', 'R. CRISIS CENTER', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:55', '19:59', NULL, 0, 1, 1, 271, 'LT 3'),
(725, '07-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '20:15', '20:24', NULL, 0, 1, 1, 272, 'LT 3'),
(728, '07-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '20:25', '20:34', NULL, 0, 1, 1, 273, 'LT 3'),
(731, '07-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '20:35', '20:44', NULL, 0, 1, 1, 274, 'LT 3'),
(734, '07-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '19:45', '19:54', NULL, 0, 1, 1, 275, 'LT 3'),
(737, '07-07-2017', 'LOBBY LIFT', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '15:45', '15:59', NULL, 0, 1, 1, 276, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 2, '13:30', '13:44', NULL, 0, 1, 1, 277, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 4, '14:30', '14:44', NULL, 0, 1, 1, 278, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 6, '15:30', '15:44', NULL, 0, 1, 1, 279, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 8, '16:30', '16:44', NULL, 0, 1, 1, 280, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 10, '17:30', '17:44', NULL, 0, 1, 1, 281, 'LT 3'),
(655, '07-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '13:15', '13:19', NULL, 0, 1, 1, 282, 'LT 3'),
(656, '07-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '19:10', '19:24', NULL, 0, 1, 1, 283, 'LT 3'),
(659, '07-07-2017', 'R. MEETING RUSH 1', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:05', '19:09', NULL, 0, 1, 1, 284, 'LT 3'),
(662, '07-07-2017', 'R. MEETING RUSH 2', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:00', '19:04', NULL, 0, 1, 1, 285, 'LT 3'),
(664, '07-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 1, '13:20', '13:29', NULL, 0, 1, 1, 286, 'LT 3'),
(669, '07-07-2017', 'R. REMUNERATION', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:55', '18:59', NULL, 0, 1, 1, 287, 'LT 3'),
(672, '07-07-2017', 'R. LEGAL', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:25', '19:29', NULL, 0, 1, 1, 288, 'LT 3'),
(675, '07-07-2017', 'EXPATRIAT AREA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:30', '19:34', NULL, 0, 1, 1, 289, 'LT 3'),
(678, '07-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '19:35', '19:39', NULL, 0, 1, 1, 290, 'LT 3'),
(681, '07-07-2017', 'R. CONSELING', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:50', '18:54', NULL, 0, 1, 1, 291, 'LT 3'),
(684, '07-07-2017', 'R. INTERVIEW', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:45', '18:49', NULL, 0, 1, 1, 292, 'LT 3'),
(687, '07-07-2017', 'R. BUYER 1', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:40', '18:44', NULL, 0, 1, 1, 293, 'LT 3'),
(690, '07-07-2017', 'R. BUYER 2', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '18:35', '18:39', NULL, 0, 1, 1, 294, 'LT 3'),
(702, '07-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '20:45', '20:59', NULL, 0, 1, 1, 295, 'LT 3'),
(706, '07-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 5, 1, '14:25', '14:29', NULL, 0, 1, 1, 296, 'LT 3'),
(714, '07-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 10, 2, '16:15', '16:24', NULL, 0, 1, 1, 297, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 298, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 3, '14:00', '14:14', NULL, 0, 1, 1, 299, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 5, '15:00', '15:14', NULL, 0, 1, 1, 300, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 7, '16:00', '16:14', NULL, 0, 1, 1, 301, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 9, '17:00', '17:14', NULL, 0, 1, 1, 302, 'LT 3'),
(743, '07-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan Dewoprabowo', '082329356023', 15, 11, '18:00', '18:14', NULL, 0, 1, 1, 303, 'LT 3'),
(654, '10-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Ridhwan', '082329356023', 5, 2, '10:30', '10:34', NULL, 0, 1, 1, 566, 'LT 3'),
(663, '10-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(L)', 'Ridhwan', '082329356023', 10, 1, '06:50', '06:59', NULL, 0, 1, 1, 567, 'LT 3'),
(705, '10-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Ridhwan', '082329356023', 5, 2, '10:25', '10:29', NULL, 0, 1, 1, 568, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 1, '06:00', '06:14', NULL, 0, 1, 1, 569, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 570, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 571, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 572, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 573, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 574, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 13, '12:30', '12:44', NULL, 0, 1, 1, 575, 'LT 3'),
(654, '10-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Ridhwan', '082329356023', 5, 1, '06:45', '06:49', NULL, 0, 1, 1, 576, 'LT 3'),
(698, '10-07-2017', 'PANTRY', 'Shift 1(L)', 'Ridhwan', '082329356023', 5, 1, '09:15', '09:19', NULL, 0, 1, 1, 577, 'LT 3'),
(705, '10-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Ridhwan', '082329356023', 5, 1, '06:25', '06:29', NULL, 0, 1, 1, 578, 'LT 3'),
(713, '10-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(L)', 'Ridhwan', '082329356023', 10, 1, '06:15', '06:24', NULL, 0, 1, 1, 579, 'LT 3'),
(735, '10-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 1, '06:30', '06:44', NULL, 0, 1, 1, 580, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 581, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 582, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 583, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 584, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 585, 'LT 3'),
(741, '10-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Ridhwan', '082329356023', 15, 12, '12:00', '12:14', NULL, 0, 1, 1, 586, 'LT 3'),
(652, '10-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Percobaan', '082329356023', 5, 2, '12:40', '12:44', NULL, 0, 1, 1, 587, 'LT 3'),
(657, '10-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:57', '06:59', NULL, 0, 1, 1, 588, 'LT 3'),
(660, '10-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 589, 'LT 3'),
(665, '10-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:48', '12:50', NULL, 0, 1, 1, 590, 'LT 3'),
(667, '10-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '07:04', '07:06', NULL, 0, 1, 1, 591, 'LT 3'),
(670, '10-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:47', '06:49', NULL, 0, 1, 1, 592, 'LT 3'),
(673, '10-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:44', '06:46', NULL, 0, 1, 1, 593, 'LT 3'),
(676, '10-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:40', '06:42', NULL, 0, 1, 1, 594, 'LT 3'),
(679, '10-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '07:07', '07:09', NULL, 0, 1, 1, 595, 'LT 3'),
(682, '10-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '07:10', '07:12', NULL, 0, 1, 1, 596, 'LT 3'),
(685, '10-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '07:13', '07:15', NULL, 0, 1, 1, 597, 'LT 3'),
(688, '10-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '07:16', '07:18', NULL, 0, 1, 1, 598, 'LT 3'),
(693, '10-07-2017', 'R. LAKTASI', 'Shift 1(P)', 'Percobaan', '082329356023', 5, 1, '08:45', '08:49', NULL, 0, 1, 1, 599, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 1, '06:00', '06:14', NULL, 0, 1, 1, 600, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 601, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 602, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 603, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 604, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 605, 'LT 3'),
(703, '10-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Percobaan', '082329356023', 5, 1, '06:24', '06:28', NULL, 0, 1, 1, 606, 'LT 3'),
(707, '10-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:14', '12:16', NULL, 0, 1, 1, 607, 'LT 3'),
(710, '10-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:17', '12:19', NULL, 0, 1, 1, 608, 'LT 3'),
(715, '10-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:34', '06:36', NULL, 0, 1, 1, 609, 'LT 3'),
(717, '10-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Percobaan', '082329356023', 2, 2, '12:23', '12:24', NULL, 0, 1, 1, 610, 'LT 3'),
(720, '10-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Percobaan', '082329356023', 2, 2, '12:25', '12:26', NULL, 0, 1, 1, 611, 'LT 3'),
(723, '10-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:06', '12:08', NULL, 0, 1, 1, 612, 'LT 3'),
(726, '10-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:03', '12:05', NULL, 0, 1, 1, 613, 'LT 3'),
(729, '10-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:00', '12:02', NULL, 0, 1, 1, 614, 'LT 3'),
(732, '10-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Percobaan', '082329356023', 2, 2, '12:27', '12:28', NULL, 0, 1, 1, 615, 'LT 3'),
(738, '10-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Percobaan', '082329356023', 10, 2, '09:15', '09:24', NULL, 0, 1, 1, 616, 'LT 3'),
(652, '10-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Percobaan', '082329356023', 5, 1, '06:50', '06:54', NULL, 0, 1, 1, 617, 'LT 3'),
(657, '10-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:12', '12:14', NULL, 0, 1, 1, 618, 'LT 3'),
(660, '10-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:15', '12:17', NULL, 0, 1, 1, 619, 'LT 3'),
(665, '10-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 620, 'LT 3'),
(667, '10-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:51', '12:53', NULL, 0, 1, 1, 621, 'LT 3'),
(670, '10-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:37', '12:39', NULL, 0, 1, 1, 622, 'LT 3'),
(673, '10-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:34', '12:36', NULL, 0, 1, 1, 623, 'LT 3'),
(676, '10-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:30', '12:32', NULL, 0, 1, 1, 624, 'LT 3'),
(679, '10-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:54', '12:56', NULL, 0, 1, 1, 625, 'LT 3'),
(682, '10-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:57', '12:59', NULL, 0, 1, 1, 626, 'LT 3'),
(685, '10-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '13:00', '13:02', NULL, 0, 1, 1, 627, 'LT 3'),
(688, '10-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '13:03', '13:05', NULL, 0, 1, 1, 628, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 629, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 630, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 631, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 632, 'LT 3'),
(695, '10-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Percobaan', '082329356023', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 633, 'LT 3'),
(700, '10-07-2017', 'PANTRY', 'Shift 1(P)', 'Percobaan', '082329356023', 10, 1, '08:50', '08:59', NULL, 0, 1, 1, 634, 'LT 3'),
(703, '10-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Percobaan', '082329356023', 5, 2, '12:09', '12:13', NULL, 0, 1, 1, 635, 'LT 3'),
(707, '10-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:28', '06:30', NULL, 0, 1, 1, 636, 'LT 3'),
(710, '10-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:31', '06:33', NULL, 0, 1, 1, 637, 'LT 3'),
(715, '10-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 2, '12:20', '12:22', NULL, 0, 1, 1, 638, 'LT 3'),
(717, '10-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Percobaan', '082329356023', 2, 1, '06:37', '06:38', NULL, 0, 1, 1, 639, 'LT 3'),
(720, '10-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Percobaan', '082329356023', 2, 1, '06:39', '06:40', NULL, 0, 1, 1, 640, 'LT 3'),
(723, '10-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:21', '06:23', NULL, 0, 1, 1, 641, 'LT 3'),
(726, '10-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:18', '06:20', NULL, 0, 1, 1, 642, 'LT 3'),
(729, '10-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Percobaan', '082329356023', 3, 1, '06:15', '06:17', NULL, 0, 1, 1, 643, 'LT 3'),
(732, '10-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Percobaan', '082329356023', 2, 1, '06:41', '06:42', NULL, 0, 1, 1, 644, 'LT 3'),
(738, '10-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Percobaan', '082329356023', 10, 1, '07:15', '07:24', NULL, 0, 1, 1, 645, 'LT 3'),
(738, '10-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Percobaan', '082329356023', 10, 3, '11:15', '11:24', NULL, 0, 1, 1, 646, 'LT 3'),
(736, '10-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 647, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 648, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 649, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 650, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 651, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 10, '12:45', '12:59', NULL, 0, 1, 1, 652, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 12, '13:45', '13:59', NULL, 0, 1, 1, 653, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 14, '14:45', '14:59', NULL, 0, 1, 1, 654, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 16, '15:45', '15:59', NULL, 0, 1, 1, 655, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 18, '16:45', '16:59', NULL, 0, 1, 1, 656, 'LT 3'),
(736, '10-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 2, '15:00', '15:14', NULL, 0, 1, 1, 657, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 658, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 659, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 660, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 661, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 9, '12:15', '12:29', NULL, 0, 1, 1, 662, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 11, '13:15', '13:29', NULL, 0, 1, 1, 663, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 13, '14:15', '14:29', NULL, 0, 1, 1, 664, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 15, '15:15', '15:29', NULL, 0, 1, 1, 665, 'LT 3'),
(742, '10-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Ridhwan', '082329356023', 15, 17, '16:15', '16:29', NULL, 0, 1, 1, 666, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 667, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 668, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 669, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 670, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 10, '12:15', '12:29', NULL, 0, 1, 1, 671, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 12, '12:45', '12:59', NULL, 0, 1, 1, 672, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 14, '13:45', '13:59', NULL, 0, 1, 1, 673, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 16, '14:45', '14:59', NULL, 0, 1, 1, 674, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 18, '15:45', '15:59', NULL, 0, 1, 1, 675, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 20, '16:45', '16:59', NULL, 0, 1, 1, 676, 'LT 3'),
(739, '10-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Percobaan', '082329356023', 10, 1, '13:00', '13:09', NULL, 0, 1, 1, 677, 'LT 3'),
(739, '10-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Percobaan', '082329356023', 10, 3, '16:35', '16:44', NULL, 0, 1, 1, 678, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 679, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 680, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 681, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 682, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 9, '12:00', '12:14', NULL, 0, 1, 1, 683, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 11, '12:30', '12:44', NULL, 0, 1, 1, 684, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 13, '13:15', '13:29', NULL, 0, 1, 1, 685, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 15, '14:15', '14:29', NULL, 0, 1, 1, 686, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 17, '15:15', '15:29', NULL, 0, 1, 1, 687, 'LT 3'),
(696, '10-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Percobaan', '082329356023', 15, 19, '16:15', '16:29', NULL, 0, 1, 1, 688, 'LT 3'),
(739, '10-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Percobaan', '082329356023', 10, 2, '14:50', '14:59', NULL, 0, 1, 1, 689, 'LT 3'),
(655, '10-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 2, '16:15', '16:19', NULL, 0, 1, 1, 690, 'LT 3'),
(664, '10-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 2, '16:35', '16:44', NULL, 0, 1, 1, 691, 'LT 3'),
(699, '10-07-2017', 'PANTRY', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '18:30', '18:34', NULL, 0, 1, 1, 692, 'LT 3'),
(706, '10-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 2, '16:25', '16:29', NULL, 0, 1, 1, 693, 'LT 3'),
(709, '10-07-2017', 'R. MEETING CAMRY 1', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '20:10', '20:14', NULL, 0, 1, 1, 694, 'LT 3'),
(712, '10-07-2017', 'R. MEETING CAMRY 2', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '20:05', '20:09', NULL, 0, 1, 1, 695, 'LT 3'),
(714, '10-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 1, '14:15', '14:24', NULL, 0, 1, 1, 696, 'LT 3'),
(719, '10-07-2017', 'R. MEETING ATSG', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '20:00', '20:04', NULL, 0, 1, 1, 697, 'LT 3'),
(722, '10-07-2017', 'R. CRISIS CENTER', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '19:55', '19:59', NULL, 0, 1, 1, 698, 'LT 3'),
(725, '10-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 1, '20:15', '20:24', NULL, 0, 1, 1, 699, 'LT 3'),
(728, '10-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 1, '20:25', '20:34', NULL, 0, 1, 1, 700, 'LT 3'),
(731, '10-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 1, '20:35', '20:44', NULL, 0, 1, 1, 701, 'LT 3'),
(734, '10-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 1, '19:45', '19:54', NULL, 0, 1, 1, 702, 'LT 3'),
(737, '10-07-2017', 'LOBBY LIFT', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 1, '15:45', '15:59', NULL, 0, 1, 1, 703, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 2, '13:30', '13:44', NULL, 0, 1, 1, 704, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 4, '14:30', '14:44', NULL, 0, 1, 1, 705, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 6, '15:30', '15:44', NULL, 0, 1, 1, 706, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 8, '16:30', '16:44', NULL, 0, 1, 1, 707, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 10, '17:30', '17:44', NULL, 0, 1, 1, 708, 'LT 3'),
(655, '10-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '13:15', '13:19', NULL, 0, 1, 1, 709, 'LT 3'),
(656, '10-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 1, '19:10', '19:24', NULL, 0, 1, 1, 710, 'LT 3'),
(659, '10-07-2017', 'R. MEETING RUSH 1', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '19:05', '19:09', NULL, 0, 1, 1, 711, 'LT 3'),
(662, '10-07-2017', 'R. MEETING RUSH 2', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '19:00', '19:04', NULL, 0, 1, 1, 712, 'LT 3'),
(664, '10-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 1, '13:20', '13:29', NULL, 0, 1, 1, 713, 'LT 3'),
(669, '10-07-2017', 'R. REMUNERATION', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '18:55', '18:59', NULL, 0, 1, 1, 714, 'LT 3'),
(672, '10-07-2017', 'R. LEGAL', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '19:25', '19:29', NULL, 0, 1, 1, 715, 'LT 3'),
(675, '10-07-2017', 'EXPATRIAT AREA', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '19:30', '19:34', NULL, 0, 1, 1, 716, 'LT 3'),
(678, '10-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '19:35', '19:39', NULL, 0, 1, 1, 717, 'LT 3'),
(681, '10-07-2017', 'R. CONSELING', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '18:50', '18:54', NULL, 0, 1, 1, 718, 'LT 3'),
(684, '10-07-2017', 'R. INTERVIEW', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '18:45', '18:49', NULL, 0, 1, 1, 719, 'LT 3'),
(687, '10-07-2017', 'R. BUYER 1', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '18:40', '18:44', NULL, 0, 1, 1, 720, 'LT 3'),
(690, '10-07-2017', 'R. BUYER 2', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '18:35', '18:39', NULL, 0, 1, 1, 721, 'LT 3'),
(702, '10-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 1, '20:45', '20:59', NULL, 0, 1, 1, 722, 'LT 3'),
(706, '10-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ridhwan', '082329356023', 5, 1, '14:25', '14:29', NULL, 0, 1, 1, 723, 'LT 3'),
(714, '10-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ridhwan', '082329356023', 10, 2, '16:15', '16:24', NULL, 0, 1, 1, 724, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 725, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 3, '14:00', '14:14', NULL, 0, 1, 1, 726, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 5, '15:00', '15:14', NULL, 0, 1, 1, 727, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 7, '16:00', '16:14', NULL, 0, 1, 1, 728, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 9, '17:00', '17:14', NULL, 0, 1, 1, 729, 'LT 3'),
(743, '10-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ridhwan', '082329356023', 15, 11, '18:00', '18:14', NULL, 0, 1, 1, 730, 'LT 3'),
(653, '10-07-2017', 'OFFICE HRD', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 2, '19:20', '19:34', NULL, 0, 1, 1, 731, 'LT 3'),
(658, '10-07-2017', 'R. MEETING RUSH 1', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:25', '20:29', NULL, 0, 1, 1, 732, 'LT 3'),
(661, '10-07-2017', 'R. MEETING RUSH 2', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:20', '20:24', NULL, 0, 1, 1, 733, 'LT 3'),
(668, '10-07-2017', 'R. REMUNERATION', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '19:00', '19:04', NULL, 0, 1, 1, 734, 'LT 3'),
(671, '10-07-2017', 'R. LEGAL', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '19:35', '19:39', NULL, 0, 1, 1, 735, 'LT 3'),
(674, '10-07-2017', 'EXPATRIAT AREA', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '19:40', '19:44', NULL, 0, 1, 1, 736, 'LT 3'),
(677, '10-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '19:45', '19:49', NULL, 0, 1, 1, 737, 'LT 3'),
(680, '10-07-2017', 'R. CONSELING', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '18:55', '18:59', NULL, 0, 1, 1, 738, 'LT 3'),
(683, '10-07-2017', 'R. INTERVIEW', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '18:50', '18:54', NULL, 0, 1, 1, 739, 'LT 3'),
(686, '10-07-2017', 'R. BUYER 1', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '18:45', '18:49', NULL, 0, 1, 1, 740, 'LT 3'),
(689, '10-07-2017', 'R. BUYER 2', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '18:40', '18:44', NULL, 0, 1, 1, 741, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 2, '13:30', '13:44', NULL, 0, 1, 1, 742, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 4, '14:30', '14:44', NULL, 0, 1, 1, 743, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 6, '15:30', '15:44', NULL, 0, 1, 1, 744, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 8, '16:30', '16:44', NULL, 0, 1, 1, 745, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 10, '17:30', '17:44', NULL, 0, 1, 1, 746, 'LT 3'),
(701, '10-07-2017', 'PANTRY', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '18:30', '18:34', NULL, 0, 1, 1, 747, 'LT 3'),
(704, '10-07-2017', 'OFFICE GAD - EID', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 1, '18:15', '18:29', NULL, 0, 1, 1, 748, 'LT 3'),
(716, '10-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:15', '20:19', NULL, 0, 1, 1, 749, 'LT 3'),
(653, '10-07-2017', 'OFFICE HRD', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 1, '18:15', '18:29', NULL, 0, 1, 1, 750, 'LT 3'),
(666, '10-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '19:11', '19:15', NULL, 0, 1, 1, 751, 'LT 3'),
(694, '10-07-2017', 'R. LAKTASI', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '18:35', '18:39', NULL, 0, 1, 1, 752, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 753, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 3, '14:00', '14:14', NULL, 0, 1, 1, 754, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 5, '15:00', '15:14', NULL, 0, 1, 1, 755, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 7, '16:00', '16:14', NULL, 0, 1, 1, 756, 'LT 3'),
(697, '10-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Percobaan', '082329356023', 15, 9, '17:00', '17:14', NULL, 0, 1, 1, 757, 'LT 3'),
(708, '10-07-2017', 'R. MEETING CAMRY 1', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:25', '20:29', NULL, 0, 1, 1, 758, 'LT 3'),
(711, '10-07-2017', 'R. MEETING CAMRY 2', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:20', '20:24', NULL, 0, 1, 1, 759, 'LT 3'),
(718, '10-07-2017', 'R. MEETING ATSG', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:10', '20:14', NULL, 0, 1, 1, 760, 'LT 3'),
(721, '10-07-2017', 'R. CRISIS CENTER', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:05', '20:09', NULL, 0, 1, 1, 761, 'LT 3'),
(724, '10-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:30', '20:34', NULL, 0, 1, 1, 762, 'LT 3'),
(727, '10-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:35', '20:39', NULL, 0, 1, 1, 763, 'LT 3'),
(730, '10-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:40', '20:44', NULL, 0, 1, 1, 764, 'LT 3'),
(733, '10-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 3(P)', 'Percobaan', '082329356023', 5, 1, '20:00', '20:04', NULL, 0, 1, 1, 765, 'LT 3'),
(740, '10-07-2017', 'LOBBY LIFT', 'Shift 3(P)', 'Percobaan', '082329356023', 10, 1, '19:50', '19:59', NULL, 0, 1, 1, 766, 'LT 3'),
(654, '11-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Indra', '085759474765', 5, 2, '10:30', '10:34', NULL, 0, 1, 1, 891, 'LT 3'),
(663, '11-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(L)', 'Indra', '085759474765', 10, 1, '06:50', '06:59', NULL, 0, 1, 1, 892, 'LT 3'),
(705, '11-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Indra', '085759474765', 5, 2, '10:25', '10:29', NULL, 0, 1, 1, 893, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 1, '06:00', '06:14', '14:26', 1, 1, 1, 894, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 895, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 896, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 897, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 898, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 899, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 13, '12:30', '12:44', NULL, 0, 1, 1, 900, 'LT 3'),
(654, '11-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Indra', '085759474765', 5, 1, '06:45', '06:49', NULL, 0, 1, 1, 901, 'LT 3'),
(698, '11-07-2017', 'PANTRY', 'Shift 1(L)', 'Indra', '085759474765', 5, 1, '09:15', '09:19', NULL, 0, 1, 1, 902, 'LT 3'),
(705, '11-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Indra', '085759474765', 5, 1, '06:25', '06:29', NULL, 0, 1, 1, 903, 'LT 3'),
(713, '11-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(L)', 'Indra', '085759474765', 10, 1, '06:15', '06:24', NULL, 0, 1, 1, 904, 'LT 3'),
(735, '11-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Indra', '085759474765', 15, 1, '06:30', '06:44', NULL, 0, 1, 1, 905, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 906, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 907, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 908, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 909, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 910, 'LT 3'),
(741, '11-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 12, '12:00', '12:14', NULL, 0, 1, 1, 911, 'LT 3'),
(652, '11-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 2, '12:40', '12:44', NULL, 0, 1, 1, 912, 'LT 3'),
(657, '11-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:57', '06:59', NULL, 0, 1, 1, 913, 'LT 3'),
(660, '11-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 914, 'LT 3'),
(665, '11-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:48', '12:50', NULL, 0, 1, 1, 915, 'LT 3'),
(667, '11-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:04', '07:06', NULL, 0, 1, 1, 916, 'LT 3'),
(670, '11-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:47', '06:49', NULL, 0, 1, 1, 917, 'LT 3'),
(673, '11-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:44', '06:46', NULL, 0, 1, 1, 918, 'LT 3'),
(676, '11-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:40', '06:42', NULL, 0, 1, 1, 919, 'LT 3'),
(679, '11-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:07', '07:09', NULL, 0, 1, 1, 920, 'LT 3'),
(682, '11-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:10', '07:12', NULL, 0, 1, 1, 921, 'LT 3'),
(685, '11-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:13', '07:15', NULL, 0, 1, 1, 922, 'LT 3'),
(688, '11-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:16', '07:18', NULL, 0, 1, 1, 923, 'LT 3'),
(693, '11-07-2017', 'R. LAKTASI', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 1, '08:45', '08:49', NULL, 0, 1, 1, 924, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 1, '06:00', '06:14', '14:26', 1, 1, 1, 925, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 926, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 927, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 928, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 929, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 930, 'LT 3'),
(703, '11-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 1, '06:24', '06:28', NULL, 0, 1, 1, 931, 'LT 3'),
(707, '11-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:14', '12:16', NULL, 0, 1, 1, 932, 'LT 3'),
(710, '11-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:17', '12:19', NULL, 0, 1, 1, 933, 'LT 3'),
(715, '11-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:34', '06:36', NULL, 0, 1, 1, 934, 'LT 3'),
(717, '11-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 2, '12:23', '12:24', NULL, 0, 1, 1, 935, 'LT 3'),
(720, '11-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 2, '12:25', '12:26', NULL, 0, 1, 1, 936, 'LT 3'),
(723, '11-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:06', '12:08', NULL, 0, 1, 1, 937, 'LT 3'),
(726, '11-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:03', '12:05', NULL, 0, 1, 1, 938, 'LT 3'),
(729, '11-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:00', '12:02', NULL, 0, 1, 1, 939, 'LT 3'),
(732, '11-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 2, '12:27', '12:28', NULL, 0, 1, 1, 940, 'LT 3'),
(738, '11-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 2, '09:15', '09:24', NULL, 0, 1, 1, 941, 'LT 3'),
(652, '11-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 1, '06:50', '06:54', NULL, 0, 1, 1, 942, 'LT 3'),
(657, '11-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:12', '12:14', NULL, 0, 1, 1, 943, 'LT 3'),
(660, '11-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:15', '12:17', NULL, 0, 1, 1, 944, 'LT 3'),
(665, '11-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 945, 'LT 3'),
(667, '11-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:51', '12:53', NULL, 0, 1, 1, 946, 'LT 3'),
(670, '11-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:37', '12:39', NULL, 0, 1, 1, 947, 'LT 3'),
(673, '11-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:34', '12:36', NULL, 0, 1, 1, 948, 'LT 3'),
(676, '11-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:30', '12:32', NULL, 0, 1, 1, 949, 'LT 3'),
(679, '11-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:54', '12:56', NULL, 0, 1, 1, 950, 'LT 3'),
(682, '11-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:57', '12:59', NULL, 0, 1, 1, 951, 'LT 3'),
(685, '11-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '13:00', '13:02', NULL, 0, 1, 1, 952, 'LT 3'),
(688, '11-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '13:03', '13:05', NULL, 0, 1, 1, 953, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 954, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 955, 'LT 3');
INSERT INTO `actual` (`idTask`, `exeDate`, `namaRuangan`, `shift`, `namaPegawai`, `kontak`, `duration`, `occurence`, `startTime`, `endTime`, `actEndTime`, `status`, `delay`, `status_sms`, `id`, `area`) VALUES
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 956, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 957, 'LT 3'),
(695, '11-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 958, 'LT 3'),
(700, '11-07-2017', 'PANTRY', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 1, '08:50', '08:59', NULL, 0, 1, 1, 959, 'LT 3'),
(703, '11-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 2, '12:09', '12:13', NULL, 0, 1, 1, 960, 'LT 3'),
(707, '11-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:28', '06:30', NULL, 0, 1, 1, 961, 'LT 3'),
(710, '11-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:31', '06:33', NULL, 0, 1, 1, 962, 'LT 3'),
(715, '11-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:20', '12:22', NULL, 0, 1, 1, 963, 'LT 3'),
(717, '11-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 1, '06:37', '06:38', NULL, 0, 1, 1, 964, 'LT 3'),
(720, '11-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 1, '06:39', '06:40', NULL, 0, 1, 1, 965, 'LT 3'),
(723, '11-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:21', '06:23', NULL, 0, 1, 1, 966, 'LT 3'),
(726, '11-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:18', '06:20', NULL, 0, 1, 1, 967, 'LT 3'),
(729, '11-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:15', '06:17', NULL, 0, 1, 1, 968, 'LT 3'),
(732, '11-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 1, '06:41', '06:42', NULL, 0, 1, 1, 969, 'LT 3'),
(738, '11-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 1, '07:15', '07:24', NULL, 0, 1, 1, 970, 'LT 3'),
(738, '11-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 3, '11:15', '11:24', NULL, 0, 1, 1, 971, 'LT 3'),
(736, '11-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Asep', '085723963658', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 972, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 973, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 974, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 975, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 976, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 10, '12:45', '12:59', NULL, 0, 1, 1, 977, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 12, '13:45', '13:59', NULL, 0, 1, 1, 978, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 14, '14:45', '14:59', NULL, 0, 1, 1, 979, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 16, '15:45', '15:59', NULL, 0, 1, 1, 980, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 18, '16:45', '16:59', '17:01', 1, 1, 1, 981, 'LT 3'),
(736, '11-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Asep', '085723963658', 15, 2, '15:00', '15:14', NULL, 0, 1, 1, 982, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 983, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 984, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 985, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 986, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 9, '12:15', '12:29', NULL, 0, 1, 1, 987, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 11, '13:15', '13:29', NULL, 0, 1, 1, 988, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 13, '14:15', '14:29', NULL, 0, 1, 1, 989, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 15, '15:15', '15:29', NULL, 0, 1, 1, 990, 'LT 3'),
(742, '11-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 17, '16:15', '16:29', NULL, 0, 1, 1, 991, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 992, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 993, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 994, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 995, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 10, '12:15', '12:29', NULL, 0, 1, 1, 996, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 12, '12:45', '12:59', NULL, 0, 1, 1, 997, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 14, '13:45', '13:59', NULL, 0, 1, 1, 998, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 16, '14:45', '14:59', NULL, 0, 1, 1, 999, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 18, '15:45', '15:59', NULL, 0, 1, 1, 1000, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 20, '16:45', '16:59', '17:00', 1, 1, 1, 1001, 'LT 3'),
(739, '11-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Imas', '087875064251', 10, 1, '13:00', '13:09', NULL, 0, 1, 1, 1002, 'LT 3'),
(739, '11-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Imas', '087875064251', 10, 3, '17:35', '17:44', '17:01', 1, 0, 1, 1003, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 1004, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 1005, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 1006, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 1007, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 9, '12:00', '12:14', NULL, 0, 1, 1, 1008, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 11, '12:30', '12:44', NULL, 0, 1, 1, 1009, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 13, '13:15', '13:29', NULL, 0, 1, 1, 1010, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 15, '14:15', '14:29', NULL, 0, 1, 1, 1011, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 17, '15:15', '15:29', NULL, 0, 1, 1, 1012, 'LT 3'),
(696, '11-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 19, '16:15', '16:29', NULL, 0, 1, 1, 1013, 'LT 3'),
(739, '11-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Imas', '087875064251', 10, 2, '14:50', '14:59', NULL, 0, 1, 1, 1014, 'LT 3'),
(930, '13-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Indra', '085759474765', 5, 2, '10:30', '10:34', NULL, 0, 1, 1, 1392, 'LT 3'),
(939, '13-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(L)', 'Indra', '085759474765', 10, 1, '06:50', '06:59', NULL, 0, 1, 1, 1393, 'LT 3'),
(981, '13-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Indra', '085759474765', 5, 2, '10:25', '10:29', NULL, 0, 1, 1, 1394, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 1, '06:00', '06:14', NULL, 0, 1, 1, 1395, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 1396, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 1397, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 1398, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 1399, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 1400, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 13, '12:30', '12:44', NULL, 0, 1, 1, 1401, 'LT 3'),
(930, '13-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Indra', '085759474765', 5, 1, '06:45', '06:49', NULL, 0, 1, 1, 1402, 'LT 3'),
(974, '13-07-2017', 'PANTRY', 'Shift 1(L)', 'Indra', '085759474765', 5, 1, '09:15', '09:19', NULL, 0, 1, 1, 1403, 'LT 3'),
(981, '13-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Indra', '085759474765', 5, 1, '06:25', '06:29', NULL, 0, 1, 1, 1404, 'LT 3'),
(989, '13-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(L)', 'Indra', '085759474765', 10, 1, '06:15', '06:24', NULL, 0, 1, 1, 1405, 'LT 3'),
(1011, '13-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Indra', '085759474765', 15, 1, '06:30', '06:44', NULL, 0, 1, 1, 1406, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 1407, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 1408, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 1409, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 1410, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 1411, 'LT 3'),
(1017, '13-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Indra', '085759474765', 15, 12, '12:00', '12:14', NULL, 0, 1, 1, 1412, 'LT 3'),
(928, '13-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 2, '12:40', '12:44', NULL, 0, 1, 1, 1413, 'LT 3'),
(933, '13-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:57', '06:59', NULL, 0, 1, 1, 1414, 'LT 3'),
(936, '13-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 1415, 'LT 3'),
(941, '13-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:48', '12:50', NULL, 0, 1, 1, 1416, 'LT 3'),
(943, '13-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:04', '07:06', NULL, 0, 1, 1, 1417, 'LT 3'),
(946, '13-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:47', '06:49', NULL, 0, 1, 1, 1418, 'LT 3'),
(949, '13-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:44', '06:46', NULL, 0, 1, 1, 1419, 'LT 3'),
(952, '13-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:40', '06:42', NULL, 0, 1, 1, 1420, 'LT 3'),
(955, '13-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:07', '07:09', NULL, 0, 1, 1, 1421, 'LT 3'),
(958, '13-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:10', '07:12', NULL, 0, 1, 1, 1422, 'LT 3'),
(961, '13-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:13', '07:15', NULL, 0, 1, 1, 1423, 'LT 3'),
(964, '13-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:16', '07:18', NULL, 0, 1, 1, 1424, 'LT 3'),
(969, '13-07-2017', 'R. LAKTASI', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 1, '08:45', '08:49', NULL, 0, 1, 1, 1425, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 1, '06:00', '06:14', NULL, 0, 1, 1, 1426, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 1427, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 1428, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 1429, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 1430, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 1431, 'LT 3'),
(979, '13-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 1, '06:24', '06:28', NULL, 0, 1, 1, 1432, 'LT 3'),
(983, '13-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:14', '12:16', NULL, 0, 1, 1, 1433, 'LT 3'),
(986, '13-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:17', '12:19', NULL, 0, 1, 1, 1434, 'LT 3'),
(991, '13-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:34', '06:36', NULL, 0, 1, 1, 1435, 'LT 3'),
(993, '13-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 2, '12:23', '12:24', NULL, 0, 1, 1, 1436, 'LT 3'),
(996, '13-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 2, '12:25', '12:26', NULL, 0, 1, 1, 1437, 'LT 3'),
(999, '13-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:06', '12:08', NULL, 0, 1, 1, 1438, 'LT 3'),
(1002, '13-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:03', '12:05', NULL, 0, 1, 1, 1439, 'LT 3'),
(1005, '13-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:00', '12:02', NULL, 0, 1, 1, 1440, 'LT 3'),
(1008, '13-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 2, '12:27', '12:28', NULL, 0, 1, 1, 1441, 'LT 3'),
(1014, '13-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 2, '09:15', '09:24', NULL, 0, 1, 1, 1442, 'LT 3'),
(928, '13-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 1, '06:50', '06:54', NULL, 0, 1, 1, 1443, 'LT 3'),
(933, '13-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:12', '12:14', NULL, 0, 1, 1, 1444, 'LT 3'),
(936, '13-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:15', '12:17', NULL, 0, 1, 1, 1445, 'LT 3'),
(941, '13-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 1446, 'LT 3'),
(943, '13-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:51', '12:53', NULL, 0, 1, 1, 1447, 'LT 3'),
(946, '13-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:37', '12:39', NULL, 0, 1, 1, 1448, 'LT 3'),
(949, '13-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:34', '12:36', NULL, 0, 1, 1, 1449, 'LT 3'),
(952, '13-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:30', '12:32', NULL, 0, 1, 1, 1450, 'LT 3'),
(955, '13-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:54', '12:56', NULL, 0, 1, 1, 1451, 'LT 3'),
(958, '13-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:57', '12:59', NULL, 0, 1, 1, 1452, 'LT 3'),
(961, '13-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '13:00', '13:02', NULL, 0, 1, 1, 1453, 'LT 3'),
(964, '13-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '13:03', '13:05', NULL, 0, 1, 1, 1454, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 1455, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 1456, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 1457, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 1458, 'LT 3'),
(971, '13-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Desi Astuti', '081294410664', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 1459, 'LT 3'),
(976, '13-07-2017', 'PANTRY', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 1, '08:50', '08:59', NULL, 0, 1, 1, 1460, 'LT 3'),
(979, '13-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Desi Astuti', '081294410664', 5, 2, '12:09', '12:13', NULL, 0, 1, 1, 1461, 'LT 3'),
(983, '13-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:28', '06:30', NULL, 0, 1, 1, 1462, 'LT 3'),
(986, '13-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:31', '06:33', NULL, 0, 1, 1, 1463, 'LT 3'),
(991, '13-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 2, '12:20', '12:22', NULL, 0, 1, 1, 1464, 'LT 3'),
(993, '13-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 1, '06:37', '06:38', NULL, 0, 1, 1, 1465, 'LT 3'),
(996, '13-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 1, '06:39', '06:40', NULL, 0, 1, 1, 1466, 'LT 3'),
(999, '13-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:21', '06:23', NULL, 0, 1, 1, 1467, 'LT 3'),
(1002, '13-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:18', '06:20', NULL, 0, 1, 1, 1468, 'LT 3'),
(1005, '13-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Desi Astuti', '081294410664', 3, 1, '06:15', '06:17', NULL, 0, 1, 1, 1469, 'LT 3'),
(1008, '13-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Desi Astuti', '081294410664', 2, 1, '06:41', '06:42', NULL, 0, 1, 1, 1470, 'LT 3'),
(1014, '13-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 1, '07:15', '07:24', NULL, 0, 1, 1, 1471, 'LT 3'),
(1014, '13-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Desi Astuti', '081294410664', 10, 3, '11:15', '11:24', NULL, 0, 1, 1, 1472, 'LT 3'),
(1012, '13-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Asep', '085723963658', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 1473, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 1474, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 1475, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 1476, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 1477, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 10, '12:45', '12:59', NULL, 0, 1, 1, 1478, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 12, '13:45', '13:59', NULL, 0, 1, 1, 1479, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 14, '14:45', '14:59', NULL, 0, 1, 1, 1480, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 16, '15:45', '15:59', NULL, 0, 1, 1, 1481, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 18, '16:45', '16:59', NULL, 0, 1, 1, 1482, 'LT 3'),
(1012, '13-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Asep', '085723963658', 15, 2, '15:00', '15:14', NULL, 0, 1, 1, 1483, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 1484, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 1485, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 1486, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 1487, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 9, '12:15', '12:29', NULL, 0, 1, 1, 1488, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 11, '13:15', '13:29', NULL, 0, 1, 1, 1489, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 13, '14:15', '14:29', NULL, 0, 1, 1, 1490, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 15, '15:15', '15:29', NULL, 0, 1, 1, 1491, 'LT 3'),
(1018, '13-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Asep', '085723963658', 15, 17, '16:15', '16:29', NULL, 0, 1, 1, 1492, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 1493, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 1494, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 1495, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 1496, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 10, '12:15', '12:29', NULL, 0, 1, 1, 1497, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 12, '12:45', '12:59', NULL, 0, 1, 1, 1498, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 14, '13:45', '13:59', NULL, 0, 1, 1, 1499, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 16, '14:45', '14:59', NULL, 0, 1, 1, 1500, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 18, '15:45', '15:59', NULL, 0, 1, 1, 1501, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 20, '16:45', '16:59', NULL, 0, 1, 1, 1502, 'LT 3'),
(1015, '13-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Imas', '087875064251', 10, 1, '13:00', '13:09', NULL, 0, 1, 1, 1503, 'LT 3'),
(1015, '13-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Imas', '087875064251', 10, 3, '16:35', '16:44', NULL, 0, 1, 1, 1504, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 1505, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 1506, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 1507, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 1508, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 9, '12:00', '12:14', NULL, 0, 1, 1, 1509, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 11, '12:30', '12:44', NULL, 0, 1, 1, 1510, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 13, '13:15', '13:29', NULL, 0, 1, 1, 1511, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 15, '14:15', '14:29', NULL, 0, 1, 1, 1512, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 17, '15:15', '15:29', NULL, 0, 1, 1, 1513, 'LT 3'),
(972, '13-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Imas', '087875064251', 15, 19, '16:15', '16:29', NULL, 0, 1, 1, 1514, 'LT 3'),
(1015, '13-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Imas', '087875064251', 10, 2, '14:50', '14:59', NULL, 0, 1, 1, 1515, 'LT 3'),
(931, '13-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 2, '16:15', '16:19', NULL, 0, 1, 1, 1516, 'LT 3'),
(940, '13-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 2, '16:35', '16:44', NULL, 0, 1, 1, 1517, 'LT 3'),
(975, '13-07-2017', 'PANTRY', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '18:30', '18:34', NULL, 0, 1, 1, 1518, 'LT 3'),
(982, '13-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 2, '16:25', '16:29', NULL, 0, 1, 1, 1519, 'LT 3'),
(985, '13-07-2017', 'R. MEETING CAMRY 1', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '20:10', '20:14', NULL, 0, 1, 1, 1520, 'LT 3'),
(988, '13-07-2017', 'R. MEETING CAMRY 2', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '20:05', '20:09', NULL, 0, 1, 1, 1521, 'LT 3'),
(990, '13-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 1, '14:15', '14:24', NULL, 0, 1, 1, 1522, 'LT 3'),
(995, '13-07-2017', 'R. MEETING ATSG', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '20:00', '20:04', NULL, 0, 1, 1, 1523, 'LT 3'),
(998, '13-07-2017', 'R. CRISIS CENTER', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '19:55', '19:59', NULL, 0, 1, 1, 1524, 'LT 3'),
(1001, '13-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 1, '20:15', '20:24', NULL, 0, 1, 1, 1525, 'LT 3'),
(1004, '13-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 1, '20:25', '20:34', NULL, 0, 1, 1, 1526, 'LT 3'),
(1007, '13-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 1, '20:35', '20:44', NULL, 0, 1, 1, 1527, 'LT 3'),
(1010, '13-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 1, '19:45', '19:54', NULL, 0, 1, 1, 1528, 'LT 3'),
(1013, '13-07-2017', 'LOBBY LIFT', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 1, '15:45', '15:59', NULL, 0, 1, 1, 1529, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 2, '13:30', '13:44', NULL, 0, 1, 1, 1530, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 4, '14:30', '14:44', NULL, 0, 1, 1, 1531, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 6, '15:30', '15:44', NULL, 0, 1, 1, 1532, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 8, '16:30', '16:44', NULL, 0, 1, 1, 1533, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 10, '17:30', '17:44', NULL, 0, 1, 1, 1534, 'LT 3'),
(931, '13-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '13:15', '13:19', NULL, 0, 1, 1, 1535, 'LT 3'),
(932, '13-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 1, '19:10', '19:24', NULL, 0, 1, 1, 1536, 'LT 3'),
(935, '13-07-2017', 'R. MEETING RUSH 1', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '19:05', '19:09', NULL, 0, 1, 1, 1537, 'LT 3'),
(938, '13-07-2017', 'R. MEETING RUSH 2', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '19:00', '19:04', NULL, 0, 1, 1, 1538, 'LT 3'),
(940, '13-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 1, '13:20', '13:29', NULL, 0, 1, 1, 1539, 'LT 3'),
(945, '13-07-2017', 'R. REMUNERATION', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '18:55', '18:59', NULL, 0, 1, 1, 1540, 'LT 3'),
(948, '13-07-2017', 'R. LEGAL', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '19:25', '19:29', NULL, 0, 1, 1, 1541, 'LT 3'),
(951, '13-07-2017', 'EXPATRIAT AREA', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '19:30', '19:34', NULL, 0, 1, 1, 1542, 'LT 3'),
(954, '13-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '19:35', '19:39', NULL, 0, 1, 1, 1543, 'LT 3'),
(957, '13-07-2017', 'R. CONSELING', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '18:50', '18:54', NULL, 0, 1, 1, 1544, 'LT 3'),
(960, '13-07-2017', 'R. INTERVIEW', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '18:45', '18:49', NULL, 0, 1, 1, 1545, 'LT 3'),
(963, '13-07-2017', 'R. BUYER 1', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '18:40', '18:44', NULL, 0, 1, 1, 1546, 'LT 3'),
(966, '13-07-2017', 'R. BUYER 2', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '18:35', '18:39', NULL, 0, 1, 1, 1547, 'LT 3'),
(978, '13-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 1, '20:45', '20:59', NULL, 0, 1, 1, 1548, 'LT 3'),
(982, '13-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Asep RD', '082329356023', 5, 1, '14:25', '14:29', NULL, 0, 1, 1, 1549, 'LT 3'),
(990, '13-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Asep RD', '082329356023', 10, 2, '16:15', '16:24', NULL, 0, 1, 1, 1550, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 1551, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 3, '14:00', '14:14', NULL, 0, 1, 1, 1552, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 5, '15:00', '15:14', NULL, 0, 1, 1, 1553, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 7, '16:00', '16:14', NULL, 0, 1, 1, 1554, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 9, '17:00', '17:14', NULL, 0, 1, 1, 1555, 'LT 3'),
(1019, '13-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Asep RD', '082329356023', 15, 11, '18:00', '18:14', NULL, 0, 1, 1, 1556, 'LT 3'),
(288, '14-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(L)', 'Asep', '085723963658', 10, 1, '06:50', '06:59', NULL, 0, 1, 1, 2581, 'LT 3'),
(288, '14-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(L)', 'Asep', '085723963658', 10, 2, '10:15', '10:24', NULL, 0, 1, 1, 2582, 'LT 3'),
(338, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(L)', 'Asep', '085723963658', 10, 1, '06:15', '06:24', NULL, 0, 1, 1, 2583, 'LT 3'),
(338, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(L)', 'Asep', '085723963658', 10, 2, '09:20', '09:29', NULL, 0, 1, 1, 2584, 'LT 3'),
(338, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(L)', 'Asep', '085723963658', 10, 3, '10:50', '10:59', NULL, 0, 1, 1, 2585, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 1, '06:30', '06:44', NULL, 0, 1, 1, 2586, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 2, '07:00', '07:14', NULL, 0, 1, 1, 2587, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 3, '07:15', '07:29', NULL, 0, 1, 1, 2588, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 4, '08:15', '08:29', NULL, 0, 1, 1, 2589, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 5, '08:45', '08:59', NULL, 0, 1, 1, 2590, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 6, '11:15', '11:29', NULL, 0, 1, 1, 2591, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 7, '11:45', '11:59', NULL, 0, 1, 1, 2592, 'LT 3'),
(360, '14-07-2017', 'LOBBY LIFT', 'Shift 1(L)', 'Asep', '085723963658', 15, 8, '12:15', '12:29', NULL, 0, 1, 1, 2593, 'LT 3'),
(323, '14-07-2017', 'PANTRY', 'Shift 1(L)', 'Asep', '085723963658', 5, 1, '09:15', '09:19', NULL, 0, 1, 1, 2594, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 1, '06:00', '06:14', NULL, 0, 1, 1, 2595, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 2596, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 2597, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 2598, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 2599, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 2600, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 2601, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 2602, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 2603, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 2604, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 2605, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 12, '12:00', '12:14', NULL, 0, 1, 1, 2606, 'LT 3'),
(366, '14-07-2017', 'TOILET PRIA', 'Shift 1(L)', 'Asep', '085723963658', 15, 13, '12:30', '12:44', NULL, 0, 1, 1, 2607, 'LT 3'),
(330, '14-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Asep', '085723963658', 5, 1, '06:25', '06:29', NULL, 0, 1, 1, 2608, 'LT 3'),
(330, '14-07-2017', 'OFFICE GAD - EID', 'Shift 1(L)', 'Asep', '085723963658', 5, 2, '10:25', '10:29', NULL, 0, 1, 1, 2609, 'LT 3'),
(279, '14-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Asep', '085723963658', 5, 1, '06:45', '06:49', NULL, 0, 1, 1, 2610, 'LT 3'),
(279, '14-07-2017', 'OFFICE HRD', 'Shift 1(L)', 'Asep', '085723963658', 5, 2, '10:45', '10:49', NULL, 0, 1, 1, 2611, 'LT 3'),
(325, '14-07-2017', 'PANTRY', 'Shift 1(P)', 'Imas', '087875064251', 10, 1, '08:50', '08:59', NULL, 0, 1, 1, 2612, 'LT 3'),
(342, '14-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Imas', '087875064251', 2, 1, '06:37', '06:38', NULL, 0, 1, 1, 2613, 'LT 3'),
(342, '14-07-2017', 'R. MEETING ATSG', 'Shift 1(P)', 'Imas', '087875064251', 2, 2, '12:23', '12:24', NULL, 0, 1, 1, 2614, 'LT 3'),
(307, '14-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '07:10', '07:12', NULL, 0, 1, 1, 2615, 'LT 3'),
(307, '14-07-2017', 'R. INTERVIEW', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:57', '12:59', NULL, 0, 1, 1, 2616, 'LT 3'),
(345, '14-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Imas', '087875064251', 2, 1, '06:39', '06:40', NULL, 0, 1, 1, 2617, 'LT 3'),
(345, '14-07-2017', 'R. CRISIS CENTER', 'Shift 1(P)', 'Imas', '087875064251', 2, 2, '12:25', '12:26', NULL, 0, 1, 1, 2618, 'LT 3'),
(304, '14-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '07:07', '07:09', NULL, 0, 1, 1, 2619, 'LT 3'),
(304, '14-07-2017', 'R. CONSELING', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:54', '12:56', NULL, 0, 1, 1, 2620, 'LT 3'),
(357, '14-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Imas', '087875064251', 2, 1, '06:41', '06:42', NULL, 0, 1, 1, 2621, 'LT 3'),
(357, '14-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 1(P)', 'Imas', '087875064251', 2, 2, '12:27', '12:28', NULL, 0, 1, 1, 2622, 'LT 3'),
(301, '14-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:40', '06:42', NULL, 0, 1, 1, 2623, 'LT 3'),
(301, '14-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:30', '12:32', NULL, 0, 1, 1, 2624, 'LT 3'),
(340, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:34', '06:36', NULL, 0, 1, 1, 2625, 'LT 3'),
(340, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:20', '12:22', NULL, 0, 1, 1, 2626, 'LT 3'),
(310, '14-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '07:13', '07:15', NULL, 0, 1, 1, 2627, 'LT 3'),
(310, '14-07-2017', 'R. BUYER 1', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '13:00', '13:02', NULL, 0, 1, 1, 2628, 'LT 3'),
(335, '14-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:31', '06:33', NULL, 0, 1, 1, 2629, 'LT 3'),
(335, '14-07-2017', 'R. MEETING CAMRY 2', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:17', '12:19', NULL, 0, 1, 1, 2630, 'LT 3'),
(313, '14-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '07:16', '07:18', NULL, 0, 1, 1, 2631, 'LT 3'),
(313, '14-07-2017', 'R. BUYER 2', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '13:03', '13:05', NULL, 0, 1, 1, 2632, 'LT 3'),
(318, '14-07-2017', 'R. LAKTASI', 'Shift 1(P)', 'Imas', '087875064251', 5, 1, '08:45', '08:49', NULL, 0, 1, 1, 2633, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 1, '06:00', '06:14', NULL, 0, 1, 1, 2634, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 2, '07:30', '07:44', NULL, 0, 1, 1, 2635, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 3, '07:45', '07:59', NULL, 0, 1, 1, 2636, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 4, '08:00', '08:14', NULL, 0, 1, 1, 2637, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 5, '08:30', '08:44', NULL, 0, 1, 1, 2638, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 6, '09:00', '09:14', NULL, 0, 1, 1, 2639, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 7, '09:30', '09:44', NULL, 0, 1, 1, 2640, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 8, '10:00', '10:14', NULL, 0, 1, 1, 2641, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 9, '10:30', '10:44', NULL, 0, 1, 1, 2642, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 10, '11:00', '11:14', NULL, 0, 1, 1, 2643, 'LT 3'),
(320, '14-07-2017', 'TOILET  WANITA', 'Shift 1(P)', 'Imas', '087875064251', 15, 11, '11:30', '11:44', NULL, 0, 1, 1, 2644, 'LT 3'),
(328, '14-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Imas', '087875064251', 5, 1, '06:24', '06:28', NULL, 0, 1, 1, 2645, 'LT 3'),
(328, '14-07-2017', 'OFFICE GAD - EID', 'Shift 1(P)', 'Imas', '087875064251', 5, 2, '12:09', '12:13', NULL, 0, 1, 1, 2646, 'LT 3'),
(332, '14-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:28', '06:30', NULL, 0, 1, 1, 2647, 'LT 3'),
(332, '14-07-2017', 'R. MEETING CAMRY 1', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:14', '12:16', NULL, 0, 1, 1, 2648, 'LT 3'),
(348, '14-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:21', '06:23', NULL, 0, 1, 1, 2649, 'LT 3'),
(348, '14-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:06', '12:08', NULL, 0, 1, 1, 2650, 'LT 3'),
(282, '14-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:57', '06:59', NULL, 0, 1, 1, 2651, 'LT 3'),
(282, '14-07-2017', 'R. MEETING RUSH 1', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:12', '12:14', NULL, 0, 1, 1, 2652, 'LT 3'),
(363, '14-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Imas', '087875064251', 10, 1, '07:15', '07:24', NULL, 0, 1, 1, 2653, 'LT 3'),
(363, '14-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Imas', '087875064251', 10, 2, '09:15', '09:24', NULL, 0, 1, 1, 2654, 'LT 3'),
(363, '14-07-2017', 'LOBBY LIFT', 'Shift 1(P)', 'Imas', '087875064251', 10, 3, '11:15', '11:24', NULL, 0, 1, 1, 2655, 'LT 3'),
(354, '14-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:15', '06:17', NULL, 0, 1, 1, 2656, 'LT 3'),
(354, '14-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:00', '12:02', NULL, 0, 1, 1, 2657, 'LT 3'),
(290, '14-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 2658, 'LT 3'),
(290, '14-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:48', '12:50', NULL, 0, 1, 1, 2659, 'LT 3'),
(295, '14-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:47', '06:49', NULL, 0, 1, 1, 2660, 'LT 3'),
(295, '14-07-2017', 'R. LEGAL', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:37', '12:39', NULL, 0, 1, 1, 2661, 'LT 3'),
(285, '14-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '07:00', '07:02', NULL, 0, 1, 1, 2662, 'LT 3'),
(285, '14-07-2017', 'R. MEETING RUSH 2', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:15', '12:17', NULL, 0, 1, 1, 2663, 'LT 3'),
(351, '14-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:18', '06:20', NULL, 0, 1, 1, 2664, 'LT 3'),
(351, '14-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:03', '12:05', NULL, 0, 1, 1, 2665, 'LT 3'),
(277, '14-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Imas', '087875064251', 5, 1, '06:50', '06:54', NULL, 0, 1, 1, 2666, 'LT 3'),
(277, '14-07-2017', 'OFFICE HRD', 'Shift 1(P)', 'Imas', '087875064251', 5, 2, '12:40', '12:44', NULL, 0, 1, 1, 2667, 'LT 3'),
(298, '14-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '06:44', '06:46', NULL, 0, 1, 1, 2668, 'LT 3'),
(298, '14-07-2017', 'EXPATRIAT AREA', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:34', '12:36', NULL, 0, 1, 1, 2669, 'LT 3'),
(292, '14-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Imas', '087875064251', 3, 1, '07:04', '07:06', NULL, 0, 1, 1, 2670, 'LT 3'),
(292, '14-07-2017', 'R. REMUNERATION', 'Shift 1(P)', 'Imas', '087875064251', 3, 2, '12:51', '12:53', NULL, 0, 1, 1, 2671, 'LT 3'),
(361, '14-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Indra', '085759474765', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 2672, 'LT 3'),
(361, '14-07-2017', 'LOBBY LIFT', 'Shift 2(L)', 'Indra', '085759474765', 15, 2, '15:00', '15:14', NULL, 0, 1, 1, 2673, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 2674, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 2675, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 2676, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 2677, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 2678, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 2679, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 2680, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 2681, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 9, '12:15', '12:29', NULL, 0, 1, 1, 2682, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 10, '12:45', '12:59', NULL, 0, 1, 1, 2683, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 11, '13:15', '13:29', NULL, 0, 1, 1, 2684, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 12, '13:45', '13:59', NULL, 0, 1, 1, 2685, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 13, '14:15', '14:29', NULL, 0, 1, 1, 2686, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 14, '14:45', '14:59', NULL, 0, 1, 1, 2687, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 15, '15:15', '15:29', NULL, 0, 1, 1, 2688, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 16, '15:45', '15:59', NULL, 0, 1, 0, 2689, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 17, '16:15', '16:29', NULL, 0, 1, 0, 2690, 'LT 3'),
(367, '14-07-2017', 'TOILET PRIA', 'Shift 2(L)', 'Indra', '085759474765', 15, 18, '16:45', '16:59', NULL, 0, 1, 0, 2691, 'LT 3'),
(364, '14-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Inda', '085717333209', 10, 1, '13:00', '13:09', NULL, 0, 1, 1, 2692, 'LT 3'),
(364, '14-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Inda', '085717333209', 10, 2, '14:50', '14:59', NULL, 0, 1, 1, 2693, 'LT 3'),
(364, '14-07-2017', 'LOBBY LIFT', 'Shift 2(P)', 'Inda', '085717333209', 10, 3, '16:35', '16:44', NULL, 0, 1, 0, 2694, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 1, '08:15', '08:29', NULL, 0, 1, 1, 2695, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 2, '08:45', '08:59', NULL, 0, 1, 1, 2696, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 3, '09:15', '09:29', NULL, 0, 1, 1, 2697, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 4, '09:45', '09:59', NULL, 0, 1, 1, 2698, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 5, '10:15', '10:29', NULL, 0, 1, 1, 2699, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 6, '10:45', '10:59', NULL, 0, 1, 1, 2700, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 7, '11:15', '11:29', NULL, 0, 1, 1, 2701, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 8, '11:45', '11:59', NULL, 0, 1, 1, 2702, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 9, '12:00', '12:14', NULL, 0, 1, 1, 2703, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 10, '12:15', '12:29', NULL, 0, 1, 1, 2704, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 11, '12:30', '12:44', NULL, 0, 1, 1, 2705, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 12, '12:45', '12:59', NULL, 0, 1, 1, 2706, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 13, '13:15', '13:29', NULL, 0, 1, 1, 2707, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 14, '13:45', '13:59', NULL, 0, 1, 1, 2708, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 15, '14:15', '14:29', NULL, 0, 1, 1, 2709, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 16, '14:45', '14:59', NULL, 0, 1, 1, 2710, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 17, '15:15', '15:29', NULL, 0, 1, 1, 2711, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 18, '15:45', '15:59', NULL, 0, 1, 0, 2712, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 19, '16:15', '16:29', NULL, 0, 1, 0, 2713, 'LT 3'),
(321, '14-07-2017', 'TOILET  WANITA', 'Shift 2(P)', 'Inda', '085717333209', 15, 20, '16:45', '16:59', NULL, 0, 1, 0, 2714, 'LT 3'),
(331, '14-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '14:25', '14:29', NULL, 0, 1, 1, 2715, 'LT 3'),
(331, '14-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ilham', '08981503733', 5, 2, '16:25', '16:29', NULL, 0, 1, 0, 2716, 'LT 3'),
(362, '14-07-2017', 'LOBBY LIFT', 'Shift 3(L)', 'Ilham', '08981503733', 15, 1, '15:45', '15:59', NULL, 0, 1, 0, 2717, 'LT 3'),
(334, '14-07-2017', 'R. MEETING CAMRY 1', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '20:10', '20:14', NULL, 0, 0, 0, 2718, 'LT 3'),
(337, '14-07-2017', 'R. MEETING CAMRY 2', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '20:05', '20:09', NULL, 0, 0, 0, 2719, 'LT 3'),
(359, '14-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 3(L)', 'Ilham', '08981503733', 10, 1, '19:45', '19:54', NULL, 0, 0, 0, 2720, 'LT 3'),
(339, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ilham', '08981503733', 10, 1, '14:15', '14:24', NULL, 0, 1, 1, 2721, 'LT 3'),
(339, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(L)', 'Ilham', '08981503733', 10, 2, '16:15', '16:24', NULL, 0, 1, 0, 2722, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 2723, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 2, '13:30', '13:44', NULL, 0, 1, 1, 2724, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 3, '14:00', '14:14', NULL, 0, 1, 1, 2725, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 4, '14:30', '14:44', NULL, 0, 1, 1, 2726, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 5, '15:00', '15:14', NULL, 0, 1, 1, 2727, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 6, '15:30', '15:44', NULL, 0, 1, 0, 2728, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 7, '16:00', '16:14', NULL, 0, 1, 0, 2729, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 8, '16:30', '16:44', NULL, 0, 1, 0, 2730, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 9, '17:00', '17:14', NULL, 0, 1, 0, 2731, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 10, '17:30', '17:44', NULL, 0, 1, 0, 2732, 'LT 3'),
(368, '14-07-2017', 'TOILET PRIA', 'Shift 3(L)', 'Ilham', '08981503733', 15, 11, '18:00', '18:14', NULL, 0, 1, 0, 2733, 'LT 3'),
(356, '14-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 3(L)', 'Ilham', '08981503733', 10, 1, '20:35', '20:44', NULL, 0, 0, 0, 2734, 'LT 3'),
(344, '14-07-2017', 'R. MEETING ATSG', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '20:00', '20:04', NULL, 0, 0, 0, 2735, 'LT 3'),
(353, '14-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 3(L)', 'Ilham', '08981503733', 10, 1, '20:25', '20:34', NULL, 0, 0, 0, 2736, 'LT 3');
INSERT INTO `actual` (`idTask`, `exeDate`, `namaRuangan`, `shift`, `namaPegawai`, `kontak`, `duration`, `occurence`, `startTime`, `endTime`, `actEndTime`, `status`, `delay`, `status_sms`, `id`, `area`) VALUES
(347, '14-07-2017', 'R. CRISIS CENTER', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '19:55', '19:59', NULL, 0, 0, 0, 2737, 'LT 3'),
(350, '14-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 3(L)', 'Ilham', '08981503733', 10, 1, '20:15', '20:24', NULL, 0, 0, 0, 2738, 'LT 3'),
(327, '14-07-2017', 'OFFICE GAD - EID', 'Shift 3(L)', 'Ilham', '08981503733', 15, 1, '20:45', '20:59', NULL, 0, 0, 0, 2739, 'LT 3'),
(309, '14-07-2017', 'R. INTERVIEW', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '18:45', '18:49', NULL, 0, 1, 0, 2740, 'LT 3'),
(287, '14-07-2017', 'R. MEETING RUSH 2', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '19:00', '19:04', NULL, 0, 1, 0, 2741, 'LT 3'),
(289, '14-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ilham', '08981503733', 10, 1, '13:20', '13:29', NULL, 0, 1, 1, 2742, 'LT 3'),
(289, '14-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(L)', 'Ilham', '08981503733', 10, 2, '16:35', '16:44', NULL, 0, 1, 0, 2743, 'LT 3'),
(300, '14-07-2017', 'EXPATRIAT AREA', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '19:30', '19:34', NULL, 0, 1, 0, 2744, 'LT 3'),
(306, '14-07-2017', 'R. CONSELING', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '18:50', '18:54', NULL, 0, 1, 0, 2745, 'LT 3'),
(303, '14-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '19:35', '19:39', NULL, 0, 1, 0, 2746, 'LT 3'),
(294, '14-07-2017', 'R. REMUNERATION', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '18:55', '18:59', NULL, 0, 1, 0, 2747, 'LT 3'),
(297, '14-07-2017', 'R. LEGAL', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '19:25', '19:29', NULL, 0, 1, 0, 2748, 'LT 3'),
(312, '14-07-2017', 'R. BUYER 1', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '18:40', '18:44', NULL, 0, 1, 0, 2749, 'LT 3'),
(315, '14-07-2017', 'R. BUYER 2', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '18:35', '18:39', NULL, 0, 1, 0, 2750, 'LT 3'),
(284, '14-07-2017', 'R. MEETING RUSH 1', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '19:05', '19:09', NULL, 0, 1, 0, 2751, 'LT 3'),
(324, '14-07-2017', 'PANTRY', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '18:30', '18:34', NULL, 0, 1, 0, 2752, 'LT 3'),
(281, '14-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ilham', '08981503733', 15, 1, '19:10', '19:24', NULL, 0, 1, 0, 2753, 'LT 3'),
(280, '14-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ilham', '08981503733', 5, 1, '13:15', '13:19', NULL, 0, 1, 1, 2754, 'LT 3'),
(280, '14-07-2017', 'OFFICE HRD', 'Shift 3(L)', 'Ilham', '08981503733', 5, 2, '16:15', '16:19', NULL, 0, 1, 0, 2755, 'LT 3'),
(286, '14-07-2017', 'R. MEETING RUSH 2', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:20', '20:24', NULL, 0, 0, 0, 2756, 'LT 3'),
(355, '14-07-2017', 'R. DIREKTUR \nMR. BOB', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:40', '20:44', NULL, 0, 0, 0, 2757, 'LT 3'),
(278, '14-07-2017', 'OFFICE HRD', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 1, '18:15', '18:29', NULL, 0, 1, 0, 2758, 'LT 3'),
(278, '14-07-2017', 'OFFICE HRD', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 2, '19:20', '19:34', NULL, 0, 1, 0, 2759, 'LT 3'),
(346, '14-07-2017', 'R. CRISIS CENTER', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:05', '20:09', NULL, 0, 0, 0, 2760, 'LT 3'),
(293, '14-07-2017', 'R. REMUNERATION', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '19:00', '19:04', NULL, 0, 1, 0, 2761, 'LT 3'),
(291, '14-07-2017', 'COFFEE CORNER \nSISI PODOMORO', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '19:11', '19:15', NULL, 0, 1, 0, 2762, 'LT 3'),
(358, '14-07-2017', 'KORIDOR OFFICE \nSISI YOS', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:00', '20:04', NULL, 0, 0, 0, 2763, 'LT 3'),
(365, '14-07-2017', 'LOBBY LIFT', 'Shift 3(P)', 'Desi Astuti', '081294410664', 10, 1, '19:50', '19:59', NULL, 0, 0, 0, 2764, 'LT 3'),
(283, '14-07-2017', 'R. MEETING RUSH 1', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:25', '20:29', NULL, 0, 0, 0, 2765, 'LT 3'),
(296, '14-07-2017', 'R. LEGAL', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '19:35', '19:39', NULL, 0, 1, 0, 2766, 'LT 3'),
(352, '14-07-2017', 'R. MEETING \nDIREKTUR', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:35', '20:39', NULL, 0, 0, 0, 2767, 'LT 3'),
(326, '14-07-2017', 'PANTRY', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '18:30', '18:34', NULL, 0, 1, 0, 2768, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 1, '13:00', '13:14', NULL, 0, 1, 1, 2769, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 2, '13:30', '13:44', NULL, 0, 1, 1, 2770, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 3, '14:00', '14:14', NULL, 0, 1, 1, 2771, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 4, '14:30', '14:44', NULL, 0, 1, 1, 2772, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 5, '15:00', '15:14', NULL, 0, 1, 1, 2773, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 6, '15:30', '15:44', NULL, 0, 1, 0, 2774, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 7, '16:00', '16:14', NULL, 0, 1, 0, 2775, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 8, '16:30', '16:44', NULL, 0, 1, 0, 2776, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 9, '17:00', '17:14', NULL, 0, 1, 0, 2777, 'LT 3'),
(322, '14-07-2017', 'TOILET  WANITA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 10, '17:30', '17:44', NULL, 0, 1, 0, 2778, 'LT 3'),
(333, '14-07-2017', 'R. MEETING CAMRY 1', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:25', '20:29', NULL, 0, 0, 0, 2779, 'LT 3'),
(319, '14-07-2017', 'R. LAKTASI', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '18:35', '18:39', NULL, 0, 1, 0, 2780, 'LT 3'),
(311, '14-07-2017', 'R. BUYER 1', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '18:45', '18:49', NULL, 0, 1, 0, 2781, 'LT 3'),
(336, '14-07-2017', 'R. MEETING CAMRY 2', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:20', '20:24', NULL, 0, 0, 0, 2782, 'LT 3'),
(314, '14-07-2017', 'R. BUYER 2', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '18:40', '18:44', NULL, 0, 1, 0, 2783, 'LT 3'),
(341, '14-07-2017', 'COFFEE CORNER \nSISI YOS', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:15', '20:19', NULL, 0, 0, 0, 2784, 'LT 3'),
(308, '14-07-2017', 'R. INTERVIEW', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '18:50', '18:54', NULL, 0, 1, 0, 2785, 'LT 3'),
(305, '14-07-2017', 'R. CONSELING', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '18:55', '18:59', NULL, 0, 1, 0, 2786, 'LT 3'),
(302, '14-07-2017', 'KORIDOR \nSISI PODOMORO', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '19:45', '19:49', NULL, 0, 0, 0, 2787, 'LT 3'),
(343, '14-07-2017', 'R. MEETING ATSG', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:10', '20:14', NULL, 0, 0, 0, 2788, 'LT 3'),
(349, '14-07-2017', 'R. DIREKTUR \nMR. EDWARD', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '20:30', '20:34', NULL, 0, 0, 0, 2789, 'LT 3'),
(299, '14-07-2017', 'EXPATRIAT AREA', 'Shift 3(P)', 'Desi Astuti', '081294410664', 5, 1, '19:40', '19:44', NULL, 0, 0, 0, 2790, 'LT 3'),
(329, '14-07-2017', 'OFFICE GAD - EID', 'Shift 3(P)', 'Desi Astuti', '081294410664', 15, 1, '18:15', '18:29', NULL, 0, 1, 0, 2791, 'LT 3');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `area` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `area`) VALUES
(31, 'LT 1'),
(32, 'LT 2'),
(33, 'LT 3'),
(34, 'LT 4'),
(35, 'LT 5'),
(36, 'LT 6'),
(37, 'LT 7'),
(38, 'Mezzanine'),
(39, 'Loby Annex'),
(40, 'Masjid'),
(41, 'R. Makan'),
(42, 'Remote Area'),
(43, 'Studio Design'),
(44, 'Gondola');

-- --------------------------------------------------------

--
-- Table structure for table `daemons`
--

CREATE TABLE `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `detailtask`
--

CREATE TABLE `detailtask` (
  `idTask` int(11) NOT NULL,
  `startTime` varchar(10) NOT NULL,
  `endTime` varchar(10) NOT NULL,
  `occurence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailtask`
--

INSERT INTO `detailtask` (`idTask`, `startTime`, `endTime`, `occurence`) VALUES
(277, '06:50', '06:54', 1),
(277, '12:40', '12:44', 2),
(278, '18:15', '18:29', 1),
(278, '19:20', '19:34', 2),
(279, '06:45', '06:49', 1),
(279, '10:45', '10:49', 2),
(280, '13:15', '13:19', 1),
(280, '16:15', '16:19', 2),
(281, '19:10', '19:24', 1),
(282, '06:57', '06:59', 1),
(282, '12:12', '12:14', 2),
(283, '20:25', '20:29', 1),
(284, '19:05', '19:09', 1),
(285, '07:00', '07:02', 1),
(285, '12:15', '12:17', 2),
(286, '20:20', '20:24', 1),
(287, '19:00', '19:04', 1),
(288, '06:50', '06:59', 1),
(288, '10:15', '10:24', 2),
(289, '13:20', '13:29', 1),
(289, '16:35', '16:44', 2),
(290, '07:00', '07:02', 1),
(290, '12:48', '12:50', 2),
(291, '19:11', '19:15', 1),
(292, '07:04', '07:06', 1),
(292, '12:51', '12:53', 2),
(293, '19:00', '19:04', 1),
(294, '18:55', '18:59', 1),
(295, '06:47', '06:49', 1),
(295, '12:37', '12:39', 2),
(296, '19:35', '19:39', 1),
(297, '19:25', '19:29', 1),
(298, '06:44', '06:46', 1),
(298, '12:34', '12:36', 2),
(299, '19:40', '19:44', 1),
(300, '19:30', '19:34', 1),
(301, '06:40', '06:42', 1),
(301, '12:30', '12:32', 2),
(302, '19:45', '19:49', 1),
(303, '19:35', '19:39', 1),
(304, '07:07', '07:09', 1),
(304, '12:54', '12:56', 2),
(305, '18:55', '18:59', 1),
(306, '18:50', '18:54', 1),
(307, '07:10', '07:12', 1),
(307, '12:57', '12:59', 2),
(308, '18:50', '18:54', 1),
(309, '18:45', '18:49', 1),
(310, '07:13', '07:15', 1),
(310, '13:00', '13:02', 2),
(311, '18:45', '18:49', 1),
(312, '18:40', '18:44', 1),
(313, '07:16', '07:18', 1),
(313, '13:03', '13:05', 2),
(314, '18:40', '18:44', 1),
(315, '18:35', '18:39', 1),
(318, '08:45', '08:49', 1),
(319, '18:35', '18:39', 1),
(320, '06:00', '06:14', 1),
(320, '07:30', '07:44', 2),
(320, '07:45', '07:59', 3),
(320, '08:00', '08:14', 4),
(320, '08:30', '08:44', 5),
(320, '09:00', '09:14', 6),
(320, '09:30', '09:44', 7),
(320, '10:00', '10:14', 8),
(320, '10:30', '10:44', 9),
(320, '11:00', '11:14', 10),
(320, '11:30', '11:44', 11),
(321, '08:15', '08:29', 1),
(321, '08:45', '08:59', 2),
(321, '09:15', '09:29', 3),
(321, '09:45', '09:59', 4),
(321, '10:15', '10:29', 5),
(321, '10:45', '10:59', 6),
(321, '11:15', '11:29', 7),
(321, '11:45', '11:59', 8),
(321, '12:00', '12:14', 9),
(321, '12:15', '12:29', 10),
(321, '12:30', '12:44', 11),
(321, '12:45', '12:59', 12),
(321, '13:15', '13:29', 13),
(321, '13:45', '13:59', 14),
(321, '14:15', '14:29', 15),
(321, '14:45', '14:59', 16),
(321, '15:15', '15:29', 17),
(321, '15:45', '15:59', 18),
(321, '16:15', '16:29', 19),
(321, '16:45', '16:59', 20),
(322, '13:00', '13:14', 1),
(322, '13:30', '13:44', 2),
(322, '14:00', '14:14', 3),
(322, '14:30', '14:44', 4),
(322, '15:00', '15:14', 5),
(322, '15:30', '15:44', 6),
(322, '16:00', '16:14', 7),
(322, '16:30', '16:44', 8),
(322, '17:00', '17:14', 9),
(322, '17:30', '17:44', 10),
(323, '09:15', '09:19', 1),
(324, '18:30', '18:34', 1),
(325, '08:50', '08:59', 1),
(326, '18:30', '18:34', 1),
(327, '20:45', '20:59', 1),
(328, '06:24', '06:28', 1),
(328, '12:09', '12:13', 2),
(329, '18:15', '18:29', 1),
(330, '06:25', '06:29', 1),
(330, '10:25', '10:29', 2),
(331, '14:25', '14:29', 1),
(331, '16:25', '16:29', 2),
(332, '06:28', '06:30', 1),
(332, '12:14', '12:16', 2),
(333, '20:25', '20:29', 1),
(334, '20:10', '20:14', 1),
(335, '06:31', '06:33', 1),
(335, '12:17', '12:19', 2),
(336, '20:20', '20:24', 1),
(337, '20:05', '20:09', 1),
(338, '06:15', '06:24', 1),
(338, '09:20', '09:29', 2),
(338, '10:50', '10:59', 3),
(339, '14:15', '14:24', 1),
(339, '16:15', '16:24', 2),
(340, '06:34', '06:36', 1),
(340, '12:20', '12:22', 2),
(341, '20:15', '20:19', 1),
(342, '06:37', '06:38', 1),
(342, '12:23', '12:24', 2),
(343, '20:10', '20:14', 1),
(344, '20:00', '20:04', 1),
(345, '06:39', '06:40', 1),
(345, '12:25', '12:26', 2),
(346, '20:05', '20:09', 1),
(347, '19:55', '19:59', 1),
(348, '06:21', '06:23', 1),
(348, '12:06', '12:08', 2),
(349, '20:30', '20:34', 1),
(350, '20:15', '20:24', 1),
(351, '06:18', '06:20', 1),
(351, '12:03', '12:05', 2),
(352, '20:35', '20:39', 1),
(353, '20:25', '20:34', 1),
(354, '06:15', '06:17', 1),
(354, '12:00', '12:02', 2),
(355, '20:40', '20:44', 1),
(356, '20:35', '20:44', 1),
(357, '06:41', '06:42', 1),
(357, '12:27', '12:28', 2),
(358, '20:00', '20:04', 1),
(359, '19:45', '19:54', 1),
(360, '06:30', '06:44', 1),
(360, '07:00', '07:14', 2),
(360, '07:15', '07:29', 3),
(360, '08:15', '08:29', 4),
(360, '08:45', '08:59', 5),
(360, '11:15', '11:29', 6),
(360, '11:45', '11:59', 7),
(360, '12:15', '12:29', 8),
(361, '13:00', '13:14', 1),
(361, '15:00', '15:14', 2),
(362, '15:45', '15:59', 1),
(363, '07:15', '07:24', 1),
(363, '09:15', '09:24', 2),
(363, '11:15', '11:24', 3),
(364, '13:00', '13:09', 1),
(364, '14:50', '14:59', 2),
(364, '16:35', '16:44', 3),
(365, '19:50', '19:59', 1),
(366, '06:00', '06:14', 1),
(366, '07:30', '07:44', 2),
(366, '07:45', '07:59', 3),
(366, '08:00', '08:14', 4),
(366, '08:30', '08:44', 5),
(366, '09:00', '09:14', 6),
(366, '09:30', '09:44', 7),
(366, '10:00', '10:14', 8),
(366, '10:30', '10:44', 9),
(366, '11:00', '11:14', 10),
(366, '11:30', '11:44', 11),
(366, '12:00', '12:14', 12),
(366, '12:30', '12:44', 13),
(367, '08:15', '08:29', 1),
(367, '08:45', '08:59', 2),
(367, '09:15', '09:29', 3),
(367, '09:45', '09:59', 4),
(367, '10:15', '10:29', 5),
(367, '10:45', '10:59', 6),
(367, '11:15', '11:29', 7),
(367, '11:45', '11:59', 8),
(367, '12:15', '12:29', 9),
(367, '12:45', '12:59', 10),
(367, '13:15', '13:29', 11),
(367, '13:45', '13:59', 12),
(367, '14:15', '14:29', 13),
(367, '14:45', '14:59', 14),
(367, '15:15', '15:29', 15),
(367, '15:45', '15:59', 16),
(367, '16:15', '16:29', 17),
(367, '16:45', '16:59', 18),
(368, '13:00', '13:14', 1),
(368, '13:30', '13:44', 2),
(368, '14:00', '14:14', 3),
(368, '14:30', '14:44', 4),
(368, '15:00', '15:14', 5),
(368, '15:30', '15:44', 6),
(368, '16:00', '16:14', 7),
(368, '16:30', '16:44', 8),
(368, '17:00', '17:14', 9),
(368, '17:30', '17:44', 10),
(368, '18:00', '18:14', 11);

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`) VALUES
('2017-06-16 08:12:31', '2017-06-16 07:42:09', '005400650073', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Tes', 1, '', 'true'),
('2017-06-16 08:19:12', '2017-06-16 08:18:30', '00310034005F0031', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '14_1', 2, '', 'true'),
('2017-06-16 08:20:51', '2017-06-16 08:20:10', '00310034005F0031000A', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '14_1\n', 3, '', 'true'),
('2017-06-16 08:21:41', '2017-06-16 08:20:59', '00310034005F0031', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '14_1', 4, '', 'true'),
('2017-06-16 08:23:05', '2017-06-16 08:22:22', '00310034005F0031', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '14_1', 5, '', 'true'),
('2017-06-16 08:53:58', '2017-06-16 08:41:55', '00310034005F0031', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '14_1', 6, '', 'true'),
('2017-06-16 08:55:35', '2017-06-16 08:54:54', '00310039005F0032005F0044006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '19_2_Done', 7, '', 'true'),
('2017-06-16 08:57:05', '2017-06-16 08:56:22', '00310039005F0032005F0044006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '19_2_Done', 8, '', 'true'),
('2017-06-16 09:01:18', '2017-06-16 09:00:35', '00310037005F0032005F0044006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '17_2_Done', 9, '', 'true'),
('2017-06-16 09:07:06', '2017-06-16 09:06:23', '00310033005F0032005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '13_2_done', 10, '', 'true'),
('2017-06-16 09:15:13', '2017-06-16 09:14:30', '00310034005F0032005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '14_2_done', 11, '', 'true'),
('2017-06-19 03:46:51', '2017-06-16 09:25:49', '00310034005F0032005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '14_2_done', 12, '', 'true'),
('2017-06-19 03:47:23', '2017-06-19 02:11:30', '0050006C0067006E0020005900740068002C0020007400610067006900680061006E0020004B006100720074007500480041004C004F00200041006E00640061002000730062007300720020005200700020003100360035002C003000300030002C00200070006200610079006100720061006E002000730062006C006D00200032003000310037002D00300037002D00310030002000640069002000420061006E006B002F004E006F006E002000420061006E006B002F00540063006100730068002F0047007200610050004100520049002000740065007200640065006B00610074002E00200041006200610069006B0061006E002000620069006C006100200073006400680020006D0065006D00620061007900610072002C00200074006500720069006D00610020006B0061007300690068002E', 'TELKOMSEL', 'Default_No_Compression', '', '+6281100000', 1, 'Plgn Yth, tagihan KartuHALO Anda sbsr Rp 165,000, pbayaran sblm 2017-07-10 di Bank/Non Bank/Tcash/GraPARI terdekat. Abaikan bila sdh membayar, terima kasih.', 13, '', 'true'),
('2017-06-19 03:47:42', '2017-06-19 03:43:08', '0033005F0032005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '3_2_done', 14, '', 'true'),
('2017-06-19 06:26:13', '2017-06-19 06:23:24', '0034005F0031005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '4_1_done', 15, '', 'true'),
('2017-07-04 08:46:40', '2017-07-04 07:46:21', '00350037005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '57_done', 16, '', 'true'),
('2017-07-06 09:02:36', '2017-07-06 09:02:18', '0031003000360033005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '1063_done', 17, '', 'true'),
('2017-07-13 06:03:49', '2017-07-13 06:03:21', '0031003100340030005F0064006F006E0065', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, '1140_done', 18, '', 'true'),
('2017-07-13 07:17:46', '2017-07-13 07:09:23', '005400610073006B005F00530068006900660074002000320028004C0029005F004C005400200033', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Task_Shift 2(L)_LT 3', 19, '', 'true'),
('2017-07-13 07:11:15', '2017-07-13 07:10:48', '00420065006C006900200031002000470072006100740069007300200031002000500069007A007A00610020002F0020005000610073007400610021002000540075006B0061007200200053004D005300200069006E0069002000640069002000500069007A007A006100450078007000720065007300730020002F002000500069007A007A00610020004D00610072007A0061006E006F002000740065007200640065006B00610074002E002000480061006E007900610020006200650072006C0061006B00750020006800610072006900200069006E0069002E0054002600430020006100700070006C0079002E002000500072006F006D006F002A0036003000360023', 'PizzaExpres', 'Default_No_Compression', '', '+6281100000', 1, 'Beli 1 Gratis 1 Pizza / Pasta! Tukar SMS ini di PizzaExpress / Pizza Marzano terdekat. Hanya berlaku hari ini.T&C apply. Promo*606#', 20, '', 'false'),
('2017-07-13 07:22:57', '2017-07-13 07:22:30', '005400610073006B005F00530068006900660074002000320028004C0029005F004C005400200033', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Task_Shift 2(L)_LT 3', 21, '', 'true'),
('2017-07-13 07:27:00', '2017-07-13 07:26:33', '005400610073006B005F00530068006900660074002000320028004C0029005F004C005400200033', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Task_Shift 2(L)_LT 3', 22, '', 'true'),
('2017-07-13 07:31:53', '2017-07-13 07:31:27', '005400610073006B005F00530068006900660074002000320028004C0029005F004C005400200033', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Task_Shift 2(L)_LT 3', 23, '', 'true'),
('2017-07-13 07:47:06', '2017-07-13 07:46:30', '005400610073006B005F00530068006900660074002000320028004C0029005F004C005400200033', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Task_Shift 2(L)_LT 3', 24, '', 'true'),
('2017-07-13 08:01:50', '2017-07-13 08:01:06', '005400610073006B005F00530068006900660074002000320028004C0029005F004C005400200033000A', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Task_Shift 2(L)_LT 3\n', 25, '', 'true'),
('2017-07-13 08:02:54', '2017-07-13 08:02:26', '005400610073006B005F00530068006900660074002000320028004C0029005F004C005400200033', '+6282329356023', 'Default_No_Compression', '', '+6281107907', -1, 'Task_Shift 2(L)_LT 3', 26, '', 'true');

--
-- Triggers `inbox`
--
DELIMITER $$
CREATE TRIGGER `inbox_timestamp` BEFORE INSERT ON `inbox` FOR EACH ROW BEGIN
    IF NEW.ReceivingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.ReceivingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Triggers `outbox`
--
DELIMITER $$
CREATE TRIGGER `outbox_timestamp` BEFORE INSERT ON `outbox` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingTimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.SendingTimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pbk`
--

CREATE TABLE `pbk` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `Name` text NOT NULL,
  `Number` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pbk_groups`
--

CREATE TABLE `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `idPegawai` int(11) NOT NULL,
  `namaPegawai` varchar(30) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `jenisKelamin` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`idPegawai`, `namaPegawai`, `kontak`, `jenisKelamin`) VALUES
(2, 'Asep RD', '0895322169523', 'L'),
(3, 'Desi Astuti', '081294410664', 'P'),
(4, 'Sri Hotanti', '081247787772', 'P'),
(5, 'Asep', '085723963658', 'L'),
(6, 'Subair', '0895334794737', 'L'),
(7, 'Ilham', '08981503733', 'L'),
(8, 'Imas', '087875064251', 'P'),
(9, 'Desy', '081285542647', 'P'),
(10, 'Fini', '089609785438', 'P'),
(11, 'Galih', '08881403429', 'L'),
(12, 'Mora', '085891370637', 'L'),
(13, 'Sila', '085877632207', 'P'),
(14, 'Nurwati', '087886636123', 'P'),
(15, 'Nurul', '085693383216', 'P'),
(16, 'Fatham', '089686677047', 'L'),
(17, 'Bahrul', '08811832843', 'L'),
(18, 'Indra', '085759474765', 'L'),
(19, 'Fany', '081311144994', 'P'),
(20, 'Fitri', '08996749672', 'P'),
(21, 'Inda', '085717333209', 'P'),
(22, 'Edi', '085888255120', 'L'),
(23, 'Iwan', '085779770690', 'L'),
(24, 'Irwanto', '0895339059617', 'L'),
(25, 'Septian', '085695996415', 'L'),
(26, 'Irsan', '087720468439', 'L'),
(27, 'Rohim', '089673517292', 'L'),
(28, 'Kastolani', '08159533041', 'L'),
(29, 'Solihin', '088808134841', 'L'),
(30, 'Toni', '085729276659', 'L'),
(31, 'Yuni', '085692484019', 'L'),
(32, 'Rahman', '089529292999', 'L'),
(33, 'Subekti', '082111699204', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `pengawas`
--

CREATE TABLE `pengawas` (
  `kontak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengawas`
--

INSERT INTO `pengawas` (`kontak`) VALUES
('082329356023');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '-1',
  `Signal` int(11) NOT NULL DEFAULT '-1',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('', '2017-07-14 07:42:16', '2017-07-14 03:15:46', '2017-07-14 07:42:26', 'yes', 'yes', '863745010036867', 'Gammu 1.31.0, Windows Server 2007, GCC 4.6, MinGW 3.11', 100, 84, 0, 0);

--
-- Triggers `phones`
--
DELIMITER $$
CREATE TRIGGER `phones_timestamp` BEFORE INSERT ON `phones` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.TimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.TimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `kodeRuangan` char(8) NOT NULL,
  `namaRuangan` varchar(30) DEFAULT NULL,
  `area` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`kodeRuangan`, `namaRuangan`, `area`) VALUES
('L3-PD-01', 'OFFICE HRD', 'LT 3'),
('L3-PD-02', 'R. MEETING RUSH 1', 'LT 3'),
('L3-PD-03', 'R. MEETING RUSH 2', 'LT 3'),
('L3-PD-04', 'COFFEE CORNER \nSISI PODOMORO', 'LT 3'),
('L3-PD-05', 'R. REMUNERATION', 'LT 3'),
('L3-PD-06', 'R. LEGAL', 'LT 3'),
('L3-PD-07', 'EXPATRIAT AREA', 'LT 3'),
('L3-PD-08', 'KORIDOR \nSISI PODOMORO', 'LT 3'),
('L3-PD-09', 'R. CONSELING', 'LT 3'),
('L3-PD-10', 'R. INTERVIEW', 'LT 3'),
('L3-PD-11', 'R. BUYER 1', 'LT 3'),
('L3-PD-12', 'R. BUYER 2', 'LT 3'),
('L3-PD-14', 'R. LAKTASI', 'LT 3'),
('L3-PD-16', 'TOILET  WANITA', 'LT 3'),
('L3-PD-17', 'PANTRY', 'LT 3'),
('L3-YS-01', 'OFFICE GAD - EID', 'LT 3'),
('L3-YS-02', 'R. MEETING CAMRY 1', 'LT 3'),
('L3-YS-03', 'R. MEETING CAMRY 2', 'LT 3'),
('L3-YS-04', 'COFFEE CORNER \nSISI YOS', 'LT 3'),
('L3-YS-05', 'R. MEETING ATSG', 'LT 3'),
('L3-YS-06', 'R. CRISIS CENTER', 'LT 3'),
('L3-YS-07', 'R. DIREKTUR \nMR. EDWARD', 'LT 3'),
('L3-YS-08', 'R. MEETING \nDIREKTUR', 'LT 3'),
('L3-YS-09', 'R. DIREKTUR \nMR. BOB', 'LT 3'),
('L3-YS-10', 'KORIDOR OFFICE \nSISI YOS', 'LT 3'),
('L3-YS-11', 'LOBBY LIFT', 'LT 3'),
('L3-YS-13', 'JANITOR', 'LT 3'),
('L3-YS-15', 'TOILET PRIA', 'LT 3');

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`) VALUES
('2017-06-12 02:17:01', '2017-06-12 01:58:22', '2017-06-12 02:17:01', NULL, '006F006B', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'ok', 1, '', 1, 'SendingOKNoReport', -1, 232, 255, ''),
('2017-06-12 04:24:36', '2017-06-12 04:24:08', '2017-06-12 04:24:36', NULL, '004A0061006400770061006C00200043006C00650061006E0069006E006700200053006500720076006900630065003A0020004900440020005400610073006B0020003D00200020005200750061006E00670061006E0020003D0020002000570061006B007400750020004D0075006C006100690020003D0020', '', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Cleaning Service: ID Task =  Ruangan =  Waktu Mulai = ', 2, '', 1, 'SendingError', -1, -1, 255, ''),
('2017-06-12 04:24:43', '2017-06-12 04:24:19', '2017-06-12 04:24:43', NULL, '004A0061006400770061006C00200043006C00650061006E0069006E006700200053006500720076006900630065003A0020004900440020005400610073006B0020003D00200020005200750061006E00670061006E0020003D0020002000570061006B007400750020004D0075006C006100690020003D0020', '', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Cleaning Service: ID Task =  Ruangan =  Waktu Mulai = ', 3, '', 1, 'SendingError', -1, -1, 255, ''),
('2017-06-12 04:25:18', '2017-06-12 04:24:53', '2017-06-12 04:25:18', NULL, '004A0061006400770061006C00200043006C00650061006E0069006E006700200053006500720076006900630065003A0020004900440020005400610073006B0020003D00200020005200750061006E00670061006E0020003D0020002000570061006B007400750020004D0075006C006100690020003D0020', '', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Cleaning Service: ID Task =  Ruangan =  Waktu Mulai = ', 4, '', 1, 'SendingError', -1, -1, 255, ''),
('2017-06-12 04:27:23', '2017-06-12 04:27:03', '2017-06-12 04:27:23', NULL, '004A0061006400770061006C00200043006C00650061006E0069006E006700200053006500720076006900630065003A0020004900440020005400610073006B0020003D00200020005200750061006E00670061006E0020003D0020002000570061006B007400750020004D0075006C006100690020003D0020', '', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Cleaning Service: ID Task =  Ruangan =  Waktu Mulai = ', 5, '', 1, 'SendingError', -1, -1, 255, ''),
('2017-06-12 04:27:28', '2017-06-12 04:27:07', '2017-06-12 04:27:28', NULL, '004A0061006400770061006C00200043006C00650061006E0069006E006700200053006500720076006900630065003A0020004900440020005400610073006B0020003D00200020005200750061006E00670061006E0020003D0020002000570061006B007400750020004D0075006C006100690020003D0020', '', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Cleaning Service: ID Task =  Ruangan =  Waktu Mulai = ', 6, '', 1, 'SendingError', -1, -1, 255, ''),
('2017-06-12 04:28:05', '2017-06-12 04:27:32', '2017-06-12 04:28:05', NULL, '004A0061006400770061006C00200043006C00650061006E0069006E006700200053006500720076006900630065003A0020004900440020005400610073006B0020003D002000310020005200750061006E00670061006E0020003D00200052002E0020004C004500470041004C002000570061006B007400750020004D0075006C006100690020003D002000310031003A00320037', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Cleaning Service: ID Task = 1 Ruangan = R. LEGAL Waktu Mulai = 11:27', 7, '', 1, 'SendingOKNoReport', -1, 238, 255, ''),
('2017-06-12 04:28:09', '2017-06-12 04:27:35', '2017-06-12 04:28:09', NULL, '004A0061006400770061006C00200043006C00650061006E0069006E006700200053006500720076006900630065003A0020004900440020005400610073006B0020003D002000310020005200750061006E00670061006E0020003D00200052002E0020004C004500470041004C002000570061006B007400750020004D0075006C006100690020003D002000310031003A00320037', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Cleaning Service: ID Task = 1 Ruangan = R. LEGAL Waktu Mulai = 11:27', 8, '', 1, 'SendingOKNoReport', -1, 239, 255, ''),
('2017-06-15 08:46:08', '2017-06-15 08:45:38', '2017-06-15 08:46:08', NULL, '004A0061006400770061006C00200041006E00640061003A0020004900440020005400610073006B0020003D00200035002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D00200052002E0020004C004500470041004C002C002000570061006B007400750020004D0075006C006100690020003D002000310035003A00340035002E00200054006500720069006D00610020004B0061007300690068002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Anda: ID Task = 5, Occur = 2, Ruangan = R. LEGAL, Waktu Mulai = 15:45. Terima Kasih. Selamat Bekerja', 9, '', 1, 'SendingOKNoReport', -1, 240, 255, ''),
('2017-06-15 08:46:42', '2017-06-15 08:46:38', '2017-06-15 08:46:42', NULL, '004A0061006400770061006C00200041006E00640061003A0020004900440020005400610073006B0020003D00200035002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D00200052002E0020004C004500470041004C002C002000570061006B007400750020004D0075006C006100690020003D002000310035003A00340035002E00200054006500720069006D00610020004B0061007300690068002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Anda: ID Task = 5, Occur = 2, Ruangan = R. LEGAL, Waktu Mulai = 15:45. Terima Kasih. Selamat Bekerja', 10, '', 1, 'SendingOKNoReport', -1, 241, 255, ''),
('2017-06-15 09:00:47', '2017-06-15 09:00:25', '2017-06-15 09:00:47', NULL, '004A0061006400770061006C00200041006E00640061003A0020004900440020005400610073006B0020003D00200035002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D00200052002E0020004C004500470041004C002C002000570061006B007400750020004D0075006C006100690020003D002000310035003A00350035002E00200054006500720069006D00610020004B0061007300690068002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Anda: ID Task = 5, Occur = 2, Ruangan = R. LEGAL, Waktu Mulai = 15:55. Terima Kasih. Selamat Bekerja', 11, '', 1, 'SendingOKNoReport', -1, 242, 255, ''),
('2017-06-16 07:38:36', '2017-06-16 07:11:51', '2017-06-16 07:38:36', NULL, '004A0061006400770061006C00200041006E00640061003A0020004900440020005400610073006B0020003D002000310034002C0020004F00630063007500720020003D00200031002C0020005200750061006E00670061006E0020003D0020004F0046004600490043004500200047004100440020002D0020004500490044002C002000570061006B007400750020004D0075006C006100690020003D002000310034003A00320030002E00200054006500720069006D00610020004B0061007300690068002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Anda: ID Task = 14, Occur = 1, Ruangan = OFFICE GAD - EID, Waktu Mulai = 14:20. Terima Kasih. Selamat Bekerja', 12, '', 1, 'SendingOKNoReport', -1, 243, 255, ''),
('2017-06-16 07:38:41', '2017-06-16 07:34:27', '2017-06-16 07:38:41', NULL, '00540075006700610073002000640069003A0020005200750061006E00670061006E0020003D0020004F0046004600490043004500200047004100440020002D0020004500490044002C002000570061006B007400750020004D0075006C006100690020003D002000310034003A003200300020006F006C006500680020004E0061006D00610020003D00200053007500620061006900720020004B006F006E00740061006B0020003D00200030003800320033003200390033003500360030003200330020005400650072006C0061006D006200610074002000530065006C006500730061006900200061007400610075002000420065006C0075006D002000440069006B00650072006A0061006B0061006E', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas di: Ruangan = OFFICE GAD - EID, Waktu Mulai = 14:20 oleh Nama = Subair Kontak = 082329356023 Terlambat Selesai atau Belum Dikerjakan', 13, '', 1, 'SendingOKNoReport', -1, 244, 255, ''),
('2017-06-16 09:13:13', '2017-06-16 09:13:05', '2017-06-16 09:13:13', NULL, '004A0061006400770061006C00200041006E00640061003A0020004900440020005400610073006B0020003D002000310034002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D0020004F0046004600490043004500200047004100440020002D0020004500490044002C002000570061006B007400750020004D0075006C006100690020003D002000310036003A00320030002E00200054006500720069006D00610020004B0061007300690068002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Anda: ID Task = 14, Occur = 2, Ruangan = OFFICE GAD - EID, Waktu Mulai = 16:20. Terima Kasih. Selamat Bekerja', 14, '', 1, 'SendingOKNoReport', -1, 245, 255, ''),
('2017-06-16 09:25:19', '2017-06-16 09:25:11', '2017-06-16 09:25:19', NULL, '004A0061006400770061006C00200041006E00640061003A0020004900440020005400610073006B0020003D002000310034002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D0020004F0046004600490043004500200047004100440020002D0020004500490044002C002000570061006B007400750020003D002000310036003A003200350020002D002000310036003A00320039002E00200046006F0072006D00610074002000620061006C006100730061006E0020006A0069006B0061002000730065006C0065007300610069003A0020004900440020005400610073006B005F004F0063006300750072005F0044006F006E0065002E00200054006500720069006D00610020004B0061007300690068002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Jadwal Anda: ID Task = 14, Occur = 2, Ruangan = OFFICE GAD - EID, Waktu = 16:25 - 16:29. Format balasan jika selesai: ID Task_Occur_Done. Terima Kasih. Selamat Bekerja', 15, '', 1, 'SendingOKNoReport', -1, 246, 255, ''),
('2017-06-19 04:34:37', '2017-06-19 04:34:19', '2017-06-19 04:34:37', NULL, '00540075006700610073002000640069003A0020005200750061006E00670061006E0020003D0020004F004600460049004300450020004800520044002C002000570061006B007400750020004D0075006C006100690020003D002000310030003A003300300020006F006C006500680020004E0061006D00610020003D00200049006C00680061006D0020004B006F006E00740061006B0020003D00200030003800320033003200390033003500360030003200330020005400650072006C0061006D006200610074002000530065006C006500730061006900200061007400610075002000420065006C0075006D002000440069006B00650072006A0061006B0061006E', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas di: Ruangan = OFFICE HRD, Waktu Mulai = 10:30 oleh Nama = Ilham Kontak = 082329356023 Terlambat Selesai atau Belum Dikerjakan', 16, '', 1, 'SendingOKNoReport', -1, 247, 255, ''),
('2017-06-19 06:07:41', '2017-06-19 06:05:07', '2017-06-19 06:07:41', NULL, '005B004A0061006400770061006C00200041006E00640061005D0020004900440020005400610073006B0020003D00200034002C0020004F00630063007500720020003D00200031002C0020005200750061006E00670061006E0020003D0020004F004600460049004300450020004800520044002C002000570061006B007400750020003D002000310033003A003100350020002D002000310033003A00310039002E00200046006F0072006D00610074002000620061006C006100730061006E0020006A0069006B0061002000730065006C0065007300610069003A0020004900440020005400610073006B005F004F0063006300750072005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, '[Jadwal Anda] ID Task = 4, Occur = 1, Ruangan = OFFICE HRD, Waktu = 13:15 - 13:19. Format balasan jika selesai: ID Task_Occur_Done. Selamat Bekerja', 17, '', 1, 'SendingOKNoReport', -1, 248, 255, ''),
('2017-06-20 01:43:01', '2017-06-20 01:42:53', '2017-06-20 01:43:01', NULL, '005B004A0061006400770061006C00200041006E00640061005D0020004900440020005400610073006B0020003D00200033002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D0020004F004600460049004300450020004800520044002C002000570061006B007400750020003D002000300038003A003400350020002D002000300038003A00340039002E00200046006F0072006D00610074002000620061006C006100730061006E0020006A0069006B0061002000730065006C0065007300610069003A0020004900440020005400610073006B005F004F0063006300750072005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, '[Jadwal Anda] ID Task = 3, Occur = 2, Ruangan = OFFICE HRD, Waktu = 08:45 - 08:49. Format balasan jika selesai: ID Task_Occur_Done. Selamat Bekerja', 18, '', 1, 'SendingOKNoReport', -1, 249, 255, ''),
('2017-06-21 02:12:44', '2017-06-21 02:12:18', '2017-06-21 02:12:44', NULL, '005B004A0061006400770061006C00200041006E00640061005D0020004900440020005400610073006B0020003D00200035002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D00200052002E0020004D0045004500540049004E00470020005200550053004800200031002C002000570061006B007400750020003D002000300039003A003100340020002D002000300039003A00310036002E00200046006F0072006D00610074002000620061006C006100730061006E0020006A0069006B0061002000730065006C0065007300610069003A0020004900440020005400610073006B005F004F0063006300750072005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '08q', 'Default_No_Compression', '', '+6281100000', -1, '[Jadwal Anda] ID Task = 5, Occur = 2, Ruangan = R. MEETING RUSH 1, Waktu = 09:14 - 09:16. Format balasan jika selesai: ID Task_Occur_Done. Selamat Bekerja', 19, '', 1, 'SendingError', -1, -1, 255, ''),
('2017-06-21 02:13:49', '2017-06-21 02:13:41', '2017-06-21 02:13:49', NULL, '005B004A0061006400770061006C00200041006E00640061005D0020004900440020005400610073006B0020003D00200035002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D00200052002E0020004D0045004500540049004E00470020005200550053004800200031002C002000570061006B007400750020003D002000300039003A003100340020002D002000300039003A00310036002E00200046006F0072006D00610074002000620061006C006100730061006E0020006A0069006B0061002000730065006C0065007300610069003A0020004900440020005400610073006B005F004F0063006300750072005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082111699204', 'Default_No_Compression', '', '+6281100000', -1, '[Jadwal Anda] ID Task = 5, Occur = 2, Ruangan = R. MEETING RUSH 1, Waktu = 09:14 - 09:16. Format balasan jika selesai: ID Task_Occur_Done. Selamat Bekerja', 20, '', 1, 'SendingOKNoReport', -1, 251, 255, ''),
('2017-07-04 07:35:57', '2017-07-04 07:35:42', '2017-07-04 07:35:57', NULL, '005B004A0061006400770061006C00200041006E00640061005D0020004900440020005400610073006B0020003D00200034002C0020004F00630063007500720020003D00200032002C0020005200750061006E00670061006E0020003D0020004F004600460049004300450020004800520044002C002000570061006B007400750020003D002000310034003A003300360020002D002000310034003A00340030002E00200046006F0072006D00610074002000620061006C006100730061006E0020006A0069006B0061002000730065006C0065007300610069003A0020004900440020005400610073006B005F004F0063006300750072005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, '[Jadwal Anda] ID Task = 4, Occur = 2, Ruangan = OFFICE HRD, Waktu = 14:36 - 14:40. Format balasan jika selesai: ID Task_Occur_Done. Selamat Bekerja', 21, '', 1, 'SendingOKNoReport', -1, 252, 255, ''),
('2017-07-04 07:46:02', '2017-07-04 07:45:40', '2017-07-04 07:46:02', NULL, '004400650061007200200044006500730069002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310034003A00340035002D00310034003A003500390020006400690020004F004600460049004300450020004800520044002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A002000350037005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Desi, jadwal Anda pada 14:45-14:59 di OFFICE HRD. Jika telah selesai, balas: 57_Done. Selamat Bekerja', 22, '', 1, 'SendingOKNoReport', -1, 253, 255, ''),
('2017-07-04 08:13:54', '2017-07-04 08:13:37', '2017-07-04 08:13:54', NULL, '004400650061007200200044006500730069002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310035003A00310035002D00310035003A003200390020006400690020004F004600460049004300450020004800520044002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A002000350038005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Desi, jadwal Anda pada 15:15-15:29 di OFFICE HRD. Jika telah selesai, balas: 58_Done. Selamat Bekerja', 24, '', 1, 'SendingOKNoReport', -1, 254, 255, ''),
('2017-07-04 08:47:00', '2017-07-04 08:46:40', '2017-07-04 08:47:00', NULL, '0054006500720069006D00610020004B0061007300690068002000540065006C006100680020004D0065006E006700650072006A0061006B0061006E002000540075006700610073', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Terima Kasih Telah Mengerjakan Tugas', 25, '', 1, 'SendingOKNoReport', -1, 255, 255, ''),
('2017-07-06 09:01:46', '2017-07-06 09:01:20', '2017-07-06 09:01:46', NULL, '00440065006100720020005200690064006800770061006E0020004400650077006F0070007200610062006F0077006F002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310036003A00300033002D00310036003A0031003700200064006900200054004F0049004C0045005400200050005200490041002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003000360033005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan Dewoprabowo, jadwal Anda pada 16:03-16:17 di TOILET PRIA. Jika telah selesai, balas: 1063_Done. Selamat Bekerja', 26, '', 1, 'SendingOKNoReport', -1, 0, 255, ''),
('2017-07-06 09:02:52', '2017-07-06 09:02:36', '2017-07-06 09:02:52', NULL, '0054006500720069006D00610020004B0061007300690068002000540065006C006100680020004D0065006E006700650072006A0061006B0061006E002000540075006700610073', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Terima Kasih Telah Mengerjakan Tugas', 27, '', 1, 'SendingOKNoReport', -1, 1, 255, ''),
('2017-07-10 10:20:02', '2017-07-07 08:57:22', '2017-07-10 10:20:02', NULL, '00440065006100720020005200690064006800770061006E0020004400650077006F0070007200610062006F0077006F002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310035003A00340035002D00310035003A003500390020006400690020004C004F0042004200590020004C0049004600540020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003100370037005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan Dewoprabowo, jadwal Anda pada 15:45-15:59 di LOBBY LIFT LT 3. Jika telah selesai, balas: 177_Done. Selamat Bekerja', 30, '', 1, 'SendingOKNoReport', -1, 2, 255, ''),
('2017-07-10 10:20:07', '2017-07-07 08:57:22', '2017-07-10 10:20:07', NULL, '00440065006100720020005200690064006800770061006E0020004400650077006F0070007200610062006F0077006F002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310035003A00300030002D00310035003A003100340020006400690020004C004F0042004200590020004C0049004600540020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003100320039005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan Dewoprabowo, jadwal Anda pada 15:00-15:14 di LOBBY LIFT LT 3. Jika telah selesai, balas: 129_Done. Selamat Bekerja', 29, '', 1, 'SendingOKNoReport', -1, 3, 255, ''),
('2017-07-10 10:20:11', '2017-07-07 08:57:22', '2017-07-10 10:20:11', NULL, '00440065006100720020005200690064006800770061006E0020004400650077006F0070007200610062006F0077006F002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310035003A00340035002D00310035003A0035003900200064006900200054004F0049004C00450054002000500052004900410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003100320038005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan Dewoprabowo, jadwal Anda pada 15:45-15:59 di TOILET PRIA LT 3. Jika telah selesai, balas: 128_Done. Selamat Bekerja', 28, '', 1, 'SendingOKNoReport', -1, 4, 255, ''),
('2017-07-10 10:20:15', '2017-07-07 08:57:22', '2017-07-10 10:20:15', NULL, '00440065006100720020005200690064006800770061006E0020004400650077006F0070007200610062006F0077006F002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310035003A00300030002D00310035003A0031003400200064006900200054004F0049004C00450054002000500052004900410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003100380030005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan Dewoprabowo, jadwal Anda pada 15:00-15:14 di TOILET PRIA LT 3. Jika telah selesai, balas: 180_Done. Selamat Bekerja', 31, '', 1, 'SendingOKNoReport', -1, 5, 255, ''),
('2017-07-10 10:20:19', '2017-07-07 10:28:51', '2017-07-10 10:20:19', NULL, '00440065006100720020005200690064006800770061006E0020004400650077006F0070007200610062006F0077006F002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310037003A00330030002D00310037003A0034003400200064006900200054004F0049004C00450054002000500052004900410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003200380031005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan Dewoprabowo, jadwal Anda pada 17:30-17:44 di TOILET PRIA LT 3. Jika telah selesai, balas: 281_Done. Selamat Bekerja', 32, '', 1, 'SendingOKNoReport', -1, 6, 255, ''),
('2017-07-10 10:21:57', '2017-07-10 10:21:24', '2017-07-10 10:21:57', NULL, '004400650061007200200050006500720063006F006200610061006E002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310037003A00300030002D00310037003A003100340020006100640061006C00610068002000200064006900200054004F0049004C004500540020002000570041004E0049005400410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003700350037005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Percobaan, jadwal Anda pada 17:00-17:14 adalah  di TOILET  WANITA LT 3. Jika telah selesai, balas: 757_Done. Selamat Bekerja', 35, '', 1, 'SendingOKNoReport', -1, 7, 255, ''),
('2017-07-10 10:22:03', '2017-07-10 10:21:24', '2017-07-10 10:22:03', NULL, '004400650061007200200050006500720063006F006200610061006E002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310037003A00320032002D00310037003A003300360020006100640061006C00610068002000200064006900200054004F0049004C004500540020002000570041004E0049005400410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003700340036005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Percobaan, jadwal Anda pada 17:22-17:36 adalah  di TOILET  WANITA LT 3. Jika telah selesai, balas: 746_Done. Selamat Bekerja', 34, '', 1, 'SendingOKNoReport', -1, 8, 255, ''),
('2017-07-10 10:22:09', '2017-07-10 10:21:24', '2017-07-10 10:22:09', NULL, '00440065006100720020005200690064006800770061006E002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310037003A00300030002D00310037003A003100340020006100640061006C006100680020006E0075006C006C00200064006900200054004F0049004C00450054002000500052004900410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A0020003700320039005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan, jadwal Anda pada 17:00-17:14 adalah null di TOILET PRIA LT 3. Jika telah selesai, balas: 729_Done. Selamat Bekerja', 33, '', 1, 'SendingOKNoReport', -1, 9, 255, ''),
('2017-07-13 06:00:42', '2017-07-13 06:00:27', '2017-07-13 06:00:42', NULL, '00440065006100720020005200690064006800770061006E002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310033003A00300030002D00310033003A003000390020006100640061006C0061006800200020006400690020004F0046004600490043004500200048005200440020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003100340030005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan, jadwal Anda pada 13:00-13:09 adalah  di OFFICE HRD LT 3. Jika telah selesai, balas: 1140_Done. Selamat Bekerja', 38, '', 1, 'SendingOKNoReport', -1, 10, 255, ''),
('2017-07-13 06:04:17', '2017-07-13 06:03:49', '2017-07-13 06:04:17', NULL, '0054006500720069006D00610020004B0061007300690068002000540065006C006100680020004D0065006E006700650072006A0061006B0061006E002000540075006700610073', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Terima Kasih Telah Mengerjakan Tugas', 39, '', 1, 'SendingOKNoReport', -1, 11, 255, ''),
('2017-07-13 06:06:51', '2017-07-13 06:06:20', '2017-07-13 06:06:51', NULL, '00440065006100720020005200690064006800770061006E002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310033003A00300038002D00310033003A003100370020006100640061006C0061006800200020006400690020004F0046004600490043004500200048005200440020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003100340031005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Ridhwan, jadwal Anda pada 13:08-13:17 adalah  di OFFICE HRD LT 3. Jika telah selesai, balas: 1141_Done. Selamat Bekerja', 40, '', 1, 'SendingOKNoReport', -1, 12, 255, ''),
('2017-07-13 07:10:25', '2017-07-13 07:09:53', '2017-07-13 07:10:25', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 42, '', 1, 'SendingOKNoReport', -1, 13, 255, ''),
('2017-07-13 07:10:28', '2017-07-13 07:09:53', '2017-07-13 07:10:28', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 41, '', 1, 'SendingOKNoReport', -1, 14, 255, ''),
('2017-07-13 07:10:31', '2017-07-13 07:09:55', '2017-07-13 07:10:31', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 44, '', 1, 'SendingOKNoReport', -1, 15, 255, ''),
('2017-07-13 07:10:34', '2017-07-13 07:09:56', '2017-07-13 07:10:34', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 45, '', 1, 'SendingOKNoReport', -1, 16, 255, ''),
('2017-07-13 07:10:37', '2017-07-13 07:09:58', '2017-07-13 07:10:37', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 47, '', 1, 'SendingOKNoReport', -1, 17, 255, ''),
('2017-07-13 07:10:40', '2017-07-13 07:09:59', '2017-07-13 07:10:40', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 48, '', 1, 'SendingOKNoReport', -1, 18, 255, ''),
('2017-07-13 07:10:43', '2017-07-13 07:10:00', '2017-07-13 07:10:43', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 49, '', 1, 'SendingOKNoReport', -1, 19, 255, ''),
('2017-07-13 07:10:46', '2017-07-13 07:10:01', '2017-07-13 07:10:46', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 50, '', 1, 'SendingOKNoReport', -1, 20, 255, ''),
('2017-07-13 07:10:49', '2017-07-13 07:10:02', '2017-07-13 07:10:49', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310034003A00310035002D00310034003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00310035002D00310034003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 14:15-14:29 Ruangan: TOILET PRIA Jam: 14:15-14:29', 51, '', 1, 'SendingOKNoReport', -1, 21, 255, ''),
('2017-07-13 07:16:54', '2017-07-13 07:16:33', '2017-07-13 07:16:54', NULL, '004400650061007200200049006D00610073002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310034003A00310035002D00310034003A003200390020006100640061006C00610068002000200064006900200054004F0049004C004500540020002000570041004E0049005400410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003300380036005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Imas, jadwal Anda pada 14:15-14:29 adalah  di TOILET  WANITA LT 3. Jika telah selesai, balas: 1386_Done. Selamat Bekerja', 59, '', 1, 'SendingOKNoReport', -1, 22, 255, ''),
('2017-07-13 07:16:58', '2017-07-13 07:16:33', '2017-07-13 07:16:58', NULL, '00440065006100720020004100730065007000200053002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310034003A00310035002D00310034003A003200390020006100640061006C00610068002000200064006900200054004F0049004C00450054002000500052004900410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003300360034005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Asep S, jadwal Anda pada 14:15-14:29 adalah  di TOILET PRIA LT 3. Jika telah selesai, balas: 1364_Done. Selamat Bekerja', 58, '', 1, 'SendingOKNoReport', -1, 23, 255, ''),
('2017-07-13 07:18:05', '2017-07-13 07:17:46', '2017-07-13 07:18:05', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00340035002D00310034003A003500390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310035003A00340035002D00310035003A00350039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: TOILET PRIA Jam: 14:45-14:59 Ruangan: TOILET PRIA Jam: 15:45-15:59', 60, '', 1, 'SendingOKNoReport', -1, 24, 255, ''),
('2017-07-13 07:23:10', '2017-07-13 07:22:57', '2017-07-13 07:23:10', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00340035002D00310034003A003500390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310035003A00340035002D00310035003A00350039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: TOILET PRIA Jam: 14:45-14:59 Ruangan: TOILET PRIA Jam: 15:45-15:59', 61, '', 1, 'SendingOKNoReport', -1, 25, 255, ''),
('2017-07-13 07:27:15', '2017-07-13 07:27:00', '2017-07-13 07:27:15', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00340035002D00310034003A003500390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310035003A00340035002D00310035003A00350039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: TOILET PRIA Jam: 14:45-14:59 Ruangan: TOILET PRIA Jam: 15:45-15:59', 62, '', 1, 'SendingOKNoReport', -1, 26, 255, ''),
('2017-07-13 07:32:21', '2017-07-13 07:31:53', '2017-07-13 07:32:21', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310034003A00340035002D00310034003A003500390020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310035003A00300030002D00310035003A00310034', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: TOILET PRIA Jam: 14:45-14:59 Ruangan: LOBBY LIFT Jam: 15:00-15:14', 63, '', 1, 'SendingOKNoReport', -1, 27, 255, ''),
('2017-07-13 07:47:26', '2017-07-13 07:47:05', '2017-07-13 07:47:26', NULL, '004400650061007200200049006D00610073002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310034003A00340035002D00310034003A003500390020006100640061006C00610068002000200064006900200054004F0049004C004500540020002000570041004E0049005400410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003300370034005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Imas, jadwal Anda pada 14:45-14:59 adalah  di TOILET  WANITA LT 3. Jika telah selesai, balas: 1374_Done. Selamat Bekerja', 65, '', 1, 'SendingOKNoReport', -1, 28, 255, ''),
('2017-07-13 07:47:31', '2017-07-13 07:47:05', '2017-07-13 07:47:31', NULL, '00440065006100720020004100730065007000200053002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310034003A00340035002D00310034003A003500390020006100640061006C00610068002000200064006900200054004F0049004C00450054002000500052004900410020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003300350034005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Asep S, jadwal Anda pada 14:45-14:59 adalah  di TOILET PRIA LT 3. Jika telah selesai, balas: 1354_Done. Selamat Bekerja', 64, '', 1, 'SendingOKNoReport', -1, 29, 255, ''),
('2017-07-13 07:47:35', '2017-07-13 07:47:06', '2017-07-13 07:47:35', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A0020004C004F0042004200590020004C0049004600540020004A0061006D003A002000310035003A00300030002D00310035003A003100340020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310035003A00310035002D00310035003A00320039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: LOBBY LIFT Jam: 15:00-15:14 Ruangan: TOILET PRIA Jam: 15:15-15:29', 66, '', 1, 'SendingOKNoReport', -1, 30, 255, ''),
('2017-07-13 08:02:11', '2017-07-13 08:01:49', '2017-07-13 08:02:11', NULL, '00440065006100720020004100730065007000200053002C0020006A0061006400770061006C00200041006E0064006100200070006100640061002000310035003A00300030002D00310035003A003100340020006100640061006C0061006800200020006400690020004C004F0042004200590020004C0049004600540020004C005400200033002E0020004A0069006B0061002000740065006C00610068002000730065006C0065007300610069002C002000620061006C00610073003A00200031003300350037005F0044006F006E0065002E002000530065006C0061006D00610074002000420065006B00650072006A0061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Dear Asep S, jadwal Anda pada 15:00-15:14 adalah  di LOBBY LIFT LT 3. Jika telah selesai, balas: 1357_Done. Selamat Bekerja', 67, '', 1, 'SendingOKNoReport', -1, 31, 255, ''),
('2017-07-13 08:02:15', '2017-07-13 08:01:49', '2017-07-13 08:02:15', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0054006900640061006B0020004100640061', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya.Tidak Ada', 68, '', 1, 'SendingOKNoReport', -1, 32, 255, ''),
('2017-07-13 08:03:21', '2017-07-13 08:02:54', '2017-07-13 08:03:21', NULL, '0054007500670061007300200061006E00640061002000730065006C0061006E006A00750074006E00790061002E0020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310035003A00310035002D00310035003A003200390020005200750061006E00670061006E003A00200054004F0049004C00450054002000500052004900410020004A0061006D003A002000310035003A00340035002D00310035003A00350039', '082329356023', 'Default_No_Compression', '', '+6281100000', -1, 'Tugas anda selanjutnya. Ruangan: TOILET PRIA Jam: 15:15-15:29 Ruangan: TOILET PRIA Jam: 15:45-15:59', 69, '', 1, 'SendingOKNoReport', -1, 33, 255, '');

--
-- Triggers `sentitems`
--
DELIMITER $$
CREATE TRIGGER `sentitems_timestamp` BEFORE INSERT ON `sentitems` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `shiftpegawai`
--

CREATE TABLE `shiftpegawai` (
  `idPegawai` int(11) NOT NULL,
  `shift` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiftpegawai`
--

INSERT INTO `shiftpegawai` (`idPegawai`, `shift`, `area`) VALUES
(2, 'Shift 1(L)', 'LT 1'),
(2, 'Sabtu(L)', 'LT 1'),
(3, 'Shift 3(P)', 'LT 2'),
(3, 'Shift 3(P)', 'LT 3'),
(3, 'Minggu(P)', 'LT 2'),
(3, 'Minggu(P)', 'LT 3'),
(4, 'Shift 1(P)', 'LT 1'),
(4, 'Sabtu(P)', 'LT 1'),
(5, 'Shift 1(L)', 'LT 3'),
(5, 'Sabtu(L)', 'LT 3'),
(5, 'Sabtu(L)', 'LT 2'),
(6, 'Shift 3(L)', 'LT 6'),
(6, 'Shift 3(L)', 'LT 7'),
(6, 'Minggu(L)', 'LT 6'),
(6, 'Minggu(L)', 'LT 7'),
(7, 'Shift 3(L)', 'LT 3'),
(7, 'Shift 3(L)', 'LT 2'),
(7, 'Minggu(L)', 'LT 2'),
(7, 'Minggu(L)', 'LT 3'),
(8, 'Shift 1(P)', 'LT 3'),
(8, 'Sabtu(P)', 'LT 2'),
(8, 'Sabtu(P)', 'LT 3'),
(9, 'Shift 3(P)', 'LT 1'),
(9, 'Minggu(P)', 'LT 1'),
(10, 'Shift 2(P)', 'LT 6'),
(11, 'Shift 1(L)', 'LT 4'),
(11, 'Sabtu(L)', 'LT 4'),
(11, 'Sabtu(L)', 'LT 5'),
(12, 'Shift 3(L)', 'LT 4'),
(12, 'Shift 3(L)', 'LT 5'),
(12, 'Minggu(L)', 'LT 4'),
(12, 'Minggu(L)', 'LT 5'),
(13, 'Shift 1(P)', 'LT 4'),
(13, 'Sabtu(P)', 'LT 4'),
(13, 'Sabtu(P)', 'LT 5'),
(14, 'Shift 2(P)', 'LT 4'),
(15, 'Shift 3(P)', 'LT 4'),
(15, 'Shift 3(P)', 'LT 5'),
(15, 'Minggu(P)', 'LT 4'),
(15, 'Minggu(P)', 'LT 5'),
(16, 'Shift 2(L)', 'LT 6'),
(17, 'Shift 1(L)', 'LT 6'),
(17, 'Sabtu(L)', 'LT 6'),
(17, 'Sabtu(L)', 'LT 7'),
(18, 'Shift 2(L)', 'LT 3'),
(19, 'Shift 1(P)', 'LT 6'),
(19, 'Sabtu(P)', 'LT 6'),
(19, 'Sabtu(P)', 'LT 7'),
(20, 'Shift 3(P)', 'LT 6'),
(20, 'Shift 3(P)', 'LT 7'),
(20, 'Minggu(P)', 'LT 6'),
(20, 'Minggu(P)', 'LT 7'),
(21, 'Shift 2(P)', 'LT 3'),
(22, 'Shift 2(L)', 'Loby Annex'),
(23, 'Shift 3(L)', 'Loby Annex'),
(23, 'Minggu(L)', 'Loby Annex'),
(24, 'Shift 1(L)', 'Loby Annex'),
(24, 'Sabtu(L)', 'Loby Annex'),
(25, 'Shift 3(L)', 'Loby Annex'),
(25, 'Minggu(L)', 'Loby Annex'),
(26, 'Shift 2(L)', 'Remote Area'),
(27, 'Shift 2(L)', 'Studio Design'),
(28, 'Shift 2(L)', 'Gondola'),
(29, 'Shift 2(L)', 'Gondola'),
(30, 'Shift 2(L)', 'Gondola'),
(33, 'Shift 3(L)', 'LT 1'),
(33, 'Minggu(L)', 'LT 1');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `idTask` int(11) NOT NULL,
  `kodeRuangan` char(8) NOT NULL,
  `shift` varchar(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `deskripsi` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`idTask`, `kodeRuangan`, `shift`, `duration`, `deskripsi`) VALUES
(277, 'L3-PD-01', 'Shift 1(P)', 5, NULL),
(278, 'L3-PD-01', 'Shift 3(P)', 15, NULL),
(279, 'L3-PD-01', 'Shift 1(L)', 5, NULL),
(280, 'L3-PD-01', 'Shift 3(L)', 5, NULL),
(281, 'L3-PD-01', 'Shift 3(L)', 15, NULL),
(282, 'L3-PD-02', 'Shift 1(P)', 3, NULL),
(283, 'L3-PD-02', 'Shift 3(P)', 5, NULL),
(284, 'L3-PD-02', 'Shift 3(L)', 5, NULL),
(285, 'L3-PD-03', 'Shift 1(P)', 3, NULL),
(286, 'L3-PD-03', 'Shift 3(P)', 5, NULL),
(287, 'L3-PD-03', 'Shift 3(L)', 5, NULL),
(288, 'L3-PD-04', 'Shift 1(L)', 10, NULL),
(289, 'L3-PD-04', 'Shift 3(L)', 10, NULL),
(290, 'L3-PD-04', 'Shift 1(P)', 3, NULL),
(291, 'L3-PD-04', 'Shift 3(P)', 5, NULL),
(292, 'L3-PD-05', 'Shift 1(P)', 3, NULL),
(293, 'L3-PD-05', 'Shift 3(P)', 5, NULL),
(294, 'L3-PD-05', 'Shift 3(L)', 5, NULL),
(295, 'L3-PD-06', 'Shift 1(P)', 3, NULL),
(296, 'L3-PD-06', 'Shift 3(P)', 5, NULL),
(297, 'L3-PD-06', 'Shift 3(L)', 5, NULL),
(298, 'L3-PD-07', 'Shift 1(P)', 3, NULL),
(299, 'L3-PD-07', 'Shift 3(P)', 5, NULL),
(300, 'L3-PD-07', 'Shift 3(L)', 5, NULL),
(301, 'L3-PD-08', 'Shift 1(P)', 3, NULL),
(302, 'L3-PD-08', 'Shift 3(P)', 5, NULL),
(303, 'L3-PD-08', 'Shift 3(L)', 5, NULL),
(304, 'L3-PD-09', 'Shift 1(P)', 3, NULL),
(305, 'L3-PD-09', 'Shift 3(P)', 5, NULL),
(306, 'L3-PD-09', 'Shift 3(L)', 5, NULL),
(307, 'L3-PD-10', 'Shift 1(P)', 3, NULL),
(308, 'L3-PD-10', 'Shift 3(P)', 5, NULL),
(309, 'L3-PD-10', 'Shift 3(L)', 5, NULL),
(310, 'L3-PD-11', 'Shift 1(P)', 3, NULL),
(311, 'L3-PD-11', 'Shift 3(P)', 5, NULL),
(312, 'L3-PD-11', 'Shift 3(L)', 5, NULL),
(313, 'L3-PD-12', 'Shift 1(P)', 3, NULL),
(314, 'L3-PD-12', 'Shift 3(P)', 5, NULL),
(315, 'L3-PD-12', 'Shift 3(L)', 5, NULL),
(318, 'L3-PD-14', 'Shift 1(P)', 5, NULL),
(319, 'L3-PD-14', 'Shift 3(P)', 5, NULL),
(320, 'L3-PD-16', 'Shift 1(P)', 15, NULL),
(321, 'L3-PD-16', 'Shift 2(P)', 15, NULL),
(322, 'L3-PD-16', 'Shift 3(P)', 15, NULL),
(323, 'L3-PD-17', 'Shift 1(L)', 5, NULL),
(324, 'L3-PD-17', 'Shift 3(L)', 5, NULL),
(325, 'L3-PD-17', 'Shift 1(P)', 10, NULL),
(326, 'L3-PD-17', 'Shift 3(P)', 5, NULL),
(327, 'L3-YS-01', 'Shift 3(L)', 15, NULL),
(328, 'L3-YS-01', 'Shift 1(P)', 5, NULL),
(329, 'L3-YS-01', 'Shift 3(P)', 15, NULL),
(330, 'L3-YS-01', 'Shift 1(L)', 5, NULL),
(331, 'L3-YS-01', 'Shift 3(L)', 5, NULL),
(332, 'L3-YS-02', 'Shift 1(P)', 3, NULL),
(333, 'L3-YS-02', 'Shift 3(P)', 5, NULL),
(334, 'L3-YS-02', 'Shift 3(L)', 5, NULL),
(335, 'L3-YS-03', 'Shift 1(P)', 3, NULL),
(336, 'L3-YS-03', 'Shift 3(P)', 5, NULL),
(337, 'L3-YS-03', 'Shift 3(L)', 5, NULL),
(338, 'L3-YS-04', 'Shift 1(L)', 10, NULL),
(339, 'L3-YS-04', 'Shift 3(L)', 10, NULL),
(340, 'L3-YS-04', 'Shift 1(P)', 3, NULL),
(341, 'L3-YS-04', 'Shift 3(P)', 5, NULL),
(342, 'L3-YS-05', 'Shift 1(P)', 2, NULL),
(343, 'L3-YS-05', 'Shift 3(P)', 5, NULL),
(344, 'L3-YS-05', 'Shift 3(L)', 5, NULL),
(345, 'L3-YS-06', 'Shift 1(P)', 2, NULL),
(346, 'L3-YS-06', 'Shift 3(P)', 5, NULL),
(347, 'L3-YS-06', 'Shift 3(L)', 5, NULL),
(348, 'L3-YS-07', 'Shift 1(P)', 3, NULL),
(349, 'L3-YS-07', 'Shift 3(P)', 5, NULL),
(350, 'L3-YS-07', 'Shift 3(L)', 10, NULL),
(351, 'L3-YS-08', 'Shift 1(P)', 3, NULL),
(352, 'L3-YS-08', 'Shift 3(P)', 5, NULL),
(353, 'L3-YS-08', 'Shift 3(L)', 10, NULL),
(354, 'L3-YS-09', 'Shift 1(P)', 3, NULL),
(355, 'L3-YS-09', 'Shift 3(P)', 5, NULL),
(356, 'L3-YS-09', 'Shift 3(L)', 10, NULL),
(357, 'L3-YS-10', 'Shift 1(P)', 2, NULL),
(358, 'L3-YS-10', 'Shift 3(P)', 5, NULL),
(359, 'L3-YS-10', 'Shift 3(L)', 10, NULL),
(360, 'L3-YS-11', 'Shift 1(L)', 15, NULL),
(361, 'L3-YS-11', 'Shift 2(L)', 15, NULL),
(362, 'L3-YS-11', 'Shift 3(L)', 15, NULL),
(363, 'L3-YS-11', 'Shift 1(P)', 10, NULL),
(364, 'L3-YS-11', 'Shift 2(P)', 10, NULL),
(365, 'L3-YS-11', 'Shift 3(P)', 10, NULL),
(366, 'L3-YS-15', 'Shift 1(L)', 15, NULL),
(367, 'L3-YS-15', 'Shift 2(L)', 15, NULL),
(368, 'L3-YS-15', 'Shift 3(L)', 15, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actual`
--
ALTER TABLE `actual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detailtask`
--
ALTER TABLE `detailtask`
  ADD KEY `idTask` (`idTask`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `outbox`
--
ALTER TABLE `outbox`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  ADD KEY `outbox_sender` (`SenderID`);

--
-- Indexes for table `outbox_multipart`
--
ALTER TABLE `outbox_multipart`
  ADD PRIMARY KEY (`ID`,`SequencePosition`);

--
-- Indexes for table `pbk`
--
ALTER TABLE `pbk`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pbk_groups`
--
ALTER TABLE `pbk_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`idPegawai`);

--
-- Indexes for table `pengawas`
--
ALTER TABLE `pengawas`
  ADD UNIQUE KEY `kontak` (`kontak`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`IMEI`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kodeRuangan`);

--
-- Indexes for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`ID`,`SequencePosition`),
  ADD KEY `sentitems_date` (`DeliveryDateTime`),
  ADD KEY `sentitems_tpmr` (`TPMR`),
  ADD KEY `sentitems_dest` (`DestinationNumber`),
  ADD KEY `sentitems_sender` (`SenderID`);

--
-- Indexes for table `shiftpegawai`
--
ALTER TABLE `shiftpegawai`
  ADD KEY `idPegawai` (`idPegawai`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`idTask`),
  ADD KEY `task_ibfk_1` (`kodeRuangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actual`
--
ALTER TABLE `actual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2792;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `outbox`
--
ALTER TABLE `outbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `pbk`
--
ALTER TABLE `pbk`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pbk_groups`
--
ALTER TABLE `pbk_groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `idPegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `idTask` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailtask`
--
ALTER TABLE `detailtask`
  ADD CONSTRAINT `detailtask_ibfk_1` FOREIGN KEY (`idTask`) REFERENCES `task` (`idTask`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shiftpegawai`
--
ALTER TABLE `shiftpegawai`
  ADD CONSTRAINT `shiftpegawai_ibfk_1` FOREIGN KEY (`idPegawai`) REFERENCES `pegawai` (`idPegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`kodeRuangan`) REFERENCES `ruangan` (`kodeRuangan`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
