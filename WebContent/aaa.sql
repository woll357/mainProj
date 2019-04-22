-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: green_sc
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `air_com`
--

DROP TABLE IF EXISTS `air_com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `air_com` (
  `no` int(11) NOT NULL,
  `air_code` text,
  `id` text,
  `crn` text,
  `img` text,
  `air_name` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_com`
--

LOCK TABLES `air_com` WRITE;
/*!40000 ALTER TABLE `air_com` DISABLE KEYS */;
INSERT INTO `air_com` VALUES (1000,'항공사코드','아아디','사업자등록번호','이미지','항공사명');
/*!40000 ALTER TABLE `air_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `air_item`
--

DROP TABLE IF EXISTS `air_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `air_item` (
  `no` int(11) NOT NULL,
  `ddate` datetime DEFAULT NULL,
  `darea` text,
  `carea` text,
  `img` text,
  `air_code` text,
  `ap_Code` text,
  `cCode` text,
  `money` int(11) DEFAULT NULL,
  `a_time` text,
  `seatcnt` text,
  `flightclass` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_item`
--

LOCK TABLES `air_item` WRITE;
/*!40000 ALTER TABLE `air_item` DISABLE KEYS */;
INSERT INTO `air_item` VALUES (1000,'2019-05-05 00:00:00','가느날지역','도착날 지역','이미지','항공사코드','비행기코드','상품코드',1111,'도착시간','11','좌석등급');
/*!40000 ALTER TABLE `air_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `air_temp`
--

DROP TABLE IF EXISTS `air_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `air_temp` (
  `no` int(11) NOT NULL,
  `id` text,
  `crn` text,
  `img` text,
  `air_name` text,
  `grade` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_temp`
--

LOCK TABLES `air_temp` WRITE;
/*!40000 ALTER TABLE `air_temp` DISABLE KEYS */;
INSERT INTO `air_temp` VALUES (1000,'아아디','사업자등록번호','이미지','항공사명','요청회원등급');
/*!40000 ALTER TABLE `air_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `basket` (
  `basketID` int(11) NOT NULL AUTO_INCREMENT,
  `cCode` text,
  `id` text,
  `psn` int(11) DEFAULT NULL,
  PRIMARY KEY (`basketID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basketitem`
--

DROP TABLE IF EXISTS `basketitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `basketitem` (
  `basketItemCode` int(11) NOT NULL AUTO_INCREMENT,
  `cCode` text,
  `basketID` int(11) DEFAULT NULL,
  `ddate` datetime DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  PRIMARY KEY (`basketItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basketitem`
--

LOCK TABLES `basketitem` WRITE;
/*!40000 ALTER TABLE `basketitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `basketitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buy` (
  `bCode` int(11) NOT NULL AUTO_INCREMENT,
  `cCname` text,
  `startDate` date DEFAULT NULL,
  `buyDate` date DEFAULT NULL,
  `id` text,
  `totalPrice` int(11) DEFAULT NULL,
  `bstatus` text,
  `pCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`bCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dere`
--

DROP TABLE IF EXISTS `dere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dere` (
  `cCode` text,
  `request` tinyint(1) DEFAULT NULL,
  `id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dere`
--

LOCK TABLES `dere` WRITE;
/*!40000 ALTER TABLE `dere` DISABLE KEYS */;
/*!40000 ALTER TABLE `dere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnq`
--

DROP TABLE IF EXISTS `fnq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fnq` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `id` text,
  `content` text,
  `head` text,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnq`
--

LOCK TABLES `fnq` WRITE;
/*!40000 ALTER TABLE `fnq` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot_com`
--

DROP TABLE IF EXISTS `hot_com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hot_com` (
  `no` int(11) NOT NULL,
  `id` text,
  `crn` text,
  `himg` text,
  `hname` text,
  `hnation` text,
  `harea` text,
  `hinfo` text,
  `grade` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_com`
--

LOCK TABLES `hot_com` WRITE;
/*!40000 ALTER TABLE `hot_com` DISABLE KEYS */;
/*!40000 ALTER TABLE `hot_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot_temp`
--

DROP TABLE IF EXISTS `hot_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hot_temp` (
  `no` int(11) NOT NULL,
  `id` text,
  `crn` text,
  `himg` text,
  `hname` text,
  `hnation` text,
  `harea` text,
  `hinfo` text,
  `grade` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_temp`
--

LOCK TABLES `hot_temp` WRITE;
/*!40000 ALTER TABLE `hot_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `hot_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationinfo`
--

DROP TABLE IF EXISTS `locationinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `locationinfo` (
  `locationNo` int(11) NOT NULL AUTO_INCREMENT,
  `country` text,
  `city` text,
  `leadtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`locationNo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationinfo`
--

LOCK TABLES `locationinfo` WRITE;
/*!40000 ALTER TABLE `locationinfo` DISABLE KEYS */;
INSERT INTO `locationinfo` VALUES (1,'일본','도쿄',125),(2,'일본','오사카',95),(3,'중국','상해',110),(4,'중국','베이징',120),(5,'필리핀','마닐라',240),(6,'필리핀','보라카이',240),(7,'태국','세부',265),(8,'태국','푸켓',375);
/*!40000 ALTER TABLE `locationinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `id` text,
  `bnum` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `grade` text,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_temp`
--

DROP TABLE IF EXISTS `manager_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager_temp` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` text,
  `bnum` int(11) DEFAULT NULL,
  `grade` text,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_temp`
--

LOCK TABLES `manager_temp` WRITE;
/*!40000 ALTER TABLE `manager_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `grade` text,
  `id` text,
  `pw` text,
  `pname` text,
  `pnum` text,
  `email` text,
  `phone` text,
  `black` tinyint(1) DEFAULT NULL,
  `preason` text,
  `emg` tinyint(1) DEFAULT NULL,
  `county` text,
  `city` text,
  `addDetail` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notice` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `id` text,
  `content` text,
  `head` text,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `pCode` int(11) NOT NULL AUTO_INCREMENT,
  `cComeName` text,
  `cNum` text,
  `cvc` text,
  `cPw` text,
  `exDate` date DEFAULT NULL,
  PRIMARY KEY (`pCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qna` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `id` text,
  `content` text,
  `head` text,
  `email` text,
  `img` text,
  `grage` text,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_item`
--

DROP TABLE IF EXISTS `room_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_item` (
  `no` int(11) NOT NULL,
  `rkind` text,
  `rcnt` int(11) DEFAULT NULL,
  `rescnt` int(11) DEFAULT NULL,
  `pcnt` int(11) DEFAULT NULL,
  `rimg` text,
  `hcode` text,
  `rcode` text,
  `cCode` text,
  `rdate` datetime DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `wifi` tinyint(1) DEFAULT NULL,
  `morining` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_item`
--

LOCK TABLES `room_item` WRITE;
/*!40000 ALTER TABLE `room_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelerinfo`
--

DROP TABLE IF EXISTS `travelerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `travelerinfo` (
  `travelerCode` int(11) NOT NULL AUTO_INCREMENT,
  `passport` text,
  `id` text,
  `mainEngLastName` text,
  `mainEngFirstName` text,
  `pname` text,
  `birthDate` date DEFAULT NULL,
  `cEngLame` text,
  `cEngFirstName` text,
  `cKorName` text,
  `cph` text,
  `cemail` text,
  PRIMARY KEY (`travelerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelerinfo`
--

LOCK TABLES `travelerinfo` WRITE;
/*!40000 ALTER TABLE `travelerinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `travelerinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22 11:19:58
