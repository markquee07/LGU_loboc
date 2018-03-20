-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2017 at 11:19 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lgu_loboc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_child`
--

CREATE TABLE `tbl_child` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `suffix_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_child`
--

INSERT INTO `tbl_child` (`id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `employee_id`, `suffix_name`) VALUES
(1, 'complete', 'complete', 'complete', '2017-10-10', 25, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_civilservice`
--

CREATE TABLE `tbl_civilservice` (
  `id` int(10) UNSIGNED NOT NULL,
  `career_service` varchar(100) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `examination_place` varchar(75) NOT NULL,
  `examination_date` date NOT NULL,
  `validity_date` date NOT NULL,
  `license_number` varchar(45) NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_civilservice`
--

INSERT INTO `tbl_civilservice` (`id`, `career_service`, `rating`, `examination_place`, `examination_date`, `validity_date`, `license_number`, `employee_id`) VALUES
(1, 'complete1', 'complete', 'complete', '2014-06-10', '2010-12-09', '21213', 25),
(2, 'asdas', 'asdad', 'asdasd', '2014-07-17', '2017-10-10', '213213', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deductions`
--

CREATE TABLE `tbl_deductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deduction` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_deductions`
--

INSERT INTO `tbl_deductions` (`id`, `deduction`) VALUES
(1, 'GSIS'),
(2, 'PAG-IBIG'),
(3, 'SSS'),
(4, 'EMERGENCY LOAN'),
(5, 'SALARY LOAN'),
(6, 'PHILHEALT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(10) UNSIGNED NOT NULL,
  `department` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `department`) VALUES
(4, 'Mayors Office'),
(5, 'Local Civil Register'),
(6, 'Mun Budget Office'),
(7, 'Mun Vice Mayor'),
(8, 'Mun Treasurer Office'),
(9, 'Mun Social Welfare Development Office'),
(10, 'Mun Engineering Office'),
(11, 'Mun Assessors Office'),
(12, 'Mun Planning Development Council'),
(13, 'Mun Health Office'),
(14, 'Mun Accounting Office'),
(15, 'Mun Agriculture Office'),
(16, 'Water Works'),
(17, 'Solidwaste Managment'),
(18, 'Mun Disaster Risk Reduction Management Office');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtr`
--

CREATE TABLE `tbl_dtr` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `cutt_off` date NOT NULL,
  `status` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dtr`
--

INSERT INTO `tbl_dtr` (`id`, `start_date`, `cutt_off`, `status`) VALUES
(2, '2017-09-26', '2017-10-10', 0),
(3, '2017-10-11', '2017-10-25', 1),
(4, '2017-10-26', '2017-11-09', 0),
(5, '2017-11-10', '2017-11-24', 0),
(6, '2017-11-25', '2017-12-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_educational_background`
--

CREATE TABLE `tbl_educational_background` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(45) NOT NULL,
  `school_name` varchar(45) NOT NULL,
  `basic_education` varchar(45) NOT NULL,
  `year_graduated` varchar(10) NOT NULL,
  `highest_level` varchar(45) NOT NULL,
  `awards` varchar(100) NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_educational_background`
--

INSERT INTO `tbl_educational_background` (`id`, `level`, `school_name`, `basic_education`, `year_graduated`, `highest_level`, `awards`, `employee_id`) VALUES
(22, 'Elementary', 'City East', '', '2010', '', '', 21),
(23, 'Secondary (High School)', 'Tabalong NAtional High School', '', '2014', '', '', 21),
(24, 'Elementary', 'Bohol Northeastern Education Foundation', '', '2010', '', 'Salutatorian', 23),
(25, 'Secondary (High School)', 'Inabanga High School', '', '2014', '', 'First Honorable Mention', 23),
(26, 'Elementary', 'complete', 'complete', '2013', '', 'asdsadsad', 25),
(27, 'Secondary (High School)', 'ssss', 'ssss', '2323', '', 'sssss', 25),
(28, 'Elementary', 'lnes', 'va', '2000', '', 'wla', 26),
(29, 'Secondary (High School)', 'cnhs', 'fdhdfs', '2011', '', '', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `address`) VALUES
(1, 'Mark', 'Ombao', 'Reyes', '2017-08-12', 'Tabalong, Dauis, Bohol'),
(2, 'Marianne', 'Mayang', 'Bautista', '2017-08-12', 'Inabanga, Bohol'),
(3, 'Jullie', 'AchuAchu', 'Panoga', '2017-08-12', 'Candijay, Bohol'),
(4, 'John', 'Mac', 'Doe', '2017-08-12', 'USA'),
(5, 'Ben', 'Lol', 'Lloyd', '2017-08-12', 'Canada'),
(6, 'James', 'King', 'Lebron', '2017-08-12', 'Claveland'),
(7, 'Kyri', 'Drew', 'Irving', '2017-08-12', 'Claveland'),
(8, 'Joshua', 'Reyes', 'Balajadia', '2017-08-12', 'Sta. maria, Manila '),
(9, 'Nicole', 'Reyes', 'Diamante', '2017-08-12', 'Sta. maria, Manila '),
(10, 'Arron', 'Reyes', 'Diamante', '2017-08-12', 'Sta. maria, Manila '),
(11, 'Bruce', 'Lee', 'Lee', '2017-08-12', 'China'),
(12, 'Jacky', 'Chan', 'Chan', '2017-08-12', 'China'),
(13, 'Lee', 'Min', 'Ho', '2017-08-12', 'Korea'),
(14, 'Jane', 'Doe', 'Doe', '2017-08-12', 'USA'),
(15, 'Michael', 'Mors', 'Mouros', '2017-08-12', 'Manila'),
(16, 'Jake', 'Sandro', 'Perez', '2017-08-12', 'Davao'),
(17, 'Rodrigo', 'Digong', 'Duterte', '2017-08-12', 'Davao'),
(18, 'Jacky', 'Loe', 'Santos', '2017-08-12', 'Manila'),
(19, 'Kyle', 'Perez', 'Delgado', '2017-08-12', 'Cebu'),
(20, 'Adrian', 'Aron', 'Fritz', '2017-08-12', 'Bohol');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_deduction`
--

CREATE TABLE `tbl_employee_deduction` (
  `work_information_id` int(10) UNSIGNED NOT NULL,
  `deduction_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(45) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee_deduction`
--

INSERT INTO `tbl_employee_deduction` (`work_information_id`, `deduction_id`, `amount`, `id`, `is_active`) VALUES
(10, 1, '100', 3, 1),
(13, 1, '100', 4, 1),
(14, 1, '100', 5, 1),
(14, 2, '300', 6, 1),
(14, 6, '600', 7, 1),
(15, 1, '100', 8, 1),
(15, 2, '100', 9, 1),
(15, 3, '100', 10, 1),
(15, 4, '100', 11, 1),
(15, 5, '100', 12, 1),
(15, 6, '100', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_dtr`
--

CREATE TABLE `tbl_employee_dtr` (
  `id` int(10) UNSIGNED NOT NULL,
  `dtr_date` date NOT NULL,
  `dtr_time` time NOT NULL,
  `Period` varchar(10) NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee_dtr`
--

INSERT INTO `tbl_employee_dtr` (`id`, `dtr_date`, `dtr_time`, `Period`, `emp_id`) VALUES
(21, '2017-09-28', '08:16:03', 'AM IN', 20),
(22, '2017-09-28', '09:18:03', 'AM OUT', 20),
(23, '2017-10-06', '08:00:00', 'AM IN', 20),
(24, '2017-10-06', '12:10:20', 'AM OUT', 20),
(25, '2017-10-06', '13:10:00', 'PM IN', 20),
(26, '2017-10-06', '17:05:00', 'PM OUT', 20),
(27, '2017-10-06', '17:30:00', 'OT IN', 20),
(28, '2017-10-06', '19:30:00', 'OT OUT', 20),
(29, '2017-10-06', '07:34:29', 'AM IN', 21),
(30, '2017-10-06', '12:05:10', 'AM OUT', 21),
(31, '2017-10-06', '12:49:00', 'PM IN', 21),
(32, '2017-10-06', '17:02:54', 'PM OUT', 21),
(33, '2017-10-06', '17:30:25', 'OT IN', 21),
(34, '2017-10-06', '19:20:30', 'OT OUT', 21),
(36, '2017-09-26', '08:16:03', 'AM IN', 21),
(37, '2017-09-26', '12:05:23', 'AM OUT', 21),
(38, '2017-09-26', '13:02:00', 'PM IN', 21),
(39, '2017-09-26', '17:09:00', 'PM OUT', 21),
(40, '2017-09-27', '07:16:03', 'AM IN', 21),
(41, '2017-09-27', '12:15:23', 'AM OUT', 21),
(42, '2017-09-27', '12:32:00', 'PM IN', 21),
(43, '2017-09-27', '19:17:00', 'PM OUT', 21),
(44, '2017-09-28', '07:30:03', 'AM IN', 21),
(45, '2017-09-28', '12:30:03', 'AM OUT', 21),
(46, '2017-09-28', '13:01:12', 'PM IN', 21),
(47, '2017-09-28', '17:00:05', 'PM OUT', 21),
(48, '2017-09-29', '07:58:00', 'AM IN', 21),
(49, '2017-09-29', '12:02:00', 'AM OUT', 21),
(50, '2017-09-29', '13:05:00', 'PM IN', 21),
(51, '2017-09-29', '17:05:00', 'PM OUT', 21),
(52, '2017-09-29', '17:15:00', 'OT IN', 21),
(53, '2017-09-29', '19:15:00', 'OT OUT', 21),
(54, '2017-10-02', '07:58:00', 'AM IN', 21),
(55, '2017-10-02', '12:02:00', 'AM OUT', 21),
(56, '2017-10-02', '12:59:00', 'PM IN', 21),
(57, '2017-10-02', '17:02:00', 'PM OUT', 21),
(58, '2017-10-03', '07:48:00', 'AM IN', 21),
(59, '2017-10-03', '12:02:00', 'AM OUT', 21),
(60, '2017-10-03', '13:22:00', 'PM IN', 21),
(61, '2017-10-03', '17:12:00', 'PM OUT', 21),
(62, '2017-10-04', '07:58:00', 'AM IN', 21),
(63, '2017-10-04', '12:58:00', 'AM OUT', 21),
(64, '2017-10-04', '12:59:00', 'PM IN', 21),
(65, '2017-10-04', '17:59:00', 'PM OUT', 21),
(66, '2017-10-04', '18:00:00', 'OT IN', 21),
(67, '2017-10-04', '19:00:00', 'OT OUT', 21),
(68, '2017-10-05', '07:58:00', 'AM IN', 21),
(69, '2017-10-05', '12:58:00', 'AM OUT', 21),
(70, '2017-10-05', '12:59:00', 'PM IN', 21),
(71, '2017-10-05', '17:05:00', 'PM OUT', 21),
(72, '2017-10-09', '07:58:00', 'AM IN', 21),
(73, '2017-10-09', '12:58:00', 'AM OUT', 21),
(74, '2017-10-09', '12:59:00', 'PM IN', 21),
(75, '2017-10-09', '17:05:00', 'PM OUT', 21),
(76, '2017-10-10', '07:48:00', 'AM IN', 21),
(77, '2017-10-10', '12:59:00', 'AM OUT', 21),
(78, '2017-10-10', '12:59:05', 'PM IN', 21),
(79, '2017-10-10', '19:05:00', 'PM OUT', 21),
(80, '2017-10-10', '22:36:43', 'OT IN', 21),
(81, '2017-10-11', '08:58:05', 'AM IN', 21),
(82, '2017-10-11', '10:06:54', 'AM OUT', 21),
(83, '2017-10-11', '12:46:55', 'AM OUT', 21),
(84, '2017-10-11', '20:12:43', 'OT IN', 21),
(85, '2017-10-11', '20:12:46', 'OT IN', 21),
(86, '2017-10-12', '05:12:08', 'AM IN', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_information`
--

CREATE TABLE `tbl_employee_information` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `extension_name` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(45) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `civil_status` varchar(45) NOT NULL,
  `citizenship` varchar(45) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `blood_tyoe` varchar(5) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gsis_id` varchar(45) NOT NULL,
  `pagibig_id` varchar(45) NOT NULL,
  `philhealth_no` varchar(45) NOT NULL,
  `sss_no` varchar(45) NOT NULL,
  `tin_no` varchar(45) NOT NULL,
  `agency_no` varchar(45) NOT NULL,
  `residential_house_no` varchar(45) NOT NULL,
  `residential_street` varchar(45) NOT NULL,
  `residential_subdivision` varchar(45) NOT NULL,
  `residential_barangay` varchar(45) NOT NULL,
  `residential_city` varchar(45) NOT NULL,
  `residential_province` varchar(45) NOT NULL,
  `residential_zipcode` varchar(45) NOT NULL,
  `permanent_house_no` varchar(45) NOT NULL,
  `permanent_street` varchar(45) NOT NULL,
  `permanent_subdivision` varchar(45) NOT NULL,
  `permanent_barangay` varchar(45) NOT NULL,
  `permanent_city` varchar(45) NOT NULL,
  `permanent_province` varchar(45) NOT NULL,
  `permanent_zipcode` varchar(45) NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `image` varchar(50) NOT NULL,
  `contact_person` varchar(45) NOT NULL,
  `contact_address` varchar(100) NOT NULL,
  `contact_telephone` varchar(45) NOT NULL,
  `contact_mobile` varchar(45) NOT NULL,
  `contact_relationship` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee_information`
--

INSERT INTO `tbl_employee_information` (`id`, `first_name`, `middle_name`, `last_name`, `extension_name`, `date_of_birth`, `place_of_birth`, `gender`, `civil_status`, `citizenship`, `height`, `weight`, `blood_tyoe`, `telephone`, `mobile`, `email`, `gsis_id`, `pagibig_id`, `philhealth_no`, `sss_no`, `tin_no`, `agency_no`, `residential_house_no`, `residential_street`, `residential_subdivision`, `residential_barangay`, `residential_city`, `residential_province`, `residential_zipcode`, `permanent_house_no`, `permanent_street`, `permanent_subdivision`, `permanent_barangay`, `permanent_city`, `permanent_province`, `permanent_zipcode`, `status`, `image`, `contact_person`, `contact_address`, `contact_telephone`, `contact_mobile`, `contact_relationship`) VALUES
(21, 'Mark Brian', 'Ombao', 'Reyes', '', '1997-01-13', 'Cebu City', 'Male', 'Single/Never Married', 'Filipino by Birth', '5', '70', 'O+', '(038) 512-9187', '09358941740', 'marqueeofficial@gmail.com', '', '', '  -         -', '  -       - -', '   -   -   -', '122', '101', 'Cansumanay', '', 'Tabalong', 'Dauis', 'Bohol', '6339', '101', 'Cansumanay', '', 'Tabalong', 'Dauis', 'Bohol', '6339', 1, 'default2.jpg', 'jessie', 'tabalong,dauis,bohol', '(   )    -', '0912345551', 'father'),
(22, 'Val', '', 'bualat', '', '1996-08-07', '', 'Male', 'Single/Never Married', 'Filipino by Birth', '1.6', '46', '', '(   )    -', '09169900187', 'jakeopz07@gmail.com', '', '', '  -         -', '  -       - -', '   -   -   -', '', '', '', '', 'tabalong', 'dauis', 'bohol', '6339', '', '', '', 'tabalong', 'dauis', 'bohol', '6339', 1, 'default2.jpg', 'jona mae ', 'tabalong dauis bohol', '(   )    -', '09269651410', 'mother'),
(23, 'Marianne Joy', 'Petalcorin', 'Bautista', '', '1997-09-28', 'Tagbilaran City', 'Female', 'Single/Never Married', 'Filipino by Birth', '3', '40', 'A+', '(038) 512-9187', '09358941740', 'mariannejoybautista@gmail.com', '', '', '  -         -', '  -       - -', '123-123-123-131', '', '', 'Motorline', '', 'Lapacan Sur', 'Inabanga', 'Bohol', '6322', '', 'Motorline', '', 'Lapacan Sur', 'Inabanga', 'Bohol', '6322', 1, 'Marianne JoyBautista1997-09-28.jpg', 'Mariana Enriquez', 'Lapacan Norte, Inabanga, Bohol', '(   )    -', '09352665432', 'Mother'),
(24, 'Val', 'edit', 'bualat', '', '1996-08-07', '', 'Male', 'Cohabiting/Live In', 'Filipino by Birth', '1.6', '46', '', '(   )    -', '09169900187', 'jakeopz07@gmail.com', '', '', '  -         -', '  -       - -', '123-123-123-123', '', '', '', '', 'tabalong', 'dauis', 'bohol', '6339', '', '', '', 'tabalong', 'dauis', 'bohol', '6339', 1, 'valbualat1996-08-07.jpg', 'jona mae ', 'tabalong dauis bohol', '(   )    -', '09269651410', 'mother'),
(25, 'complete2', 'complete2', 'complete2', 'complete', '1997-06-11', 'complete', 'Male', 'Single/Never Married', 'Filipino by Birth', '5.6', '123', 'A+', '(   )    -', '09231231232', 'complete@gmail.com', '22222222222', '', '  -         -', '  -       - -', '123-456-789-234', '', '', '', '', 'tabalong', 'dauis ', 'bohol', '6339', '', '', '', 'tabalong', 'dauis', 'bohol', '6339', 0, 'complete2complete21997-06-11.jpg', 'complete_contact', 'complete_address', '(   )    -', '09231231231', 'complete'),
(26, 'Julie', 'Marfe', 'Fuertes', '', '1992-08-11', 'Loboc', 'Female', 'Married', 'Filipino by Birth', '160', '54', 'O-', '(   )    -', '12345676890', 'bualatval@yahoo.com', '', '', '  -         -', '  -       - -', '132-562-742-000', '', '', '', '', 'candasag', 'loboc', 'bohol', '6316', '', '', '', 'candasag', 'loboc', 'bohol', '6316', 1, 'JulieFuertes1992-08-11.jpg', 'Val Bualat', 'candasag loboc bohol', '(   )    -', '09090909090', 'ambot lang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_negligence`
--

CREATE TABLE `tbl_employee_negligence` (
  `id` int(10) UNSIGNED NOT NULL,
  `negligence_date` date NOT NULL,
  `negligence_id` int(10) UNSIGNED NOT NULL,
  `period` varchar(20) NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee_negligence`
--

INSERT INTO `tbl_employee_negligence` (`id`, `negligence_date`, `negligence_id`, `period`, `emp_id`, `status`, `type`, `reason`) VALUES
(58, '2017-09-27', 3, '4', 21, 'approved', '', 'work'),
(59, '2017-09-27', 8, 'PM IN', 21, 'approved', '', 'work'),
(60, '2017-09-26', 8, 'AM IN', 21, 'approved', '', 'work'),
(61, '2017-09-26', 4, 'AM OUT', 21, 'approved', '', 'system debugging'),
(62, '2017-09-28', 3, '1', 21, 'approved', '', 'system debugging'),
(63, '2017-09-29', 3, '3', 21, 'approved', '', 'system debugging'),
(64, '2017-09-29', 8, 'PM IN', 21, 'approved', '', 'work'),
(65, '2017-09-28', 8, 'PM IN', 21, 'approved', '', 'work'),
(66, '2017-10-02', 3, '2', 21, 'approved', '', 'system debugging'),
(67, '2017-10-03', 3, '1', 21, 'approved', '', 'coding'),
(68, '2017-10-03', 8, 'PM IN', 21, 'approved', '', 'work'),
(69, '2017-10-04', 3, '3', 21, 'approved', '', 'system remake'),
(70, '2017-10-05', 3, '2', 21, 'approved', '', 'system remake'),
(71, '2017-10-06', 3, '4', 21, 'approved', '', 'system remake'),
(72, '2017-10-09', 3, '2', 21, 'approved', '', 'coding'),
(73, '2017-10-10', 3, '4', 21, 'approved', '', 'coding'),
(74, '2017-10-11', 8, 'AM IN', 21, 'approved', 'negligence', 'work'),
(75, '2017-10-11', 4, 'AM OUT', 21, 'approved', 'negligence', 'i need to go home'),
(80, '2017-10-12', 3, '2', 21, 'pending', 'request', 'work'),
(81, '2017-10-12', 4, 'AM OUT', 21, 'pending', 'negligence', 'i need to sleep'),
(82, '2017-10-12', 1, 'WHOLE DAY', 21, 'pending', 'request', 'i need to sleep'),
(83, '2017-10-13', 1, 'WHOLE DAY', 21, 'pending', 'request', 'i need to sleep');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_type`
--

CREATE TABLE `tbl_employee_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee_type`
--

INSERT INTO `tbl_employee_type` (`id`, `employee_type`) VALUES
(1, 'Regular'),
(2, 'Temporary'),
(3, 'Co-Terminal or Terminous'),
(4, 'Plantilla'),
(5, 'Contact of Service or Job Order');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_father`
--

CREATE TABLE `tbl_father` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `extension_name` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_father`
--

INSERT INTO `tbl_father` (`id`, `first_name`, `middle_name`, `last_name`, `extension_name`, `occupation`, `employee_id`) VALUES
(14, 'Jessie ', 'De Guzman', 'Reyes', '', 'Gold Smith', 21),
(15, '', '', '', '', '', 22),
(16, '', '', '', '', '', 23),
(17, 'asd', 'asd', 'asd', '', 'asd', 24),
(18, 'complete', 'complete', 'complete', '', 'complete', 25),
(19, '', '', '', '', '', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `dates` date NOT NULL,
  `description` varchar(45) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `dates`, `description`, `remarks`, `type`) VALUES
(1, '2017-11-01', 'All Saints Day', 'No work', 'Legal Holiday'),
(2, '2017-12-25', 'Christmas Day', 'No work', 'Legal Holiday'),
(3, '2017-12-30', 'Rizal Day', 'Double Pay', 'Legal Holiday'),
(4, '2017-05-03', 'Labor Day', 'Double Pay', 'Legal Holiday'),
(5, '2017-11-30', 'Bonifacio Day', 'No work', 'Legal Holiday'),
(7, '2018-01-17', 'sample special', 'awaw', 'Special Holiday'),
(8, '2017-10-19', 'ssd', 'fddfdf', 'Legal Holiday'),
(11, '2017-09-25', 'asdads', 'asdasdasd', 'Special Holiday'),
(13, '2017-12-24', 'Christmas Eve', 'Celebration', 'Special Holiday');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inclusive_dates`
--

CREATE TABLE `tbl_inclusive_dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `affected_dates` date NOT NULL,
  `dtr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mother`
--

CREATE TABLE `tbl_mother` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `extension_name` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mother`
--

INSERT INTO `tbl_mother` (`id`, `first_name`, `middle_name`, `last_name`, `extension_name`, `occupation`, `employee_id`) VALUES
(12, 'Mary Ann', 'Ombao', 'Reyes', '', 'Housewife', 21),
(13, '', '', '', '', '', 22),
(14, 'Mariana', 'Bautista', 'Enriquez', '', 'Housewife', 23),
(15, '', '', '', '', '', 24),
(16, 'complete', 'complete', 'complete', '', 'complete', 25),
(17, '', '', '', '', '', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_negligences`
--

CREATE TABLE `tbl_negligences` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_negligences`
--

INSERT INTO `tbl_negligences` (`id`, `type`) VALUES
(1, 'Field Work'),
(2, 'Absent Without Leave (AWOL)'),
(3, 'Overtime'),
(4, 'Undertime'),
(5, 'Sick Leave'),
(6, 'Maternity Leave'),
(7, 'Vacation Leave'),
(8, 'Late'),
(9, 'Failure to Timein/Timeout'),
(10, 'Special Assignment');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_positions`
--

CREATE TABLE `tbl_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `position_title` varchar(45) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_positions`
--

INSERT INTO `tbl_positions` (`id`, `position_title`, `department_id`) VALUES
(10, 'Administrative Aide I (Utility Worker I)', 4),
(11, 'Administrative Aide III (Driver I)', 4),
(12, 'Administrative Aide', 4),
(13, 'Clerk III', 4),
(14, 'HRMA II', 4),
(15, 'Private Secretary', 4),
(16, 'Municipal Mayor', 4),
(17, 'Section Head', 4),
(18, 'Section Head', 5),
(19, 'Section Head', 6),
(20, 'Section Head', 7),
(21, 'Section Head', 8),
(22, 'Section Head', 9),
(23, 'Section Head', 10),
(24, 'Section Head', 11),
(25, 'Section Head', 12),
(26, 'Section Head', 13),
(27, 'Section Head', 14),
(28, 'Section Head', 15),
(29, 'Section Head', 16),
(30, 'Section Head', 17),
(31, 'Section Head', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spouse`
--

CREATE TABLE `tbl_spouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `name_extension` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `business_name` varchar(45) NOT NULL,
  `business_address` varchar(45) NOT NULL,
  `phone_num` varchar(45) NOT NULL,
  `mobile_num` varchar(45) NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_spouse`
--

INSERT INTO `tbl_spouse` (`id`, `firstname`, `lastname`, `middlename`, `name_extension`, `occupation`, `business_name`, `business_address`, `phone_num`, `mobile_num`, `employee_id`) VALUES
(1, 'val', 'val', '', '', 'tambay', '', '', '(   )    -', '09090909090', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_useraccount`
--

CREATE TABLE `tbl_useraccount` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `decrypted` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_useraccount`
--

INSERT INTO `tbl_useraccount` (`id`, `username`, `password`, `email`, `user_type`, `emp_id`, `decrypted`) VALUES
(6, 'admin', '322afa0f71b9e9d9641d37e67e4611f9', 'markqueeofficial@gmail.com', 'IT Personnel', 21, 'Admin07'),
(7, 'val', '6230563830934b7b1ff844bd7561376b', 'jakeopz07@gmail.com', 'Employee', 22, 'Val1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_validate_user`
--

CREATE TABLE `tbl_validate_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `validation_code` varchar(45) NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `has_account` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_validate_user`
--

INSERT INTO `tbl_validate_user` (`id`, `validation_code`, `emp_id`, `has_account`) VALUES
(14, 'B3GSKNI6', 21, 1),
(15, 'LNFK1TOV', 22, 1),
(16, 'RVF17I9U', 22, 1),
(17, 'XVI4M64A', 23, 0),
(18, 'JXWD9BLL', 23, 0),
(19, 'Q2DK1JD2', 24, 0),
(20, 'GELCQBHG', 25, 0),
(21, 'M8CKFQNJ', 25, 0),
(22, '6552W643', 26, 0),
(23, '5TGZG7P6', 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work_experience`
--

CREATE TABLE `tbl_work_experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(45) NOT NULL,
  `department_office` varchar(45) NOT NULL,
  `date_started` date NOT NULL,
  `date_ended` date NOT NULL,
  `monthly_salary` double NOT NULL,
  `job_paygrade` varchar(45) NOT NULL,
  `status_of_appointment` varchar(45) NOT NULL,
  `government_service` varchar(5) NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_work_experience`
--

INSERT INTO `tbl_work_experience` (`id`, `position`, `department_office`, `date_started`, `date_ended`, `monthly_salary`, `job_paygrade`, `status_of_appointment`, `government_service`, `employee_id`) VALUES
(12, 'programmer', 'iT', '2014-06-10', '2013-06-04', 3000, '', 'regular', 'NO', 22),
(13, 'case encoder', 'any', '2014-06-03', '2017-10-07', 2322, '', 'asdas', 'YES', 22),
(14, 'programmer', 'iT', '0000-00-00', '0000-00-00', 3000, '', 'regular', 'NO', 24),
(15, 'case encoder', 'any', '0000-00-00', '0000-00-00', 2322, '', 'asdas', 'YES', 24),
(16, 'asd', 'asdasd', '2017-03-02', '2017-06-20', 232323, '22', 'asdsa', 'NO', 25),
(17, 'spspspsp', 'spspspsp', '2014-06-10', '2017-10-10', 23213, '200', 'asdsad', 'YES', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work_information`
--

CREATE TABLE `tbl_work_information` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_type_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `rate` double NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `allowance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_work_information`
--

INSERT INTO `tbl_work_information` (`id`, `employee_type_id`, `department_id`, `position_id`, `rate`, `employee_id`, `allowance`) VALUES
(10, 4, 4, 10, 300, 21, 0),
(12, 2, 4, 10, 280, 22, 0),
(13, 2, 4, 12, 3000, 23, 0),
(14, 2, 4, 11, 2999, 25, 0),
(15, 1, 4, 12, 200, 26, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_child`
--
ALTER TABLE `tbl_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_child_1` (`employee_id`);

--
-- Indexes for table `tbl_civilservice`
--
ALTER TABLE `tbl_civilservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_civilservice_1` (`employee_id`);

--
-- Indexes for table `tbl_deductions`
--
ALTER TABLE `tbl_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dtr`
--
ALTER TABLE `tbl_dtr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_educational_background`
--
ALTER TABLE `tbl_educational_background`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_educational_background_1` (`employee_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee_deduction`
--
ALTER TABLE `tbl_employee_deduction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_employee_deduction_1` (`work_information_id`),
  ADD KEY `FK_tbl_employee_deduction_2` (`deduction_id`);

--
-- Indexes for table `tbl_employee_dtr`
--
ALTER TABLE `tbl_employee_dtr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_employee_dtr_1` (`dtr_date`) USING BTREE;

--
-- Indexes for table `tbl_employee_information`
--
ALTER TABLE `tbl_employee_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee_negligence`
--
ALTER TABLE `tbl_employee_negligence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_employee_negligence_1` (`negligence_id`),
  ADD KEY `FK_tbl_employee_negligence_2` (`emp_id`);

--
-- Indexes for table `tbl_employee_type`
--
ALTER TABLE `tbl_employee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_father`
--
ALTER TABLE `tbl_father`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_father_1` (`employee_id`);

--
-- Indexes for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inclusive_dates`
--
ALTER TABLE `tbl_inclusive_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_inclusive_dates_1` (`dtr_id`);

--
-- Indexes for table `tbl_mother`
--
ALTER TABLE `tbl_mother`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_mother_1` (`employee_id`);

--
-- Indexes for table `tbl_negligences`
--
ALTER TABLE `tbl_negligences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_positions_1` (`department_id`);

--
-- Indexes for table `tbl_spouse`
--
ALTER TABLE `tbl_spouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_spouse_1` (`employee_id`);

--
-- Indexes for table `tbl_useraccount`
--
ALTER TABLE `tbl_useraccount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_useraccount_1` (`emp_id`);

--
-- Indexes for table `tbl_validate_user`
--
ALTER TABLE `tbl_validate_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_validate_user_1` (`emp_id`);

--
-- Indexes for table `tbl_work_experience`
--
ALTER TABLE `tbl_work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_work_experience_1` (`employee_id`);

--
-- Indexes for table `tbl_work_information`
--
ALTER TABLE `tbl_work_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_work_information_2` (`department_id`),
  ADD KEY `FK_tbl_work_information_3` (`position_id`),
  ADD KEY `FK_tbl_work_information_4` (`employee_id`),
  ADD KEY `FK_tbl_work_information_1` (`employee_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_child`
--
ALTER TABLE `tbl_child`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_civilservice`
--
ALTER TABLE `tbl_civilservice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_deductions`
--
ALTER TABLE `tbl_deductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_dtr`
--
ALTER TABLE `tbl_dtr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_educational_background`
--
ALTER TABLE `tbl_educational_background`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_employee_deduction`
--
ALTER TABLE `tbl_employee_deduction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_employee_dtr`
--
ALTER TABLE `tbl_employee_dtr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_employee_information`
--
ALTER TABLE `tbl_employee_information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_employee_negligence`
--
ALTER TABLE `tbl_employee_negligence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_employee_type`
--
ALTER TABLE `tbl_employee_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_father`
--
ALTER TABLE `tbl_father`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_inclusive_dates`
--
ALTER TABLE `tbl_inclusive_dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_mother`
--
ALTER TABLE `tbl_mother`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_negligences`
--
ALTER TABLE `tbl_negligences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_spouse`
--
ALTER TABLE `tbl_spouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_useraccount`
--
ALTER TABLE `tbl_useraccount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_validate_user`
--
ALTER TABLE `tbl_validate_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_work_experience`
--
ALTER TABLE `tbl_work_experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_work_information`
--
ALTER TABLE `tbl_work_information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_child`
--
ALTER TABLE `tbl_child`
  ADD CONSTRAINT `FK_tbl_child_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_civilservice`
--
ALTER TABLE `tbl_civilservice`
  ADD CONSTRAINT `FK_tbl_civilservice_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_educational_background`
--
ALTER TABLE `tbl_educational_background`
  ADD CONSTRAINT `FK_tbl_educational_background_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_employee_deduction`
--
ALTER TABLE `tbl_employee_deduction`
  ADD CONSTRAINT `FK_tbl_employee_deduction_1` FOREIGN KEY (`work_information_id`) REFERENCES `tbl_work_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tbl_employee_deduction_2` FOREIGN KEY (`deduction_id`) REFERENCES `tbl_deductions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_employee_negligence`
--
ALTER TABLE `tbl_employee_negligence`
  ADD CONSTRAINT `FK_tbl_employee_negligence_1` FOREIGN KEY (`negligence_id`) REFERENCES `tbl_negligences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tbl_employee_negligence_2` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_father`
--
ALTER TABLE `tbl_father`
  ADD CONSTRAINT `FK_tbl_father_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_inclusive_dates`
--
ALTER TABLE `tbl_inclusive_dates`
  ADD CONSTRAINT `FK_tbl_inclusive_dates_1` FOREIGN KEY (`dtr_id`) REFERENCES `tbl_dtr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_mother`
--
ALTER TABLE `tbl_mother`
  ADD CONSTRAINT `FK_tbl_mother_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  ADD CONSTRAINT `FK_tbl_positions_1` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_spouse`
--
ALTER TABLE `tbl_spouse`
  ADD CONSTRAINT `FK_tbl_spouse_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_useraccount`
--
ALTER TABLE `tbl_useraccount`
  ADD CONSTRAINT `FK_tbl_useraccount_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_validate_user`
--
ALTER TABLE `tbl_validate_user`
  ADD CONSTRAINT `FK_tbl_validate_user_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_work_experience`
--
ALTER TABLE `tbl_work_experience`
  ADD CONSTRAINT `FK_tbl_work_experience_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_work_information`
--
ALTER TABLE `tbl_work_information`
  ADD CONSTRAINT `FK_tbl_work_information_1` FOREIGN KEY (`employee_type_id`) REFERENCES `tbl_employee_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tbl_work_information_2` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tbl_work_information_3` FOREIGN KEY (`position_id`) REFERENCES `tbl_positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tbl_work_information_4` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
