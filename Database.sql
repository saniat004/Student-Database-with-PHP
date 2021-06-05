-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 07:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `l11_hossain_portal_50045`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_hossain_50045`
--

CREATE TABLE `exam_hossain_50045` (
  `Exam_id_50045` int(11) NOT NULL,
  `student_id_50045` int(11) NOT NULL,
  `subject_id_50045` int(11) NOT NULL,
  `question_id_50045` int(11) NOT NULL,
  `mark_50045` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_hossain_50045`
--

INSERT INTO `exam_hossain_50045` (`Exam_id_50045`, `student_id_50045`, `subject_id_50045`, `question_id_50045`, `mark_50045`) VALUES
(1, 1, 3, 2, 9),
(2, 1, 2, 3, 6),
(3, 1, 3, 2, 12),
(4, 1, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions_hossain_50045`
--

CREATE TABLE `questions_hossain_50045` (
  `question_id_50045` int(11) NOT NULL,
  `question_50045` varchar(44) NOT NULL,
  `answer_1_50045` varchar(44) NOT NULL,
  `answer_2_50045` varchar(44) NOT NULL,
  `answer_3_50045` varchar(44) NOT NULL,
  `correct_answer_50045` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions_hossain_50045`
--

INSERT INTO `questions_hossain_50045` (`question_id_50045`, `question_50045`, `answer_1_50045`, `answer_2_50045`, `answer_3_50045`, `correct_answer_50045`) VALUES
(1, 'What do you do?', 'notj', 'sdfw', 'sfdsf', 2),
(2, 'Where/How did you learn English?', 'ohjbbsdf', 'asfbndfh', 'qerxcv', 3),
(3, 'What do you do in your free time?', 'aqw5', 'asf5', 'awr', 3),
(4, 'qweqwe', '', '', '', 2),
(5, 'qweqwe', 'zxc', 'zxc', 'zxc', 3),
(6, 'sdf', 'sd', 'df', 'sdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_hossain_50045`
--

CREATE TABLE `student_hossain_50045` (
  `student_id_50045` int(11) NOT NULL,
  `Name_50045` varchar(50) NOT NULL,
  `SurName_50045` varchar(50) NOT NULL,
  `studentID_50045` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_hossain_50045`
--

INSERT INTO `student_hossain_50045` (`student_id_50045`, `Name_50045`, `SurName_50045`, `studentID_50045`) VALUES
(1, 'poowkn', 'rrev', '7008983'),
(2, 'pobjsdg', 'pop', '20808'),
(3, 'pjodkb', 'Unknow', '09998'),
(4, 'Md Saniat HOSSIAN', 'sd', '633100167002776114024386'),
(5, 'asd', 'sdasd', 'qrqwr'),
(6, 'sd', 'sdf', '80897'),
(7, 'SD', 'ZXC', 'ZXC'),
(8, 'DF', 'XCVXCV', '79808');

-- --------------------------------------------------------

--
-- Table structure for table `subject_hossain_50045`
--

CREATE TABLE `subject_hossain_50045` (
  `subject_id_50045` int(11) NOT NULL,
  `subjectName_50045` varchar(44) NOT NULL,
  `Lecturer_50045` varchar(44) NOT NULL,
  `numberOfHours_50045` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_hossain_50045`
--

INSERT INTO `subject_hossain_50045` (`subject_id_50045`, `subjectName_50045`, `Lecturer_50045`, `numberOfHours_50045`) VALUES
(1, 'Math', 'Jung', 30),
(2, 'english', 'poiybv', 30),
(3, 'Logic', 'ohpob', 30),
(4, 'sdf', '', 9),
(5, 'sdfsdf', 'ppnk', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_hossain_50045`
--
ALTER TABLE `exam_hossain_50045`
  ADD PRIMARY KEY (`Exam_id_50045`),
  ADD KEY `student` (`student_id_50045`),
  ADD KEY `subject` (`subject_id_50045`),
  ADD KEY `question` (`question_id_50045`);

--
-- Indexes for table `questions_hossain_50045`
--
ALTER TABLE `questions_hossain_50045`
  ADD PRIMARY KEY (`question_id_50045`);

--
-- Indexes for table `student_hossain_50045`
--
ALTER TABLE `student_hossain_50045`
  ADD PRIMARY KEY (`student_id_50045`);

--
-- Indexes for table `subject_hossain_50045`
--
ALTER TABLE `subject_hossain_50045`
  ADD PRIMARY KEY (`subject_id_50045`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_hossain_50045`
--
ALTER TABLE `exam_hossain_50045`
  MODIFY `Exam_id_50045` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions_hossain_50045`
--
ALTER TABLE `questions_hossain_50045`
  MODIFY `question_id_50045` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_hossain_50045`
--
ALTER TABLE `student_hossain_50045`
  MODIFY `student_id_50045` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subject_hossain_50045`
--
ALTER TABLE `subject_hossain_50045`
  MODIFY `subject_id_50045` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam_hossain_50045`
--
ALTER TABLE `exam_hossain_50045`
  ADD CONSTRAINT `question` FOREIGN KEY (`question_id_50045`) REFERENCES `questions_hossain_50045` (`question_id_50045`),
  ADD CONSTRAINT `student` FOREIGN KEY (`student_id_50045`) REFERENCES `student_hossain_50045` (`student_id_50045`),
  ADD CONSTRAINT `subject` FOREIGN KEY (`subject_id_50045`) REFERENCES `subject_hossain_50045` (`subject_id_50045`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
