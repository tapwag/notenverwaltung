-- MySQL dump 10.15  Distrib 10.0.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Schulprogramm
-- ------------------------------------------------------
-- Server version	10.0.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Schulprogramm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Schulprogramm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `Schulprogramm`;

--
-- Table structure for table `absences`
--

DROP TABLE IF EXISTS `absences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absences` (
  `student_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`student_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absences`
--

LOCK TABLES `absences` WRITE;
/*!40000 ALTER TABLE `absences` DISABLE KEYS */;
INSERT INTO `absences` VALUES (7,'2014-08-29'),(8,'2014-08-27');
/*!40000 ALTER TABLE `absences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `name` varchar(30) NOT NULL,
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `student_id` int(10) unsigned NOT NULL,
  `test_id` int(10) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`test_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES (1,1,15),(2,1,15),(3,1,14),(4,1,15),(5,1,14),(6,1,13),(7,1,13),(8,1,14),(9,1,15),(10,1,15),(1,2,14),(2,2,14),(3,2,14),(4,2,14),(5,2,13),(6,2,13),(7,2,13),(9,2,13),(10,2,13),(1,3,28),(2,3,26),(3,3,26),(4,3,25),(5,3,26),(6,3,24),(7,3,25),(8,3,26),(9,3,28),(10,3,26),(1,4,29),(2,4,28),(3,4,26),(4,4,27),(5,4,27),(6,4,26),(7,4,27),(8,4,23),(9,4,27),(10,4,27),(1,5,15),(2,5,14),(3,5,13),(4,5,15),(5,5,13),(6,5,13),(7,5,13),(8,5,12),(9,5,14),(10,5,12),(1,6,27),(2,6,26),(3,6,26),(4,6,27),(5,6,27),(6,6,26),(8,6,24),(9,6,27),(10,6,22);
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` char(2) NOT NULL DEFAULT 'PA',
  `zip` mediumint(8) unsigned NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `sex` enum('M','F') NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lunch_cost` float DEFAULT NULL,
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('Dale','Cooper','dcooper@aol.com','123 Main St.','Yakima','WA',98901,'-8332','1959-02-22','M','2016-07-24 13:22:07',3.5,1),('Harry','Truman','htruman@aol.com','202 South St','Vancouver','WA',98660,'792-223-9810','1946-01-24','M','2016-07-24 13:29:27',3.5,2),('Shelly','Johnson','sjohnson@aol.com','9 Pond Rd','Sparks','NV',89431,'792-223-6734','1970-12-12','F','2016-07-24 13:29:27',3.5,3),('Bobby','Briggs','bbriggs@aol.com','14 12th St','San Diego','CA',92101,'792-223-6178','1967-05-24','M','2016-07-24 13:29:27',3.5,4),('Donna','Hayward','dhayward@aol.com','120 16th St','Davenport','IA',52801,'792-223-2001','1970-03-24','F','2016-07-24 13:29:27',3.5,5),('Audrey','Horne','ahorne@aol.com','342 19th St','Detroit','MI',48222,'792-223-2001','1965-02-01','F','2016-07-24 13:29:27',3.5,6),('James','Hurley','jhurley@aol.com','2578 Cliff St','Queens','NY',11427,'792-223-1890','1967-01-02','M','2016-07-24 13:29:27',3.5,7),('Lucy','Moran','lmoran@aol.com','178 Dover St','Hollywood','CA',90078,'792-223-9678','1954-11-27','F','2016-07-24 13:29:27',3.5,8),('Tommy','Hill','thill@aol.com','672 High Plains','Tucson','AZ',85701,'792-223-1115','1951-12-21','M','2016-07-24 13:29:27',3.5,9),('Andy','Brennan','abrennan@aol.com','281 4th St','Jacksonville','NC',28540,'792-223-8902','1960-12-27','M','2016-07-24 13:29:27',3.5,10);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `date` date NOT NULL,
  `type` enum('T','Q') NOT NULL,
  `maxscore` int(11) NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `test_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES ('2014-08-25','Q',15,1,1),('2014-08-27','Q',15,1,2),('2014-08-29','T',30,1,3),('2014-08-29','T',30,2,4),('2014-08-27','Q',15,4,5),('2014-08-29','T',30,4,6);
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-24 16:57:28
