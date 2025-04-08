-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-03-14 14:43:02
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `libsystem`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$1VmOehdw8EfSiTn.wRR2EOmRviX23G6G/8KrbTRkAatc4dRTBLB2q', 'admin', '', '', '2018-05-03');

-- --------------------------------------------------------

--
-- 資料表結構 `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `publish_date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `books`
--

INSERT INTO `books` (`id`, `isbn`, `category_id`, `title`, `author`, `publisher`, `publish_date`, `status`) VALUES
(13, '159420229X', 3, 'Moonwalking with Einstein: The Art and Science of Remembering Everything ', 'Joshua Foer ', 'Penguin Press HC', '2020-05-11', 0),
(14, '1627790365', 3, 'Algorithms to Live By: The Computer Science of Human Decisions', 'Tom Griffiths,  Brian Christian', 'Henry Holt and Co.', '2016-04-19', 0),
(15, '0735611319', 3, 'Code: The Hidden Language of Computer Hardware and Software', 'Charles Petzold', 'Microsoft Press', '2000-11-11', 0),
(16, '0393330435', 3, 'iWoz: Computer Geek to Cult Icon: How I Invented the Personal Computer, Co-Founded Apple, and Had Fun Doing It', 'Steve Wozniak ,  Gina Smith', 'W. W. Norton & Company', '2007-10-17', 0),
(17, '0062316095', 4, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Vintage', '2015-01-01', 0),
(18, '1400031702', 4, 'The Secret History', 'Donna Tartt', 'Vintage', '1992-09-11', 1),
(19, '0553380168', 4, 'A Brief History of Time', 'Stephen Hawking', 'Bantam Books', '1998-09-01', 1),
(20, '076790818X', 4, 'A Short History of Nearly Everything', 'Bill Bryson', 'Crown', '2004-09-14', 0),
(21, '1594205221', 2, 'How Not to Be Wrong: The Power of Mathematical Thinking', 'Jordan Ellenberg', 'Penguin Press', '2014-05-29', 0),
(22, '1846144760', 2, 'Our Mathematical Universe: My Quest for the Ultimate Nature of Reality', 'Max Tegmark', 'Allen Lane', '2014-01-07', 0),
(23, '0786884061', 2, 'The Man Who Loved Only Numbers: The Story of Paul Erd?s and the Search for Mathematical Truth', 'Paul Hoffman', 'Grand Central Publishing', '1998-01-01', 0),
(24, '069111966X', 2, 'How to Solve It: A New Aspect of Mathematical Method', 'G. Pólya ,  John H. Conway  (Foreword)', 'Princeton University Press', '2015-09-25', 0),
(25, '0316575801', 1, 'Revenge of the Tipping Point: Overstories, Superspreaders, and the Rise of Social Engineering', 'Malcolm Gladwell', 'Little, Brown and Company', '2024-10-01', 1),
(26, '0812997808', 1, 'Inner Engineering: A Yogi s Guide to Joy', 'Sadhguru', 'Random House', '2016-09-20', 0),
(27, '0201835959', 1, 'The Mythical Man-Month: Essays on Software Engineering', 'Frederick P. Brooks Jr.', 'Addison-Wesley Professional', '1995-08-02', 0),
(28, '149267009X', 1, 'Hacking Darwin: Genetic Engineering and the Future of Humanity', 'Jamie Metzl', 'Sourcebooks', '2019-04-23', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrow` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `borrow`
--

INSERT INTO `borrow` (`id`, `student_id`, `book_id`, `date_borrow`, `status`) VALUES
(19, 6, 25, '2025-03-14', 0),
(20, 11, 18, '2025-03-14', 0),
(21, 11, 19, '2025-03-14', 0),
(22, 7, 21, '2025-03-14', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Engineering'),
(2, 'Mathematics'),
(3, 'Science and Technology'),
(4, 'History');

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `course`
--

INSERT INTO `course` (`id`, `title`, `code`) VALUES
(1, 'Bachelor of Science in Information Systems', 'BSIS'),
(2, 'Bachelor of Science in Computer Science', 'BSCS'),
(4, 'Software Project Management', 'COMP S351F');

-- --------------------------------------------------------

--
-- 資料表結構 `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_return` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `returns`
--

INSERT INTO `returns` (`id`, `student_id`, `book_id`, `date_return`) VALUES
(5, 7, 21, '2025-03-14');

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `student_id`, `firstname`, `lastname`, `photo`, `course_id`, `created_on`) VALUES
(6, 'UOT473516892', 'Tai Man', 'Chan', '', 4, '2025-03-14'),
(7, 'BUF790426183', 'Chi Ming', 'Wong', '', 4, '2025-03-14'),
(8, 'EGI206483179', 'Ka Yuen', 'Lee', '', 1, '2025-03-14'),
(9, 'CPH569420137', 'Man Lok', 'Ho', '', 2, '2025-03-14'),
(10, 'FOE150726943', 'Sze Wing', 'Cheng', '', 4, '2025-03-14'),
(11, 'ULM197563204', 'Yuk Kei', 'Lam', '', 1, '2025-03-14'),
(12, 'QOP870651234', 'Chun Hei', 'Yip', '', 2, '2025-03-14'),
(13, 'MFH174382906', 'Hoi Yan', 'Ng', '', 4, '2025-03-14'),
(14, 'KYQ489307256', 'Tsz Hin', 'Fong', '', 1, '2025-03-14'),
(15, 'DKE912846057', 'Wai Ling', 'Cheung', '', 2, '2025-03-14');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
