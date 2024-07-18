-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 01:38 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sampledb3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123'),
(5, 'fynaa', 'fyna@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `foodtruckdetails`
--

CREATE TABLE IF NOT EXISTS `foodtruckdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `operator_name` varchar(255) NOT NULL,
  `menu` text NOT NULL,
  `schedule` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `foodtruckdetails`
--

INSERT INTO `foodtruckdetails` (`id`, `name`, `description`, `lat`, `lng`, `operator_name`, `menu`, `schedule`) VALUES
(1, 'Nazs Chicken', 'Kedah', 6.172715, 100.373962, 'Encik Nazri', 'Ayam Gunting Cheese Leleh & Crispy Wing Smokey BBQ, Ayam Gunting, Ayam Satey, Hot Dog Cheese, Cheezy Wedges', 'Mon-Fri: 1pm - 6pm, Sat-Sun: closed'),
(2, 'Raja Gulai Foodtruck', 'Kedah', 6.146086, 100.342949, 'Encik Raja Hanif', 'Nasi Putih, Ayam Masak Kicap, Gulai Itik, Gulai Ikan, Gulai Ayam Kampung', 'Mon-Fri: 12pm - 6pm, Sat-Sun: close'),
(3, 'Food Truck Kuala Perlis', 'Perlis', 6.417730, 100.125969, 'Encik Alif', 'Bihun Sup, Laksa, Mee Kari', 'Mon-Fri: 8am - 6pm, Sat-Sun: 9am - 5pm'),
(4, 'Chapee Kopi Claypot Perlis HQ Foodtruck', 'Perlis', 6.471608, 100.204414, 'Abang Shafiq', 'Kopi ais kaw, Teh ais kaw', 'Mon-Sat: 12pm - 10pm, Sun: closed'),
(5, 'Kak Yah Corner Food Truck', 'Kedah', 6.278859, 100.414253, 'Kak Yah', 'Mee goreng mamak, Nasi Goreng Mamak, Nasi Goreng Cina, Bihun Goreng, Kuey Teow Goreng, Nasi Goreng Cili Padi, Satay', 'Mon-Sun: 11am - 11pm'),
(6, 'Jabi Foodtruck', 'Kedah', 6.188119, 100.498734, 'Puan Maria', 'Oden Maggie, Takoyaki', 'Mon-Fri: 8am - 6pm, Sat-Sun: 10am - 4pm'),
(7, 'Burger Food Truck Seriab', 'Perlis', 6.441959, 100.183144, 'Abang Yin', 'Master Chicken Burger, Master Beef Burger, Master Lamb Burger, Double Special Cheese Chicken Burger, Double Special Cheese Beef Burger, Cheese Double Lamb Burger, Cheese Chicken Burger, Normal Lamb Oblong, Master Benjo, Double Special Cheese Benjo', 'Mon-Fri: 4pm - 11pm, Sat-Sun: closed'),
(8, 'Foodtruck Jagung Mango Waffle Uncle Rem', 'Perlis', 6.512394, 100.348221, 'Encik Remmy', 'Waffle, Mango Smoothie, Jagung BlackPepper, Jagung Cheese, Jagung Biasa, Jagung Susu', 'Mon-Sun: 12pm - 11pm'),
(9, 'Foodtruck caca pulut mangga', 'Selangor', 3.046197, 101.517052, 'Puan Isyaa', 'Pulut Mangga', 'Mon-Sun: 10am - 10pm'),
(10, 'The Gorpis Shah Alam Foodtruck', 'Selangor', 3.118525, 101.525162, 'Encik Syahmi', 'Gorpis Original, Gorpis Ferrero, Gorpis Matcha, Gorpis Chocolate, Gorpis Oreo, Gorpis Nestum', 'Mon-Sun: 4pm - 10pm'),
(11, 'Laksa Utara Foodtruck', 'Selangor', 3.082491, 101.489357, 'Kak Hanim', 'Laksa Utara, Rojak, Tapai, Cendol Pulut, Cendol Tapai', 'Mon-Fri: 12pm - 6pm, Sat-Sun: closed'),
(12, 'Burger Trailer Setia Alam', 'Selangor', 3.131857, 101.468071, 'Abang Irfan', 'Double Daging, Double Ayam, Double Kambing', 'Mon-Sun: 4pm - 11pm'),
(13, 'Putrajaya Food Truck Hotspot', 'Kuala Lumpur', 2.923202, 101.683144, 'Encik Hisyam Amin', 'Mili, Char Koey Teow, Pizza, Mee Bandung, Bihun Sup', 'Mon-Sun: 5pm - 12am'),
(14, 'Lori Merah Food Truck', 'Selangor', 2.944666, 101.610916, 'Abang Malik', 'Mushroom Soup + Garlic Bread, Ayaq Bancuh Kaw', 'Mon-Fri: 11am - 6pm, Sat-Sun: closed'),
(15, 'Town Bus Food Truck', 'Perak', 4.601024, 101.078209, 'Encik Fikri', 'Bolognese, Cheesy Fries, Mussels Melt, Fish Fingers', 'Mon-Sun: 5pm - 11pm'),
(16, 'Big Bite KL Food Truck', 'Kuala Lumpur', 3.155087, 101.654305, 'Encik Sabri', 'Retro Hotdog, Big Bite Fries, Coney Island Hotdogs, Lamb Hotdog', 'Mon-Sun: 6pm - 12am'),
(17, 'Tauhu Bakar at Food Truck Taman Melawati', 'Selangor', 3.219532, 101.744598, 'Puan Dyna', 'Tauhu Bakar Special + Sotong, Tauhu Bakar Biasa, Satar Ikan, Pepes Ayam', 'Mon-Sun: 5pm - 11pm'),
(18, 'FoodTruck Amir BM Char Koey Teow', 'Kuala Lumpur', 3.184911, 101.736710, 'Abang Amir', 'Char Koey Teow Special, Koey Teow Goreng Udang, Koey Teow Goreng Kerang Telur Mata, Char Koey Teow Biasa Udang, Char Koey Teow Tsunami', 'Mon-Sun: 5pm - 11pm'),
(19, 'Foodtruck Drawbridge Terengganu', 'Terengganu', 5.409082, 103.150414, 'Kak Rania', 'Nasi Goreng Lambung, Maggie Goreng Lambung, Mee Goreng', 'Mon-Sun: 3pm - 12am'),
(20, 'Island Delicious FoodTruck', 'Pulau Pinang', 6.188119, 100.498734, 'Encik Ismail', 'Korean MC Chicken Burger Special, American Beef Burger, American Lamb Burger, Chicken Burger Egg, Chicken Hot Dog, Meatballs Black Pepper, French fries', 'Mon-Fri: 6pm - 11pm, Sat-Sun: closed'),
(21, 'Umie Taste Food Truck', 'Kedah', 5.908043, 100.444656, 'Puan Umie Hariz', 'Bubur Nasi Ayam, Nasi Mentega Ayam, Ayam Goreng, Chicken Chop, Burger Ayam Goreng Blackpepper', 'Mon-Sun: 3pm - 10pm'),
(22, 'Char Kueh Teow Food Truck', 'Kelantan', 6.197558, 102.246414, 'Abang Din', 'Char Kueh Teow, Nasi Goreng Udang Galah, Nasi Goreng Kerang, Koey Teow Kerang, Nasi Goreng Udang Teraboo, Nasi Goreng Pataya', 'Mon-Sun: 9am - 12am'),
(23, 'Amin Pizza', 'Kelantan', 5.861598, 102.144524, 'Abang Amin', 'Pizza Ayam Biasa, Pizza Ayam BBQ, Pizza Pepperoni Ayam, Pizza Pepperoni Daging, Pizza Tuna, Pizza Seafood, Meatball', 'Mon-Sun: 6pm - 11pm'),
(24, 'Foodtruck X Cabin Sireh Park', 'Johor', 1.516623, 103.644157, 'Kak Mia', 'Asam Pedas, Gulai Tempoyak, Lemak Cili Padi, Ayam Cheese, Ayam Korea Cheese', 'Mon-Sun: 6pm - 11pm'),
(25, 'Nasi Lemak Kukus Foodtruck Yayasan', 'Johor', 2.599777, 102.783279, 'Puan Farahani', 'Nasi Lemak Kukus Ayam Berempah, Nasi Lemak Kerang, Nasi Lemak Kukus Paru, Nasi Padang, Nasi Kukus Ayam Berempah', 'Mon-Sun: 6pm - 11pm'),
(26, 'Kebab 500', 'Pahang', 3.595146, 103.392509, 'Abang Bob', 'Bun Biasa, Bun Special, Turap Kebab, Kebab Daging Special, Kebab Ayam Special', 'Mon-Sun: 6pm - 11pm'),
(27, 'Cameron Valley Food Truck', 'Pahang', 4.496987, 101.374123, 'Kak Rin', 'Strawberry, Teh Strawberry, Rojak Strawberry, Spaghetti Bolognese, Mee Kari, Bolognese Nachos, Scone Strawberry, Jem, Aiskrim Strawberry, Cake Slices', 'Mon-Sun: 12pm - 8pm'),
(28, 'Foodtruck Cendoi', 'Perak', 4.820904, 100.863304, 'Abang Man', 'Cendol Biasa, Cendol Campur, Cendol Pulut, Cendol Durian, Rojak Mee, Rojak Special, Mee Rebus Sotong, Mee Rebus Ayam', 'Mon-Sun: 4pm - 9pm'),
(29, 'Food Truck Street Manjung Lumut', 'Perak', 4.256885, 100.629845, 'Encik Awie', 'Crispy Chicken Chop, Grilled Chicken Burger, Arabic Crisp Wrap, Cheezy Meatball Ramen', 'Mon-Sun: 12pm - 8pm'),
(30, 'Wantan Mee foodtruck', 'Kedah', 5.652544, 100.649696, 'Kak Yuni', 'Steamed Meat Bun DimSum, Dry Wantan Mee, Soup Dumping, Mushroom Sause Chee Cheong Fun', 'Mon-Sun: 12pm - 9pm');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lat` decimal(10,4) NOT NULL,
  `lng` decimal(10,4) NOT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `name`, `description`, `lat`, `lng`, `menu`, `schedule`) VALUES
(3, '', '', 0.0000, 0.0000, NULL, NULL),
(4, 'Pantai Desaru', 'Johor', 1.5403, 104.2505, NULL, NULL),
(5, 'Taman Negara Endau-Rompin', 'Johor', 2.4719, 103.2663, NULL, NULL),
(6, 'Legoland Malaysia Resort', 'Johor', 1.4274, 103.6303, NULL, NULL),
(7, 'Kulim Eco Trail Retreat', 'Johor', 1.6539, 103.9271, NULL, NULL),
(8, 'Taman Negara Tanjung Piai', 'Johor', 1.2681, 103.5087, NULL, NULL),
(9, 'Zoo Johor (Johor Safari Park)', 'Johor', 1.4575, 103.7522, NULL, NULL),
(10, 'Austin Heights Water & Adventure Park', 'Johor', 1.5621, 103.7757, NULL, NULL),
(11, 'KUSO 3D Art Gallery', 'Johor', 1.5508, 103.7852, NULL, NULL),
(12, 'Bazaar Johor (Bazaar Karat)', 'Johor', 1.4582, 103.7641, NULL, NULL),
(13, 'Johor Premium Outlet (JPO)', 'Johor', 1.6037, 103.6217, NULL, NULL),
(14, 'Nasuha Herbs & Spice Farm', 'Johor', 2.1287, 102.7043, NULL, NULL),
(15, 'Taman Buaya Teluk Sengat', 'Johor', 1.5651, 104.0264, NULL, NULL),
(16, 'Air Terjun Kota Tinggi', 'Johor', 1.8289, 103.8275, NULL, NULL),
(17, 'Kluang Coffee Powder Factory', 'Johor', 2.0220, 103.3247, NULL, NULL),
(18, 'Danga Bay', 'Johor', 1.4774, 103.7238, NULL, NULL),
(19, 'Rock World', 'Johor', 1.5795, 103.7290, NULL, NULL),
(20, 'LOST in JB Escape Room', 'Johor', 1.5612, 103.7793, NULL, NULL),
(21, 'Desaru Ostrich Farm', 'Johor', 1.3689, 104.2393, NULL, NULL),
(22, 'Angry Bird Activity Park', 'Johor', 1.4629, 103.7635, NULL, NULL),
(23, 'Puteri Harbour Indoor Theme Park', 'Johor', 1.4162, 103.6569, NULL, NULL),
(24, 'Hutan Bandar MBJB', 'Johor', 1.4827, 103.7447, NULL, NULL),
(25, 'Taman Negara Pulau Kukup', 'Johor', 1.3272, 103.4343, NULL, NULL),
(26, 'Nanyang Fish Farm', 'Johor', 1.6978, 103.4888, NULL, NULL),
(27, 'Laman Mahkota Istana Bukit Serene', 'Johor', 1.4804, 103.7226, NULL, NULL),
(28, 'Masjid Sultan Abu Bakar', 'Johor', 1.4572, 103.7513, NULL, NULL),
(29, 'Taman Rekreasi Tanjung Emas', 'Johor', 2.0476, 102.5555, NULL, NULL),
(30, 'Taman Hutan Lagenda Gunung Ledang', 'Johor', 2.3417, 102.6173, NULL, NULL),
(31, 'Muzium Nelayan Tanjung Balau', 'Johor', 1.6148, 104.2579, NULL, NULL),
(32, 'Desaru Fruit Farm', 'Johor', 1.5839, 104.1935, NULL, NULL),
(33, 'Pantai Stulang Laut', 'Johor', 1.4691, 103.7789, NULL, NULL),
(34, 'Pantai Minyak Beku', 'Johor', 1.7950, 102.8879, NULL, NULL),
(35, 'Gunung Lambak', 'Johor', 2.0250, 103.3422, NULL, NULL),
(36, 'Hutan Lipur Gunung Pulai 2', 'Johor', 1.5923, 103.5106, NULL, NULL),
(37, 'Pantai Air Papan', 'Johor', 2.5201, 103.8285, NULL, NULL),
(38, 'Wet World Batu Pahat Village Resort', 'Johor', 1.8816, 102.9453, NULL, NULL),
(39, 'Penggaram Square Batu Pahat', 'Johor', 1.8476, 102.9348, NULL, NULL),
(40, 'Puteri Harbour Marina', 'Johor', 1.4171, 103.6583, NULL, NULL),
(41, 'Muzium Bugis Pontian', 'Johor', 1.4280, 103.4118, NULL, NULL),
(42, 'Muzium Kota Johor Lama', 'Johor', 1.5807, 104.0178, NULL, NULL),
(43, 'Muzium Layang-Layang Pasir Gudang', 'Johor', 1.4750, 103.9064, NULL, NULL),
(44, 'Muzium Tokoh Johor', 'Johor', 1.4723, 103.7655, NULL, NULL),
(45, 'Muzium Mersing', 'Johor', 2.4327, 103.8397, NULL, NULL),
(46, 'Taman Merdeka', 'Johor', 1.4794, 103.7359, NULL, NULL),
(47, 'Kolam Air Panas Sungai Gersik', 'Johor', 1.9410, 102.7422, NULL, NULL),
(48, 'Don Hu Jurassic Park Muar', 'Johor', 2.0802, 102.5677, NULL, NULL),
(49, 'Laser Battle Experience in Johor Bahru', 'Johor', 1.4623, 103.7634, NULL, NULL),
(50, 'Gunung Lambak Waterpark', 'Johor', 2.0260, 103.3445, NULL, NULL),
(51, 'ATV Park Johor', 'Johor', 1.5705, 103.6341, NULL, NULL),
(52, 'Kota Tinggi Firefly Park', 'Johor', 1.7268, 103.9113, NULL, NULL),
(53, 'UK Farm Agro Resort', 'Johor', 2.0181, 103.2187, NULL, NULL),
(54, 'Taman Laut Sultan Iskandar (TLSI)', 'Johor', 2.4513, 104.1056, NULL, NULL),
(55, 'Galeri Darurat Bukit Kepong', 'Johor', 1.5393, 104.2599, NULL, NULL),
(56, 'Pineapple Museum', 'Johor', 1.5070, 103.4448, NULL, NULL),
(57, 'Pulau Pangkor', 'Perak', 4.2110, 100.5666, NULL, NULL),
(58, 'The Haven Resort Hotel', 'Perak', 4.6372, 101.1627, NULL, NULL),
(59, 'Sunway Lost World of Tambun', 'Perak', 4.6250, 101.1549, NULL, NULL),
(60, 'Sungai Klah Hotspring', 'Perak', 3.9979, 101.3937, NULL, NULL),
(61, 'Masjid Diraja Ubudiah', 'Perak', 4.7642, 100.9511, NULL, NULL),
(62, 'Zoo Taiping dan Night Safari', 'Perak', 4.8549, 100.7497, NULL, NULL),
(63, 'Pangkor Laut Resort', 'Perak', 4.1965, 100.5437, NULL, NULL),
(64, 'Taman Rekreasi Gunung Lang', 'Perak', 4.6288, 101.0910, NULL, NULL),
(65, 'Muzium Perak Taiping', 'Perak', 4.8610, 100.7452, NULL, NULL),
(66, 'Kellie''s Castle', 'Perak', 4.4744, 101.0877, NULL, NULL),
(67, 'Sultan Azlan Shah Gallery', 'Perak', 4.7664, 100.9482, NULL, NULL),
(68, 'Bukit Merah Lake Town Resort', 'Perak', 4.9947, 100.6601, NULL, NULL),
(69, 'Tasik Banding ', 'Perak', 5.5453, 101.3401, NULL, NULL),
(70, 'Pulau Orang Utan', 'Perak', 5.0087, 100.6756, NULL, NULL),
(71, 'Ladang Anggur Saloma', 'Perak', 4.1503, 100.7246, NULL, NULL),
(72, 'Teluk Senangin', 'Perak', 4.2996, 100.5799, NULL, NULL),
(73, 'Pantai Teluk Batik', 'Perak', 4.1876, 100.6074, NULL, NULL),
(74, 'Menara Condong Teluk Intan', 'Perak', 4.0251, 101.0193, NULL, NULL),
(75, 'Bukit Larut (Maxwell Hill)', 'Perak', 4.8619, 100.7931, NULL, NULL),
(76, 'Belum Rainforest Resort', 'Perak', 5.5436, 101.3407, NULL, NULL),
(77, 'Taman Tasik Taiping', 'Perak', 4.8525, 100.7495, NULL, NULL),
(78, 'Kuala Sepetang', 'Perak', 4.8348, 100.6278, NULL, NULL),
(79, 'Muzium Geologi Ipoh', 'Perak', 4.5976, 101.1198, NULL, NULL),
(80, 'Gua Tempurung', 'Perak', 4.4161, 101.1877, NULL, NULL),
(81, 'Kledang Saiong Forest Eco Park', 'Perak', 4.6839, 101.0685, NULL, NULL),
(82, 'Lata Ulu Chepor', 'Perak', 4.7005, 101.0773, NULL, NULL),
(83, 'Pasar Karat Ipoh', 'Perak', 4.5960, 101.0901, NULL, NULL),
(84, 'Muzium Arkeologi Lenggong', 'Perak', 5.0548, 100.9741, NULL, NULL),
(85, 'The Banjaran Hotsprings Retreat', 'Perak', 4.6311, 101.1561, NULL, NULL),
(86, 'Kek Long Tong Cave Temple', 'Perak', 4.5590, 101.1294, NULL, NULL),
(87, 'Tasik Cermin Gunung Rapat', 'Perak', 4.5589, 101.1201, NULL, NULL),
(88, 'Masjid Sultan Idris Shah II', 'Perak', 4.5964, 101.0758, NULL, NULL),
(89, 'Masjid Muhammadiyah Ipoh', 'Perak', 4.6496, 101.1073, NULL, NULL),
(90, 'Air Terjun Lata Iskandar', 'Perak', 4.3242, 101.3256, NULL, NULL),
(91, 'Bukit Kledang', 'Perak', 4.5804, 101.0253, NULL, NULL),
(92, 'Ladang Limau Tambun GOChin', 'Perak', 4.5648, 101.1137, NULL, NULL),
(93, 'Air Terjun Ulu Kenas', 'Perak', 4.6869, 100.8857, NULL, NULL),
(94, 'Air Terjun Lata Kinjang', 'Perak', 4.2988, 101.2540, NULL, NULL),
(95, 'Taman Eko Rimba Lata Kekabu', 'Perak', 5.0504, 100.9448, NULL, NULL),
(96, 'Riverside Camp Gopeng', 'Perak', 4.4478, 101.1984, NULL, NULL),
(97, 'Pusat Rekreasi Hotsprings Lubuk Timah', 'Perak', 4.5597, 101.1620, NULL, NULL),
(98, 'Swiss-Garden Beach Resort Damai Laut', 'Perak', 4.2601, 100.5917, NULL, NULL),
(99, 'Kubu Belanda', 'Perak', 4.2008, 100.5760, NULL, NULL),
(100, 'Lata Tebing Tinggi', 'Perak', 5.2062, 100.7811, NULL, NULL),
(101, 'Ulu River Lodge', 'Perak', 4.4439, 101.1989, NULL, NULL),
(102, 'Trong Hotspring', 'Perak', 4.7526, 100.7211, NULL, NULL),
(103, 'Ipoh Mural Art Trail', 'Perak', 4.5953, 101.0786, NULL, NULL),
(104, 'Marina Island Pangkor Resort', 'Perak', 4.2103, 100.6039, NULL, NULL),
(105, 'Kem As Salam', 'Perak', 5.2578, 100.8438, NULL, NULL),
(106, 'Kem Ayer Hitam, Batu Kurau', 'Perak', 5.0183, 100.8320, NULL, NULL),
(107, 'Spritzer Eco Park', 'Perak', 4.8208, 100.7520, NULL, NULL),
(108, 'Perak Agrotourism Resort', 'Perak', 4.2547, 101.0428, NULL, NULL),
(109, 'Kompleks Sejarah Pasir Salak', 'Perak', 4.1735, 100.9469, NULL, NULL),
(110, 'Pusat Konservasi Penyu Segari', 'Perak', 4.3630, 100.5814, NULL, NULL),
(111, 'Refarm', 'Perak', 4.2706, 101.1702, NULL, NULL),
(112, 'Victoria Bridge', 'Perak', 4.8377, 100.9638, NULL, NULL),
(113, 'UiTM Food Truck', 'Terengganu', 6.4475, 100.2770, 'Burger', '8AM-10AM'),
(114, 'Fatin Food Truck', 'Perlis', 6.4502, 100.2754, 'Burger', '8AM-10AM');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
