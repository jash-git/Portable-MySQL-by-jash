-- MySQL dump 10.13  Distrib 5.7.18, for Win32 (AMD64)
--
-- Host: localhost    Database: v8_workstation
-- ------------------------------------------------------
-- Server version	5.1.44-community

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
-- Table structure for table `apb_door`
--

DROP TABLE IF EXISTS `apb_door`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apb_door` (
  `apb_group_id` int(11) NOT NULL,
  `door_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apb_door`
--

LOCK TABLES `apb_door` WRITE;
/*!40000 ALTER TABLE `apb_door` DISABLE KEYS */;
INSERT INTO `apb_door` VALUES (10,1,1);
/*!40000 ALTER TABLE `apb_door` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apb_group`
--

DROP TABLE IF EXISTS `apb_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apb_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apb_group`
--

LOCK TABLES `apb_group` WRITE;
/*!40000 ALTER TABLE `apb_group` DISABLE KEYS */;
INSERT INTO `apb_group` VALUES (9,'apb_group_02',2,1,'2017-07-19',1),(8,'apb_group_01',1,1,'2017-07-19',1),(10,'apb_group_03',1,1,'2017-07-20',1);
/*!40000 ALTER TABLE `apb_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apb_group_extend`
--

DROP TABLE IF EXISTS `apb_group_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apb_group_extend` (
  `apb_group_id` int(11) NOT NULL,
  `reset_time_1` time NOT NULL DEFAULT '00:00:00',
  `reset_time_2` time NOT NULL DEFAULT '00:00:00',
  `reset_time_3` time NOT NULL DEFAULT '00:00:00',
  `reset_time_4` time NOT NULL DEFAULT '00:00:00',
  `reset_time_5` time NOT NULL DEFAULT '00:00:00',
  `reset_time_6` time NOT NULL DEFAULT '00:00:00',
  `reset_time_7` time NOT NULL DEFAULT '00:00:00',
  `reset_time_8` time NOT NULL DEFAULT '00:00:00',
  `state` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apb_group_extend`
--

LOCK TABLES `apb_group_extend` WRITE;
/*!40000 ALTER TABLE `apb_group_extend` DISABLE KEYS */;
INSERT INTO `apb_group_extend` VALUES (8,'23:00:00','00:00:00','00:00:00','00:00:00','01:00:00','00:00:00','00:00:00','00:00:00',1),(9,'01:00:00','02:00:00','00:00:00','00:00:00','23:00:00','22:00:00','00:00:00','00:00:00',1),(10,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00',1);
/*!40000 ALTER TABLE `apb_group_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT '0',
  `descript` text,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'區域01',-1,NULL,1),(2,'01_A',1,NULL,1),(8,'區域02',-1,NULL,1),(4,'01_B',1,NULL,1),(9,'02_A',8,NULL,1),(11,'02_B',8,NULL,1),(12,'區域03',-1,NULL,1);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_detail`
--

DROP TABLE IF EXISTS `area_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_detail` (
  `area_id` int(11) NOT NULL,
  `door_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_detail`
--

LOCK TABLES `area_detail` WRITE;
/*!40000 ALTER TABLE `area_detail` DISABLE KEYS */;
INSERT INTO `area_detail` VALUES (2,1,1),(12,3,1),(12,2,1),(12,1,1),(4,14,1),(9,4,1),(9,3,1),(9,2,1),(11,15,1),(11,16,1),(11,17,1),(11,18,1),(12,4,1),(12,14,1),(12,15,1),(12,16,1),(12,17,1),(12,18,1);
/*!40000 ALTER TABLE `area_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization`
--

DROP TABLE IF EXISTS `authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `action` int(11) NOT NULL,
  `group_id_for_doors` int(11) DEFAULT NULL,
  `group_id_for_users` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `door_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorization`
--

LOCK TABLES `authorization` WRITE;
/*!40000 ALTER TABLE `authorization` DISABLE KEYS */;
/*!40000 ALTER TABLE `authorization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias_name` varchar(255) DEFAULT NULL,
  `pic` longtext,
  `administrator_name` varchar(255) DEFAULT NULL,
  `administrator_tel` varchar(255) DEFAULT NULL,
  `m_liter` int(11) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `factory_date` date DEFAULT NULL,
  `put_up_date` date DEFAULT NULL,
  `break_up_date` date DEFAULT NULL,
  `asset_no` varchar(255) DEFAULT NULL,
  `licence` varchar(255) DEFAULT NULL,
  `parking_space_no` varchar(255) DEFAULT NULL,
  `take_care_tel` varchar(255) DEFAULT NULL,
  `take_care_mobile` varchar(255) DEFAULT NULL,
  `take_care_address` varchar(255) DEFAULT NULL,
  `note` text,
  `status` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(255) NOT NULL,
  `display` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `pin` varchar(255) NOT NULL DEFAULT 'FFFFFFFFFFFFFFFF',
  `type` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '1',
  `block` int(11) NOT NULL DEFAULT '0',
  `vip` int(11) NOT NULL DEFAULT '0',
  `apb_enable` int(11) NOT NULL DEFAULT '1',
  `apb_mode` int(11) NOT NULL DEFAULT '0',
  `available_date_start` date NOT NULL,
  `available_date_end` date NOT NULL,
  `week_plan` varchar(255) NOT NULL DEFAULT '11111111',
  `access_time_1_start` time NOT NULL DEFAULT '00:00:00',
  `access_time_1_end` time NOT NULL DEFAULT '23:59:00',
  `access_time_2_start` time NOT NULL DEFAULT '00:00:00',
  `access_time_2_end` time NOT NULL DEFAULT '00:00:00',
  `access_time_3_start` time NOT NULL DEFAULT '00:00:00',
  `access_time_3_end` time NOT NULL DEFAULT '00:00:00',
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_for_user_car`
--

DROP TABLE IF EXISTS `card_for_user_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_for_user_car` (
  `card_id` int(11) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  UNIQUE KEY `card_id` (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_for_user_car`
--

LOCK TABLES `card_for_user_car` WRITE;
/*!40000 ALTER TABLE `card_for_user_car` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_for_user_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_type`
--

DROP TABLE IF EXISTS `card_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_type` (
  `type_id` varchar(255) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  UNIQUE KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_type`
--

LOCK TABLES `card_type` WRITE;
/*!40000 ALTER TABLE `card_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller`
--

DROP TABLE IF EXISTS `controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `pic` longtext,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller`
--

LOCK TABLES `controller` WRITE;
/*!40000 ALTER TABLE `controller` DISABLE KEYS */;
INSERT INTO `controller` VALUES (1,111111111,1541,'test_01','01F',NULL,1),(2,222222222,35106,'test_02','12F',NULL,1),(3,333333333,1541,'test_03','03F',NULL,1),(4,444444444,35106,'test_04','04F',NULL,1);
/*!40000 ALTER TABLE `controller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller_dm`
--

DROP TABLE IF EXISTS `controller_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_dm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `connetction_enabled` int(11) DEFAULT NULL,
  `connetction_mode` int(11) DEFAULT NULL,
  `connetction_address` int(11) DEFAULT NULL,
  `ab_door_enabled` int(11) DEFAULT NULL,
  `ab_door_level` int(11) DEFAULT NULL,
  `ab_door_timeout_second` int(11) DEFAULT NULL,
  `ab_door_reset_time_second` int(11) DEFAULT NULL,
  `apb_enabled` int(11) DEFAULT NULL,
  `apb_mode` int(11) DEFAULT NULL,
  `apb_group` int(11) DEFAULT NULL,
  `apb_level_list` text,
  `apb_reset_timestamp_list` text,
  `holiday_of_months_field_flags` text,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_dm`
--

LOCK TABLES `controller_dm` WRITE;
/*!40000 ALTER TABLE `controller_dm` DISABLE KEYS */;
/*!40000 ALTER TABLE `controller_dm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller_extend`
--

DROP TABLE IF EXISTS `controller_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_extend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_sn` int(11) NOT NULL,
  `connetction_address` varchar(255) DEFAULT NULL,
  `connetction_enabled` int(11) DEFAULT NULL,
  `connetction_mode` int(11) DEFAULT NULL,
  `apb_enable` int(11) DEFAULT NULL,
  `apb_mode` int(11) DEFAULT NULL,
  `apb_group` int(11) DEFAULT NULL,
  `apb_level_list` text,
  `apb_reset_timestamp_list` text,
  `ab_door_enabled` int(11) DEFAULT NULL,
  `ab_door_level` int(11) DEFAULT NULL,
  `ab_door_timeout_second` int(11) DEFAULT NULL,
  `ab_door_reset_time_second` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_extend`
--

LOCK TABLES `controller_extend` WRITE;
/*!40000 ALTER TABLE `controller_extend` DISABLE KEYS */;
INSERT INTO `controller_extend` VALUES (1,111111111,'192.168.1.101',1,0,1,1,0,'0','0',0,0,0,0,1),(2,222222222,'192.168.1.112',1,0,1,1,0,'0','0',0,0,0,0,1),(3,333333333,'192.168.1.103',1,0,1,2,0,'0','0',0,0,0,0,1),(4,444444444,'192.168.1.104',1,0,1,2,0,'0','0',0,0,0,0,1);
/*!40000 ALTER TABLE `controller_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `descript` text,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_detail`
--

DROP TABLE IF EXISTS `department_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_detail` (
  `dep_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_detail`
--

LOCK TABLES `department_detail` WRITE;
/*!40000 ALTER TABLE `department_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `door`
--

DROP TABLE IF EXISTS `door`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `door` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `controller_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `door`
--

LOCK TABLES `door` WRITE;
/*!40000 ALTER TABLE `door` DISABLE KEYS */;
INSERT INTO `door` VALUES (1,'入口',111111111,1),(2,'辦公',222222222,1),(3,'產線',222222222,1),(4,'茶水間',222222222,1),(5,'',222222222,1),(6,'',222222222,1),(7,'',222222222,1),(8,'',222222222,1),(9,'',222222222,1),(10,'',222222222,1),(11,'',222222222,1),(12,'',222222222,1),(13,'',222222222,1),(14,'test_03_d1',333333333,1),(15,'test_04_d1',444444444,1),(16,'test_04_d2',444444444,1),(17,'test_04_d3',444444444,1),(18,'test_04_d4',444444444,1),(19,'',444444444,1),(20,'',444444444,1),(21,'',444444444,1),(22,'',444444444,1),(23,'',444444444,1),(24,'',444444444,1),(25,'',444444444,1),(26,'',444444444,1);
/*!40000 ALTER TABLE `door` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `door_extend`
--

DROP TABLE IF EXISTS `door_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `door_extend` (
  `door_id` int(11) NOT NULL,
  `base` text,
  `pass` text,
  `open` text,
  `anti_de` text,
  `detect` text,
  `button` text,
  `anti_co` text,
  `overtime` text,
  `violent` text,
  `pass_mode` text,
  `auto_mode` text,
  `apb_group_id` int(11) NOT NULL DEFAULT '-1',
  `apb_used` int(11) NOT NULL DEFAULT '0',
  `state` int(11) DEFAULT NULL,
  `apb_level` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `door_extend`
--

LOCK TABLES `door_extend` WRITE;
/*!40000 ALTER TABLE `door_extend` DISABLE KEYS */;
INSERT INTO `door_extend` VALUES (1,',0,1','1,0,0,0,0-0-0,1-2','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','1-1,1-1,1-1,1-1,1,1,255,00:00~23:59,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',10,1,1,1),(2,',0,1','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1),(3,',0,1','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1),(4,',0,1','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1),(14,',0,0','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1),(15,',0,0','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1),(16,',0,0','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1),(17,',0,0','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1),(18,',0,0','0,0,0,0,0-0-0,0-0','0,0,0,0','0,0,0,0','0,0,0,0','0,0,0,0,0',',0,0,0,0,1','0,1,0,0,0,1,1','0,0,0,1,1','0-0,0-0,0-0,0-0,0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00','0,0,0,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00,00:00~00:00',-1,0,1,1);
/*!40000 ALTER TABLE `door_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `door_group`
--

DROP TABLE IF EXISTS `door_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `door_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `param_enable` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `available_date_start` datetime DEFAULT NULL,
  `available_date_end` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `door_group`
--

LOCK TABLES `door_group` WRITE;
/*!40000 ALTER TABLE `door_group` DISABLE KEYS */;
INSERT INTO `door_group` VALUES (1,'door_group_test01',1,1,3,'2017-07-10 00:00:00','2017-07-10 00:00:00',1),(2,'door_group_test02',1,0,0,'2017-07-11 00:00:00','2017-07-11 00:00:00',1),(9,'door_group_test03',1,1,3,'2017-07-13 00:00:00','2017-08-01 23:59:00',1),(10,'door_group_test04',1,0,-1,'2017-07-17 09:31:00','2017-07-17 09:31:00',1);
/*!40000 ALTER TABLE `door_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `door_group_detail`
--

DROP TABLE IF EXISTS `door_group_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `door_group_detail` (
  `door_group_id` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `door_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `door_group_detail`
--

LOCK TABLES `door_group_detail` WRITE;
/*!40000 ALTER TABLE `door_group_detail` DISABLE KEYS */;
INSERT INTO `door_group_detail` VALUES (1,2,1,0,1),(1,2,4,0,1),(2,2,2,0,1),(9,9,2,0,1),(9,9,4,0,1),(2,2,3,0,1);
/*!40000 ALTER TABLE `door_group_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `door_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `controller_id` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
INSERT INTO `holiday` VALUES (15,'小廖生日','1981-05-02',1,0,1),(14,'勞動','1981-05-01',1,0,1),(13,'元旦','1981-01-01',1,0,1);
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `model` int(11) DEFAULT NULL,
  `model_name` text,
  `apb` int(11) DEFAULT NULL,
  `door_number` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1541,'SYSR86N-L1',1,1,1),(1542,'SYSR86N-H1',1,1,1),(1543,'SYSR86N-LBX1',1,1,1),(1544,'SYSR86N-HBX1',1,1,1),(1558,'SYTR86N-H1',1,1,1),(1560,'SYTR86N-HBX1',1,1,1),(1574,'SYFR86N-H1',1,1,1),(1576,'SYFR86N-HBX1',1,1,1),(1585,'SYXT86N-1',1,1,1),(1606,'SYKD86N-H1',1,1,1),(1608,'SYKD86N-HBX1',1,1,1),(1618,'SYUR03N-HBXU1',1,1,1),(1620,'SYUR03N-U1',1,1,1),(1622,'SYUR03N-BXU1',1,1,1),(1638,'SYKD2N-H1',1,1,1),(1640,'SYKD2N-HBX1',1,1,1),(1654,'SYFD2N-H1',1,1,1),(1656,'SYFD2N-HBX1',1,1,1),(1670,'SYUR86N-U1',1,1,1),(1672,'SYUR86N-HU1',1,1,1),(1674,'SYUR86N-HBXU1',1,1,1),(1734,'SYTD2N-U1',1,1,1),(1736,'SYTD2N-HU1',1,1,1),(1738,'SYTD2N-HBXU1',1,1,1),(35073,'SY832-B-PV8',1,12,1),(35074,'SY832-B-SV8',1,12,1),(35089,'SY832-A-PV8',1,12,1),(35090,'SY832-A-SV8',1,12,1),(35105,'SY832-U-PV8',1,12,1),(35106,'SY832-U-SV8',1,12,1);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config`
--

DROP TABLE IF EXISTS `system_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config`
--

LOCK TABLES `system_config` WRITE;
/*!40000 ALTER TABLE `system_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `employee_date` date DEFAULT NULL,
  `unemployee_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias_name` varchar(255) DEFAULT NULL,
  `pic` longtext,
  `gender` int(11) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `emp_no` varchar(255) DEFAULT NULL,
  `security_id` varchar(255) DEFAULT NULL,
  `passport_id` varchar(255) DEFAULT NULL,
  `office_tel` varchar(255) DEFAULT NULL,
  `home_tel` varchar(255) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `family_address` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `emergency_contactor` varchar(255) DEFAULT NULL,
  `emergency_tel` varchar(255) DEFAULT NULL,
  `note` text NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `param_enable` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `available_date_start` date DEFAULT NULL,
  `available_date_end` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-22 21:04:50
