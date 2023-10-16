-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 11:05 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_api_pemweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontak_person`
--

CREATE TABLE `kontak_person` (
  `nama_lengkapp` text NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nomor_seluler` varchar(255) NOT NULL,
  `jam_operasional` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak_person`
--

INSERT INTO `kontak_person` (`nama_lengkapp`, `nim`, `nomor_seluler`, `jam_operasional`) VALUES
('Muhammad Iqbal Fattah', '2021071002', '+62876446312', '8.00 - 17.00 WIB');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `nama_layanan` varchar(255) NOT NULL,
  `deskripsi_layanan` longtext NOT NULL,
  `gambar_layanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`nama_layanan`, `deskripsi_layanan`, `gambar_layanan`) VALUES
('Website Design', 'Kami adalah studio desain kreatif yang mendedikasikan diri untuk menciptakan pengalaman visual yang luar biasa. Dengan sentuhan seni dan inovasi, kami mengubah ide dan konsep menjadi desain yang memukau. Setiap proyek yang kami tangani adalah sebuah perjalanan kreatif yang unik, di mana kami bekerja sama dengan klien untuk menghasilkan hasil yang melebihi harapan. Kami mencintai seni desain dalam segala bentuknya, dari desain grafis hingga desain interior, dan kami berkomitmen untuk menciptakan karya yang memukau mata dan merangsang imajinasi.', 'property/frontend-property.jpg'),
('Front-end Website', 'Kami adalah tim front-end yang bersemangat dalam menciptakan pengalaman web yang menarik dan responsif. Dengan fokus pada desain tampilan dan interaktivitas, kami berusaha menghadirkan tampilan yang memikat dan mudah digunakan bagi pengguna. Setiap proyek yang kami kerjakan adalah peluang untuk menggabungkan desain kreatif dan teknologi terbaru. Kami percaya bahwa antarmuka yang baik dapat menghadirkan pengalaman pengguna yang luar biasa dan memperkuat citra merek Anda.', 'property/imple-property.jpg'),
('Back-end Website', 'Kami adalah tim back-end yang berdedikasi untuk merancang dan mengelola infrastruktur teknis yang mendukung situs web dan aplikasi Anda. Kami memahami bahwa meskipun antarmuka pengguna yang menarik sangat penting, performa, keamanan, dan stabilitas di balik layar juga sama pentingnya. Kami berkomitmen untuk menciptakan solusi back-end yang andal dan efisien untuk memastikan bahwa situs web atau aplikasi Anda berjalan dengan baik dan dapat tumbuh seiring waktu.', 'property/backend-property.jpg'),
('Databases and PHP', 'Kami adalah tim yang berpengalaman dalam mengelola basis data dan mengembangkan aplikasi menggunakan PHP. Kami memahami bahwa data adalah aset berharga bagi setiap organisasi, dan kami berkomitmen untuk membantu Anda memanfaatkannya secara maksimal. Dengan keahlian dalam desain basis data, pemrograman PHP, dan integrasi sistem, kami membantu menghubungkan data Anda dengan solusi yang membantu Anda mengambil keputusan yang lebih baik.', 'property/database-property.jpg'),
('HTML, CSS, AND JAVASCRIPT\r\n', 'Kami adalah tim yang bersemangat dalam mengembangkan situs web dan aplikasi dengan menggunakan HTML, CSS, dan JavaScript. Kami memahami bahwa teknologi web adalah salah satu alat paling kuat untuk berkomunikasi dan berinteraksi dengan dunia, dan kami berkomitmen untuk menghadirkan pengalaman web yang menarik, fungsional, dan responsif.', 'property/anal-property.jpg'),
('BOOTSTRAP', 'Kami adalah tim yang ahli dalam mengimplementasikan Bootstrap, kerangka kerja front-end yang populer, untuk menciptakan desain web yang menarik, responsif, dan profesional. Kami memahami kekuatan Bootstrap dalam mempercepat proses pengembangan dan memastikan konsistensi antarmuka pengguna di berbagai perangkat.', 'property/imple-property.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `nama_lengkap` text NOT NULL,
  `deskripsi_diri` longtext NOT NULL,
  `pengalaman_kerja` longtext NOT NULL,
  `pendidikan_formal` longtext NOT NULL,
  `gambar_profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`nama_lengkap`, `deskripsi_diri`, `pengalaman_kerja`, `pendidikan_formal`, `gambar_profile`) VALUES
('Muhammad Iqbal Fattah', 'Saya adalah seorang mahasiswa yang bersemangat dan berkomitmen di Universitas Pembangunan Jaya (UPJ) dengan jurusan Informatika. Saya memiliki minat yang mendalam dalam dunia teknologi, terutama dalam pengembangan perangkat lunak dan pengelolaan data. Selama perjalanan pendidikan saya di UPJ, saya telah memperoleh pengetahuan dan keterampilan yang kuat dalam pemrograman, analisis data, serta pengembangan aplikasi. Saya selalu berusaha untuk belajar hal-hal baru dan mengikuti perkembangan teknologi terbaru.', 'Saya memiliki pengalaman kerja sebagai asisten penelitian di Laboratorium Teknologi Informasi dan Komunikasi di UPJ, di mana saya terlibat dalam proyek penelitian terkait pengembangan aplikasi web dan analisis data. Selama pekerjaan ini, saya memperoleh pengalaman berharga dalam pemrograman, manajemen proyek, dan analisis data yang telah memperkaya pemahaman saya dalam bidang informatika. Selama perjalanan karier saya, saya juga telah berpartisipasi dalam berbagai kompetisi pemrograman dan hackathon. Saya merasa bahwa pengalaman ini membantu saya untuk menghadapi tantangan teknis, berpikir kreatif, dan bekerja dalam tekanan. Selain itu, pengalaman-pengalaman ini juga memupuk minat saya dalam mengejar pemecahan masalah teknis yang kompleks dan berkontribusi dalam pengembangan solusi yang inovatif.', '\r\nSaya memulai pendidikan formal saya di Sekolah Menengah Atas (SMA), di mana saya memilih IPA sebagai fokus studi. Lulus dari SMA pada tahun 2021, saya telah mengembangkan minat dalam ilmu komputer dan teknologi. Itulah mengapa saya memutuskan untuk melanjutkan pendidikan ke tingkat universitas dan memilih jurusan Informatika di Universitas Pembangunan Jaya (UPJ). Sejak tahun 2021, saya telah berkomitmen untuk memahami lebih dalam dunia pemrograman, pengembangan perangkat lunak, dan analisis data. Saat ini, saya sedang mengejar gelar sarjana di UPJ dan meraih pencapaian akademik dengan IPK >= 3.30. Pendidikan saya di UPJ memberikan fondasi yang kuat dalam Informatika dan mempersiapkan saya untuk berkarier di dunia teknologi informasi', 'property/profile-property.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tentang_kami`
--

CREATE TABLE `tentang_kami` (
  `deskripsi` longtext NOT NULL,
  `daftar_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tentang_kami`
--

INSERT INTO `tentang_kami` (`deskripsi`, `daftar_gambar`) VALUES
('Kami adalah sebuah tim bersemangat yang berfokus pada pengembangan dan desain situs web. Dengan pengalaman bertahun-tahun dalam industri ini, kami telah berhasil mengerjakan berbagai proyek yang beragam, mulai dari situs web perusahaan hingga toko online yang menarik. Komitmen kami terhadap inovasi dan kualitas telah memandu setiap langkah kami dalam menciptakan solusi web yang unik dan efektif bagi klien kami. Kami percaya bahwa desain yang baik dan pengalaman pengguna yang superior adalah kunci kesuksesan di dunia digital, dan itulah yang selalu kami upayakan dalam setiap proyek yang kami kerjakan. Visi kami adalah menjadi pemimpin dalam industri pengembangan web, memberikan solusi yang kreatif, handal, dan terjangkau kepada klien di seluruh dunia. Kami memiliki tim berbakat yang selalu berupaya untuk menjaga diri mereka tetap terkini dengan tren dan teknologi terbaru, sehingga kami dapat memberikan layanan terbaik kepada klien kami. Kami sangat bersemangat untuk menjalin kemitraan dengan Anda dan membantu mewujudkan visi dan tujuan online Anda.', 'property/study-property.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
