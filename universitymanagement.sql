-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 11:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `student_rollno` varchar(20) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `student_rollno`, `course`, `branch`, `total_fee`, `paid`, `due`) VALUES
(1, '14091011', 'B.Tech', 'Computer Science', 85000.00, 60000.00, 25000.00),
(2, '14091012', 'BSc', 'Physics', 70000.00, 70000.00, 0.00),
(3, '14091011', 'B.Tech', 'Computer Science', 85000.00, 85000.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `feecollege`
--

CREATE TABLE `feecollege` (
  `course` varchar(50) NOT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feecollege`
--

INSERT INTO `feecollege` (`course`, `total_fee`) VALUES
('B.Tech', 85000.00),
('BA', 50000.00),
('BBA', 60000.00),
('BCom', 55000.00),
('BSc', 70000.00);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin123'),
('faculty', 'teach@321');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `student_rollno` varchar(20) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `subject1` varchar(100) DEFAULT NULL,
  `subject2` varchar(100) DEFAULT NULL,
  `subject3` varchar(100) DEFAULT NULL,
  `subject4` varchar(100) DEFAULT NULL,
  `subject5` varchar(100) DEFAULT NULL,
  `marks1` int(11) DEFAULT NULL,
  `marks2` int(11) DEFAULT NULL,
  `marks3` int(11) DEFAULT NULL,
  `marks4` int(11) DEFAULT NULL,
  `marks5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_rollno`, `semester`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`, `marks1`, `marks2`, `marks3`, `marks4`, `marks5`) VALUES
(1, '14091011', '1st Semester', 'Maths', 'Physics', 'Chemistry', 'C Programming', 'English', 85, 78, 90, 88, 82);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `rollno` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `class10_percent` varchar(10) DEFAULT NULL,
  `class12_percent` varchar(10) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `fname`, `rollno`, `dob`, `address`, `phone`, `email`, `class10_percent`, `class12_percent`, `aadhar`, `course`, `department`) VALUES
(1, 'Aman Singh', 'Raj Singh', '14091011', '2004-05-10', 'Mumbai', '9123456789', 'aman@univ.edu', '89', '92', '234567890123', 'B.Tech', 'Computer Science'),
(2, 'Meera Nair', 'S. Nair', '14091012', '2003-11-23', 'Chennai', '9876543211', 'meera@univ.edu', '90', '95', '345678901234', 'BSc', 'Physics'),
(3, 'Ravi Patel', 'Manoj Patel', '14091013', '2005-01-17', 'Ahmedabad', '9345678901', 'ravi@univ.edu', '88', '90', '456789012345', 'BBA', 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `student_leave`
--

CREATE TABLE `student_leave` (
  `id` int(11) NOT NULL,
  `student_rollno` varchar(20) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `duration_days` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_leave`
--

INSERT INTO `student_leave` (`id`, `student_rollno`, `leave_date`, `duration_days`, `reason`) VALUES
(1, '14091011', '2025-04-05', 1, 'Medical Leave');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `student_rollno` varchar(20) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `subject1` varchar(100) DEFAULT NULL,
  `subject2` varchar(100) DEFAULT NULL,
  `subject3` varchar(100) DEFAULT NULL,
  `subject4` varchar(100) DEFAULT NULL,
  `subject5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `student_rollno`, `semester`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`) VALUES
(1, '14091011', '1st Semester', 'Maths', 'Physics', 'Chemistry', 'C Programming', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `employee_id` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `class10_percent` varchar(10) DEFAULT NULL,
  `class12_percent` varchar(10) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `father_name`, `employee_id`, `dob`, `address`, `phone`, `email`, `class10_percent`, `class12_percent`, `aadhar`, `qualification`, `department`) VALUES
(1, 'Anjali Verma', 'Rajesh Verma', '14091001', '1980-02-15', 'Delhi', '9876543210', 'anjali@univ.edu', '87', '90', '123456789012', 'MSc', 'Physics'),
(2, 'Ravi Mehra', 'Suresh Mehra', '14091002', '1975-07-10', 'Mumbai', '9765432101', 'ravi@univ.edu', '82', '88', '234567890123', 'MBA', 'Business'),
(3, 'Priya Sharma', 'R.K. Sharma', '14091003', '1985-09-23', 'Jaipur', '9988776655', 'priya@univ.edu', '89', '92', '345678901234', 'B.Tech', 'Computer Science'),
(4, 'Vikram Rao', 'Mahesh Rao', '14091004', '1978-12-05', 'Hyderabad', '9876123456', 'vikram@univ.edu', '85', '87', '456789012345', 'BSc', 'Mathematics'),
(5, 'Kavita Nair', 'S. Nair', '14091005', '1982-04-18', 'Chennai', '9823456712', 'kavita@univ.edu', '90', '93', '567890123456', 'MCom', 'Commerce');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_leave`
--

CREATE TABLE `teacher_leave` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(20) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `duration_days` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_leave`
--

INSERT INTO `teacher_leave` (`id`, `teacher_id`, `leave_date`, `duration_days`, `reason`) VALUES
(1, '14091001', '2025-04-03', 1, 'Workshop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_rollno` (`student_rollno`);

--
-- Indexes for table `feecollege`
--
ALTER TABLE `feecollege`
  ADD PRIMARY KEY (`course`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_rollno` (`student_rollno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- Indexes for table `student_leave`
--
ALTER TABLE `student_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_rollno` (`student_rollno`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_rollno` (`student_rollno`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `teacher_leave`
--
ALTER TABLE `teacher_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_leave`
--
ALTER TABLE `student_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_leave`
--
ALTER TABLE `teacher_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fee`
--
ALTER TABLE `fee`
  ADD CONSTRAINT `fee_ibfk_1` FOREIGN KEY (`student_rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE;

--
-- Constraints for table `student_leave`
--
ALTER TABLE `student_leave`
  ADD CONSTRAINT `student_leave_ibfk_1` FOREIGN KEY (`student_rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`student_rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_leave`
--
ALTER TABLE `teacher_leave`
  ADD CONSTRAINT `teacher_leave_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`employee_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
