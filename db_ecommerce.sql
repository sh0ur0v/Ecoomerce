-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 06:02 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` tinyint(4) NOT NULL DEFAULT '0',
  `category_image` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT '1',
  `deletion_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_description`, `parent_id`, `category_image`, `publication_status`, `deletion_status`, `created_at`, `updated_at`) VALUES
(3, 'Fashion', 'Fashion have three child category  mans woman kid ', 0, '', 0, 1, NULL, NULL),
(7, 'Computer', 'Category Description....', 0, '', 1, 1, NULL, NULL),
(8, 'Mobile', 'Mobile Sub Category', 0, '', 1, 1, NULL, NULL),
(10, 'Laptop', 'Laptop Sub Category Description', 7, '', 1, 1, NULL, NULL),
(11, 'Desktop', '', 7, '', 1, 1, NULL, NULL),
(12, 'Normal Mobile', 'Normal Mobile Description', 8, '', 1, 1, NULL, NULL),
(13, 'Smart Phone', 'Smart Phone Description....', 8, '', 1, 1, NULL, NULL),
(15, 'Men', 'mans is the child category of Fashion', 3, '', 1, 1, NULL, NULL),
(16, 'Women', '-----------', 3, '', 1, 1, NULL, NULL),
(17, 'Kid', '-------------', 3, 'category_image/Dv1FO63YWGjfySCqxdRF.jpg', 1, 1, NULL, NULL),
(18, 'Desktop Component', '...................................', 0, 'category_image/MsfmpBszOYcMwOcDL3Fo.png', 1, 1, NULL, NULL),
(19, 'Processor', '........................', 18, 'category_image/XBOye2qu65lvS7Nevved.jpg', 1, 1, NULL, NULL),
(20, 'Graphics Card', 'ffffffffffffffff', 18, 'category_image/1dC9nnvBZYgK2XQuOTfA.jpg', 1, 1, NULL, NULL),
(21, 'Desktop Ram', '..............................................', 18, 'category_image/b7DrsiMGQkyYTASBagv4.jpg', 1, 1, NULL, NULL),
(22, 'Mouse', '..............................................................', 18, 'category_image/KluUoGfN9P6AxaJOwgx5.png', 1, 1, NULL, NULL),
(23, 'Software', '..........', 0, 'category_image/ffwbYz8qhijBQRsLE3dA.jpg', 1, 1, NULL, NULL),
(24, 'Antivirus', '...................................................', 0, 'category_image/QbMu87yOmchbWFbrQypV.png', 0, 1, NULL, NULL),
(27, 'Antivirus software', '.........................................................................................', 23, 'category_image/keTqxzbf9gWwb7MY5XBW.jpg', 1, 1, NULL, NULL),
(28, 'Office Software', '.....................................', 23, 'category_image/KvdtyxQR7NWwKRF465cq.jpg', 1, 1, NULL, NULL),
(29, 'Monitor', '.....................................', 0, 'category_image/WuClHhzaoWJMzYrkTAX8.jpg', 1, 1, NULL, NULL),
(30, 'Led', 'Led monitor ', 29, 'category_image/pYurGIohBfhORneaADzp.jpg', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT '1',
  `deletion_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacture`
--

INSERT INTO `manufacture` (`id`, `manufacture_name`, `manufacture_description`, `publication_status`, `deletion_status`, `created_at`, `updated_at`) VALUES
(1, 'HP', 'this is description of hp', 1, 0, NULL, NULL),
(2, 'Samsung', 'this is description of Samsung', 1, 0, NULL, NULL),
(3, 'Toshiba', 'this is description of Toshiba', 1, 0, NULL, NULL),
(4, 'LG', 'this is description of LG', 1, 0, NULL, NULL),
(6, 'Asus', '---', 1, 1, NULL, NULL),
(7, 'Intel', '', 1, 1, NULL, NULL),
(9, 'Samsung Mobile', '-----------', 1, 1, NULL, NULL),
(10, 'iPhone', '', 1, 1, NULL, NULL),
(11, 'Arong', 'fashion', 1, 0, NULL, NULL),
(12, 'Dell', 'Dell laptop', 1, 1, NULL, NULL),
(13, 'Accer', 'Accer laptop', 1, 1, NULL, NULL),
(14, 'Apple', 'Apple Laptop', 1, 1, NULL, NULL),
(17, 'HP Laptop', 'HP Laptop', 1, 1, NULL, NULL),
(18, 'Lenevo', 'Lenevo ......', 1, 1, NULL, NULL),
(19, 'Gaming Pc', 'Gaming Pc .....................', 1, 1, NULL, NULL),
(20, 'Nokia', 'Nokia.....', 1, 1, NULL, NULL),
(21, 'Lava ', 'Lava Phone', 1, 1, NULL, NULL),
(22, 'Symphony ', 'Symphony phone', 1, 1, NULL, NULL),
(24, 'Samsung Galaxy', 'Galaxy phone', 1, 1, NULL, NULL),
(25, 'Walton', 'Walton pho', 1, 1, NULL, NULL),
(27, 'LG Phone', 'LG', 1, 1, NULL, NULL),
(28, 'AMD RYZEN', 'AMD RYZEN..............', 1, 1, NULL, NULL),
(29, 'ZOTAC', '..........................................', 1, 1, NULL, NULL),
(30, 'Delux', '..........................................', 1, 1, NULL, NULL),
(31, 'A4 Tech ', 'A4 Tech .....................................', 1, 1, NULL, NULL),
(32, 'Logitech', '..............................................', 1, 1, NULL, NULL),
(33, 'Huawei', 'Huawei.............', 1, 1, NULL, NULL),
(34, 'Huawei Phone', 'Huawei Phone', 1, 1, NULL, NULL),
(35, 'ZOTAC ZOTAC', '............................', 1, 0, NULL, NULL),
(36, 'ZOTAC  Graphics Card', ' Graphics Card', 1, 1, NULL, NULL),
(37, 'Ram', ' Desktop RAM', 1, 1, NULL, NULL),
(38, 'Microsoft Office', 'Microsoft Office', 1, 1, NULL, NULL),
(39, 'Antivirus Software', 'Antivirus', 1, 1, NULL, NULL),
(40, 'Kaspersky Antivirus', 'Kaspersky ', 1, 1, NULL, NULL),
(41, 'LG monitor', '.....................................', 1, 1, NULL, NULL),
(42, 'Dell Monitor', 'Dell', 1, 1, NULL, NULL),
(45, 'HP2', 'hp monitor', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2016_10_11_155208_create_category_table', 1),
(35, '2016_10_13_134724_create_manufacture_table', 1),
(36, '2016_10_13_141957_create_product_table', 1),
(37, '2016_10_16_132037_create_admin_table', 2),
(38, '2017_07_20_081421_create_tbl_customer_table', 3),
(39, '2018_01_01_092637_create_tbl_shipping_table', 4),
(40, '2018_01_01_101131_create_tbl_shipping2_table', 5),
(41, '2018_01_02_140513_create_tbl_payment_table', 6),
(42, '2018_01_02_140615_create_tbl_order_table', 6),
(43, '2018_01_02_140741_create_tbl_order_details_table', 6),
(44, '2018_01_03_174132_create_tbl_cart_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `new_price` double(8,2) NOT NULL,
  `old_price` double(8,2) NOT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT '1',
  `deletion_status` tinyint(4) NOT NULL DEFAULT '1',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL,
  `product_status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `category_id`, `manufacture_id`, `short_description`, `long_description`, `new_price`, `old_price`, `publication_status`, `deletion_status`, `is_featured`, `stock`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Asus XL9000', 10, 6, '-------------', '-------------', 35000.00, 32000.00, 0, 1, 1, 10, NULL, NULL, NULL),
(7, 'Lenevo X123', 10, 6, 'Lenevo computer ', 'Lenevo laptop', 46500.00, 48500.00, 1, 1, 1, 15, NULL, NULL, NULL),
(8, 'Dell Inspiron n3162 11.6', 10, 12, 'Dell Inspiron n3467 7th Gen i3 14\" Laptop\r\nIntel® Core™ i3-7100U Processor (3M Cache, 2.40 GHz)\r\n4GB DDR4 2133MHz\r\n1TB 5400 rpm Hard Drive\r\nIntel® HD Graphics 620\r\n14.0-inch HD (1366 x 768) Anti-Glare LED-Backlit Display\r\nBluetooth, DVD Optical Drive, Webcam, Audio\r\nPrimary 2-cell Battery\r\nColor -  Black/ Blue Glossy', 'Product Code:	DELL INSPIRON 14-3467 i3 7th Gen\r\nBrand:	Dell\r\nLaptop & Notebook\r\nProcessor	Intel® Core™ i3-7100U Processor (3M Cache, 2.40 GHz)\r\nMemory	4GB DDR4 2133MHz\r\nStorage	1TB 5400 rpm Hard Drive\r\nGraphics	Intel® HD Graphics 620\r\nDisplay	14.0-inch HD (1366 x 768) Anti-Glare LED-Backlit Display\r\nAudio	High Definition Audio with Waves MaxxAudio Pro II 1 combo headphone / microphone jack II\r\nWeb Camera	Integrated Widescreen HD (720p) Webcam with Digital Microphone\r\nNetworking	10/100 Ethernet LAN, Dell(TM) Wireless 1704 802.11b/g/n with Bluetooth v4.0\r\nBattery	Primary 2-cell Battery\r\nOperating system	Free DOS', 34800.00, 36800.00, 1, 1, 1, 10, NULL, NULL, NULL),
(9, 'Acer Aspire F5-573 7th Gen i3 15.6', 10, 13, 'Intel® Core™ i3-7100U Processor (3M Cache, 2.40 GHz)\r\n4 GB DDR4 SDRAM\r\n1TB HDD, DVD-Writer\r\n15.6\" LCD ComfyView Full HD LED Screen\r\nIntel® HD Graphics 620\r\nGigabit Ethernet,Wi-Fi, Bluetooth, Card Reader, HD Webcam ,\r\nHDMI-Yes, USB 2.0 Ports-1, USB 3.0 Ports-2, USB Connector Type-Type-C, Network (RJ-45)-Yes\r\n4-cell Lithium Ion (Li-Ion) with 12 Hours Battery Backup\r\n', 'Product Code:	DELL INSPIRON 14-3467 i3 7th Gen\r\nBrand:	Acer\r\nProcessor	Intel® Core™ i3-7100U Processor (3M Cache, 2.40 \r\n                         GHz)\r\nMemory	4 GB DDR4 SDRAM\r\nStorage	1TB HDD\r\nGraphics	Intel® HD Graphics 620', 36500.00, 37500.00, 1, 1, 1, 10, NULL, NULL, NULL),
(11, 'Apple Macbook Air 11.6 inch Core i5,', 10, 14, 'Apple Macbook Air 11.6 inch Core i5, 4GB Ram, 256GB SSD MJVP2P/A (2015)\r\nIntel Core i5 (1.6 GHz Turbo Boost up to 2.7 GHz) with 3 MB shared L3 cache\r\n4 GB of 1600 MHz LPDDR3 RAM\r\n256GB PCIe-based SSD\r\n11.6-Inch (diagonal) LED-backlit Glossy Widescreen Display\r\n1366 x 768 resolution\r\nIntel HD Graphics 6000\r\nOS X Yosemite\r\nFaceTime HD camera for video calls\r\nUp to 9 Hours of Battery Life\r\n802.11ac Wi-Fi and Bluetooth 4.0', 'Apple Macbook Air 11.6 inch Core i5, 4GB Ram, 256GB SSD MJVP2P/A (2015)\r\nIntel Core i5 (1.6 GHz Turbo Boost up to 2.7 GHz) with 3 MB shared L3 cache\r\n4 GB of 1600 MHz LPDDR3 RAM\r\n256GB PCIe-based SSD\r\n11.6-Inch (diagonal) LED-backlit Glossy Widescreen Display\r\n1366 x 768 resolution\r\nIntel HD Graphics 6000\r\nOS X Yosemite\r\nFaceTime HD camera for video calls\r\nUp to 9 Hours of Battery Life\r\n802.11ac Wi-Fi and Bluetooth 4.0', 89000.00, 99000.00, 1, 1, 1, 10, NULL, NULL, NULL),
(12, 'HP X360 11-ab002tu Celeron Dual Core 11.6', 10, 17, 'HP X360 11-ab002tu Celeron Dual Core 11.6\" Notebook\r\n\r\nIntel® Celeron® N3060 (1.6 GHz, up to 2.48 GHz, 2 MB cache, 2 cores)\r\n4 GB DDR3L-1600 SDRAM (1 x 4 GB)\r\n500 GB 5400 rpm SATA\r\nIntel® HD Graphics 400\r\n11.6-inch Multi touch - enabled WLED-Backlit\r\nwebcam, gigabit LAN, bluetooth, wi-fi, card reader\r\nColor: Black\r\n4 cell li-ion battery with 3.5 hours backup\r\nCarry case', 'Product Code:	HP X360 11-ab002tu\r\nBrand:	HP\r\nLaptop & Notebook\r\nProcessor	Intel® Celeron® N3060 (1.6 GHz, up to 2.48 GHz, 2 MB cache, 2 cores)\r\nMemory	4 GB DDR3L-1600 SDRAM (1 x 4 GB)\r\nStorage	500 GB 5400 rpm SATA\r\nGraphics	Intel® HD Graphics 400\r\nDisplay	11.6-inch Multi touch - enabled WLED-Backlit\r\nAudio	Dual speakers; DTS Studio Sound™\r\nWeb Camera	HP Webcam with integrated digital microphone\r\nNetworking	Intel® 802.11ac (1x1) Wi-Fi® and Bluetooth® 4.2 Combo (Miracast compatible)\r\nInterface	1 HDMI; 1 headphone/microphone combo; 2 USB 2.0; 1 USB 3.1\r\nBattery	3-cell, 41 Wh Li-ion with 3.5 Hours Backup\r\nOperating system	Windows 10 Home 64', 29700.00, 30700.00, 1, 1, 1, 10, NULL, NULL, NULL),
(13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 11, 6, 'ASUS ET2030IUT Pentium Dual Core 19.5\" Touch All-in-One PC\r\n\r\nProcessor	Intel® Pentium® G3250T Processor (Pentium Dual Core), 2.80 GHz\r\nCache Memory	3 MB Cache\r\nGraphics	Intel HD Graphic\r\nChipset	Intel® H81\r\nMemory/RAM	4 GB, DDR3 at 1333MHz, 2 x SO-DIMM\r\nStorage	500GB SATA Hard Drive\r\nMonitor	19.5\"(49.5cm), 16:9, HD+ 1600 x 900, LED-backlight, Multi-touch (10 Fingers Touch)\r\nOptical Drive	Tray-in SuperMulti DVD\r\nCamera	1.0 M Pixel\r\nAudio	Sonic Master, 2 x 2 W speaker\r\nPower Supply	90 W Power adaptor\r\nDimension	477 x 378.3 x 47.9 ~180.9 mm (WxHxD)\r\nWeight	7.81 kg\r\nOS	Free DOS\r\nColor	Black', 'ASUS ET2030IUT Pentium Dual Core 19.5\" Touch All-in-One PC\r\n\r\nProcessor	Intel® Pentium® G3250T Processor (Pentium Dual Core), 2.80 GHz\r\nCache Memory	3 MB Cache\r\nGraphics	Intel HD Graphic\r\nChipset	Intel® H81\r\nMemory/RAM	4 GB, DDR3 at 1333MHz, 2 x SO-DIMM\r\nStorage	500GB SATA Hard Drive\r\nMonitor	19.5\"(49.5cm), 16:9, HD+ 1600 x 900, LED-backlight, Multi-touch (10 Fingers Touch)\r\nOptical Drive	Tray-in SuperMulti DVD\r\nCamera	1.0 M Pixel\r\nAudio	Sonic Master, 2 x 2 W speaker\r\nPower Supply	90 W Power adaptor\r\nDimension	477 x 378.3 x 47.9 ~180.9 mm (WxHxD)\r\nWeight	7.81 kg\r\nOS	Free DOS\r\nColor	Black', 45000.00, 45500.00, 1, 1, 1, 10, NULL, NULL, NULL),
(14, 'Lenovo ThinkCentre M700 i3-6th Gen Brand Tower PC', 11, 18, 'Lenovo ThinkCentre M700, Processor: 6th Gen. Intel Core i3-6th Gen 6100 (3.70GHz, 3MB) ǁ Chipset: Intel H110 ǁ Memory: 4GB (1x4GB) DDR4 2133 MHz ǁ Hard Drive: 1TB 7200 RPM ǁ DVD+/-RW: 16X DVD+/-RW ǁ Monitor: Lenovo E2054 19.5\" IPS ǁ Mouse: Lenovo USB Optical Mouse ǁ Keyboard: Lenovo USB Keyboard ǁ Graphics: Intel HD Graphics 530 ǁ OS: DOS. 03 Years Warranty', 'Lenovo ThinkCentre M700, Processor: 6th Gen. Intel Core i3-6th Gen 6100 (3.70GHz, 3MB) ǁ Chipset: Intel H110 ǁ Memory: 4GB (1x4GB) DDR4 2133 MHz ǁ Hard Drive: 1TB 7200 RPM ǁ DVD+/-RW: 16X DVD+/-RW ǁ Monitor: Lenovo E2054 19.5\" IPS ǁ Mouse: Lenovo USB Optical Mouse ǁ Keyboard: Lenovo USB Keyboard ǁ Graphics: Intel HD Graphics 530 ǁ OS: DOS. 03 Years Warranty', 34800.00, 35500.00, 1, 1, 1, 10, NULL, NULL, NULL),
(15, 'RYZEN Gaming & Graphics PC 07', 11, 19, 'RYZEN Gaming & Graphics PC 07\r\nAMD RYZEN  R7 1700 PROCESSOR \r\nProcessor Speed: 16MB Cache, 3.0 GHz\r\nASRock Fatal1ty X370 Gaming K4 Motherboard\r\nGEIL EVO-X 16GB(8GBx2) 2400 MHz RGB RAM \r\nWestern Digital 1 TB HDD \r\nSAPPHIR Nitro+  RX 580 limited Edition 8GB DDR-5 \r\nASUS 24X Optical Disk Drive\r\nAntec GX330 Mid Tower Window White Gaming Casing\r\nANTEC EARTHWATTS EA550G 80+ Gold Power Supply \r\nLogitech USB Keyboard & Mouse', 'RYZEN Gaming & Graphics PC 07\r\nAMD RYZEN  R7 1700 PROCESSOR \r\nProcessor Speed: 16MB Cache, 3.0 GHz\r\nASRock Fatal1ty X370 Gaming K4 Motherboard\r\nGEIL EVO-X 16GB(8GBx2) 2400 MHz RGB RAM \r\nWestern Digital 1 TB HDD \r\nSAPPHIR Nitro+  RX 580 limited Edition 8GB DDR-5 \r\nASUS 24X Optical Disk Drive\r\nAntec GX330 Mid Tower Window White Gaming Casing\r\nANTEC EARTHWATTS EA550G 80+ Gold Power Supply \r\nLogitech USB Keyboard & Mouse', 105250.00, 107250.00, 1, 1, 1, 5, NULL, NULL, NULL),
(16, 'HP AIO ProOne 400 G2 i3 TOUCH PC', 11, 17, 'HP AIO ProOne 400 G2 i3 TOUCH PC\r\n\r\nIntel® Core™ i3-6100T Processor (3M Cache, 3.20 GHz)\r\nIntel H110 Chipset Main Board\r\n4GB RAM DDR4\r\n1TB SATA HDD\r\n20 inch Display TOUCH\r\nIntegrated Graphics\r\nDVD-RW, WiFi, Web Cam, CARD READER\r\nUSB KB & OPTICAL MOUSE\r\nWIN 10 LICENSE 64 BIT\r\n1 Year Warranty', 'HP AIO ProOne 400 G2 i3 TOUCH PC\r\n\r\nIntel® Core™ i3-6100T Processor (3M Cache, 3.20 GHz)\r\nIntel H110 Chipset Main Board\r\n4GB RAM DDR4\r\n1TB SATA HDD\r\n20 inch Display TOUCH\r\nIntegrated Graphics\r\nDVD-RW, WiFi, Web Cam, CARD READER\r\nUSB KB & OPTICAL MOUSE\r\nWIN 10 LICENSE 64 BIT\r\n1 Year Warranty', 56000.00, 57000.00, 1, 1, 1, 5, NULL, NULL, NULL),
(17, 'Dell Inspiron 5459 i5 4GB GFX Full HD TOUCH All-in-One PC', 11, 12, 'Dell Inspiron 5459 i5 4GB GFX Full HD TOUCH All-in-One PC\r\n6th Generation Intel® Core™ i5-6400T Processor (6M Cache, 2.80 GHz)\r\n8GB Dual Channel DDR3L 1600MHz (4GBx2)\r\nNVIDIA(R) GeForce 930M 4GB GDDR3\r\n1TB 5400 rpm Hard Drive\r\n23.8-inch FHD (1920x1080) Truelife LED-Backlit Touch Display with Wide Viewing Angle (IPS)\r\nTray load DVD Drive (Reads and Writes to DVD/CD)\r\nIntegrated Audio with Waves MaxxAudio® Pro\r\nDell Wireless Keyboard and Mouse-KM636\r\nUSB 2.0 X 4, USB 3.0 X 2, HDMI, Bluetooth 4.0, Card Reader\r\nFree DOS\r\nColor- Black\r\n2-years limited warranty', 'Dell Inspiron 5459 i5 4GB GFX Full HD TOUCH All-in-One PC\r\n6th Generation Intel® Core™ i5-6400T Processor (6M Cache, 2.80 GHz)\r\n8GB Dual Channel DDR3L 1600MHz (4GBx2)\r\nNVIDIA(R) GeForce 930M 4GB GDDR3\r\n1TB 5400 rpm Hard Drive\r\n23.8-inch FHD (1920x1080) Truelife LED-Backlit Touch Display with Wide Viewing Angle (IPS)\r\nTray load DVD Drive (Reads and Writes to DVD/CD)\r\nIntegrated Audio with Waves MaxxAudio® Pro\r\nDell Wireless Keyboard and Mouse-KM636\r\nUSB 2.0 X 4, USB 3.0 X 2, HDMI, Bluetooth 4.0, Card Reader\r\nFree DOS\r\nColor- Black\r\n2-years limited warranty', 92000.00, 92500.00, 1, 1, 1, 5, NULL, NULL, NULL),
(18, 'Nokia 230', 12, 20, 'ROM	Phonebook- 1000 entries \r\nDisplay-Size	2.8 inches \r\nCamera	Rear: 2 MP, Front: 2 MP \r\nInternet	Yes \r\nFM-Radio	Stereo FM radio \r\nAudio-Player	MP3/WAV/AAC player \r\nVideo-Player	MP4/H.264 player \r\nMemory-Card	microSD, up to 32 GB \r\nBluetooth	v3.0, A2DP \r\nWeight	91.8 g (3.25 oz) \r\nDisplay-Type	TFT, 65K colors \r\nTalk-Time	Up to 23 h ', 'ROM	Phonebook- 1000 entries \r\nDisplay-Size	2.8 inches \r\nCamera	Rear: 2 MP, Front: 2 MP \r\nInternet	Yes \r\nFM-Radio	Stereo FM radio \r\nAudio-Player	MP3/WAV/AAC player \r\nVideo-Player	MP4/H.264 player \r\nMemory-Card	microSD, up to 32 GB \r\nBluetooth	v3.0, A2DP \r\nWeight	91.8 g (3.25 oz) \r\nDisplay-Type	TFT, 65K colors \r\nTalk-Time	Up to 23 h ', 5600.00, 6000.00, 1, 1, 1, 10, NULL, NULL, NULL),
(19, 'Nokia 105 Dual SIM', 12, 20, 'Display-Size	1.45 inches \r\nCamera	No \r\nFM-Radio	Yes \r\nMemory-Card	No \r\nBluetooth	No \r\nWeight	69.6 g (2.47 oz) \r\nDisplay-Type	TFT, 65K colors \r\nTalk-Time	Up to 15 h \r\nStand-By	Up to 600 h \r\nBrowser	No ', 'Display-Size	1.45 inches \r\nCamera	No \r\nFM-Radio	Yes \r\nMemory-Card	No \r\nBluetooth	No \r\nWeight	69.6 g (2.47 oz) \r\nDisplay-Type	TFT, 65K colors \r\nTalk-Time	Up to 15 h \r\nStand-By	Up to 600 h \r\nBrowser	No ', 1890.00, 2000.00, 1, 1, 1, 5, NULL, NULL, NULL),
(20, 'Lava KKT 29', 12, 21, 'ROM	Unknown \r\nDisplay-Size	2.4 Inch \r\nOS	Proprietary OS \r\nCamera	0.3 Megapixels \r\nInternet	Unknown \r\nFM-Radio	Wireless FM With FM Recording \r\nAudio-Player	WAV, AAC, AMR, MP3, MIDI \r\nVideo-Player	3GP, MP4, AVI \r\nMemory-Card	MicroSD Upto 16 GB \r\nBluetooth	Yes \r\nWeight	Unknown \r\nDisplay-Type	TFT Transmissive \r\nTalk-Time	10 Hrs \r\nStand-By	350 Hrs ', 'ROM	Unknown \r\nDisplay-Size	2.4 Inch \r\nOS	Proprietary OS \r\nCamera	0.3 Megapixels \r\nInternet	Unknown \r\nFM-Radio	Wireless FM With FM Recording \r\nAudio-Player	WAV, AAC, AMR, MP3, MIDI \r\nVideo-Player	3GP, MP4, AVI \r\nMemory-Card	MicroSD Upto 16 GB \r\nBluetooth	Yes \r\nWeight	Unknown \r\nDisplay-Type	TFT Transmissive \r\nTalk-Time	10 Hrs \r\nStand-By	350 Hrs ', 1500.00, 1700.00, 1, 1, 1, 5, NULL, NULL, NULL),
(22, 'Lava KKT', 12, 21, 'ROM	Unknown \r\nDisplay-Size	2.4 Inch \r\nOS	Proprietary OS \r\nCamera	0.3 Megapixels \r\nInternet	Unknown \r\nFM-Radio	Wireless FM With FM Recording \r\nAudio-Player	WAV, AAC, AMR, MP3, MIDI \r\nVideo-Player	3GP, MP4, AVI ', 'ROM	Unknown \r\nDisplay-Size	2.4 Inch \r\nOS	Proprietary OS \r\nCamera	0.3 Megapixels \r\nInternet	Unknown \r\nFM-Radio	Wireless FM With FM Recording \r\nAudio-Player	WAV, AAC, AMR, MP3, MIDI \r\nVideo-Player	3GP, MP4, AVI ', 1500.00, 1700.00, 1, 1, 1, 6, NULL, NULL, NULL),
(23, 'Lava KKT 2', 12, 21, 'ROM	Unknown \r\nDisplay-Size	2.4 Inch \r\nOS	Proprietary OS \r\nCamera	0.3 Megapixels \r\nInternet	Unknown \r\nFM-Radio	Wireless FM With FM Recording \r\nAudio-Player	WAV, AAC, AMR, MP3, MIDI \r\nVideo-Player	3GP, MP4, AVI ', 'ROM	Unknown \r\nDisplay-Size	2.4 Inch \r\nOS	Proprietary OS \r\nCamera	0.3 Megapixels \r\nInternet	Unknown \r\nFM-Radio	Wireless FM With FM Recording \r\nAudio-Player	WAV, AAC, AMR, MP3, MIDI \r\nVideo-Player	3GP, MP4, AVI ', 1500.00, 1700.00, 1, 1, 1, 7, NULL, NULL, NULL),
(24, 'Symphony D52i', 12, 22, 'ROM	64 Mb Flash \r\nDisplay-Size	2.4 Inches \r\nOS	Unknown \r\nCamera	0.3 MP \r\nInternet	EDGE \r\nFM-Radio	Yes \r\nAudio-Player	MP3 \r\nVideo-Player	MP4 \r\nMemory-Card	Expandable up to 16 GB ', 'ROM	64 Mb Flash \r\nDisplay-Size	2.4 Inches \r\nOS	Unknown \r\nCamera	0.3 MP \r\nInternet	EDGE \r\nFM-Radio	Yes \r\nAudio-Player	MP3 \r\nVideo-Player	MP4 \r\nMemory-Card	Expandable up to 16 GB ', 1580.00, 1650.00, 1, 1, 1, 4, NULL, NULL, NULL),
(25, 'Symphony B12', 12, 22, 'ROM	32 Mb + 24 Mb \r\nDisplay-Size	1.77 Inch \r\nOS	Unknown \r\nCamera	0.08 MP \r\nInternet	No \r\nFM-Radio	Yes \r\nAudio-Player	MP3 \r\nVideo-Player	MP4 \r\nMemory-Card	Expandable up to 8GB \r\nBluetooth	Yes ', 'ROM	32 Mb + 24 Mb \r\nDisplay-Size	1.77 Inch \r\nOS	Unknown \r\nCamera	0.08 MP \r\nInternet	No \r\nFM-Radio	Yes \r\nAudio-Player	MP3 \r\nVideo-Player	MP4 \r\nMemory-Card	Expandable up to 8GB \r\nBluetooth	Yes ', 998.00, 1050.00, 1, 1, 1, 7, NULL, NULL, NULL),
(26, 'Nokia 3310', 12, 20, 'ROM	16 MB \r\nDisplay-Size	2.4 Inches \r\nOS	Nokia Series 30+ \r\nCamera	2MP, LED Flash \r\nFM-Radio	Yes \r\nAudio-Player	Yes \r\nVideo-Player	Yes \r\nMemory-Card	microSD, up to 32 GB (dedicated slot) ', 'ROM	16 MB \r\nDisplay-Size	2.4 Inches \r\nOS	Nokia Series 30+ \r\nCamera	2MP, LED Flash \r\nFM-Radio	Yes \r\nAudio-Player	Yes \r\nVideo-Player	Yes \r\nMemory-Card	microSD, up to 32 GB (dedicated slot) ', 2500.00, 2700.00, 1, 1, 1, 3, NULL, NULL, NULL),
(27, 'Samsung Galaxy J7 Max', 13, 24, 'Network Scope	2G, 3G, 4G\r\nCamera Resolution (Back)	13 Megapixel\r\nCamera Resolution (Front)	13 Megapixel (F/1.9, LED flash)\r\nProcessor	Octa-core, 2.4 GHz\r\nRAM	4 GB\r\nROM	32 GB', 'Network Scope	2G, 3G, 4G\r\nCamera Resolution (Back)	13 Megapixel\r\nCamera Resolution (Front)	13 Megapixel (F/1.9, LED flash)\r\nProcessor	Octa-core, 2.4 GHz\r\nRAM	4 GB\r\nROM	32 GB', 25900.00, 26500.00, 1, 1, 1, 12, NULL, NULL, NULL),
(28, 'Intel Kaby Lake Core i3 7100 3.90GHz 3MB Cache LGA1151 7th Gen.Processor', 19, 7, 'Model - Intel Kaby Lake Core i3 7100\r\nCode-Name - Kaby Lake\r\nGeneration - 7th\r\nBase Frequency - 3.90 GHz\r\nSmart Cache - 3 MB\r\nTDP - 51 W\r\nMemory Max. - 64 GB', 'Model - Intel Kaby Lake Core i3 7100\r\nCode-Name - Kaby Lake\r\nGeneration - 7th\r\nBase Frequency - 3.90 GHz\r\nSmart Cache - 3 MB\r\nTDP - 51 W\r\nMemory Max. - 64 GB', 9200.00, 9500.00, 1, 1, 1, 5, NULL, NULL, NULL),
(29, 'Intel Kaby Lake Core i7 7700 3.60-4.20GHz 8MB Cache LGA1151 7th Gen.Processor', 19, 7, 'Model - Intel Kaby Lake Core i7 7700\r\nCode-Name - Kaby Lake\r\nGeneration - 7th\r\nBase Frequency - 3.60 GHz\r\nTurbo Frequency Max. - 4.20 GHz\r\nSmart Cache - 8 MB\r\nTDP - 65 W\r\nMemory Max. - 64 GB\r\nMemory Type - DDR4-2133/2400, DDR3L-1333/1600 @ 1.35V', 'Model - Intel Kaby Lake Core i7 7700\r\nCode-Name - Kaby Lake\r\nGeneration - 7th\r\nBase Frequency - 3.60 GHz\r\nTurbo Frequency Max. - 4.20 GHz\r\nSmart Cache - 8 MB\r\nTDP - 65 W\r\nMemory Max. - 64 GB\r\nMemory Type - DDR4-2133/2400, DDR3L-1333/1600 @ 1.35V', 25300.00, 25600.00, 1, 1, 1, 3, NULL, NULL, NULL),
(30, 'AMD RYZEN 7 1800X 3.6-4.0 GHz 8-Core 16MB Cache 95W AM4 Turbo Processor', 19, 28, 'Model - AMD RYZEN 7 1800X\r\nCode-Name - Zen\r\nBase Frequency - 3.6 GHz\r\nTurbo Frequency Max. - 4.0 GHz\r\nTDP - 95 W\r\nMemory Type - DDR4\r\nSockets Supported - AM4', 'Model - AMD RYZEN 7 1800X\r\nCode-Name - Zen\r\nBase Frequency - 3.6 GHz\r\nTurbo Frequency Max. - 4.0 GHz\r\nTDP - 95 W\r\nMemory Type - DDR4\r\nSockets Supported - AM4', 44200.00, 45200.00, 1, 1, 1, 4, NULL, NULL, NULL),
(31, 'Intel Kaby Lake Core i5 7400 3.00-3.50GHz 6MB Cache LGA1151 7th Gen.Processor', 19, 7, 'Code-Name - Kaby Lake\r\nGeneration - 7th\r\nBase Frequency - 3.00 GHz\r\nTurbo Frequency Max. - 3.50 GHz\r\nSmart Cache - 6MB\r\nTDP - 65 W\r\nMemory Max. - 64 GB\r\nMemory Type - DDR4-2133/2400, DDR3L-1333/1600 @ 1.35V', 'Code-Name - Kaby Lake\r\nGeneration - 7th\r\nBase Frequency - 3.00 GHz\r\nTurbo Frequency Max. - 3.50 GHz\r\nSmart Cache - 6MB\r\nTDP - 65 W\r\nMemory Max. - 64 GB\r\nMemory Type - DDR4-2133/2400, DDR3L-1333/1600 @ 1.35V', 15000.00, 15500.00, 1, 1, 1, 4, NULL, NULL, NULL),
(32, 'Delux DLM-102 Optical Mouse', 22, 30, 'Model - Delux DLM-102, Type - Optical, Connectivity - Wired, Wheel - Yes, Warranty - 1 year', 'Model - Delux DLM-102, Type - Optical, Connectivity - Wired, Wheel - Yes, Warranty - 1 year', 350.00, 400.00, 1, 1, 0, 30, NULL, NULL, NULL),
(33, 'A4 Tech G3-200N White Wireless Mouse', 22, 31, 'Model - A4 Tech G3-200N, Type - Wireless Mouse, Connectivity - Wireless, Wheel - Yes, Feature - Novelty, Mouse DPI:1000, Others - Color: White, Wireless Range: 10 Meter, Warranty - No', 'Model - A4 Tech G3-200N, Type - Wireless Mouse, Connectivity - Wireless, Wheel - Yes, Feature - Novelty, Mouse DPI:1000, Others - Color: White, Wireless Range: 10 Meter, Warranty - No', 600.00, 650.00, 1, 1, 1, 3, NULL, NULL, NULL),
(34, 'HP Z3700 Black Wireless Mouse', 22, 17, 'Model - HP Z3700, Type - Wireless Mouse, Connectivity - Wireless, 2X Click - Yes, Feature - OS: Windows Vista/7/8/10, Others - Color: Black, Warranty - 1 year', 'Model - HP Z3700, Type - Wireless Mouse, Connectivity - Wireless, 2X Click - Yes, Feature - OS: Windows Vista/7/8/10, Others - Color: Black, Warranty - 1 year', 850.00, 800.00, 1, 1, 1, 8, NULL, NULL, NULL),
(35, 'Asus ZenFone 3s Max', 13, 6, 'Network Scope	2G, 3G, 4G\r\nCamera Resolution (Back)	13 Megapixel\r\nCamera Resolution (Front)	5 Megapixel (BSI, auto face recognition, LED flash, HDR, face beauty)\r\nColors Available	Coffee, Golden, Black\r\nDisplay Size & Resolution	5.5 inches, HD 1280 x 720 Pixels\r\nDisplay Type	IPS Touchscreen, 2.5D curved glass\r\nGraphics processing unit (GPU)	Mail 400\r\nMemory Card Slot	MicroSD, up to 64 GB\r\nOperating System	Android Nougat v7.0\r\nProcessor	Quad-core, 1.3 GHz', 'Network Scope	2G, 3G, 4G\r\nCamera Resolution (Back)	13 Megapixel\r\nCamera Resolution (Front)	5 Megapixel (BSI, auto face recognition, LED flash, HDR, face beauty)\r\nColors Available	Coffee, Golden, Black\r\nDisplay Size & Resolution	5.5 inches, HD 1280 x 720 Pixels\r\nDisplay Type	IPS Touchscreen, 2.5D curved glass\r\nGraphics processing unit (GPU)	Mail 400\r\nMemory Card Slot	MicroSD, up to 64 GB\r\nOperating System	Android Nougat v7.0\r\nProcessor	Quad-core, 1.3 GHz', 7790.00, 8000.00, 1, 1, 1, 4, NULL, NULL, NULL),
(38, 'Huawei Y6II Prime', 13, 34, 'Camera Factors (Back)	Autofocus, LED flash, f/2.0 aperture, 28mm, HDR, auto face recognition, panorama mode\r\nCamera Resolution (Back)	13 Megapixel\r\nCamera Resolution (Front)	8 Megapixel (f/2.0, Full HD video rec.)\r\nChipset	HiSilicon Kirin 620\r\nColors Available	Black, Gold, Grey, Yellow, Pink, Blue', 'Camera Factors (Back)	Autofocus, LED flash, f/2.0 aperture, 28mm, HDR, auto face recognition, panorama mode\r\nCamera Resolution (Back)	13 Megapixel\r\nCamera Resolution (Front)	8 Megapixel (f/2.0, Full HD video rec.)\r\nChipset	HiSilicon Kirin 620\r\nColors Available	Black, Gold, Grey, Yellow, Pink, Blue', 16900.00, 17000.00, 1, 1, 1, 7, NULL, NULL, NULL),
(39, 'ZOTAC GeForce GT 1030 2GB GDDR5 Graphics Card', 20, 36, 'Chipset - NVIDIA GeForce\r\nGraphics Engine Model - ZOTAC GeForce GT 1030\r\nInterface Bus - PCI Express 3.0\r\nMemory Size - 2GB\r\nRecommended PSU - 300W\r\nMulti Display Capability - Dual Display\r\nHDCP Support - Yes\r\nCooling Fan - Single\r\nSupported OS - Windows 7, 8, 10', 'Chipset - NVIDIA GeForce\r\nGraphics Engine Model - ZOTAC GeForce GT 1030\r\nInterface Bus - PCI Express 3.0\r\nMemory Size - 2GB\r\nRecommended PSU - 300W\r\nMulti Display Capability - Dual Display\r\nHDCP Support - Yes\r\nCooling Fan - Single\r\nSupported OS - Windows 7, 8, 10', 7300.00, 7000.00, 1, 1, 0, 10, NULL, NULL, NULL),
(40, 'Patriot 4GB DDR4 2400 BUS Desktop RAM', 21, 37, 'Model - Patriot\r\nCapacity(MB) - 4GB\r\nType - DDR4', 'Model - Patriot\r\nCapacity(MB) - 4GB\r\nType - DDR4', 7300.00, 7300.00, 1, 1, 1, 3, NULL, NULL, NULL),
(41, 'Microsoft Office 365 Personal 32-bit/x64 English Subscription 1Year APAC EM Medialess', 28, 38, 'Model - Microsoft Office 365\r\nSoftware Type - Application\r\nUser Limit - 1 Desktop + 1 Tablet + 1 Mobile', 'Model - Microsoft Office 365\r\nSoftware Type - Application\r\nUser Limit - 1 Desktop + 1 Tablet + 1 Mobile', 4100.00, 4100.00, 1, 1, 1, 4, NULL, NULL, NULL),
(42, 'Kaspersky 2017 Internet Security 1 User', 27, 40, 'Kaspersky 2017 Internet Security 1 User', 'Kaspersky 2017 Internet Security 1 User', 3200.00, 3200.00, 1, 1, 1, 5, NULL, NULL, NULL),
(43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 29, 41, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 12000.00, 1, 1, 1, 5, NULL, NULL, NULL),
(44, 'HP 23.8-inch FHD IPS Monitor with Tilt/Height Adjustment and Built-in Speakers (VH240a, Black)', 30, 45, 'Monitor: 23.8-inch diagonal Full HD (1920x1080) micro-edge IPS; An ultra-wide viewing experience provides for seamless multi-monitor set-ups.\r\nResolution and aspect ratio: Full HD and 16:9; 2 million pixels for crystal-clear visuals and vibrant image quality.', 'Response time and refresh rate: 5ms and 60Hz; Get a smooth picture that looks crisp and fluid without motion blur.\r\nPorts: HDMI, VGA, and HDCP support help you stay connected.\r\nAudio: integrated speakers; Get great audio built right in from the integrated speakers.\r\nEnvironmental features: Mercury-free LED backlighting, Arsenic-free monitor glass, and the low-voltage halogen design promote energy efficiency.', 8800.00, 9000.00, 1, 1, 1, 10, NULL, NULL, NULL),
(45, 'Planar PLL2410W 24\" Widescreen LED LCD Monitor', 30, 6, 'Viewable Size: 23.6\" diagonal (20.52\" horizontal x 11.54\" vertical)\r\nAspect Ratio: 16:9', 'Display Type: Edge-Lit LED LCD\r\nVideo Inputs: Digital (DVI-D), Analog (VGA)\r\nDisplay Resolution: 1920 x 1080, full HD', 8000.00, 8200.00, 1, 1, 1, 10, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_lavel` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `admin_name`, `admin_email`, `admin_password`, `admin_lavel`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NAHID', 'nahid@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0, NULL, NULL, NULL),
(4, 'Riad', 'riad@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, NULL, NULL, NULL),
(6, 'xyz', 'xyz@gmail.com', 'd16fb36f0911f878998c136191af705e', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `first_name`, `last_name`, `company_name`, `email_address`, `password`, `address`, `mobile`, `city`, `zip_code`, `country`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Md. Habibur', 'Rahman', 'pstu', 'habiburrahmanriad38@gmail.com', '', 'patuakhali science & technology university', '1829674692', 'patuakhali', 'USA', '8602', NULL, NULL, NULL),
(4, 'mostakim', 'hyder', 'pstu', 'shawki@gmail.com', '', 'patuakhali science & technology university', '12345', 'dhaka', 'Australia', '12345', NULL, NULL, NULL),
(8, 'mostakim', 'hyder', 'pstu', 'shawki@gmail.com', '', 'patuakhali science & technology university', '12345', 'dhaka', 'Australia', '12345', NULL, NULL, NULL),
(9, 'mostakim', 'hyder', 'pstu', 'shawki@gmail.com', '', 'patuakhali science & technology university', '12345', 'dhaka', 'Australia', '12345', NULL, NULL, NULL),
(10, 'mostakim', 'hyder', 'pstu', 'shawki@gmail.com', '', 'patuakhali science & technology university', '12345', 'dhaka', 'Australia', '12345', NULL, NULL, NULL),
(11, '', '', '', '', '', '', '', '', 'USA', '', NULL, NULL, NULL),
(12, 'wasi', 'sadman', 'pstu', 'ador@gmail.com', '12345', 'pstu', '12345', 'pstu', 'Australia', '12345', NULL, NULL, NULL),
(13, 'sanzid', 'imran', 'pstu', 'sanzid@gmail.com', '12345', 'pstu', '12345', 'patuakhali', 'Australia', '8602', NULL, NULL, NULL),
(14, 'der', 'bft', 'our', 'qwe@gmail.com', '12345', 'cdert', '1232', 'dert', '12345', 'Australia', NULL, NULL, NULL),
(15, 'der', 'bft', 'our', 'qwe@gmail.com', '', 'cdert', '1232', 'dert', '12345', 'Australia', NULL, NULL, NULL),
(16, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', '12345', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Austria', NULL, NULL, NULL),
(17, 'Md. Habibur', 'Rahman', 'qqs', 'admin', 'admin123456', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Australia', NULL, NULL, NULL),
(18, 'Md. Habibur', 'Rahman', 'ss', 'habiburrahmanriad38@gmail.com', '1234', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL, NULL),
(19, 'Md. Habibur', 'Rahman', 'qqs', 'admin', 'admin123456', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Austria', NULL, NULL, NULL),
(20, 'Md. Habibur', 'Rahman', 'qqs', 'admin', 'admin123456', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL, NULL),
(21, 'Md.', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', '', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Austria', NULL, NULL, NULL),
(22, 'Md. Habibur', 'Rahman', '', 'habiburrahmanriad38@gmail.com', '', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL, NULL),
(23, 'Md. Habibur', 'Rahman', '', 'habiburrahmanriad38@gmail.com', '', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL, NULL),
(24, 'Md. Habibur', 'Rahman', '', 'habiburrahmanriad38@gmail.com', '', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL, NULL),
(25, 'Md. Habibur', 'Rahman', 'qqs', 'admin', 'admin123456', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL, NULL),
(26, 'md', 'riad', 'sw', 'we@gmail.com', 'admin', 'Barisal', '12345', 'barisal', '1234568', 'Austria', NULL, NULL, NULL),
(27, 'md', 'riad', 'sw', 'we@gmail.com', '', 'Barisal', '', '', '', 'USA', NULL, NULL, NULL),
(28, 'Md. Habibur', 'Rahman', 'qqs', 'admin', 'admin123456', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL, NULL),
(29, 'aaaaa', 'dddddddd', 'dddddddddddd', 'we@gmail.com', 'as', 'Barisal', '12345', 'Barisal', '1234568', 'Argentina', NULL, NULL, NULL),
(30, 'Md. Habibur', 'Rahman', 'wqw', 'admin', 'admin123456', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Argentina', NULL, NULL, NULL),
(31, '', '', '', '', '', '', '', '', '', 'USA', NULL, NULL, NULL),
(32, '', '', '', '', '', '', '', '', '', 'USA', NULL, NULL, NULL),
(33, '', '', '', '', '', '', '', '', '', 'USA', NULL, NULL, NULL),
(34, 'Md. Habibur', 'Rahman', 'serttww', 'habiburrahmanriad38@gmail.com', '1234567890', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL, NULL),
(35, 'Md. Habibur', 'Rahman', 'asdf', 'habiburrahmanriad38@gmail.com', '12345', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL, NULL),
(36, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', '12345', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL, NULL),
(37, 'md', 'riafh', 'dfghj', 'ae@gmail.com', '12345', 'adfg', '123454', 'barisal', 'wet', 'Canada', NULL, NULL, NULL),
(38, 'Md. Habibur', 'Rahman', 'fryuioi', 'habiburrahmanriad38@gmail.com', '12345', 'patuakhali science & technology university', '01829674692', 'patuakhali', '8602', 'Canada', NULL, NULL, NULL),
(39, '', '', '', 'momin@gmail.com', '', '', '', '', '', 'USA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `order_total` float(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_status`, `order_total`, `created_at`, `updated_at`) VALUES
(1, 18, 5, 2, 'pending', 463500.00, NULL, NULL),
(2, 18, 5, 3, 'pending', 498500.00, NULL, NULL),
(3, 18, 5, 4, 'pending', 545000.00, NULL, NULL),
(4, 18, 5, 5, 'pending', 126500.00, NULL, NULL),
(5, 18, 5, 6, 'pending', 173000.00, NULL, NULL),
(6, 18, 5, 7, 'pending', 173000.00, NULL, NULL),
(7, 18, 5, 8, 'pending', 173000.00, NULL, NULL),
(8, 18, 5, 9, 'pending', 173000.00, NULL, NULL),
(9, 18, 5, 10, 'pending', 266000.00, NULL, NULL),
(10, 19, 6, 11, 'pending', 46500.00, NULL, NULL),
(11, 19, 6, 12, 'pending', 46500.00, NULL, NULL),
(12, 19, 6, 13, 'pending', 46500.00, NULL, NULL),
(13, 24, 8, 14, 'pending', 35000.00, NULL, NULL),
(14, 28, 10, 15, 'pending', 3200.00, NULL, NULL),
(15, 28, 10, 16, 'pending', 3200.00, NULL, NULL),
(16, 28, 10, 17, 'pending', 3200.00, NULL, NULL),
(17, 28, 10, 18, 'pending', 6400.00, NULL, NULL),
(18, 28, 10, 19, 'pending', 6400.00, NULL, NULL),
(19, 29, 11, 20, 'pending', 4100.00, NULL, NULL),
(20, 28, 10, 21, 'pending', 6400.00, NULL, NULL),
(21, 28, 10, 22, 'pending', 6400.00, NULL, NULL),
(22, 28, 10, 23, 'pending', 6400.00, NULL, NULL),
(23, 28, 10, 24, 'pending', 6400.00, NULL, NULL),
(24, 28, 10, 25, 'pending', 6400.00, NULL, NULL),
(25, 28, 10, 26, 'pending', 6400.00, NULL, NULL),
(26, 28, 10, 27, 'pending', 6400.00, NULL, NULL),
(27, 28, 10, 28, 'pending', 6400.00, NULL, NULL),
(28, 28, 10, 29, 'pending', 6400.00, NULL, NULL),
(29, 28, 10, 30, 'pending', 6400.00, NULL, NULL),
(30, 28, 10, 31, 'pending', 6400.00, NULL, NULL),
(31, 30, 12, 32, 'pending', 11600.00, NULL, NULL),
(32, 30, 12, 33, 'pending', 11600.00, NULL, NULL),
(33, 30, 12, 34, 'pending', 11600.00, NULL, NULL),
(34, 30, 12, 35, 'pending', 11600.00, NULL, NULL),
(35, 30, 12, 36, 'pending', 11600.00, NULL, NULL),
(36, 30, 12, 37, 'pending', 11600.00, NULL, NULL),
(37, 30, 12, 38, 'pending', 11600.00, NULL, NULL),
(38, 30, 12, 39, 'pending', 11600.00, NULL, NULL),
(39, 30, 12, 40, 'pending', 11600.00, NULL, NULL),
(40, 30, 12, 41, 'pending', 11600.00, NULL, NULL),
(41, 30, 12, 42, 'pending', 11600.00, NULL, NULL),
(42, 30, 12, 43, 'pending', 11600.00, NULL, NULL),
(43, 30, 12, 44, 'pending', 11600.00, NULL, NULL),
(44, 30, 12, 45, 'pending', 11600.00, NULL, NULL),
(45, 30, 12, 46, 'pending', 11600.00, NULL, NULL),
(46, 30, 12, 47, 'pending', 11600.00, NULL, NULL),
(47, 30, 12, 48, 'pending', 11600.00, NULL, NULL),
(48, 30, 12, 49, 'pending', 11600.00, NULL, NULL),
(49, 30, 12, 50, 'pending', 11600.00, NULL, NULL),
(50, 30, 12, 51, 'pending', 11600.00, NULL, NULL),
(51, 30, 12, 52, 'pending', 11600.00, NULL, NULL),
(52, 30, 12, 53, 'pending', 11600.00, NULL, NULL),
(53, 30, 12, 54, 'pending', 11600.00, NULL, NULL),
(54, 30, 12, 55, 'pending', 11600.00, NULL, NULL),
(55, 30, 12, 56, 'pending', 11600.00, NULL, NULL),
(56, 30, 12, 57, 'pending', 11600.00, NULL, NULL),
(57, 30, 12, 58, 'pending', 11600.00, NULL, NULL),
(58, 30, 12, 59, 'pending', 11600.00, NULL, NULL),
(59, 30, 12, 60, 'pending', 11600.00, NULL, NULL),
(60, 30, 12, 61, 'pending', 11600.00, NULL, NULL),
(61, 30, 12, 62, 'pending', 11600.00, NULL, NULL),
(62, 30, 12, 63, 'pending', 11600.00, NULL, NULL),
(63, 30, 12, 64, 'pending', 11600.00, NULL, NULL),
(64, 30, 12, 65, 'pending', 11600.00, NULL, NULL),
(65, 30, 12, 66, 'pending', 11600.00, NULL, NULL),
(66, 35, 15, 68, 'pending', 46500.00, NULL, NULL),
(67, 35, 15, 69, 'pending', 46500.00, NULL, NULL),
(68, 35, 15, 70, 'pending', 46500.00, NULL, NULL),
(69, 35, 15, 71, 'pending', 46500.00, NULL, NULL),
(70, 35, 15, 72, 'pending', 46500.00, NULL, NULL),
(71, 35, 15, 73, 'pending', 46500.00, NULL, NULL),
(72, 35, 15, 74, 'pending', 46500.00, NULL, NULL),
(73, 35, 15, 75, 'pending', 46500.00, NULL, NULL),
(74, 35, 15, 76, 'pending', 46500.00, NULL, NULL),
(75, 35, 15, 77, 'pending', 46500.00, NULL, NULL),
(76, 35, 15, 78, 'pending', 46500.00, NULL, NULL),
(77, 35, 15, 79, 'pending', 46500.00, NULL, NULL),
(78, 35, 15, 80, 'pending', 46500.00, NULL, NULL),
(79, 35, 15, 81, 'pending', 46500.00, NULL, NULL),
(80, 35, 15, 82, 'pending', 46500.00, NULL, NULL),
(81, 35, 15, 83, 'pending', 46500.00, NULL, NULL),
(82, 35, 15, 84, 'pending', 46500.00, NULL, NULL),
(83, 35, 15, 85, 'pending', 46500.00, NULL, NULL),
(84, 35, 15, 86, 'pending', 46500.00, NULL, NULL),
(85, 35, 15, 87, 'pending', 46500.00, NULL, NULL),
(86, 35, 15, 88, 'pending', 46500.00, NULL, NULL),
(87, 35, 15, 89, 'pending', 46500.00, NULL, NULL),
(88, 35, 15, 90, 'pending', 46500.00, NULL, NULL),
(89, 35, 15, 91, 'pending', 46500.00, NULL, NULL),
(90, 35, 15, 92, 'pending', 46500.00, NULL, NULL),
(91, 35, 15, 93, 'pending', 46500.00, NULL, NULL),
(92, 35, 15, 94, 'pending', 46500.00, NULL, NULL),
(93, 35, 15, 95, 'pending', 46500.00, NULL, NULL),
(94, 35, 15, 96, 'pending', 46500.00, NULL, NULL),
(95, 35, 15, 97, 'pending', 46500.00, NULL, NULL),
(96, 35, 15, 98, 'pending', 46500.00, NULL, NULL),
(97, 35, 15, 99, 'pending', 46500.00, NULL, NULL),
(98, 35, 15, 100, 'pending', 46500.00, NULL, NULL),
(99, 35, 15, 101, 'pending', 46500.00, NULL, NULL),
(100, 35, 15, 102, 'pending', 81500.00, NULL, NULL),
(101, 36, 16, 104, 'pending', 46600.00, NULL, NULL),
(102, 37, 17, 105, 'pending', 80000.00, NULL, NULL),
(103, 38, 18, 106, 'pending', 93000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 4, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(2, 4, 13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 45000.00, 1, NULL, NULL),
(3, 4, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(4, 5, 7, 'Lenevo X123', 46500.00, 2, NULL, NULL),
(5, 5, 13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 45000.00, 1, NULL, NULL),
(6, 5, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(7, 6, 7, 'Lenevo X123', 46500.00, 2, NULL, NULL),
(8, 6, 13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 45000.00, 1, NULL, NULL),
(9, 6, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(10, 7, 7, 'Lenevo X123', 46500.00, 2, NULL, NULL),
(11, 7, 13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 45000.00, 1, NULL, NULL),
(12, 7, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(13, 8, 7, 'Lenevo X123', 46500.00, 2, NULL, NULL),
(14, 8, 13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 45000.00, 1, NULL, NULL),
(15, 8, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(16, 9, 7, 'Lenevo X123', 46500.00, 4, NULL, NULL),
(17, 9, 13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 45000.00, 1, NULL, NULL),
(18, 9, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(19, 10, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(20, 11, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(21, 12, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(22, 13, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(23, 14, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 1, NULL, NULL),
(24, 15, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 1, NULL, NULL),
(25, 16, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 1, NULL, NULL),
(26, 17, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(27, 18, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(28, 19, 41, 'Microsoft Office 365 Personal 32-bit/x64 English Subscription 1Year APAC EM Medialess', 4100.00, 1, NULL, NULL),
(29, 20, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(30, 21, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(31, 22, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(32, 23, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(33, 24, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(34, 25, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(35, 26, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(36, 27, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(37, 28, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(38, 29, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(39, 30, 42, 'Kaspersky 2017 Internet Security 1 User', 3200.00, 2, NULL, NULL),
(40, 31, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(41, 32, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(42, 33, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(43, 34, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(44, 35, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(45, 36, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(46, 37, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(47, 38, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(48, 39, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(49, 40, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(50, 41, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(51, 42, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(52, 43, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(53, 44, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(54, 45, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(55, 46, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(56, 47, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(57, 48, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(58, 49, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(59, 50, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(60, 51, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(61, 52, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(62, 53, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(63, 54, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(64, 55, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(65, 56, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(66, 57, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(67, 58, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(68, 59, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(69, 60, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(70, 61, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(71, 62, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(72, 63, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(73, 64, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(74, 65, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(75, 66, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(76, 67, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(77, 68, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(78, 69, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(79, 70, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(80, 71, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(81, 72, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(82, 73, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(83, 74, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(84, 75, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(85, 76, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(86, 77, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(87, 78, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(88, 79, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(89, 80, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(90, 81, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(91, 82, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(92, 83, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(93, 84, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(94, 85, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(95, 86, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(96, 87, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(97, 88, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(98, 89, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(99, 90, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(100, 91, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(101, 92, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(102, 93, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(103, 94, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(104, 95, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(105, 96, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(106, 97, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(107, 98, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(108, 99, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(109, 100, 7, 'Lenevo X123', 46500.00, 1, NULL, NULL),
(110, 100, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(111, 101, 43, 'LG 22MP68VQ-P 21.5 Inch IPS Panel Monitor (DVI, HDMI, VGA)', 11600.00, 1, NULL, NULL),
(112, 101, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(113, 102, 1, 'Asus XL9000', 35000.00, 1, NULL, NULL),
(114, 102, 13, 'ASUS ET2030IUT Pentium Dual Core 19.5', 45000.00, 1, NULL, NULL),
(115, 103, 7, 'Lenevo X123', 46500.00, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'pending', NULL, NULL),
(2, 'paypal', 'pending', NULL, NULL),
(3, 'cash on delivery', 'pending', NULL, NULL),
(4, 'cash on delivery', 'pending', NULL, NULL),
(5, 'cash on delivery', 'pending', NULL, NULL),
(6, 'cash on delivery', 'pending', NULL, NULL),
(7, 'cash on delivery', 'pending', NULL, NULL),
(8, 'cash on delivery', 'pending', NULL, NULL),
(9, 'cash on delivery', 'pending', NULL, NULL),
(10, 'cash on delivery', 'pending', NULL, NULL),
(11, 'paypal', 'pending', NULL, NULL),
(12, 'paypal', 'pending', NULL, NULL),
(13, 'paypal', 'pending', NULL, NULL),
(14, 'paypal', 'pending', NULL, NULL),
(15, 'cash on delivery', 'pending', NULL, NULL),
(16, 'paypal', 'pending', NULL, NULL),
(17, 'paypal', 'pending', NULL, NULL),
(18, 'paypal', 'pending', NULL, NULL),
(19, 'paypal', 'pending', NULL, NULL),
(20, 'paypal', 'pending', NULL, NULL),
(21, 'paypal', 'pending', NULL, NULL),
(22, 'paypal', 'pending', NULL, NULL),
(23, 'paypal', 'pending', NULL, NULL),
(24, 'paypal', 'pending', NULL, NULL),
(25, 'paypal', 'pending', NULL, NULL),
(26, 'paypal', 'pending', NULL, NULL),
(27, 'paypal', 'pending', NULL, NULL),
(28, 'paypal', 'pending', NULL, NULL),
(29, 'paypal', 'pending', NULL, NULL),
(30, 'paypal', 'pending', NULL, NULL),
(31, 'paypal', 'pending', NULL, NULL),
(32, 'paypal', 'pending', NULL, NULL),
(33, 'paypal', 'pending', NULL, NULL),
(34, 'paypal', 'pending', NULL, NULL),
(35, 'paypal', 'pending', NULL, NULL),
(36, 'paypal', 'pending', NULL, NULL),
(37, 'paypal', 'pending', NULL, NULL),
(38, 'paypal', 'pending', NULL, NULL),
(39, 'paypal', 'pending', NULL, NULL),
(40, 'paypal', 'pending', NULL, NULL),
(41, 'paypal', 'pending', NULL, NULL),
(42, 'paypal', 'pending', NULL, NULL),
(43, 'paypal', 'pending', NULL, NULL),
(44, 'paypal', 'pending', NULL, NULL),
(45, 'paypal', 'pending', NULL, NULL),
(46, 'paypal', 'pending', NULL, NULL),
(47, 'paypal', 'pending', NULL, NULL),
(48, 'paypal', 'pending', NULL, NULL),
(49, 'paypal', 'pending', NULL, NULL),
(50, 'paypal', 'pending', NULL, NULL),
(51, 'paypal', 'pending', NULL, NULL),
(52, 'paypal', 'pending', NULL, NULL),
(53, 'paypal', 'pending', NULL, NULL),
(54, 'paypal', 'pending', NULL, NULL),
(55, 'paypal', 'pending', NULL, NULL),
(56, 'paypal', 'pending', NULL, NULL),
(57, 'paypal', 'pending', NULL, NULL),
(58, 'paypal', 'pending', NULL, NULL),
(59, 'paypal', 'pending', NULL, NULL),
(60, 'paypal', 'pending', NULL, NULL),
(61, 'paypal', 'pending', NULL, NULL),
(62, 'paypal', 'pending', NULL, NULL),
(63, 'paypal', 'pending', NULL, NULL),
(64, 'paypal', 'pending', NULL, NULL),
(65, 'paypal', 'pending', NULL, NULL),
(66, 'paypal', 'pending', NULL, NULL),
(67, 'paypal', 'pending', NULL, NULL),
(68, 'paypal', 'pending', NULL, NULL),
(69, 'bkash', 'pending', NULL, NULL),
(70, 'bkash', 'pending', NULL, NULL),
(71, 'bkash', 'pending', NULL, NULL),
(72, 'bkash', 'pending', NULL, NULL),
(73, 'bkash', 'pending', NULL, NULL),
(74, 'bkash', 'pending', NULL, NULL),
(75, 'bkash', 'pending', NULL, NULL),
(76, 'bkash', 'pending', NULL, NULL),
(77, 'bkash', 'pending', NULL, NULL),
(78, 'bkash', 'pending', NULL, NULL),
(79, 'bkash', 'pending', NULL, NULL),
(80, 'bkash', 'pending', NULL, NULL),
(81, 'bkash', 'pending', NULL, NULL),
(82, 'bkash', 'pending', NULL, NULL),
(83, 'bkash', 'pending', NULL, NULL),
(84, 'bkash', 'pending', NULL, NULL),
(85, 'bkash', 'pending', NULL, NULL),
(86, 'bkash', 'pending', NULL, NULL),
(87, 'cash on delivery', 'pending', NULL, NULL),
(88, 'cash on delivery', 'pending', NULL, NULL),
(89, 'cash on delivery', 'pending', NULL, NULL),
(90, 'cash on delivery', 'pending', NULL, NULL),
(91, 'cash on delivery', 'pending', NULL, NULL),
(92, 'cash on delivery', 'pending', NULL, NULL),
(93, 'cash on delivery', 'pending', NULL, NULL),
(94, 'cash on delivery', 'pending', NULL, NULL),
(95, 'cash on delivery', 'pending', NULL, NULL),
(96, 'cash on delivery', 'pending', NULL, NULL),
(97, 'cash on delivery', 'pending', NULL, NULL),
(98, 'bkash', 'pending', NULL, NULL),
(99, 'paypal', 'pending', NULL, NULL),
(100, 'cash on delivery', 'pending', NULL, NULL),
(101, 'cash on delivery', 'pending', NULL, NULL),
(102, 'paypal', 'pending', NULL, NULL),
(103, 'bkash', 'pending', NULL, NULL),
(104, 'bkash', 'pending', NULL, NULL),
(105, 'paypal', 'pending', NULL, NULL),
(106, 'bkash', 'pending', NULL, NULL),
(107, 'bkash', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `product_image_id` int(10) NOT NULL,
  `product_id` int(5) NOT NULL,
  `image_option` varchar(100) NOT NULL,
  `image_label` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`product_image_id`, `product_id`, `image_option`, `image_label`) VALUES
(1, 1, 'product_image/135128asus_1.jpg', 1),
(2, 1, 'product_image/135128asus-zenbook-ux305f-bigcl.jpg', 0),
(3, 2, 'product_image/135314indel_desktop.jpg', 1),
(4, 2, 'product_image/135314intel.jpg', 0),
(5, 3, 'product_image/135507iphone7.jpg', 1),
(6, 3, 'product_image/135507iphone7_new.jpg', 0),
(7, 4, 'product_image/0949141 (1).jpg', 1),
(8, 4, 'product_image/0949142 (1).jpg', 0),
(9, 5, 'product_image/0952531 (2).jpg', 1),
(10, 5, 'product_image/0952532 (2).jpg', 0),
(11, 6, 'product_image/095655cf_polo_004_2_.jpg', 1),
(12, 6, 'product_image/095655cf_polo_004_1_.jpg', 0),
(13, 7, 'product_image/061145Ideapad300s.png', 1),
(14, 7, 'product_image/061146surface_L_Pivot-Platinum-pos2_V2.jpg', 0),
(15, 7, 'product_image/061146Lenovo-BIGwhite-back2.jpg', 0),
(16, 7, 'product_image/061146lenovo-laptop-ideapad-u410-metallic-grey-front-back-1L.jpg', 0),
(17, 8, 'product_image/175440Dell Inspiron 11-3162-crop-500x500.png', 1),
(18, 8, 'product_image/175440DELL INSPIRON 14-3467 i3 7th Gen-500x500.jpg', 0),
(19, 8, 'product_image/175440Dell INSPIRON 15-5567 i3-500x500.jpg', 0),
(20, 9, 'product_image/180416Acer Aspire F5-572-500x500.jpg', 1),
(21, 11, 'product_image/181149Apple-MacBook-Air-11inch-500x500.jpg', 1),
(22, 12, 'product_image/183048HP X360 11-ab002tu-500x500.jpg', 1),
(23, 13, 'product_image/183544Asus AllinOne_PC-ET2030IUT-1-500x500.png', 1),
(24, 13, 'product_image/183544Asus AllinOne_PC-ET2030IUT-2-500x500.png', 0),
(25, 13, 'product_image/183545Asus AllinOne_PC-ET2030IUT-3-500x500.png', 0),
(26, 14, 'product_image/184031Lenovo ThinkCentre Edge 72 i3-500x500.jpg', 1),
(27, 15, 'product_image/184529Antec GX330 New-2-500x500.jpg', 1),
(28, 16, 'product_image/185011400-500x500.jpg', 1),
(29, 17, 'product_image/185420AIO-5459-1-500x500.jpg', 1),
(30, 18, 'product_image/144744nokia_230_dual_sim_screen.jpg', 1),
(31, 18, 'product_image/144744sku_448517_1.jpg', 0),
(32, 19, 'product_image/1450161336813.jpg', 1),
(33, 19, 'product_image/145016nokia_105_white_blue_black.jpg', 0),
(34, 23, 'product_image/145739lava.jpg', 1),
(35, 24, 'product_image/150309symphony.png', 1),
(36, 24, 'product_image/150309sy.png', 0),
(37, 25, 'product_image/150646sym.png', 1),
(38, 26, 'product_image/150924n.jpg', 1),
(39, 27, 'product_image/152016samsung-galaxy-j7-max.jpg', 1),
(40, 27, 'product_image/152016samsung.jpeg', 0),
(41, 28, 'product_image/152442CP62LIN_157279_800x800.jpg', 1),
(42, 29, 'product_image/153212intel_kaby_lake_core_i7_7700.jpg', 1),
(43, 30, 'product_image/153734241701.jpg', 1),
(44, 31, 'product_image/1547455-500x500.jpg', 1),
(45, 32, 'product_image/182936Delux DLM 102-650x650.jpg', 1),
(46, 33, 'product_image/183720G3-220N Black_04-800x800.jpg', 1),
(47, 34, 'product_image/184339Capture.PNG', 1),
(48, 36, 'product_image/185018download.jpg', 1),
(49, 37, 'product_image/185334i_1_3.jpg', 1),
(50, 35, 'product_image/150244db994a6b4dd1b1060087626325b6465f038bdb0f-tc-img-preview.jpg', 1),
(51, 36, 'product_image/150920Huawei-Y6ii.jpg', 1),
(52, 37, 'product_image/152007Huawei-Y6ii.jpg', 1),
(53, 38, 'product_image/152513Huawei-Y6ii.jpg', 1),
(54, 39, 'product_image/161602GeForce-GT-1030-0.png', 1),
(55, 40, 'product_image/162257Cheval-4GB-DDR4-2400-500x515.jpg', 1),
(56, 41, 'product_image/162755microsoft-office-ms-qq2-000.jpg', 1),
(57, 42, 'product_image/163402p1_1768564_b67b666d.jpg', 1),
(58, 43, 'product_image/06145027MP68HM-medium01.jpg', 1),
(59, 44, 'product_image/17060851Z0ALvn1wL.jpg', 1),
(60, 45, 'product_image/171112169691.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping2`
--

CREATE TABLE `tbl_shipping2` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_shipping2`
--

INSERT INTO `tbl_shipping2` (`shipping_id`, `first_name`, `last_name`, `company_name`, `email_address`, `address`, `mobile`, `city`, `zip_code`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Md. Habibur', 'Rahman', '', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Austria', NULL, NULL),
(2, 'qq', 'aaa', 'qqs', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Argentina', NULL, NULL),
(3, 'Md. Habibur', 'Rahman', 'awertyty', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL),
(4, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL),
(5, 'Md. Habibur', 'Rahman', 'ss', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL),
(6, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL),
(7, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL),
(8, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL),
(9, 'md', 'riad', 'sw', 'we@gmail.com', 'Barisal', '12345', 'barisal', '1234568', 'Austria', NULL, NULL),
(10, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL),
(11, 'aaaaa', 'riad', 'dddddddddddd', 'we@gmail.com', 'Barisal', '12345', 'barisal', '1234568', 'Canada', NULL, NULL),
(12, 'Md. Habibur', 'Rahman', 'qqs', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'USA', NULL, NULL),
(13, '', '', '', '', '', '', '', '', 'USA', NULL, NULL),
(14, '', '', '', '', '', '', '', '', 'USA', NULL, NULL),
(15, 'Md. Habibur', 'Rahman', 'asdf', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL),
(16, 'Md. Habibur', 'Rahman', 'sss', 'habiburrahmanriad38@gmail.com', 'patuakhali science & technology university', '1829674692', 'patuakhali', '8602', 'Canada', NULL, NULL),
(17, 'md', 'fhjjk', 'ghjhukki', 'fgk', 'fhjk', 'fghi', 'qet', '124', 'Canada', NULL, NULL),
(18, 'Md. Habibur', 'Rahman', 'qerr', 'habiburrahmanriad38@gmail.com', 'fghuu', '01829674692', 'patuakhali', '8602', 'Canada', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_category_name_unique` (`category_name`);

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacture_manufacture_name_unique` (`manufacture_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_product_name_unique` (`product_name`),
  ADD KEY `product_category_id_foreign` (`category_id`),
  ADD KEY `product_manufacture_id_foreign` (`manufacture_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_admin_admin_email_unique` (`admin_email`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `tbl_shipping2`
--
ALTER TABLE `tbl_shipping2`
  ADD PRIMARY KEY (`shipping_id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `manufacture`
--
ALTER TABLE `manufacture`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  MODIFY `product_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_shipping2`
--
ALTER TABLE `tbl_shipping2`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_manufacture_id_foreign` FOREIGN KEY (`manufacture_id`) REFERENCES `manufacture` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
