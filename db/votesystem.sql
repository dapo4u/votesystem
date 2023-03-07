-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 02:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$r0NrMA3v5Zd6P9agBMY.k.K4V2JvCBH6se2DXjr9n5H5It7e0J0Fe', 'EDUCATOR OLATUNJI', ' Voting Point 2072', 'FB_IMG_16753631535704769.jpg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 'KAZEEM  SHOKUNBI', '(ADP)', 'ADP.jpeg', ''),
(19, 9, 'OLUFEMI  FALANA', '(APP)', 'APP.jpeg', ''),
(20, 9, 'ADEYEMI  HARRISON', '(AAC)', 'AAC.jpeg', ''),
(21, 9, 'OLUTOSIN    JOLAOLUWA', '(APM)', 'APM.jpeg', ''),
(22, 9, 'DAPO  ABIODUN', '(APC)', 'APC.jpeg', ''),
(23, 9, 'OLUFEMI  OGUNTOYINBO', '(NNPP)', 'NNPP.jpeg', ''),
(24, 9, 'TOFUNMI  OGUNROMBI', '(NRM)', 'NRM.jpeg', ''),
(25, 9, 'LADI  ADEBUTU', '(PDP)', 'pdp.png', ''),
(26, 9, 'CYRUS   JOHNSON', ' (PRP)', 'PRP.jpeg', ''),
(27, 9, 'TONY  OJESHINA', '(SDP)', 'SDP.png', ''),
(28, 9, 'ABAYOM MONSURU  OMOSANYA', '(ACCORD)', 'ACCORD.jpeg', ''),
(29, 9, 'SAMUEL ADEYEMI', ' (AA)', 'AA.jpeg', ''),
(30, 9, 'OLUBIYI   OTEGBEYE', '(ADC)', 'ADC.jpeg', ''),
(31, 10, 'HAKEEM  DICKSON', '(ACCORD)', 'ACCORD.jpeg', ''),
(32, 10, 'TOPE  BALOGUN', '(AA)', 'AA.jpeg', ''),
(33, 10, 'ISHOLA  BAMIDELE', '(ADP)', 'ADP.jpeg', ''),
(34, 10, 'ABIOLA ROSELINE   ADEYEMI', '(APP)', 'APP.jpeg', ''),
(35, 10, 'AKEEM   OLAYIWOLA', '(AAC)', 'AAC.jpeg', ''),
(36, 10, 'FUNSO DOHERTY', '(ADC)', 'ADC.jpeg', ''),
(37, 10, 'FUNMILAYO  KUPOLIYI', '(APM)', 'APM.jpeg', ''),
(38, 10, 'BABAJIDE  SANWO-OLU', '(APC)', 'APC.jpeg', ''),
(39, 10, 'WASIU OLAWALE OLUWO', '(BP)', 'BOOT.jpeg', ''),
(40, 10, 'OLANREWAJU JIM-KAMAL', ' (NNPP)', 'NNPP.jpeg', ''),
(41, 10, 'AKINWUNMI   ISHOLA  BRAITHWAIT', '(NRM)', 'NRM.jpeg', ''),
(42, 10, 'ABDUL-AZEEZ  OLAJIDE ADEDIRAN', '(PDP)', 'pdp.png', ''),
(43, 10, 'TAOFEEK OLAKUNLE  UTHMAN', '(SDP)', 'SDP.png', ''),
(44, 10, 'ADEBAYO   AJAYI', '(YPP)', 'cropped-ypp-logo.png', ''),
(45, 10, 'ADEKUNLE  ADENIPEBI', '(ZLP)', 'ZLP.jpeg', ''),
(46, 8, 'CHRISTOPHER  IMUMULEN', '(ACCORD)', 'ACCORD.jpeg', ''),
(47, 8, 'SANNI YABAGI   YUSUF', '(ADP)', 'ADP.jpeg', ''),
(48, 8, 'ALMUSTAPHA     HAMZA', '(AA)', 'AA.jpeg', ''),
(49, 8, 'NNADI CHARLES   OSITA', '(APP)', 'APP.jpeg', ''),
(50, 8, 'OMOYELE  SOWORE', '(AAC)', 'AAC.jpeg', ''),
(51, 8, 'DUMEBI   KACHIKU', '(ADC)', 'ADC.jpeg', ''),
(52, 8, 'BOLA     AHMED   TINUBU', '(APC)', 'APC.jpeg', ''),
(53, 8, 'PETER    UMEADI', '(APGA)', 'APGA_Nigeria_Logo.png', ''),
(54, 8, 'YUSUF MAMMAN    DAN TALLE', '(APM)', 'APM.jpeg', ''),
(55, 8, 'ADENUGA SUNDAY    OLUFEMI', '(BP)', 'BOOT.jpeg', ''),
(56, 8, 'PETER   OBI', '(LP)', 'lp.png', ''),
(57, 8, 'OSAKWE FELIX  JOHNSON', ' (NRM)', 'NRM.jpeg', ''),
(58, 8, 'RABIU MUSA   KWANKWASO', '(NNPP)', 'NNPP.jpeg', ''),
(59, 8, 'ATIKU    ABUBAKAR', '(PDP)', 'pdp.png', ''),
(60, 8, 'KOLA    ABIOLA', '(PRP)', 'PRP.jpeg', ''),
(61, 8, 'ADEWOLE    ADEBAYO', '(SDP)', 'SDP.png', ''),
(62, 8, 'MALIK    ADO-IBRAHIM', '(YPP)', 'cropped-ypp-logo.png', ''),
(63, 8, 'NWANYANWU  DANIEL  DABERECHUKW', '(ZLP)', 'ZLP.jpeg', ''),
(64, 10, 'GBADEBO RHODES-VIVOUR', '(LP)', 'lp.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'PRESIDENT', 1, 1),
(9, ' OGUN GUBERNATORIAL ELECTION', 1, 2),
(10, 'LAGOS  GUBERNATORIAL ELECTION', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, 'w4yTdlRjLPWH2t1', '$2y$10$JkiTUvUuphVCFdv3oQQAk.oXG0t7Kg3tSMstMhwca7oowtSIHnc6.', 'Vivian ', 'Okoro', 'FB_IMG_16757701494350247.jpg'),
(3, 'IGjnscRfDHV7J4Y', '$2y$10$92rny8fnY/PMa8RqbedtxOTw0lzPh8NMegWT.m6D4KE8Ar37y64vW', 'BODE  ', 'ADEWALE', 'FB_IMG_16752657252528687.jpg'),
(4, 'VUYQ7lLxpHZms8N', '$2y$10$QvJrEWxx/IWvxOFrAp2tUONNqqBPIv2mG7GZB6ovDgI/oBz55NlFi', 'JOHN  ', 'MONDAY', 'FB_IMG_16757703139528474.jpg'),
(5, 'dTLRqtkYm4Ucz2X', '$2y$10$Ro26NRAfZF/EB2jTkqlEIuiqqvoY3lGC6w.Dk/KVSXInUUqKazMj.', 'DANIEL ', 'OLUFEMI', ''),
(6, 'JFIaOxepPWX24Lk', '$2y$10$.edjGcpLp7oY7IWvB9RwTOmPD7plYFnMUD/UzqpOOaqnAp590tBoO', 'HENRY ', 'LANRE', 'FB_IMG_16757703668127334.jpg'),
(7, 'LvVgB1E32kdUR5A', '$2y$10$iuQNb9WEQ.yoHirp0qER8eW3s4twutVde1S0x.CRhmFHn0/RiVw5e', 'ADUNIADE  ', 'BADMUS', 'FB_IMG_16752662462603623.jpg'),
(8, 'GJdC8NvKnsgbuYI', '$2y$10$BmkPnSJf7QOz2SsW3REXd.zjiFCa2SmuxgLXKBOAaXNgBD.T/fy7G', 'AYODELE', ' AYOMIDE', 'FB_IMG_16752661841873401.jpg'),
(9, 'oRFf3GHnCvYxjqK', '$2y$10$l629bD.wwvXNFvgAfArU6eZv3fIHj2.m1mNXtYRWawwkjegWgf/MW', 'ABOSEDE ', 'ALABI', 'FB_IMG_16752657648218327.jpg'),
(10, 'CF6dWbiIjOhDUBu', '$2y$10$vkW5EwteuQ.iZNVdkO4VQey1sdSwID.LTZ1iWXVMx9LOlBfoCyGEK', 'MICHAEL ', 'OYENIRAN', 'FB_IMG_16757704179255124.jpg'),
(11, 'oUDfTipnys2rtWu', '$2y$10$3p2mggnCy54S3mi5T4dIROZl6I5KatHF.nNRAJY92q.vq4JSiRRLe', 'OBINNA  ', 'OKORO', 'FB_IMG_16757702394173878.jpg'),
(12, 'neEO7uYySrl4AgF', '$2y$10$NYNTctnjVkKQdCfxt33FX.ZZp3D7oaysT5QoLNXLTZoQDw6ehKunK', 'ALICE  ', 'SARAH', 'FB_IMG_16757701679016089.jpg'),
(13, 'AnxyZje69PUWRMp', '$2y$10$WSMy5r8gukFRjTghT40MIOyuxGMYjOElCCmHsbw308j7lNvIC1XjS', 'PATRICK', ' EKWUEME', 'FB_IMG_16757702854432494.jpg'),
(14, 'obPsCWqv8TGVlaY', '$2y$10$YUk/9PIl9IW5oU7xi9S7dO7NFToiGpFX41sA3IEjQk7n5hnlrsyxK', 'OZIOMA  ', 'OKOLICHI', 'FB_IMG_16757700848595181.jpg'),
(15, 'KEHVYj3L1MSQ5xr', '$2y$10$1WZsd1diw6wDCdJ0oSr9SO9OkhiAqOEnLJTKCJj7zAclPpJVjDnki', 'SOMTO  ', 'CHUKWU', 'FB_IMG_16757704778004258.jpg'),
(16, '9KfUug6ERvWnPw1', '$2y$10$RE65A/2KdEhj9UiFinMRaevIVwFThH3livfgwPR4kFQn5P5uIFngy', 'MUSA  ', 'GABRIEL', 'FB_IMG_16757702505213919.jpg'),
(18, 'DrRYh5l4VfNwnXx', '$2y$10$yYxSAcREC.g73CG9G8aDsOkvIzcdyTEJp8v29/yYp/LzGCYR5cMwO', 'JIMOH', 'IBRAHIM', 'FB_IMG_16757705045823342.jpg'),
(19, '7g2AKe64IGFcDrk', '$2y$10$f0uKRHX2vL5DsK8CeQG7deDnUF4qbcv64afRn76ZcntIb0zw6nFQ2', 'AKINOLA ', 'TOBI', 'FB_IMG_16757704966180134.jpg'),
(20, 'kweTu9csdR4yPZi', '$2y$10$RThFPz4FgxK60OBEnv681.5IvgpWCOXHxH/AnydxSYh3HZlpEIOQm', 'OGUNDIPE ', 'DAYO', 'FB_IMG_16757703409587487.jpg'),
(21, '1MuF475onrWgz9K', '$2y$10$tU8NU/w.mNvwJ/788eX2/./TR.mc3ntDWm/JO9x5LD0yKYMc4fOi2', 'ONUOHA ', 'CHINYERE', 'FB_IMG_16757701020525640.jpg'),
(22, '75CoIMjHtkZGlEv', '$2y$10$aet3VFDodNPevF7nCjjC4uLjRT/wQpu89RbW7IudYLwAfqHTcxMxC', 'NASIRU', 'SALISU', 'FB_IMG_16757704442791389.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
