-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 05:40 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esystem_ae`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9oesqgvm7e65lvjor3iumphk5k4eu1in', '127.0.0.1', 1523850016, '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `uploaded_by` int(10) UNSIGNED NOT NULL,
  `uploaded_at` int(10) UNSIGNED NOT NULL,
  `alt` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `uploaded_by`, `uploaded_at`, `alt`, `path`) VALUES
(21, 1, 1523433059, 'satu', 'app/gallery/fe8bfc26a3b1f9b124269130fdc75c54.jpg'),
(22, 1, 1523433123, 'dua', 'app/gallery/0fc4de672f9a923295b736af8d68e282.jpg'),
(23, 1, 1523433147, 'tiga', 'app/gallery/df3573687b787c86c996318c189a800c.jpg'),
(24, 1, 1523433162, 'empat', 'app/gallery/96477783b98e3b59c39c8a1ce93255fe.jpg'),
(25, 1, 1523433877, 'lima', 'app/gallery/84df898dcc0f6b9a64e005596a41dc37.jpg'),
(26, 1, 1523433890, 'enam', 'app/gallery/8a1eef1a32134aaaadc7a8b7a11c7dff.jpg'),
(27, 2, 1523628814, 'hirz', 'app/gallery/42983546c7f33ebfe58c9ad5b20cbd77.jpg'),
(28, 1, 1523691351, 'polman dulu', 'app/gallery/659fcac81d01cdc515c649d71d0e7ad2.jpg'),
(29, 1, 1523691447, 'aaaa', 'app/gallery/542c6be9f60ebd2816127c4c97fcf9b5.gif'),
(30, 2, 1523691671, 'politeknik', 'app/gallery/3728c2b2d70abe0dcfc73c9b26b64d0f.png'),
(31, 2, 1523707305, 'makrab', 'app/gallery/4aa0c94f90c2a1c2b09dd3523b5de6fc.jpg'),
(32, 3, 1523712409, 'kart', 'app/gallery/99f76705aa33d1dc21a9931ce89558f1.jpg'),
(33, 1, 1523712652, 'dia', 'app/gallery/9febcdc4a244881382575daebeec4d46.jpg'),
(34, 1, 1523712665, 'disnat', 'app/gallery/25ffbd825e49f5f7aada4fd11232df2f.jpg'),
(35, 3, 1523713000, 'q', 'app/gallery/5f02cd0d0b0a43a36f1cb4e24680b52d.jpg'),
(36, 3, 1523713012, 'prncs', 'app/gallery/2b20f0381c1847ec00d330361af65499.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'superadmin', 'Super Admin'),
(2, 'admin', 'Tata Usaha'),
(3, 'dosen', 'Dosen'),
(4, 'mahasiswa', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`, `description`) VALUES
(1, 'Mechatronics', ''),
(2, 'Automation', '');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `alias` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `alias`, `name`, `url`, `icon`) VALUES
(1, 'gallery', 'Gallery', 'gallery', 'picture-o'),
(2, 'news', 'News/Event', 'news', 'newspaper-o'),
(3, 'products', 'Products', 'products', 'tags');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL,
  `id_creator` int(11) UNSIGNED NOT NULL,
  `id_updater` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(254) NOT NULL,
  `thumbnail` text,
  `text` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `location` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `id_creator`, `id_updater`, `title`, `thumbnail`, `text`, `type`, `category`, `time`, `location`) VALUES
(2, 1522681276, 1523709862, 2, 2, 'Hilang Dompet', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/8a1eef1a32134aaaadc7a8b7a11c7dff.jpg', '<p style=\"text-align: justify;\">Telah ditemukan dompet tanpa identitas di sekitar Lab Produksi. Diharapkan bagi yang merasa kehilangan untuk menghubungi <strong>Mochammad Aulia (PPI-AEC-2018)</strong>.</p>', 'flashnews', 'lainnya', '14 April, 2018 - 14 April, 2018', ''),
(12, 1523680605, NULL, 1, NULL, 'Beasiswa PPA', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/df3573687b787c86c996318c189a800c.jpg', '<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1/esystem_ae/assets/images/app/gallery/96477783b98e3b59c39c8a1ce93255fe.jpg\" alt=\"\" width=\"294\" height=\"170\" /></p>\r\n<table style=\"border-collapse: collapse; width: 72.1927%; height: 132px; margin-left: auto; margin-right: auto;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 25%; text-align: center;\">TH</td>\r\n<td style=\"width: 25%; text-align: center;\">TH</td>\r\n<td style=\"width: 25%; text-align: center;\">TH</td>\r\n<td style=\"width: 25%; text-align: center;\">TH</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%; text-align: center;\">ini body 1.1</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 2.1</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 3.1</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 4.1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%; text-align: center;\">ini body 1.2</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 2.2</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 3.2</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 4.2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%; text-align: center;\">ini body 1.3</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 2.3</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 3.3</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 4.3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%; text-align: center;\">ini body 1.4</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 2.4</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 3.4</td>\r\n<td style=\"width: 25%; text-align: center;\">ini body 4.4</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: center;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 'event', 'beasiswa', '14 April, 2018 - 26 April, 2018', 'Polman Bandung'),
(14, 1523691513, NULL, 1, NULL, 'Pemerintah Fokus Benahi Politeknik', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/542c6be9f60ebd2816127c4c97fcf9b5.gif', '<p>Sekitar 82 persen siswa lulusan SMK/SMA tercatat sebagai tenaga kerja nasional 2016. Sementara itu, jumlah tenaga kerja lulusan pendidikan tinggi hanya sekitar 17,5 persen dan lulusan sekolah dasar mencapai 60 persen.</p>\r\n<p>Pemetaan serapan tenaga kerja tersebut hampir tak akan berubah setidaknya dalam kurun 5 tahun ke depan.</p>\r\n<p>Menteri Riset, Teknologi dan Pendidikan Tinggi Mohamad Nasir mengatakan, pemerintah terus berusaha untuk mendongkrak serapan angkatan kerja dari lulusan pendidikan tinggi. Dalam kurun 10 tahun ke depan, persentasenya ditargetkan mampu menembus minimal 25 persen.</p>\r\n<p>\"Memang butuh waktu yang panjang dan sekarang pemerintah sudah fokus pada pendidikan tinggi vokasi untuk merealisasikan target tersebut,\" ujar Nasir saat kunjungan kerja ke Politeknik Negeri Cilacap, Kabupaten Cilacap, Jawa Tengah, Selasa, 14 Februari 2017.</p>\r\n<p>Ia menjelaskan, untuk memenuhi target teraebut revitalisasi pendidikan tinggi vokasi menjadi sangat penting, terutama untuk politeknik. Menurut dia, selama ini, pamor politeknik belum sebagus universitas.</p>\r\n<p>Ia mengatakan, masyarakat kerap menyepelekan peran politeknik dalam upaya membantu meningkatkan kualitas pendidikan nasional. \"Selama ini politeknik dianggap perguruan tinggi kelas dua, bukan idaman. Sekarang, pemerintah akan jadikan politeknik yang terbaik di Indonesia,\" ujarnya.</p>\r\n<p>Ia menjelaskan, revitalisasi pendidikan tinggi vokasi di antaranya dilakukan dengan memperbanyak jumlah guru produktif, moratorium izin perguruan tinggi akademik, dan moratorium program studi di luar sains, teknologi, insinyur dan matematika. Menurut dia, lulusan politeknik juga akan dibekali sertifikat kompetensi dari lembaga sertifikasi profesi.</p>', 'general', 'general', '', ''),
(15, 1523691759, NULL, 2, NULL, 'Kenapa memilih pendidikan di Politeknik', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/3728c2b2d70abe0dcfc73c9b26b64d0f.png', '<p><strong>Apa itu pendidikan vokasi di Politeknik?</strong></p>\r\n<p>Pendidikan Vokasi di Politeknik dibentuk untuk mencetak tenaga profesional tingkat menengah di suatu industri atau institusi. Salah satu ciri dari pendidikan vokasi di politeknik adalah porsi pendidikan teori 30% dan praktek 70%. Sementara pendidikan di universitas porsi pendidikan teori 60-70% dan praktek 30-40%.</p>\r\n<p>Dalam mempersiapkan generasi muda untuk menjemput masa depannya, belajar teori atau konsep saja tidak cukup. Mahasiswa, sebagai komponen penting dari generasi muda, perlu memperbanyak jam belajar prakteknya. Di POLITEKNIK, setiap teori atau konsep, harus bisa diwujudkan atau diuji dalam bentuk praktek nyata. Teori yang dipelajari jika kurang dipraktekkan, hanya akan menjadi wacana saja. Di jaman sekarang, dunia industri atau dunia kerja nyata, masyarakat yang mempunyai banyak wacana sangat cocok untuk dibentuk menjadi masyarakat konsumen dari hasil industri. Sementara, sebagian dari anggota masyarakat, yang terpilih bekerja di industri, harus mempunyai kompetensi dengan banyak pengalaman praktek, agar mampu menjalankan aktivitas dari industi tersebut secara profesional.</p>\r\n<p><strong><em>Learn &ndash; Practice &ndash; Competence &ndash; Excellent</em></strong></p>\r\n<p>Suasana belajar mengajar dibentuk agar setiap mahasiswa dapat belajar dengan baik dan benar. Mahasiswa dapat praktek di laboratorium dengan fasilitas laboratorium yang mempunyai peralatan menyerupai dunia kerja. Ujian yang diberikan dengan maksud agar terjadi proses kendali mutu (<em>quality control</em>) bagi kompetensi masing-masing mahasiswa, maupun ketika mereka melaksanakan tugas dalam tim. Diharapkan dengan demikian, ketika mereka magang (<em>apprenticeship</em>) maupun setelah bekerja,akan dapat menunjukkan kompetensi yang dapat diunggulkan (<em>excellent</em>).</p>', 'general', 'general', '', ''),
(16, 1523707402, NULL, 2, NULL, 'Makrab HIMAMO 2018', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/4aa0c94f90c2a1c2b09dd3523b5de6fc.jpg', '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident:</p>\r\n<ul>\r\n<li>Similique: sunt in culpa qui officia deserunt mollitia animi</li>\r\n<li>Id: est laborum et dolorum fuga</li>\r\n<li>Et: harum quidem rerum facilis est et expedita distinctio</li>\r\n</ul>\r\n<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>\r\n<p>ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'event', 'himpunanmahasiswa', '04 May, 2018 - 06 May, 2018', 'Papua'),
(17, 1523712473, NULL, 3, NULL, 'Kartini dan Muslimah Sejati', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/99f76705aa33d1dc21a9931ce89558f1.jpg', '<p>Perjuangan seorang Kartini bagaikan mata air di padang pasir, saat kaum perempuan dianggap lemah dan tak berdaya, beliau justru mematahkan semua paradigma terhadap perempuan, membuat dogma baru bahwa perempuan punya hak yang sama dengan kaum laki-laki dalam segala hal, yang membedakannya hanya dalam tataran konsep dasar dan hakikat bahwa perempuan berbeda dengan laki-laki. Sehingga kumpulan tulisannya pun dibukukan dengan judul &ldquo;Habis Gelap Terbitlah Terang&rdquo;.</p>\r\n<p>Bahagiakah Kartini? Entahlah. Tidak ada yang tahu. Apakah ia puas dengan semua pengorbanannya untuk bangsa ini, karena sekarang kaum perempuan justeru lebih tidak dihargai bahkan oleh perempuan itu sendiri dan berkembang pemikiran yang menyetarakan laki-laki dan perempuan.</p>\r\n<p>Kebanyakan kaum perempuan menilai sama antara feminisme dengan apa yang diperjuangkan oleh seorang Kartini. Begitu banyak perbedaan pendapat tentang hal ini, yang jelas konsep seorang perempuan lembut namun cerdas yang dibawa oleh puteri bupati Jepara ini sekarang sudah mulai tereduksi atas nama Hak Asasi Manusia (HAM). Lagi-lagi HAM.</p>\r\n<p>Benarkah seorang Kartini berjuang untuk kebebasan yang seluas-luasnya bagi kaum perempuan? Saya yakin tidak.</p>\r\n<p>Karena bagi Kartini tidak ada pendiskriminasian terhadap perempuan, bukan berarti perempuan meninggalkan peran dan fungsi sebagi seorang perempuan itu sesuai kodratnya, sebagai seorang istri, dan sebagai seorang ibu bagi anak-anaknya.</p>\r\n<p>Yang jelas sebelum Kartini lahir sudah ada seorang manusia sempurna yang jauh lebih berperan dalam perjuangan untuk mengangkat derajat kaum perempuan, ia bukan seorang perempuan, namun perjuangannya membuktikan betapa Islam menghargai dan memuliakan seorang perempuan. Konsep ini terlihat dari hadis.</p>\r\n<p>Penyebutan ibu tiga kali dan ayah satu kali bukannya tanpa arti, namun tersirat makna bahwa yang lebih diutamakan untuk dihargai adalah ibu, bukan berarti pula tidak menghormati ayah.</p>\r\n<p>Hanya saja, seorang perempuan harus melalui masa-masa berat untuk mendapat sebutan ibu, mulai dari mengandung, melahirkan hingga menyusui dan membesarkan anak. Tak heran jika dalam Al-Qur&rsquo;an surat Luqman ayat 14 dikatakan:</p>\r\n<p><em>&ldquo;Dan Kami perintahkan kepada manusia (berbuat baik) kepada dua orang ibu-bapaknya; ibunya telah mengandungnya dalam keadaan lemah yang bertambah-tambah, dan menyapihnya dalam dua tahun. Bersyukurlah kepada-Ku dan kepada dua orang ibu bapakmu, hanya kepada-Ku lah kembalimu.&rdquo;</em></p>\r\n<p>Perempuan dan laki-laki memang insan yang berbeda, namun dalam Al-Qur&rsquo;an ditegaskan bahwa perbedaan itu hanya dalam masalah peran dan fungsi saja, bahwa seorang perempuan mempunyai fungsi sebagai : mar&rsquo;atushsholihah, zaujatu muthi&rsquo;ah, dan ummul madrasah berbeda dengan laki-laki.</p>\r\n<p>Namun dalam masalah pendidikan, pekerjaan dan masalah teknis lainnya perempuan dan laki-laki sama asalkan perempuan tidak meninggalkan peran dan fungsinya tadi. Antara perempuan dan laki-laki mempunyai kesempatan yang sama untuk mendapatkan derajat tertinggi di mata Allah yaitu taqwa.</p>\r\n<p>Jika Kartini menginginkan penghapusan diskriminasi terhadap perempuan, maka Islam jauh mempunyai impian yang lebih mulia terhadap perempuan, kembalikanlah segala sesuatu kepada Al-Qur&rsquo;an dan hadis.</p>\r\n<p>Bahwa apapun paham-paham yang berkembang sekarang namun tetaplah menjadi jati diri seorang muslimah, seperti Siti Khadijah yang walaupun seorang saudagar, namun mampu menjalankan perannya sebagi istri dan menjadikannya seorang wanita salehah .. karena setiap muslimah adalah mutiara.</p>', 'general', 'general', '', ''),
(18, 1523712719, 1523712891, 1, 1, 'Dies Natalis ke-41 Polman Bandung', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/25ffbd825e49f5f7aada4fd11232df2f.jpg', '<p>Aula Rupantama, Jumat (23/03/2018).&nbsp;&nbsp;Bertempat di Ruang Aula Rupantama Polman dilaksanakan Sidang Terbuka Politeknik Manufaktur Bandung dalam rangka Dies Natalis ke-41.&nbsp;&nbsp;Dies Polman ke-41 ini diisi dengan orasi ilmiah&nbsp;&nbsp;oleh dosen Polman, Iwan Harianton, B.Sc., M.Eng yang menyampaikan materi orasi berjudul Perubahan Paradigma Pendidikan Tinggi Vokasi Menyambut Revolusi Industri 4.0.&nbsp;&nbsp;Acara yang dihadiri oleh direksi Polman, Senat, perwakilan dosen dan mahasiswa ini selain diisi dengan orasi ilmiah, juga diisi dengan penyerahan penghargaan para akademisi berprestasi baik untuk mahasiswa juga untuk pegawai dengan kategori Dosen terbaik, kategori Ketua Program Studi terbaik, dan kategori Tenaga Administrasi terbaik.&nbsp;</p>\r\n<p><img src=\"http://127.0.0.1/esystem_ae/assets/images/app/gallery/9febcdc4a244881382575daebeec4d46.jpg\" alt=\"\" width=\"318\" height=\"212\" /></p>\r\n<p>Untuk kategori Dosen, penghargaan diberikan kepada Bp. Yuliadi Erdani dari Jurusan Teknik Otomasi Manufaktur, dan kepada Bp. M. Fauzi dari Jurusan Teknik Manufaktur.&nbsp;&nbsp;Penghargaan kategori Ketua Program Studi diberikan kepada Bp. Asep Indra Komara dari Jurusan Teknik Perancangan Manufaktur, serta kepada Bp. Ery Hidayat dari Jurusan Teknik Pengecoran Logam.&nbsp;&nbsp;Untuk kategori Teknisi/Laboran, penghargaan diberikan kepada Bp. Yoseph Andriyanto dari Jurusan Teknik Manufaktur dan Bp. Abyanuddin Salam dari Jurusan Teknik Otomasi Manufaktur.&nbsp;&nbsp;Sedangkan untuk kategori Tenaga Administrasi penghargaan diberikan kepada Bp. Ihwan Himawan dari Bagian Administrasi Akademik dan Bp. Aca Usup dari Subbagian Umum (Sumber: Berita Acara Penilaian Pegawai Berprestasi Tahun 2018 periode Penilaian Tahun 2017 No. 355/PL11/KP/2018).</p>\r\n<p>Sementara untuk mahasiswa, penghargaan sebagai mahasiswa terbaik ke-1 s.d ke-3 diberikan kepada Safira Azzahra Salwa (Teknik Perancangan Manufaktur), Rianza Fauzi Zulkarnain (Teknik Otomasi Manufaktur dan Mekatronika), dan Febri Trihariyadi Sudirman (Teknik Pengecoran Logam), (sumber: Keputusan Direktur Politeknik Manufaktur Bandung&nbsp;NOMOR: 367/PL11/KP/2018&nbsp;&nbsp;tentang Penganugerahan Predikat Mahasiswa Berprestasi Periode Penilaian tahun 2017).&nbsp;&nbsp;Untuk kelompok mahasiswa, penghargaan selain diberikan dalam bentuk pemberian piagam penghargaan, juga diberikan penghargaan sejumlah uang tunai dengan besaran berbeda.</p>', 'general', 'internal', '14 April, 2018 - 14 April, 2018', ''),
(19, 1523713062, NULL, 3, NULL, 'Penyambutan Kedatangan Mahasiswa Perancis di Polman Bandung', 'http://127.0.0.1/esystem_ae/assets/images/app/gallery/2b20f0381c1847ec00d330361af65499.jpg', '<p>Penyambutan kedatangan dua mahasiswa Perancis (Ryan dan Thomas) yang telah tiba di POLMAN Bandung untuk mengawali kegiatan program Magang (internship).</p>\r\n<p>Acara tersebut secara resmi dibuka oleh Bapak Benny Bandanadjaja selaku Wakil Direktur I Bidang Akademik serta dihadiri pula oleh Para Ketua Jurusan dari DE, ME, dan AE.</p>\r\n<p><img src=\"http://127.0.0.1/esystem_ae/assets/images/app/gallery/5f02cd0d0b0a43a36f1cb4e24680b52d.jpg\" alt=\"\" width=\"356\" height=\"237\" /></p>\r\n<p>Program ini akan berjalan selama 4 bulan yang kegiatannya dikoordinir oleh Kantor Urusan International POLMAN baik kegiatan secara Akademik maupun Non-Akademik. Dengan adanya program Magang ini, mereka diharapkan mampu mengenal budaya&nbsp; serta keanekaragaman Indonesia melalui POLMAN Bandung.</p>', 'general', 'kemahasiswaan', '', ''),
(20, 1523713345, NULL, 3, NULL, 'Kumpul AEA Lintas Angkatan', '', '<p>Diharapkan untuk kelas AEA berkumpul di rooftop AE jam 16.00 karena kita akan membahas liburan kita ke maldives semester ini.</p>', 'flashnews', 'lainnya', '', ''),
(21, 1523849909, NULL, 1, NULL, 'Kabar Duka', '', '<p>Telah berpulang ke rahmatullah hamba allah pada hari selasa 17 april 2018 semoga amal ibadah beliau diterima disisiNya.</p>', 'flashnews', 'internal', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `description`) VALUES
(1, 'Politeknik Manufaktur Bandung', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `secondary_email` varchar(254) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(10) UNSIGNED DEFAULT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `id_major` int(11) UNSIGNED DEFAULT NULL,
  `id_unit` int(11) UNSIGNED DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `home_address` text,
  `avatar` varchar(254) NOT NULL DEFAULT 'app/avatar/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `secondary_email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `phone`, `id_major`, `id_unit`, `gender`, `home_address`, `avatar`) VALUES
(1, '127.0.0.1', 'admin', '$2y$08$N0WL90SYIRYClJ054wW9eerkG45yD9wQNfe1an.bdyQNE.nStBcfm', '', 'admin@esystem.ae', NULL, NULL, NULL, NULL, NULL, 1521955377, 1523849784, 1, 'Admin', 'System', '14045', NULL, NULL, NULL, NULL, 'app/avatar/admin.jpg'),
(2, '127.0.0.1', '216341059', '$2y$08$OaioRb3HtkSRfowBmA15nuKTWpxxIfGJgjfx2hj18jwLJrP4ODTL.', NULL, 'hirzinurfakhrian@gmail.com', '', NULL, NULL, NULL, NULL, 1522392676, 1523707210, 1, 'Hirzi', 'Nurfakhrian', '083116823235', 1, 1, 'M', '', 'app/avatar/avatar2.jpg'),
(3, '127.0.0.1', '216341023', '$2y$08$56Du7bk104mq6OJ9vKtkFOQXbQi7pcOHeifE48Xp0F7djp5pigMYG', NULL, 'vinkalviola@gmail.com', '', NULL, NULL, NULL, NULL, 1522577015, 1523712936, 1, 'Vinka', 'Alviola', '083116823236', 1, 1, 'F', '', 'app/avatar/default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(8, 2, 4),
(20, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users_menus`
--

CREATE TABLE `users_menus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL,
  `is_create` int(1) NOT NULL,
  `is_read` int(1) NOT NULL,
  `is_update` int(1) NOT NULL,
  `is_delete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_menus`
--

INSERT INTO `users_menus` (`id`, `user_id`, `menu_id`, `is_create`, `is_read`, `is_update`, `is_delete`) VALUES
(88, 1, 1, 1, 1, 1, 1),
(89, 1, 2, 1, 1, 1, 1),
(90, 1, 3, 1, 1, 1, 1),
(103, 2, 1, 1, 1, 0, 0),
(104, 2, 2, 1, 1, 0, 0),
(105, 2, 3, 0, 0, 0, 0),
(106, 3, 1, 1, 1, 0, 0),
(107, 3, 2, 1, 1, 1, 0),
(108, 3, 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `youtube`
--

CREATE TABLE `youtube` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` text NOT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube`
--

INSERT INTO `youtube` (`id`, `url`, `updated_by`) VALUES
(1, 'www.youtube.com/embed/YBLtnVCMRnU?autoplay=0&loop=1&playlist=YBLtnVCMRnU,', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploaded_user_id` (`uploaded_by`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_major` (`id_major`),
  ADD KEY `fk_users_unit` (`id_unit`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `users_menus`
--
ALTER TABLE `users_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_menus_users1` (`user_id`),
  ADD KEY `fk_users_menus_menus1` (`menu_id`);

--
-- Indexes for table `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`id`),
  ADD KEY `updated_user_id` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_menus`
--
ALTER TABLE `users_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `uploaded_user_id` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_major` FOREIGN KEY (`id_major`) REFERENCES `majors` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_users_unit` FOREIGN KEY (`id_unit`) REFERENCES `units` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_menus`
--
ALTER TABLE `users_menus`
  ADD CONSTRAINT `fk_users_menus_menus1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_users_menus_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `youtube`
--
ALTER TABLE `youtube`
  ADD CONSTRAINT `updated_user_id` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
