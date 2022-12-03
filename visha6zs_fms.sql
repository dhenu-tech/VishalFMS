-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2022 at 04:13 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visha6zs_fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `perid` int(10) NOT NULL,
  `madd` int(10) NOT NULL,
  `medit` int(10) NOT NULL,
  `mdel` int(10) NOT NULL,
  `sadd` int(10) NOT NULL,
  `sedit` int(10) NOT NULL,
  `sdel` int(10) NOT NULL,
  `fmdel` int(10) NOT NULL,
  `fsdel` int(10) NOT NULL,
  `aedit` int(10) NOT NULL,
  `upedit` int(10) NOT NULL,
  `adduser` int(10) NOT NULL,
  `deluser` int(10) NOT NULL,
  `cupass` int(10) NOT NULL,
  `rid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perid`, `madd`, `medit`, `mdel`, `sadd`, `sedit`, `sdel`, `fmdel`, `fsdel`, `aedit`, `upedit`, `adduser`, `deluser`, `cupass`, `rid`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 2),
(3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rid` int(10) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rid`, `role`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `upload_id` int(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `username` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `iconName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`upload_id`, `subject`, `comment`, `username`, `date`, `time`, `file_name`, `iconName`) VALUES
(1, 'Parking Shed Drawings', 'Drawings for Client\'s approval. Received on 29 Sep 20. Sanjay Take Printout on A1 Size (each 3 copies) for submitting the same for approval', 'venkana', '2020-09-30', '10:53 AM', '30-09-2020_10:53_AM_AEDBM 30-09-2020.zip', 'zip.png'),
(2, 'LK CCE R&D Letter 18-12-2020', 'To Prepare Methodology PPT & Barchart  as per letter', 'venkana', '2020-09-30', '05:37 PM', '30-09-2020_05:37_PM_LK - Methodolgy on PPT Dt 18.09.2020.pdf', 'pdf.png'),
(3, 'CCE R&D Letter 11-09-2020', 'Letter already Replied', 'venkana', '2020-09-30', '05:39 PM', '30-09-2020_05:39_PM_LK Submission of Documents dt 11-09-2020 11-Sep-2020 17-10-42.pdf', 'pdf.png'),
(4, 'LK Storage Biuilding', 'To Shreaya , Storage building B1 Drawing with assumed FFL and sections for discussion', 'venkana', '2020-10-01', '10:42 AM', '01-10-2020_10:42_AM_200908-VIL-AR-B1-101&102-CA0-B1-STORAGE BUILDING.dwg', 'cad.png'),
(5, 'Road and Pipeline layout - Pump House to Main Building', 'VG Sir, Road and Pipeline layout - Pump House to Main Building is enclosed herewith for levels and alignment of Pump house Road. Please send the same to department for approval of alignments', 'eswar', '2020-10-08', '12:50 PM', '08-10-2020_12:50_PM_Road and Pipeline layout - Pump House to Main Building.rar', 'RAR.png'),
(6, 'TECHNICAL AREA TEMP CONSTRUCTION LOCATION ', 'THIS IS FOR FOR INFORMATION ', 'eswar', '2020-10-08', '01:03 PM', '08-10-2020_01:03_PM_LOCATION SITE OFFICE RMC PLANT AND BUILDINGS.111111dwg (1).dwg', 'cad.png'),
(7, 'TECHNICAL AREA PROPOSED ROOD AND BUILDING RL  ', 'DEAR MVG, THIS IS LATEST  PROPOSED TECHNICAL AND ROAD BUILDING RL. ', 'eswar', '2020-10-08', '02:12 PM', '08-10-2020_02:12_PM_MASTER ROAD AND BUILDING.dwg', 'cad.png'),
(8, 'B1TO B4 FFL  AND ROAD LEVELS & PROPOSED LAYOUT FROM LEY SITE  ', 'DEAR SIR, PL FIND NEW PROPSED ROAD LAYOUT AND B1TOB4 FFL AND ROAD LEVEL ', 'eswar', '2020-10-09', '04:21 PM', '09-10-2020_04:21_PM_NEWB1 TO B4 , ROAD LAYOUT PROPOSAL  FROM  LK.dwg', 'cad.png'),
(9, 'pump house to tech  pipe line level and road aliment with Coordinates ', 'Dear MVG pl forwarded to  T santhosh ', 'eswar', '2020-10-10', '09:32 PM', '10-10-2020_09:32_PM_roadandpipeupdatedata.zip', 'zip.png'),
(10, 'Latest option for tech site B1 and B4', 'Please check the feasibility on site', 'shreya', '2020-10-11', '09:45 AM', '11-10-2020_09:45_AM_201010-VIL-LA-SP-004-CA0-SETTINGOUT PLAN(OPTION-1).pdf', 'pdf.png'),
(11, 'Latest option for tech site B1 and B4', 'Please check the feasibility on site', 'shreya', '2020-10-11', '09:45 AM', '11-10-2020_09:45_AM_201010-VIL-LA-SP-004-CA0-SETTINGOUT PLAN(OPTION-2).pdf', 'pdf.png'),
(12, 'BENCH MARKS AND HILL TOP AND HILL BOTTOM', 'THIS SURVEY FOR CALCULATE HILL CATCHMENT ARE BOTTOM & TOP RL', 'eswar', '2020-10-11', '09:56 AM', '11-10-2020_09:56_AM_HILL SURVEY.rar', 'RAR.png'),
(14, 'trial', 'trial', 'admin', '2020-10-14', '05:46 PM', '14-10-2020_05:46_PM_Prasanna Trust.zip', 'zip.png'),
(15, 'Design and Drawings of Parking Shed  for Submission', '@ Balam CHauhan ,\n6 sets of design and Drawings sent by AEDBM consultants directly to to your address at Delhi, speak to me before submitting the same to dept.\nDownload and make two DVDs and hand over to Dept alongwith Drawings.\nVG ', 'admin', '2020-10-17', '10:50 AM', '17-10-2020_10:50_AM_3 Oct 20 Parking shed Design.rar', 'RAR.png'),
(16, 'parking revised levels by addl cce n ', 'parking revised levels', 'eswar', '2020-11-05', '09:48 PM', '05-11-2020_09:48_PM_PARKING LATEST PLAN.dwg', 'cad.png'),
(17, 'parking revised levels by addl cce n ', 'pa', 'eswar', '2020-11-05', '09:52 PM', '05-11-2020_09:52_PM_PARKING -02.dwg', 'cad.png'),
(18, 'Electrical Drawing', 'Sidappa Sir please share comments and approve for submission to Dept', 'shreya', '2020-12-19', '06:06 PM', '19-12-2020_06:06_PM_11.12.2020-VIL-EL-SP1-404-CA0.dwg', 'cad.png'),
(19, 'Electrical dwg 2', 'Sidappa Sir please share comments and approve for submission to Dept', 'shreya', '2020-12-19', '06:06 PM', '19-12-2020_06:06_PM_12.12.20-VIL-EL-SP2-404-CA1.dwg', 'cad.png'),
(20, 'Revised storage bin Dwg', 'Balam sir, Please take one copy print of this and show it to MLL tomorrow morning (URGENT)', 'shreya', '2021-01-04', '06:11 PM', '04-01-2021_06:11_PM_Revised storage bin dwg.dwg', 'cad.png'),
(21, 'GFC Drawings', 'Parking Shed - 3 \nExcavation, Footing & Pedestal Details', 'ps2md', '2021-08-16', '12:24 PM', '16-08-2021_12:24_PM_2021-8-12-12-21-12.pdf', 'pdf.png'),
(22, 'GFC Drawings ', 'Parking Shed - 2\nExcavation Plan Footing & Pedestal Details ', 'ps2md', '2021-08-16', '12:29 PM', '16-08-2021_12:29_PM_2021-8-12-12-22-47.pdf', 'pdf.png'),
(23, 'GFC Drawings ', 'Parking Shed - 1\nExcavation Plan, Footing & Pedestal Details', 'ps2md', '2021-08-16', '12:33 PM', '16-08-2021_12:33_PM_2021-8-12-12-24-1.pdf', 'pdf.png'),
(24, 'GFC Drawing', 'Parking Shed - 1 \nRoof Plan', 'ps2md', '2021-08-16', '12:39 PM', '16-08-2021_12:39_PM_2021-8-12-12-26-34.pdf', 'pdf.png'),
(25, 'GFC Drawings', 'Plans & Section A-A and Elevations', 'ps2md', '2021-08-16', '12:41 PM', '16-08-2021_12:41_PM_2021-8-12-12-27-52.pdf', 'pdf.png'),
(26, 'GFC Drawing', 'Parking Shed - 1 \nSections and Elevations ', 'ps2md', '2021-08-16', '12:43 PM', '16-08-2021_12:43_PM_2021-8-12-12-30-0.pdf', 'pdf.png'),
(27, 'GFC Drawings ', 'Parking Shed - 2\nPlans & Elevations', 'ps2md', '2021-08-16', '12:47 PM', '16-08-2021_12:47_PM_2021-8-12-12-31-41.pdf', 'pdf.png'),
(28, 'GFC Drawing', 'Parking Shed - 2\nElevations & Sections ', 'ps2md', '2021-08-16', '02:25 PM', '16-08-2021_02:25_PM_2021-8-12-12-34-0.pdf', 'pdf.png'),
(29, 'GFC Drawing', 'Parking Shed - 3\nPlans & Section A-A and Elevations', 'ps2md', '2021-08-16', '02:27 PM', '16-08-2021_02:27_PM_2021-8-12-12-38-31.pdf', 'pdf.png'),
(30, 'GFC ', 'Parking Shed - 3\nSections & Elevations ', 'ps2md', '2021-08-16', '02:31 PM', '16-08-2021_02:31_PM_2021-8-12-12-41-22.pdf', 'pdf.png'),
(31, 'GFC', 'Parking Shed - 2\nGable End Frames & Details', 'ps2md', '2021-08-16', '02:35 PM', '16-08-2021_02:35_PM_2021-8-12-12-42-50.pdf', 'pdf.png'),
(32, 'GFC', 'Parking Shed - 1\nPlinth beam layout & details ', 'ps2md', '2021-08-16', '02:37 PM', '16-08-2021_02:37_PM_2021-8-12-12-46-0.pdf', 'pdf.png'),
(33, 'GFC', 'Parking Shed - 2 \nPlinth Beam layout and details', 'ps2md', '2021-08-16', '02:45 PM', '16-08-2021_02:45_PM_2021-8-12-12-47-24.pdf', 'pdf.png'),
(34, 'GFC', 'Parking Shed -2 \nPlinth Beam Details', 'ps2md', '2021-08-16', '02:49 PM', '16-08-2021_02:49_PM_2021-8-12-12-50-45.pdf', 'pdf.png'),
(35, 'GFC', 'Parking Shed - 3\nPlinth Beam Layout & Details ', 'ps2md', '2021-08-16', '02:52 PM', '16-08-2021_02:52_PM_2021-8-12-12-52-5.pdf', 'pdf.png'),
(36, 'GFC', 'Parking Shed - 1\nBase Plate Layout & Details', 'ps2md', '2021-08-16', '03:01 PM', '16-08-2021_03:01_PM_2021-8-12-12-53-35.pdf', 'pdf.png'),
(37, 'GFC', 'Parking Shed - 1\nPortal Frame 2 Details ', 'ps2md', '2021-08-16', '03:04 PM', '16-08-2021_03:04_PM_2021-8-12-12-54-47.pdf', 'pdf.png'),
(38, 'GFC', 'Parking Shed 1\nGA Plan & Details', 'ps2md', '2021-08-16', '03:15 PM', '16-08-2021_03:15_PM_2021-8-12-12-56-59.pdf', 'pdf.png'),
(39, 'GFC', 'Parking Shed - 1\nPortal Frame 1 Details', 'ps2md', '2021-08-16', '03:17 PM', '16-08-2021_03:17_PM_2021-8-12-12-59-17.pdf', 'pdf.png'),
(40, 'GFC', 'Parking Shed - 3\nBase plate layout & details ', 'ps2md', '2021-08-16', '03:18 PM', '16-08-2021_03:18_PM_2021-8-12-13-2-24.pdf', 'pdf.png'),
(41, 'GFC', 'Parking Shed - 3 \nGA Plan & Details', 'ps2md', '2021-08-16', '04:29 PM', '16-08-2021_04:29_PM_2021-8-12-13-3-38.pdf', 'pdf.png'),
(42, 'GFC', 'Parking Shed - 1\nCladding Layout & Details', 'ps2md', '2021-08-16', '04:33 PM', '16-08-2021_04:33_PM_2021-8-12-13-9-9.pdf', 'pdf.png'),
(43, 'GFC', 'Parking Shed - 1\nElevation Branches', 'ps2md', '2021-08-16', '04:35 PM', '16-08-2021_04:35_PM_2021-8-12-13-10-23.pdf', 'pdf.png'),
(44, 'GFC', 'GA Plan @ +4.0m LVL. & Details', 'ps2md', '2021-08-17', '11:00 AM', '17-08-2021_11:00_AM_2021-8-12-13-12-12.pdf', 'pdf.png'),
(45, 'GFC', 'Parking Shed - 2 \nBase Plate Layout & Details', 'ps2md', '2021-08-17', '11:01 AM', '17-08-2021_11:01_AM_2021-8-12-13-13-49.pdf', 'pdf.png'),
(46, 'GFC', 'Parking Shed - 2\nElevations & Details', 'ps2md', '2021-08-17', '11:02 AM', '17-08-2021_11:02_AM_2021-8-12-13-16-10.pdf', 'pdf.png'),
(47, 'GFC', 'Parking Shed - 2 \nGA Plan @ 6.375m LVL. & Details', 'ps2md', '2021-08-17', '11:05 AM', '17-08-2021_11:05_AM_2021-8-12-13-17-40.pdf', 'pdf.png'),
(48, 'GFC', 'Parking Shed - 3 \nCladding Layout & Details', 'ps2md', '2021-08-17', '11:08 AM', '17-08-2021_11:08_AM_2021-8-12-13-19-30.pdf', 'pdf.png'),
(49, 'GFC', 'Parking Shed - 3\nElevations', 'ps2md', '2021-08-17', '11:09 AM', '17-08-2021_11:09_AM_2021-8-12-13-20-34.pdf', 'pdf.png'),
(50, 'Site LK - Letters received from Department  ', 'Revised folder will be uploaded shortly', 'ps2md', '2021-08-18', '12:36 PM', '18-08-2021_12:36_PM_Dept. Letters.rar', 'RAR.png'),
(51, 'GFC Drawing', 'Culvert - 02 Details ', 'ps2md', '2021-08-18', '04:36 PM', '18-08-2021_04:36_PM_20210728123644804_0001.pdf', 'pdf.png'),
(52, 'GFC', 'Typical Retaining Wall Details ', 'ps2md', '2021-08-18', '04:39 PM', '18-08-2021_04:39_PM_20210728123644804_0002.pdf', 'pdf.png'),
(53, 'GFC', 'Power Fencing', 'ps2md', '2021-08-18', '04:41 PM', '18-08-2021_04:41_PM_20210728123644804_0003.pdf', 'pdf.png'),
(54, 'GFC', 'Typical Road & Hard Standing', 'ps2md', '2021-08-18', '04:42 PM', '18-08-2021_04:42_PM_20210728123644804_0004.pdf', 'pdf.png'),
(55, 'GFC', 'Typical Pipe culvert Details', 'ps2md', '2021-08-18', '04:45 PM', '18-08-2021_04:45_PM_20210728123644804_0005.pdf', 'pdf.png'),
(56, 'GFC', 'Culvert - 01 Dimensions Details', 'ps2md', '2021-08-18', '04:49 PM', '18-08-2021_04:49_PM_20210728123644804_0006.pdf', 'pdf.png'),
(57, 'GFC', 'Culvert - 01 Details', 'ps2md', '2021-08-18', '05:07 PM', '18-08-2021_05:07_PM_20210728123644804_0007.pdf', 'pdf.png'),
(58, 'GFC', 'Culvert - 02 Dimension Details', 'ps2md', '2021-08-18', '05:08 PM', '18-08-2021_05:08_PM_20210728123644804_0008.pdf', 'pdf.png'),
(59, 'GFC', 'TYPICAL ROAD SECTION\n( RED GATE to SITE )', 'ps2md', '2021-08-18', '05:10 PM', '18-08-2021_05:10_PM_20210728123644804_0009.pdf', 'pdf.png'),
(60, 'GFC', 'External Road Layout Plan \n( Red gate to Site )', 'ps2md', '2021-08-18', '05:12 PM', '18-08-2021_05:12_PM_20210728130322047_0001.pdf', 'pdf.png'),
(61, 'GFC', 'Road Profile Elevation\nCh. 0 to 800', 'ps2md', '2021-08-18', '05:14 PM', '18-08-2021_05:14_PM_20210728130322047_0002.pdf', 'pdf.png'),
(62, 'GFC', 'Road Profile Elevation\n( Ch. 800 to 1625 )', 'ps2md', '2021-08-18', '05:16 PM', '18-08-2021_05:16_PM_20210728130322047_0003.pdf', 'pdf.png'),
(63, 'GFC', 'Road Profile Elevation \n( Ch. 1625 to 2340 )', 'ps2md', '2021-08-18', '05:18 PM', '18-08-2021_05:18_PM_20210728130322047_0004.pdf', 'pdf.png'),
(64, 'GFC', 'External Road Layout Plan \n( Red Gate to Site ) A-04', 'ps2md', '2021-08-18', '05:27 PM', '18-08-2021_05:27_PM_20210728130322047_0005.pdf', 'pdf.png'),
(65, 'GFC', 'External Road Layout Plan\n( Red Gate to Site ) ', 'ps2md', '2021-08-18', '05:29 PM', '18-08-2021_05:29_PM_20210728130322047_0006.pdf', 'pdf.png'),
(66, 'GFC', 'External Road Layout plan \n( Red Gate to Site ) A-03', 'ps2md', '2021-08-18', '05:31 PM', '18-08-2021_05:31_PM_20210728130322047_0007.pdf', 'pdf.png'),
(67, 'Letters submitted to Dept. from Site', 'VIL Letters', 'ps2md', '2021-08-23', '04:17 PM', '23-08-2021_04:17_PM_Letter to Dept from Site.rar', 'RAR.png'),
(68, 'VIL Letters to Dept. ', 'For Reference\nRev will be updated ', 'ps2md', '2021-08-23', '04:28 PM', '23-08-2021_04:28_PM_VIL Letters.rar', 'RAR.png'),
(69, '7 Days Report of MIX Design M-35 Grade Concrete for Roads and Hard standing  ', 'Department Letter Dated 31-08-2021', 'ps2md', '2021-09-01', '10:56 AM', '01-09-2021_10:56_AM_C-200 31082021 Dept..pdf', 'pdf.png'),
(70, 'ACK Letter for Submission of Arch. & Structural Drawings for Parking Shed P1 & P2 of Tech Area', 'VIL Letter 2705 Dated 27.08.2021', 'ps2md', '2021-09-01', '10:58 AM', '01-09-2021_10:58_AM_C-200 27082021 VIL 2705.pdf', 'pdf.png'),
(71, 'VIL Letter to Dept. - To provide HT 11 kV tapping Point', 'Letter No 3108 Dated 31-08-2021', 'ps2md', '2021-09-02', '03:19 PM', '02-09-2021_03:19_PM_C-200 31082021 VIL 3108.pdf', 'pdf.png'),
(72, 'VIL Letter to Dept. - To provide Power tapping details for Admin Building', 'VIL Letter No 3108 A Dated 31.08.2021', 'ps2md', '2021-09-02', '03:21 PM', '02-09-2021_03:21_PM_C-200 31082021 VIL 3108A.pdf', 'pdf.png'),
(73, 'VIL Letter to Dept. - To provide water supply tapping point details for Admin Building', 'VIL Letter No 3108 B Dated 31-08-2021', 'ps2md', '2021-09-02', '03:23 PM', '02-09-2021_03:23_PM_C-200 31082021 VIL 3108B.pdf', 'pdf.png'),
(74, 'VIL to Dept. - To provide details for Ext. Power supply, cable route, sump, furniture layout etc.,', 'VIL Letter No. 0109 Dated 01-09-2021', 'ps2md', '2021-09-03', '10:47 AM', '03-09-2021_10:47_AM_C-200 01092021 VIL 0109.pdf', 'pdf.png'),
(75, 'Reg. Admin Block Furniture Layout', 'Dept. Letter Dated 31.08.2021', 'ps2md', '2021-09-04', '12:44 PM', '04-09-2021_12:44_PM_C-200 31082021 Dept..pdf', 'pdf.png'),
(76, 'Reg. Mix Design of DRLC ', 'Dept. Letter to HOD ( CE ) NIT Jalandhar Dated 02-09-2021', 'ps2md', '2021-09-04', '12:48 PM', '04-09-2021_12:48_PM_C-200 02092021 Dept.pdf', 'pdf.png'),
(77, 'Mix Design of GSB', 'Dept. Letter to HOD ( CE ) NIT Jalandhar Dated 02-09-2021', 'ps2md', '2021-09-04', '12:50 PM', '04-09-2021_12:50_PM_C-200 02092021 Dept..pdf', 'pdf.png'),
(78, 'Reg. Presentation on Design & Drwg.  wrt Electrical & Mech. Services ', 'Department Letter to VIL Dt. 02-09-2021', 'ps2md', '2021-09-04', '12:55 PM', '04-09-2021_12:55_PM_C-200 02092021 Dep..pdf', 'pdf.png'),
(79, 'Ack. for submission of 4 sets of drawings for Storage / Sand Bins of Tech. Building B1 to B4    B1 s', 'VIL Letter 0209 Dated 02-09-2021 \nSubmitted to Dept on 03-09-2021 ', 'ps2md', '2021-09-04', '01:05 PM', '04-09-2021_01:05_PM_C-200 02092021 VIL 0209.pdf', 'pdf.png'),
(80, 'Reg, Hindrances, Request to Extend Milestone - I & Entire Work', 'VIL Letter 0209-B Dated 02-09-2021 Submitted to Dept. on 03-09-2021', 'ps2md', '2021-09-04', '01:11 PM', '04-09-2021_01:11_PM_C-200 02092021 VIL 0209B.pdf', 'pdf.png'),
(81, 'Approved Drawings of Parking Shed - 2 ( Copy 4 )', 'Department Letter to VIL Dated 31-08-2021', 'ps2md', '2021-09-04', '03:36 PM', '04-09-2021_03:36_PM_C-200 31082021 Dep..pdf', 'pdf.png'),
(82, 'Submission of Test Certificates for Water, Physical & Chemical Properties of Structural Steel, Origi', 'VIL Letter 49 Dated 07-09-21 Submitted to DRDO on 7-9-21', 'ps2md', '2021-09-08', '12:42 PM', '08-09-2021_12:42_PM_C-200 07092021 VIL 49.pdf', 'pdf.png'),
(83, 'To review & approve the Drawings for Storage / Sand Bins of Technical Building B1', 'DRDO Letter Dated 07-09-2021 to Harryson ', 'ps2md', '2021-09-08', '12:55 PM', '08-09-2021_12:55_PM_C-200 07092021 Dept..pdf', 'pdf.png'),
(84, 'To review & approve the Architecture  & Structural Drgs. of Parking P1 & P2 of Tech. area', 'DRDO Letter Dated 06-09-2021 to Harryson', 'ps2md', '2021-09-08', '01:04 PM', '08-09-2021_01:04_PM_C-200 06092021 Dept..pdf', 'pdf.png'),
(85, 'GFC Drawing - Parking Shed 2 - Marking Plan & Elevation ', 'Drg No. GML-2020-VIL-LK-21 R0 ', 'ps2md', '2021-09-08', '01:23 PM', '08-09-2021_01:23_PM_VIL-LK-21.pdf', 'pdf.png'),
(86, 'GFC Drawing - Parking Shed 2 - Marking Plan', 'GML-2020VIL-LK-21 R0', 'ps2md', '2021-09-08', '01:33 PM', '08-09-2021_01:33_PM_VIL LK 21 Marking Elevations.pdf', 'pdf.png'),
(87, 'Parking shed 2 Fab Det. of Columns MKD C7-1 C7-2 C8-1 C8-2 C8X-1 C8X-2 C9-1', 'Drawing No : GML-2020-VIL-LK-22 R0', 'ps2md', '2021-09-08', '05:09 PM', '08-09-2021_05:09_PM_VIL LK 22.pdf', 'pdf.png'),
(88, 'Parking Shed 2 Fab. Det. of Columns MKD C1-1 C1-2  C2-1 C2-2', 'GML-2020-VIL-LK-23 R0', 'ps2md', '2021-09-08', '05:23 PM', '08-09-2021_05:23_PM_VIL LK 23.pdf', 'pdf.png'),
(89, 'Parking Shed 2 Fab. Det. of Columns MKD C3-1 C3-2 C4-1 C4-2 ', 'GML-2020-VIL-LK-24', 'ps2md', '2021-09-08', '05:26 PM', '08-09-2021_05:26_PM_VIL LK 24.pdf', 'pdf.png'),
(90, 'Parking Shed 2 Fab. Det. of Columns MKD. C5-1 C6-1 C11-1 C12-1', 'GML-2020-VIL-LK-25', 'ps2md', '2021-09-08', '05:30 PM', '08-09-2021_05:30_PM_VIL LK 25.pdf', 'pdf.png'),
(91, 'Parking Shed 2 Fab. Det. of Columns MKD. C10-1 C10-2 C13-1 C13-2', 'GML-2020-VIL-LK-26', 'ps2md', '2021-09-08', '05:33 PM', '08-09-2021_05:33_PM_VIL LK 26.pdf', 'pdf.png'),
(92, 'Fab. Det. of Columns MKD C14-1 C14-2 C15-1 C15-2', 'Drg No : GML-2020-VIL-LK-27', 'ps2md', '2021-09-09', '10:58 AM', '09-09-2021_10:58_AM_VIL LK 27.pdf', 'pdf.png'),
(93, 'Parking Shed 2 Fab. Det. for Rafters MKD RB5...  PS1X to PS3X ', 'Drg. No : GML-2020-VIL-LK-28', 'ps2md', '2021-09-09', '11:31 AM', '09-09-2021_11:31_AM_VIL LK 28.pdf', 'pdf.png'),
(94, 'Parking Shed 2 Fab Det for Rafters MKD RB1 RB1X  RB2... Purlin Stay PS1 to PS3....', 'Drg. No : GML-2020-VIL-LK-29', 'ps2md', '2021-09-09', '11:36 AM', '09-09-2021_11:36_AM_VIL LK 29.pdf', 'pdf.png'),
(95, 'Parking Shed 2 Fab Det. of Purlin MKD P1 to P15 P1X to P15X......', 'Drg. No GML -2020-VIL-LK-30', 'ps2md', '2021-09-09', '11:40 AM', '09-09-2021_11:40_AM_VIL LK 30.pdf', 'pdf.png'),
(96, 'Parking Shed 2 Fab Det. of Cladding Runner MKD CR1 to CR10 .. Sag Rod MKD SR1 to SR4 Cladding Stay C', 'Drg. No : GML-2020-VIL-LK-31', 'ps2md', '2021-09-09', '11:52 AM', '09-09-2021_11:52_AM_VIL LK 31.pdf', 'pdf.png'),
(97, 'Parking Shed 2 Fab. Det. of Cladding Runner MKD CR11 to CR18 Sag Rod SR5...', 'Drg. No : GML-VIL-LK-32~', 'ps2md', '2021-09-09', '11:57 AM', '09-09-2021_11:57_AM_VIL LK 32 (1).pdf', 'pdf.png'),
(98, 'Fab. Det. of Cladding Runner MKD CR19 to CR26.. Tie Beam TB1 to TB 6', 'Drg. No GML-2020-VIL-LK-32', 'ps2md', '2021-09-09', '12:01 PM', '09-09-2021_12:01_PM_VIL LK 32 (2).pdf', 'pdf.png'),
(99, 'Parking Shed 2 Fab. Det. for Rafter Bracings & Vertical Bracings', 'Drg. No : GML-2020-VI-LK-33', 'ps2md', '2021-09-09', '12:06 PM', '09-09-2021_12:06_PM_VIL LK 33.pdf', 'pdf.png'),
(100, 'Parking Shed 2 Fab. Det. for Rafters MKD RB3... Purlin Stay MKD PS4 to PS7..', 'Drg. No : GML-2020-VIL-LK-34', 'ps2md', '2021-09-09', '12:09 PM', '09-09-2021_12:09_PM_VIL LK 34.pdf', 'pdf.png'),
(101, 'Parking Shed 2 Fab Det. for Rafters MKD RB 13 RB 13A RB 15 RB 16 RB 17', 'Drg No : GML-2020-VIL-LK-35', 'ps2md', '2021-09-09', '12:14 PM', '09-09-2021_12:14_PM_VIL LK 35.pdf', 'pdf.png'),
(102, 'Parking Shed 2 Fab Det.for Rafter MKD RB 18, 19 20 & Purlin stay MKD PS8 to PS12...', 'Drg. No : GML-2020-VIL-LK-36', 'ps2md', '2021-09-09', '12:25 PM', '09-09-2021_12:25_PM_VIL LK 36.pdf', 'pdf.png'),
(103, 'Parking Shed 2 Fab. Details for Rafters MKD RB21 RB22 RB23', 'Drg. No : GML-2020-VIL-LK-37 R0', 'ps2md', '2021-09-09', '12:35 PM', '09-09-2021_12:35_PM_VIL LK 37.pdf', 'pdf.png'),
(104, 'Reg. Storage / Sand Bins Drawings  of Tech. Building B1 to B4 - To start work only after approval of', 'DRDO Letter Dated 07-09-2021 to VIL ', 'ps2md', '2021-09-09', '02:27 PM', '09-09-2021_02:27_PM_C-200 07092021 Dept..pdf', 'pdf.png'),
(105, 'Reg. Precast Concrete solid blocks test', 'DRDO Letter Dated 03-09-2021 to VIL', 'ps2md', '2021-09-09', '05:00 PM', '09-09-2021_05:00_PM_C-200 03092021 Dept..pdf', 'pdf.png'),
(106, 'Submission of Original BG towards RMD', 'VIL HO Letter 0467 Dated 07-09-2021 to DRDO Submitted on 08-09-2021', 'ps2md', '2021-09-09', '05:05 PM', '09-09-2021_05:05_PM_C-200 07092021 VIL 0467.pdf', 'pdf.png'),
(107, 'Submission of 6 set Drgs (Copy 3-8) of AC Plant Room B1A... Vetted by IIT', 'Letter 0709A Dt. 07-09-2021 from VIL- Del to DRDO submitted on 08-09-2021', 'ps2md', '2021-09-09', '05:10 PM', '09-09-2021_05:10_PM_C-200 07092021 VIL 0709A.pdf', 'pdf.png'),
(108, 'To submit docs wrt EOT for Milestone - 1', 'DRDO Letter Dated 10-09-2021 to VIL', 'ps2md', '2021-09-13', '10:47 AM', '13-09-2021_10:47_AM_C-200 10092021 Dept..pdf', 'pdf.png'),
(109, 'Report for testing of reinforcement steel sample', 'DRDO Letter to VIL Dated 06-09-2021. Original rcvd @HO on 13.09.21  ', 'ps2md', '2021-09-13', '03:11 PM', '13-09-2021_03:11_PM_C-200 06092021 Dept.pdf', 'pdf.png'),
(110, 'Report reg. Mix Design - M35 Grade concrete for roads & Hard standing', 'DRDO Letter to VIL Dated 06-09-2021 ', 'ps2md', '2021-09-13', '03:18 PM', '13-09-2021_03:18_PM_C-200 06092021 Dep..pdf', 'pdf.png'),
(111, 'Submission of 5th RAR bill', 'VIL Letter 48 Dt. 07-09-21 Submitted to DRDO on 7-9-21', 'ps2md', '2021-09-20', '04:55 PM', '20-09-2021_04:55_PM_C-200 07092021 VIL 48.pdf', 'pdf.png'),
(112, 'Submission of Container Storage Building ( B6 ) Drawings Copy 3 Vetted by IIT', 'VIL Letter 1709A Dt 17.09.21 to DRDO for approval', 'ps2md', '2021-09-22', '10:36 AM', '22-09-2021_10:36_AM_C-200 17092021 VIL 1709A.pdf', 'pdf.png'),
(113, 'Submission of Administrative Building Drawings  Vetted by IIT', 'VIL Letter 1709B Dt 17.09.21 to DRDO for approval Submitted on 20-9-21', 'ps2md', '2021-09-22', '10:43 AM', '22-09-2021_10:43_AM_C-200 17092021 VIL 1709 B.pdf', 'pdf.png'),
(114, 'Submission of Sub-Station ( B7 )  Drawings Vetted by IIT', '\nVIL Letter 1709 Dt 17.09.21 to DRDO  for approval Submitted on 20-09-21', 'ps2md', '2021-09-22', '10:57 AM', '22-09-2021_10:57_AM_C-200 17092021 VIL 1709.pdf', 'pdf.png'),
(115, 'Submission of Supporting Documents for EOT ', 'VIL Letter 1109 Dt 11.09.21 to DRDO Submitted on 14-09-21', 'ps2md', '2021-09-23', '12:18 PM', '23-09-2021_12:18_PM_C-200 11092021 VIL 1109.pdf', 'pdf.png'),
(116, 'List of Missing Drawings, 3 Copies are returned & informed for re-submission', 'DRDO Letter to VIL Dated 14-09-2021', 'ps2md', '2021-09-23', '12:39 PM', '23-09-2021_12:39_PM_C-200 14092021 Dept..pdf', 'pdf.png'),
(117, 'Re-submission of 4 sets Architectural, Structural Drgs. of Sump & Pump Room.', 'VIL Letter 1509 Dated 15-09-2021 to DRDO submitted on 17-09-21', 'ps2md', '2021-09-23', '12:50 PM', '23-09-2021_12:50_PM_C-200 15092021 VIL 1509.pdf', 'pdf.png'),
(118, 'Submission of Drgs. Copy 4 & 7 for AC Plant Room ( B1A), Copy 8 for AC Plant ( B5C) & drgs. returned', 'VIL Letter 1609 Dated 16-09-2021 to DRDO Submitted on 17-09-2021', 'ps2md', '2021-09-23', '01:03 PM', '23-09-2021_01:03_PM_C-200 16092021 VIL 1609.pdf', 'pdf.png'),
(119, 'Submission of 6 sets Revised Drawings for Plumbing, Fire Fighting, Fire Alarm & Electrical', 'VIL Letter 2009 Dated 20-09-2021 Submitted to DRDO on 22-9-21', 'ps2md', '2021-09-23', '01:17 PM', '23-09-2021_01:17_PM_C-200 20092021 VIL 2009.pdf', 'pdf.png'),
(120, 'Submission of 6 sets of Additional Drawings for Plumbing, Fire Fighting, CCTV, Fire Alarm, Electrica', 'VIL Letter 2109 Dated 21-09-2021 Submitted to DRDO on 22-9-21', 'ps2md', '2021-09-23', '05:15 PM', '23-09-2021_05:15_PM_C-200 21092021 VIL 2109.pdf', 'pdf.png'),
(121, 'To submit Government Orders as supporting Docs for EOT ', 'DRDO Letter to VIL Dated 23-09-2021', 'ps2md', '2021-09-25', '11:21 AM', '25-09-2021_11:21_AM_C-200 23092021 Dept..pdf', 'pdf.png'),
(122, 'Supporting Documents submitted along with EOT 11.09.2021', 'Government Orders', 'ps2md', '2021-09-27', '04:51 PM', '27-09-2021_04:51_PM_EOT Supporting Document.rar', 'RAR.png'),
(123, 'To resubmit submit 5th RA Bill along with supporting documents & Cube test reports etc.', 'DRDO Letter to VIL Dated 20-09-2021 ', 'ps2md', '2021-09-28', '12:20 PM', '28-09-2021_12:20_PM_C-200 20092021 Dept..pdf', 'pdf.png'),
(124, 'Submission of Drawings for Sub-Stations Building (B-7) Copy 3 to 8 Vetted by IIT', 'VIL Letter 2409 Dt 24-09-2021 to DRDO submitted on 27-09-2021', 'ps2md', '2021-09-28', '12:36 PM', '28-09-2021_12:36_PM_C-200 24092021 VIL 2409.pdf', 'pdf.png'),
(125, 'Minutes of Meeting. Agenda - Site Visit .Rep. of  VIL, CCE(N) & Harrison Consultants were present', 'MOM Dated 24-09-2021 & 25-09-2021 ', 'ps2md', '2021-09-28', '12:40 PM', '28-09-2021_12:40_PM_C-200 24092021 & 25092021 MOM.pdf', 'pdf.png'),
(126, 'Re-submission of 5th RA Bill along with required supporting docs & test reports ', 'VIL Letter 54 Dated 25-09-2021 submitted to DRDO on 27-09-21', 'ps2md', '2021-09-28', '12:54 PM', '28-09-2021_12:54_PM_C-200 25092021 VIL 54.pdf', 'pdf.png'),
(127, 'Presentation on Design & Drawing w.r.t. Electrical & Mechanical Services', 'Letter from CCE(R&D) N to VIL Dated 25-09-2021 \nMithun', 'ps2md', '2021-09-28', '12:58 PM', '28-09-2021_12:58_PM_C-200 25092021 Dept..pdf', 'pdf.png'),
(128, 'Reply to Dept. Letter Dt 23-09-2021 Reg. Govt. Circulars on Road closure', 'VIL Letter 55 Dt. 26-09-2021 to DRDO N Submitted on 27-09-21', 'ps2md', '2021-09-28', '01:03 PM', '28-09-2021_01:03_PM_C-200 26092021 VIL 55.pdf', 'pdf.png'),
(129, 'No facility @ NIT, Jalandhar for solid block precast testing. Done @ Bhaskar Lab', 'VIL Letter 57 Dated 27-09-2021 Submitted to DRDO on 27-09-21', 'ps2md', '2021-09-28', '01:12 PM', '28-09-2021_01:12_PM_C-200 27092021 VIL 57.pdf', 'pdf.png'),
(130, 'To review & approve Architectural,  Structural Drawing of Sump & Pump Room ', 'DRDO Letter Dated 24-09-2021 to Harrison. CC to VIL', 'ps2md', '2021-09-29', '11:10 AM', '29-09-2021_11:10_AM_C-200 24092021 Dept..pdf', 'pdf.png'),
(131, 'Approved Drawings for AC Plant rooms & Panel Room ( Copy 4 )', 'DRDO Letter Dated 24-09-2021 to VIL. Received on 27-09-2021 ', 'ps2md', '2021-09-29', '12:14 PM', '29-09-2021_12:14_PM_C-200 24092021 Dept.pdf', 'pdf.png'),
(132, 'To submit progress of civil work & planned work for next session', 'DRDO Letter to VIL Dated 24-09-2021', 'ps2md', '2021-10-05', '03:07 PM', '05-10-2021_03:07_PM_C-200 24092021 Dep.pdf', 'pdf.png'),
(133, 'Reg. Depth of Foundation for Sand / Storage Bins', 'DRDO Letter to VIL Dt 24.09.2021 Rcvd @ HO on 05.10.2021', 'ps2md', '2021-10-05', '03:16 PM', '05-10-2021_03:16_PM_C-200 24092021 Dept..pdf', 'pdf.png'),
(134, 'To prepare presentation on Electrical & Mech. & to attend 29th Sep meeting ', 'DRDO Letter dated 27-09-2021 to Brahmos CC to VIL & Harryson ', 'ps2md', '2021-10-06', '12:20 PM', '06-10-2021_12:20_PM_C-200 27092021 Dept..pdf', 'pdf.png'),
(135, 'GFC Drawings for Furniture Layout Plan', 'Letter dated 28.09.2021 from DRDO to VIL Rcvd on 29.09.21', 'ps2md', '2021-10-06', '02:37 PM', '06-10-2021_02:37_PM_C-200 28092021 Furniture Dept..pdf', 'pdf.png'),
(136, 'GFC Drawings for Parking shed M.S Door', 'DRDO Letter Dated 29.09.21 to VIL. Drg with comments rcvd on 29.9.21', 'ps2md', '2021-10-06', '02:50 PM', '06-10-2021_02:50_PM_C-200 29092021 MS Dept.pdf', 'pdf.png'),
(137, 'Presentation on Design & Drawing w.r.t. Electrical & Mechanical Services', 'Letter dt. 29.09.2021 from DRDO to VIL. Ref 25.09.2021 Dept. Letter', 'ps2md', '2021-10-06', '02:56 PM', '06-10-2021_02:56_PM_C-200 29092021 Dept.pdf', 'pdf.png'),
(138, 'To submit the specific & Clear documents in support of EOT PDC Milestone  1', 'DRDO Letter Dated 30.09.2021 to VIL ', 'ps2md', '2021-10-06', '03:02 PM', '06-10-2021_03:02_PM_C-200 30092021.pdf', 'pdf.png'),
(139, 'With ref to Point 20 of MOM Dt. 24 & 25 Sep 21, Submission of RCC Compound Survey Drg with CD', 'VIL Letter 0550 Dt 01.10.2021 to CCE N - Submitted by Eshwar', 'ps2md', '2021-10-06', '03:33 PM', '06-10-2021_03:33_PM_C-200 01102021 VIL 0550.pdf', 'pdf.png'),
(140, 'Letter reg. approval of B1 Storage Building Section, Foundation Plan & Details. To submit IIT vetted', 'DRDO Letter Dt. 04.10.2021 to VIL rcvd by Balam on 05.10.2021', 'ps2md', '2021-10-06', '03:39 PM', '06-10-2021_03:39_PM_04-10-2021.pdf', 'pdf.png'),
(141, 'Approved / GFC Drawings for Container Storage Building ( B6 )', 'DRDO Letter Dated 28.09.2021 to VIL rcvd by Balam on 29.09.21', 'ps2md', '2021-10-06', '03:52 PM', '06-10-2021_03:52_PM_C-200 28092021 B6 Dept.pdf', 'pdf.png'),
(142, 'GFC Drawings for Container Storage Building ( B6 )', '11 GFC Drawings', 'ps2md', '2021-10-06', '03:53 PM', '06-10-2021_03:53_PM_Container Storage Building Drgs.rar', 'RAR.png'),
(143, 'Letter reg. GFC Drawings for Sub Stations ( B7 )', 'DRDO Letter Dated 28.09.2021 to VIL. Rcvd by Balam on 29.09.21', 'ps2md', '2021-10-06', '04:01 PM', '06-10-2021_04:01_PM_C-200 28092021  B7 Dep.pdf', 'pdf.png'),
(144, 'GFC / Approved Drawing for  Substation (B7)', '6 GFC Drawings for Substation B7', 'ps2md', '2021-10-06', '04:05 PM', '06-10-2021_04:05_PM_Sub Stations ( B-7).rar', 'RAR.png'),
(145, 'Minutes of Meeting Dated 29.09.2021 - Presentation on design & drawings wrt to Electrical & Mech.', 'DRRDO Letter Dated 01.10.2021 to VIL. Rcvd @ HO on 08.10.2021', 'ps2md', '2021-10-08', '03:02 PM', '08-10-2021_03:02_PM_C-200 01102021.pdf', 'pdf.png'),
(146, 'Submission of Sample roof sheet ( TRIMDEK 1015 ) of Tata Blue .. for approval', 'VIL Letter 0710 Dated 07.10.2021 to CCE-N Submitted on 08.10.21', 'ps2md', '2021-10-11', '12:32 PM', '11-10-2021_12:32_PM_C-200 07102021 VIL 0710.pdf', 'pdf.png'),
(147, 'A Format by Harrysons to furnish various building levels ', 'Letter Dt 07.10.2021 from CCE to VIL. Harryson to Dept on 21.09.21 Rcvd @ HO on 11-10-21', 'ps2md', '2021-10-11', '03:18 PM', '11-10-2021_03:18_PM_C-200 07102021 Dept..pdf', 'pdf.png'),
(148, 'Technical Data Sheets missing for Sample of Roof sheets ( TRIMDEK 1015 )', 'DRDO Letter Dated 13-10-2021 to VIL ( Reply for VIL 0710 Dt 07.10.21 )', 'ps2md', '2021-10-18', '10:42 AM', '18-10-2021_10:42_AM_C-200 13102021 Dept..pdf', 'pdf.png'),
(149, 'To re-prepare the PPT on all Electrical & Mechanical Services. ', 'DRDO Letter Dated 13.10.21 to VIL. Rcvd by Balam on 13.10.21', 'ps2md', '2021-10-19', '10:29 AM', '19-10-2021_10:29_AM_Reminder 1 Presentation on Design and Drawings Letter for DRDO N LK project dt 13-10-2021 13-Oct-2021 22-58-49.pdf', 'pdf.png'),
(150, 'Amendments to MOM Dated 24th & 25th Sep 21  ', 'DRDO Letter Dated 13.10.21 to VIL Rcvd by Balam on 13.10.21', 'ps2md', '2021-10-19', '10:46 AM', '19-10-2021_10:46_AM_MOM dt 24-25 Sept held at Site LK for DRDO N LK project dt 13-10-2021 13-Oct-2021 22-48-37.pdf', 'pdf.png'),
(151, 'To submit the detailed justification on increase in area od substation building', 'DRDO Letter Dt. 13.10.2021 to Harryson. Copy to ViL. Ref VIL Letter 2308A Dt 23.08.21', 'ps2md', '2021-10-19', '11:03 AM', '19-10-2021_11:03_AM_Justification of increase in area of Substation Building for DRDO N LK project dt 13-10-2021 13-Oct-2021 22-54-39.pdf', 'pdf.png'),
(152, 'Submission of 6 sets Technical area layout plan ', 'VIL LETTER 59 Dated 10.10.2021 to CCE(N). BR VIL 0708 Dt 21.10.2020', 'ps2md', '2021-10-23', '12:16 PM', '23-10-2021_12:16_PM_C-200 10102021 VIL 59.pdf', 'pdf.png'),
(153, 'Submission of 5 sets Drawings for Sand Bins & B1 storage Building. ', 'VIL Letter 1410 Dt 14.10.2021 to CCE ( N) Submitted on 20.10.21', 'ps2md', '2021-10-23', '12:29 PM', '23-10-2021_12:29_PM_C-200 14102021 VIL 1410.pdf', 'pdf.png'),
(154, 'Request to go through VIL letter 710 Dt 07.10.21 & its annexure (Tech date sheets) also to approve r', 'VIL Letter 1410-A Dt. 14.10.2021 to CCE submitted on 20.10.21', 'ps2md', '2021-10-23', '12:39 PM', '23-10-2021_12:39_PM_C-200 14102021 VIL 1410A.pdf', 'pdf.png'),
(155, 'To approve Parking shed windows & Details  ( VIL-ARCH-PAR-104 CA 0 ) submitted on 17.8.21', 'VIL Letter 1610 Dt. 16.10.21 Submitted to CCE(N) on 20.10.21', 'ps2md', '2021-10-23', '12:46 PM', '23-10-2021_12:46_PM_C-200 16102021 VIL 1610.pdf', 'pdf.png'),
(156, 'Regarding false statements made by Addl. CCE vide their letter dt. 24.09.21', 'VIL Letter 1610-A Dated 16.10.21 Submitted to CCE(N) on 20.10.21', 'ps2md', '2021-10-23', '12:52 PM', '23-10-2021_12:52_PM_C-200 16102021 VIL 1610A.pdf', 'pdf.png'),
(157, 'To issue the approval of drawings clearly as Good for Construction..', 'VIL Letter 1810 Dated 18.10.21 Submitted to CCE(N) on 20.10.21', 'ps2md', '2021-10-23', '12:57 PM', '23-10-2021_12:57_PM_C-200 18102021 VIL 1810.pdf', 'pdf.png'),
(158, 'Approval for parking shed drawings ( 6 Nos ) 1 Drg Not approved ', 'Letter from CCE(N) to VIL dated 30.09.2021 Rcvd by Balam on 14.10.21', 'ps2md', '2021-10-25', '11:25 AM', '25-10-2021_11:25_AM_Approved by Consultant Parking Shed 1&2 Excavation From DRDO N for LK Project dt to 14-10-2021 23-Oct-2021 19-55-17.pdf', 'pdf.png'),
(159, 'Submission of road DRLC 7 days strength reports from NIT Jalandhar', 'VIL Letter 58 Dated 09.10.21 Submitted to CCE(N) on 21.10.21', 'ps2md', '2021-10-25', '11:31 AM', '25-10-2021_11:31_AM_Acknowledgments Submit Road DLRC 7 Days to DRDO N for LK Project dt 21-10-2021 23-Oct-2021 21-09-59.pdf', 'pdf.png'),
(160, 'Submission of 6 sets Structural Steel fabrication shop drawings of storage bldg. B2 & B3 for approva', 'VIL Letter 2010 Dated 20.10.21 submitted to CCE(N) on 21.10.21', 'ps2md', '2021-10-25', '11:35 AM', '25-10-2021_11:35_AM_Acknowledgments for Submitting B-2 Storage Building Drawing 10 Nos ( Copy no 1 to 6) to DRDO N for LK Project dt 21-10-2021 23-Oct-2021 20-26-28.pdf', 'pdf.png'),
(161, 'Dept to  Harryson Consultants for approval of B1 Storage Bldg. sections & Foundation Plan details', 'Letter dated 22.10.21 from CCE(N) to Harryson. Copy to VIL rcvd on 23.10.21 ', 'ps2md', '2021-10-25', '11:42 AM', '25-10-2021_11:42_AM_Forwarded for Approval to Harryson B-1 ( 8 nos )Storage Building Drawing From DRDO N for LK Project dt 23-10-2021 23-Oct-2021 20-09-41.pdf', 'pdf.png'),
(162, 'Dept to Harryson Consultants for approval of B2 & B3 Storage Bldg. Fabrication Drawings', 'Letter dated 22.10.21 from CCE(N) to Harryson. Copy to VIL rcvd on 23.10.21', 'ps2md', '2021-10-25', '11:45 AM', '25-10-2021_11:45_AM_Forwarded for Approval to Harryson B-2 Storage Building Drawing (10 Nos Copy 2 to 6) from DRDO N for LK Project 23-Oct-2021 20-04-14.pdf', 'pdf.png'),
(163, 'Reply to MOM dt 02.08.2021 issued by Dept on 08.10.2021', 'VIL Letter 2110 Dated 21.10.21 submitted to CCE(N) on 25.10.21', 'ps2md', '2021-10-26', '12:29 PM', '26-10-2021_12:29_PM_C-200 21102021 VIL 2110.pdf', 'pdf.png'),
(164, 'Reply to Dept. letter dated 14.09.2021 reg. Returned / Missing of Drawings ', 'VIL Letter 2110A Dated 21.10.2021 submitted to CCE(N) on 25.10.21', 'ps2md', '2021-10-26', '12:32 PM', '26-10-2021_12:32_PM_C-200 21102021 VIL 2110 A.pdf', 'pdf.png'),
(165, 'Thanking for release of payment for 5th RAR & informing reg. effect of late payment & interest', 'VIL Letter 2110 B Dated 21.10.2021 submitted to CCE(N) on 25.10.21', 'ps2md', '2021-10-26', '12:37 PM', '26-10-2021_12:37_PM_C-200 21102021 VIL 2110 B.pdf', 'pdf.png'),
(166, 'Approval of Substation (B7) Drawings with comments', 'Letter dt. 22.10.2021 from CCE(N) to VIL rcvd on 22.10.21', 'ps2md', '2021-10-26', '12:41 PM', '26-10-2021_12:41_PM_C-200 22102021 Dept..pdf', 'pdf.png'),
(167, 'Reminder - II PPT on Design & Drawings wrt Electrical & Mechanical Services', 'Letter Dated 21.10.2021 from CCE(N) to VIL. Received originals @ HO on 27.10.21 via speed post ', 'ps2md', '2021-10-28', '10:10 AM', '28-10-2021_10:10_AM_C-200 21102021 Dept..pdf', 'pdf.png'),
(168, 'To issue the approval of drawings clearly as \'Good for Construction\'.. ', 'VIL Letter 2210 Dated 22.10.21 submitted to Dept. on 26.10.21', 'ps2md', '2021-10-28', '10:38 AM', '28-10-2021_10:38_AM_C-200 22102021 VIL 2210.pdf', 'pdf.png'),
(169, 'Submission of Administrative Building Drawings ( vetted by IIT Chennai ) for approval', 'VIL Letter 2210A Dated 22.10.2021 Submitted on 26.10.2021 ', 'ps2md', '2021-10-28', '10:47 AM', '28-10-2021_10:47_AM_C-200 22102021 VIL 2210A.pdf', 'pdf.png'),
(170, 'Six Sets of layout drawings not found & to depute a technical person to check drgs. before submittin', 'Letter Dated. 29.10.2021 from CCE(N) to VIL Rcvd by Balam on 29.10.21. Ref : VIL 59 Dt. 10.10.21', 'ps2md', '2021-10-30', '12:28 PM', '30-10-2021_12:28_PM_C-200 29102021 Dept..pdf', 'pdf.png'),
(171, 'List of shortcomings observed by Dept. & instructions to rectify the same', 'Letter dated 02.11.2021 from CCE(N) to VIL rcvd by Balam on 02.11.21', 'ps2md', '2021-11-03', '12:31 PM', '03-11-2021_12:31_PM_C-200 02112021 Dept..pdf', 'pdf.png'),
(172, 'GFC - Substation (B7) - Ground Floor Plan', 'Drg. No VIL-ARCH-SUB-101 Dt. 05.03.2021', 'ps2md', '2021-11-03', '06:21 PM', '03-11-2021_06:21_PM_101.pdf', 'pdf.png'),
(173, 'GFC - Sub Station ( B7 ) Roof Plan & Sections', 'Drg. No  VIL-ARCH-SUB-102 Dated 05.03.2021', 'ps2md', '2021-11-03', '06:24 PM', '03-11-2021_06:24_PM_102.pdf', 'pdf.png'),
(174, 'GFC - Sub Station (B 7 ) - Sections & Elevations ', 'Drg No VIL-ARCH-SUB-103 Dated 05.03.2021 ', 'ps2md', '2021-11-03', '06:26 PM', '03-11-2021_06:26_PM_103.pdf', 'pdf.png'),
(175, 'Submission of 6 sets HVAC Drawings for Storage Bldg. B1 to B4 & B1A to B4A', 'VIL Letter 0211 Dated 02.11.2021 Submitted to CCE(N) on 09.11.21', 'ps2md', '2021-11-09', '05:50 PM', '09-11-2021_05:50_PM_C-200 02112021 VIL 211.pdf', 'pdf.png'),
(176, 'Confirmation on MEP PPT on 11& 12 NOV 21. Also to schedule PPT for balance part of HVAC, CCTV, etc.,', 'Letter dated 08.11.2021 from CCE(N) to VIL recvd by balam on 09.11.2021 ', 'ps2md', '2021-11-09', '05:59 PM', '09-11-2021_05:59_PM_C-200 08112021 Dept..pdf', 'pdf.png'),
(177, 'PPT on MEP system will be given on 11 & 12 NOV 21', 'VIL Letter 0654 Dated 08.11.2021 Submitted to CCE(N) on 10.11.2021', 'ps2md', '2021-11-12', '10:55 AM', '12-11-2021_10:55_AM_C-200 08112021 VIL 0654.pdf', 'pdf.png'),
(178, 'Reply to VIL Letter No 1610-A Dated 16.10.2021', 'Letter from CCE(N) to VIL Dated 03.11.2021. Originals rcvd @ HO thru post on 13.11.21', 'ps2md', '2021-11-15', '03:50 PM', '15-11-2021_03:50_PM_C-200 03112021 Dept (1).pdf', 'pdf.png'),
(179, 'Reply to VIL Letter no 1410-A   Dated 14.10.2021', 'Letter from CCE(N) to VIL Dated  03.11.2021. Originals rcvd @ HO thru post on 13.11.21', 'ps2md', '2021-11-15', '05:14 PM', '15-11-2021_05:14_PM_C-200 03112021 Dept (2).pdf', 'pdf.png'),
(180, 'Reply to VIL Letter 2110 - B Dated 21.10.2021. Correspondence  of 5th RAR', 'Letter from CCE(N) to VIL Dated   03.11.2021. Originals rcvd @ HO thru post on 13.11.21', 'ps2md', '2021-11-15', '05:18 PM', '15-11-2021_05:18_PM_C-200 03112021 Dept (3).pdf', 'pdf.png'),
(181, 'Submission of 6 sets Structural steel fabrication shop drgs. of container storage bldg. B6', 'Letter 1211 Dated 12.11.21 Submitted to CCE(N) on 15.11.21', 'ps2md', '2021-11-18', '10:46 AM', '18-11-2021_10:46_AM_C-200 12112021 VIL 1211.pdf', 'pdf.png'),
(182, 'Approval of DRLC Mix design Report (28 Days)', 'Letter from CCE(N) to VIL Dated 18.11.21. Originals directly received from dept. through speed @ HO on 26.11.21.', 'ps2md', '2021-11-26', '11:35 AM', '26-11-2021_11:35_AM_C-200 18112021 Dept..pdf', 'pdf.png'),
(183, 'Instructions from Dept. to submit updated monthly Bar Charts along with financial progress.', 'Letter from CCE(N) to VIL Dated 18.11.21. Originals directly received from dept. through speed @ HO on 26.11.21.', 'ps2md', '2021-11-26', '05:25 PM', '26-11-2021_05:25_PM_C-200 18112021 Dept.pdf', 'pdf.png'),
(184, 'Re-submission of Tata Blue scope roof sheet\'s technical details', 'VIL Letter 2411 Dated 24.11.2021 Submitted to CCE(N) on 26.11.2021', 'ps2md', '2021-11-27', '03:30 PM', '27-11-2021_03:30_PM_C-200 24112021 VIL 2411.pdf', 'pdf.png'),
(185, 'Submission of Reinforcement  steel for test to SM Consultants lab. ', 'VIL Letter 069 Dated 24.11.2021 Submitted to CCE(N) on 26.11.2021', 'ps2md', '2021-11-27', '03:38 PM', '27-11-2021_03:38_PM_C-200 24112021 VIL 69.pdf', 'pdf.png'),
(186, 'Approval of  B2 & B3 Storage Building Drawings  ( Copy No 06 , 10 Drgs. ) ', 'Letter from CCE (N) to VIL Dated 25.11.2021. Received from Balam on ( whats app dt. 26.11.2021 ) ', 'ps2md', '2021-11-27', '03:51 PM', '27-11-2021_03:51_PM_C-200 25112021 Dept..pdf', 'pdf.png'),
(187, 'To intimate suitable date  to complete balance part of PPT on Design & Drgs. w.r.t. to E & M. Servic', 'Letter Dated 25.11.2021 from CCE(N) to VIL. Originals directly received from dept. through speed @ HO on 29.11.2021.', 'ps2md', '2021-11-29', '04:03 PM', '29-11-2021_04:03_PM_C-200 25112021 Dept..pdf', 'pdf.png'),
(188, 'To intimate suitable date  to complete balance part of PPT on Design & Drgs. w.r.t. to E & M. Servic', 'Letter Dated 25.11.2021 from CCE(N) to VIL. Originals directly received from dept. through speed @ HO on 29.11.2021.', 'ps2md', '2021-11-29', '04:03 PM', '29-11-2021_04:03_PM_C-200 25112021 Dept..pdf', 'pdf.png'),
(189, 'Minutes of Meeting Dt. 15.11.2021 to review drawings approval status .', 'Letter Dated 25.11.2021 from CCE(N) to VIL. Originals directly received from dept. through speed @ HO on 29.11.2021.', 'ps2md', '2021-11-29', '04:05 PM', '29-11-2021_04:05_PM_C-200 25112021 Dept.pdf', 'pdf.png'),
(190, '10 GFC Drawings for B2 & B3 Storage Building. Approved on 25.11.21', 'GML-2020-VIL-LK-B2-01 to 04 R0, GML-2020-VIL-LK-B3-01 to 04 R0,GML-2020-VIL-LK-B2-ERE-01 & B3 ERE-01 R0', 'ps2md', '2021-12-01', '12:27 PM', '01-12-2021_12:27_PM_GFC Drawings for B2 & B3 Storage Bldg.rar', 'RAR.png'),
(191, 'Submission of M-35 60mm Interlocking Paver Block for approval', 'VIL Letter 70 Dt. 02/12/21 Submitted to CCE ( N ) on 3/12/21', 'ps2md', '2021-12-06', '10:53 AM', '06-12-2021_10:53_AM_C-200 02122021 VIL 70.pdf', 'pdf.png'),
(192, 'Trimdek 1015 Profile Drawings are approved with comments .', 'Letter from CCE(R&D)N Dated 03.12.21. Balam\'s Mail on 4/12/21', 'ps2md', '2021-12-06', '11:10 AM', '06-12-2021_11:10_AM_C-200 03122021 Dept..pdf', 'pdf.png'),
(193, 'MOM held on 11th & 12th NOV 2021 for PPT on Design & Drgs. w.r.t. E&M Services.', 'Letter from CCE(R&D)N to VIL Dated 01.12.2021. Originals received @ HO on 06.12.2021\n', 'ps2md', '2021-12-06', '05:14 PM', '06-12-2021_05:14_PM_C-200 01122021 Dept..pdf', 'pdf.png'),
(194, 'Tata Blue scope Roof Sheet - Trimdek 1015- GFC  Drawing & Data sheets', 'Drawings Approved with comments on 03/12/21. ', 'ps2md', '2021-12-09', '10:57 AM', '09-12-2021_10:57_AM_Trimdek TBSL-TD-1015-005 & Data Sheet.pdf', 'pdf.png'),
(195, 'Reply to VIL Letter 1810 Dt 18-10-21 Reg. Drawing Approval Process', 'Letter from CCE(N) Dt 02-12-2021 to VIL', 'ps2md', '2021-12-14', '03:35 PM', '14-12-2021_03:35_PM_C-200 02122021 Dept (1).pdf', 'pdf.png'),
(196, 'Reply to VIL Letter 2110-A Dt. 21.10.21. To follow the set procedure for submission of Drgs. & Lette', 'Letter from CCE(N) Dt 02-12-2021 to VIL ', 'ps2md', '2021-12-14', '03:58 PM', '14-12-2021_03:58_PM_C-200 02122021 Dept (2).pdf', 'pdf.png'),
(197, 'To Maintain the required temp. of curing tank, Safety Measures & protect steel', 'Letter from CCE (N) Dt. 02-12-21 to VIL. Received on 10/12/21', 'ps2md', '2021-12-14', '04:54 PM', '14-12-2021_04:54_PM_C-200 02122021 Dept (3).pdf', 'pdf.png'),
(198, 'Regarding EOT & Hindrances up to 31.08.2021', 'VIL Letter 0209-B Dated 02-09-2021. E-mail received from Balam on 11-12-2021 02:51 PM', 'ps2md', '2021-12-14', '05:02 PM', '14-12-2021_05:02_PM_C-200 02122021 Dept (4).pdf', 'pdf.png'),
(199, 'To approve B1 Storage Building Section & Foundation Plan details drgs. ', 'Letter from CCE(N) Dt 06-12-21 to the Director CFEES( Copy to VIL was collected by Eshwar on 06/12/21) ', 'ps2md', '2021-12-14', '05:09 PM', '14-12-2021_05:09_PM_C-200 06122021 Dept. (1).pdf', 'pdf.png'),
(200, 'Regarding EOT, Delay in completing Milestone -1 due to Hindrances ', 'VIL Letter 0209B Dated 02.09.21 to CCE(N). Balam\'s Mail on 16.12.2021', 'ps2md', '2021-12-17', '10:56 AM', '17-12-2021_10:56_AM_C-200 02092021 VIL 0209B.pdf', 'pdf.png'),
(201, 'Reply / Clarification to VIL Letter No  39 Dated 21.08.2021 ', 'Letter from CCE(N) Dated 07.12.2021 to VIL ', 'ps2md', '2021-12-17', '12:12 PM', '17-12-2021_12:12_PM_C-200 07122021 Dept (1).pdf', 'pdf.png'),
(202, 'Reply to VIL Letter 68 Dt 24.11.21 Reg. Alignment of  B1 Building & Nalah', 'Letter from CCE(N) Dt. 07-12-21 to  VIL ', 'ps2md', '2021-12-17', '12:42 PM', '17-12-2021_12:42_PM_C-200 07122021 Dept (2).pdf', 'pdf.png'),
(203, 'Reply / Clarification to VIL Letter 64 Dt 29.10.21 Reg.  Road Alignment, Watch Tower, Main Nala Etc.', 'Letter from CCE(N) Dt. 07-12-21 to VIL', 'ps2md', '2021-12-17', '01:16 PM', '17-12-2021_01:16_PM_C-200 07122021 Dept (3).pdf', 'pdf.png'),
(204, 'To reconcile the contents of VIL Letter no 65 Dated 02-11-2021 ', 'Letter from CCE(N) Dt. 07-12-21 to VIL. ', 'ps2md', '2021-12-17', '06:34 PM', '17-12-2021_06:34_PM_C-200 07122021 Dept (4).pdf', 'pdf.png'),
(205, 'Reply to VIL Letter 2110 Dated 21.10.21 Reg, MOM, GFC Drgs. etc.,', 'Letter from CCE(N) Dt. 07-12-21 to VIL.', 'ps2md', '2021-12-17', '06:43 PM', '17-12-2021_06:43_PM_C-200 07122021 Dept (5).pdf', 'pdf.png'),
(206, 'To submit Structural Steel manufacturer details and get the same approved, & reg factory visit', 'Letter from CCE(N) Dt. 09.12.2021 to VIL Received by Balam on 13.12.21', 'ps2md', '2021-12-17', '07:01 PM', '17-12-2021_07:01_PM_C-200 09122021 Dept.  (1).pdf', 'pdf.png'),
(207, 'Reply to VIL Letter 61 Dt. 29.10.21 Clarification on GFC Drgs. & Instructions to submit total qty. o', 'Letter from CCE(N) dt. 09-12-21 to VIL. Received by Balam on 13-12-21 ', 'ps2md', '2021-12-18', '10:18 AM', '18-12-2021_10:18_AM_C-200 09122021 Dept.  (2).pdf', 'pdf.png'),
(208, 'To submit NABL certificate of the Lab mentioned in VIL Letter no 69 Dt. 24-11-21 & to inform in adv.', 'Letter from CCE(N) dt. 09-12-21 to VIL. Received by Balam on 13-12-21', 'ps2md', '2021-12-18', '10:36 AM', '18-12-2021_10:36_AM_C-200 09122021 Dept.  (3).pdf', 'pdf.png'),
(209, 'To submit monthly bar chart along with financial progress', 'Letter from CCE(N) dt. 09-12-21 to VIL. Received by Balam on 13-12-21', 'ps2md', '2021-12-18', '10:44 AM', '18-12-2021_10:44_AM_C-200 09122021 Dept.  (4).pdf', 'pdf.png'),
(210, 'Reg. Balance part of PPT on E&M Services, To submit tech data of  Ground fos pump, cabel, panel etc', 'Letter from CCE(N) dt. 09-12-21 to VIL. Received by Balam on 13-12-21', 'ps2md', '2021-12-18', '03:03 PM', '18-12-2021_03:03_PM_C-200 09122021 Dept.  (5).pdf', 'pdf.png'),
(211, 'To prepare the Drawings only using Auto-CAD Software .', 'Letter from CCE(N) dt. 09-12-21 to VIL. Received by Balam on 13-12-21', 'ps2md', '2021-12-18', '03:10 PM', '18-12-2021_03:10_PM_C-200 09122021 Dept. (6).pdf', 'pdf.png'),
(212, 'Submission of Parking Shed 1,2 & 3 flooring and layout details drawings (4 sets ) for approval ', 'VIL Letter No 1012 Dated 10-12-2021 to CCE(N) submitted on 13-12-2021 by Balam', 'ps2md', '2021-12-18', '03:13 PM', '18-12-2021_03:13_PM_C-200 10122021 VIL 1012.pdf', 'pdf.png'),
(213, 'Submission of JSPL structural steel purchase confirmation letter.', 'VIL Letter No 71 Dated 21.12.2021 to CCE(N)', 'ps2md', '2021-12-21', '06:42 PM', '21-12-2021_06:42_PM_C200 21122021 VIL 71.pdf', 'pdf.png'),
(214, 'To review & approve the drgs. for B1 storage bldg. sections, foundation plan & details.', 'Letter from CCE(N) Dated 06-12-2021 to CFEES. Originals (Copy to VIL) received by Eshwar on 6.12.21', 'ps2md', '2021-12-22', '11:51 AM', '22-12-2021_11:51_AM_C-200 06122021 Dept..pdf', 'pdf.png'),
(215, 'To issue a letter for reinforcement steel testing to Dr. B.R.A. NIT, Jalandhar lab', 'Letter from VIL to CCE(N) Dated 20.12.2021 submitted by Balam on 21.12.21', 'ps2md', '2021-12-22', '12:02 PM', '22-12-2021_12:02_PM_C-200 20122021 VIL 2012.pdf', 'pdf.png'),
(216, 'Submission of B6 Fabrication shop Drawings soft copy in a CD', 'VIL Letter No 71 Dated 21.12.2021 to CCE (N). ', 'ps2md', '2021-12-23', '11:07 AM', '23-12-2021_11:07_AM_C-200 21122021 VIL 73.pdf', 'pdf.png'),
(217, 'Approved concrete Mix Design M35 grade for RCC Bldg.(Gen) works - 28 Days report', 'Letter from CCE(N) to VIL Dt. 17.12.2021 & Letter to CCE(N) from N.I.T, Jalandhar Dt 09/12/21', 'ps2md', '2021-12-24', '10:34 AM', '24-12-2021_10:34_AM_C-200 17122021 Dept..pdf', 'pdf.png'),
(218, 'Submission of Bar Bending Schedule for B1 to B4 Bldg. Sand Bin ', 'VIL Letter No 72 Dated 21-12-21 to CCE(N). Sent by Eshwar', 'ps2md', '2021-12-24', '10:59 AM', '24-12-2021_10:59_AM_C-200 21122021 VIL 72.pdf', 'pdf.png'),
(219, 'Submission of Acrylic Distemper and Water proofing paint shade color for approval ', 'VIL Letter No.74 Dated  21-12-2021. Eshwar Sent directly to Dept. via speed post ', 'ps2md', '2021-12-29', '11:27 AM', '29-12-2021_11:27_AM_C-200 21122021 VIL 74.pdf', 'pdf.png'),
(220, 'Submission of 4 set of Location / layout of parking area ( Non Technical ) sub station Bldg. ', 'VIL Letter No.75 Dated 22-12-2021. Eshwar Sent directly to Dept. via speed post', 'ps2md', '2021-12-29', '11:48 AM', '29-12-2021_11:48_AM_C-200 22122021 VIL 75.pdf', 'pdf.png'),
(221, 'Submission of 4 set of Location / layout of parking area ( Non Technical ) sub station Bldg.', 'VIL Letter No 76 Dated 22.12.2021 to CCE(N).BPE Sent the letter by speed post', 'ps2md', '2021-12-31', '11:03 AM', '31-12-2021_11:03_AM_C-200 22122021 VIL 76.pdf', 'pdf.png'),
(222, 'To approve substation Bldg. Drawings', 'VIL Letter No 77 Dated 22.12.2021 to CCE(N).BPE Sent the letter by speed post', 'ps2md', '2021-12-31', '11:28 AM', '31-12-2021_11:28_AM_C-200 22122021 VIL 77.pdf', 'pdf.png'),
(223, 'Submission of 4 sets POL Store Drawings, DBR & Soft of Drgs. in CD', 'VIL Letter No 2212 Dated 22.12.2021 Submitted to CCE(N) by Balam on 24.12.2021', 'ps2md', '2021-12-31', '11:39 AM', '31-12-2021_11:39_AM_C-200 22122021 VIL 2212.pdf', 'pdf.png'),
(224, 'Submission of 4 sets Security office building drawings , DBR & soft copy in a CD', 'VIL Letter 2212 A Dated 22.12.2021 Submitted to CCE(N) by Balam on 24.12.2021', 'ps2md', '2021-12-31', '11:58 AM', '31-12-2021_11:58_AM_C-200 22122021 VIL 2212A.pdf', 'pdf.png'),
(225, 'To perform 16mm & 20 mm Fe 500 D Reinforcement Steel Test', 'Letter Dated 23.12.2021 from CCE(N) to CE HOD, NIT, Jalandhar', 'ps2md', '2021-12-31', '12:12 PM', '31-12-2021_12:12_PM_C-200 23122021 Dept..pdf', 'pdf.png'),
(226, 'To submit the details for Non availability of  M-35 paver block and Test certificates, Tech. details', 'Letter from CCE(N) Dated 23.12.2021 to VIL', 'ps2md', '2021-12-31', '12:17 PM', '31-12-2021_12:17_PM_C-200 23122021 Dept.pdf', 'pdf.png'),
(227, '2nd Reminder - Reg. Balance part of PPT on E&M Services, To submit tech data of Ground fos pump, cab', 'Letter from CCE(N) Dated 24.12.2021 to VIL ', 'ps2md', '2021-12-31', '03:40 PM', '31-12-2021_03:40_PM_C-200 24122021 Dept..pdf', 'pdf.png'),
(228, 'Submission of IIT, Chennai vetted drawings for Technical area Parking Shed 1 & 2 ', 'VIL Letter No 2412 Dated 24.12.21. Submitted to CCE(N) by Balam on 28.12.21', 'ps2md', '2021-12-31', '03:44 PM', '31-12-2021_03:44_PM_C-200 24122021 VIL 2412.pdf', 'pdf.png');
INSERT INTO `upload` (`upload_id`, `subject`, `comment`, `username`, `date`, `time`, `file_name`, `iconName`) VALUES
(229, 'Submission of Painting Shade card for Admin Building & Parking area. ( For Approval )', 'VIL Letter No 78 Dated 27.12.2021. BPE Sent to CCE(N) by speed post', 'ps2md', '2021-12-31', '03:49 PM', '31-12-2021_03:49_PM_C-200 27122021 VIL 78.pdf', 'pdf.png'),
(230, 'Reminder 2 - Reg. Road Alignment, Front 3 Watch Tower & Main Nalla Levels', 'VIL Letter No. 79  27.01.2021. BPE  Sent to CCE(N) by speed Post', 'ps2md', '2021-12-31', '04:05 PM', '31-12-2021_04:05_PM_C-200 27122021 VIL 79.pdf', 'pdf.png'),
(231, 'To approve the layout and issue the detailed cross section for Nalla Work', 'VIL Letter No. 80 28.12.2021. BPE Sent to CCE(N) by speed Post', 'ps2md', '2021-12-31', '04:15 PM', '31-12-2021_04:15_PM_C-200 28122021 VIL 80.pdf', 'pdf.png'),
(232, 'Reply to Dept. Letter 29.10.2021 for submitting 6 sets of Tech area layout plan and request for appr', 'VIL Letter No 81 Dated 28.12.2021 to CCE(N).BPE Sent the letter by speed post', 'ps2md', '2021-12-31', '04:18 PM', '31-12-2021_04:18_PM_C-200 28122021 VIL 81.pdf', 'pdf.png'),
(233, 'Submission of 6 sets Structural Steel Shop Drawings of B1 & B4 Storage Bldg.', 'VIL Letter No 2812 Dated 28.12.21 to CCE(N) Submitted by Balam on 31.12.21', 'ps2md', '2022-01-03', '11:36 AM', '03-01-2022_11:36_AM_Acknowledgments Submitted Drawing B1 & B4 Storage Building Fabrication to DRDO N LK Project dt 31-12-2021 31-Dec-2021 13-38-07.pdf', 'pdf.png'),
(234, '2nd Reminder to Submit the details of GM Limaye for inspection of Structural Steel Work', 'Letter from CCE(N) to VIL Dated 28.12.2021/ Originals received @ HO on 03.12.21', 'ps2md', '2022-01-03', '12:06 PM', '03-01-2022_12:06_PM_C-200 28122021 Dept..pdf', 'pdf.png'),
(235, 'Reply to VIL Letter No 74 Dated 21.12.2021 Reg. approval for Acrylic Distemper Paint color ', 'Letter from CCE(N) to VIL Dated 28.12.2021. Originals received at HO on 03.01.2022', 'ps2md', '2022-01-03', '07:23 PM', '03-01-2022_07:23_PM_C-200 28122021 Dept..pdf', 'pdf.png'),
(236, 'To approve Aluminum window details & issue GFC at earliest', 'VIL Letter No 82 Dated 01-01-2022 Submitted by Balam to CCE(N) on 0701-22', 'ps2md', '2022-01-10', '12:29 PM', '10-01-2022_12:29_PM_C-200 01012022 VIL 82.pdf', 'pdf.png'),
(237, 'Submission of 4 Sets Vehicle washing plans, sections & structural details drawings for approval Incl', 'VIL Letter No 0501 Dated 05-01-2022 Submitted by Balam to CCE(N) on 07-01-22', 'ps2md', '2022-01-10', '12:36 PM', '10-01-2022_12:36_PM_C-200 05012022 VIL 0501.pdf', 'pdf.png'),
(238, 'Re-submission of 4 sets Architectural & Structural Drgs. for Sump & Pump Room. Incl DBR & CD', 'VIL Letter No 0501 A  Dated 05-01-2022 Submitted by Balam to CCE(N) on 07-01-22', 'ps2md', '2022-01-10', '12:43 PM', '10-01-2022_12:43_PM_C-200 05012022 VIL 0501A.pdf', 'pdf.png'),
(239, 'As per the GFC, Submission of Bar Bending details for B7 Bldg. Sub-Station & Watch Tower', 'VIL Letter No 83 Dated 10-01-2022. Eshwar sent the doc to Dept. by Courier on 10-1-22', 'ps2md', '2022-01-10', '03:33 PM', '10-01-2022_03:33_PM_C-200 10012022 VIL 83.pdf', 'pdf.png'),
(240, 'Reply to VIL Letter 1908 Dt. 19-08-21. Details of total load on concrete road & hard standing. BrahM', 'Letter Dt. 03.01.22 from CCE(N) to VIL Originals received at HO on 11-01-2022 ', 'ps2md', '2022-01-11', '12:40 PM', '11-01-2022_12:40_PM_C-200 03012022 Dept..pdf', 'pdf.png'),
(241, '3rd Reminder to Submit the details of GM Limaye for inspection of Structural Steel Work', 'Letter Dt. 04.01.22 from CCE(N) to VIL Originals received at HO on 11-01-2022', 'ps2md', '2022-01-11', '01:01 PM', '11-01-2022_01:01_PM_C-200 04012022 Dept (1).pdf', 'pdf.png'),
(242, 'Reply to VIL letter 2212 Dt. 22.12.21 - Seeking clarification on Drawings submitted by VIL. Fuel sto', 'Letter Dt. 04.01.22 from CCE(N) to VIL. Originals received at HO on 11-01-2022', 'ps2md', '2022-01-11', '01:08 PM', '11-01-2022_01:08_PM_C-200 04012022 Dept (2).pdf', 'pdf.png'),
(243, 'Reminder - Inform date for Balance part of PPT on E&M Services, To submit tech data of Ground fos pu', 'Letter Dt. 04.01.22 from CCE(N) to VIL Originals received at HO on 11-01-2022', 'ps2md', '2022-01-11', '01:14 PM', '11-01-2022_01:14_PM_C-200 04012022 Dept (3).pdf', 'pdf.png'),
(244, '2nd Reminder - to submit Monthly Bar charts along with financial progress. DCW&E HQ  Instructions ', 'Letter Dt. 04.01.22 from CCE(N) to VIL Originals received at HO on 11-01-2022', 'ps2md', '2022-01-11', '01:23 PM', '11-01-2022_01:23_PM_C-200 04012022 Dept (4).pdf', 'pdf.png'),
(245, 'To attend Meeting on 11-01-22 @ O/o CCE(N) to discuss pending issues of Design & Drgs. To submit pla', 'Letter Dt. 04.01.22 from CCE(N) to VIL Originals received at HO on 11-01-2022', 'ps2md', '2022-01-11', '01:29 PM', '11-01-2022_01:29_PM_C-200 04012022 Dept (5).pdf', 'pdf.png'),
(246, 'Request to Re-schedule the scheduled Meeting Dt. 11-01-22 between 18th to 22nd Jan 22 to discuss pen', 'VIL Letter No 0873 Dated 14-01-2022. E-mail & Originals sent to Dept. by speed post on 17-01-22.', 'ps2md', '2022-01-17', '10:16 AM', '17-01-2022_10:16_AM_C-200 14012022 VIL 0873.pdf', 'pdf.png'),
(247, 'GFC Drawing - B1 - Storage Building Sections', 'Drg No : VIL-ARCH-B1-102 CA3 Approved on 10-01-22', 'ps2md', '2022-01-25', '12:12 AM', '25-01-2022_12:12_AM_C-200 VIL-ARCH-B1-102 CA 3.pdf', 'pdf.png'),
(248, 'GFC Drawing - B1 - Storage Building Foundation Details', 'Drg. No : VIL-RC-B1-202 CA 3 Approved on 10-01-22', 'ps2md', '2022-01-25', '12:23 AM', '25-01-2022_12:23_AM_C-200 VIL-RC-B1-202 CA 3.pdf', 'pdf.png'),
(249, 'Approved Drgs for B1 - Storage Bldg. Foundation Details & Storage Bldg. Sections ', 'Letter Dated 17-01-2022. Prem Dutt  Sent the Originals to HO 22.01.22', 'ps2md', '2022-01-28', '06:07 PM', '28-01-2022_06:07_PM_C-200 17012022 Dept..pdf', 'pdf.png'),
(250, 'Requesting to confirm the availability for Meeting with our MEP consultants on 24-01-22', 'VIL Letter No 0892 Dated 21.01.2022. ', 'ps2md', '2022-01-28', '06:16 PM', '28-01-2022_06:16_PM_C-200 21012022 VIL 0892.pdf', 'pdf.png'),
(251, 'Re-submission of 4 sets ARCH-STRU Drgs of 110 KL Static Water Tank Plans', 'VIL Letter No 2501 Dated 25.01.2022 Submitted to CCE(N) on 27-01-22 Drg No VIL-AR-SWT-101 Rev 02 & VIL-RC-SWT-201 Rev 01', 'ps2md', '2022-01-28', '06:36 PM', '28-01-2022_06:36_PM_C-200 25012022 VIL 2501.pdf', 'pdf.png'),
(252, 'Submission of 4 Sets Drgs. of Joindery Details for Doors, Windows, Ventilators aof all Bldgs.', 'Letter No 2501-A Dated 25.01.2022. Submitted to CCE(N) on 27-01-22. 19 Drgs with 2 CD & request to approve  other Drgs. ', 'ps2md', '2022-01-28', '06:43 PM', '28-01-2022_06:43_PM_C-200 25012022 VIL 2501 A.pdf', 'pdf.png'),
(253, 'Architectural & Structural Drawings not approved for Sump & Pump room', 'L Dt. 02-02-2022 from CCE(R&D)N to VIL. Balam received on 02.02.22 - Ref VIL 1509 Dt 15-09-21', 'ps2md', '2022-02-04', '04:37 PM', '04-02-2022_04:37_PM_C-200 02022022 Dept..pdf', 'pdf.png'),
(254, 'Drgs. approved with comments. Instructed to re-submit after incorporating the changes', '31.01.2022 Dept. Letter to VIL. Received by Balam on  01-01-22', 'ps2md', '2022-02-09', '11:58 AM', '09-02-2022_11:58_AM_C-200 31012022 Dept.pdf', 'pdf.png'),
(255, 'Container Storage Bldg. (B6) Fabrication Drgs.  Approved ', '01-02-2022 Dept. Letter to VIL.  Balam Received on 01.02.22', 'ps2md', '2022-02-09', '12:44 PM', '09-02-2022_12:44_PM_C-200 01022022 Dept..pdf', 'pdf.png'),
(256, 'Submission of 8sets Architectural & Structural Drgs. for B5A & B5B Storage Bldg.', '03.02.2022 VIL Letter No 0302 . Submitted to CCE(N) on 07.02.22', 'ps2md', '2022-02-09', '12:51 PM', '09-02-2022_12:51_PM_C-200 03022022 VIL 0302.pdf', 'pdf.png'),
(257, 'Submission of 4 Sets Drgs. for B2, B3 & B4 Storage Bldg. Section details for approval', '03.02.2022 VIL Letter No 0302A Submitted to CCE(N) on 07-02-22', 'ps2md', '2022-02-09', '01:03 PM', '09-02-2022_01:03_PM_C-200 03022022 VIL 0302A.pdf', 'pdf.png'),
(258, 'Extension of time ( EOT ) Granted by Dept.', '07-02-2022 Dept. Order 1 for Extending Milestones', 'ps2md', '2022-02-09', '01:12 PM', '09-02-2022_01:12_PM_C-200 07022022.pdf', 'pdf.png'),
(259, 'Acknowledgment for  Submission of 6th RAR Bill', 'L Dt. 09.02.2022 No 0902 Submitted to CCE(N) by Balam on 14.02.22', 'ps2md', '2022-02-16', '09:54 AM', '16-02-2022_09:54_AM_Acknowledgments Submitted 6th RAR for DRDO N LK Project dt 14-02-2022 14-Feb-2022 17-26-31.pdf', 'pdf.png'),
(260, 'Copy 06 Fabrication Drawings Approved for Container Storage Bldg. (B6) ', 'L Dt. 01.02.2022 Total 166 Drawings Received at HO on 16.02.22 ( Balam\'s courier ) Balam Received from Dept. on 01.02.22', 'ps2md', '2022-02-17', '03:34 PM', '17-02-2022_03:34_PM_Approved Drawings - Container Storage Building ( B6) Copy 6.rar', 'RAR.png'),
(261, 'To fix a Meeting with Harryson\'s for discussion on Design & Drgs. Approval ', 'L Dt. 11.02.22 from CCE(N) to VIL. Original received @ HO on 18-02-2022', 'ps2md', '2022-02-19', '02:20 PM', '19-02-2022_02:20_PM_C-200 11022022 Dept..pdf', 'pdf.png'),
(262, 'Minutes of Meeting Dated 08-02-2022', 'L Dt. 11-02-22. Letter from CCE(N) to VIL Originals Received at HO on 18-02-22', 'ps2md', '2022-02-19', '02:22 PM', '19-02-2022_02:22_PM_C-200 11022022 Dept.pdf', 'pdf.png'),
(263, 'Acknowledgment for submitting Reinforcement  Steel Test Report ', 'L Dt. 18.02.22 No 86. Submitted on 18-02-2022', 'ps2md', '2022-02-22', '09:47 AM', '22-02-2022_09:47_AM_Acknowledment Submitted Letter with Original Steel Test Report from NIT jalandhar to DRDO N LK Project dt 18-02-2022 19-Feb-2022 17-14-19.pdf', 'pdf.png'),
(264, 'B5A & B5B Bldg. Arch & Stru. Drgs. Approved with comments & to re-submit after incorporating comment', 'L Dt. 17-02-22 from CCE(N) to VIL Received by Balam on 17/2/22, @ HO n 22.12.22', 'ps2md', '2022-02-22', '05:03 PM', '22-02-2022_05:03_PM_B5A & B5B Arch & Stru  Drgs. Approved With Comments.rar', 'RAR.png'),
(265, 'Parking Shed 1,2 &3 Flooring Layout Drgs. approved for execution. ', 'L Dt. 18-02-22 Dept. to VIL, Balam Received on 18-02-22. ', 'ps2md', '2022-02-24', '04:14 PM', '24-02-2022_04:14_PM_C-200 18022022 Dept.pdf', 'pdf.png'),
(266, 'Submission of Monthly Progress Report', 'VIL L Dt. 21.02.22 No. 87. Submitted on 21.02.22. Received from Eshwar on 24.02.22. ', 'ps2md', '2022-02-24', '04:41 PM', '24-02-2022_04:41_PM_C-200 21022022 VIL 87.pdf', 'pdf.png'),
(267, 'Submission of Panel Room Plans, Elevations & Sections Drawing for approval ( 4Sets )', 'L Dt. 21-02-22 No 2102 VIL to CCE(R&D)N. Submitted by Balam on 21.02.22 ', 'ps2md', '2022-02-28', '04:32 PM', '28-02-2022_04:32_PM_C-200 21022022 VIL 2102.pdf', 'pdf.png'),
(268, 'To re-submit the Panel Room Plans, Elevations & Sections Drgs. after incorporating said notes', 'L Dt. 25-02-22 CCE(R&D)N to VIL. Received by Balam on 25-02-22  ', 'ps2md', '2022-02-28', '04:39 PM', '28-02-2022_04:39_PM_C-200 25022022 Dept..pdf', 'pdf.png'),
(269, 'GFC / Approved Drawings for  B1 & B4 Storage Building ( 10 Drgs )', 'L Dt. 25.02.22 Dept. to VIL. Received by Balam on 25-02-22', 'ps2md', '2022-02-28', '05:16 PM', '28-02-2022_05:16_PM_25022022 B1 & B4 Storage Building Drawings.rar', 'RAR.png'),
(270, 'GFC / Drawings Approved for Admin Block. ( 11 Drgs. Rev 01 )', 'L Dt. 25-02-22, Dept. to VIL. Received by Balam on 25.02.22', 'ps2md', '2022-02-28', '05:39 PM', '28-02-2022_05:39_PM_C-200 25022022 Admin Block 11 GFC.rar', 'RAR.png'),
(271, 'To re-submit 19 Drgs. of Joinery Details of Doors Window & Ventilators of all bldg', 'L Dt. 25-02-2022 from Dept. to VIL. Received by Balam on 25-02-2022 To incorporate the changes marked on drawings', 'ps2md', '2022-02-28', '06:12 PM', '28-02-2022_06:12_PM_25022022 19 Drawings to Resubmit.rar', 'RAR.png'),
(272, 'Submission of Panel Room Arch & Stru Drawing for approval ( 4Sets )', 'L Dt. 28-02-22 No 2802. Balam Submitted on 28-02-22', 'ps2md', '2022-03-10', '10:00 AM', '10-03-2022_10:00_AM_C-200 28022022 VIL 2802.pdf', 'pdf.png'),
(273, 'Request to issue Area Entry passes for Staff & Labors ', 'L Dt. 28.2.22 Submitted to CCE(N) by Balam on 03.03.22', 'ps2md', '2022-03-11', '10:28 AM', '11-03-2022_10:28_AM_C-200 28022022 VIL 88.pdf', 'pdf.png'),
(274, 'Submission of Stru Steel Fabrication drgs for UN/Loading area B1 to B4 Storage Bldg.', 'VIL L Dt. 04.03.22 No 403 Submitted to CCE(N) by Balam on 07/03/2022', 'ps2md', '2022-03-11', '10:38 AM', '11-03-2022_10:38_AM_C-200 04032022 VIL 0403.pdf', 'pdf.png'),
(275, 'Submission of B5A & B5B Checkout & Defueling facilities of Arch & Stru Drgs', 'VIL L Dt. 04.03.22 No 403 A Submitted to CCE(N) by Balam on 07/03/2022', 'ps2md', '2022-03-11', '10:52 AM', '11-03-2022_10:52_AM_C-200 04032022 VIL 0403A.pdf', 'pdf.png'),
(276, 'Re-Submission of 4 Sets Vehicle washing plans, sections & stru. details drgs for approval Incl cacul', 'VIL L Dt. 07-03-22 No 0703 Submitted by Balm to CCE(N) on 09-03-22', 'ps2md', '2022-03-12', '12:11 PM', '12-03-2022_12:11_PM_C-200 07032022 VIL 0703.pdf', 'pdf.png'),
(277, 'As per the comments of Dept. Re-submission of modified Drgs. for Pump & Sump Room', 'VIL L Dt. 08-03-22 No 0803 Submitted to CCE(N) by Balam on 09-03-22', 'ps2md', '2022-03-12', '12:18 PM', '12-03-2022_12:18_PM_C-200 08032022 VIL 0803.pdf', 'pdf.png'),
(278, 'Submission of revised Drawings ( Electrical ) for approval', 'VIL L No 11-03-22 Submitted to CCE(N) by Balam on 14-03-22 ', 'ps2md', '2022-03-17', '06:10 PM', '17-03-2022_06:10_PM_C-200 11032022 VIL 1103.pdf', 'pdf.png'),
(279, 'Submission of revised drawings for HVAC, Plumbing , CCTV, Electrical, Fire Fighting & Fire Alarm', 'VIL L Dt 11-03-22 No. 1103 A Submitted to CCE(N) by Balam on 14-03-22', 'ps2md', '2022-03-18', '11:07 AM', '18-03-2022_11:07_AM_C-200 11032022 VIL 1103A.pdf', 'pdf.png'),
(280, 'Submission of revised drawings for Fire Alarm along with DBR & CDs ', 'VIL L Dt 11-03-22 No. 1103 B Submitted to CCE(N) by Balam on 14-03-22', 'ps2md', '2022-03-18', '01:06 PM', '18-03-2022_01:06_PM_C-200 11032022 VIL 1103B.pdf', 'pdf.png'),
(281, 'Submission of revised drawings for Fire Fighting along with DBR & CDs', 'VIL L Dt 11-03-22 No. 1103 C Submitted to CCE(N) by Balam on 14-03-22', 'ps2md', '2022-03-18', '01:16 PM', '18-03-2022_01:16_PM_C-200 11032022 VIL 1103C.pdf', 'pdf.png'),
(282, 'Submission of revised drawings for HVAC along with DBR & CDs', 'VIL L Dt 11-03-22  No. 1103 D Submitted to CCE(N) by Balam on 14-03-22', 'ps2md', '2022-03-18', '01:26 PM', '18-03-2022_01:26_PM_C-200 11032022 VIL 1103D.pdf', 'pdf.png'),
(283, 'Submission of revised drawings for Plumbing along with DBR & CDs  ( Copy No 1 & 2 )', 'VIL L Dt 11-03-22 No. 1103 E Submitted to CCE(N) by Balam on 14-03-22', 'ps2md', '2022-03-18', '01:29 PM', '18-03-2022_01:29_PM_C-200 11032022 VIL 1103E.pdf', 'pdf.png'),
(284, 'Requesting Dept. to issue a letter for Shriram Research.. to carry out Cement concreate Mix Design. ', 'VIL L Dt 16-03-22 No. 1603 Submitted to CCE(N) by Balam on 17-03-22', 'ps2md', '2022-03-18', '01:44 PM', '18-03-2022_01:44_PM_C-200 16032022 VIL 1603.pdf', 'pdf.png'),
(285, 'To issue a letter to CIHT Lab for conducting test on TATA & SAIL structural steel.', 'VIL L Dt. 17.03.22 No. 1703 Submitted to CCE(R&D)N by Balam on 21.03.22', 'ps2md', '2022-03-24', '10:45 AM', '24-03-2022_10:45_AM_C-200 17032022 VIL 1703.pdf', 'pdf.png'),
(286, 'Request to release the Mobilization Advance Bank Guarantee. ', 'L Dt. 17.03.22 No. 1116 from VIL HO to CCE(R&D)N submitted by Balam on 23.03.22', 'ps2md', '2022-03-24', '11:12 AM', '24-03-2022_11:12_AM_C-200 17032022 VIL 1116.pdf', 'pdf.png'),
(287, 'To conduct the tests on concreate Mix Design M-35 grade ( For RCC Bldg.) & provide detailed report.', 'Letter Dt. 21.03.22 from CCE(R&D)N to Shriram institute of Industrial research. ', 'ps2md', '2022-03-24', '11:53 AM', '24-03-2022_11:53_AM_C-200 21032022 Dept..pdf', 'pdf.png'),
(288, 'To perform all physical & chemical tests on TATA & SAIL Structural Steel.', 'Letter Dt. 21.03.22 from CCE(R&D) N to CIHT. Copy to VIL received by Balam.    ', 'ps2md', '2022-03-25', '12:04 PM', '25-03-2022_12:04_PM_C-200 21032022 Dept.pdf', 'pdf.png'),
(289, 'Submission of 4 Sets of Revised Drags. for Joinery details of Doors, Windows & ventilators.', 'VIL Letter Dt. 26.03.22 No 2603. Submitted to CCE(N) by Balam on 28-03-22', 'ps2md', '2022-03-29', '04:54 PM', '29-03-2022_04:54_PM_C-200 26032022 VIL 2603.pdf', 'pdf.png'),
(290, 'Regarding joinery details of Doors & Windows - Minimum thickness of Aluminum should be 2.6mm. ', 'Dept. to VIL Letter Dt. 22.03.22. Harrison to Dept. Letter Dt. 25.02.22. Balam received on 25.03.22  ', 'ps2md', '2022-04-05', '12:08 PM', '05-04-2022_12:08_PM_C-200 22032022 Dept..pdf', 'pdf.png'),
(291, 'Submission of 4 sets of Drgs. for B1 Storage Bldg. Sections, Details of sand bins along with trolley', 'VIL Letter Dt. 01-04-22 No. 0104 Submitted to CCE(R&D)N by Balam on 04-04-22', 'ps2md', '2022-04-05', '02:45 PM', '05-04-2022_02:45_PM_C-200 01042022 VIL0104.pdf', 'pdf.png'),
(292, 'Letter from DGA, GSF, IHQ to BrahMos -  Security clearance granted for VIL', 'BrahMos Letter Dt. 16-03-22 No 341 to Dte. Gen of Artillery, GS Branch, IHQ, MOD - Delhi - seeking for security clearance Copy of letter collected by Balam from CCE(N)', 'ps2md', '2022-04-05', '06:05 PM', '05-04-2022_06:05_PM_C-200 16032022 BrahMos 341.pdf', 'pdf.png'),
(293, 'Parking Shed 1 & 2 Drawings Approved with comments ', 'Dept. Letter Dt. 22.03.2022 Received by Balam on 28-02-2022', 'ps2md', '2022-04-08', '01:19 PM', '08-04-2022_01:19_PM_Parking Shed.rar', 'RAR.png'),
(294, 'POL Store Building Drawings approved with comments. To re-submit after incorporating the changes men', 'Dept. Letter Dt. 22.03.22. Received by Balam on 28-03-22', 'ps2md', '2022-04-08', '01:29 PM', '08-04-2022_01:29_PM_POL Store Plan.rar', 'RAR.png'),
(295, 'Submission of revised drgs. for POL Storage Bldg. ( After incorporating comments of consultant )', 'VIL Letter Dt. 11.04.22 No 1104 Submitted to CCE(R&D)N by Balam on 12.04.22', 'ps2md', '2022-04-13', '11:05 AM', '13-04-2022_11:05_AM_C-200 11042022 VIL 1104.pdf', 'pdf.png'),
(296, 'Security office building 3 drgs. approved with comments. Before execution instructed to submit compl', 'Dept. Letter Dt. 13-04-22  Recived by Balam on 13-04-22', 'ps2md', '2022-04-21', '05:12 PM', '21-04-2022_05:12_PM_C-200 13042022 Dept (1).pdf', 'pdf.png'),
(297, 'Joinery details of Doors, Windows & ventilators drawings for all bldg. approved with comments also t', 'Dept. Letter Dt. 13-04-22 Received by Balam on 13-04-22', 'ps2md', '2022-04-22', '11:31 AM', '22-04-2022_11:31_AM_C-200 13042022 Dept (2).pdf', 'pdf.png'),
(298, 'Architectural & Structural drgs. for Vehicle washing plans & section details are approved', 'Dept. Letter Dt. 13-04-22 Received by Balam on 13-04-22', 'ps2md', '2022-04-22', '11:42 AM', '22-04-2022_11:42_AM_C-200 13042022 Dept (3).pdf', 'pdf.png'),
(299, 'B2, B3 & B4 Storage Building Sections & Detail Drawings approved.', 'Dept. Letter Dt. 13-04-22 Received by Balam on 13-04-22', 'ps2md', '2022-04-22', '01:18 PM', '22-04-2022_01:18_PM_C-200 13042022 Dept (4).pdf', 'pdf.png'),
(300, 'Architectural & Structural Drgs. of Panel Room are approved with comments. Compliance of comments  t', 'Dept. Letter Dt. 13-04-22 Received by Balam on 13-04-22', 'ps2md', '2022-04-22', '03:24 PM', '22-04-2022_03:24_PM_C-200 13042022 Dept (5).pdf', 'pdf.png'),
(301, 'Joinery Details of Doors Window & Ventilator Drgs. for all Bldg. approved with comments ', 'Dept. Letter Dt. 13.04.22 Balam Received 20 Drgs. & Sent to HO on  20.04.22', 'ps2md', '2022-04-22', '03:42 PM', '22-04-2022_03:42_PM_Joinery Details of Doors Window & Ventilator Drawings for all Bldg.rar', 'RAR.png'),
(302, 'Request to approve the paint shade for Steel & Galvalume  sheets.', 'VIL Letter Dt 16-04-22 No 90 Submitted to CCE(N) by Balam on 18-04-22', 'ps2md', '2022-04-22', '04:01 PM', '22-04-2022_04:01_PM_C-200 16042022 VIL 90.pdf', 'pdf.png'),
(303, 'Submission of Paint shade cards, & seeking shade approval for Admin Bldg, PS P1,P2 & P3', 'VIL Letter Dt 16-04-22 No 91 Submitted to CCE(N) by Balam on 18-04-22', 'ps2md', '2022-04-22', '05:00 PM', '22-04-2022_05:00_PM_C-200 16042022 VIL 91.pdf', 'pdf.png'),
(304, 'Request to inspect structural steel fabrication at Jalandhar & to Inform the date of inspection asap', 'VIL Letter Dt 16-04-22 No 92 Submitted to CCE(N) by Balam on 18-04-22', 'ps2md', '2022-04-22', '05:57 PM', '22-04-2022_05:57_PM_C-200 16042022 VIL 92.pdf', 'pdf.png'),
(305, 'To arrange 500 AEP for VIL Staff & Laborers .', 'VIL Letter Dt 16-04-22 No 93 Submitted to CCE(N) by Balam on 18-04-22', 'ps2md', '2022-04-22', '06:04 PM', '22-04-2022_06:04_PM_C-200 16042022 VIL 93.pdf', 'pdf.png'),
(306, 'Plumbing & Fire Fighting Drawings 13+3 Copy 2 approved with comments', 'Dept. Letter Dt. 19-04-2022 . Balam Sent this thru E-mail on 21-04-22. Compliance report on comments to be submitted', 'ps2md', '2022-04-22', '06:08 PM', '22-04-2022_06:08_PM_C-200 19042022 Dept..pdf', 'pdf.png'),
(307, 'Architectural & Structural Drgs. of 110 KL Static water tank approved with comments. ', 'Dept. Letter Dt. 22-04-22 . Balam Sent this thru E-mail on 24-04-22. Compliance of comments to be submitted', 'ps2md', '2022-04-25', '10:31 AM', '25-04-2022_10:31_AM_C-200 22042022 Dept (1).pdf', 'pdf.png'),
(308, 'B5A & B5B Checkout & De-fuelling facilities  Arch & Stru Drgs. are approved with comments', 'Dept. Letter Dt. 22-04-22 . Balam Sent this thru E-mail on 24-04-22. Compliance of comments to be submitted', 'ps2md', '2022-04-25', '10:38 AM', '25-04-2022_10:38_AM_C-200 22042022 Dept (2).pdf', 'pdf.png'),
(309, '20 Drawings of Plumbing & Fire Fighting are approved with comments.', 'Dept. Letter Dt. 19-04-2022 . Drawings received at HO on 25-04-22. Compliance report on comments to be submitted to Dept.', 'ps2md', '2022-04-26', '11:34 AM', '26-04-2022_11:34_AM_Plumbing & Fire Fighting Drawings approved with comments.rar', 'RAR.png'),
(310, 'Architectural & Structural Drawings of Sump & Pump are approved  ( 5 Drgs - Copy 4 )', 'Dept. Letter Dt. 22-04-22  Ref: Balam\'s Email Dated 27-04-22 ', 'ps2md', '2022-04-28', '02:06 PM', '28-04-2022_02:06_PM_C-200 220422 Dept..pdf', 'pdf.png'),
(311, 'Submission of 4 Sets modified Drawings of Plumbing along with Tech. spec & DBR', 'VIL Letter Dt. 25-04-22 No 2504 Submitted to CCE(N) by Balam Singh on 28-04-2022. Ref Earlier Letter 2009 Dated 20-09-21 ', 'ps2md', '2022-04-29', '12:43 PM', '29-04-2022_12:43_PM_C-200 25042022 VIL 2504.pdf', 'pdf.png'),
(312, 'Submission of Joinery details of Doors, Windows & ventilators drgs. for all bldg. after incorporatin', 'VIL Letter Dt. 25-04-22 No 2504A.  Submitted to CCE(N) by Balam Singh on 28-04-2022. ', 'ps2md', '2022-04-29', '12:53 PM', '29-04-2022_12:53_PM_C-200 25042022 VIL 2504A.pdf', 'pdf.png'),
(313, 'Structural steel Fabrication Drgs. of Loading & Unloading area for B1 to B4 approved', 'Dept. Letter Dt. 22.04.2022 Received by Balam on 29.04.22', 'ps2md', '2022-05-02', '12:07 PM', '02-05-2022_12:07_PM_C-200 22042022 Dept..pdf', 'pdf.png'),
(314, 'Structural steel Fabrication Drawings of Loading & Unloading area for B1 to B4 approved', 'Drawings received from Balam to HO on 04-05-2022 ', 'ps2md', '2022-05-05', '06:20 PM', '05-05-2022_06:20_PM_B1 to  B4 Stru. Fabrication Drawings approved.rar', 'RAR.png'),
(315, 'Architectural & Structural drawings of Sump & Pump are approved. ', 'Drawings received from Balam to HO on 04-05-2022 ', 'ps2md', '2022-05-05', '06:35 PM', '05-05-2022_06:35_PM_Arch & Stru Drawings of Sump & Pump are approved.rar', 'RAR.png'),
(316, 'Request to approve KPT make PPR pipes for the work.', 'VIL Letter No 2304Dated 23.04.22 Only Hard copy of the letter was sent by Balam to HO on 04-05-22', 'ps2md', '2022-05-06', '12:18 PM', '06-05-2022_12:18_PM_C-200 23042022 VIL 2304.pdf', 'pdf.png'),
(317, 'Regarding wall thickness provided for 110KL Water Tank .', 'VIL Letter No 2504 B Dated 25-04-22 Submitted to Dept. By Balam on 28-04-22', 'ps2md', '2022-05-06', '01:08 PM', '06-05-2022_01:08_PM_C-200 25042022 VIL 2504B.pdf', 'pdf.png'),
(318, 'Acknowledgment for Submitting 7th RAR Bill.  ', 'VIL Letter Dt. 27-04-22 No 94 submitted to Dept. by Balam on 28-04-22', 'ps2md', '2022-05-06', '03:07 PM', '06-05-2022_03:07_PM_C-200 27042022 VIL 94.pdf', 'pdf.png'),
(319, 'Fire Alarm Drawings ( Copy No 2 ) are approved with comments. Method Statement, Compliance & TDS to ', 'Dept. Letter Dated 29-04-22 Received by Balam on 4-5-22', 'ps2md', '2022-05-06', '05:29 PM', '06-05-2022_05:29_PM_C-200 29042022 Dept..pdf', 'pdf.png'),
(320, 'Electrical Drawings are approved with comments. Compliance report to be submit.', '4 Drawings Not approved. TDS & Method statement also to be submitted. Dept Letter dated 02-05-22. Recvied by Balam on 02.05.22', 'ps2md', '2022-05-06', '05:45 PM', '06-05-2022_05:45_PM_C-200 02052022 Dept..pdf', 'pdf.png'),
(321, 'Acknowledgement for submitting proposed method of WS, FF & Electrical as per the conditions of CA ', 'VIL Letter Dated 06-05-2022 No 0605 Submitted to CCE(R&D)N by Balam on 9/5/22. Total 3 sets of 98 leaves each', 'ps2md', '2022-05-10', '05:43 PM', '10-05-2022_05:43_PM_C-200 06-05-2022 VIL 0605.pdf', 'pdf.png'),
(322, 'Acknowledgement for submitting 3 sets of GA Diagram & QA Plan along with TDS for Approval. ', 'VIL Letter Dated 06-05-2022 No 0605 A Submitted to CCE(R&D)N by Balam on 9/5/22 Total 3 sets of 85 leaves each.', 'ps2md', '2022-05-10', '05:49 PM', '10-05-2022_05:49_PM_C-200 06052022 VIL 0605A.pdf', 'pdf.png'),
(323, 'Request for permission to work on all days & information about Vech., Labors & Staff were stopped on', 'VIL Letter Dated 09-05-2022. Submitted to CCE(R&D)N by Balam on 10-05-2022', 'ps2md', '2022-05-11', '02:17 PM', '11-05-2022_02:17_PM_C-200 09052022 VIL 0905.pdf', 'pdf.png'),
(324, '3rd Party proof checking for approval of all drgs. for Structural & MEP Services . ', 'Dept. Letter Dated 06-05-22 Received by Balam on 09-05-22', 'ps2md', '2022-05-13', '11:42 AM', '13-05-2022_11:42_AM_C-200 06052022 Dep.pdf', 'pdf.png'),
(325, '14 No\'s HVAC Drgs. approved. Instructed for 3rd party vetting & submit TDS', 'Dept. Letter Dt. 06-05-22 Received by Balam on 09-05-22 ', 'ps2md', '2022-05-13', '11:58 AM', '13-05-2022_11:58_AM_C-200 06052022 Dept..pdf', 'pdf.png'),
(326, 'Dept. Seeking VIL for Certain clarification on KPT make PPR pipes submitted for approval on 23-4-22', 'Dept. Letter Dated 06-05-2022. Received by Balam on 09-05-2022 ', 'ps2md', '2022-05-13', '03:13 PM', '13-05-2022_03:13_PM_C-200 06052022 Dept.pdf', 'pdf.png'),
(327, 'Electrical SLD are approved with comments  for Technical & Non-Technical area along with Admin Bldg.', 'Letter Dt 09-05-2022 from CCE(R&D)N. Received by Balam on 09-05-2022', 'ps2md', '2022-05-13', '03:18 PM', '13-05-2022_03:18_PM_C-200 09052022 Dept..pdf', 'pdf.png'),
(328, 'Copy No 4, 20 Drgs for Joinery Details  of Doors & windows are approved with comments. Compliance, M', 'Letter Dt 09-05-2022 from CCE(R&D)N. Received by Balam on 09-05-2022', 'ps2md', '2022-05-13', '03:22 PM', '13-05-2022_03:22_PM_C-200 09052022 Dept.pdf', 'pdf.png'),
(329, '4 Electrical SLD are approved with comments for Technical & Non-Technical area along with Admin Bldg', 'Letter Dt 09-05-2022 from CCE(R&D)N. Received by Balam on 09-05-2022', 'ps2md', '2022-05-14', '05:21 PM', '14-05-2022_05:21_PM_4 Electrical SLD Tech. & Non- Tech. area with Admin Bldg. approved with comments.rar', 'RAR.png'),
(330, '14 No\'s HVAC Drawings are approved. Instructed for 3rd party vetting & submit TDS', 'Dept. Letter Dt. 06-05-22 Received by Balam on 09-05-22', 'ps2md', '2022-05-14', '05:29 PM', '14-05-2022_05:29_PM_14 Drawings of HVAC are approved.rar', 'RAR.png'),
(331, '20 Drgs. for Joinery Details of Doors & windows are approved with comments. ', 'Letter Dt 09-05-2022 from CCE(R&D)N. Received by Balam on 09-05-2022. Compliance report to be submitted', 'ps2md', '2022-05-16', '01:05 PM', '16-05-2022_01:05_PM_20 Drawings for Joinery Details approved with comments.rar', 'RAR.png'),
(332, 'Revised Drawings for Plumbing work is submitted for approval.', 'VIL Letter Dt. 13.05.2022 No 1305 Submitted to CCE(R&D)N by Balam on 13-05-22 ', 'ps2md', '2022-05-16', '03:08 PM', '16-05-2022_03:08_PM_C-200 13052022 VIL 1305.pdf', 'pdf.png'),
(333, 'Submission of Steel Report checked @CIHT & OPC 43 Grade cement checked @ Dr. BRA NIT ', 'VIL Letter Dt 13.05.22 No 95 Submitted to CCE(N) on 17-05-22', 'ps2md', '2022-05-19', '06:35 PM', '19-05-2022_06:35_PM_C-200 13052022 VIL 95.pdf', 'pdf.png'),
(334, 'Acknowledgment for Submitting 8th RAR Bill', 'VIL Letter Dt 15-05-22 No 97, Submitted on 17-05-22', 'ps2md', '2022-05-19', '06:38 PM', '19-05-2022_06:38_PM_C-200 15052022 VIL 97.pdf', 'pdf.png'),
(335, 'Point wise Reply by VIL to the Harrysons letter dated 06-05-2022 ', 'VIL Letter Dt 16-05-22 No 99, Submitted to CCE(N) on 17-05-22', 'ps2md', '2022-05-19', '06:40 PM', '19-05-2022_06:40_PM_C-200 16052022 VIL 99.pdf', 'pdf.png'),
(336, '7th RAR Bill Dated 06-05-22', 'Recevied from Balam on May 19, 2022', 'ps2md', '2022-05-19', '06:43 PM', '19-05-2022_06:43_PM_C-200 19052022 7th RAR.pdf', 'pdf.png'),
(337, 'Seeking certain clarifications on the KPT Make PPR Pipe Docs submitted by us.', 'Dept. Letter Dt. 06-05-22 Received by Balam on 09-05-22.', 'ps2md', '2022-05-27', '10:43 AM', '27-05-2022_10:43_AM_C-200 06052022 Dept.pdf', 'pdf.png'),
(338, 'Submission of Bar chart for planning & Execution  of work', 'VIL Letter Dt. 13-05-2022 No 1305 Along with 2 CDs Submitted to CCE(N) on 19-05-2022', 'ps2md', '2022-05-27', '05:35 PM', '27-05-2022_05:35_PM_C-200 13052022 VIL 1305..pdf', 'pdf.png'),
(339, 'Electrical SLD , HVAC & Joinery Details', 'To Download the Drawings, Click on the link.', 'ps2md', '2022-05-28', '12:55 PM', '28-05-2022_12:55_PM_C-200 14052022 Electrical SLD , HVAC & Joinery Details.pdf', 'pdf.png'),
(340, 'Regarding. Hindrances', 'VIL Letter Dt. 16-05-22 No 98 Submitted to Dept. by Balam on 20-05-22 ', 'ps2md', '2022-05-31', '02:56 PM', '31-05-2022_02:56_PM_C-200 16052022 VIL 98.pdf', 'pdf.png'),
(341, 'Submission of 4 Sets of Drawings. for B1 to B4  Storage Bldg. ', 'VIL Letter Dt. 17-05-2022 No 1705 Submitted to Dept. by Balam on 19-05-2022', 'ps2md', '2022-05-31', '03:26 PM', '31-05-2022_03:26_PM_C-200 17052022 VIL 1705.pdf', 'pdf.png'),
(342, 'Along with CD, Submission of Calculation Sheets for Storage Building flooring Details', 'VIL Letter Dt. 19-05-22 No 1905 Submitted to Dept. by Balam on 20-05-22', 'ps2md', '2022-05-31', '03:42 PM', '31-05-2022_03:42_PM_C-200 19052022 VIL 1905.pdf', 'pdf.png'),
(343, 'Reply to Dept Letter Dt 06-05-22, Clarifications on PPR Pipes. ', 'VIL Letter Dt. 19-05-22 No 1905 Submitted to Dept. by Balam on 20-05-22', 'ps2md', '2022-06-01', '04:03 PM', '01-06-2022_04:03_PM_C-200 19052022 VIL 1905A.pdf', 'pdf.png'),
(344, 'Proposal to use JSPL IU 52 KG Trolley  for Shed & Storage Bins.  For approval', 'VIL Letter Dt. 19-05-2022 No 1905B Submitted to Dept. by Balam on 20.05.22', 'ps2md', '2022-06-02', '11:34 AM', '02-06-2022_11:34_AM_C-200 19052022 VIL 1905B.pdf', 'pdf.png'),
(345, 'Submission of Waterproofing Items  & other Details of the  agency for approval.', 'VIL Letter Dt. 19-05-22 No 1905C   Submitted to Dept. by Balam on 24-05-22', 'ps2md', '2022-06-02', '12:14 PM', '02-06-2022_12:14_PM_C-200 19052022 VIL 1905C.pdf', 'pdf.png'),
(346, 'Proposal to use JSPL IU 52 KG in Transverse Trolley area & B1 to B4 Storage Bldg. For approval', 'VIL Letter Dt 20-05-22 No 100 ', 'ps2md', '2022-06-02', '04:14 PM', '02-06-2022_04:14_PM_C-200 20052022 VIL 100.pdf', 'pdf.png'),
(347, 'Reg. Withdrawal of VIL Letter No 94 Dated 09-05-2022 ', 'VIL Letter No 101 Dated 20-05-2022', 'ps2md', '2022-06-02', '04:17 PM', '02-06-2022_04:17_PM_C-200 20052022 VIL 101.pdf', 'pdf.png'),
(348, 'Reg. Withdrawal of VIL Letter No 94 Dated 09-05-2022', 'VIL Letter Dt. 20-05-2022 No 2005. Submitted to Dept. by Balam on 20/5/22', 'ps2md', '2022-06-02', '04:24 PM', '02-06-2022_04:24_PM_C-200 20052022 VIL 2005.pdf', 'pdf.png'),
(349, 'Request to Visit Fabrication Yard at Jalandhar for inspection of  Structural Steel fabrication.', 'VIL letter Dt 23-05-2022 No 102 Submitted to Dept. by Balam on 23.05.22', 'ps2md', '2022-06-02', '04:44 PM', '02-06-2022_04:44_PM_C-200 23052022 VIL 102.pdf', 'pdf.png'),
(350, 'Request to reimburse the increase in cost of Construction materials. ', 'VIL Letter Dt 26.05.22 No 160 Sent from HO to all recipients thru speed post. Delivered on 30.05.22 ', 'ps2md', '2022-06-02', '04:59 PM', '02-06-2022_04:59_PM_C-200 26052022 VIL 0160.pdf', 'pdf.png'),
(351, 'As per IOCL Standards Submission of plan fabrication drgs. for 2 X 75 KL HSD Tank for approval.', 'VIL Letter Dt. 27-05-2022 No 2705 Submitted to Dept. by Balam on 31-05-22', 'ps2md', '2022-06-02', '05:14 PM', '02-06-2022_05:14_PM_C-200 27052022 VIL 2705.pdf', 'pdf.png'),
(352, 'Submission of Revised Drawings of CCTV with Tech. specifications  for approval', 'VIL Letter Dt. 27-05-2022 No 2705A  Submitted to Dept.by Balam on 30.05.22', 'ps2md', '2022-06-02', '05:57 PM', '02-06-2022_05:57_PM_C-200 27052022 VIL 2705A.pdf', 'pdf.png'),
(353, 'Submission of EOT Cranes GA Drawings ( B1 to B6 ) along with TDS for approval', 'VIL Letter Dt. 27-05-22 No 2705B Submitted to Dept. by Balam on 30-05-22 ', 'ps2md', '2022-06-02', '06:24 PM', '02-06-2022_06:24_PM_C-200 27052022 VIL 2705B.pdf', 'pdf.png'),
(354, ' To submit DBR, Drawings & TDS of CCTV, Telephone, CMS, HSD Tank & EOT Cranes for approval', 'Dept. Letter Dt 30.05.2022 Received by Balam on 31-05-22', 'ps2md', '2022-06-03', '11:07 AM', '03-06-2022_11:07_AM_C-200 30052022 Dept..pdf', 'pdf.png'),
(355, 'Meeting is scheduled on 08-06-22 to discuss & finalize pending issues on Design & Drgs.', 'Dept. Letter Dated 30-05-22 Received by Balam on  31-05-22', 'ps2md', '2022-06-03', '12:24 PM', '03-06-2022_12:24_PM_C-200 30052022 Dept.pdf', 'pdf.png'),
(356, 'To Submit Drawings, DBR & TDS for remaining works.  ', 'Dept. Letter Dated 01-07-2022. Received thru E-mail ( vishal1@vishalinfra.com ) from Dept. on 01-06-2022 @ 05:09 PM', 'ps2md', '2022-06-03', '06:28 PM', '03-06-2022_06:28_PM_C-200 01062022 Dept..pdf', 'pdf.png'),
(357, 'Request to recover 15% of the Bill amount from the 9th RAR towards Mobilization Advance', 'VIL Letter Dated 16-05-2022 No 096 Submitted to CCE(R&D)N by Balam on 03-06-22', 'ps2md', '2022-06-08', '04:00 PM', '08-06-2022_04:00_PM_C-200 16052022 VIL 096.pdf', 'pdf.png'),
(358, 'Submission of JSPL & SAIL make IU rails 52 KG/mtr with detail specification for approval ', 'VIL Letter Dated 01-06-2022 No 106. Submitted to Dept. by Balam on 03-06-22. Ref. VIL Letter 1905 Dt. 19-05-22', 'ps2md', '2022-06-08', '04:30 PM', '08-06-2022_04:30_PM_C-200 01062022 VIL 106.pdf', 'pdf.png'),
(359, 'Regarding VDF Flooring, Traverse & Bin Trolleys  & Rail length for storage bins. ', 'VIL Letter Dated 07-06-2022 No 105.  ', 'ps2md', '2022-06-08', '06:15 PM', '08-06-2022_06:15_PM_C-200 07062022 VIL 105.pdf', 'pdf.png'),
(360, 'Revised Drawings of CCTV ( 3 Copies ) are forwarded to consultant for comments / Approval', 'Letter from CCE(R&D)N to Harryson\'s Consultant Dated 03-06-22. Ref : VIL Letter 2705A Dated 27-05-2022', 'ps2md', '2022-06-09', '10:39 AM', '09-06-2022_10:39_AM_C-200 03062022 Dept (1).pdf', 'pdf.png'),
(361, '10th RA Bill Dated 27-06-22', 'Ref : Balam\'s E-mail Dated 30-06-22', 'ps2md', '2022-06-30', '11:25 AM', '30-06-2022_11:25_AM_10th RAR payment of Rs 319Lakh Released on 29-06-2022 By DRDO N LK Project dt 29-06-2022 30-Jun-2022 07-52-25.pdf', 'pdf.png'),
(362, 'To submit the pending Drawings / Design / Documents for approval', 'Letter from (CCE R&D)N to VIL Dated 29-06-2022. Received at HO ', 'ps2md', '2022-07-11', '10:50 AM', '11-07-2022_10:50_AM_C-200 01062022 Dept..pdf', 'pdf.png'),
(363, 'List of Pending Documents pertaining to Non Tech Area to be submitted for approval', 'Dept. Letter dated 01-06-2022 ', 'ps2md', '2022-07-11', '10:59 AM', '11-07-2022_10:59_AM_C-200 01062022 Dept..pdf', 'pdf.png'),
(364, 'Submission of 2X75 KL HSD Tank Drawings as per IOCL Std. for approval', 'VIL Letter Dt. 27-05-2022 Balam Submitted to Dept. on 31-05-22 ', 'ps2md', '2022-07-11', '12:19 PM', '11-07-2022_12:19_PM_C-200 27052022 VIL 2705.pdf', 'pdf.png'),
(365, 'To Re-Submit Catalogue / TDS of Light Fixtures  for Tech & Non Tech Area ', 'Dept. Letter Dated 29-06-2022\nReceived at HO  ', 'ps2md', '2022-07-12', '12:43 PM', '12-07-2022_12:43_PM_C-200 29062022 (2).pdf', 'pdf.png'),
(366, 'Correspondence from May last week to July 1st Week', 'Dept. & VIL Letters', 'ps2md', '2022-07-28', '12:09 PM', '28-07-2022_12:09_PM_Correspondence from May last week to July 1st Week.rar', 'RAR.png'),
(367, 'To submit Snow & Wind load calculation  fro Designing the Structural Stability', 'Dept. Letter Dt 27-07-2022. Received at HO from CCE(N) thru courier on 30-07-22', 'ps2md', '2022-08-01', '12:17 PM', '01-08-2022_12:17_PM_C-200 27072022 Dept..pdf', 'pdf.png'),
(368, 'To conduct the Chemical & Physical properties test for reinforcement steel.', 'Dept. Letter Letter to Director, Alpha Test House Dated 23.07.2022 . Copy to VIL Received by  Balam on 01/08/22 ', 'ps2md', '2022-08-03', '12:56 PM', '03-08-2022_12:56_PM_C-200 23072022 Dept..pdf', 'pdf.png'),
(369, 'Request to recover 23% of over all work done amount from 12th RAR towards Mobilization Advance', 'VIL Letter Dated 01-08-22 No 122 Submitted to Dept. on 02-08-22', 'ps2md', '2022-08-04', '12:00 PM', '04-08-2022_12:00_PM_C-200 01082022 VIL 122.pdf', 'pdf.png'),
(370, '12th RAR Bill Dt. 22-07-22', 'Payment Released on 27-07-22', 'ps2md', '2022-08-04', '12:30 PM', '04-08-2022_12:30_PM_12th RAR Copy of Payment Release date 29-07-2022 of Rs 4-05 Crore From D....pdf', 'pdf.png'),
(371, 'Regarding Earthing Mat', 'VIL Letter Dated 02-08-22 No 0208 Submitted to Dept. on 03-08-22', 'ps2md', '2022-08-08', '04:11 PM', '08-08-2022_04:11_PM_C-200 02082022 VIL 0208.pdf', 'pdf.png'),
(372, 'Approval for GA Drawings & Traverse Trolley. ', 'Dept. Letter Dated 08-08-2022 \nBrahMos letter was not attached in the Mail', 'ps2md', '2022-08-08', '04:17 PM', '08-08-2022_04:17_PM_C-200 08082022- Dept..pdf', 'pdf.png'),
(373, 'Submission of B5 Checkout & Defueling Bldg. Structural. & Fab Drgs. for approval', 'VIL Letter Dated 26-07-22 No 2607. Balam Submitted to Dept. on 12-08-2022', 'ps2md', '2022-08-16', '03:10 PM', '16-08-2022_03:10_PM_C-200 26072022 VIL 2607.pdf', 'pdf.png'),
(374, 'Submission of TYP Strom Water Drain Drawings  & details for Non Tech Site External for approval ', 'VIL Letter Dated 26-07-2022 No 2607A. Balam Submitted to Dept. on 12-08-2022', 'ps2md', '2022-08-16', '03:30 PM', '16-08-2022_03:30_PM_C-200 26072022 VIL 2607A.pdf', 'pdf.png'),
(375, 'Technical Specifications of Traverse  Trolley', 'Balam Received the document from Sr. AGM on  05-8-2022', 'ps2md', '2022-08-16', '04:02 PM', '16-08-2022_04:02_PM_C-200 03082022.pdf', 'pdf.png'),
(376, 'To provide the details of vehicle & authorized person to pick up dummy trolleys ', 'Letter from CCE(R&D)N to VIL  Dated 08-08-2022. Balam received on 08-08-22', 'ps2md', '2022-08-16', '04:30 PM', '16-08-2022_04:30_PM_C-200 08082022 Dept..pdf', 'pdf.png'),
(377, 'The color shade for the frame & shutter door is approved. ', 'Dept. Letter Dt. 08-08-22. Balam received on8/8/22', 'ps2md', '2022-08-16', '04:48 PM', '16-08-2022_04:48_PM_C-200 08082022 Dept.pdf', 'pdf.png'),
(378, 'Request to issue a letter for the Precast Solid block testing from Alpha Lab ', 'VIL Letter No 125 Dated 22.08.22 Submitted to Dept. on 22.08.22', 'ps2md', '2022-08-25', '11:11 AM', '25-08-2022_11:11_AM_Acknowledgments submission Letter for Precast Concrete Solid Blocks Test to DRDO N LK Project dt 22-08-2022 22-Aug-2022 17-40-59.pdf', 'pdf.png'),
(379, 'Submission of Structural Steel fabrication shop drgs of B5 checkout & Defueling. ', 'VIL Letter No 2807 Dated 28-07-2022 Submitted to Dept. on 19-09-2022', 'ps2md', '2022-09-22', '03:19 PM', '22-09-2022_03:19_PM_C-200 28072022 VIL 2807.pdf', 'pdf.png'),
(380, 'Submission of Calibration Certificate for cube testing M/c & Solid Block test report', 'VIL Letter No 137 Dated 08-09-2022 Submitted to Dept on 09-09-2022', 'ps2md', '2022-09-22', '03:48 PM', '22-09-2022_03:48_PM_C-200 08092022 VIL 137.pdf', 'pdf.png'),
(381, 'Submission of  Bore-well Water Test reports', 'VIL Letter No 138 Dated 09-09-2022 Submitted to Dept on 09-09-2022 ', 'ps2md', '2022-09-22', '04:20 PM', '22-09-2022_04:20_PM_C-200 09092022 VIL 138.pdf', 'pdf.png'),
(382, 'Request to issue Area Entry Pass for VIL Staff & Labor\'s from 1-11-22 to 30-04-23', 'VIL Letter No 141 Dated 12-09-2022 Submitted to Dept on 13-09-2022', 'ps2md', '2022-09-22', '04:27 PM', '22-09-2022_04:27_PM_C-200 12092022 VIL 141.pdf', 'pdf.png'),
(383, 'VIL Clarifications on all item rates related to road work - Points raised by Harryson letter Dt. 28-', 'VIL Letter No 1209 Dated 12-09-2022 Submitted to Dept on 14-09-2022', 'ps2md', '2022-09-22', '04:43 PM', '22-09-2022_04:43_PM_C-200 12092022 VIL 1209.pdf', 'pdf.png'),
(384, 'Submission of RMC Plant Calibration Certificate ', 'VIL Letter No 142 Dated 13-09-2022 Submitted to Department on 13-09-2022', 'ps2md', '2022-09-22', '04:51 PM', '22-09-2022_04:51_PM_C-200 13092022 VIL 142.pdf', 'pdf.png'),
(385, 'Request to release 17 BG\'s submitted towards Mobilization Advance', 'VIL Letter No 1309 Dated 13-09-2022 Submitted to Dept. on 14-09-2022', 'ps2md', '2022-09-22', '05:07 PM', '22-09-2022_05:07_PM_C-200 13092022 VIL 1309.pdf', 'pdf.png'),
(386, 'Request to Visit Fabrication Yard @ Jalandhar for inspection of  Structural Steel B1 to B4 Etc', 'Letter No 144 Dated 14-09-2022 Submitted to Dept. on 14-09-22', 'ps2md', '2022-09-22', '05:27 PM', '22-09-2022_05:27_PM_C-200 14092022 VIL 144.pdf', 'pdf.png'),
(387, 'Submission of Certificate & Test reports of MIG Welder, Ultrasonic , Traverse area shed B1 to B4 & B', 'VIL Letter No 143 Dated 15-09-2022 Submitted to Dept. on 15-09-22', 'ps2md', '2022-09-22', '05:58 PM', '22-09-2022_05:58_PM_C-200 15092022 VIL 143.pdf', 'pdf.png'),
(388, 'Submission of 15th RAR Bill', 'VIL Letter no 145 Dated 15-09-2022 Submitted to Dept. on 15-09-2022', 'ps2md', '2022-09-22', '06:00 PM', '22-09-2022_06:00_PM_C-200 15092022 VIL 145.pdf', 'pdf.png'),
(389, 'Request to issue a letter to Alpha Test House to conduct Physical & Chemical property tests for Rein', 'VIL Letter No 146 Dated 15-09-2022 Submitted to Dept. on 15-09-2022', 'ps2md', '2022-09-22', '06:08 PM', '22-09-2022_06:08_PM_C-200 15092022 VIL 146.pdf', 'pdf.png'),
(390, 'Submission of Tech. Data Sheet for under deck insulation of UP TWIGA make for B1 to B4 Storage Bins,', 'VIL Letter No 145 Dated 16-09-2022 Submitted to Dept. on 19-09-2022', 'ps2md', '2022-09-22', '06:12 PM', '22-09-2022_06:12_PM_C-200 16092022 VIL 145.pdf', 'pdf.png'),
(391, 'Submission of Methodology for insulation & RCC roof terraces waterproofing.  ', 'VIL Letter No 147 Dated 22-09-2022 Submitted to Dept. on 22-09-2022. Tech Data sheets of Master Builders Techno Solutions.  ', 'ps2md', '2022-10-12', '06:37 PM', '12-10-2022_06:37_PM_C-200 22092022 VIL 147.pdf', 'pdf.png'),
(392, 'Regarding Reinforcement Steel Chemical & Physical property test', 'Department Letter Dates 20-09-2022 to Alpha Test House Received by Balam on 21-09-2022.   ', 'ps2md', '2022-10-12', '07:15 PM', '12-10-2022_07:15_PM_C-200 20092022 Dept..pdf', 'pdf.png'),
(393, 'Call for Progress review meeting of the Project. ', 'Dept. Letter Dated 22-09-2022 Brahmos Letter Dated 19-09-2022', 'ps2md', '2022-10-12', '07:29 PM', '12-10-2022_07:29_PM_C-200 22092022 Dept..pdf', 'pdf.png'),
(394, 'Instructions to submit Compliance for the comments on Security Bldg Drgs.    ', 'Department Letter Dated 24-08-2022. Received by Balam on 25-08-2022. Reference : Harryson\'s Letter Dated 22-08-2022  ', 'ps2md', '2022-10-12', '07:37 PM', '12-10-2022_07:37_PM_C-200 24082022 Dept (1).pdf', 'pdf.png'),
(395, 'Architectural & Structural Drawings of Sump & Pump are approved  - Copy 8', 'Department Letter Dated 24-08-2022 Received by Balam on 25-08-2022. Ref : Harryson\'s Letter Dt. 22-08-22 ', 'ps2md', '2022-10-12', '07:43 PM', '12-10-2022_07:43_PM_C-200 24082022 Dept (2).pdf', 'pdf.png'),
(396, 'Architectural & Structural Drawings of 110 KL Static water tank is approved  - Copy 8', 'Dept. Letter Dated 24-08-2022. Received by Balam on 25-08-2022', 'ps2md', '2022-10-12', '08:05 PM', '12-10-2022_08:05_PM_C-200 24082022 Dept (3).pdf', 'pdf.png'),
(397, 'Architectural & Structural Drgs for Sand & Storage bin of Storage Bldg. B2, B3 & B4 is approved  - C', 'Department Letter Dated 24-08-2022 Received by Balam on 25-08-2022 ', 'ps2md', '2022-10-12', '08:22 PM', '12-10-2022_08:22_PM_C-200 24082022 Dept (4).pdf', 'pdf.png'),
(398, 'B5A & B5B Check out & Defueling facilities are approved - 18 Drgs ', 'Department Letter Dated 24-08-2022 Received by Balam on 24-08-22', 'ps2md', '2022-10-12', '08:50 PM', '12-10-2022_08:50_PM_C-200 24082022 Dept (5).pdf', 'pdf.png'),
(399, 'B5A & B5B Check out & Defueling facilities Roof Plan, Sections & Elevations approved with comments', 'Dept. Letter Dated 24-08-2022 Received by Balam on 25-08-2022', 'ps2md', '2022-10-12', '08:55 PM', '12-10-2022_08:55_PM_C-200 24082022 Dept (6).pdf', 'pdf.png'),
(400, 'Architectural & Structural Drawings of Panel Rooms are approved   ', 'Dept. Letter Dt. 24-08-2022. Received by Balam on 25-08-2022', 'ps2md', '2022-10-13', '03:31 PM', '13-10-2022_03:31_PM_C-200 24082022 Dept (7).pdf', 'pdf.png'),
(401, 'Architectural & Structural Drawings of Vehicle washings plans are approved   ', 'Dept. Letter Dt. 24-08-2022. Received by Balam on 24-08-2022', 'ps2md', '2022-10-13', '03:45 PM', '13-10-2022_03:45_PM_C-200 24082022 Dept (8).pdf', 'pdf.png'),
(402, 'Structural Steel Fabrication Shop Drgs. of Parking Shed 1 & 2 of Tech. Area is approved ', 'Dept. Letter Dt. 24-08-2022 Received by Balam on 24-08-2022', 'ps2md', '2022-10-13', '04:22 PM', '13-10-2022_04:22_PM_C-200 24082022 Dept (9).pdf', 'pdf.png'),
(403, 'Architectural & Structural Drgs. of Sump & Pump Room are approved  - Copy 8', 'Dept. Letter Dt. 24-08-2022 Received by Balam on 25-08-22', 'ps2md', '2022-10-13', '04:37 PM', '13-10-2022_04:37_PM_C-200 24082022 Dept (10).pdf', 'pdf.png'),
(404, 'POL Storage Building Drawings are approved. Copy 7 ', 'Dept. Letter Dated 24-08-2022 Harryson\'s Letter Dt. 22-08-2022 Received by Balam on 24-08-2022 ', 'ps2md', '2022-10-13', '05:24 PM', '13-10-2022_05:24_PM_C-200 24082022 Dept 22082022 Harry.pdf', 'pdf.png'),
(405, 'To conduct various tests & to submit the reports of Site Bore well water ', 'Dept. Letter Dt. 29-08-2022 to Alpha Test House. Received by Balam on 30-08-2022', 'ps2md', '2022-10-13', '05:33 PM', '13-10-2022_05:33_PM_C-200 29082022 Dept..pdf', 'pdf.png'),
(406, 'Regarding approval of Fabrication & Shop Drawings of Parking Shed  1 & 2 of Technical Area.  ', 'VIL Letter No 2608 B Dt. 26-08-2022. Submitted to Dept. on 30-08-2022', 'ps2md', '2022-10-13', '05:42 PM', '13-10-2022_05:42_PM_C-200 26082022 VIL 2608 B.pdf', 'pdf.png'),
(407, 'Submission of 14th RAR ', 'VIL Letter No 129 Dated 29-08-2022. Submitted to Dept on 29-08-22', 'ps2md', '2022-10-13', '06:14 PM', '13-10-2022_06:14_PM_C-200 29082022 VIL 129.pdf', 'pdf.png'),
(408, '15th RAR', 'Dated 06-10-2022', 'ps2md', '2022-10-14', '01:22 PM', '14-10-2022_01:22_PM_C-200 15th RAR.pdf', 'pdf.png'),
(409, 'Request to recover 25% of over all work done amount from 19th RAR towards Mobilization Advance', 'VIL Letter No 130 Dated 29-08-2022. Submitted to Dept. on 29-08-2022', 'ps2md', '2022-10-14', '01:27 PM', '14-10-2022_01:27_PM_C-200 29082022 VIL 130.pdf', 'pdf.png'),
(410, 'Submission of shop Drgs. for hollow metal general doors for parking substations & pump rooms     ', 'VIL Letter No 131 Dated 31-08-2022. Submitted to Dept. on 31-8-22', 'ps2md', '2022-10-14', '03:28 PM', '14-10-2022_03:28_PM_C-200 31082022 VIL 131.pdf', 'pdf.png'),
(411, 'To perform Physical, Mechanical & Chemical Tesst for MS Pipe & to submit reports.', 'Dept. Letter Dated 10-10-2022 received at HO on 15-10-2022. ', 'ps2md', '2022-10-18', '12:06 PM', '18-10-2022_12:06_PM_C-200 10102022 Dept. (1).pdf', 'pdf.png'),
(412, 'Instructions to Submit proforma & other details for Security clearance ( AEP ) ', 'Dept. Letter Dated 10-10-2022 received at HO on 15-10-2022. Ref- Brahmos Letter  No 414 Dated  06-10-2022', 'ps2md', '2022-10-18', '12:27 PM', '18-10-2022_12:27_PM_C-200 10102022 Dept. (2).pdf', 'pdf.png'),
(413, 'Seeking clarifications on 28 Days , 43 Grade Cement Test Reports . ', 'Dept. Letter Dated 10-10-2022 received at HO on 15-10-2022.', 'ps2md', '2022-10-18', '12:47 PM', '18-10-2022_12:47_PM_C-200 10102022 Dept. (3).pdf', 'pdf.png'),
(414, 'Hollow Metal General Doors for parking substation & pump room are approved.', 'Dept. Letter Dated 18-10-2022. Received at HO from Dept. thru speed post on 25-10-22', 'ps2md', '2022-10-26', '11:20 AM', '26-10-2022_11:20_AM_C-200 18102022 Dept..pdf', 'pdf.png'),
(415, 'Minutes of Meeting Dated 27th & 28th Sep  2022 held at Site. ', 'Dept. Letter Dated 19-10-2022. Received at HO from Dept. thru speed post on 25-10-22', 'ps2md', '2022-10-26', '11:48 AM', '26-10-2022_11:48_AM_C-200 19102022 Dept..pdf', 'pdf.png'),
(416, 'Submission of Test reports for OPC 43 Grade ultratech cement - 28 Days.', 'VIL Letter No 152 Dated 06-10-2022. Submitted to Dept. on 06-10-2022', 'ps2md', '2022-10-26', '12:11 PM', '26-10-2022_12:11_PM_C-200 06102022 VIL 152.pdf', 'pdf.png'),
(417, 'Request to change of approval for LPS Roof & Down conductor.  ', 'VIL Letter No 153 Dated 06-10-2022. Submitted to Department on 06-10-2022', 'ps2md', '2022-10-26', '12:37 PM', '26-10-2022_12:37_PM_C-200 06102022 VIL 153.pdf', 'pdf.png'),
(418, 'To submit compliance for the comments made on 8mm Dia aluminum LPS conductor for roof Drgs ', 'Dept. Letter Dated 22-10-2022. Received @ HO thru Speed post on 28-10-22', 'ps2md', '2022-10-28', '05:43 PM', '28-10-2022_05:43_PM_C-200 21102022 Dept..pdf', 'pdf.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` tinyint(4) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `role` int(10) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `email`, `password`, `contact`, `role`, `pwd`) VALUES
(1, 'superadmin', 'info@istagarphics.com', '607b278d875a2d34643786a0f68f1e60', '9663688088', 1, 'superadmin@vishal'),
(4, 'shreya', 'shreya@vishalinfra.com', '80f4a6e9b8b5887b5ca1bbff6158f8cd', '9035252054', 3, 'Vishal@5'),
(3, 'admin', 'sanjay@vishalinfra.com', 'f2340b1824dd40c0a5a7b4082cfd55dc', '9620227904', 2, 'Sanjay@2020'),
(5, 'venkana', 'venkana@vishalinfa.com', 'b7bd2bd05aae3940acb95254a4c1e089', '9620227900', 3, 'Vishal@5'),
(6, 'mayil', 'amayilv@vishalinfra.com', 'b7bd2bd05aae3940acb95254a4c1e089', '9620744007', 3, 'Vishal@5'),
(7, 'eswar', 'bpeswar@vishalinfra.com', '8586b34f62fc3c323ce381ed1d08514d', '9301111535', 3, 'Vishal@5'),
(8, 'balam', 'balam@vishalinfra.com', 'b7bd2bd05aae3940acb95254a4c1e089', '9871094165', 3, 'Vishal@5'),
(9, 'siddappa', 'siddappa@vishalinfra.com', 'b7bd2bd05aae3940acb95254a4c1e089', '9844109511', 3, 'Vishal@5'),
(10, 'ps2md', 'ps2md@vishalinfra.com', 'b7bd2bd05aae3940acb95254a4c1e089', '9620227897', 3, 'Vishal@5'),
(12, 'jatinder', 'jatinder@vishalinfra.com', 'b7bd2bd05aae3940acb95254a4c1e089', '7009794558', 3, 'Vishal@5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `upload_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
