-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2017 at 03:23 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `properties`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `abs_sfr`
--
DROP VIEW IF EXISTS `abs_sfr`;
CREATE TABLE IF NOT EXISTS `abs_sfr` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
);
-- --------------------------------------------------------

--
-- Table structure for table `allsales`
--

DROP TABLE IF EXISTS `allsales`;
CREATE TABLE IF NOT EXISTS `allsales` (
  `PIN` varchar(29) CHARACTER SET latin1 DEFAULT NULL,
  `FOLIO` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `DOR_CODE` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `NBHC` float DEFAULT NULL,
  `S_DATE` date DEFAULT NULL,
  `VI` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `QU` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `REA_CD` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `S_AMT` float DEFAULT NULL,
  `SUB` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `STR` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `S_TYPE` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `OR_BK` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `OR_PG` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `GRANTOR` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `GRANTEE` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  KEY `PIN` (`PIN`),
  KEY `FOLIO` (`FOLIO`),
  KEY `S_DATE` (`S_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exclude`
--

DROP TABLE IF EXISTS `exclude`;
CREATE TABLE IF NOT EXISTS `exclude` (
  `Pin` varchar(35) CHARACTER SET latin1 NOT NULL,
  `DNC` enum('0','1') NOT NULL DEFAULT '0',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Pin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `highlands-parcel`
--

DROP TABLE IF EXISTS `highlands-parcel`;
CREATE TABLE IF NOT EXISTS `highlands-parcel` (
  `Account Number` varchar(18) NOT NULL DEFAULT '',
  `DOR Code` int(2) DEFAULT NULL,
  `Neighborhood Code` decimal(6,2) DEFAULT NULL,
  `Neighborhood Code Descrip` varchar(40) DEFAULT NULL,
  `Owner Name 1` varchar(40) DEFAULT NULL,
  `Owner Name 2` varchar(40) DEFAULT NULL,
  `Mailing Addr 1` varchar(30) DEFAULT NULL,
  `Mailing Addr 2` varchar(30) DEFAULT NULL,
  `Mailing City` varchar(30) DEFAULT NULL,
  `Mailing State` varchar(2) DEFAULT NULL,
  `Mailing ZIP` varchar(10) DEFAULT NULL,
  `Mailing Country` varchar(26) DEFAULT NULL,
  `Site Addr No` int(6) DEFAULT NULL,
  `Site Addr Prefix` varchar(2) DEFAULT NULL,
  `Site Addr Name` varchar(26) DEFAULT NULL,
  `Site Addr Suffix` varchar(5) DEFAULT NULL,
  `Site Addr Suffix Dir` varchar(2) DEFAULT NULL,
  `Site Addr City` varchar(12) DEFAULT NULL,
  `Site Addr ZIP` varchar(10) DEFAULT NULL,
  `Assessed Value` int(8) DEFAULT NULL,
  `Taxable Value` int(8) DEFAULT NULL,
  `Sale Date 1` varchar(10) DEFAULT NULL,
  `Sale OR Book 1` varchar(5) DEFAULT NULL,
  `Sale OR Page 1` varchar(4) DEFAULT NULL,
  `Sale Price 1` varchar(13) DEFAULT NULL,
  `Sale Grantor 1` varchar(50) DEFAULT NULL,
  `Sale Grantee 1` varchar(50) DEFAULT NULL,
  `Sale Transaction Code 1` varchar(3) DEFAULT NULL,
  `Sale Qualified Code 1` varchar(1) DEFAULT NULL,
  `Sale V/I` varchar(1) DEFAULT NULL,
  `Sale Date 2` varchar(10) DEFAULT NULL,
  `Sale OR Book 2` varchar(5) DEFAULT NULL,
  `Sale OR Page 2` varchar(4) DEFAULT NULL,
  `Sale Price 2` varchar(11) DEFAULT NULL,
  `Sale Grantor 2` varchar(50) DEFAULT NULL,
  `Sale Grantee 2` varchar(50) DEFAULT NULL,
  `Sale Transaction Code 2` varchar(3) DEFAULT NULL,
  `Sale Qualified Code 2` varchar(1) DEFAULT NULL,
  `Sale V/I 2` varchar(1) DEFAULT NULL,
  `Parcel V/I` varchar(1) DEFAULT NULL,
  `Map ID Number` varchar(5) DEFAULT NULL,
  `Homestead Flag` varchar(2) DEFAULT NULL,
  `Legal Line 1` varchar(26) DEFAULT NULL,
  `Legal Line 2` varchar(26) DEFAULT NULL,
  `Legal Line 3` varchar(26) DEFAULT NULL,
  `Legal Line 4` varchar(26) DEFAULT NULL,
  `Legal Line 5` varchar(26) DEFAULT NULL,
  `Legal Line 6` varchar(26) DEFAULT NULL,
  `Legal Line 7` varchar(26) DEFAULT NULL,
  `Legal Line 8` varchar(26) DEFAULT NULL,
  `Legal Line 9` varchar(26) DEFAULT NULL,
  `Legal Line 10` varchar(26) DEFAULT NULL,
  `Legal Line 11` varchar(26) DEFAULT NULL,
  `Legal Line 12` varchar(26) DEFAULT NULL,
  `Legal Line 13` varchar(26) DEFAULT NULL,
  `Legal Line 14` varchar(26) DEFAULT NULL,
  `Legal Line 15` varchar(26) DEFAULT NULL,
  `Legal Line 16` varchar(23) DEFAULT NULL,
  `Legal Line 17` varchar(11) DEFAULT NULL,
  `Legal Line 18` varchar(10) DEFAULT NULL,
  `Legal Line 19` varchar(10) DEFAULT NULL,
  `Legal Line 20` varchar(10) DEFAULT NULL,
  `Legal Line 21` varchar(10) DEFAULT NULL,
  `Legal Line 22` varchar(10) DEFAULT NULL,
  `Total Land Value` int(8) DEFAULT NULL,
  `Total Building Value` int(8) DEFAULT NULL,
  `Total Extra Feature Value` int(8) DEFAULT NULL,
  PRIMARY KEY (`Account Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `highlands-tax_del`
--

DROP TABLE IF EXISTS `highlands-tax_del`;
CREATE TABLE IF NOT EXISTS `highlands-tax_del` (
  `Account Number` varchar(19) DEFAULT NULL,
  `Tax Yr` int(4) DEFAULT NULL,
  `Owner Name` varchar(411) DEFAULT NULL,
  `Owner Address` varchar(134) DEFAULT NULL,
  `Property Address` varchar(49) DEFAULT NULL,
  `Legal Desc` varchar(284) DEFAULT NULL,
  `Account Status` varchar(6) DEFAULT NULL,
  `Balance Amount` varchar(9) DEFAULT NULL,
  `Assessed Value` varchar(12) DEFAULT NULL,
  `Total Tax` varchar(9) DEFAULT NULL,
  `Cert Status` varchar(11) DEFAULT NULL,
  `Custom Flags` varchar(63) DEFAULT NULL,
  `Use Code` varchar(2) DEFAULT NULL,
  KEY `Account Number` (`Account Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hills-civilcases`
--

DROP TABLE IF EXISTS `hills-civilcases`;
CREATE TABLE IF NOT EXISTS `hills-civilcases` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `CaseCategory` varchar(255) NOT NULL,
  `CaseTypeDescription` varchar(75) NOT NULL,
  `CaseNumber` varchar(25) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `FilingDate` varchar(255) NOT NULL,
  `PartyType` varchar(35) NOT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `MiddleName` varchar(25) DEFAULT NULL,
  `LastNameCompanyName` varchar(255) NOT NULL,
  `PartyAddress` varchar(150) DEFAULT NULL,
  `Attorney` varchar(50) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `address3` varchar(255) NOT NULL,
  `address4` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proabte_unique` (`CaseNumber`,`PartyType`,`FirstName`,`MiddleName`,`LastNameCompanyName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=163800 ;

-- --------------------------------------------------------

--
-- Table structure for table `hills-expired`
--

DROP TABLE IF EXISTS `hills-expired`;
CREATE TABLE IF NOT EXISTS `hills-expired` (
  `MLS Photo Indicator` varchar(10) DEFAULT NULL,
  `MLS Listing Indicator` varchar(16) DEFAULT NULL,
  `Foreclosure Indicator` varchar(15) DEFAULT NULL,
  `Distressed Sale Indicator` varchar(10) DEFAULT NULL,
  `Address` varchar(35) DEFAULT NULL,
  `Property City` varchar(14) DEFAULT NULL,
  `Property ZIP` int(5) DEFAULT NULL,
  `County` varchar(12) DEFAULT NULL,
  `Land Use - County` varchar(22) DEFAULT NULL,
  `Owner` varchar(53) DEFAULT NULL,
  `Last Mkt Recording Date` varchar(10) DEFAULT NULL,
  `Last Mkt Sale Date` varchar(31) DEFAULT NULL,
  `Sale Price` varchar(11) DEFAULT NULL,
  `Just Value - Total` varchar(10) DEFAULT NULL,
  `Tax Amount` varchar(7) DEFAULT NULL,
  `Beds` varchar(13) DEFAULT NULL,
  `Total Baths` varchar(15) DEFAULT NULL,
  `Land Use - CoreLogic` varchar(21) DEFAULT NULL,
  `Living Sq Ft` varchar(23) DEFAULT NULL,
  `Lot Sq Ft` varchar(7) DEFAULT NULL,
  `Lot Acres` varchar(5) DEFAULT NULL,
  `Stories` varchar(16) DEFAULT NULL,
  `Year Built` varchar(19) DEFAULT NULL,
  `School District Name` varchar(19) DEFAULT NULL,
  `Subdivision` varchar(46) DEFAULT NULL,
  `Folio/Strap/PID (1)` varchar(11) DEFAULT NULL,
  `Pin` varchar(29) DEFAULT NULL,
  `Folio/Strap/PID (3)` int(10) DEFAULT NULL,
  `MLS Listing #` varchar(8) DEFAULT NULL,
  `blank` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hills-lien`
--

DROP TABLE IF EXISTS `hills-lien`;
CREATE TABLE IF NOT EXISTS `hills-lien` (
  `Full Name` varchar(29) DEFAULT NULL,
  `Folio Number` varchar(11) NOT NULL DEFAULT '',
  `Link` varchar(87) DEFAULT NULL,
  `Date of LIEN` date DEFAULT NULL,
  PRIMARY KEY (`Folio Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hills-lis_pendens`
--

DROP TABLE IF EXISTS `hills-lis_pendens`;
CREATE TABLE IF NOT EXISTS `hills-lis_pendens` (
  `LP Name` varchar(56) DEFAULT NULL,
  `Owner Name` varchar(41) DEFAULT NULL,
  `Folio` varchar(12) DEFAULT NULL,
  `Date` varchar(9) DEFAULT NULL,
  `Link` varchar(89) DEFAULT NULL,
  KEY `Folio` (`Folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `hills-pre1995-abs-sfr`
--
DROP VIEW IF EXISTS `hills-pre1995-abs-sfr`;
CREATE TABLE IF NOT EXISTS `hills-pre1995-abs-sfr` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
,`sale_date` date
,`sale_amount` float
,`s_type` varchar(3)
,`grantor` varchar(75)
,`grantee` varchar(75)
);
-- --------------------------------------------------------

--
-- Table structure for table `hills-probate`
--

DROP TABLE IF EXISTS `hills-probate`;
CREATE TABLE IF NOT EXISTS `hills-probate` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `CaseCategory` varchar(255) NOT NULL,
  `CaseTypeDescription` varchar(75) NOT NULL,
  `CaseNumber` varchar(25) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `FilingDate` varchar(255) NOT NULL,
  `PartyType` varchar(35) NOT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `MiddleName` varchar(25) DEFAULT NULL,
  `LastNameCompanyName` varchar(255) NOT NULL,
  `DateofDeath` varchar(255) DEFAULT NULL,
  `PartyAddress` varchar(150) DEFAULT NULL,
  `Attorney` varchar(50) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `address3` varchar(255) NOT NULL,
  `address4` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proabte_unique` (`CaseNumber`,`PartyType`,`FirstName`,`MiddleName`,`LastNameCompanyName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21721 ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `hills-taxdel-abs-sfr`
--
DROP VIEW IF EXISTS `hills-taxdel-abs-sfr`;
CREATE TABLE IF NOT EXISTS `hills-taxdel-abs-sfr` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
,`Tax Yr` int(4)
,`Account Number` varchar(11)
,`Alternate Key` int(10)
,`Cert #` int(6)
,`Issued Date` varchar(9)
,`Bidder #` int(7)
,`Cert Buyer` varchar(77)
,`Cert Buyer Address` varchar(92)
,`Owner Name` varchar(87)
,`A: Face Amount` decimal(8,2)
,`Interest Rate` decimal(4,2)
,`B: Account Balance Amount` decimal(9,2)
,`Date Redeemed` varchar(10)
,`Deed Status` varchar(10)
,`C: Math / Condition` varchar(6)
);
-- --------------------------------------------------------

--
-- Table structure for table `hills-tax_del-DELETE`
--

DROP TABLE IF EXISTS `hills-tax_del-DELETE`;
CREATE TABLE IF NOT EXISTS `hills-tax_del-DELETE` (
  `Roll Yr` int(4) DEFAULT NULL,
  `Tax Yr` int(4) DEFAULT NULL,
  `Account Number` varchar(11) DEFAULT NULL,
  `GEO Number` varchar(29) DEFAULT NULL,
  `Owner Name` varchar(112) DEFAULT NULL,
  `Bill Type` varchar(17) DEFAULT NULL,
  `Balance Status` varchar(6) DEFAULT NULL,
  `Property Address` varchar(60) DEFAULT NULL,
  `Cert #` varchar(6) DEFAULT NULL,
  `Deed Status` varchar(10) DEFAULT NULL,
  `Standard Flags` varchar(41) DEFAULT NULL,
  `Custom Flags` varchar(80) DEFAULT NULL,
  KEY `GEO Number` (`GEO Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hills-tax_roll`
--

DROP TABLE IF EXISTS `hills-tax_roll`;
CREATE TABLE IF NOT EXISTS `hills-tax_roll` (
  `Account Number` varchar(11) DEFAULT NULL,
  `Tax Yr` int(4) DEFAULT NULL,
  `Account Status` varchar(12) DEFAULT NULL,
  `Assessed Value` int(7) DEFAULT NULL,
  `Balance Amount` decimal(7,2) DEFAULT NULL,
  `Cert #` varchar(10) DEFAULT NULL,
  `Custom Flags` varchar(24) DEFAULT NULL,
  `Exemption` varchar(99) DEFAULT NULL,
  `Land Total Class Value` int(7) DEFAULT NULL,
  `Land Total Just Value` int(7) DEFAULT NULL,
  `Litigation` varchar(2) DEFAULT NULL,
  `Market Value` int(7) DEFAULT NULL,
  `Parent Account Number` varchar(10) DEFAULT NULL,
  `Property Class` varchar(10) DEFAULT NULL,
  `Standard Exemption Value` int(7) DEFAULT NULL,
  `Standard Taxable Value` int(7) DEFAULT NULL,
  `Total Exemption Value` int(7) DEFAULT NULL,
  `Total Tax` decimal(7,2) DEFAULT NULL,
  `Total Taxable Value` int(7) DEFAULT NULL,
  `Escrow Company Code` varchar(5) DEFAULT NULL,
  `Escrow Company` varchar(42) DEFAULT NULL,
  `Installment Status` varchar(10) DEFAULT NULL,
  `Date Paid In Full` varchar(10) DEFAULT NULL,
  KEY `Account Number` (`Account Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hills-unpaid_certs`
--

DROP TABLE IF EXISTS `hills-unpaid_certs`;
CREATE TABLE IF NOT EXISTS `hills-unpaid_certs` (
  `Tax Yr` int(4) DEFAULT NULL,
  `Account Number` varchar(11) DEFAULT NULL,
  `Alternate Key` int(10) DEFAULT NULL,
  `Cert #` int(6) DEFAULT NULL,
  `Issued Date` varchar(9) DEFAULT NULL,
  `Bidder #` int(7) DEFAULT NULL,
  `Cert Buyer` varchar(77) DEFAULT NULL,
  `Cert Buyer Address` varchar(92) DEFAULT NULL,
  `Owner Name` varchar(87) DEFAULT NULL,
  `A: Face Amount` decimal(8,2) DEFAULT NULL,
  `Interest Rate` decimal(4,2) DEFAULT NULL,
  `B: Account Balance Amount` decimal(9,2) DEFAULT NULL,
  `Date Redeemed` varchar(10) DEFAULT NULL,
  `Deed Status` varchar(10) DEFAULT NULL,
  `C: Math / Condition` varchar(6) DEFAULT NULL,
  KEY `Account Number` (`Account Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `list-hills-evictions`
--
DROP VIEW IF EXISTS `list-hills-evictions`;
CREATE TABLE IF NOT EXISTS `list-hills-evictions` (
`id` int(255)
,`CaseCategory` varchar(255)
,`CaseTypeDescription` varchar(75)
,`CaseNumber` varchar(25)
,`Title` varchar(50)
,`FilingDate` varchar(255)
,`PartyType` varchar(35)
,`FirstName` varchar(25)
,`MiddleName` varchar(25)
,`LastNameCompanyName` varchar(255)
,`PartyAddress` varchar(150)
,`Attorney` varchar(50)
,`address1` varchar(255)
,`address2` varchar(255)
,`address3` varchar(255)
,`address4` varchar(255)
,`city` varchar(255)
,`state` varchar(255)
,`zipcode` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-hills-inheritance-sfr`
--
DROP VIEW IF EXISTS `list-hills-inheritance-sfr`;
CREATE TABLE IF NOT EXISTS `list-hills-inheritance-sfr` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
,`sale_amount` float
,`sale_type` varchar(3)
,`sale_date` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-hills-pre1995-mf`
--
DROP VIEW IF EXISTS `list-hills-pre1995-mf`;
CREATE TABLE IF NOT EXISTS `list-hills-pre1995-mf` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
,`sale_date` date
,`sale_amount` float
,`s_type` varchar(3)
,`grantor` varchar(75)
,`grantee` varchar(75)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-hills-probate`
--
DROP VIEW IF EXISTS `list-hills-probate`;
CREATE TABLE IF NOT EXISTS `list-hills-probate` (
`id` int(255)
,`CaseCategory` varchar(255)
,`CaseTypeDescription` varchar(75)
,`CaseNumber` varchar(25)
,`Title` varchar(50)
,`FilingDate` varchar(255)
,`PartyType` varchar(35)
,`FirstName` varchar(25)
,`MiddleName` varchar(25)
,`LastNameCompanyName` varchar(255)
,`DateofDeath` varchar(255)
,`PartyAddress` varchar(150)
,`Attorney` varchar(50)
,`address1` varchar(255)
,`address2` varchar(255)
,`address3` varchar(255)
,`address4` varchar(255)
,`city` varchar(255)
,`state` varchar(255)
,`zipcode` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-hills-qc-abs-sfr`
--
DROP VIEW IF EXISTS `list-hills-qc-abs-sfr`;
CREATE TABLE IF NOT EXISTS `list-hills-qc-abs-sfr` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
,`sale_amount` float
,`sale_type` varchar(3)
,`sale_date` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-hills-qc-mf`
--
DROP VIEW IF EXISTS `list-hills-qc-mf`;
CREATE TABLE IF NOT EXISTS `list-hills-qc-mf` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
,`sale_amount` float
,`sale_type` varchar(3)
,`sale_date` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-hills-senior-exempt`
--
DROP VIEW IF EXISTS `list-hills-senior-exempt`;
CREATE TABLE IF NOT EXISTS `list-hills-senior-exempt` (
`FOLIO` varchar(10)
,`TYPE` varchar(40)
,`PIN` varchar(29)
,`OWNER` varchar(75)
,`ADDR_1` varchar(75)
,`ADDR_2` varchar(30)
,`CITY` varchar(30)
,`STATE` varchar(25)
,`ZIP` varchar(10)
,`COUNTRY` varchar(20)
,`SUB` varchar(3)
,`SITE_ADDR` varchar(75)
,`SITE_CITY` varchar(30)
,`SITE_ZIP` varchar(10)
,`LEGAL1` varchar(50)
,`LEGAL2` varchar(50)
,`LEGAL3` varchar(50)
,`LEGAL4` varchar(50)
,`DBA` varchar(60)
,`STRAP` varchar(22)
,`tBEDS` float
,`tBATHS` float
,`tSTORIES` float
,`tUNITS` float
,`tBLDGS` float
,`TAXDIST` varchar(3)
,`JUST` float
,`LAND` float
,`BLDG` float
,`EXF` float
,`ACT` float
,`EFF` float
,`HEAT_AR` float
,`ASD_VAL` float
,`TAX_VAL` float
,`MUNI` varchar(1)
,`SD1` varchar(3)
,`SD2` varchar(3)
,`TIF` varchar(1)
,`BASE` float
,`S_DATE` date
,`VI` varchar(1)
,`S_AMT` float
,`ACREAGE` float
,`NBHC` float
,`FOLIO_NUMB` varchar(11)
,`str` varchar(50)
,`str_pfx` varchar(2)
,`str_sfx` varchar(25)
,`str_unit` varchar(15)
,`str_num` varchar(10)
,`DOR_CODE` varchar(4)
,`LU_GRP` varchar(30)
,`MARKET_VAL` float
,`Shape_area` float
,`Shape_len` float
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-orange-pre1990-abs-sfr`
--
DROP VIEW IF EXISTS `list-orange-pre1990-abs-sfr`;
CREATE TABLE IF NOT EXISTS `list-orange-pre1990-abs-sfr` (
`Parcel Number` bigint(16)
,`Owner 1` varchar(36)
,`Owner 2` varchar(36)
,`Address 1` varchar(36)
,`Address 2` varchar(36)
,`Address 3` varchar(36)
,`Address 4` varchar(36)
,`City` varchar(20)
,`State` varchar(2)
,`Country` varchar(20)
,`Zip Code` varchar(10)
,`Property Use Code` int(4)
,`Exemp Code #1` varchar(2)
,`Exemp Code # 2` varchar(2)
,`Exemp Code # 3` varchar(2)
,`Exemp Code # 4` varchar(2)
,`Exemp Code #5` varchar(2)
,`Improve Code` varchar(4)
,`Market Index` varchar(2)
,`Exterior Wall Code #1` varchar(2)
,`Exterior Wall Code # 2` varchar(2)
,`Total Area (Sq. ft)` int(4)
,`Total CAMA Area (sq.ft.)` int(4)
,`Total # Bedroom` int(1)
,`Total # Bath` int(3)
,`Actual Year Built` int(8)
,`Effective Year Built` int(8)
,`Land Use Code` varchar(4)
,`Land Zoning Code` varchar(20)
,`Land Unit Type` varchar(2)
,`Land Units` int(3)
,`Land Unit Price` int(5)
,`Land Notes` varchar(17)
,`Taxable Value` int(6)
,`Just Value (Market Value)` int(7)
,`Assessed Value (Save Our Homes)` int(7)
,`Building Value` int(5)
,`Land Value` int(7)
,`Extra Feature Value` int(6)
,`AG Land Value` int(5)
,`Market Value of AG land` int(7)
,`Classified Value` int(7)
,`Exemption Value` int(7)
,`Situs Street Number` varchar(5)
,`Situs Street Direction` varchar(2)
,`Situs Street Name` varchar(20)
,`Situs Street Type` varchar(4)
,`City Code` varchar(2)
,`Millage Code` int(2)
,`Sale Date - Latest` int(8)
,`Sale Price - Latest` int(6)
,`Deed Type - Latest` varchar(2)
,`Q/U Code - Latest` varchar(1)
,`I / V Code - Latest` varchar(1)
,`Instrument Number - Latest` bigint(11)
,`Sale Date - Latest 1` int(8)
,`Sale Price - Latest 1` int(7)
,`Deed Type - Latest 1` varchar(2)
,`Q/U Code - Latest 1` varchar(1)
,`I / V Code - Latest 1` varchar(1)
,`Instrument Number - Latest 1` bigint(11)
,`Sale Date - Latest 2` int(8)
,`Sale Price - Latest 2` int(6)
,`Deed Type - Latest 2` varchar(2)
,`Q/V Code - Latest 2` varchar(1)
,`I / V Code - Latest 2` varchar(1)
,`Instrument Number - Latest 2` bigint(11)
,`Sale Date - Latest 3` int(8)
,`Sale Price - Latest 3` int(6)
,`Deed Type - Latest 3` varchar(2)
,`Q/U Code - Latest 3` varchar(1)
,`I / V Code Latest 3` varchar(1)
,`Instrument Number - Latest 3` bigint(11)
,`Sale Date -  Latest 4` int(8)
,`Sale Price - Latest 4` int(5)
,`Deed Type - Latest 4` varchar(2)
,`Q/U Code - Latest 4` varchar(1)
,`I / V Code - Latest 4` varchar(1)
,`Instrument Number - Latest 4` bigint(11)
,`Total Acreage in Parcel` int(5)
,`Property Name` varchar(31)
,`Parcel Short Key` varchar(7)
,`Net Leasable Area` int(1)
,`Property Acct. #` varchar(15)
,`Mortgage Co. ID #` int(1)
,`Legal Description line 1` varchar(40)
,`Legal Description line 2` varchar(40)
,`Legal Description line 3` varchar(40)
,`Legal Description line 4` varchar(40)
,`Legal Description line 5` varchar(40)
,`Subdivision Name` varchar(95)
,`Situs City` varchar(16)
,`Situs State` varchar(2)
,`Situs Zip` int(5)
,`site_street` varchar(34)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-orange-qc-abs-sfr`
--
DROP VIEW IF EXISTS `list-orange-qc-abs-sfr`;
CREATE TABLE IF NOT EXISTS `list-orange-qc-abs-sfr` (
`Parcel Number` bigint(16)
,`Owner 1` varchar(36)
,`Owner 2` varchar(36)
,`Address 1` varchar(36)
,`Address 2` varchar(36)
,`Address 3` varchar(36)
,`Address 4` varchar(36)
,`City` varchar(20)
,`State` varchar(2)
,`Country` varchar(20)
,`Zip Code` varchar(10)
,`Property Use Code` int(4)
,`Exemp Code #1` varchar(2)
,`Exemp Code # 2` varchar(2)
,`Exemp Code # 3` varchar(2)
,`Exemp Code # 4` varchar(2)
,`Exemp Code #5` varchar(2)
,`Improve Code` varchar(4)
,`Market Index` varchar(2)
,`Exterior Wall Code #1` varchar(2)
,`Exterior Wall Code # 2` varchar(2)
,`Total Area (Sq. ft)` int(4)
,`Total CAMA Area (sq.ft.)` int(4)
,`Total # Bedroom` int(1)
,`Total # Bath` int(3)
,`Actual Year Built` int(8)
,`Effective Year Built` int(8)
,`Land Use Code` varchar(4)
,`Land Zoning Code` varchar(20)
,`Land Unit Type` varchar(2)
,`Land Units` int(3)
,`Land Unit Price` int(5)
,`Land Notes` varchar(17)
,`Taxable Value` int(6)
,`Just Value (Market Value)` int(7)
,`Assessed Value (Save Our Homes)` int(7)
,`Building Value` int(5)
,`Land Value` int(7)
,`Extra Feature Value` int(6)
,`AG Land Value` int(5)
,`Market Value of AG land` int(7)
,`Classified Value` int(7)
,`Exemption Value` int(7)
,`Situs Street Number` varchar(5)
,`Situs Street Direction` varchar(2)
,`Situs Street Name` varchar(20)
,`Situs Street Type` varchar(4)
,`City Code` varchar(2)
,`Millage Code` int(2)
,`Sale Date - Latest` int(8)
,`Sale Price - Latest` int(6)
,`Deed Type - Latest` varchar(2)
,`Q/U Code - Latest` varchar(1)
,`I / V Code - Latest` varchar(1)
,`Instrument Number - Latest` bigint(11)
,`Sale Date - Latest 1` int(8)
,`Sale Price - Latest 1` int(7)
,`Deed Type - Latest 1` varchar(2)
,`Q/U Code - Latest 1` varchar(1)
,`I / V Code - Latest 1` varchar(1)
,`Instrument Number - Latest 1` bigint(11)
,`Sale Date - Latest 2` int(8)
,`Sale Price - Latest 2` int(6)
,`Deed Type - Latest 2` varchar(2)
,`Q/V Code - Latest 2` varchar(1)
,`I / V Code - Latest 2` varchar(1)
,`Instrument Number - Latest 2` bigint(11)
,`Sale Date - Latest 3` int(8)
,`Sale Price - Latest 3` int(6)
,`Deed Type - Latest 3` varchar(2)
,`Q/U Code - Latest 3` varchar(1)
,`I / V Code Latest 3` varchar(1)
,`Instrument Number - Latest 3` bigint(11)
,`Sale Date -  Latest 4` int(8)
,`Sale Price - Latest 4` int(5)
,`Deed Type - Latest 4` varchar(2)
,`Q/U Code - Latest 4` varchar(1)
,`I / V Code - Latest 4` varchar(1)
,`Instrument Number - Latest 4` bigint(11)
,`Total Acreage in Parcel` int(5)
,`Property Name` varchar(31)
,`Parcel Short Key` varchar(7)
,`Net Leasable Area` int(1)
,`Property Acct. #` varchar(15)
,`Mortgage Co. ID #` int(1)
,`Legal Description line 1` varchar(40)
,`Legal Description line 2` varchar(40)
,`Legal Description line 3` varchar(40)
,`Legal Description line 4` varchar(40)
,`Legal Description line 5` varchar(40)
,`Subdivision Name` varchar(95)
,`Situs City` varchar(16)
,`Situs State` varchar(2)
,`Situs Zip` int(5)
,`site_street` varchar(34)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-orange-taxdel-sfr`
--
DROP VIEW IF EXISTS `list-orange-taxdel-sfr`;
CREATE TABLE IF NOT EXISTS `list-orange-taxdel-sfr` (
`Cert Year` int(4)
,`Cert No` int(7)
,`Cert Seq` int(1)
,`Parcel No` bigint(15)
,`Tax Deed Year` varchar(4)
,`Tax Deed No` varchar(7)
,`Tax Deed Seq` varchar(1)
,`Tax Deed Status` varchar(21)
,`Tax Year` int(4)
,`Status Code` varchar(21)
,`Mill Code` int(2)
,`City Code` varchar(1)
,`Installment Code` varchar(10)
,`Gross Taxes` decimal(8,2)
,`Certificate Face Value` decimal(8,2)
,`Total Value` decimal(10,2)
,`Exempt Value` decimal(10,2)
,`Taxable Value` decimal(10,2)
,`Owner1` varchar(50)
,`Owner2` varchar(50)
,`Owner3` varchar(50)
,`Owner4` varchar(44)
,`Owner5` varchar(10)
,`MailingAddress1` varchar(40)
,`MailingAddress2` varchar(40)
,`MailingAddress3` varchar(47)
,`MailingAddress4` varchar(43)
,`MailingAddress5` varchar(34)
,`Legal Description` varchar(3998)
,`Payoff Date` varchar(10)
,`Payoff Amount Due` decimal(8,2)
,`Payoff Interest` decimal(7,2)
,`Payoff Amount Due Next Month` decimal(8,2)
,`Payoff Interest Next Month` decimal(7,2)
,`Payoff Interest Percentage` decimal(4,2)
,`Payment Date` varchar(10)
,`Payment Code` varchar(1)
,`Validation No` varchar(13)
,`Bidder Number` varchar(7)
,`Buyer Name1` varchar(62)
,`Buyer Name2` varchar(82)
,`Cert Issue Date` varchar(10)
,`Cert Purchase Date` varchar(10)
,`Tax Deed Application Date` varchar(10)
,`Tax Deed Redemption Date` varchar(10)
,`Property Use Code` varchar(4)
,`Situs Street Number` varchar(5)
,`Situs Street Direction` varchar(2)
,`Situs Street Name` varchar(20)
,`Situs Street Type` varchar(4)
,`Situs Suite` varchar(10)
,`Situs City` varchar(16)
,`Situs ZipCode` varchar(16)
,`site_street` varchar(45)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-pinellas-pre1995-abs-sfr`
--
DROP VIEW IF EXISTS `list-pinellas-pre1995-abs-sfr`;
CREATE TABLE IF NOT EXISTS `list-pinellas-pre1995-abs-sfr` (
`formatted_parcel_number` varchar(23)
,`official_book` varchar(5)
,`official_page` varchar(4)
,`parcel_number` varchar(18)
,`sale_date` date
,`sale_price` int(5)
,`sale_type` varchar(2)
,`legal` varchar(209)
,`doc_stamps` varchar(24)
,`buyer_name_1` varchar(50)
,`buyer_name_2` varchar(46)
,`mailing_attention` varchar(44)
,`mailing_address_1` varchar(42)
,`mailing_address_2` varchar(31)
,`mailing_city` varchar(40)
,`mailing_state` varchar(9)
,`mailing_country` varchar(14)
,`mailing_zipcode` varchar(23)
,`seller_1` varchar(50)
,`seller_2` varchar(50)
,`property_use_code` varchar(13)
,`qual_code` varchar(4)
,`reason_code` varchar(2)
,`tax_district` varchar(5)
,`str_num` varchar(5)
,`str_unit` varchar(10)
,`str_pfx` varchar(10)
,`str` varchar(24)
,`str_sfx` varchar(13)
,`str_sfx_dir` varchar(5)
,`site_city` varchar(21)
,`site_zip` varchar(13)
,`site_street` varchar(61)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-pinellas-qc-abs-sfr`
--
DROP VIEW IF EXISTS `list-pinellas-qc-abs-sfr`;
CREATE TABLE IF NOT EXISTS `list-pinellas-qc-abs-sfr` (
`formatted_parcel_number` varchar(23)
,`official_book` varchar(5)
,`official_page` varchar(4)
,`parcel_number` varchar(18)
,`sale_date` date
,`sale_price` int(5)
,`sale_type` varchar(2)
,`legal` varchar(209)
,`doc_stamps` varchar(24)
,`buyer_name_1` varchar(50)
,`buyer_name_2` varchar(46)
,`mailing_attention` varchar(44)
,`mailing_address_1` varchar(42)
,`mailing_address_2` varchar(31)
,`mailing_city` varchar(40)
,`mailing_state` varchar(9)
,`mailing_country` varchar(14)
,`mailing_zipcode` varchar(23)
,`seller_1` varchar(50)
,`seller_2` varchar(50)
,`property_use_code` varchar(13)
,`qual_code` varchar(4)
,`reason_code` varchar(2)
,`tax_district` varchar(5)
,`str_num` varchar(5)
,`str_unit` varchar(10)
,`str_pfx` varchar(10)
,`str` varchar(24)
,`str_sfx` varchar(13)
,`str_sfx_dir` varchar(5)
,`site_city` varchar(21)
,`site_zip` varchar(13)
,`site_street` varchar(61)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-polk-pre1990-abs-sfr`
--
DROP VIEW IF EXISTS `list-polk-pre1990-abs-sfr`;
CREATE TABLE IF NOT EXISTS `list-polk-pre1990-abs-sfr` (
`name` varchar(91)
,`mailto` varchar(50)
,`addr_1` varchar(50)
,`addr_2` varchar(44)
,`addr_3` varchar(54)
,`city` varchar(40)
,`state` varchar(2)
,`zip` varchar(10)
,`site_street` varchar(52)
,`PARCEL_ID` bigint(18)
,`SECTION` int(2)
,`TOWNSHIP` int(2)
,`RANGE` int(2)
,`SUB` int(6)
,`PARCEL` int(6)
,`DORUS_CODE` int(4)
,`DORDESC` varchar(7)
,`DORDESC1` varchar(69)
,`NH_CD` varchar(8)
,`NH_DSCR` varchar(48)
,`HOMESTEAD` varchar(6)
,`WIDOWEX` varchar(4)
,`DISEX` varchar(6)
,`VETERANS` varchar(6)
,`OTHEREX` varchar(8)
,`EXCODE` varchar(75)
,`EXDESC` varchar(250)
,`PORT_VAL` int(5)
,`CLS_LND_VAL` varchar(7)
,`AG_CLASS` varchar(1)
,`VALUETYPE` varchar(1)
,`VALUEDESC` varchar(16)
,`TOT_LND_VAL` varchar(8)
,`TOT_BLD_VAL` varchar(8)
,`TOT_XF_VAL` varchar(8)
,`TOTALVAL` varchar(8)
,`RECONCILE` varchar(1)
,`ASSESSVAL` decimal(10,2)
,`TAXVAL` varchar(8)
,`CURTAXDIST` int(5)
,`TAXDIST` varchar(5)
,`AMTDUE` varchar(8)
,`MILLRATE` varchar(5)
,`YR_CREATED` varchar(4)
,`YR_IMPROVED` varchar(4)
,`LAST_INSP_DT` varchar(29)
,`TOT_ACREAGE` decimal(8,4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `list-polk-qc-abs-sfr`
--
DROP VIEW IF EXISTS `list-polk-qc-abs-sfr`;
CREATE TABLE IF NOT EXISTS `list-polk-qc-abs-sfr` (
`name` varchar(91)
,`mailto` varchar(50)
,`addr_1` varchar(50)
,`addr_2` varchar(44)
,`addr_3` varchar(54)
,`city` varchar(40)
,`state` varchar(2)
,`zip` varchar(10)
,`site_street` varchar(52)
,`PARCEL_ID` bigint(18)
,`SECTION` int(2)
,`TOWNSHIP` int(2)
,`RANGE` int(2)
,`SUB` int(6)
,`PARCEL` int(6)
,`DORUS_CODE` int(4)
,`DORDESC` varchar(7)
,`DORDESC1` varchar(69)
,`NH_CD` varchar(8)
,`NH_DSCR` varchar(48)
,`HOMESTEAD` varchar(6)
,`WIDOWEX` varchar(4)
,`DISEX` varchar(6)
,`VETERANS` varchar(6)
,`OTHEREX` varchar(8)
,`EXCODE` varchar(75)
,`EXDESC` varchar(250)
,`PORT_VAL` int(5)
,`CLS_LND_VAL` varchar(7)
,`AG_CLASS` varchar(1)
,`VALUETYPE` varchar(1)
,`VALUEDESC` varchar(16)
,`TOT_LND_VAL` varchar(8)
,`TOT_BLD_VAL` varchar(8)
,`TOT_XF_VAL` varchar(8)
,`TOTALVAL` varchar(8)
,`RECONCILE` varchar(1)
,`ASSESSVAL` decimal(10,2)
,`TAXVAL` varchar(8)
,`CURTAXDIST` int(5)
,`TAXDIST` varchar(5)
,`AMTDUE` varchar(8)
,`MILLRATE` varchar(5)
,`YR_CREATED` varchar(4)
,`YR_IMPROVED` varchar(4)
,`LAST_INSP_DT` varchar(29)
,`TOT_ACREAGE` decimal(8,4)
);
-- --------------------------------------------------------

--
-- Table structure for table `orange-exclude`
--

DROP TABLE IF EXISTS `orange-exclude`;
CREATE TABLE IF NOT EXISTS `orange-exclude` (
  `Parcel` bigint(16) NOT NULL,
  `DNC` enum('0','1') NOT NULL DEFAULT '0',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Parcel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orange-parcel`
--

DROP TABLE IF EXISTS `orange-parcel`;
CREATE TABLE IF NOT EXISTS `orange-parcel` (
  `Parcel Number` bigint(16) NOT NULL DEFAULT '0',
  `Owner 1` varchar(36) DEFAULT NULL,
  `Owner 2` varchar(36) DEFAULT NULL,
  `Address 1` varchar(36) DEFAULT NULL,
  `Address 2` varchar(36) DEFAULT NULL,
  `Address 3` varchar(36) DEFAULT NULL,
  `Address 4` varchar(36) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Zip Code` varchar(10) DEFAULT NULL,
  `Property Use Code` int(4) DEFAULT NULL,
  `Exemp Code #1` varchar(2) DEFAULT NULL,
  `Exemp Code # 2` varchar(2) DEFAULT NULL,
  `Exemp Code # 3` varchar(2) DEFAULT NULL,
  `Exemp Code # 4` varchar(2) DEFAULT NULL,
  `Exemp Code #5` varchar(2) DEFAULT NULL,
  `Improve Code` varchar(4) DEFAULT NULL,
  `Market Index` varchar(2) DEFAULT NULL,
  `Exterior Wall Code #1` varchar(2) DEFAULT NULL,
  `Exterior Wall Code # 2` varchar(2) DEFAULT NULL,
  `Total Area (Sq. ft)` int(4) DEFAULT NULL,
  `Total CAMA Area (sq.ft.)` int(4) DEFAULT NULL,
  `Total # Bedroom` int(1) DEFAULT NULL,
  `Total # Bath` int(3) DEFAULT NULL,
  `Actual Year Built` int(8) DEFAULT NULL,
  `Effective Year Built` int(8) DEFAULT NULL,
  `Land Use Code` varchar(4) DEFAULT NULL,
  `Land Zoning Code` varchar(20) DEFAULT NULL,
  `Land Unit Type` varchar(2) DEFAULT NULL,
  `Land Units` int(3) DEFAULT NULL,
  `Land Unit Price` int(5) DEFAULT NULL,
  `Land Notes` varchar(17) DEFAULT NULL,
  `Taxable Value` int(6) DEFAULT NULL,
  `Just Value (Market Value)` int(7) DEFAULT NULL,
  `Assessed Value (Save Our Homes)` int(7) DEFAULT NULL,
  `Building Value` int(5) DEFAULT NULL,
  `Land Value` int(7) DEFAULT NULL,
  `Extra Feature Value` int(6) DEFAULT NULL,
  `AG Land Value` int(5) DEFAULT NULL,
  `Market Value of AG land` int(7) DEFAULT NULL,
  `Classified Value` int(7) DEFAULT NULL,
  `Exemption Value` int(7) DEFAULT NULL,
  `Situs Street Number` varchar(5) DEFAULT NULL,
  `Situs Street Direction` varchar(2) DEFAULT NULL,
  `Situs Street Name` varchar(20) DEFAULT NULL,
  `Situs Street Type` varchar(4) DEFAULT NULL,
  `City Code` varchar(2) DEFAULT NULL,
  `Millage Code` int(2) DEFAULT NULL,
  `Sale Date - Latest` int(8) DEFAULT NULL,
  ` Sale Price - Latest` int(6) DEFAULT NULL,
  `Deed Type - Latest` varchar(2) DEFAULT NULL,
  `Q/U Code - Latest` varchar(1) DEFAULT NULL,
  `I / V Code - Latest` varchar(1) DEFAULT NULL,
  `Instrument Number - Latest` bigint(11) DEFAULT NULL,
  `Sale Date - Latest 1` int(8) DEFAULT NULL,
  `Sale Price - Latest 1` int(7) DEFAULT NULL,
  `Deed Type - Latest 1` varchar(2) DEFAULT NULL,
  `Q/U Code - Latest 1` varchar(1) DEFAULT NULL,
  `I / V Code - Latest 1` varchar(1) DEFAULT NULL,
  `Instrument Number - Latest 1` bigint(11) DEFAULT NULL,
  `Sale Date - Latest 2` int(8) DEFAULT NULL,
  `Sale Price - Latest 2` int(6) DEFAULT NULL,
  `Deed Type - Latest 2` varchar(2) DEFAULT NULL,
  `Q/V Code - Latest 2` varchar(1) DEFAULT NULL,
  `I / V Code - Latest 2` varchar(1) DEFAULT NULL,
  `Instrument Number - Latest 2` bigint(11) DEFAULT NULL,
  `Sale Date - Latest 3` int(8) DEFAULT NULL,
  `Sale Price - Latest 3` int(6) DEFAULT NULL,
  `Deed Type - Latest 3` varchar(2) DEFAULT NULL,
  `Q/U Code - Latest 3` varchar(1) DEFAULT NULL,
  `I / V Code Latest 3` varchar(1) DEFAULT NULL,
  `Instrument Number - Latest 3` bigint(11) DEFAULT NULL,
  `Sale Date -  Latest 4` int(8) DEFAULT NULL,
  `Sale Price - Latest 4` int(5) DEFAULT NULL,
  `Deed Type - Latest 4` varchar(2) DEFAULT NULL,
  `Q/U Code - Latest 4` varchar(1) DEFAULT NULL,
  `I / V Code - Latest 4` varchar(1) DEFAULT NULL,
  `Instrument Number - Latest 4` bigint(11) DEFAULT NULL,
  `Total Acreage in Parcel` int(5) DEFAULT NULL,
  `Property Name` varchar(31) DEFAULT NULL,
  `Parcel Short Key` varchar(7) DEFAULT NULL,
  `Net Leasable Area` int(1) DEFAULT NULL,
  `Property Acct. #` varchar(15) DEFAULT NULL,
  `Mortgage Co. ID #` int(1) DEFAULT NULL,
  `Legal Description line 1` varchar(40) DEFAULT NULL,
  `Legal Description line 2` varchar(40) DEFAULT NULL,
  `Legal Description line 3` varchar(40) DEFAULT NULL,
  `Legal Description line 4` varchar(40) DEFAULT NULL,
  `Legal Description line 5` varchar(40) DEFAULT NULL,
  `Subdivision Name` varchar(95) DEFAULT NULL,
  `Situs City` varchar(16) DEFAULT NULL,
  `Situs State` varchar(2) DEFAULT NULL,
  `Situs Zip` int(5) DEFAULT NULL,
  PRIMARY KEY (`Parcel Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='orange-parcel';

-- --------------------------------------------------------

--
-- Table structure for table `orange-tax_del`
--

DROP TABLE IF EXISTS `orange-tax_del`;
CREATE TABLE IF NOT EXISTS `orange-tax_del` (
  `Cert Year` int(4) DEFAULT NULL,
  `Cert No` int(7) DEFAULT NULL,
  `Cert Seq` int(1) DEFAULT NULL,
  `Parcel No` bigint(15) DEFAULT NULL,
  `Tax Deed Year` varchar(4) DEFAULT NULL,
  `Tax Deed No` varchar(7) DEFAULT NULL,
  `Tax Deed Seq` varchar(1) DEFAULT NULL,
  `Tax Deed Status` varchar(21) DEFAULT NULL,
  `Tax Year` int(4) DEFAULT NULL,
  `Status Code` varchar(21) DEFAULT NULL,
  `Mill Code` int(2) DEFAULT NULL,
  `City Code` varchar(1) DEFAULT NULL,
  `Installment Code` varchar(10) DEFAULT NULL,
  `Gross Taxes` decimal(8,2) DEFAULT NULL,
  `Certificate Face Value` decimal(8,2) DEFAULT NULL,
  `Total Value` decimal(10,2) DEFAULT NULL,
  `Exempt Value` decimal(10,2) DEFAULT NULL,
  `Taxable Value` decimal(10,2) DEFAULT NULL,
  `Owner1` varchar(50) DEFAULT NULL,
  `Owner2` varchar(50) DEFAULT NULL,
  `Owner3` varchar(50) DEFAULT NULL,
  `Owner4` varchar(44) DEFAULT NULL,
  `Owner5` varchar(10) DEFAULT NULL,
  `MailingAddress1` varchar(40) DEFAULT NULL,
  `MailingAddress2` varchar(40) DEFAULT NULL,
  `MailingAddress3` varchar(47) DEFAULT NULL,
  `MailingAddress4` varchar(43) DEFAULT NULL,
  `MailingAddress5` varchar(34) DEFAULT NULL,
  `Legal Description` varchar(3998) DEFAULT NULL,
  `Payoff Date` varchar(10) DEFAULT NULL,
  `Payoff Amount Due` decimal(8,2) DEFAULT NULL,
  `Payoff Interest` decimal(7,2) DEFAULT NULL,
  `Payoff Amount Due Next Month` decimal(8,2) DEFAULT NULL,
  `Payoff Interest Next Month` decimal(7,2) DEFAULT NULL,
  `Payoff Interest Percentage` decimal(4,2) DEFAULT NULL,
  `Payment Date` varchar(10) DEFAULT NULL,
  `Payment Code` varchar(1) DEFAULT NULL,
  `Validation No` varchar(13) DEFAULT NULL,
  `Bidder Number` varchar(7) DEFAULT NULL,
  `Buyer Name1` varchar(62) DEFAULT NULL,
  `Buyer Name2` varchar(82) DEFAULT NULL,
  `Cert Issue Date` varchar(10) DEFAULT NULL,
  `Cert Purchase Date` varchar(10) DEFAULT NULL,
  `Tax Deed Application Date` varchar(10) DEFAULT NULL,
  `Tax Deed Redemption Date` varchar(10) DEFAULT NULL,
  `Property Use Code` varchar(4) DEFAULT NULL,
  `Situs Street Number` varchar(5) DEFAULT NULL,
  `Situs Street Direction` varchar(2) DEFAULT NULL,
  `Situs Street Name` varchar(20) DEFAULT NULL,
  `Situs Street Type` varchar(4) DEFAULT NULL,
  `Situs Suite` varchar(10) DEFAULT NULL,
  `Situs City` varchar(16) DEFAULT NULL,
  `Situs ZipCode` varchar(16) DEFAULT NULL,
  KEY `Parcel No` (`Parcel No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orange-tax_roll`
--

DROP TABLE IF EXISTS `orange-tax_roll`;
CREATE TABLE IF NOT EXISTS `orange-tax_roll` (
  `ParcelNumber` bigint(15) NOT NULL DEFAULT '0',
  `Folio` int(6) NOT NULL DEFAULT '0',
  `TaxYear` int(4) DEFAULT NULL,
  `MillCode` int(2) DEFAULT NULL,
  `CityCode` varchar(1) DEFAULT NULL,
  `MortgageCode` int(5) DEFAULT NULL,
  `MortgageLoanNumber` varchar(75) DEFAULT NULL,
  `ExemptCode` int(2) DEFAULT NULL,
  `StatusCode` varchar(1) DEFAULT NULL,
  `TotalValue` decimal(12,2) DEFAULT NULL,
  `ExemptValue` decimal(12,2) DEFAULT NULL,
  `TaxableValue` decimal(12,2) DEFAULT NULL,
  `OwnerName` varchar(100) DEFAULT NULL,
  `Address1` varchar(75) DEFAULT NULL,
  `Address2` varchar(75) DEFAULT NULL,
  `Address3` varchar(75) DEFAULT NULL,
  `Address4` varchar(75) DEFAULT NULL,
  `Address5` varchar(75) DEFAULT NULL,
  `Legal1` varchar(5000) DEFAULT NULL,
  `Legal2` varchar(10) DEFAULT NULL,
  `Legal3` varchar(10) DEFAULT NULL,
  `Legal4` varchar(10) DEFAULT NULL,
  `Legal5` varchar(10) DEFAULT NULL,
  `IsInstallment` int(1) DEFAULT NULL,
  `IsDelinquent` int(1) DEFAULT NULL,
  `GrossTaxDue` decimal(10,2) DEFAULT NULL,
  `BalanceDue` decimal(12,2) DEFAULT NULL,
  `NovemberAmountDue` decimal(10,2) DEFAULT NULL,
  `DatePaid` varchar(10) DEFAULT NULL,
  `ValidationNumber` varchar(25) DEFAULT NULL,
  `AmountPaid` decimal(12,2) DEFAULT NULL,
  `PaidBy` varchar(100) DEFAULT NULL,
  `Filler` varchar(10) DEFAULT NULL,
  `IsBankrupt` int(1) DEFAULT NULL,
  `IsLitigationPending` int(1) DEFAULT NULL,
  `IsFloridaTaking` int(1) DEFAULT NULL,
  `IsLeasehold` int(1) DEFAULT NULL,
  `TaxSummaryId` int(7) DEFAULT NULL,
  PRIMARY KEY (`ParcelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parcel`
--

DROP TABLE IF EXISTS `parcel`;
CREATE TABLE IF NOT EXISTS `parcel` (
  `FOLIO` varchar(10) DEFAULT NULL,
  `TYPE` varchar(40) DEFAULT NULL,
  `PIN` varchar(29) DEFAULT NULL,
  `OWNER` varchar(75) DEFAULT NULL,
  `ADDR_1` varchar(75) DEFAULT NULL,
  `ADDR_2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT NULL,
  `ZIP` varchar(10) DEFAULT NULL,
  `COUNTRY` varchar(20) DEFAULT NULL,
  `SUB` varchar(3) DEFAULT NULL,
  `SITE_ADDR` varchar(75) DEFAULT NULL,
  `SITE_CITY` varchar(30) DEFAULT NULL,
  `SITE_ZIP` varchar(10) DEFAULT NULL,
  `LEGAL1` varchar(50) DEFAULT NULL,
  `LEGAL2` varchar(50) DEFAULT NULL,
  `LEGAL3` varchar(50) DEFAULT NULL,
  `LEGAL4` varchar(50) DEFAULT NULL,
  `DBA` varchar(60) DEFAULT NULL,
  `STRAP` varchar(22) DEFAULT NULL,
  `tBEDS` float DEFAULT NULL,
  `tBATHS` float DEFAULT NULL,
  `tSTORIES` float DEFAULT NULL,
  `tUNITS` float DEFAULT NULL,
  `tBLDGS` float DEFAULT NULL,
  `TAXDIST` varchar(3) DEFAULT NULL,
  `JUST` float DEFAULT NULL,
  `LAND` float DEFAULT NULL,
  `BLDG` float DEFAULT NULL,
  `EXF` float DEFAULT NULL,
  `ACT` float DEFAULT NULL,
  `EFF` float DEFAULT NULL,
  `HEAT_AR` float DEFAULT NULL,
  `ASD_VAL` float DEFAULT NULL,
  `TAX_VAL` float DEFAULT NULL,
  `MUNI` varchar(1) DEFAULT NULL,
  `SD1` varchar(3) DEFAULT NULL,
  `SD2` varchar(3) DEFAULT NULL,
  `TIF` varchar(1) DEFAULT NULL,
  `BASE` float DEFAULT NULL,
  `S_DATE` date DEFAULT NULL,
  `VI` varchar(1) DEFAULT NULL,
  `S_AMT` float DEFAULT NULL,
  `ACREAGE` float DEFAULT NULL,
  `NBHC` float DEFAULT NULL,
  `Edit_dt` date DEFAULT NULL,
  `FOLIO_NUMB` varchar(11) DEFAULT NULL,
  `str` varchar(50) DEFAULT NULL,
  `str_pfx` varchar(2) DEFAULT NULL,
  `str_sfx` varchar(25) DEFAULT NULL,
  `str_unit` varchar(15) DEFAULT NULL,
  `str_num` varchar(10) DEFAULT NULL,
  `DOR_CODE` varchar(4) DEFAULT NULL,
  `LU_GRP` varchar(30) DEFAULT NULL,
  `MARKET_VAL` float DEFAULT NULL,
  `Shape_area` float DEFAULT NULL,
  `Shape_len` float DEFAULT NULL,
  KEY `FOLIO` (`FOLIO`),
  KEY `OWNER` (`OWNER`),
  KEY `DOR_CODE` (`DOR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-allsales`
--

DROP TABLE IF EXISTS `pinellas-allsales`;
CREATE TABLE IF NOT EXISTS `pinellas-allsales` (
  `formatted_parcel_number` varchar(23) DEFAULT NULL,
  `official_book` varchar(5) DEFAULT NULL,
  `official_page` varchar(4) DEFAULT NULL,
  `parcel_number` varchar(18) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_price` int(5) DEFAULT NULL,
  `sale_type` varchar(2) DEFAULT NULL,
  `legal` varchar(209) DEFAULT NULL,
  `doc_stamps` varchar(24) DEFAULT NULL,
  `buyer_name_1` varchar(50) DEFAULT NULL,
  `buyer_name_2` varchar(46) DEFAULT NULL,
  `mailing_attention` varchar(44) DEFAULT NULL,
  `mailing_address_1` varchar(42) DEFAULT NULL,
  `mailing_address_2` varchar(31) DEFAULT NULL,
  `mailing_city` varchar(40) DEFAULT NULL,
  `mailing_state` varchar(9) DEFAULT NULL,
  `mailing_country` varchar(14) DEFAULT NULL,
  `mailing_zipcode` varchar(23) DEFAULT NULL,
  `seller_1` varchar(50) DEFAULT NULL,
  `seller_2` varchar(50) DEFAULT NULL,
  `property_use_code` varchar(13) DEFAULT NULL,
  `qual_code` varchar(4) DEFAULT NULL,
  `reason_code` varchar(2) DEFAULT NULL,
  `tax_district` varchar(5) DEFAULT NULL,
  `str_num` varchar(5) DEFAULT NULL,
  `str_unit` varchar(10) DEFAULT NULL,
  `str_pfx` varchar(10) DEFAULT NULL,
  `str` varchar(24) DEFAULT NULL,
  `str_sfx` varchar(13) DEFAULT NULL,
  `str_sfx_dir` varchar(5) DEFAULT NULL,
  `site_city` varchar(21) DEFAULT NULL,
  `site_zip` varchar(13) DEFAULT NULL,
  KEY `parcel_number` (`parcel_number`),
  KEY `sale_date` (`sale_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-exclude`
--

DROP TABLE IF EXISTS `pinellas-exclude`;
CREATE TABLE IF NOT EXISTS `pinellas-exclude` (
  `Parcel` varchar(25) NOT NULL,
  `DNC` enum('0','1') NOT NULL DEFAULT '0',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Parcel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-exemptions`
--

DROP TABLE IF EXISTS `pinellas-exemptions`;
CREATE TABLE IF NOT EXISTS `pinellas-exemptions` (
  `strap` bigint(18) NOT NULL DEFAULT '0',
  `homestead` varchar(31) DEFAULT NULL,
  `government` varchar(3) DEFAULT NULL,
  `institutional` varchar(3) DEFAULT NULL,
  `agricultural` varchar(3) DEFAULT NULL,
  `historic` int(1) DEFAULT NULL,
  `soh_cap_pct` decimal(5,4) DEFAULT NULL,
  `hx_base_year` varchar(4) DEFAULT NULL,
  `nhx_base_year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`strap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-land`
--

DROP TABLE IF EXISTS `pinellas-land`;
CREATE TABLE IF NOT EXISTS `pinellas-land` (
  `strap` bigint(18) DEFAULT NULL,
  `land_size` varchar(11) DEFAULT NULL,
  `unit_value` decimal(9,2) DEFAULT NULL,
  `land_units` decimal(10,4) DEFAULT NULL,
  `method` varchar(2) DEFAULT NULL,
  `land_use` varchar(30) DEFAULT NULL,
  `acreage` decimal(7,4) DEFAULT NULL,
  `val` int(8) DEFAULT NULL,
  `total_adjustments` decimal(5,4) DEFAULT NULL,
  `land_use_cd` int(2) DEFAULT NULL,
  `land_use_dscr` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-owner_mail`
--

DROP TABLE IF EXISTS `pinellas-owner_mail`;
CREATE TABLE IF NOT EXISTS `pinellas-owner_mail` (
  `strap` bigint(18) DEFAULT NULL,
  `owner1` varchar(50) DEFAULT NULL,
  `owner2` varchar(40) DEFAULT NULL,
  `mailto` varchar(40) DEFAULT NULL,
  `address1` varchar(33) DEFAULT NULL,
  `address2` varchar(22) DEFAULT NULL,
  `city` varchar(28) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `country` varchar(14) DEFAULT NULL,
  `tax_district_cd` varchar(4) DEFAULT NULL,
  `subdivision_name` varchar(47) DEFAULT NULL,
  `rgtwsc` int(6) DEFAULT NULL,
  `rgtw` int(4) DEFAULT NULL,
  `sb` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-parcel_value`
--

DROP TABLE IF EXISTS `pinellas-parcel_value`;
CREATE TABLE IF NOT EXISTS `pinellas-parcel_value` (
  `strap` bigint(18) DEFAULT NULL,
  `comp_sales` varchar(7) DEFAULT NULL,
  `just_building` int(8) DEFAULT NULL,
  `just_land` int(7) DEFAULT NULL,
  `just_xf` int(6) DEFAULT NULL,
  `just_market_value` int(8) DEFAULT NULL,
  `municipal_taxable_value` int(7) DEFAULT NULL,
  `school_taxable_value` int(7) DEFAULT NULL,
  `assessed_value_soh_cap` int(8) DEFAULT NULL,
  `taxable_value` int(7) DEFAULT NULL,
  `tax_district` varchar(4) DEFAULT NULL,
  `land_use_code` int(2) DEFAULT NULL,
  `millage` decimal(8,6) DEFAULT NULL,
  `tax_amount_no_ex` decimal(8,2) DEFAULT NULL,
  `special_assessment` decimal(7,2) DEFAULT NULL,
  `status_cd` varchar(10) DEFAULT NULL,
  `status_cd_dscr` varchar(10) DEFAULT NULL,
  `res_com_condo` varchar(11) DEFAULT NULL,
  `non_hx_cap` varchar(3) DEFAULT NULL,
  `tif_flag_type` varchar(4) DEFAULT NULL,
  `tif_flag_type_dscr` varchar(18) DEFAULT NULL,
  `evac_val` varchar(8) DEFAULT NULL,
  `evac_flag_type` varchar(4) DEFAULT NULL,
  `evac_flag_type_dscr` varchar(15) DEFAULT NULL,
  `tax_district_description` varchar(29) DEFAULT NULL,
  `dlhl_flag_type` varchar(10) DEFAULT NULL,
  `hx_savings` int(3) DEFAULT NULL,
  `tot_effective_area` int(6) DEFAULT NULL,
  `tot_gross_area` int(6) DEFAULT NULL,
  `tot_living_area` int(6) DEFAULT NULL,
  `est_taxes_text` varchar(36) DEFAULT NULL,
  `mill_yr` varchar(23) DEFAULT NULL,
  `hx_cap` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-permit`
--

DROP TABLE IF EXISTS `pinellas-permit`;
CREATE TABLE IF NOT EXISTS `pinellas-permit` (
  `strap` bigint(18) DEFAULT NULL,
  `permit_num` varchar(15) DEFAULT NULL,
  `permit_type` varchar(5) DEFAULT NULL,
  `dscr` varchar(25) DEFAULT NULL,
  `agency_id` varchar(2) DEFAULT NULL,
  `issue_dt` varchar(10) DEFAULT NULL,
  `sign_off_dt` varchar(10) DEFAULT NULL,
  `est_val` decimal(10,2) DEFAULT NULL,
  `permit_year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-property_value`
--

DROP TABLE IF EXISTS `pinellas-property_value`;
CREATE TABLE IF NOT EXISTS `pinellas-property_value` (
  `contamination` varchar(10) DEFAULT NULL,
  `frontage` varchar(14) DEFAULT NULL,
  `future_l1_use` varchar(28) DEFAULT NULL,
  `future_l2_use` varchar(28) DEFAULT NULL,
  `future_l3_use` varchar(28) DEFAULT NULL,
  `future_l4_use` varchar(10) DEFAULT NULL,
  `legal` varchar(210) DEFAULT NULL,
  `plat_book_page` varchar(7) DEFAULT NULL,
  `subsidence` varchar(10) DEFAULT NULL,
  `views` varchar(14) DEFAULT NULL,
  `seawall` varchar(3) DEFAULT NULL,
  `strap` bigint(18) DEFAULT NULL,
  `property_use_description` varchar(100) DEFAULT NULL,
  `property_use` int(4) DEFAULT NULL,
  `or_book_page` varchar(10) DEFAULT NULL,
  `total_living_units` varchar(2) DEFAULT NULL,
  `ct_cd` bigint(12) DEFAULT NULL,
  `nh_cd` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-qc`
--

DROP TABLE IF EXISTS `pinellas-qc`;
CREATE TABLE IF NOT EXISTS `pinellas-qc` (
  `formatted_parcel_number` varchar(23) DEFAULT NULL,
  `official_book` varchar(5) DEFAULT NULL,
  `official_page` varchar(4) DEFAULT NULL,
  `parcel_number` varchar(18) DEFAULT NULL,
  `sale_date` varchar(10) DEFAULT NULL,
  `sale_price` varchar(3) DEFAULT NULL,
  `sale_type` varchar(2) DEFAULT NULL,
  `legal` varchar(209) DEFAULT NULL,
  `doc_stamps` varchar(24) DEFAULT NULL,
  `buyer_name_1` varchar(50) DEFAULT NULL,
  `buyer_name_2` varchar(46) DEFAULT NULL,
  `mailing_attention` varchar(44) DEFAULT NULL,
  `mailing_address_1` varchar(42) DEFAULT NULL,
  `mailing_address_2` varchar(31) DEFAULT NULL,
  `mailing_city` varchar(40) DEFAULT NULL,
  `mailing_state` varchar(9) DEFAULT NULL,
  `mailing_country` varchar(14) DEFAULT NULL,
  `mailing_zipcode` varchar(23) DEFAULT NULL,
  `seller_1` varchar(50) DEFAULT NULL,
  `seller_2` varchar(50) DEFAULT NULL,
  `property_use_code` varchar(13) DEFAULT NULL,
  `qual_code` varchar(4) DEFAULT NULL,
  `reason_code` varchar(2) DEFAULT NULL,
  `tax_district` varchar(5) DEFAULT NULL,
  `str_num` varchar(5) DEFAULT NULL,
  `str_unit` varchar(10) DEFAULT NULL,
  `str_pfx` varchar(10) DEFAULT NULL,
  `str` varchar(24) DEFAULT NULL,
  `str_sfx` varchar(13) DEFAULT NULL,
  `str_sfx_dir` varchar(5) DEFAULT NULL,
  `site_city` varchar(21) DEFAULT NULL,
  `site_zip` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `pinellas-recent_sales`
--
DROP VIEW IF EXISTS `pinellas-recent_sales`;
CREATE TABLE IF NOT EXISTS `pinellas-recent_sales` (
`formatted_parcel_number` varchar(23)
,`official_book` varchar(5)
,`official_page` varchar(4)
,`parcel_number` varchar(18)
,`sale_date` date
,`sale_price` int(5)
,`sale_type` varchar(2)
,`legal` varchar(209)
,`doc_stamps` varchar(24)
,`buyer_name_1` varchar(50)
,`buyer_name_2` varchar(46)
,`mailing_attention` varchar(44)
,`mailing_address_1` varchar(42)
,`mailing_address_2` varchar(31)
,`mailing_city` varchar(40)
,`mailing_state` varchar(9)
,`mailing_country` varchar(14)
,`mailing_zipcode` varchar(23)
,`seller_1` varchar(50)
,`seller_2` varchar(50)
,`property_use_code` varchar(13)
,`qual_code` varchar(4)
,`reason_code` varchar(2)
,`tax_district` varchar(5)
,`str_num` varchar(5)
,`str_unit` varchar(10)
,`str_pfx` varchar(10)
,`str` varchar(24)
,`str_sfx` varchar(13)
,`str_sfx_dir` varchar(5)
,`site_city` varchar(21)
,`site_zip` varchar(13)
,`site_street` varchar(61)
);
-- --------------------------------------------------------

--
-- Table structure for table `pinellas-sales`
--

DROP TABLE IF EXISTS `pinellas-sales`;
CREATE TABLE IF NOT EXISTS `pinellas-sales` (
  `strap` bigint(18) DEFAULT NULL,
  `sale_date` varchar(10) DEFAULT NULL,
  `book_page` varchar(12) DEFAULT NULL,
  `row_number` int(4) DEFAULT NULL,
  `price` int(7) DEFAULT NULL,
  `qu` varchar(1) DEFAULT NULL,
  `vi` varchar(1) DEFAULT NULL,
  `note` varchar(10) DEFAULT NULL,
  `month_real` varchar(10) DEFAULT NULL,
  `day_real` varchar(10) DEFAULT NULL,
  `grantee` varchar(46) DEFAULT NULL,
  `grantor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-site_address`
--

DROP TABLE IF EXISTS `pinellas-site_address`;
CREATE TABLE IF NOT EXISTS `pinellas-site_address` (
  `strap` bigint(18) DEFAULT NULL,
  `site_city` varchar(21) DEFAULT NULL,
  `ln_num` int(1) DEFAULT NULL,
  `soundx_str` varchar(4) DEFAULT NULL,
  `str` varchar(24) DEFAULT NULL,
  `site_bld_num` int(1) DEFAULT NULL,
  `str_num` varchar(5) DEFAULT NULL,
  `str_num_sfx` varchar(1) DEFAULT NULL,
  `str_pfx` varchar(2) DEFAULT NULL,
  `str_sfx` varchar(4) DEFAULT NULL,
  `str_sfx_dir` varchar(2) DEFAULT NULL,
  `str_unit` varchar(9) DEFAULT NULL,
  `site_zip` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pinellas-structural_elements`
--

DROP TABLE IF EXISTS `pinellas-structural_elements`;
CREATE TABLE IF NOT EXISTS `pinellas-structural_elements` (
  `strap` bigint(18) DEFAULT NULL,
  `building_no` int(2) DEFAULT NULL,
  `impr_tp` varchar(2) DEFAULT NULL,
  `description` varchar(41) DEFAULT NULL,
  `impr_mdl_cd` varchar(4) DEFAULT NULL,
  `foundation` varchar(21) DEFAULT NULL,
  `floor_system` varchar(19) DEFAULT NULL,
  `exterior_wall` varchar(22) DEFAULT NULL,
  `complex_view` varchar(29) DEFAULT NULL,
  `location` varchar(8) DEFAULT NULL,
  `parking_garage` varchar(23) DEFAULT NULL,
  `balcony_porch` varchar(29) DEFAULT NULL,
  `building` varchar(41) DEFAULT NULL,
  `roof_frame` varchar(21) DEFAULT NULL,
  `roof_cover` varchar(29) DEFAULT NULL,
  `stories` int(1) DEFAULT NULL,
  `floor_finish` varchar(24) DEFAULT NULL,
  `interior_finish` varchar(22) DEFAULT NULL,
  `fixtures` varchar(4) DEFAULT NULL,
  `living_units` varchar(3) DEFAULT NULL,
  `quality` varchar(13) DEFAULT NULL,
  `square_footage` decimal(8,2) DEFAULT NULL,
  `heated_area` decimal(8,2) DEFAULT NULL,
  `year_built` int(4) DEFAULT NULL,
  `effective_age` int(2) DEFAULT NULL,
  `heating` varchar(21) DEFAULT NULL,
  `cooling` varchar(20) DEFAULT NULL,
  `other_depreciation` varchar(3) DEFAULT NULL,
  `functional_depreciation` varchar(3) DEFAULT NULL,
  `economic_depreciation` varchar(10) DEFAULT NULL,
  `floor_no` varchar(2) DEFAULT NULL,
  `trav` varchar(255) DEFAULT NULL,
  `trav_256_255` varchar(255) DEFAULT NULL,
  `trav_511_255` varchar(195) DEFAULT NULL,
  `trav_766_255` varchar(10) DEFAULT NULL,
  `trav_1021_255` varchar(10) DEFAULT NULL,
  `trav_1276_255` varchar(10) DEFAULT NULL,
  `trav_1531_255` varchar(10) DEFAULT NULL,
  `trav_1786_255` varchar(10) DEFAULT NULL,
  `trav_2041_255` varchar(10) DEFAULT NULL,
  `trav_2296_255` varchar(10) DEFAULT NULL,
  `trav_2551_255` varchar(10) DEFAULT NULL,
  `trav_2806_255` varchar(10) DEFAULT NULL,
  `trav_3061_255` varchar(10) DEFAULT NULL,
  `trav_3316_255` varchar(10) DEFAULT NULL,
  `trav_3571_255` varchar(10) DEFAULT NULL,
  `trav_3826_255` varchar(10) DEFAULT NULL,
  `dpr_bld_val` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polk-building`
--

DROP TABLE IF EXISTS `polk-building`;
CREATE TABLE IF NOT EXISTS `polk-building` (
  `PARCEL_ID` bigint(18) DEFAULT NULL,
  `SECTION` int(2) DEFAULT NULL,
  `TOWNSHIP` int(2) DEFAULT NULL,
  `RANGE` int(2) DEFAULT NULL,
  `SUB` int(6) DEFAULT NULL,
  `PARCEL` int(6) DEFAULT NULL,
  `BLD_NUM` int(3) DEFAULT NULL,
  `IMPR_TYPE` varchar(4) DEFAULT NULL,
  `IMPR_TYPE_DESC` varchar(40) DEFAULT NULL,
  `STYLE` varchar(4) DEFAULT NULL,
  `STYLE_DESC` varchar(40) DEFAULT NULL,
  `STORIES` varchar(2) DEFAULT NULL,
  `SHAPE` varchar(1) DEFAULT NULL,
  `SHAPEDESC` varchar(19) DEFAULT NULL,
  `CLASS` varchar(3) DEFAULT NULL,
  `CLASS_DESC` varchar(19) DEFAULT NULL,
  `BATH` varchar(1) DEFAULT NULL,
  `UNITS` varchar(2) DEFAULT NULL,
  `BEDROOM` varchar(1) DEFAULT NULL,
  `FIREPLACE` varchar(1) DEFAULT NULL,
  `SUBSTRUCT` varchar(1) DEFAULT NULL,
  `SUBDESC` varchar(15) DEFAULT NULL,
  `FRAME` varchar(1) DEFAULT NULL,
  `FRMDESC` varchar(20) DEFAULT NULL,
  `EFF_YEAR` int(4) DEFAULT NULL,
  `YEARBUILT` int(4) DEFAULT NULL,
  `EXTWALL` varchar(2) DEFAULT NULL,
  `EXWALLDESC` varchar(20) DEFAULT NULL,
  `ROOFTYPE` varchar(2) DEFAULT NULL,
  `ROOFTYDESC` varchar(20) DEFAULT NULL,
  `FLOORTYPE` varchar(2) DEFAULT NULL,
  `FLTYDESC` varchar(19) DEFAULT NULL,
  `INTWALLS` varchar(1) DEFAULT NULL,
  `INTWALDESC` varchar(19) DEFAULT NULL,
  `LIVINGAREA` int(7) DEFAULT NULL,
  `TOTALUNDERROOF` int(7) DEFAULT NULL,
  `TRAVERSE` varchar(1994) DEFAULT NULL,
  KEY `PARCEL_ID` (`PARCEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polk-exclude`
--

DROP TABLE IF EXISTS `polk-exclude`;
CREATE TABLE IF NOT EXISTS `polk-exclude` (
  `Parcel` bigint(16) NOT NULL,
  `DNC` enum('0','1') NOT NULL DEFAULT '0',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Parcel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `polk-land`
--

DROP TABLE IF EXISTS `polk-land`;
CREATE TABLE IF NOT EXISTS `polk-land` (
  `PARCEL_ID` bigint(18) DEFAULT NULL,
  `SECTION` int(2) DEFAULT NULL,
  `TOWNSHIP` int(2) DEFAULT NULL,
  `RANGE` int(2) DEFAULT NULL,
  `SUB` int(6) DEFAULT NULL,
  `PARCEL` int(6) DEFAULT NULL,
  `LINENUM` int(1) DEFAULT NULL,
  `LND_TP` varchar(1) DEFAULT NULL,
  `USECODE` int(4) DEFAULT NULL,
  `USEDESC` varchar(22) DEFAULT NULL,
  `FRONTAGE` decimal(6,2) DEFAULT NULL,
  `DEPTH` decimal(7,2) DEFAULT NULL,
  `UNITS` decimal(12,4) DEFAULT NULL,
  `UNITTYPE` varchar(1) DEFAULT NULL,
  `UNITTPDSCR` varchar(11) DEFAULT NULL,
  `INFCODE` varchar(2) DEFAULT NULL,
  `INFDESC` varchar(13) DEFAULT NULL,
  KEY `PARCEL_ID` (`PARCEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polk-owner`
--

DROP TABLE IF EXISTS `polk-owner`;
CREATE TABLE IF NOT EXISTS `polk-owner` (
  `PARCEL_ID` bigint(18) DEFAULT NULL,
  `LN_NUM` int(3) DEFAULT NULL,
  `NAME` varchar(91) DEFAULT NULL,
  `PCTOWN` decimal(5,4) DEFAULT NULL,
  `MAILTO` varchar(50) DEFAULT NULL,
  `ADDR_1` varchar(50) DEFAULT NULL,
  `ADDR_2` varchar(44) DEFAULT NULL,
  `ADDR_3` varchar(54) DEFAULT NULL,
  `CITY` varchar(40) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL,
  `ZIP` varchar(10) DEFAULT NULL,
  KEY `PARCEL_ID` (`PARCEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polk-parcel`
--

DROP TABLE IF EXISTS `polk-parcel`;
CREATE TABLE IF NOT EXISTS `polk-parcel` (
  `PARCEL_ID` bigint(18) DEFAULT NULL,
  `SECTION` int(2) DEFAULT NULL,
  `TOWNSHIP` int(2) DEFAULT NULL,
  `RANGE` int(2) DEFAULT NULL,
  `SUB` int(6) DEFAULT NULL,
  `PARCEL` int(6) DEFAULT NULL,
  `DORUS_CODE` int(4) DEFAULT NULL,
  `DORDESC` varchar(7) DEFAULT NULL,
  `DORDESC1` varchar(69) DEFAULT NULL,
  `NH_CD` varchar(8) DEFAULT NULL,
  `NH_DSCR` varchar(48) DEFAULT NULL,
  `HOMESTEAD` varchar(6) DEFAULT NULL,
  `WIDOWEX` varchar(4) DEFAULT NULL,
  `DISEX` varchar(6) DEFAULT NULL,
  `VETERANS` varchar(6) DEFAULT NULL,
  `OTHEREX` varchar(8) DEFAULT NULL,
  `EXCODE` varchar(75) DEFAULT NULL,
  `EXDESC` varchar(250) DEFAULT NULL,
  `PORT_VAL` int(5) DEFAULT NULL,
  `CLS_LND_VAL` varchar(7) DEFAULT NULL,
  `AG_CLASS` varchar(1) DEFAULT NULL,
  `VALUETYPE` varchar(1) DEFAULT NULL,
  `VALUEDESC` varchar(16) DEFAULT NULL,
  `TOT_LND_VAL` varchar(8) DEFAULT NULL,
  `TOT_BLD_VAL` varchar(8) DEFAULT NULL,
  `TOT_XF_VAL` varchar(8) DEFAULT NULL,
  `TOTALVAL` varchar(8) DEFAULT NULL,
  `RECONCILE` varchar(1) DEFAULT NULL,
  `ASSESSVAL` decimal(10,2) DEFAULT NULL,
  `TAXVAL` varchar(8) DEFAULT NULL,
  `CURTAXDIST` int(5) DEFAULT NULL,
  `TAXDIST` varchar(5) DEFAULT NULL,
  `AMTDUE` varchar(8) DEFAULT NULL,
  `MILLRATE` varchar(5) DEFAULT NULL,
  `YR_CREATED` varchar(4) DEFAULT NULL,
  `YR_IMPROVED` varchar(4) DEFAULT NULL,
  `LAST_INSP_DT` varchar(29) DEFAULT NULL,
  `TOT_ACREAGE` decimal(8,4) DEFAULT NULL,
  KEY `PARCEL_ID` (`PARCEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `polk-recent_sales`
--
DROP VIEW IF EXISTS `polk-recent_sales`;
CREATE TABLE IF NOT EXISTS `polk-recent_sales` (
`PARCEL_ID` bigint(18)
,`SALE_ID` int(3)
,`LN_NUM` int(3)
,`SALEDT` date
,`PRICE` int(9)
,`BOOK` varchar(5)
,`PAGE` varchar(5)
,`SALETYPE` varchar(1)
,`TRNS_CD` varchar(2)
,`TRNS_DSCR` varchar(22)
,`INSTRTYP` int(2)
,`INSTRTYP_DSCR` varchar(49)
,`GRANTOR` varchar(81)
,`GRANTEE` varchar(88)
,`FORECLOSURE` varchar(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `polk-sales`
--

DROP TABLE IF EXISTS `polk-sales`;
CREATE TABLE IF NOT EXISTS `polk-sales` (
  `PARCEL_ID` bigint(18) DEFAULT NULL,
  `SALE_ID` int(3) DEFAULT NULL,
  `LN_NUM` int(3) DEFAULT NULL,
  `SALEDT` date DEFAULT NULL,
  `PRICE` int(9) DEFAULT NULL,
  `BOOK` varchar(5) DEFAULT NULL,
  `PAGE` varchar(5) DEFAULT NULL,
  `SALETYPE` varchar(1) DEFAULT NULL,
  `TRNS_CD` varchar(2) DEFAULT NULL,
  `TRNS_DSCR` varchar(22) DEFAULT NULL,
  `INSTRTYP` int(2) DEFAULT NULL,
  `INSTRTYP_DSCR` varchar(49) DEFAULT NULL,
  `GRANTOR` varchar(81) DEFAULT NULL,
  `GRANTEE` varchar(88) DEFAULT NULL,
  `FORECLOSURE` varchar(1) DEFAULT NULL,
  KEY `PARCEL_ID` (`PARCEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polk-site`
--

DROP TABLE IF EXISTS `polk-site`;
CREATE TABLE IF NOT EXISTS `polk-site` (
  `PARCEL_ID` bigint(18) DEFAULT NULL,
  `LN_NUM` int(3) DEFAULT NULL,
  `BLD_NUM` int(4) DEFAULT NULL,
  `STR` varchar(28) DEFAULT NULL,
  `STR_PFX` varchar(2) DEFAULT NULL,
  `STR_NUM` varchar(6) DEFAULT NULL,
  `STR_NUM_SFX` varchar(3) DEFAULT NULL,
  `STR_SFX` varchar(10) DEFAULT NULL,
  `STR_SFX_DIR` varchar(2) DEFAULT NULL,
  `STR_UNIT` varchar(13) DEFAULT NULL,
  `ZIP` varchar(10) DEFAULT NULL,
  `CITY` varchar(12) DEFAULT NULL,
  KEY `PARCEL_ID` (`PARCEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `recent_sales`
--
DROP VIEW IF EXISTS `recent_sales`;
CREATE TABLE IF NOT EXISTS `recent_sales` (
`PIN` varchar(29)
,`FOLIO` varchar(10)
,`DOR_CODE` varchar(4)
,`NBHC` float
,`S_DATE` date
,`VI` varchar(1)
,`QU` varchar(1)
,`REA_CD` varchar(3)
,`S_AMT` float
,`SUB` varchar(3)
,`STR` varchar(6)
,`S_TYPE` varchar(3)
,`OR_BK` varchar(8)
,`OR_PG` varchar(8)
,`GRANTOR` varchar(75)
,`GRANTEE` varchar(75)
,`RECENT_DATE` date
);
-- --------------------------------------------------------

--
-- Structure for view `abs_sfr`
--
DROP TABLE IF EXISTS `abs_sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `abs_sfr` AS select `pa`.`FOLIO` AS `FOLIO`,`pa`.`TYPE` AS `TYPE`,`pa`.`PIN` AS `PIN`,`pa`.`OWNER` AS `OWNER`,`pa`.`ADDR_1` AS `ADDR_1`,`pa`.`ADDR_2` AS `ADDR_2`,`pa`.`CITY` AS `CITY`,`pa`.`STATE` AS `STATE`,`pa`.`ZIP` AS `ZIP`,`pa`.`COUNTRY` AS `COUNTRY`,`pa`.`SUB` AS `SUB`,`pa`.`SITE_ADDR` AS `SITE_ADDR`,`pa`.`SITE_CITY` AS `SITE_CITY`,`pa`.`SITE_ZIP` AS `SITE_ZIP`,`pa`.`LEGAL1` AS `LEGAL1`,`pa`.`LEGAL2` AS `LEGAL2`,`pa`.`LEGAL3` AS `LEGAL3`,`pa`.`LEGAL4` AS `LEGAL4`,`pa`.`DBA` AS `DBA`,`pa`.`STRAP` AS `STRAP`,`pa`.`tBEDS` AS `tBEDS`,`pa`.`tBATHS` AS `tBATHS`,`pa`.`tSTORIES` AS `tSTORIES`,`pa`.`tUNITS` AS `tUNITS`,`pa`.`tBLDGS` AS `tBLDGS`,`pa`.`TAXDIST` AS `TAXDIST`,`pa`.`JUST` AS `JUST`,`pa`.`LAND` AS `LAND`,`pa`.`BLDG` AS `BLDG`,`pa`.`EXF` AS `EXF`,`pa`.`ACT` AS `ACT`,`pa`.`EFF` AS `EFF`,`pa`.`HEAT_AR` AS `HEAT_AR`,`pa`.`ASD_VAL` AS `ASD_VAL`,`pa`.`TAX_VAL` AS `TAX_VAL`,`pa`.`MUNI` AS `MUNI`,`pa`.`SD1` AS `SD1`,`pa`.`SD2` AS `SD2`,`pa`.`TIF` AS `TIF`,`pa`.`BASE` AS `BASE`,`pa`.`S_DATE` AS `S_DATE`,`pa`.`VI` AS `VI`,`pa`.`S_AMT` AS `S_AMT`,`pa`.`ACREAGE` AS `ACREAGE`,`pa`.`NBHC` AS `NBHC`,`pa`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`pa`.`str` AS `str`,`pa`.`str_pfx` AS `str_pfx`,`pa`.`str_sfx` AS `str_sfx`,`pa`.`str_unit` AS `str_unit`,`pa`.`str_num` AS `str_num`,`pa`.`DOR_CODE` AS `DOR_CODE`,`pa`.`LU_GRP` AS `LU_GRP`,`pa`.`MARKET_VAL` AS `MARKET_VAL`,`pa`.`Shape_area` AS `Shape_area`,`pa`.`Shape_len` AS `Shape_len` from `parcel` `pa` where ((`pa`.`DOR_CODE` = '0100') and (not((`pa`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (`pa`.`ADDR_1` <> `pa`.`SITE_ADDR`) and (`pa`.`BASE` = '0') and (not((`pa`.`SITE_CITY` like 'Sun City%')))) order by `pa`.`FOLIO`;

-- --------------------------------------------------------

--
-- Structure for view `hills-pre1995-abs-sfr`
--
DROP TABLE IF EXISTS `hills-pre1995-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `hills-pre1995-abs-sfr` AS select `p`.`FOLIO` AS `FOLIO`,`p`.`TYPE` AS `TYPE`,`p`.`PIN` AS `PIN`,`p`.`OWNER` AS `OWNER`,`p`.`ADDR_1` AS `ADDR_1`,`p`.`ADDR_2` AS `ADDR_2`,`p`.`CITY` AS `CITY`,`p`.`STATE` AS `STATE`,`p`.`ZIP` AS `ZIP`,`p`.`COUNTRY` AS `COUNTRY`,`p`.`SUB` AS `SUB`,`p`.`SITE_ADDR` AS `SITE_ADDR`,`p`.`SITE_CITY` AS `SITE_CITY`,`p`.`SITE_ZIP` AS `SITE_ZIP`,`p`.`LEGAL1` AS `LEGAL1`,`p`.`LEGAL2` AS `LEGAL2`,`p`.`LEGAL3` AS `LEGAL3`,`p`.`LEGAL4` AS `LEGAL4`,`p`.`DBA` AS `DBA`,`p`.`STRAP` AS `STRAP`,`p`.`tBEDS` AS `tBEDS`,`p`.`tBATHS` AS `tBATHS`,`p`.`tSTORIES` AS `tSTORIES`,`p`.`tUNITS` AS `tUNITS`,`p`.`tBLDGS` AS `tBLDGS`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`JUST` AS `JUST`,`p`.`LAND` AS `LAND`,`p`.`BLDG` AS `BLDG`,`p`.`EXF` AS `EXF`,`p`.`ACT` AS `ACT`,`p`.`EFF` AS `EFF`,`p`.`HEAT_AR` AS `HEAT_AR`,`p`.`ASD_VAL` AS `ASD_VAL`,`p`.`TAX_VAL` AS `TAX_VAL`,`p`.`MUNI` AS `MUNI`,`p`.`SD1` AS `SD1`,`p`.`SD2` AS `SD2`,`p`.`TIF` AS `TIF`,`p`.`BASE` AS `BASE`,`p`.`S_DATE` AS `S_DATE`,`p`.`VI` AS `VI`,`p`.`S_AMT` AS `S_AMT`,`p`.`ACREAGE` AS `ACREAGE`,`p`.`NBHC` AS `NBHC`,`p`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`p`.`str` AS `str`,`p`.`str_pfx` AS `str_pfx`,`p`.`str_sfx` AS `str_sfx`,`p`.`str_unit` AS `str_unit`,`p`.`str_num` AS `str_num`,`p`.`DOR_CODE` AS `DOR_CODE`,`p`.`LU_GRP` AS `LU_GRP`,`p`.`MARKET_VAL` AS `MARKET_VAL`,`p`.`Shape_area` AS `Shape_area`,`p`.`Shape_len` AS `Shape_len`,`rs`.`S_DATE` AS `sale_date`,`rs`.`S_AMT` AS `sale_amount`,`rs`.`S_TYPE` AS `s_type`,`rs`.`GRANTOR` AS `grantor`,`rs`.`GRANTEE` AS `grantee` from (`parcel` `p` join `recent_sales` `rs` on((`p`.`FOLIO` = `rs`.`FOLIO`))) where ((`rs`.`DOR_CODE` = '0100') and (`p`.`ASD_VAL` < 150000) and (not((`p`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (not(`p`.`FOLIO` in (select `exclude`.`Pin` from `exclude`))) and (`p`.`ADDR_1` <> `p`.`SITE_ADDR`) and (`p`.`BASE` = '0') and (`rs`.`RECENT_DATE` < '1995-01-01'));

-- --------------------------------------------------------

--
-- Structure for view `hills-taxdel-abs-sfr`
--
DROP TABLE IF EXISTS `hills-taxdel-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `hills-taxdel-abs-sfr` AS select `p`.`FOLIO` AS `FOLIO`,`p`.`TYPE` AS `TYPE`,`p`.`PIN` AS `PIN`,`p`.`OWNER` AS `OWNER`,`p`.`ADDR_1` AS `ADDR_1`,`p`.`ADDR_2` AS `ADDR_2`,`p`.`CITY` AS `CITY`,`p`.`STATE` AS `STATE`,`p`.`ZIP` AS `ZIP`,`p`.`COUNTRY` AS `COUNTRY`,`p`.`SUB` AS `SUB`,`p`.`SITE_ADDR` AS `SITE_ADDR`,`p`.`SITE_CITY` AS `SITE_CITY`,`p`.`SITE_ZIP` AS `SITE_ZIP`,`p`.`LEGAL1` AS `LEGAL1`,`p`.`LEGAL2` AS `LEGAL2`,`p`.`LEGAL3` AS `LEGAL3`,`p`.`LEGAL4` AS `LEGAL4`,`p`.`DBA` AS `DBA`,`p`.`STRAP` AS `STRAP`,`p`.`tBEDS` AS `tBEDS`,`p`.`tBATHS` AS `tBATHS`,`p`.`tSTORIES` AS `tSTORIES`,`p`.`tUNITS` AS `tUNITS`,`p`.`tBLDGS` AS `tBLDGS`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`JUST` AS `JUST`,`p`.`LAND` AS `LAND`,`p`.`BLDG` AS `BLDG`,`p`.`EXF` AS `EXF`,`p`.`ACT` AS `ACT`,`p`.`EFF` AS `EFF`,`p`.`HEAT_AR` AS `HEAT_AR`,`p`.`ASD_VAL` AS `ASD_VAL`,`p`.`TAX_VAL` AS `TAX_VAL`,`p`.`MUNI` AS `MUNI`,`p`.`SD1` AS `SD1`,`p`.`SD2` AS `SD2`,`p`.`TIF` AS `TIF`,`p`.`BASE` AS `BASE`,`p`.`S_DATE` AS `S_DATE`,`p`.`VI` AS `VI`,`p`.`S_AMT` AS `S_AMT`,`p`.`ACREAGE` AS `ACREAGE`,`p`.`NBHC` AS `NBHC`,`p`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`p`.`str` AS `str`,`p`.`str_pfx` AS `str_pfx`,`p`.`str_sfx` AS `str_sfx`,`p`.`str_unit` AS `str_unit`,`p`.`str_num` AS `str_num`,`p`.`DOR_CODE` AS `DOR_CODE`,`p`.`LU_GRP` AS `LU_GRP`,`p`.`MARKET_VAL` AS `MARKET_VAL`,`p`.`Shape_area` AS `Shape_area`,`p`.`Shape_len` AS `Shape_len`,`uc`.`Tax Yr` AS `Tax Yr`,`uc`.`Account Number` AS `Account Number`,`uc`.`Alternate Key` AS `Alternate Key`,`uc`.`Cert #` AS `Cert #`,`uc`.`Issued Date` AS `Issued Date`,`uc`.`Bidder #` AS `Bidder #`,`uc`.`Cert Buyer` AS `Cert Buyer`,`uc`.`Cert Buyer Address` AS `Cert Buyer Address`,`uc`.`Owner Name` AS `Owner Name`,`uc`.`A: Face Amount` AS `A: Face Amount`,`uc`.`Interest Rate` AS `Interest Rate`,`uc`.`B: Account Balance Amount` AS `B: Account Balance Amount`,`uc`.`Date Redeemed` AS `Date Redeemed`,`uc`.`Deed Status` AS `Deed Status`,`uc`.`C: Math / Condition` AS `C: Math / Condition` from (`hills-unpaid_certs` `uc` join `parcel` `p` on((convert(concat('A',`p`.`FOLIO`) using utf8) = `uc`.`Account Number`))) where ((`uc`.`Tax Yr` < 2017) and (`p`.`DOR_CODE` = '0100') and (`p`.`ADDR_1` <> `p`.`SITE_ADDR`) and (not((`p`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (`p`.`ASD_VAL` < 150000) and (not(`p`.`FOLIO` in (select `exclude`.`Pin` from `exclude`)))) group by `p`.`ADDR_1`;

-- --------------------------------------------------------

--
-- Structure for view `list-hills-evictions`
--
DROP TABLE IF EXISTS `list-hills-evictions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-hills-evictions` AS select `hc`.`id` AS `id`,`hc`.`CaseCategory` AS `CaseCategory`,`hc`.`CaseTypeDescription` AS `CaseTypeDescription`,`hc`.`CaseNumber` AS `CaseNumber`,`hc`.`Title` AS `Title`,`hc`.`FilingDate` AS `FilingDate`,`hc`.`PartyType` AS `PartyType`,`hc`.`FirstName` AS `FirstName`,`hc`.`MiddleName` AS `MiddleName`,`hc`.`LastNameCompanyName` AS `LastNameCompanyName`,`hc`.`PartyAddress` AS `PartyAddress`,`hc`.`Attorney` AS `Attorney`,`hc`.`address1` AS `address1`,`hc`.`address2` AS `address2`,`hc`.`address3` AS `address3`,`hc`.`address4` AS `address4`,`hc`.`city` AS `city`,`hc`.`state` AS `state`,`hc`.`zipcode` AS `zipcode` from `hills-civilcases` `hc` where ((`hc`.`CaseTypeDescription` in ('Delinquent Tenant','Distress for Rent','Ejectment','LT Delinquent Tenant','LT Distress for Rent','LT Removal of Tenant','LT Unlawful Detainer','Removal of Tenant','Unlawful Detainer')) and (not((`hc`.`Title` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (`hc`.`PartyType` = 'Plaintiff') and (`hc`.`FirstName` <> '') and (not(`hc`.`CaseNumber` in (select `exclude`.`Pin` from `exclude`))));

-- --------------------------------------------------------

--
-- Structure for view `list-hills-inheritance-sfr`
--
DROP TABLE IF EXISTS `list-hills-inheritance-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-hills-inheritance-sfr` AS select `p`.`FOLIO` AS `FOLIO`,`p`.`TYPE` AS `TYPE`,`p`.`PIN` AS `PIN`,`p`.`OWNER` AS `OWNER`,`p`.`ADDR_1` AS `ADDR_1`,`p`.`ADDR_2` AS `ADDR_2`,`p`.`CITY` AS `CITY`,`p`.`STATE` AS `STATE`,`p`.`ZIP` AS `ZIP`,`p`.`COUNTRY` AS `COUNTRY`,`p`.`SUB` AS `SUB`,`p`.`SITE_ADDR` AS `SITE_ADDR`,`p`.`SITE_CITY` AS `SITE_CITY`,`p`.`SITE_ZIP` AS `SITE_ZIP`,`p`.`LEGAL1` AS `LEGAL1`,`p`.`LEGAL2` AS `LEGAL2`,`p`.`LEGAL3` AS `LEGAL3`,`p`.`LEGAL4` AS `LEGAL4`,`p`.`DBA` AS `DBA`,`p`.`STRAP` AS `STRAP`,`p`.`tBEDS` AS `tBEDS`,`p`.`tBATHS` AS `tBATHS`,`p`.`tSTORIES` AS `tSTORIES`,`p`.`tUNITS` AS `tUNITS`,`p`.`tBLDGS` AS `tBLDGS`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`JUST` AS `JUST`,`p`.`LAND` AS `LAND`,`p`.`BLDG` AS `BLDG`,`p`.`EXF` AS `EXF`,`p`.`ACT` AS `ACT`,`p`.`EFF` AS `EFF`,`p`.`HEAT_AR` AS `HEAT_AR`,`p`.`ASD_VAL` AS `ASD_VAL`,`p`.`TAX_VAL` AS `TAX_VAL`,`p`.`MUNI` AS `MUNI`,`p`.`SD1` AS `SD1`,`p`.`SD2` AS `SD2`,`p`.`TIF` AS `TIF`,`p`.`BASE` AS `BASE`,`p`.`S_DATE` AS `S_DATE`,`p`.`VI` AS `VI`,`p`.`S_AMT` AS `S_AMT`,`p`.`ACREAGE` AS `ACREAGE`,`p`.`NBHC` AS `NBHC`,`p`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`p`.`str` AS `str`,`p`.`str_pfx` AS `str_pfx`,`p`.`str_sfx` AS `str_sfx`,`p`.`str_unit` AS `str_unit`,`p`.`str_num` AS `str_num`,`p`.`DOR_CODE` AS `DOR_CODE`,`p`.`LU_GRP` AS `LU_GRP`,`p`.`MARKET_VAL` AS `MARKET_VAL`,`p`.`Shape_area` AS `Shape_area`,`p`.`Shape_len` AS `Shape_len`,`rs`.`S_AMT` AS `sale_amount`,`rs`.`S_TYPE` AS `sale_type`,`rs`.`RECENT_DATE` AS `sale_date` from (`parcel` `p` join `recent_sales` `rs` on((`p`.`FOLIO` = `rs`.`FOLIO`))) where ((`rs`.`DOR_CODE` = '0100') and (`p`.`ASD_VAL` < 150000) and (not((`p`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|estate|corp|CONFIDENTIAL|county|assn|association|bank|development|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (not(`p`.`FOLIO` in (select `exclude`.`Pin` from `exclude`))) and (`rs`.`S_TYPE` in ('AD','PR','DD')) and (`rs`.`S_AMT` = '100'));

-- --------------------------------------------------------

--
-- Structure for view `list-hills-pre1995-mf`
--
DROP TABLE IF EXISTS `list-hills-pre1995-mf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-hills-pre1995-mf` AS select `p`.`FOLIO` AS `FOLIO`,`p`.`TYPE` AS `TYPE`,`p`.`PIN` AS `PIN`,`p`.`OWNER` AS `OWNER`,`p`.`ADDR_1` AS `ADDR_1`,`p`.`ADDR_2` AS `ADDR_2`,`p`.`CITY` AS `CITY`,`p`.`STATE` AS `STATE`,`p`.`ZIP` AS `ZIP`,`p`.`COUNTRY` AS `COUNTRY`,`p`.`SUB` AS `SUB`,`p`.`SITE_ADDR` AS `SITE_ADDR`,`p`.`SITE_CITY` AS `SITE_CITY`,`p`.`SITE_ZIP` AS `SITE_ZIP`,`p`.`LEGAL1` AS `LEGAL1`,`p`.`LEGAL2` AS `LEGAL2`,`p`.`LEGAL3` AS `LEGAL3`,`p`.`LEGAL4` AS `LEGAL4`,`p`.`DBA` AS `DBA`,`p`.`STRAP` AS `STRAP`,`p`.`tBEDS` AS `tBEDS`,`p`.`tBATHS` AS `tBATHS`,`p`.`tSTORIES` AS `tSTORIES`,`p`.`tUNITS` AS `tUNITS`,`p`.`tBLDGS` AS `tBLDGS`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`JUST` AS `JUST`,`p`.`LAND` AS `LAND`,`p`.`BLDG` AS `BLDG`,`p`.`EXF` AS `EXF`,`p`.`ACT` AS `ACT`,`p`.`EFF` AS `EFF`,`p`.`HEAT_AR` AS `HEAT_AR`,`p`.`ASD_VAL` AS `ASD_VAL`,`p`.`TAX_VAL` AS `TAX_VAL`,`p`.`MUNI` AS `MUNI`,`p`.`SD1` AS `SD1`,`p`.`SD2` AS `SD2`,`p`.`TIF` AS `TIF`,`p`.`BASE` AS `BASE`,`p`.`S_DATE` AS `S_DATE`,`p`.`VI` AS `VI`,`p`.`S_AMT` AS `S_AMT`,`p`.`ACREAGE` AS `ACREAGE`,`p`.`NBHC` AS `NBHC`,`p`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`p`.`str` AS `str`,`p`.`str_pfx` AS `str_pfx`,`p`.`str_sfx` AS `str_sfx`,`p`.`str_unit` AS `str_unit`,`p`.`str_num` AS `str_num`,`p`.`DOR_CODE` AS `DOR_CODE`,`p`.`LU_GRP` AS `LU_GRP`,`p`.`MARKET_VAL` AS `MARKET_VAL`,`p`.`Shape_area` AS `Shape_area`,`p`.`Shape_len` AS `Shape_len`,`rs`.`S_DATE` AS `sale_date`,`rs`.`S_AMT` AS `sale_amount`,`rs`.`S_TYPE` AS `s_type`,`rs`.`GRANTOR` AS `grantor`,`rs`.`GRANTEE` AS `grantee` from (`parcel` `p` join `recent_sales` `rs` on((`p`.`FOLIO` = `rs`.`FOLIO`))) where ((`rs`.`DOR_CODE` = '0100') and (not((`p`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (not(`p`.`FOLIO` in (select `exclude`.`Pin` from `exclude`))) and (`p`.`ADDR_1` <> `p`.`SITE_ADDR`) and (`p`.`BASE` = '0') and (`rs`.`RECENT_DATE` < '1995-01-01'));

-- --------------------------------------------------------

--
-- Structure for view `list-hills-probate`
--
DROP TABLE IF EXISTS `list-hills-probate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-hills-probate` AS select `hills-probate`.`id` AS `id`,`hills-probate`.`CaseCategory` AS `CaseCategory`,`hills-probate`.`CaseTypeDescription` AS `CaseTypeDescription`,`hills-probate`.`CaseNumber` AS `CaseNumber`,`hills-probate`.`Title` AS `Title`,`hills-probate`.`FilingDate` AS `FilingDate`,`hills-probate`.`PartyType` AS `PartyType`,`hills-probate`.`FirstName` AS `FirstName`,`hills-probate`.`MiddleName` AS `MiddleName`,`hills-probate`.`LastNameCompanyName` AS `LastNameCompanyName`,`hills-probate`.`DateofDeath` AS `DateofDeath`,`hills-probate`.`PartyAddress` AS `PartyAddress`,`hills-probate`.`Attorney` AS `Attorney`,`hills-probate`.`address1` AS `address1`,`hills-probate`.`address2` AS `address2`,`hills-probate`.`address3` AS `address3`,`hills-probate`.`address4` AS `address4`,`hills-probate`.`city` AS `city`,`hills-probate`.`state` AS `state`,`hills-probate`.`zipcode` AS `zipcode` from `hills-probate` where ((`hills-probate`.`CaseTypeDescription` in ('Formal Administration','Summary Administration Greater Than $1000','Wills on Deposit','Summary Administration Less Than $1000','Notice of Trust')) and (`hills-probate`.`PartyType` in ('Trustee','Petitioner')) and (not(`hills-probate`.`CaseNumber` in (select `exclude`.`Pin` from `exclude`))));

-- --------------------------------------------------------

--
-- Structure for view `list-hills-qc-abs-sfr`
--
DROP TABLE IF EXISTS `list-hills-qc-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-hills-qc-abs-sfr` AS select `p`.`FOLIO` AS `FOLIO`,`p`.`TYPE` AS `TYPE`,`p`.`PIN` AS `PIN`,`p`.`OWNER` AS `OWNER`,`p`.`ADDR_1` AS `ADDR_1`,`p`.`ADDR_2` AS `ADDR_2`,`p`.`CITY` AS `CITY`,`p`.`STATE` AS `STATE`,`p`.`ZIP` AS `ZIP`,`p`.`COUNTRY` AS `COUNTRY`,`p`.`SUB` AS `SUB`,`p`.`SITE_ADDR` AS `SITE_ADDR`,`p`.`SITE_CITY` AS `SITE_CITY`,`p`.`SITE_ZIP` AS `SITE_ZIP`,`p`.`LEGAL1` AS `LEGAL1`,`p`.`LEGAL2` AS `LEGAL2`,`p`.`LEGAL3` AS `LEGAL3`,`p`.`LEGAL4` AS `LEGAL4`,`p`.`DBA` AS `DBA`,`p`.`STRAP` AS `STRAP`,`p`.`tBEDS` AS `tBEDS`,`p`.`tBATHS` AS `tBATHS`,`p`.`tSTORIES` AS `tSTORIES`,`p`.`tUNITS` AS `tUNITS`,`p`.`tBLDGS` AS `tBLDGS`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`JUST` AS `JUST`,`p`.`LAND` AS `LAND`,`p`.`BLDG` AS `BLDG`,`p`.`EXF` AS `EXF`,`p`.`ACT` AS `ACT`,`p`.`EFF` AS `EFF`,`p`.`HEAT_AR` AS `HEAT_AR`,`p`.`ASD_VAL` AS `ASD_VAL`,`p`.`TAX_VAL` AS `TAX_VAL`,`p`.`MUNI` AS `MUNI`,`p`.`SD1` AS `SD1`,`p`.`SD2` AS `SD2`,`p`.`TIF` AS `TIF`,`p`.`BASE` AS `BASE`,`p`.`S_DATE` AS `S_DATE`,`p`.`VI` AS `VI`,`p`.`S_AMT` AS `S_AMT`,`p`.`ACREAGE` AS `ACREAGE`,`p`.`NBHC` AS `NBHC`,`p`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`p`.`str` AS `str`,`p`.`str_pfx` AS `str_pfx`,`p`.`str_sfx` AS `str_sfx`,`p`.`str_unit` AS `str_unit`,`p`.`str_num` AS `str_num`,`p`.`DOR_CODE` AS `DOR_CODE`,`p`.`LU_GRP` AS `LU_GRP`,`p`.`MARKET_VAL` AS `MARKET_VAL`,`p`.`Shape_area` AS `Shape_area`,`p`.`Shape_len` AS `Shape_len`,`rs`.`S_AMT` AS `sale_amount`,`rs`.`S_TYPE` AS `sale_type`,`rs`.`RECENT_DATE` AS `sale_date` from (`parcel` `p` join `recent_sales` `rs` on((`p`.`FOLIO` = `rs`.`FOLIO`))) where ((`rs`.`DOR_CODE` = '0100') and (`p`.`ASD_VAL` < 150000) and (not((`p`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (not(`p`.`FOLIO` in (select `exclude`.`Pin` from `exclude`))) and (`rs`.`S_TYPE` = 'QC') and (`p`.`ADDR_1` <> `p`.`SITE_ADDR`) and (`p`.`BASE` = '0') and (`p`.`SITE_CITY` in ('BRANDON','TAMPA','RIVERVIEW','LUTZ','TEMPLE TERRACE')) and (`rs`.`S_AMT` = '100'));

-- --------------------------------------------------------

--
-- Structure for view `list-hills-qc-mf`
--
DROP TABLE IF EXISTS `list-hills-qc-mf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-hills-qc-mf` AS select `p`.`FOLIO` AS `FOLIO`,`p`.`TYPE` AS `TYPE`,`p`.`PIN` AS `PIN`,`p`.`OWNER` AS `OWNER`,`p`.`ADDR_1` AS `ADDR_1`,`p`.`ADDR_2` AS `ADDR_2`,`p`.`CITY` AS `CITY`,`p`.`STATE` AS `STATE`,`p`.`ZIP` AS `ZIP`,`p`.`COUNTRY` AS `COUNTRY`,`p`.`SUB` AS `SUB`,`p`.`SITE_ADDR` AS `SITE_ADDR`,`p`.`SITE_CITY` AS `SITE_CITY`,`p`.`SITE_ZIP` AS `SITE_ZIP`,`p`.`LEGAL1` AS `LEGAL1`,`p`.`LEGAL2` AS `LEGAL2`,`p`.`LEGAL3` AS `LEGAL3`,`p`.`LEGAL4` AS `LEGAL4`,`p`.`DBA` AS `DBA`,`p`.`STRAP` AS `STRAP`,`p`.`tBEDS` AS `tBEDS`,`p`.`tBATHS` AS `tBATHS`,`p`.`tSTORIES` AS `tSTORIES`,`p`.`tUNITS` AS `tUNITS`,`p`.`tBLDGS` AS `tBLDGS`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`JUST` AS `JUST`,`p`.`LAND` AS `LAND`,`p`.`BLDG` AS `BLDG`,`p`.`EXF` AS `EXF`,`p`.`ACT` AS `ACT`,`p`.`EFF` AS `EFF`,`p`.`HEAT_AR` AS `HEAT_AR`,`p`.`ASD_VAL` AS `ASD_VAL`,`p`.`TAX_VAL` AS `TAX_VAL`,`p`.`MUNI` AS `MUNI`,`p`.`SD1` AS `SD1`,`p`.`SD2` AS `SD2`,`p`.`TIF` AS `TIF`,`p`.`BASE` AS `BASE`,`p`.`S_DATE` AS `S_DATE`,`p`.`VI` AS `VI`,`p`.`S_AMT` AS `S_AMT`,`p`.`ACREAGE` AS `ACREAGE`,`p`.`NBHC` AS `NBHC`,`p`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`p`.`str` AS `str`,`p`.`str_pfx` AS `str_pfx`,`p`.`str_sfx` AS `str_sfx`,`p`.`str_unit` AS `str_unit`,`p`.`str_num` AS `str_num`,`p`.`DOR_CODE` AS `DOR_CODE`,`p`.`LU_GRP` AS `LU_GRP`,`p`.`MARKET_VAL` AS `MARKET_VAL`,`p`.`Shape_area` AS `Shape_area`,`p`.`Shape_len` AS `Shape_len`,`rs`.`S_AMT` AS `sale_amount`,`rs`.`S_TYPE` AS `sale_type`,`rs`.`RECENT_DATE` AS `sale_date` from (`parcel` `p` join `recent_sales` `rs` on((`p`.`FOLIO` = `rs`.`FOLIO`))) where ((`rs`.`DOR_CODE` = '0800') and (not((`p`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (not(`p`.`FOLIO` in (select `exclude`.`Pin` from `exclude`))) and (`rs`.`S_TYPE` = 'QC') and (`p`.`ADDR_1` <> `p`.`SITE_ADDR`) and (`p`.`BASE` = '0') and (`p`.`SITE_CITY` in ('BRANDON','TAMPA','RIVERVIEW','LUTZ','TEMPLE TERRACE')) and (`rs`.`S_AMT` = '100') and (`rs`.`RECENT_DATE` > '2009-01-01'));

-- --------------------------------------------------------

--
-- Structure for view `list-hills-senior-exempt`
--
DROP TABLE IF EXISTS `list-hills-senior-exempt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-hills-senior-exempt` AS select `p`.`FOLIO` AS `FOLIO`,`p`.`TYPE` AS `TYPE`,`p`.`PIN` AS `PIN`,`p`.`OWNER` AS `OWNER`,`p`.`ADDR_1` AS `ADDR_1`,`p`.`ADDR_2` AS `ADDR_2`,`p`.`CITY` AS `CITY`,`p`.`STATE` AS `STATE`,`p`.`ZIP` AS `ZIP`,`p`.`COUNTRY` AS `COUNTRY`,`p`.`SUB` AS `SUB`,`p`.`SITE_ADDR` AS `SITE_ADDR`,`p`.`SITE_CITY` AS `SITE_CITY`,`p`.`SITE_ZIP` AS `SITE_ZIP`,`p`.`LEGAL1` AS `LEGAL1`,`p`.`LEGAL2` AS `LEGAL2`,`p`.`LEGAL3` AS `LEGAL3`,`p`.`LEGAL4` AS `LEGAL4`,`p`.`DBA` AS `DBA`,`p`.`STRAP` AS `STRAP`,`p`.`tBEDS` AS `tBEDS`,`p`.`tBATHS` AS `tBATHS`,`p`.`tSTORIES` AS `tSTORIES`,`p`.`tUNITS` AS `tUNITS`,`p`.`tBLDGS` AS `tBLDGS`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`JUST` AS `JUST`,`p`.`LAND` AS `LAND`,`p`.`BLDG` AS `BLDG`,`p`.`EXF` AS `EXF`,`p`.`ACT` AS `ACT`,`p`.`EFF` AS `EFF`,`p`.`HEAT_AR` AS `HEAT_AR`,`p`.`ASD_VAL` AS `ASD_VAL`,`p`.`TAX_VAL` AS `TAX_VAL`,`p`.`MUNI` AS `MUNI`,`p`.`SD1` AS `SD1`,`p`.`SD2` AS `SD2`,`p`.`TIF` AS `TIF`,`p`.`BASE` AS `BASE`,`p`.`S_DATE` AS `S_DATE`,`p`.`VI` AS `VI`,`p`.`S_AMT` AS `S_AMT`,`p`.`ACREAGE` AS `ACREAGE`,`p`.`NBHC` AS `NBHC`,`p`.`FOLIO_NUMB` AS `FOLIO_NUMB`,`p`.`str` AS `str`,`p`.`str_pfx` AS `str_pfx`,`p`.`str_sfx` AS `str_sfx`,`p`.`str_unit` AS `str_unit`,`p`.`str_num` AS `str_num`,`p`.`DOR_CODE` AS `DOR_CODE`,`p`.`LU_GRP` AS `LU_GRP`,`p`.`MARKET_VAL` AS `MARKET_VAL`,`p`.`Shape_area` AS `Shape_area`,`p`.`Shape_len` AS `Shape_len` from (`parcel` `p` join `recent_sales` `rs` on((`rs`.`FOLIO` = `p`.`FOLIO`))) where (concat('A',`p`.`FOLIO`) in (select `hills-tax_roll`.`Account Number` from `hills-tax_roll` where (`hills-tax_roll`.`Exemption` like '%SENIOR%')) and (`p`.`ASD_VAL` < 150000) and (not((`p`.`OWNER` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (not(`p`.`FOLIO` in (select `exclude`.`Pin` from `exclude`))) and (`rs`.`RECENT_DATE` < '1995-01-01') and (`p`.`SITE_CITY` <> 'Sun city center') and (`p`.`DOR_CODE` = '0100')) group by `p`.`ADDR_1`;

-- --------------------------------------------------------

--
-- Structure for view `list-orange-pre1990-abs-sfr`
--
DROP TABLE IF EXISTS `list-orange-pre1990-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-orange-pre1990-abs-sfr` AS select `orange-parcel`.`Parcel Number` AS `Parcel Number`,`orange-parcel`.`Owner 1` AS `Owner 1`,`orange-parcel`.`Owner 2` AS `Owner 2`,`orange-parcel`.`Address 1` AS `Address 1`,`orange-parcel`.`Address 2` AS `Address 2`,`orange-parcel`.`Address 3` AS `Address 3`,`orange-parcel`.`Address 4` AS `Address 4`,`orange-parcel`.`City` AS `City`,`orange-parcel`.`State` AS `State`,`orange-parcel`.`Country` AS `Country`,`orange-parcel`.`Zip Code` AS `Zip Code`,`orange-parcel`.`Property Use Code` AS `Property Use Code`,`orange-parcel`.`Exemp Code #1` AS `Exemp Code #1`,`orange-parcel`.`Exemp Code # 2` AS `Exemp Code # 2`,`orange-parcel`.`Exemp Code # 3` AS `Exemp Code # 3`,`orange-parcel`.`Exemp Code # 4` AS `Exemp Code # 4`,`orange-parcel`.`Exemp Code #5` AS `Exemp Code #5`,`orange-parcel`.`Improve Code` AS `Improve Code`,`orange-parcel`.`Market Index` AS `Market Index`,`orange-parcel`.`Exterior Wall Code #1` AS `Exterior Wall Code #1`,`orange-parcel`.`Exterior Wall Code # 2` AS `Exterior Wall Code # 2`,`orange-parcel`.`Total Area (Sq. ft)` AS `Total Area (Sq. ft)`,`orange-parcel`.`Total CAMA Area (sq.ft.)` AS `Total CAMA Area (sq.ft.)`,`orange-parcel`.`Total # Bedroom` AS `Total # Bedroom`,`orange-parcel`.`Total # Bath` AS `Total # Bath`,`orange-parcel`.`Actual Year Built` AS `Actual Year Built`,`orange-parcel`.`Effective Year Built` AS `Effective Year Built`,`orange-parcel`.`Land Use Code` AS `Land Use Code`,`orange-parcel`.`Land Zoning Code` AS `Land Zoning Code`,`orange-parcel`.`Land Unit Type` AS `Land Unit Type`,`orange-parcel`.`Land Units` AS `Land Units`,`orange-parcel`.`Land Unit Price` AS `Land Unit Price`,`orange-parcel`.`Land Notes` AS `Land Notes`,`orange-parcel`.`Taxable Value` AS `Taxable Value`,`orange-parcel`.`Just Value (Market Value)` AS `Just Value (Market Value)`,`orange-parcel`.`Assessed Value (Save Our Homes)` AS `Assessed Value (Save Our Homes)`,`orange-parcel`.`Building Value` AS `Building Value`,`orange-parcel`.`Land Value` AS `Land Value`,`orange-parcel`.`Extra Feature Value` AS `Extra Feature Value`,`orange-parcel`.`AG Land Value` AS `AG Land Value`,`orange-parcel`.`Market Value of AG land` AS `Market Value of AG land`,`orange-parcel`.`Classified Value` AS `Classified Value`,`orange-parcel`.`Exemption Value` AS `Exemption Value`,`orange-parcel`.`Situs Street Number` AS `Situs Street Number`,`orange-parcel`.`Situs Street Direction` AS `Situs Street Direction`,`orange-parcel`.`Situs Street Name` AS `Situs Street Name`,`orange-parcel`.`Situs Street Type` AS `Situs Street Type`,`orange-parcel`.`City Code` AS `City Code`,`orange-parcel`.`Millage Code` AS `Millage Code`,`orange-parcel`.`Sale Date - Latest` AS `Sale Date - Latest`,`orange-parcel`.` Sale Price - Latest` AS `Sale Price - Latest`,`orange-parcel`.`Deed Type - Latest` AS `Deed Type - Latest`,`orange-parcel`.`Q/U Code - Latest` AS `Q/U Code - Latest`,`orange-parcel`.`I / V Code - Latest` AS `I / V Code - Latest`,`orange-parcel`.`Instrument Number - Latest` AS `Instrument Number - Latest`,`orange-parcel`.`Sale Date - Latest 1` AS `Sale Date - Latest 1`,`orange-parcel`.`Sale Price - Latest 1` AS `Sale Price - Latest 1`,`orange-parcel`.`Deed Type - Latest 1` AS `Deed Type - Latest 1`,`orange-parcel`.`Q/U Code - Latest 1` AS `Q/U Code - Latest 1`,`orange-parcel`.`I / V Code - Latest 1` AS `I / V Code - Latest 1`,`orange-parcel`.`Instrument Number - Latest 1` AS `Instrument Number - Latest 1`,`orange-parcel`.`Sale Date - Latest 2` AS `Sale Date - Latest 2`,`orange-parcel`.`Sale Price - Latest 2` AS `Sale Price - Latest 2`,`orange-parcel`.`Deed Type - Latest 2` AS `Deed Type - Latest 2`,`orange-parcel`.`Q/V Code - Latest 2` AS `Q/V Code - Latest 2`,`orange-parcel`.`I / V Code - Latest 2` AS `I / V Code - Latest 2`,`orange-parcel`.`Instrument Number - Latest 2` AS `Instrument Number - Latest 2`,`orange-parcel`.`Sale Date - Latest 3` AS `Sale Date - Latest 3`,`orange-parcel`.`Sale Price - Latest 3` AS `Sale Price - Latest 3`,`orange-parcel`.`Deed Type - Latest 3` AS `Deed Type - Latest 3`,`orange-parcel`.`Q/U Code - Latest 3` AS `Q/U Code - Latest 3`,`orange-parcel`.`I / V Code Latest 3` AS `I / V Code Latest 3`,`orange-parcel`.`Instrument Number - Latest 3` AS `Instrument Number - Latest 3`,`orange-parcel`.`Sale Date -  Latest 4` AS `Sale Date -  Latest 4`,`orange-parcel`.`Sale Price - Latest 4` AS `Sale Price - Latest 4`,`orange-parcel`.`Deed Type - Latest 4` AS `Deed Type - Latest 4`,`orange-parcel`.`Q/U Code - Latest 4` AS `Q/U Code - Latest 4`,`orange-parcel`.`I / V Code - Latest 4` AS `I / V Code - Latest 4`,`orange-parcel`.`Instrument Number - Latest 4` AS `Instrument Number - Latest 4`,`orange-parcel`.`Total Acreage in Parcel` AS `Total Acreage in Parcel`,`orange-parcel`.`Property Name` AS `Property Name`,`orange-parcel`.`Parcel Short Key` AS `Parcel Short Key`,`orange-parcel`.`Net Leasable Area` AS `Net Leasable Area`,`orange-parcel`.`Property Acct. #` AS `Property Acct. #`,`orange-parcel`.`Mortgage Co. ID #` AS `Mortgage Co. ID #`,`orange-parcel`.`Legal Description line 1` AS `Legal Description line 1`,`orange-parcel`.`Legal Description line 2` AS `Legal Description line 2`,`orange-parcel`.`Legal Description line 3` AS `Legal Description line 3`,`orange-parcel`.`Legal Description line 4` AS `Legal Description line 4`,`orange-parcel`.`Legal Description line 5` AS `Legal Description line 5`,`orange-parcel`.`Subdivision Name` AS `Subdivision Name`,`orange-parcel`.`Situs City` AS `Situs City`,`orange-parcel`.`Situs State` AS `Situs State`,`orange-parcel`.`Situs Zip` AS `Situs Zip`,replace(concat_ws(' ',trim(both '  ' from `orange-parcel`.`Situs Street Number`),trim(both '  ' from `orange-parcel`.`Situs Street Direction`),trim(both '  ' from `orange-parcel`.`Situs Street Name`),trim(both '  ' from `orange-parcel`.`Situs Street Type`)),'  ',' ') AS `site_street` from `orange-parcel` where ((`orange-parcel`.`Property Use Code` in ('100','101','102','103','104','105','106','130','131','135','140','150','194','195','196','197')) and (`orange-parcel`.`Sale Date - Latest` < '19900101') and (`orange-parcel`.`Just Value (Market Value)` < '150000') and (`orange-parcel`.`Exemp Code #1` <> 'HX') and (`orange-parcel`.`Exemp Code # 2` <> 'HX') and (`orange-parcel`.`Exemp Code # 3` <> 'HX') and (not(`orange-parcel`.`Parcel Number` in (select `orange-exclude`.`Parcel` from `orange-exclude`))) and (not((`orange-parcel`.`Owner 1` regexp '(trust|llc|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project)')))) having (`orange-parcel`.`Address 1` <> `site_street`);

-- --------------------------------------------------------

--
-- Structure for view `list-orange-qc-abs-sfr`
--
DROP TABLE IF EXISTS `list-orange-qc-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-orange-qc-abs-sfr` AS select `orange-parcel`.`Parcel Number` AS `Parcel Number`,`orange-parcel`.`Owner 1` AS `Owner 1`,`orange-parcel`.`Owner 2` AS `Owner 2`,`orange-parcel`.`Address 1` AS `Address 1`,`orange-parcel`.`Address 2` AS `Address 2`,`orange-parcel`.`Address 3` AS `Address 3`,`orange-parcel`.`Address 4` AS `Address 4`,`orange-parcel`.`City` AS `City`,`orange-parcel`.`State` AS `State`,`orange-parcel`.`Country` AS `Country`,`orange-parcel`.`Zip Code` AS `Zip Code`,`orange-parcel`.`Property Use Code` AS `Property Use Code`,`orange-parcel`.`Exemp Code #1` AS `Exemp Code #1`,`orange-parcel`.`Exemp Code # 2` AS `Exemp Code # 2`,`orange-parcel`.`Exemp Code # 3` AS `Exemp Code # 3`,`orange-parcel`.`Exemp Code # 4` AS `Exemp Code # 4`,`orange-parcel`.`Exemp Code #5` AS `Exemp Code #5`,`orange-parcel`.`Improve Code` AS `Improve Code`,`orange-parcel`.`Market Index` AS `Market Index`,`orange-parcel`.`Exterior Wall Code #1` AS `Exterior Wall Code #1`,`orange-parcel`.`Exterior Wall Code # 2` AS `Exterior Wall Code # 2`,`orange-parcel`.`Total Area (Sq. ft)` AS `Total Area (Sq. ft)`,`orange-parcel`.`Total CAMA Area (sq.ft.)` AS `Total CAMA Area (sq.ft.)`,`orange-parcel`.`Total # Bedroom` AS `Total # Bedroom`,`orange-parcel`.`Total # Bath` AS `Total # Bath`,`orange-parcel`.`Actual Year Built` AS `Actual Year Built`,`orange-parcel`.`Effective Year Built` AS `Effective Year Built`,`orange-parcel`.`Land Use Code` AS `Land Use Code`,`orange-parcel`.`Land Zoning Code` AS `Land Zoning Code`,`orange-parcel`.`Land Unit Type` AS `Land Unit Type`,`orange-parcel`.`Land Units` AS `Land Units`,`orange-parcel`.`Land Unit Price` AS `Land Unit Price`,`orange-parcel`.`Land Notes` AS `Land Notes`,`orange-parcel`.`Taxable Value` AS `Taxable Value`,`orange-parcel`.`Just Value (Market Value)` AS `Just Value (Market Value)`,`orange-parcel`.`Assessed Value (Save Our Homes)` AS `Assessed Value (Save Our Homes)`,`orange-parcel`.`Building Value` AS `Building Value`,`orange-parcel`.`Land Value` AS `Land Value`,`orange-parcel`.`Extra Feature Value` AS `Extra Feature Value`,`orange-parcel`.`AG Land Value` AS `AG Land Value`,`orange-parcel`.`Market Value of AG land` AS `Market Value of AG land`,`orange-parcel`.`Classified Value` AS `Classified Value`,`orange-parcel`.`Exemption Value` AS `Exemption Value`,`orange-parcel`.`Situs Street Number` AS `Situs Street Number`,`orange-parcel`.`Situs Street Direction` AS `Situs Street Direction`,`orange-parcel`.`Situs Street Name` AS `Situs Street Name`,`orange-parcel`.`Situs Street Type` AS `Situs Street Type`,`orange-parcel`.`City Code` AS `City Code`,`orange-parcel`.`Millage Code` AS `Millage Code`,`orange-parcel`.`Sale Date - Latest` AS `Sale Date - Latest`,`orange-parcel`.` Sale Price - Latest` AS `Sale Price - Latest`,`orange-parcel`.`Deed Type - Latest` AS `Deed Type - Latest`,`orange-parcel`.`Q/U Code - Latest` AS `Q/U Code - Latest`,`orange-parcel`.`I / V Code - Latest` AS `I / V Code - Latest`,`orange-parcel`.`Instrument Number - Latest` AS `Instrument Number - Latest`,`orange-parcel`.`Sale Date - Latest 1` AS `Sale Date - Latest 1`,`orange-parcel`.`Sale Price - Latest 1` AS `Sale Price - Latest 1`,`orange-parcel`.`Deed Type - Latest 1` AS `Deed Type - Latest 1`,`orange-parcel`.`Q/U Code - Latest 1` AS `Q/U Code - Latest 1`,`orange-parcel`.`I / V Code - Latest 1` AS `I / V Code - Latest 1`,`orange-parcel`.`Instrument Number - Latest 1` AS `Instrument Number - Latest 1`,`orange-parcel`.`Sale Date - Latest 2` AS `Sale Date - Latest 2`,`orange-parcel`.`Sale Price - Latest 2` AS `Sale Price - Latest 2`,`orange-parcel`.`Deed Type - Latest 2` AS `Deed Type - Latest 2`,`orange-parcel`.`Q/V Code - Latest 2` AS `Q/V Code - Latest 2`,`orange-parcel`.`I / V Code - Latest 2` AS `I / V Code - Latest 2`,`orange-parcel`.`Instrument Number - Latest 2` AS `Instrument Number - Latest 2`,`orange-parcel`.`Sale Date - Latest 3` AS `Sale Date - Latest 3`,`orange-parcel`.`Sale Price - Latest 3` AS `Sale Price - Latest 3`,`orange-parcel`.`Deed Type - Latest 3` AS `Deed Type - Latest 3`,`orange-parcel`.`Q/U Code - Latest 3` AS `Q/U Code - Latest 3`,`orange-parcel`.`I / V Code Latest 3` AS `I / V Code Latest 3`,`orange-parcel`.`Instrument Number - Latest 3` AS `Instrument Number - Latest 3`,`orange-parcel`.`Sale Date -  Latest 4` AS `Sale Date -  Latest 4`,`orange-parcel`.`Sale Price - Latest 4` AS `Sale Price - Latest 4`,`orange-parcel`.`Deed Type - Latest 4` AS `Deed Type - Latest 4`,`orange-parcel`.`Q/U Code - Latest 4` AS `Q/U Code - Latest 4`,`orange-parcel`.`I / V Code - Latest 4` AS `I / V Code - Latest 4`,`orange-parcel`.`Instrument Number - Latest 4` AS `Instrument Number - Latest 4`,`orange-parcel`.`Total Acreage in Parcel` AS `Total Acreage in Parcel`,`orange-parcel`.`Property Name` AS `Property Name`,`orange-parcel`.`Parcel Short Key` AS `Parcel Short Key`,`orange-parcel`.`Net Leasable Area` AS `Net Leasable Area`,`orange-parcel`.`Property Acct. #` AS `Property Acct. #`,`orange-parcel`.`Mortgage Co. ID #` AS `Mortgage Co. ID #`,`orange-parcel`.`Legal Description line 1` AS `Legal Description line 1`,`orange-parcel`.`Legal Description line 2` AS `Legal Description line 2`,`orange-parcel`.`Legal Description line 3` AS `Legal Description line 3`,`orange-parcel`.`Legal Description line 4` AS `Legal Description line 4`,`orange-parcel`.`Legal Description line 5` AS `Legal Description line 5`,`orange-parcel`.`Subdivision Name` AS `Subdivision Name`,`orange-parcel`.`Situs City` AS `Situs City`,`orange-parcel`.`Situs State` AS `Situs State`,`orange-parcel`.`Situs Zip` AS `Situs Zip`,replace(concat_ws(' ',trim(both '  ' from `orange-parcel`.`Situs Street Number`),trim(both '  ' from `orange-parcel`.`Situs Street Direction`),trim(both '  ' from `orange-parcel`.`Situs Street Name`),trim(both '  ' from `orange-parcel`.`Situs Street Type`)),'  ',' ') AS `site_street` from `orange-parcel` where ((`orange-parcel`.`Property Use Code` in ('100','101','102','103','104','105','106','130','131','135','140','150','194','195','196','197')) and (`orange-parcel`.`Deed Type - Latest` = 'QC') and (`orange-parcel`.`Sale Date - Latest` > '20110101') and (`orange-parcel`.` Sale Price - Latest` < '101') and (not(`orange-parcel`.`Parcel Number` in (select `orange-exclude`.`Parcel` from `orange-exclude`))) and (`orange-parcel`.`Exemp Code #1` <> 'HX') and (`orange-parcel`.`Exemp Code # 2` <> 'HX') and (`orange-parcel`.`Exemp Code # 3` <> 'HX') and (not((`orange-parcel`.`Owner 1` regexp '(trust|llc|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project)')))) having (`orange-parcel`.`Address 1` <> `site_street`);

-- --------------------------------------------------------

--
-- Structure for view `list-orange-taxdel-sfr`
--
DROP TABLE IF EXISTS `list-orange-taxdel-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-orange-taxdel-sfr` AS select `orange-tax_del`.`Cert Year` AS `Cert Year`,`orange-tax_del`.`Cert No` AS `Cert No`,`orange-tax_del`.`Cert Seq` AS `Cert Seq`,`orange-tax_del`.`Parcel No` AS `Parcel No`,`orange-tax_del`.`Tax Deed Year` AS `Tax Deed Year`,`orange-tax_del`.`Tax Deed No` AS `Tax Deed No`,`orange-tax_del`.`Tax Deed Seq` AS `Tax Deed Seq`,`orange-tax_del`.`Tax Deed Status` AS `Tax Deed Status`,`orange-tax_del`.`Tax Year` AS `Tax Year`,`orange-tax_del`.`Status Code` AS `Status Code`,`orange-tax_del`.`Mill Code` AS `Mill Code`,`orange-tax_del`.`City Code` AS `City Code`,`orange-tax_del`.`Installment Code` AS `Installment Code`,`orange-tax_del`.`Gross Taxes` AS `Gross Taxes`,`orange-tax_del`.`Certificate Face Value` AS `Certificate Face Value`,`orange-tax_del`.`Total Value` AS `Total Value`,`orange-tax_del`.`Exempt Value` AS `Exempt Value`,`orange-tax_del`.`Taxable Value` AS `Taxable Value`,`orange-tax_del`.`Owner1` AS `Owner1`,`orange-tax_del`.`Owner2` AS `Owner2`,`orange-tax_del`.`Owner3` AS `Owner3`,`orange-tax_del`.`Owner4` AS `Owner4`,`orange-tax_del`.`Owner5` AS `Owner5`,`orange-tax_del`.`MailingAddress1` AS `MailingAddress1`,`orange-tax_del`.`MailingAddress2` AS `MailingAddress2`,`orange-tax_del`.`MailingAddress3` AS `MailingAddress3`,`orange-tax_del`.`MailingAddress4` AS `MailingAddress4`,`orange-tax_del`.`MailingAddress5` AS `MailingAddress5`,`orange-tax_del`.`Legal Description` AS `Legal Description`,`orange-tax_del`.`Payoff Date` AS `Payoff Date`,`orange-tax_del`.`Payoff Amount Due` AS `Payoff Amount Due`,`orange-tax_del`.`Payoff Interest` AS `Payoff Interest`,`orange-tax_del`.`Payoff Amount Due Next Month` AS `Payoff Amount Due Next Month`,`orange-tax_del`.`Payoff Interest Next Month` AS `Payoff Interest Next Month`,`orange-tax_del`.`Payoff Interest Percentage` AS `Payoff Interest Percentage`,`orange-tax_del`.`Payment Date` AS `Payment Date`,`orange-tax_del`.`Payment Code` AS `Payment Code`,`orange-tax_del`.`Validation No` AS `Validation No`,`orange-tax_del`.`Bidder Number` AS `Bidder Number`,`orange-tax_del`.`Buyer Name1` AS `Buyer Name1`,`orange-tax_del`.`Buyer Name2` AS `Buyer Name2`,`orange-tax_del`.`Cert Issue Date` AS `Cert Issue Date`,`orange-tax_del`.`Cert Purchase Date` AS `Cert Purchase Date`,`orange-tax_del`.`Tax Deed Application Date` AS `Tax Deed Application Date`,`orange-tax_del`.`Tax Deed Redemption Date` AS `Tax Deed Redemption Date`,`orange-tax_del`.`Property Use Code` AS `Property Use Code`,`orange-tax_del`.`Situs Street Number` AS `Situs Street Number`,`orange-tax_del`.`Situs Street Direction` AS `Situs Street Direction`,`orange-tax_del`.`Situs Street Name` AS `Situs Street Name`,`orange-tax_del`.`Situs Street Type` AS `Situs Street Type`,`orange-tax_del`.`Situs Suite` AS `Situs Suite`,`orange-tax_del`.`Situs City` AS `Situs City`,`orange-tax_del`.`Situs ZipCode` AS `Situs ZipCode`,replace(trim(both '  ' from concat_ws(' ',`orange-tax_del`.`Situs Street Number`,`orange-tax_del`.`Situs Street Direction`,`orange-tax_del`.`Situs Street Name`,`orange-tax_del`.`Situs Street Type`,`orange-tax_del`.`Situs Suite`)),'  ',' ') AS `site_street` from `orange-tax_del` where ((`orange-tax_del`.`Status Code` = 'unpaid') and (not((`orange-tax_del`.`Owner1` regexp '(trust|llc|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project)'))) and (`orange-tax_del`.`Installment Code` <> 'y') and (`orange-tax_del`.`Tax Year` < '2015') and (`orange-tax_del`.`Payment Code` = '') and (not(`orange-tax_del`.`Parcel No` in (select `orange-exclude`.`Parcel` from `orange-exclude`))) and (`orange-tax_del`.`Property Use Code` in ('100','101','102','103','104','105','106'))) group by `orange-tax_del`.`Parcel No`;

-- --------------------------------------------------------

--
-- Structure for view `list-pinellas-pre1995-abs-sfr`
--
DROP TABLE IF EXISTS `list-pinellas-pre1995-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-pinellas-pre1995-abs-sfr` AS select `pinellas-recent_sales`.`formatted_parcel_number` AS `formatted_parcel_number`,`pinellas-recent_sales`.`official_book` AS `official_book`,`pinellas-recent_sales`.`official_page` AS `official_page`,`pinellas-recent_sales`.`parcel_number` AS `parcel_number`,`pinellas-recent_sales`.`sale_date` AS `sale_date`,`pinellas-recent_sales`.`sale_price` AS `sale_price`,`pinellas-recent_sales`.`sale_type` AS `sale_type`,`pinellas-recent_sales`.`legal` AS `legal`,`pinellas-recent_sales`.`doc_stamps` AS `doc_stamps`,`pinellas-recent_sales`.`buyer_name_1` AS `buyer_name_1`,`pinellas-recent_sales`.`buyer_name_2` AS `buyer_name_2`,`pinellas-recent_sales`.`mailing_attention` AS `mailing_attention`,`pinellas-recent_sales`.`mailing_address_1` AS `mailing_address_1`,`pinellas-recent_sales`.`mailing_address_2` AS `mailing_address_2`,`pinellas-recent_sales`.`mailing_city` AS `mailing_city`,`pinellas-recent_sales`.`mailing_state` AS `mailing_state`,`pinellas-recent_sales`.`mailing_country` AS `mailing_country`,`pinellas-recent_sales`.`mailing_zipcode` AS `mailing_zipcode`,`pinellas-recent_sales`.`seller_1` AS `seller_1`,`pinellas-recent_sales`.`seller_2` AS `seller_2`,`pinellas-recent_sales`.`property_use_code` AS `property_use_code`,`pinellas-recent_sales`.`qual_code` AS `qual_code`,`pinellas-recent_sales`.`reason_code` AS `reason_code`,`pinellas-recent_sales`.`tax_district` AS `tax_district`,`pinellas-recent_sales`.`str_num` AS `str_num`,`pinellas-recent_sales`.`str_unit` AS `str_unit`,`pinellas-recent_sales`.`str_pfx` AS `str_pfx`,`pinellas-recent_sales`.`str` AS `str`,`pinellas-recent_sales`.`str_sfx` AS `str_sfx`,`pinellas-recent_sales`.`str_sfx_dir` AS `str_sfx_dir`,`pinellas-recent_sales`.`site_city` AS `site_city`,`pinellas-recent_sales`.`site_zip` AS `site_zip`,`pinellas-recent_sales`.`site_street` AS `site_street` from (`pinellas-recent_sales` join `pinellas-exemptions` on((`pinellas-recent_sales`.`parcel_number` = `pinellas-exemptions`.`strap`))) where ((`pinellas-exemptions`.`homestead` = 'No') and (`pinellas-recent_sales`.`property_use_code` = '0110') and (`pinellas-recent_sales`.`sale_date` < '1995-01-01') and (not((`pinellas-recent_sales`.`buyer_name_1` regexp '(trust|llc|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project)'))) and (not(`pinellas-recent_sales`.`formatted_parcel_number` in (select `pinellas-exclude`.`Parcel` from `pinellas-exclude`)))) having (`pinellas-recent_sales`.`mailing_address_1` <> `pinellas-recent_sales`.`site_street`);

-- --------------------------------------------------------

--
-- Structure for view `list-pinellas-qc-abs-sfr`
--
DROP TABLE IF EXISTS `list-pinellas-qc-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-pinellas-qc-abs-sfr` AS select `pinellas-recent_sales`.`formatted_parcel_number` AS `formatted_parcel_number`,`pinellas-recent_sales`.`official_book` AS `official_book`,`pinellas-recent_sales`.`official_page` AS `official_page`,`pinellas-recent_sales`.`parcel_number` AS `parcel_number`,`pinellas-recent_sales`.`sale_date` AS `sale_date`,`pinellas-recent_sales`.`sale_price` AS `sale_price`,`pinellas-recent_sales`.`sale_type` AS `sale_type`,`pinellas-recent_sales`.`legal` AS `legal`,`pinellas-recent_sales`.`doc_stamps` AS `doc_stamps`,`pinellas-recent_sales`.`buyer_name_1` AS `buyer_name_1`,`pinellas-recent_sales`.`buyer_name_2` AS `buyer_name_2`,`pinellas-recent_sales`.`mailing_attention` AS `mailing_attention`,`pinellas-recent_sales`.`mailing_address_1` AS `mailing_address_1`,`pinellas-recent_sales`.`mailing_address_2` AS `mailing_address_2`,`pinellas-recent_sales`.`mailing_city` AS `mailing_city`,`pinellas-recent_sales`.`mailing_state` AS `mailing_state`,`pinellas-recent_sales`.`mailing_country` AS `mailing_country`,`pinellas-recent_sales`.`mailing_zipcode` AS `mailing_zipcode`,`pinellas-recent_sales`.`seller_1` AS `seller_1`,`pinellas-recent_sales`.`seller_2` AS `seller_2`,`pinellas-recent_sales`.`property_use_code` AS `property_use_code`,`pinellas-recent_sales`.`qual_code` AS `qual_code`,`pinellas-recent_sales`.`reason_code` AS `reason_code`,`pinellas-recent_sales`.`tax_district` AS `tax_district`,`pinellas-recent_sales`.`str_num` AS `str_num`,`pinellas-recent_sales`.`str_unit` AS `str_unit`,`pinellas-recent_sales`.`str_pfx` AS `str_pfx`,`pinellas-recent_sales`.`str` AS `str`,`pinellas-recent_sales`.`str_sfx` AS `str_sfx`,`pinellas-recent_sales`.`str_sfx_dir` AS `str_sfx_dir`,`pinellas-recent_sales`.`site_city` AS `site_city`,`pinellas-recent_sales`.`site_zip` AS `site_zip`,`pinellas-recent_sales`.`site_street` AS `site_street` from (`pinellas-recent_sales` join `pinellas-exemptions` on((`pinellas-recent_sales`.`parcel_number` = `pinellas-exemptions`.`strap`))) where ((`pinellas-exemptions`.`homestead` = 'No') and (`pinellas-recent_sales`.`sale_type` = 'QC') and (`pinellas-recent_sales`.`property_use_code` = '0110') and (`pinellas-recent_sales`.`sale_date` > '2011-01-01') and (`pinellas-recent_sales`.`sale_price` < '1000') and (not((`pinellas-recent_sales`.`buyer_name_1` regexp '(trust|llc|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project)'))) and (not(`pinellas-recent_sales`.`formatted_parcel_number` in (select `pinellas-exclude`.`Parcel` from `pinellas-exclude`)))) group by `pinellas-recent_sales`.`parcel_number` having (`pinellas-recent_sales`.`mailing_address_1` <> `pinellas-recent_sales`.`site_street`);

-- --------------------------------------------------------

--
-- Structure for view `list-polk-pre1990-abs-sfr`
--
DROP TABLE IF EXISTS `list-polk-pre1990-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-polk-pre1990-abs-sfr` AS select `o`.`NAME` AS `name`,`o`.`MAILTO` AS `mailto`,`o`.`ADDR_1` AS `addr_1`,`o`.`ADDR_2` AS `addr_2`,`o`.`ADDR_3` AS `addr_3`,`o`.`CITY` AS `city`,`o`.`STATE` AS `state`,`o`.`ZIP` AS `zip`,replace(concat_ws(' ',trim(both '  ' from `s`.`STR_NUM`),trim(both '  ' from `s`.`STR_PFX`),trim(both '  ' from `s`.`STR`),trim(both '  ' from `s`.`STR_SFX`),trim(both '  ' from `s`.`STR_SFX_DIR`)),'  ',' ') AS `site_street`,`p`.`PARCEL_ID` AS `PARCEL_ID`,`p`.`SECTION` AS `SECTION`,`p`.`TOWNSHIP` AS `TOWNSHIP`,`p`.`RANGE` AS `RANGE`,`p`.`SUB` AS `SUB`,`p`.`PARCEL` AS `PARCEL`,`p`.`DORUS_CODE` AS `DORUS_CODE`,`p`.`DORDESC` AS `DORDESC`,`p`.`DORDESC1` AS `DORDESC1`,`p`.`NH_CD` AS `NH_CD`,`p`.`NH_DSCR` AS `NH_DSCR`,`p`.`HOMESTEAD` AS `HOMESTEAD`,`p`.`WIDOWEX` AS `WIDOWEX`,`p`.`DISEX` AS `DISEX`,`p`.`VETERANS` AS `VETERANS`,`p`.`OTHEREX` AS `OTHEREX`,`p`.`EXCODE` AS `EXCODE`,`p`.`EXDESC` AS `EXDESC`,`p`.`PORT_VAL` AS `PORT_VAL`,`p`.`CLS_LND_VAL` AS `CLS_LND_VAL`,`p`.`AG_CLASS` AS `AG_CLASS`,`p`.`VALUETYPE` AS `VALUETYPE`,`p`.`VALUEDESC` AS `VALUEDESC`,`p`.`TOT_LND_VAL` AS `TOT_LND_VAL`,`p`.`TOT_BLD_VAL` AS `TOT_BLD_VAL`,`p`.`TOT_XF_VAL` AS `TOT_XF_VAL`,`p`.`TOTALVAL` AS `TOTALVAL`,`p`.`RECONCILE` AS `RECONCILE`,`p`.`ASSESSVAL` AS `ASSESSVAL`,`p`.`TAXVAL` AS `TAXVAL`,`p`.`CURTAXDIST` AS `CURTAXDIST`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`AMTDUE` AS `AMTDUE`,`p`.`MILLRATE` AS `MILLRATE`,`p`.`YR_CREATED` AS `YR_CREATED`,`p`.`YR_IMPROVED` AS `YR_IMPROVED`,`p`.`LAST_INSP_DT` AS `LAST_INSP_DT`,`p`.`TOT_ACREAGE` AS `TOT_ACREAGE` from (((`polk-parcel` `p` join `polk-owner` `o` on((`p`.`PARCEL_ID` = `o`.`PARCEL_ID`))) join `polk-site` `s` on((`p`.`PARCEL_ID` = `s`.`PARCEL_ID`))) join `polk-recent_sales` `rs` on((`p`.`PARCEL_ID` = `rs`.`PARCEL_ID`))) where ((not((`o`.`NAME` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (not(`p`.`PARCEL_ID` in (select `polk-exclude`.`Parcel` from `polk-exclude`))) and (`p`.`HOMESTEAD` = '') and (`p`.`DORUS_CODE` = '100') and (`rs`.`SALEDT` < '1990-01-01') and (`p`.`ASSESSVAL` < 150000)) group by `o`.`ADDR_1` having (`o`.`ADDR_1` <> `site_street`);

-- --------------------------------------------------------

--
-- Structure for view `list-polk-qc-abs-sfr`
--
DROP TABLE IF EXISTS `list-polk-qc-abs-sfr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `list-polk-qc-abs-sfr` AS select `o`.`NAME` AS `name`,`o`.`MAILTO` AS `mailto`,`o`.`ADDR_1` AS `addr_1`,`o`.`ADDR_2` AS `addr_2`,`o`.`ADDR_3` AS `addr_3`,`o`.`CITY` AS `city`,`o`.`STATE` AS `state`,`o`.`ZIP` AS `zip`,replace(concat_ws(' ',trim(both '  ' from `s`.`STR_NUM`),trim(both '  ' from `s`.`STR_PFX`),trim(both '  ' from `s`.`STR`),trim(both '  ' from `s`.`STR_SFX`),trim(both '  ' from `s`.`STR_SFX_DIR`)),'  ',' ') AS `site_street`,`p`.`PARCEL_ID` AS `PARCEL_ID`,`p`.`SECTION` AS `SECTION`,`p`.`TOWNSHIP` AS `TOWNSHIP`,`p`.`RANGE` AS `RANGE`,`p`.`SUB` AS `SUB`,`p`.`PARCEL` AS `PARCEL`,`p`.`DORUS_CODE` AS `DORUS_CODE`,`p`.`DORDESC` AS `DORDESC`,`p`.`DORDESC1` AS `DORDESC1`,`p`.`NH_CD` AS `NH_CD`,`p`.`NH_DSCR` AS `NH_DSCR`,`p`.`HOMESTEAD` AS `HOMESTEAD`,`p`.`WIDOWEX` AS `WIDOWEX`,`p`.`DISEX` AS `DISEX`,`p`.`VETERANS` AS `VETERANS`,`p`.`OTHEREX` AS `OTHEREX`,`p`.`EXCODE` AS `EXCODE`,`p`.`EXDESC` AS `EXDESC`,`p`.`PORT_VAL` AS `PORT_VAL`,`p`.`CLS_LND_VAL` AS `CLS_LND_VAL`,`p`.`AG_CLASS` AS `AG_CLASS`,`p`.`VALUETYPE` AS `VALUETYPE`,`p`.`VALUEDESC` AS `VALUEDESC`,`p`.`TOT_LND_VAL` AS `TOT_LND_VAL`,`p`.`TOT_BLD_VAL` AS `TOT_BLD_VAL`,`p`.`TOT_XF_VAL` AS `TOT_XF_VAL`,`p`.`TOTALVAL` AS `TOTALVAL`,`p`.`RECONCILE` AS `RECONCILE`,`p`.`ASSESSVAL` AS `ASSESSVAL`,`p`.`TAXVAL` AS `TAXVAL`,`p`.`CURTAXDIST` AS `CURTAXDIST`,`p`.`TAXDIST` AS `TAXDIST`,`p`.`AMTDUE` AS `AMTDUE`,`p`.`MILLRATE` AS `MILLRATE`,`p`.`YR_CREATED` AS `YR_CREATED`,`p`.`YR_IMPROVED` AS `YR_IMPROVED`,`p`.`LAST_INSP_DT` AS `LAST_INSP_DT`,`p`.`TOT_ACREAGE` AS `TOT_ACREAGE` from (((`polk-parcel` `p` join `polk-owner` `o` on((`p`.`PARCEL_ID` = `o`.`PARCEL_ID`))) join `polk-site` `s` on((`p`.`PARCEL_ID` = `s`.`PARCEL_ID`))) join `polk-recent_sales` `rs` on((`p`.`PARCEL_ID` = `rs`.`PARCEL_ID`))) where ((not((`o`.`NAME` regexp '(trust|llc|l.l.c.|lp|inc|investment|corp|CONFIDENTIAL|county|assn|association|bank|development|estate|property|company|group|mortgage|ltd|assoc|city|tampa|xia|chang|transportation|church|properties|property|realty|fund|investment|group|asset|national|methodist|mortg|god|loan|service|contractor|financing|limited|marital|fund|rental|project|apartment|florida|partnership|senior living|nursing|multifamily|home|village|MHP|Companies)'))) and (`p`.`HOMESTEAD` = '') and (not(`p`.`PARCEL_ID` in (select `polk-exclude`.`Parcel` from `polk-exclude`))) and (`p`.`DORUS_CODE` = '100') and (`rs`.`SALEDT` > '2011-01-01') and (`rs`.`TRNS_CD` = 'Q')) group by `o`.`ADDR_1` having (`o`.`ADDR_1` <> `site_street`);

-- --------------------------------------------------------

--
-- Structure for view `pinellas-recent_sales`
--
DROP TABLE IF EXISTS `pinellas-recent_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `pinellas-recent_sales` AS select `p1`.`formatted_parcel_number` AS `formatted_parcel_number`,`p1`.`official_book` AS `official_book`,`p1`.`official_page` AS `official_page`,`p1`.`parcel_number` AS `parcel_number`,`p1`.`sale_date` AS `sale_date`,`p1`.`sale_price` AS `sale_price`,`p1`.`sale_type` AS `sale_type`,`p1`.`legal` AS `legal`,`p1`.`doc_stamps` AS `doc_stamps`,`p1`.`buyer_name_1` AS `buyer_name_1`,`p1`.`buyer_name_2` AS `buyer_name_2`,`p1`.`mailing_attention` AS `mailing_attention`,`p1`.`mailing_address_1` AS `mailing_address_1`,`p1`.`mailing_address_2` AS `mailing_address_2`,`p1`.`mailing_city` AS `mailing_city`,`p1`.`mailing_state` AS `mailing_state`,`p1`.`mailing_country` AS `mailing_country`,`p1`.`mailing_zipcode` AS `mailing_zipcode`,`p1`.`seller_1` AS `seller_1`,`p1`.`seller_2` AS `seller_2`,`p1`.`property_use_code` AS `property_use_code`,`p1`.`qual_code` AS `qual_code`,`p1`.`reason_code` AS `reason_code`,`p1`.`tax_district` AS `tax_district`,`p1`.`str_num` AS `str_num`,`p1`.`str_unit` AS `str_unit`,`p1`.`str_pfx` AS `str_pfx`,`p1`.`str` AS `str`,`p1`.`str_sfx` AS `str_sfx`,`p1`.`str_sfx_dir` AS `str_sfx_dir`,`p1`.`site_city` AS `site_city`,`p1`.`site_zip` AS `site_zip`,replace(trim(both '  ' from concat_ws(' ',`p1`.`str_num`,`p1`.`str_pfx`,`p1`.`str`,`p1`.`str_sfx`,`p1`.`str_sfx_dir`)),'  ',' ') AS `site_street` from `pinellas-allsales` `p1` where (`p1`.`sale_date` = (select max(`p2`.`sale_date`) from `pinellas-allsales` `p2` where (`p1`.`parcel_number` = `p2`.`parcel_number`) group by `p2`.`parcel_number`));

-- --------------------------------------------------------

--
-- Structure for view `polk-recent_sales`
--
DROP TABLE IF EXISTS `polk-recent_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `polk-recent_sales` AS select `polk-sales`.`PARCEL_ID` AS `PARCEL_ID`,`polk-sales`.`SALE_ID` AS `SALE_ID`,`polk-sales`.`LN_NUM` AS `LN_NUM`,`polk-sales`.`SALEDT` AS `SALEDT`,`polk-sales`.`PRICE` AS `PRICE`,`polk-sales`.`BOOK` AS `BOOK`,`polk-sales`.`PAGE` AS `PAGE`,`polk-sales`.`SALETYPE` AS `SALETYPE`,`polk-sales`.`TRNS_CD` AS `TRNS_CD`,`polk-sales`.`TRNS_DSCR` AS `TRNS_DSCR`,`polk-sales`.`INSTRTYP` AS `INSTRTYP`,`polk-sales`.`INSTRTYP_DSCR` AS `INSTRTYP_DSCR`,`polk-sales`.`GRANTOR` AS `GRANTOR`,`polk-sales`.`GRANTEE` AS `GRANTEE`,`polk-sales`.`FORECLOSURE` AS `FORECLOSURE` from `polk-sales` where (`polk-sales`.`LN_NUM` = '1');

-- --------------------------------------------------------

--
-- Structure for view `recent_sales`
--
DROP TABLE IF EXISTS `recent_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`waleed`@`%` SQL SECURITY DEFINER VIEW `recent_sales` AS select `allsales`.`PIN` AS `PIN`,`allsales`.`FOLIO` AS `FOLIO`,`allsales`.`DOR_CODE` AS `DOR_CODE`,`allsales`.`NBHC` AS `NBHC`,`allsales`.`S_DATE` AS `S_DATE`,`allsales`.`VI` AS `VI`,`allsales`.`QU` AS `QU`,`allsales`.`REA_CD` AS `REA_CD`,`allsales`.`S_AMT` AS `S_AMT`,`allsales`.`SUB` AS `SUB`,`allsales`.`STR` AS `STR`,`allsales`.`S_TYPE` AS `S_TYPE`,`allsales`.`OR_BK` AS `OR_BK`,`allsales`.`OR_PG` AS `OR_PG`,`allsales`.`GRANTOR` AS `GRANTOR`,`allsales`.`GRANTEE` AS `GRANTEE`,max(`allsales`.`S_DATE`) AS `RECENT_DATE` from `allsales` group by `allsales`.`FOLIO`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
