-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2023 pada 13.25
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `course`
--

INSERT INTO `course` (`id`, `course`, `description`, `degree`) VALUES
(1, 'BSCS', 'Computer Science', 'Bachelor Of Science In Computer Science'),
(2, 'BCS', 'Computer Engineering ', 'Bachelor Of Science In Computer Engineering'),
(4, 'BCSB', 'Computer Engineering ', 'Bachelor Of Science In Computer Engineering'),
(7, 'Matematika', 'Computer Management', 'Bachelor Of Science In Math');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `studentNum` int(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `birth` date DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`id`, `studentNum`, `year`, `course`, `firstName`, `lastName`, `gender`, `birth`, `status`, `image`, `date`) VALUES
(9, 20220001, 'First Year', 'BSCS', 'relfi', 'aqriza', 'Male', '2023-05-24', 'Enrolled', 'C:\\\\Users\\\\Relfi Aqriza\\\\Downloads\\\\LEGO_logo.svg.png', '2023-05-25'),
(10, 20220002, 'First Year', 'BCSB', 'student', 'management', 'Male', '2023-05-29', 'Enrolled', 'C:\\\\Users\\\\Relfi Aqriza\\\\Downloads\\\\download.jpg', '2023-05-25'),
(11, 20220003, 'Second Year', 'BCSB', 'gudang ', 'garam', 'Female', '2023-05-16', 'Enrolled', 'C:\\\\Users\\\\Relfi Aqriza\\\\Downloads\\\\LEGO_logo.svg.png', '2023-05-25'),
(13, 20220005, 'First Year', 'BCS', 'Second', 'Brand', 'Others', '2020-01-23', 'Not Enrolled', 'C:\\Users\\Relfi Aqriza\\OneDrive\\Dokumen\\NetBeansProjects\\studentmanagementsystem\\src\\image\\LEGO_logo.svg.png', '2022-04-19'),
(14, 20220006, 'Second Year', 'BCS', 'Universitas', 'Mercubuana', 'Male', '2023-06-13', 'Enrolled', 'C:\\\\Users\\\\Relfi Aqriza\\\\Downloads\\\\LEGO_logo.svg.png', '2023-06-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `studentNum` int(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `first_sem` double NOT NULL,
  `second_sem` double NOT NULL,
  `final` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student_grade`
--

INSERT INTO `student_grade` (`id`, `studentNum`, `year`, `course`, `first_sem`, `second_sem`, `final`) VALUES
(4, 20220001, 'First Year', 'BSCS', 1, 1, 1.5),
(5, 20220002, 'First Year', 'BCSB', 2, 2.5, 3.25),
(6, 20220003, 'Second Year', 'BCSB', 0, 0, 0),
(7, 20220006, 'Second Year', 'BCS', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
