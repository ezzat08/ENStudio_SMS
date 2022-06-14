-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 08:47 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ensms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` varchar(35) NOT NULL,
  `AName` varchar(255) NOT NULL,
  `Addrs` text NOT NULL,
  `City` varchar(30) NOT NULL,
  `Apass` varchar(35) NOT NULL,
  `PhNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `AName`, `Addrs`, `City`, `Apass`, `PhNo`) VALUES
('admin', 'Norlaili Talib', '45, Jalan Matahari 1, Taman Serendah Utama', 'Serendah', 'admin', '0123614014'),
('williams', '', '', '', 'williams', '0');

-- --------------------------------------------------------

--
-- Table structure for table `examans`
--

CREATE TABLE `examans` (
  `EAnsID` int(50) NOT NULL,
  `ExamID` int(10) NOT NULL,
  `Senrl` varchar(50) NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `Ans1` mediumtext NOT NULL,
  `Ans2` mediumtext NOT NULL,
  `Ans3` mediumtext NOT NULL,
  `Ans4` mediumtext NOT NULL,
  `Ans5` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examans`
--

INSERT INTO `examans` (`EAnsID`, `ExamID`, `Senrl`, `Sname`, `Ans1`, `Ans2`, `Ans3`, `Ans4`, `Ans5`) VALUES
(14, 18, '146891665', 'Noraini Ezzati Ezzati', '2pq is the product of the number 22 and the variables pp and qq.\r\n\r\nMeanwhile, 7y7y  is the product of the number 77 and the variable yy.', ' 8x–5y+7\r\n=8(3)–5(2)+7\r\n=24?10+7\r\n=21.', 'None', '3x + 6 = 5x\r\n6 = 5x - 3x\r\n6 = 2x\r\n6/2 = x\r\nx = 3', 'x = 5- 2(3)\r\nx = 5 - 6\r\nx = -6'),
(15, 17, '146891668', 'Muhammad  Aiman', '2', '2', '2', '2', '2'),
(16, 17, '146891668', 'Muhammad  Aiman', '3', '4', '3', '4', '3'),
(17, 18, '146891668', 'Muhammad  Aiman', '5', '5', '1', '148', '18');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(20, 'asdf', 'asdfasdfasdfasdf', 'asdfasdfasdfasdf', 'asdfasfdasdfcvczxv', 'zcvzcvzcv', 'adfadfadfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails2`
--

CREATE TABLE `examdetails2` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails2`
--

INSERT INTO `examdetails2` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(17, 'Factorisation and Algebraic Fractions', 'Expanse this equation (m+n)(x+y).\r\n', 'Expanse this equation  (b + c) ( b - c).', 'Factorise this equation 3x + 9.', 'Factorise this equation jm?jn+ym?yn.', 'Factorise this equation 21a?14b+28c ');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails3`
--

CREATE TABLE `examdetails3` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails3`
--

INSERT INTO `examdetails3` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(17, 'Math', '2', '3', '4', '5', '6');

-- --------------------------------------------------------

--
-- Table structure for table `facutlytable`
--

CREATE TABLE `facutlytable` (
  `FID` int(10) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `JDate` date NOT NULL,
  `City` varchar(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `PhNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facutlytable`
--

INSERT INTO `facutlytable` (`FID`, `FName`, `FaName`, `Addrs`, `Gender`, `JDate`, `City`, `Pass`, `PhNo`) VALUES
(110, 'Nor Ezzati Najwa', 'Ahmad Nizam', '3, Jalan Melor 5J, Desa Melor', 'Female', '2020-02-03', 'SERENDAH', '020808100783', 125044014),
(111, 'Ahmad ', 'Faizal', 'Sulaiman', 'Male', '2022-03-09', 'Serendah', '020808100783', 111928356);

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Query` text NOT NULL,
  `Ans` text NOT NULL,
  `Eid` varchar(35) NOT NULL,
  `Qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Query`, `Ans`, `Eid`, `Qid`) VALUES
('							How to solve 3+2x=5? ', '								x = 1					', 'aiman@gmail.com', 25),
('How to solve 6 + (-9)?', '', 'aiman@gmail.com', 26);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RsID` bigint(20) NOT NULL,
  `Eno` varchar(20) NOT NULL,
  `Ex_ID` int(10) NOT NULL,
  `Marks` varchar(20) NOT NULL,
  `Point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`RsID`, `Eno`, `Ex_ID`, `Marks`, `Point`) VALUES
(2394, '146891665', 18, 'Fail', ''),
(2395, '146891668', 18, 'Pass', '');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891665, 'Noraini Ezzati', 'Raihana', 'Ahmad Nizam', '45, Jalan Matahari 1, Taman Serendah Utama', 'Female', '1', '2009-02-16', 132540216, '090216101516', 'norainiezzati@gmail.com'),
(146891668, 'Mikael', ' ', 'Ahmad Azlan', '30, Jalan Melor 10j, Desa Melor', 'Male', '1', '2007-04-30', 119827313, '070430109871', 'mike@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable2`
--

CREATE TABLE `studenttable2` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable2`
--

INSERT INTO `studenttable2` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891667, 'Ahmad Ezzat', 'Nafie', 'Ahmad Nizam', '45, Jalan Matahari 1, Taman Serendah Utama', 'Male', '2', '2007-05-13', 187904015, '070513101389', 'ezzatnafie@gmail.com'),
(146891668, 'Muhammad ', 'Aiman', 'Azhar', '5, Jalan Melor 5B, Desa Melor', 'Male', '2', '2008-09-10', 12457163, '080910100835', 'aiman@gmail.com'),
(146891669, 'Siti Nur', 'Aminah', 'Badrul Aziz', '6, Jalan Melor 8k, Desa Melor', 'Female', '2', '2008-05-05', 125614351, '080505108274', 'aminah@gmail.com'),
(146891670, 'Siti Nur', 'Najwa', 'Mohd Badrul', '3, Jalan Melor 8, Desa Melor', 'Female', '2', '2008-01-11', 192837412, '080111109826', 'sitinurnajwa@gmail.com'),
(146891671, 'Farhan', 'Azlan', 'Anas Bakri', '19, Jalan Melor 5C, Desa Melor', 'Male', '2', '2008-02-27', 128761348, '080227108713', 'farhanazlan02@gmail.com'),
(146891672, 'Ahmad Ezzat', 'Nuruddin', 'Ahmad Nizam', '3, Jalan Melor 5C, Desa Melor', 'Male', '2', '2002-08-08', 111080843, '020808100783', 'ezzatnuruddin@gmail.com'),
(146891673, 'Muhammad', 'Zulkarinai', 'Ibrahim', '3, Jalan Melor 10K, Desa Melor', 'Male', '2', '2007-08-08', 123456789, '12345', 'muhammad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable3`
--

CREATE TABLE `studenttable3` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable3`
--

INSERT INTO `studenttable3` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891665, 'Siti Nor', 'Fatimah', 'Sharifuddin', '12, Jalan Melor 8F', 'Female', '3', '2007-03-01', 126567685, '070301036724', 'fatimahnor@gmail.com'),
(146891666, 'Luqman', 'Hakim', 'Sofian', '15, Jalan Melor 10F, Desa Melor', 'Male', '3', '2007-08-13', 123615401, '070813100213', 'luqman07@gmail.com'),
(146891667, 'Shafikah', 'Maisarah', 'Ali', '25, Jalan Melor 10h, Desa Melor', 'Female', '3', '2007-10-11', 114837123, '071011034562', 'maisarah@gmail.com'),
(146891668, 'Alisya', 'Zulaikah', 'Mustafa', '10, Jalan Melor 1e, Desa Melor', 'Female', '3', '2007-12-15', 111837142, '071215103766', 'alisya0712@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_id` int(10) NOT NULL,
  `V_Title` varchar(50) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to store videos info.';

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`) VALUES
(15, 'Algebra Equation', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Z-ZkmpQBIFo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'This video the fundamental of solving an algebra Equation. Make sure you watch this and answer the quiz on this topic'),
(16, 'Factorize and Expansion', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ctqviXu-mTE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Should you learn this video to fully understand the topic factorize and expansion.'),
(18, 'Introduction to Law of Indices', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BUJKEDqGp1U\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'This video introduce you to Law of Indices'),
(19, 'MATH EQUATION', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/l3XzepN03KQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'MATH EQUATION');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `examans`
--
ALTER TABLE `examans`
  ADD PRIMARY KEY (`EAnsID`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `examdetails2`
--
ALTER TABLE `examdetails2`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `examdetails3`
--
ALTER TABLE `examdetails3`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `facutlytable`
--
ALTER TABLE `facutlytable`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`RsID`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `studenttable2`
--
ALTER TABLE `studenttable2`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `studenttable3`
--
ALTER TABLE `studenttable3`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`V_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examans`
--
ALTER TABLE `examans`
  MODIFY `EAnsID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `examdetails2`
--
ALTER TABLE `examdetails2`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `examdetails3`
--
ALTER TABLE `examdetails3`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `facutlytable`
--
ALTER TABLE `facutlytable`
  MODIFY `FID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `RsID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2396;

--
-- AUTO_INCREMENT for table `studenttable`
--
ALTER TABLE `studenttable`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891669;

--
-- AUTO_INCREMENT for table `studenttable2`
--
ALTER TABLE `studenttable2`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891674;

--
-- AUTO_INCREMENT for table `studenttable3`
--
ALTER TABLE `studenttable3`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891669;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `V_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
