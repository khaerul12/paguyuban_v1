-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 04:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_anggota`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_at` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `title`, `body`, `image`, `create_at`, `active`) VALUES
(1, '2024-05-19 06:52:10', '2024-05-19 06:52:10', 'JOEL COTTERILL | WE KNOW A TOUGH TEST AWAITS US', '<p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:540,&quot;url&quot;:&quot;https://cdn.swanseacity.com/sites/default/files/2024-05/JOEL%20COTTERILL%20%20copy.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn.swanseacity.com/sites/default/files/2024-05/JOEL%20COTTERILL%20%20copy.jpg\" width=\"960\" height=\"540\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Midfielder Joel Cotterill expects Swansea City Under-21s to face a tough test at Sheffield United on Monday evening (7pm), but says the visitors are hungry for the chance to win silverware ahead of their Professional Development League play-off semi-final at Bramall Lane.</p><p>The young Swans secured their play-off spot on the final day of the season thanks to Joe Thomas\' first-half goal against Birmingham City at the Swansea.com Stadium.</p><p>The 1-0 victory secured a second-place finish in the southern section for the age-grade side, who\'ve racked up 16 wins in the league and scored 72 goals - second only to Millwall.&nbsp;</p><p>Now they travel to face on a Blades side who finished top of the northern section of the competition, and it\'s a challenge Cotterill is relishing.</p><p>\"It feels amazing, Wrighty [coach Anthony Wright] set the objective at the start of the season to reach the play-offs and we achieved it,\" said Cotterill, who spent the opening half of the season on loan at League Two Stockport County.</p><p>\"I haven\'t been here for the most part of the season, I played the first few games at the start and then went on loan.</p><p>\"But, since coming back we\'ve been playing well and we\'ll get another chance of silverware this season after reaching the final of the Nathaniel MG Cup.</p><p>\"We got the job done in terms of the play-offs, but now we face another tough side in Sheffield United. They have won their league this season, and are a team we\'ve already played at their stadium this season in a knockout tie.&nbsp;</p><p>\"We\'d love nothing more than to reach the final and have the chance to lift some silverware after losing the Nathaniel MG Cup final, and missing out on the play-offs by one point last season.</p><p>\"There\'s a lot of hunger in the dressing room.\"</p>', 'x2Um9w1JUkrm7MOTRD7ytm2sOrocoq-metaU2NyZWVuc2hvdCAyMDI0LTA1LTE5IDE1MDcwNy5wbmc=-.png', '2024-05-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `street` varchar(255) NOT NULL,
  `sub_district` varchar(255) NOT NULL,
  `regency` varchar(255) NOT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `biodata_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `sub_district`, `regency`, `city_id`, `province_id`, `biodata_id`) VALUES
(1, 'DESA-BUARAN-RT-01-RW-02-KECAMATAN-JATIBARANG-KABUPATEN-BREBES-JAWA-TENGAH', 'BUARAN', 'Kabupaten Brebes', 216, 13, 1),
(2, 'Kabupaten Aceh Selatan', 'Aceh', 'BUARAN', NULL, NULL, 2),
(3, 'Kabupaten Aceh Selatan', 'Aceh', 'BUARAN', NULL, NULL, 3),
(4, 'A', 'A', 'A', 216, 13, 5),
(5, 'Kabupaten Aceh Selatan', 'Sumatera Utara', 'A', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `payment` enum('Debit','Kredit') NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `created_at`, `updated_at`, `transaction_date`, `description`, `amount`, `payment`, `category`) VALUES
(1, '2024-05-19 03:38:00', '2024-05-19 03:38:00', '2024-05-01', 'DONASI', 1000000, 'Kredit', 'crypto'),
(2, '2024-05-19 03:38:20', '2024-05-19 04:30:16', '2024-07-01', 'DONASI KELUAR', 900000, 'Debit', 'crypto'),
(3, '2024-05-19 04:41:18', '2024-05-19 04:41:46', '2024-04-01', 'DONASI', 1000, 'Kredit', 'crypto');

-- --------------------------------------------------------

--
-- Table structure for table `biodatas`
--

CREATE TABLE `biodatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kk` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `blood` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `condition` enum('Sejahtera','Pra Sejahtera') DEFAULT NULL,
  `numbers` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `head_kk` bigint(20) DEFAULT NULL,
  `cities_v2` varchar(255) DEFAULT NULL,
  `provinsi_v2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodatas`
--

INSERT INTO `biodatas` (`id`, `kk`, `image`, `full_name`, `nik`, `birth_date`, `gender`, `blood`, `religion`, `status`, `profession`, `note`, `condition`, `numbers`, `email`, `facebook`, `instagram`, `twitter`, `head_kk`, `cities_v2`, `provinsi_v2`, `created_at`, `updated_at`) VALUES
(1, 1234567891, 'WVXrwCuRbswffvzneVXB3wUL2B2Uu7-metaU2NyZWVuc2hvdCAyMDI0LTA1LTE5IDEzMDM0OS5wbmc=-.png', 'John Doe', 1234567890, '2024-05-03', 'laki-laki', 'B', 'islam', 'balum kawain', 'SOSIAL MEDIA SPESIALIST', 'A', 'Sejahtera', '085726621251', 'KHAERULUSMAN68@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-19 06:53:28', '2024-05-19 06:53:28'),
(2, 1234567891, 'vHxiYSg0G6hPTLWIKdXqDOTkvuGo8k-metaU2NyZWVuc2hvdCAyMDI0LTA1LTE5IDEzMTIzOS5wbmc=-.png', 'John Doe Jay', 12345978, '2024-05-02', 'laki-laki', 'B', NULL, NULL, 'SOSIAL MEDIA SPESIALIST', NULL, NULL, '08514878487', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-05-19 06:54:12', '2024-05-19 06:54:12'),
(3, 1234567891, 'a9k40vnTNsXth90ky8GIWmEDOpl7sN-metaU2NyZWVuc2hvdCAyMDI0LTA1LTE2IDIxMDQ0My5wbmc=-.png', 'James Rodriguez', 112457884, '2024-05-01', 'laki-laki', 'B', NULL, NULL, 'SENIOR MANAGER', NULL, NULL, '01234557898', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-05-19 06:54:59', '2024-05-19 06:54:59'),
(5, 12345678997, 'rRUWazM9107NOiajzQh2g6gq8IqqXU-metaU2NyZWVuc2hvdCAoMjQ1KS5wbmc=-.png', 'KHAERUL USMAN', 12345678991, '2024-05-05', 'laki-laki', 'B', 'islam', 'balum kawain', 'SOSIAL MEDIA SPESIALIST', NULL, 'Sejahtera', '085741367878', 'johndoe@example.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-19 06:56:57', '2024-05-19 06:56:57'),
(8, 12345678997, 'WAxo7GuBiuEGHI9NDZ8a9fRJsCQc7M-metaU2NyZWVuc2hvdCAyMDI0LTA1LTE5IDEyNTUwOS5wbmc=-.png', 'Budi', 12345787878, '2024-05-03', 'laki-laki', 'B', NULL, NULL, 'A', NULL, NULL, '124578963124', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2024-05-19 06:59:49', '2024-05-19 06:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `count`) VALUES
(1, 'Kabupaten Aceh Selatan', 0),
(2, 'Kabupaten Aceh Tenggara', 0),
(3, 'Kabupaten Aceh Timur', 0),
(4, 'Kabupaten Aceh Tengah', 0),
(5, 'Kabupaten Aceh Barat', 0),
(6, 'Kabupaten Aceh Besar', 0),
(7, 'Kabupaten Pidie', 0),
(8, 'Kabupaten Aceh Utara', 0),
(9, 'Kabupaten Simeulue', 0),
(10, 'Kabupaten Aceh Singkil', 0),
(11, 'Kabupaten Bireuen', 0),
(12, 'Kabupaten Aceh Barat Daya', 0),
(13, 'Kabupaten Gayo Lues', 0),
(14, 'Kabupaten Aceh Jaya', 0),
(15, 'Kabupaten Nagan Raya', 0),
(16, 'Kabupaten Aceh Tamiang', 0),
(17, 'Kabupaten Bener Meriah', 0),
(18, 'Kabupaten Pidie Jaya', 0),
(19, 'Kota Banda Aceh', 0),
(20, 'Kota Sabang', 0),
(21, 'Kota Lhokseumawe', 0),
(22, 'Kota Langsa', 0),
(23, 'Kota Subulussalam', 0),
(24, 'Kabupaten Tapanuli Tengah', 0),
(25, 'Kabupaten Tapanuli Utara', 0),
(26, 'Kabupaten Tapanuli Selatan', 0),
(27, 'Kabupaten Nias', 0),
(28, 'Kabupaten Langkat', 0),
(29, 'Kabupaten Karo', 0),
(30, 'Kabupaten Deli Serdang', 0),
(31, 'Kabupaten Simalungun', 0),
(32, 'Kabupaten Asahan', 0),
(33, 'Kabupaten Labuhanbatu', 0),
(34, 'Kabupaten Dairi', 0),
(35, 'Kabupaten Toba Samosir', 0),
(36, 'Kabupaten Mandailing Natal', 0),
(37, 'Kabupaten Nias Selatan', 0),
(38, 'Kabupaten Pakpak Bharat', 0),
(39, 'Kabupaten Humbang Hasundutan', 0),
(40, 'Kabupaten Samosir', 0),
(41, 'Kabupaten Serdang Bedagai', 0),
(42, 'Kabupaten Batu Bara', 0),
(43, 'Kabupaten Padang Lawas Utara', 0),
(44, 'Kabupaten Padang Lawas', 0),
(45, 'Kabupaten Labuhanbatu Selatan', 0),
(46, 'Kabupaten Labuhanbatu Utara', 0),
(47, 'Kabupaten Nias Utara', 0),
(48, 'Kabupaten Nias Barat', 0),
(49, 'Kota Medan', 0),
(50, 'Kota Pematangsiantar', 0),
(51, 'Kota Sibolga', 0),
(52, 'Kota Tanjung Balai', 0),
(53, 'Kota Binjai', 0),
(54, 'Kota Tebing Tinggi', 0),
(55, 'Kota Padangsidimpuan', 0),
(56, 'Kota Gunungsitoli', 0),
(57, 'Kabupaten Pesisir Selatan', 0),
(58, 'Kabupaten Solok', 0),
(59, 'Kabupaten Sijunjung', 0),
(60, 'Kabupaten Tanah Datar', 0),
(61, 'Kabupaten Padang Pariaman', 0),
(62, 'Kabupaten Agam', 0),
(63, 'Kabupaten Lima Puluh Kota', 0),
(64, 'Kabupaten Pasaman', 0),
(65, 'Kabupaten Kepulauan Mentawai', 0),
(66, 'Kabupaten Dharmasraya', 0),
(67, 'Kabupaten Solok Selatan', 0),
(68, 'Kabupaten Pasaman Barat', 0),
(69, 'Kota Padang', 0),
(70, 'Kota Solok', 0),
(71, 'Kota Sawahlunto', 0),
(72, 'Kota Padang Panjang', 0),
(73, 'Kota Bukittinggi', 0),
(74, 'Kota Payakumbuh', 0),
(75, 'Kota Pariaman', 0),
(76, 'Kabupaten Kampar', 0),
(77, 'Kabupaten Indragiri Hulu', 0),
(78, 'Kabupaten Bengkalis', 0),
(79, 'Kabupaten Indragiri Hilir', 0),
(80, 'Kabupaten Pelalawan', 0),
(81, 'Kabupaten Rokan Hulu', 0),
(82, 'Kabupaten Rokan Hilir', 0),
(83, 'Kabupaten Siak', 0),
(84, 'Kabupaten Kuantan Singingi', 0),
(85, 'Kabupaten Kepulauan Meranti', 0),
(86, 'Kota Pekanbaru', 0),
(87, 'Kota Dumai', 0),
(88, 'Kabupaten Kerinci', 0),
(89, 'Kabupaten Merangin', 0),
(90, 'Kabupaten Sarolangun', 0),
(91, 'Kabupaten Batanghari', 0),
(92, 'Kabupaten Muaro Jambi', 0),
(93, 'Kabupaten Tanjung Jabung Barat', 0),
(94, 'Kabupaten Tanjung Jabung Timur', 0),
(95, 'Kabupaten Bungo', 0),
(96, 'Kabupaten Tebo', 0),
(97, 'Kota Jambi', 0),
(98, 'Kota Sungai Penuh', 0),
(99, 'Kabupaten Ogan Komering Ulu', 0),
(100, 'Kabupaten Ogan Komering Ilir', 0),
(101, 'Kabupaten Muara Enim', 0),
(102, 'Kabupaten Lahat', 0),
(103, 'Kabupaten Musi Rawas', 0),
(104, 'Kabupaten Musi Banyuasin', 0),
(105, 'Kabupaten Banyuasin', 0),
(106, 'Kabupaten Ogan Komering Ulu Timur', 0),
(107, 'Kabupaten Ogan Komering Ulu Selatan', 0),
(108, 'Kabupaten Ogan Ilir', 0),
(109, 'Kabupaten Empat Lawang', 0),
(110, 'Kabupaten Penukal Abab Lematang Ilir', 0),
(111, 'Kabupaten Musi Rawas Utara', 0),
(112, 'Kota Palembang', 0),
(113, 'Kota Pagar Alam', 0),
(114, 'Kota Lubuk Linggau', 0),
(115, 'Kota Prabumulih', 0),
(116, 'Kabupaten Bengkulu Selatan', 0),
(117, 'Kabupaten Rejang Lebong', 0),
(118, 'Kabupaten Bengkulu Utara', 0),
(119, 'Kabupaten Kaur', 0),
(120, 'Kabupaten Seluma', 0),
(121, 'Kabupaten Muko Muko', 0),
(122, 'Kabupaten Lebong', 0),
(123, 'Kabupaten Kepahiang', 0),
(124, 'Kabupaten Bengkulu Tengah', 0),
(125, 'Kota Bengkulu', 0),
(126, 'Kabupaten Lampung Selatan', 0),
(127, 'Kabupaten Lampung Tengah', 0),
(128, 'Kabupaten Lampung Utara', 0),
(129, 'Kabupaten Lampung Barat', 0),
(130, 'Kabupaten Tulang Bawang', 0),
(131, 'Kabupaten Tanggamus', 0),
(132, 'Kabupaten Lampung Timur', 0),
(133, 'Kabupaten Way Kanan', 0),
(134, 'Kabupaten Pesawaran', 0),
(135, 'Kabupaten Pringsewu', 0),
(136, 'Kabupaten Mesuji', 0),
(137, 'Kabupaten Tulang Bawang Barat', 0),
(138, 'Kabupaten Pesisir Barat', 0),
(139, 'Kota Bandar Lampung', 0),
(140, 'Kota Metro', 0),
(141, 'Kabupaten Bangka', 0),
(142, 'Kabupaten Belitung', 0),
(143, 'Kabupaten Bangka Selatan', 0),
(144, 'Kabupaten Bangka Tengah', 0),
(145, 'Kabupaten Bangka Barat', 0),
(146, 'Kabupaten Belitung Timur', 0),
(147, 'Kota Pangkal Pinang', 0),
(148, 'Kabupaten Bintan', 0),
(149, 'Kabupaten Karimun', 0),
(150, 'Kabupaten Natuna', 0),
(151, 'Kabupaten Lingga', 0),
(152, 'Kabupaten Kepulauan Anambas', 0),
(153, 'Kota Batam', 0),
(154, 'Kota Tanjung Pinang', 0),
(155, 'Kabupaten Adm. Kep. Seribu', 0),
(156, 'Kota Adm. Jakarta Pusat', 0),
(157, 'Kota Adm. Jakarta Utara', 0),
(158, 'Kota Adm. Jakarta Barat', 0),
(159, 'Kota Adm. Jakarta Selatan', 0),
(160, 'Kota Adm. Jakarta Timur', 0),
(161, 'Kabupaten Bogor', 0),
(162, 'Kabupaten Sukabumi', 0),
(163, 'Kabupaten Cianjur', 0),
(164, 'Kabupaten Bandung', 0),
(165, 'Kabupaten Garut', 0),
(166, 'Kabupaten Tasikmalaya', 0),
(167, 'Kabupaten Ciamis', 0),
(168, 'Kabupaten Kuningan', 0),
(169, 'Kabupaten Cirebon', 0),
(170, 'Kabupaten Majalengka', 0),
(171, 'Kabupaten Sumedang', 0),
(172, 'Kabupaten Indramayu', 0),
(173, 'Kabupaten Subang', 0),
(174, 'Kabupaten Purwakarta', 0),
(175, 'Kabupaten Karawang', 0),
(176, 'Kabupaten Bekasi', 0),
(177, 'Kabupaten Bandung Barat', 0),
(178, 'Kabupaten Pangandaran', 0),
(179, 'Kota Bogor', 0),
(180, 'Kota Sukabumi', 0),
(181, 'Kota Bandung', 0),
(182, 'Kota Cirebon', 0),
(183, 'Kota Bekasi', 0),
(184, 'Kota Depok', 0),
(185, 'Kota Cimahi', 0),
(186, 'Kota Tasikmalaya', 0),
(187, 'Kota Banjar', 0),
(188, 'Kabupaten Cilacap', 0),
(189, 'Kabupaten Banyumas', 0),
(190, 'Kabupaten Purbalingga', 0),
(191, 'Kabupaten Banjarnegara', 0),
(192, 'Kabupaten Kebumen', 0),
(193, 'Kabupaten Purworejo', 0),
(194, 'Kabupaten Wonosobo', 0),
(195, 'Kabupaten Magelang', 0),
(196, 'Kabupaten Boyolali', 0),
(197, 'Kabupaten Klaten', 0),
(198, 'Kabupaten Sukoharjo', 0),
(199, 'Kabupaten Wonogiri', 0),
(200, 'Kabupaten Karanganyar', 0),
(201, 'Kabupaten Sragen', 0),
(202, 'Kabupaten Grobogan', 0),
(203, 'Kabupaten Blora', 0),
(204, 'Kabupaten Rembang', 0),
(205, 'Kabupaten Pati', 0),
(206, 'Kabupaten Kudus', 0),
(207, 'Kabupaten Jepara', 0),
(208, 'Kabupaten Demak', 0),
(209, 'Kabupaten Semarang', 0),
(210, 'Kabupaten Temanggung', 0),
(211, 'Kabupaten Kendal', 0),
(212, 'Kabupaten Batang', 0),
(213, 'Kabupaten Pekalongan', 0),
(214, 'Kabupaten Pemalang', 0),
(215, 'Kabupaten Tegal', 0),
(216, 'Kabupaten Brebes', 1),
(217, 'Kota Magelang', 0),
(218, 'Kota Surakarta', 0),
(219, 'Kota Salatiga', 0),
(220, 'Kota Semarang', 0),
(221, 'Kota Pekalongan', 0),
(222, 'Kota Tegal', 0),
(223, 'Kabupaten Kulon Progo', 0),
(224, 'Kabupaten Bantul', 0),
(225, 'Kabupaten Gunungkidul', 0),
(226, 'Kabupaten Sleman', 0),
(227, 'Kota Yogyakarta', 0),
(228, 'Kabupaten Pacitan', 0),
(229, 'Kabupaten Ponorogo', 0),
(230, 'Kabupaten Trenggalek', 0),
(231, 'Kabupaten Tulungagung', 0),
(232, 'Kabupaten Blitar', 0),
(233, 'Kabupaten Kediri', 0),
(234, 'Kabupaten Malang', 0),
(235, 'Kabupaten Lumajang', 0),
(236, 'Kabupaten Jember', 0),
(237, 'Kabupaten Banyuwangi', 0),
(238, 'Kabupaten Bondowoso', 0),
(239, 'Kabupaten Situbondo', 0),
(240, 'Kabupaten Probolinggo', 0),
(241, 'Kabupaten Pasuruan', 0),
(242, 'Kabupaten Sidoarjo', 0),
(243, 'Kabupaten Mojokerto', 0),
(244, 'Kabupaten Jombang', 0),
(245, 'Kabupaten Nganjuk', 0),
(246, 'Kabupaten Madiun', 0),
(247, 'Kabupaten Magetan', 0),
(248, 'Kabupaten Ngawi', 0),
(249, 'Kabupaten Bojonegoro', 0),
(250, 'Kabupaten Tuban', 0),
(251, 'Kabupaten Lamongan', 0),
(252, 'Kabupaten Gresik', 0),
(253, 'Kabupaten Bangkalan', 0),
(254, 'Kabupaten Sampang', 0),
(255, 'Kabupaten Pamekasan', 0),
(256, 'Kabupaten Sumenep', 0),
(257, 'Kota Kediri', 0),
(258, 'Kota Blitar', 0),
(259, 'Kota Malang', 0),
(260, 'Kota Probolinggo', 0),
(261, 'Kota Pasuruan', 0),
(262, 'Kota Mojokerto', 0),
(263, 'Kota Madiun', 0),
(264, 'Kota Surabaya', 0),
(265, 'Kota Batu', 0),
(266, 'Kabupaten Pandeglang', 0),
(267, 'Kabupaten Lebak', 0),
(268, 'Kabupaten Tangerang', 0),
(269, 'Kabupaten Serang', 0),
(270, 'Kota Tangerang', 0),
(271, 'Kota Cilegon', 0),
(272, 'Kota Serang', 0),
(273, 'Kota Tangerang Selatan', 0),
(274, 'Kabupaten Jembrana', 0),
(275, 'Kabupaten Tabanan', 0),
(276, 'Kabupaten Badung', 0),
(277, 'Kabupaten Gianyar', 0),
(278, 'Kabupaten Klungkung', 0),
(279, 'Kabupaten Bangli', 0),
(280, 'Kabupaten Karangasem', 0),
(281, 'Kabupaten Buleleng', 0),
(282, 'Kota Denpasar', 0),
(283, 'Kabupaten Lombok Barat', 0),
(284, 'Kabupaten Lombok Tengah', 0),
(285, 'Kabupaten Lombok Timur', 0),
(286, 'Kabupaten Sumbawa', 0),
(287, 'Kabupaten Dompu', 0),
(288, 'Kabupaten Bima', 0),
(289, 'Kabupaten Sumbawa Barat', 0),
(290, 'Kabupaten Lombok Utara', 0),
(291, 'Kota Mataram', 0),
(292, 'Kota Bima', 0),
(293, 'Kabupaten Kupang', 0),
(294, 'Kab Timor Tengah Selatan', 0),
(295, 'Kabupaten Timor Tengah Utara', 0),
(296, 'Kabupaten Belu', 0),
(297, 'Kabupaten Alor', 0),
(298, 'Kabupaten Flores Timur', 0),
(299, 'Kabupaten Sikka', 0),
(300, 'Kabupaten Ende', 0),
(301, 'Kabupaten Ngada', 0),
(302, 'Kabupaten Manggarai', 0),
(303, 'Kabupaten Sumba Timur', 0),
(304, 'Kabupaten Sumba Barat', 0),
(305, 'Kabupaten Lembata', 0),
(306, 'Kabupaten Rote Ndao', 0),
(307, 'Kabupaten Manggarai Barat', 0),
(308, 'Kabupaten Nagekeo', 0),
(309, 'Kabupaten Sumba Tengah', 0),
(310, 'Kabupaten Sumba Barat Daya', 0),
(311, 'Kabupaten Manggarai Timur', 0),
(312, 'Kabupaten Sabu Raijua', 0),
(313, 'Kabupaten Malaka', 0),
(314, 'Kota Kupang', 0),
(315, 'Kabupaten Sambas', 0),
(316, 'Kabupaten Mempawah', 0),
(317, 'Kabupaten Sanggau', 0),
(318, 'Kabupaten Ketapang', 0),
(319, 'Kabupaten Sintang', 0),
(320, 'Kabupaten Kapuas Hulu', 0),
(321, 'Kabupaten Bengkayang', 0),
(322, 'Kabupaten Landak', 0),
(323, 'Kabupaten Sekadau', 0),
(324, 'Kabupaten Melawi', 0),
(325, 'Kabupaten Kayong Utara', 0),
(326, 'Kabupaten Kubu Raya', 0),
(327, 'Kota Pontianak', 0),
(328, 'Kota Singkawang', 0),
(329, 'Kabupaten Kotawaringin Barat', 0),
(330, 'Kabupaten Kotawaringin Timur', 0),
(331, 'Kabupaten Kapuas', 0),
(332, 'Kabupaten Barito Selatan', 0),
(333, 'Kabupaten Barito Utara', 0),
(334, 'Kabupaten Katingan', 0),
(335, 'Kabupaten Seruyan', 0),
(336, 'Kabupaten Sukamara', 0),
(337, 'Kabupaten Lamandau', 0),
(338, 'Kabupaten Gunung Mas', 0),
(339, 'Kabupaten Pulang Pisau', 0),
(340, 'Kabupaten Murung Raya', 0),
(341, 'Kabupaten Barito Timur', 0),
(342, 'Kota Palangkaraya', 0),
(343, 'Kabupaten Tanah Laut', 0),
(344, 'Kabupaten Kotabaru', 0),
(345, 'Kabupaten Banjar', 0),
(346, 'Kabupaten Barito Kuala', 0),
(347, 'Kabupaten Tapin', 0),
(348, 'Kabupaten Hulu Sungai Selatan', 0),
(349, 'Kabupaten Hulu Sungai Tengah', 0),
(350, 'Kabupaten Hulu Sungai Utara', 0),
(351, 'Kabupaten Tabalong', 0),
(352, 'Kabupaten Tanah Bumbu', 0),
(353, 'Kabupaten Balangan', 0),
(354, 'Kota Banjarmasin', 0),
(355, 'Kota Banjarbaru', 0),
(356, 'Kabupaten Paser', 0),
(357, 'Kabupaten Kutai Kartanegara', 0),
(358, 'Kabupaten Berau', 0),
(359, 'Kabupaten Kutai Barat', 0),
(360, 'Kabupaten Kutai Timur', 0),
(361, 'Kabupaten Penajam Paser Utara', 0),
(362, 'Kabupaten Mahakam Ulu', 0),
(363, 'Kota Balikpapan', 0),
(364, 'Kota Samarinda', 0),
(365, 'Kota Bontang', 0),
(366, 'Kabupaten Bulungan', 0),
(367, 'Kabupaten Malinau', 0),
(368, 'Kabupaten Nunukan', 0),
(369, 'Kabupaten Tana Tidung', 0),
(370, 'Kota Tarakan', 0),
(371, 'Kabupaten Bolaang Mongondow', 0),
(372, 'Kabupaten Minahasa', 0),
(373, 'Kabupaten Kepulauan Sangihe', 0),
(374, 'Kabupaten Kepulauan Talaud', 0),
(375, 'Kabupaten Minahasa Selatan', 0),
(376, 'Kabupaten Minahasa Utara', 0),
(377, 'Kabupaten Minahasa Tenggara', 0),
(378, 'Kabupaten Bolaang Mongondow Utara', 0),
(379, 'Kabupaten Kep. Siau Tagulandang Biaro', 0),
(380, 'Kabupaten Bolaang Mongondow Timur', 0),
(381, 'Kabupaten Bolaang Mongondow Selatan', 0),
(382, 'Kota Manado', 0),
(383, 'Kota Bitung', 0),
(384, 'Kota Tomohon', 0),
(385, 'Kota Kotamobagu', 0),
(386, 'Kabupaten Banggai', 0),
(387, 'Kabupaten Poso', 0),
(388, 'Kabupaten Donggala', 0),
(389, 'Kabupaten Toli Toli', 0),
(390, 'Kabupaten Buol', 0),
(391, 'Kabupaten Morowali', 0),
(392, 'Kabupaten Banggai Kepulauan', 0),
(393, 'Kabupaten Parigi Moutong', 0),
(394, 'Kabupaten Tojo Una Una', 0),
(395, 'Kabupaten Sigi', 0),
(396, 'Kabupaten Banggai Laut', 0),
(397, 'Kabupaten Morowali Utara', 0),
(398, 'Kota Palu', 0),
(399, 'Kabupaten Kepulauan Selayar', 0),
(400, 'Kabupaten Bulukumba', 0),
(401, 'Kabupaten Bantaeng', 0),
(402, 'Kabupaten Jeneponto', 0),
(403, 'Kabupaten Takalar', 0),
(404, 'Kabupaten Gowa', 0),
(405, 'Kabupaten Sinjai', 0),
(406, 'Kabupaten Bone', 0),
(407, 'Kabupaten Maros', 0),
(408, 'Kabupaten Pangkajene Kepulauan', 0),
(409, 'Kabupaten Barru', 0),
(410, 'Kabupaten Soppeng', 0),
(411, 'Kabupaten Wajo', 0),
(412, 'Kabupaten Sidenreng Rappang', 0),
(413, 'Kabupaten Pinrang', 0),
(414, 'Kabupaten Enrekang', 0),
(415, 'Kabupaten Luwu', 0),
(416, 'Kabupaten Tana Toraja', 0),
(417, 'Kabupaten Luwu Utara', 0),
(418, 'Kabupaten Luwu Timur', 0),
(419, 'Kabupaten Toraja Utara', 0),
(420, 'Kota Makassar', 0),
(421, 'Kota Pare Pare', 0),
(422, 'Kota Palopo', 0),
(423, 'Kabupaten Kolaka', 0),
(424, 'Kabupaten Konawe', 0),
(425, 'Kabupaten Muna', 0),
(426, 'Kabupaten Buton', 0),
(427, 'Kabupaten Konawe Selatan', 0),
(428, 'Kabupaten Bombana', 0),
(429, 'Kabupaten Wakatobi', 0),
(430, 'Kabupaten Kolaka Utara', 0),
(431, 'Kabupaten Konawe Utara', 0),
(432, 'Kabupaten Buton Utara', 0),
(433, 'Kabupaten Kolaka Timur', 0),
(434, 'Kabupaten Konawe Kepulauan', 0),
(435, 'Kabupaten Muna Barat', 0),
(436, 'Kabupaten Buton Tengah', 0),
(437, 'Kabupaten Buton Selatan', 0),
(438, 'Kota Kendari', 0),
(439, 'Kota Bau Bau', 0),
(440, 'Kabupaten Gorontalo', 0),
(441, 'Kabupaten Boalemo', 0),
(442, 'Kabupaten Bone Bolango', 0),
(443, 'Kabupaten Pahuwato', 0),
(444, 'Kabupaten Gorontalo Utara', 0),
(445, 'Kota Gorontalo', 0),
(446, 'Kabupaten Pasangkayu', 0),
(447, 'Kabupaten Mamuju', 0),
(448, 'Kabupaten Mamasa', 0),
(449, 'Kabupaten Polewali Mandar', 0),
(450, 'Kabupaten Majene', 0),
(451, 'Kabupaten Mamuju Tengah', 0),
(452, 'Kabupaten Maluku Tengah', 0),
(453, 'Kabupaten Maluku Tenggara', 0),
(454, 'Kabupaten Kepulauan Tanimbar', 0),
(455, 'Kabupaten Buru', 0),
(456, 'Kabupaten Seram Bagian Timur', 0),
(457, 'Kabupaten Seram Bagian Barat', 0),
(458, 'Kabupaten Kepulauan Aru', 0),
(459, 'Kabupaten Maluku Barat Daya', 0),
(460, 'Kabupaten Buru Selatan', 0),
(461, 'Kota Ambon', 0),
(462, 'Kota Tual', 0),
(463, 'Kabupaten Halmahera Barat', 0),
(464, 'Kabupaten Halmahera Tengah', 0),
(465, 'Kabupaten Halmahera Utara', 0),
(466, 'Kabupaten Halmahera Selatan', 0),
(467, 'Kabupaten Kepulauan Sula', 0),
(468, 'Kabupaten Halmahera Timur', 0),
(469, 'Kabupaten Pulau Morotai', 0),
(470, 'Kabupaten Pulau Taliabu', 0),
(471, 'Kota Ternate', 0),
(472, 'Kota Tidore Kepulauan', 0),
(473, 'Kabupaten Merauke', 0),
(474, 'Kabupaten Jayawijaya', 0),
(475, 'Kabupaten Jayapura', 0),
(476, 'Kabupaten Nabire', 0),
(477, 'Kabupaten Kepulauan Yapen', 0),
(478, 'Kabupaten Biak Numfor', 0),
(479, 'Kabupaten Puncak Jaya', 0),
(480, 'Kabupaten Paniai', 0),
(481, 'Kabupaten Mimika', 0),
(482, 'Kabupaten Sarmi', 0),
(483, 'Kabupaten Keerom', 0),
(484, 'Kabupaten Pegunungan Bintang', 0),
(485, 'Kabupaten Yahukimo', 0),
(486, 'Kabupaten Tolikara', 0),
(487, 'Kabupaten Waropen', 0),
(488, 'Kabupaten Boven Digoel', 0),
(489, 'Kabupaten Mappi', 0),
(490, 'Kabupaten Asmat', 0),
(491, 'Kabupaten Supiori', 0),
(492, 'Kabupaten Mamberamo Raya', 0),
(493, 'Kabupaten Mamberamo Tengah', 0),
(494, 'Kabupaten Yalimo', 0),
(495, 'Kabupaten Lanny Jaya', 0),
(496, 'Kabupaten Nduga', 0),
(497, 'Kabupaten Puncak', 0),
(498, 'Kabupaten Dogiyai', 0),
(499, 'Kabupaten Intan Jaya', 0),
(500, 'Kabupaten Deiyai', 0),
(501, 'Kota Jayapura', 0),
(502, 'Kabupaten Sorong', 0),
(503, 'Kabupaten Manokwari', 0),
(504, 'Kabupaten Fak Fak', 0),
(505, 'Kabupaten Sorong Selatan', 0),
(506, 'Kabupaten Raja Ampat', 0),
(507, 'Kabupaten Teluk Bintuni', 0),
(508, 'Kabupaten Teluk Wondama', 0),
(509, 'Kabupaten Kaimana', 0),
(510, 'Kabupaten Tambrauw', 0),
(511, 'Kabupaten Maybrat', 0),
(512, 'Kabupaten Manokwari Selatan', 0),
(513, 'Kabupaten Pegunungan Arfak', 0),
(514, 'Kota Sorong', 0);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd` varchar(255) DEFAULT NULL,
  `smp` varchar(255) DEFAULT NULL,
  `smk` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `biodata_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `sd`, `smp`, `smk`, `college`, `biodata_id`) VALUES
(1, 'SD BUARAN 01', 'SMP N 04 JATIBARANG', 'SMK N 01 BREBES', 'POLITEKNIK HARAPAN BERSAMA TEGAL', 1),
(2, 'SD BUARAN 01', 'SMP N 04 JATIBARANG', 'SMK N 01 BREBES', 'POLITEKNIK HARAPAN BERSAMA TEGAL', 2),
(3, 'SD BUARAN 01', 'SMP N 04 JATIBARANG', 'SMK N 01 BREBES', 'POLITEKNIK HARAPAN BERSAMA TEGAL', 3),
(4, 'A', 'A', 'A', 'A', 5),
(5, 'A', 'A', 'A', 'A', 8);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_10_130224_create_biodatas_table', 1),
(6, '2023_11_10_130319_create_addresses_table', 1),
(7, '2023_11_10_130328_create_cities_table', 1),
(8, '2023_11_10_130339_create_provinces_table', 1),
(9, '2023_11_10_130347_create_education_table', 1),
(10, '2024_03_02_142013_create_activities_table', 1),
(11, '2024_03_03_140028_create_assets_table', 1),
(13, '2024_05_19_074031_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(2, 'view_any_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(3, 'create_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(4, 'update_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(5, 'restore_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(6, 'restore_any_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(7, 'replicate_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(8, 'reorder_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(9, 'delete_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(10, 'delete_any_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(11, 'force_delete_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(12, 'force_delete_any_activity', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(13, 'view_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(14, 'view_any_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(15, 'create_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(16, 'update_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(17, 'restore_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(18, 'restore_any_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(19, 'replicate_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(20, 'reorder_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(21, 'delete_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(22, 'delete_any_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(23, 'force_delete_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(24, 'force_delete_any_anggota::biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(25, 'view_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(26, 'view_any_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(27, 'create_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(28, 'update_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(29, 'restore_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(30, 'restore_any_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(31, 'replicate_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(32, 'reorder_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(33, 'delete_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(34, 'delete_any_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(35, 'force_delete_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(36, 'force_delete_any_assets', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(37, 'view_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(38, 'view_any_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(39, 'create_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(40, 'update_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(41, 'restore_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(42, 'restore_any_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(43, 'replicate_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(44, 'reorder_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(45, 'delete_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(46, 'delete_any_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(47, 'force_delete_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(48, 'force_delete_any_biodata', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(49, 'view_role', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(50, 'view_any_role', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(51, 'create_role', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(52, 'update_role', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(53, 'delete_role', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(54, 'delete_any_role', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(55, 'view_user', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(56, 'view_any_user', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(57, 'create_user', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(58, 'update_user', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(59, 'restore_user', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(60, 'restore_any_user', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(61, 'replicate_user', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(62, 'reorder_user', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(63, 'delete_user', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(64, 'delete_any_user', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(65, 'force_delete_user', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(66, 'force_delete_any_user', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(67, 'widget_BiodataStatsWidget', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(68, 'widget_CityAdminCart', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(69, 'widget_ExpensesDebitChart', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(70, 'widget_GenderAdminCart', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(71, 'widget_IncomesDebitChart', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18'),
(72, 'widget_StatsOverview', 'web', '2024-05-19 03:37:18', '2024-05-19 03:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `count`) VALUES
(1, 'Aceh', 0),
(2, 'Sumatera Utara', 0),
(3, 'Sumatera Barat', 0),
(4, 'Riau', 0),
(5, 'Jambi', 0),
(6, 'Sumatera Selatan', 0),
(7, 'Bengkulu', 0),
(8, 'Lampung', 0),
(9, 'Kepulauan Bangka Belitung', 0),
(10, 'Kepulauan Riau', 0),
(11, 'Dki Jakarta', 0),
(12, 'Jawa Barat', 0),
(13, 'Jawa Tengah', 1),
(14, 'Daerah Istimewa Yogyakarta', 0),
(15, 'Jawa Timur', 0),
(16, 'Banten', 0),
(17, 'Bali', 0),
(18, 'Nusa Tenggara Barat', 0),
(19, 'Nusa Tenggara Timur', 0),
(20, 'Kalimantan Barat', 0),
(21, 'Kalimantan Tengah', 0),
(22, 'Kalimantan Selatan', 0),
(23, 'Kalimantan Timur', 0),
(24, 'Kalimantan Utara', 0),
(25, 'Sulawesi Utara', 0),
(26, 'Sulawesi Tengah', 0),
(27, 'Sulawesi Selatan', 0),
(28, 'Sulawesi Tenggara', 0),
(29, 'Gorontalo', 0),
(30, 'Sulawesi Barat', 0),
(31, 'Maluku', 0),
(32, 'Maluku Utara', 0),
(33, 'Papua', 0),
(34, 'Papua Barat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-05-19 03:37:17', '2024-05-19 03:37:17'),
(2, 'admin', 'web', '2024-05-19 06:50:09', '2024-05-19 06:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'su', 'su@gmail.com', NULL, '$2y$12$KZd0ptqVp9m0eBp1blxRGunvrhrVb8n8aLqYmuWxJlmSb2Q/inY62', NULL, NULL, '2024-05-19 03:37:28', '2024-05-19 03:37:28'),
(2, 'admin', 'admin1@gmail.com', NULL, '$2y$12$Ejh8O6dXXI8osMYMkPNS7OYOongyiZNTofAEhVpp8xzKqHtaY6qB6', NULL, NULL, '2024-05-19 06:50:29', '2024-05-19 06:50:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `biodatas_nik_unique` (`nik`),
  ADD UNIQUE KEY `biodatas_email_unique` (`email`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `biodatas`
--
ALTER TABLE `biodatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
