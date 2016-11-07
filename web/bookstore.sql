-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2016 at 04:28 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `Author_Id` varchar(4) NOT NULL,
  `Name` char(25) DEFAULT NULL,
  PRIMARY KEY (`Author_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`Author_Id`, `Name`) VALUES
('ARON', 'Aronson, Larry'),
('ARPA', 'Arpajian, Scott'),
('BEBA', 'Bebak, Arthur'),
('BRAN', 'Brandon, Bill'),
('BROW', 'Brown, Mark'),
('CAST', 'Castro, Elizabet'),
('CEAR', 'Cearly, Kent'),
('CHIN', 'Chin, Francis'),
('CHU1', 'Chu, Kenny'),
('DOWN', 'Downing, Troy'),
('DUNT', 'Duntemann, Jeff'),
('EVAN', 'Evans, Tim'),
('EWRI', 'Erwin, Mike'),
('FOUS', 'Foust, Jeff'),
('FOX1', 'Fox, David'),
('GAIT', 'Gaither, Mark'),
('GRAH', 'Graham, Ian'),
('GROV', 'Groves, Dawn'),
('HARR', 'Harris, Stuart'),
('HASS', 'Hassinger, Sebastian'),
('JAME', 'James, Steve'),
('JUNG', 'Jung, John'),
('KARP', 'Karpinski, Richard'),
('KENN', 'Kennedy, Bill'),
('KERV', 'Kerven, David'),
('KIDD', 'Kidder, Gayle'),
('KNAU', 'Knauss, Greg'),
('KRCM', 'Krcma, Marianne'),
('LEJE', 'LeJeune, Urban'),
('LEMA', 'Lemay, Laura'),
('MEGA', 'Megan, Robert'),
('MOR1', 'Morris, Bruce'),
('MOR2', 'Morris, Mary'),
('MUL1', 'Mullen, Robert'),
('MUL2', 'Muller, Nathan'),
('MUSC', 'Musciano, Chuck'),
('NEOU', 'Neou, Vivian'),
('PARK', 'Parker, Elisabeth'),
('POWE', 'Powell, James'),
('RAND', 'Randall, Neil'),
('RAY1', 'Ray, Deborah'),
('RAY2', 'Ray, Eric'),
('READ', 'Ready, Kevin'),
('RECK', 'Recker, Mimi'),
('SAVO', 'Savola, Tom'),
('SCHA', 'Scharf, Dean'),
('SCHE', 'Schengili, Keith'),
('SMIT', 'Smith, Bud'),
('SOSI', 'Sosinsky, Barrie'),
('STAU', 'Stauffer, Todd'),
('TAYL', 'Taylor, Dave'),
('TITT', 'Tittel, Ed'),
('WARN', 'Warner, Janine'),
('ZAKO', 'Zakour, John');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `Title` varchar(60) DEFAULT NULL,
  `ISBN` char(13) NOT NULL,
  `Publisher_Id` char(5) DEFAULT NULL,
  `CategoryID` varchar(5) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Title`, `ISBN`, `Publisher_Id`, `CategoryID`, `Price`) VALUES
('HTML for the World Wide Web: Visual Quick Start Guide', '0-02188448-8', '00218', '1', '17.95'),
('Beyond HTML', '0-07-882198-3', '00788', '32', '27.95'),
('HTML Publishing on the Internet', '0-07-912100-4', '00791', '32', '45.00'),
('Webmaster''s Guide to HTML', '0-07-912273-6', '00791', '32', '34.95'),
('HTML Visual Quick Reference', '0-07-970411-0', '07897', '32', '15.00'),
('Advanced HTML & CGI Writer''s Companion', '0-12623540-6', '01262', '32', '29.95'),
('The Invention of Religion ', '0-13-232331-1', '01356', '1', '40.00'),
('HTML For Fun and Profit: Gold Signature Edition', '0-13-242488-6', '01356', '1', '40.00'),
('The Web Page Recipe Book', '0-13460296-X', '01356', '32', '29.95'),
('Netscape and HTML EXplorer', '0-18-83577578', '18835', '32', '39.99'),
('HTML Sourcebook, 2nd Ed.', '0-47-114242-5', '04711', '32', '30.00'),
('HTML Plus!', '0-53451626-2', '05345', '32', '36.00'),
('Using HTML', '0-78-970622-9', '07897', '32', '24.99'),
('Using HTML Special Edition', '0-78-970758-6', '07897', '32', '49.99'),
('10 Minute Guide to HTML', '0-78970541-9', '07897', '32', '15.00'),
('Green Illusions ', '0-78970812-4', '07897', '1', '34.99'),
('HTML Quick Reference', '0-78970867-1', '07897', '32', '17.99'),
('HTML In Action', '1-55615948-X', '15561', '1', '29.95'),
('The Origin of Species ', '1-56-276352-0', '15627', '1', '24.95'),
('HTML: The Definitive Guide', '1-56-592175-5', '15659', '32', '29.95'),
('HTML Publishing for Netscape, Windows Edition', '1-56-604288-7', '15660', '32', '39.95'),
('Creating Cool Web Pages with HTML', '1-56-884454-9', '15688', '32', '19.99'),
('More HTML For Dummies', '1-56-88499-66', '15688', '32', '22.99'),
('Hybrid HTML Design', '1-56205617-4', '15620', '32', '35.00'),
('How to Use HTML 3', '1-56276390-3', '15627', '32', '24.99'),
('Creating Web Pages for Dummies', '1-56884645-2', '15688', '32', '20.00'),
('Foundations of WWW Programming with HTML and CGI', '1-56884703-3', '15688', '32', '39.99'),
('The Del Posto Cookbook ', '1-56884990-7', '15688', '23', '12.99'),
('HTML Web Publisher''s Construction Kit', '1-57-169018-2', '15716', '32', '36.95'),
('A Short History of Nearly Everything ', '1-57-169050-7', '15716', '1', '39.99'),
('Teach Yourself More Web Publishing with HTML in a Week', '1-57-521005-3', '15752', '32', '29.99'),
('Teach Yourself Web Publishing with HTML 3.0 in a Week, 2e', '1-57-521064-9', '15752', '32', '29.99'),
('Teach Yourself Web Publishing with HTML 3.2 in 14 Days', '1-57-521096-7', '15752', '32', '59.99'),
('Cosmos', '1-57169066-2', '15716', '1', '39.99'),
('Web Site Wizardry', '1-88-357787-X', '18835', '32', '34.99'),
('The Web Page Workbook', '1-88790205-8', '18879', '32', '19.95'),
('AAA', 'AAA', 'AAA', 'AAA', '200.87'),
('new', 'new', 'new', 'new', '100.50');

-- --------------------------------------------------------

--
-- Table structure for table `booksauthors`
--

CREATE TABLE IF NOT EXISTS `booksauthors` (
  `ISBN` char(13) NOT NULL,
  `Author_Id` char(4) NOT NULL,
  `Seq_No` int(5) DEFAULT NULL,
  PRIMARY KEY (`ISBN`,`Author_Id`),
  KEY `Author_Id` (`Author_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booksauthors`
--

INSERT INTO `booksauthors` (`ISBN`, `Author_Id`, `Seq_No`) VALUES
('0-02188448-8', 'CAST', 1),
('0-07-882198-3', 'KARP', 1),
('0-07-912100-4', 'CHIN', 2),
('0-07-912100-4', 'CHU1', 1),
('0-07-912273-6', 'KRCM', 1),
('0-07-970411-0', 'SCHA', 1),
('0-12623540-6', 'SCHE', 1),
('0-13-232331-1', 'NEOU', 1),
('0-13-232331-1', 'RECK', 1),
('0-13-242488-6', 'MOR2', 1),
('0-13460296-X', 'PARK', 2),
('0-13460296-X', 'SOSI', 1),
('0-18-83577578', 'DUNT', 2),
('0-18-83577578', 'LEJE', 1),
('0-47-114242-5', 'GRAH', 1),
('0-53451626-2', 'POWE', 1),
('0-78-970622-9', 'JUNG', 1),
('0-78-970622-9', 'KNAU', 1),
('0-78-970622-9', 'RAND', 1),
('0-78-970622-9', 'SAVO', 1),
('0-78-970758-6', 'MUL2', 1),
('0-78970541-9', 'EVAN', 1),
('0-78970812-4', 'STAU', 1),
('0-78970867-1', 'MUL1', 1),
('1-55615948-X', 'MOR1', 1),
('1-56-276352-0', 'ARON', 1),
('1-56-592175-5', 'KENN', 2),
('1-56-592175-5', 'MUSC', 1),
('1-56-604288-7', 'HARR', 1),
('1-56-604288-7', 'KIDD', 2),
('1-56-884454-9', 'TAYL', 1),
('1-56-88499-66', 'TITT', 1),
('1-56205617-4', 'READ', 1),
('1-56205617-4', 'WARN', 2),
('1-56276390-3', 'ARPA', 1),
('1-56884645-2', 'BEBA', 2),
('1-56884645-2', 'SMIT', 1),
('1-56884703-3', 'GAIT', 2),
('1-56884703-3', 'HASS', 3),
('1-56884990-7', 'RAY1', 1),
('1-56884990-7', 'RAY2', 2),
('1-57-169018-2', 'DOWN', 2),
('1-57-169018-2', 'FOX1', 1),
('1-57-169050-7', 'FOUS', 2),
('1-57-169050-7', 'KERV', 1),
('1-57-169050-7', 'ZAKO', 3),
('1-57-521005-3', 'LEMA', 1),
('1-57-521064-9', 'LEMA', 1),
('1-57-521096-7', 'LEMA', 1),
('1-57169066-2', 'CEAR', 1),
('1-88-357787-X', 'BRAN', 4),
('1-88-357787-X', 'BROW', 2),
('1-88-357787-X', 'JUNG', 3),
('1-88-357787-X', 'MEGA', 1),
('1-88-357787-X', 'SAVO', 1),
('1-88790205-8', 'GROV', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `CategoryID` varchar(5) NOT NULL DEFAULT '',
  `CategoryName` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`) VALUES
('1', 'Science fiction'),
('10', 'Guide'),
('11', 'Travel'),
('12', 'Childrens'),
('13', 'Religion, Spirituality & New Age'),
('14', 'Science'),
('15', 'History'),
('16', 'Math'),
('17', 'Anthology'),
('18', 'Poetry'),
('19', 'Encyclopedias'),
('2', 'Satire'),
('20', 'Dictionaries'),
('21', 'Comics'),
('22', 'Art'),
('23', 'Cookbooks'),
('24', 'Diaries'),
('25', 'Journals'),
('26', 'Prayer books'),
('27', 'Series'),
('28', 'Trilogy'),
('29', 'Biographies'),
('3', 'Drama'),
('30', 'Autobiographies'),
('31', 'Fantasy'),
('32', 'Technology and Computer'),
('4', 'Action and Adventure'),
('5', 'Romance'),
('6', 'Mystery'),
('7', 'Horror'),
('8', 'Self help'),
('9', 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `Publisher_Id` char(5) NOT NULL DEFAULT '',
  `Name` varchar(30) DEFAULT NULL,
  `URL` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`Publisher_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`Publisher_Id`, `Name`, `URL`) VALUES
('00218', 'Peachpit Press', 'www.peachpit.com/'),
('00788', 'Osborne/McGraw-Hill', 'www.osborne.com'),
('00791', 'McGraw-Hill', 'www.mcgraw-hill.com/'),
('01262', 'Academic Press', 'www.apnet.com/'),
('01356', 'Prentice Hall', 'www.prenhall.com/'),
('04711', 'Wiley', 'www.wiley.com/'),
('05345', 'Integrated Media Group', 'www.thomson.com/rcenters/img/img.html'),
('07897', 'Que', 'www.mcp.com/que/'),
('15561', 'Microsoft Press', 'www.microsoft.com/mspress/'),
('15620', 'New Riders', 'www.mcp.com/newriders/'),
('15627', 'Ziff-Davis', 'www.mcp.com/zdpress/'),
('15659', 'O''Reilly', 'www.ora.com/'),
('15660', 'Netscape Press', 'www.netscapepress.com/'),
('15688', 'IDG Books', 'www.idgbooks.com/'),
('15716', 'Waite', 'www.waite.com/waite/'),
('15752', 'Sams.net', 'www.mcp.com/samsnet/'),
('18835', 'Coriolis', 'www.coriolis.com/'),
('18879', 'Franklin, Beedle & Associates', 'www.fbeedle.com/');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booksauthors`
--
ALTER TABLE `booksauthors`
  ADD CONSTRAINT `booksauthors_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `books` (`ISBN`),
  ADD CONSTRAINT `booksauthors_ibfk_2` FOREIGN KEY (`Author_Id`) REFERENCES `authors` (`Author_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
