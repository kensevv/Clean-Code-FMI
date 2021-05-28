-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: car_rental_management_system
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `accountscol_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `FK_ACC_EMPL` (`employee_id`),
  CONSTRAINT `FK_ACC_EMPL` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `manager_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientemployee`
--

DROP TABLE IF EXISTS `clientemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientemployee` (
  `ID` int NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `CK_CLEMP_VALID_BDAY` CHECK ((`birthday` > _utf8mb4'1990-01-01')),
  CONSTRAINT `CK_CLEMP_VALID_ID` CHECK ((length(`ID`) = 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ID` char(10) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `birthday` date NOT NULL,
  `driver_lic` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `CK_CL_VALID_BDAY` CHECK ((`birthday` > _utf8mb4'1990-01-01')),
  CONSTRAINT `CK_CL_VALID_ID` CHECK ((length(`ID`) = 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deals`
--

DROP TABLE IF EXISTS `deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deals` (
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `client_id` varchar(50) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `vehicle_licPlate` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  PRIMARY KEY (`client_id`,`employee_id`,`vehicle_licPlate`,`branch_name`,`start_date`),
  KEY `FK_DEALS_EMPLOYEEID` (`employee_id`),
  KEY `FK_DEALS_VEHLIC` (`vehicle_licPlate`),
  KEY `FK_DEALS_BRANCHNAME` (`branch_name`),
  CONSTRAINT `FK_DEALS_BRANCHNAME` FOREIGN KEY (`branch_name`) REFERENCES `branches` (`name`),
  CONSTRAINT `FK_DEALS_CLIENTID` FOREIGN KEY (`client_id`) REFERENCES `clients` (`ID`),
  CONSTRAINT `FK_DEALS_EMPLOYEEID` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`ID`),
  CONSTRAINT `FK_DEALS_VEHLIC` FOREIGN KEY (`vehicle_licPlate`) REFERENCES `vehicles` (`license_plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `ID` varchar(50) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `birthday` date NOT NULL,
  `work_number` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `manager_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BRANCHNAME_BRANCH` (`branch_name`),
  KEY `FK_MANAGERID_EMPLOYEE` (`manager_id`),
  CONSTRAINT `FK_BRANCHNAME_BRANCH` FOREIGN KEY (`branch_name`) REFERENCES `branches` (`name`),
  CONSTRAINT `FK_MANAGERID_EMPLOYEE` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`ID`),
  CONSTRAINT `CK_EMP_VALID_BDAY` CHECK ((`birthday` > _utf8mb4'1990-01-01')),
  CONSTRAINT `CK_EMP_VALID_ID` CHECK ((length(`ID`) = 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requires`
--

DROP TABLE IF EXISTS `requires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requires` (
  `rdate` date NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `max_price` double DEFAULT NULL,
  PRIMARY KEY (`rdate`,`client_id`,`branch_name`),
  KEY `FK_REQUIRES_CLIENTID` (`client_id`),
  KEY `FK_REQUIRES_BRANCHNAME` (`branch_name`),
  CONSTRAINT `FK_REQUIRES_BRANCHNAME` FOREIGN KEY (`branch_name`) REFERENCES `branches` (`name`),
  CONSTRAINT `FK_REQUIRES_CLIENTID` FOREIGN KEY (`client_id`) REFERENCES `clients` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `license_plate` varchar(10) NOT NULL,
  `model` varchar(50) NOT NULL,
  `is_available` int DEFAULT '1',
  `mileage` int DEFAULT '0',
  `insurance` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  PRIMARY KEY (`license_plate`),
  KEY `FK_BRANCHNAME_BRANCHES` (`branch_name`),
  CONSTRAINT `FK_BRANCHNAME_BRANCHES` FOREIGN KEY (`branch_name`) REFERENCES `branches` (`name`),
  CONSTRAINT `CK_VEH_AVAILABLE` CHECK (((`is_available` = 0) or (`is_available` = 1))),
  CONSTRAINT `CK_VEH_MILEAGE` CHECK ((`mileage` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-28 12:09:10
