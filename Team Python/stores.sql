-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 02:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stores`
--
CREATE DATABASE IF NOT EXISTS `stores` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `stores`;

-- --------------------------------------------------------

--
-- Table structure for table `comics`
--

CREATE TABLE `comics` (
  `ComicsID` tinyint(6) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `County` varchar(100) NOT NULL,
  `Website` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comics`
--

INSERT INTO `comics` (`ComicsID`, `Name`, `Address`, `Phone`, `County`, `Website`) VALUES
(1, 'A&S Comics', '563 Cedar Ln, \r\nTeaneck, NJ 07666', '201-801-0500', 'Bergen', 'https://www.ascomics.com'),
(2, 'Anthony\'s Comic Books', '118 Fort Lee Rd, \r\nLeonia, NJ 07605', '201-849-5223', 'Bergen', 'http://anthonyscomicbookart.com\r\n'),
(3, 'Joker\'s Child Comics', '12-23 River Rd, \r\nFair Lawn, NJ 07410', '201-794-6830', 'Bergen', 'http://jokerschild.com'),
(4, 'Paradox Comics', '269 Ridge Rd, \r\nNorth Arlington, NJ 07031', '201-998-1212', 'Bergen', 'https://www.facebook.com/Paradox-Comics-104957586214907/'),
(5, 'Zapp! Comics', '574 Valley Rd, \r\nWayne, NJ 07470', '973-628-4500', 'Passaic', 'http://zappcomics.com\r\n'),
(6, 'Anthony\'s Comic Book', '43 Romeo St, \r\nMoonachie, NJ 07074', '917-821-8893', 'Bergen', 'http://anthonyscomicbookart.com'),
(7, 'Time Warp Comics & Games', '555A Pompton Ave, \r\nCedar Grove, NJ 07009', '973-857-9788', 'Essex', 'http://timewarpcomics.com\r\n'),
(8, 'Fortress of Solitude', '53 University Ave #101, \r\nNewark, NJ 07102', '973-242-3725', 'Essex', 'https://www.facebook.com/thefortresstv/'),
(9, 'Rogue Comics & Collectibles', '105 Union Ave N, \r\nCranford, NJ 07016', '908-276-9069', 'Union', 'http://roguecomics.com\r\n'),
(10, 'Gotham Underground', '147 E Main St, \r\nRamsey, NJ 07446', '201-651-0482', 'Bergen', 'http://gucomicshop.com\r\n'),
(11, 'East Side Mags', '7 S Fullerton Ave, \r\nMontclair, NJ 07042', '862-33-4961', 'Essex', 'http://eastsidemags.com\r\n'),
(12, 'Gotham Comics & Toys', '295 Bloomfield Ave, \r\nCaldwell, NJ 07006', '973-226-3900', 'Essex', 'http://gothamcomicsnj.com\r\n'),
(13, 'FUNNYBOOKS Comics & Stuff', '98 N Beverwyck Rd, \r\nLake Hiawatha, NJ 07034', '973-263-1733', 'Morris', 'http://funnyrama.com\r\n'),
(14, 'Main Street Comics & Toys', '74 N Main St, \r\nMilltown, NJ 08850', '732-828-7886', 'Middlesex', 'http://mainstreetcomicsnj.com\r\n'),
(15, 'Amazing Heroes', '966 Stuyvesant Ave, \r\nUnion, NJ 07083', '908-687-4338', 'Union', 'http://amazingheroes.com\r\n'),
(16, 'Manifest Comics', '766 Broadway #3, \r\nBayonne, NJ 07002', '201-535-5330', 'Hudson', 'http://manifestcomics.com'),
(17, 'J C Comics Inc', '579 US-22, \r\nNorth Plainfield, NJ 07060', '908-756-1212', 'Somerset', 'http://jccomics.com'),
(18, 'Clockwork Comics & Cards', '1003 Vauxhall Rd, \r\nUnion, NJ 07083', '908-688-2660', 'Union', 'http://clockworkcomicsandcards.com'),
(19, 'Dewey\'s Comic City', '13 Park Ave, \r\nMadison, NJ 07940', '973-593-0042', 'Morris', 'http://deweyscomiccity.com');

-- --------------------------------------------------------

--
-- Table structure for table `crystals`
--

CREATE TABLE `crystals` (
  `Name` varchar(200) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `CrysID` smallint(6) NOT NULL,
  `County` varchar(50) NOT NULL,
  `Website` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crystals`
--

INSERT INTO `crystals` (`Name`, `Address`, `Phone`, `CrysID`, `County`, `Website`) VALUES
('Rocky\'s Crystals & Minerals', '304 Millburn Ave, \r\nMillburn, NJ 07041', '973-467-2222', 0, 'Essex ', 'http://rockyscrystalsonline.com'),
('Rocky\'s Crystals & Minerals', '559 Bloomfield Ave, \r\nMontclair, NJ 07042', '973-233-1364', 1, 'Essex', 'http://rockyscrystalsonline.com'),
('Rock My World', '9100 Tonnelle Ave, \r\nNorth Bergen, NJ 07047', '201-713-9223', 2, 'Hudson', 'https://www.rockmyworldstore.com'),
('Rock Collage Healing Gallery', '364 Cedar Ln, \r\nTeaneck, NJ 07666', '201-357-2347', 3, 'Bergen', 'http://rockcollage.com'),
('Mystical World', '648 Ridge Rd, \r\nLyndhurst, NJ 07071', '201-896-3999', 4, 'Bergen ', 'http://mysticalworld.net'),
('Mystic Spirit Metaphysical Shoppe', '324 Bloomfield Ave, \r\nMontclair, NJ 07042', '973-509-7155', 5, 'Essex ', 'http://mysticspirit.net'),
('Summit Crystals', '510 Morris Ave, \r\nSummit, NJ 07901', '908-277-4080', 6, 'Union ', 'http://benesserenj.com'),
('Luce’s Euphoria Crystal Shop', '125 E 2nd Ave, \r\nRoselle, NJ 07203', '908-242-7287', 7, 'Union ', 'https://www.etsy.com/shop/luceseuphoria'),
('Blu Lotus Metaphysical', '20 Church St, \r\nMontclair, NJ 07042', '973-783-9866', 8, 'Essex', 'http://blulotuscenter.com'),
('Goddess In Eden', '282 Bloomfield Ave, \r\nVerona, NJ 07044', '973-919-3600', 9, 'Essex', 'http://goddessineden.com'),
('Cayla\'s Crystals', '90 Wilson Ave Yellow Bldg #13-14,\r\nManalapan Township, NJ 07726', '732-331-5471', 10, 'Monmouth', 'http://caylascrystals.com'),
('The Gem Mine', '65 Westwood Ave, \r\nWestwood, NJ 07675', '201-722-8676', 11, 'Bergen', 'http://thegemminenj.com'),
('Earth Spirit New Age Center', '25 Monmouth St, \r\nRed Bank, NJ 07701', '732-842-3855', 12, 'Monmouth', 'http://earthspiritnewage.com'),
('Yeyeo Botanica', '186 W Market St, \r\nNewark, NJ 07103', '973-623-1453', 13, 'Essex', 'https://yeyeo.com'),
('Crystal Palace', '65 Main St, \r\nSomerville, NJ 08876', '908-707-0202', 14, 'Somerset', 'http://crystalpalacenj.com'),
('New Earth Healing Gifts And Services', '177 Main St,\r\nManasquan, NJ 08736', '732-800-3300', 15, 'Monmouth', 'http://newearthhealinggifts.com');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `GenreID` tinyint(20) NOT NULL,
  `StoreType` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`GenreID`, `StoreType`) VALUES
(1, 'dwad'),
(2, 'dsadas'),
(3, 'TEST'),
(4, 'TEST'),
(5, 'Hello!'),
(6, 'Hello!'),
(7, 'Sewing'),
(8, 'Photography'),
(9, ''),
(10, 'Bicycle'),
(11, 'Skiing');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LoginID` tinyint(6) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LoginID`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `new_store_submition`
--

CREATE TABLE `new_store_submition` (
  `NewStoreSubmitionID` tinyint(20) NOT NULL,
  `storeType` varchar(200) NOT NULL,
  `StoreName` varchar(200) NOT NULL,
  `StreetAddress` varchar(200) NOT NULL,
  `StoreCity` varchar(200) NOT NULL,
  `ZipCode` varchar(200) NOT NULL,
  `PhoneNumber` varchar(200) NOT NULL,
  `County` varchar(200) NOT NULL,
  `Website` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_store_submition`
--

INSERT INTO `new_store_submition` (`NewStoreSubmitionID`, `storeType`, `StoreName`, `StreetAddress`, `StoreCity`, `ZipCode`, `PhoneNumber`, `County`, `Website`) VALUES
(1, 'sadas', 'dasdas', 'dasd', 'dasdas', 'dsadsa', 'dasd', 'sadasd', 'sadsad'),
(2, 'Sewing', 'Stitches', '123 Cherry Lane', 'New Milford', '07652', '201-867-5309', 'Bergen', 'example.com'),
(3, 'Sneakers', 'Shoes \"R\" Us', '49 Aglet Way', 'ShoeLace', '78542', '201-879-4444', 'Essex', 'shoes.example'),
(4, 'Bowling', 'Bowl n Things', '123 Alley Way', 'Dumont', '07628', '201-777-7777', 'Bergen', 'bowl.ing.example.com');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `RecordsID` smallint(6) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `County` varchar(50) NOT NULL,
  `Website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`RecordsID`, `Name`, `Address`, `Phone`, `County`, `Website`) VALUES
(1, 'Record King', '303 Main St, \r\nHackensack, NJ 07601', '201-488-4232', 'Bergen', 'https://www.facebook.com/The-Record-King-215194853837/'),
(2, 'Tunes', '225 Washington St, \r\nHoboken, NJ 07030', '201-653-3355', 'Hudson', 'http://tunesonline.net'),
(3, 'Iris Records', '109 Brunswick St, \r\nJersey City, NJ 07302', '201-222-9515', 'Hudson', 'http://irisrecordsjc.com'),
(4, 'Music Country', '728 Anderson Ave, \r\nCliffside Park, NJ 07010', '201-943-1045', 'Bergen', 'http://musiccountryrecords.com'),
(5, 'Ez 2 Collect', '133 Broadway, \r\nElmwood Park, NJ 07407', '201-791-3833', 'Bergen', 'http://ez2collect.com'),
(6, 'Relic Record Shoppe', '140 Main St, \r\nHackensack, NJ 07601', '201-342-4848', 'Bergen', 'https://www.yelp.com/biz/relic-record-shoppe-hackensack'),
(7, 'Station 1 Records & Books', '1 Station Plaza,\r\nPompton Lakes, NJ 07442', '973-307-0212', 'Passaic', 'https://station-1-books-vinyl-and-vintage-shop.business.site'),
(8, 'Scotti\'s Record Shop', '351 Springfield Ave, \r\nSummit, NJ 07901', '908-277-3893', 'Union', 'http://scottisrecordshops.com'),
(9, 'Flipside Records', '120 Wanaque Ave, \r\nPompton Lakes, NJ 07442', '973-835-8448', 'Passaic', 'https://www.facebook.com/pages/category/Movie---Music-Store/Flipside-2-Records-175245995859906/'),
(10, 'Vintage Vibe', '47 Prospect St #1645, \r\nMidland Park, NJ 07432', '201-452-5774', 'Bergen', 'https://www.facebook.com/vintagevibemidlandpark'),
(11, 'The Second Saturday Record and CD Show', '97 Parish Dr, \r\nWayne, NJ 07470', '973-209-6067', 'Passaic', 'http://showsandexpos.com'),
(12, 'Spina Records', '118 Easton Ave, \r\nNew Brunswick, NJ 08901', '732-543-0642', 'Middlesex', 'http://spinarecords.com'),
(13, 'American Oldies Records', '101 E Main St, \r\nLittle Falls, NJ 07424', '973-890-9001', 'Passaic', 'https://www.facebook.com/AmericanOldiesRecords/'),
(14, 'Music Connection', '12 Summit Ave, \r\nElmwood Park, NJ 07407', '201-797-5212', 'Bergen', 'https://www.facebook.com/MusicConnection201/'),
(15, 'Sound Exchange', '1482 NJ-23, \r\nWayne, NJ 07470', '973-694-6049', 'Passaic', 'https://www.facebook.com/pages/The-Sound-Exchange/143676765667307'),
(16, 'Princeton Record Exchange', '20 S Tulane St, \r\nPrinceton, NJ 08542', '609-921-0881', 'Mercer', 'http://prex.com'),
(17, 'Lofidelic Records', '904 Main St, \r\nBelmar, NJ 07719', '732-722-7882', 'Monmouth', 'http://lofidelic.com'),
(18, 'Revilla Grooves & Gear', '126 N Main St, \r\nMilltown, NJ 08850', '732-447-3149', 'Middlesex', 'http://revillagroovesandgear.com');

-- --------------------------------------------------------

--
-- Table structure for table `videogames`
--

CREATE TABLE `videogames` (
  `GameID` smallint(10) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Phone` varchar(25) NOT NULL,
  `Website` varchar(500) NOT NULL,
  `Google` varchar(1000) NOT NULL,
  `County` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videogames`
--

INSERT INTO `videogames` (`GameID`, `Name`, `Address`, `Phone`, `Website`, `Google`, `County`) VALUES
(1, 'GameZone', '106 Broadway,\r\nHillsdale,NJ 07642', '201-358-6800', 'https://www.gamezonenj.com', '', 'Bergen'),
(2, 'Digital Press', '387 Piaget Ave,\r\nClifton, NJ 07011', '973-772-1111', 'http://www.dpvideogames.com', '', 'Passaic '),
(3, 'Digital Press', '765 Mountain Ave, \r\nSpringfield Township, NJ 07081', '973-467-0401', 'https://www.facebook.com/digitalpress2', '', 'Union '),
(4, 'Gamer\'s Paradise', '5 W Passaic St, \r\nRochelle Park, NJ 07662', '201-490-4699', 'https://www.gpvideogames.com', '', 'Bergen'),
(5, 'Gamer\'s Paradise', '663 Westwood Ave, \r\nRiver Vale, NJ 07675', '201-254-7330', 'https://www.gpvideogames.com', '', 'Bergen'),
(6, 'Blast From The Past Video Games & Collectibles', 'Bergen Blvd,\r\nRidgefield, New Jersey 07657', ' 201-402-8162', 'https://www.facebook.com/blastfromthepastvideogames/', '', 'Bergen'),
(7, 'Side Scrollers', '116 Park Ave, \r\nEast Rutherford, NJ 07073', '201-267-6332', 'https://sidescrollersnj.com', '', 'Bergen'),
(8, 'Level 1 Games', '615 Route 23 South, \r\nPompton Plains, NJ 07444', '862-248-0456', 'http://level1games.com', '', 'Morris'),
(9, 'Game Plus', '608 Main Ave, \r\nPassaic, NJ 07055', '973-773-5260', 'https://www.facebook.com/pages/category/Video-Game/Game-Plus--853566898037880/', '', 'Passaic'),
(10, 'Toy and Game World', '298 Central Ave, \r\nJersey City, NJ 07307', '201-233-1656', 'https://www.facebook.com/Toyandgameworld/', '', 'Hudson'),
(11, 'Retro Game Cave', '694 Bergen Blvd 1st fl, \r\nRidgefield, NJ 07657', '201-679-5966', 'http://theretrogamecave.com/index.html', '', 'Bergen'),
(12, 'NuevaLinea (Toy & Game House)', '5203 Bergenline Ave, \r\nWest New York, NJ 07093', '201-864-9325', 'http://nuevatoys.com', '', 'Hudson'),
(13, 'Galaxie Electronics & Video Games', '207 Main St, \r\nPaterson, NJ 07505', '973-925-2001', 'http://galaxieelectrogames.com', '', 'Passaic'),
(14, 'Retro Classics Video Games', '5 Division St, \r\nSomerville, NJ 08876', '908-507-5856', 'https://www.facebook.com/retroclassicsvideogames/', '', 'Somerset');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`ComicsID`);

--
-- Indexes for table `crystals`
--
ALTER TABLE `crystals`
  ADD PRIMARY KEY (`CrysID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`GenreID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `new_store_submition`
--
ALTER TABLE `new_store_submition`
  ADD PRIMARY KEY (`NewStoreSubmitionID`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`RecordsID`);

--
-- Indexes for table `videogames`
--
ALTER TABLE `videogames`
  ADD PRIMARY KEY (`GameID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comics`
--
ALTER TABLE `comics`
  MODIFY `ComicsID` tinyint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `GenreID` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LoginID` tinyint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `new_store_submition`
--
ALTER TABLE `new_store_submition`
  MODIFY `NewStoreSubmitionID` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `RecordsID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `videogames`
--
ALTER TABLE `videogames`
  MODIFY `GameID` smallint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
