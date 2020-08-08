-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 20, 2019 at 07:54 PM
-- Server version: 8.0.17
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wise_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `CID` int(20) NOT NULL,
  `CName` varchar(50) NOT NULL,
  `hours` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `CName`, `hours`, `date`) VALUES
(602110, 'أساسيات البرمجة', '3', '2018'),
(602131, 'تصميم المنطق الرقمي', '3', '2017'),
(602211, 'البرمجة الموجهة للكيانات', '4', '2011'),
(602220, 'الرياضيات المتقطعة', '3', '2010'),
(602221, 'تراكيب البيانات', '3', '2013'),
(603100, 'أساسيات تكنولوجيا المعلومات', '3', '2015'),
(604212, 'البرمجة المرئية', '3', '2018'),
(604313, 'برمجة تطبيقات الإنترنت', '3', '2017'),
(604320, 'قواعد البيانات', '4', '2011'),
(1505135, 'التفاضل والتكامل', '3', '2018'),
(1505137, 'مهارات الحاسوب', '3', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `course_prerequisite`
--

DROP TABLE IF EXISTS `course_prerequisite`;
CREATE TABLE IF NOT EXISTS `course_prerequisite` (
  `course_ID` int(20) NOT NULL,
  `prerequisite` int(20) NOT NULL,
  PRIMARY KEY (`course_ID`,`prerequisite`),
  KEY `prerequisite` (`prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_prerequisite`
--

INSERT INTO `course_prerequisite` (`course_ID`, `prerequisite`) VALUES
(602211, 602110),
(602221, 602211),
(604212, 602211),
(602221, 602220),
(604320, 602221),
(602131, 603100),
(602220, 603100),
(604313, 604212),
(604313, 604320),
(602110, 1505137);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `DID` int(20) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `section` int(20) NOT NULL,
  `Employment_date` int(20) NOT NULL,
  `Rank` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Degree` varchar(50) NOT NULL,
  PRIMARY KEY (`DID`),
  KEY `section` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DID`, `Name`, `section`, `Employment_date`, `Rank`, `Degree`) VALUES
(9300, 'عيسى العتوم', 2, 2008, 'مدرس اول', 'دكتوراه'),
(9301, 'علي الابراهيم', 1, 2014, 'مدرس اول', 'ماجستير'),
(9302, 'عادل حمدان', 1, 2011, 'مدرس اول', 'دكتوراه'),
(9303, 'اديب منصور', 3, 2012, 'مدرس اول', 'دكتوراه'),
(9304, 'ليلى القيسي', 4, 2016, 'مدرس مساعد', 'ماجيستير'),
(9305, 'شيماء مساعدة', 4, 2015, 'مدرس مساعد', 'دكتوراه'),
(9306, 'عمر المومني', 1, 2007, 'مدرس اول', 'دكتوراه'),
(9307, 'معاذ الطراونة', 2, 2010, 'مدرس اول', 'دكتوراه'),
(9308, 'علي نعيمات', 2, 2014, 'مدرس اول', 'دكتوراه'),
(9309, 'احمد فريحات', 3, 2013, 'مدرس اول', 'دكتوراه');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_table`
--

DROP TABLE IF EXISTS `doctor_table`;
CREATE TABLE IF NOT EXISTS `doctor_table` (
  `Dr_ID` int(20) NOT NULL,
  `Cor_ID` int(20) NOT NULL,
  PRIMARY KEY (`Dr_ID`,`Cor_ID`),
  KEY `Cor_ID` (`Cor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_table`
--

INSERT INTO `doctor_table` (`Dr_ID`, `Cor_ID`) VALUES
(9300, 602110),
(9303, 602110),
(9306, 602110),
(9302, 602131),
(9303, 602131),
(9307, 602131),
(9300, 602211),
(9302, 602211),
(9306, 602211),
(9309, 602220),
(9301, 602221),
(9309, 602221),
(9307, 603100),
(9308, 603100),
(9306, 604212),
(9304, 604313),
(9300, 604320),
(9301, 604320),
(9305, 1505135),
(9306, 1505135),
(9305, 1505137),
(9308, 1505137);

-- --------------------------------------------------------

--
-- Table structure for table `financial_section`
--

DROP TABLE IF EXISTS `financial_section`;
CREATE TABLE IF NOT EXISTS `financial_section` (
  `stu_ID` bigint(20) NOT NULL,
  `paid` int(30) NOT NULL,
  `hour_cost` int(10) NOT NULL,
  PRIMARY KEY (`stu_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financial_section`
--

INSERT INTO `financial_section` (`stu_ID`, `paid`, `hour_cost`) VALUES
(1170609031, 0, 20),
(2020602017, 0, 30),
(2170602017, 290, 50),
(3140701131, 0, 0),
(3160601037, 120, 30),
(3170001077, 500, 45),
(3170601031, 300, 20),
(3170601033, 0, 33),
(3170601041, 540, 30),
(3170601055, 560, 35),
(3180601039, 430, 60),
(3190601031, 540, 70),
(3330601020, 285, 33),
(4170601020, 0, 30),
(9180601031, 320, 40);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `SID` int(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `head_of_section` int(20) NOT NULL,
  `Num_of_Std` int(20) NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `head_of_section` (`head_of_section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`SID`, `Name`, `head_of_section`, `Num_of_Std`) VALUES
(1, 'علم الحاسوب', 9302, 4),
(2, 'هندسة البرمجيات', 9300, 6),
(3, 'قسم نظم المعلومات والشبكات', 9303, 5),
(4, 'مشترك', 9305, 15);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `SID` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `section` int(20) NOT NULL,
  `hours` int(20) DEFAULT NULL,
  `gpa` double NOT NULL,
  `enrollment_date` int(20) NOT NULL,
  `adviser` int(20) NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `adviser` (`adviser`),
  KEY `section` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `Name`, `Status`, `section`, `hours`, `gpa`, `enrollment_date`, `adviser`) VALUES
(1170609031, 'هيثم محمد', 'مؤجل', 2, NULL, 3.2, 2018, 9300),
(2020602017, 'يونس عبد الهادي', 'مؤجل', 3, NULL, 1.68, 2019, 9301),
(2170602017, 'سامي محمد ', 'على مقاعد الدراسة', 3, 12, 3.4, 2013, 9302),
(3140701131, 'رامي عمر', 'على مقاعد الدراسة', 3, 17, 1.8, 2018, 9303),
(3160601037, 'دينا محمد', 'على مقاعد الدراسة ', 2, 21, 3.6, 2017, 9304),
(3170001077, 'ريم غسان', 'على مقاعد الدراسة', 2, 17, 2.22, 2017, 9305),
(3170601031, 'هاشم محمد', 'على مقاعد الدراسة', 1, 18, 3.2, 2017, 9306),
(3170601033, 'ماجد عبد الله ', 'مؤجل', 3, NULL, 2.33, 2018, 9307),
(3170601041, 'سارة عبد الله ', 'على مقاعد الدراسة', 2, 18, 2.7, 2014, 9308),
(3170601055, 'عمر حسان', 'على مقاعد الدراسة', 1, 16, 1.66, 2015, 9309),
(3180601039, 'لين حداد', 'على مقاعد الدراسة', 2, 14, 2.3, 2013, 9301),
(3190601031, 'نور محمد', 'على مقاعد الدراسة', 2, 18, 3.8, 2017, 9302),
(3330601020, 'ملك انس', 'على مقاعد الدراسة', 3, 19, 2.78, 2014, 9303),
(4170601020, 'تيما علي', 'مؤجل', 1, NULL, 3, 2016, 9304),
(9180601031, 'رامي محمد', 'على مقاعد الدراسة', 1, 16, 1.6, 2015, 9305);

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

DROP TABLE IF EXISTS `student_table`;
CREATE TABLE IF NOT EXISTS `student_table` (
  `stu_ID` bigint(20) NOT NULL,
  `Cor_ID` int(20) NOT NULL,
  PRIMARY KEY (`stu_ID`,`Cor_ID`),
  KEY `Cor_ID` (`Cor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`stu_ID`, `Cor_ID`) VALUES
(2170602017, 602110),
(3170601031, 602110),
(3170601041, 602110),
(3170601055, 602110),
(3190601031, 602110),
(3140701131, 602131),
(3170001077, 602131),
(3180601039, 602211),
(3330601020, 602211),
(2170602017, 602220),
(3170001077, 602220),
(9180601031, 602220),
(3140701131, 602221),
(3170601041, 602221),
(3170601055, 602221),
(2170602017, 603100),
(3170001077, 603100),
(3330601020, 603100),
(9180601031, 603100),
(3160601037, 604212),
(3190601031, 604212),
(9180601031, 604212),
(3170601055, 604313),
(9180601031, 604313),
(3160601037, 604320),
(3170601031, 604320),
(3190601031, 604320),
(9180601031, 604320),
(3140701131, 1505135),
(3180601039, 1505135),
(3160601037, 1505137),
(3180601039, 1505137),
(3190601031, 1505137),
(3330601020, 1505137);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_prerequisite`
--
ALTER TABLE `course_prerequisite`
  ADD CONSTRAINT `course_prerequisite_ibfk_1` FOREIGN KEY (`course_ID`) REFERENCES `course` (`CID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `course_prerequisite_ibfk_2` FOREIGN KEY (`prerequisite`) REFERENCES `course` (`CID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`section`) REFERENCES `section` (`SID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `doctor_table`
--
ALTER TABLE `doctor_table`
  ADD CONSTRAINT `doctor_table_ibfk_1` FOREIGN KEY (`Cor_ID`) REFERENCES `course` (`CID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `doctor_table_ibfk_2` FOREIGN KEY (`Dr_ID`) REFERENCES `doctor` (`DID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `financial_section`
--
ALTER TABLE `financial_section`
  ADD CONSTRAINT `financial_section_ibfk_1` FOREIGN KEY (`stu_ID`) REFERENCES `student` (`SID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`head_of_section`) REFERENCES `doctor` (`DID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`adviser`) REFERENCES `doctor` (`DID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`section`) REFERENCES `section` (`SID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `student_table`
--
ALTER TABLE `student_table`
  ADD CONSTRAINT `student_table_ibfk_1` FOREIGN KEY (`Cor_ID`) REFERENCES `course` (`CID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `student_table_ibfk_2` FOREIGN KEY (`stu_ID`) REFERENCES `student` (`SID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
