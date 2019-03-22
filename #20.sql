-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: well
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `build` varchar(6) NOT NULL,
  `house` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Глазов','Кирова','15',2),(2,'Глазов','Мира','7',58),(3,'Глазов','Парковая','15/84',4),(4,'Глазов','Спортивная','84/86',48),(24,'Лос-Сантос','Грув','25/84',4),(25,'Глазов','Кирова','48/85',45),(26,'Киров','Ленина','48/85',45),(27,'ad','asd','465',51),(28,'Орел','Луиз','47',45),(29,'Москва','Ленина','458',568),(30,'Глазов','Советская','36',1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adpp`
--

DROP TABLE IF EXISTS `adpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adpp` (
  `id_add` int(11) NOT NULL,
  `id_pp` int(11) NOT NULL,
  PRIMARY KEY (`id_add`,`id_pp`),
  KEY `FK_people_idx` (`id_pp`),
  CONSTRAINT `FK_add` FOREIGN KEY (`id_add`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_people` FOREIGN KEY (`id_pp`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adpp`
--

LOCK TABLES `adpp` WRITE;
/*!40000 ALTER TABLE `adpp` DISABLE KEYS */;
INSERT INTO `adpp` VALUES (4,1),(2,2),(4,2),(1,3),(28,3),(3,4),(1,5),(26,5),(24,6),(25,13),(29,13),(30,19);
/*!40000 ALTER TABLE `adpp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dcp`
--

DROP TABLE IF EXISTS `dcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dcp` (
  `id_doc` int(11) NOT NULL,
  `id_pass` int(11) NOT NULL,
  PRIMARY KEY (`id_doc`,`id_pass`),
  KEY `FK_pass_idx` (`id_pass`),
  CONSTRAINT `FK_doc` FOREIGN KEY (`id_doc`) REFERENCES `docs` (`id`),
  CONSTRAINT `FK_pass` FOREIGN KEY (`id_pass`) REFERENCES `passport` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dcp`
--

LOCK TABLES `dcp` WRITE;
/*!40000 ALTER TABLE `dcp` DISABLE KEYS */;
INSERT INTO `dcp` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(46,6),(50,7),(2,8),(5,9),(3,11),(1,12),(46,13),(52,14);
/*!40000 ALTER TABLE `dcp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inn` varchar(12) NOT NULL,
  `bank` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
INSERT INTO `docs` VALUES (1,'012345678912','012345678912345678'),(2,'012345678923','012356789452315648'),(3,'012346845235','354886354795203035'),(4,'046134878620','213597888888896542'),(5,'999999999999','999999999999999999'),(6,'888844448888','158475658452555559'),(7,'843415365413','634536413161146565'),(42,'468513985475','468513985475489657'),(43,'354685845364','868465865346854348'),(44,'468313985475','468513935475489657'),(45,'411313985475','468513135475489657'),(46,'411313385475','468513133475489657'),(47,'411314385475','468513133474489657'),(48,'999999666666','999999999666666666'),(49,'351464531468','361453148653146864'),(50,'684518648568','865864515613248651'),(51,'123525235235','123523597980960235'),(52,'777777777999','777777777777777999');
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `end_work` date NOT NULL,
  `exp` int(2) NOT NULL,
  `exp_list` int(2) DEFAULT NULL,
  `shop` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'1998-01-01',45,15,90),(2,'1990-05-08',35,13,80),(3,'2001-09-30',36,10,10),(4,'2001-09-30',38,5,90),(5,'2005-08-09',36,15,90),(6,'2012-06-25',15,6,90),(39,'2019-05-06',45,85,56),(40,'1998-01-01',45,15,90),(42,'2019-01-01',96,96,96),(43,'2019-03-15',45,45,90),(44,'2019-03-15',48,15,12),(45,'2009-11-13',34,32,80),(46,'2019-03-19',79,79,90);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `main` (
  `snils` varchar(11) NOT NULL,
  `job` int(11) NOT NULL,
  `addpp` int(11) NOT NULL,
  `docs` int(11) NOT NULL,
  `numb` int(8) DEFAULT NULL,
  PRIMARY KEY (`snils`),
  UNIQUE KEY `addpp_UNIQUE` (`addpp`),
  UNIQUE KEY `docs_UNIQUE` (`docs`),
  UNIQUE KEY `numb_UNIQUE` (`numb`),
  KEY `FK_peopl_idx` (`addpp`),
  KEY `FK_docs_idx` (`docs`),
  KEY `FK_job_idx` (`job`),
  CONSTRAINT `FK_docs` FOREIGN KEY (`docs`) REFERENCES `docs` (`id`),
  CONSTRAINT `FK_job` FOREIGN KEY (`job`) REFERENCES `job` (`id`),
  CONSTRAINT `FK_peopl` FOREIGN KEY (`addpp`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES ('01234567891',1,1,1,NULL),('01234569874',2,2,2,NULL),('41331398547',39,13,46,85336958),('41331498547',39,14,47,84336958),('41831398547',39,12,45,85136958),('44235252352',45,18,51,21349807),('45604860940',4,4,4,NULL),('45685123050',3,3,3,NULL),('46815665143',40,10,43,NULL),('46831398547',39,11,44,NULL),('46845541686',44,17,50,54684568),('46851398547',39,9,42,NULL),('55555847569',6,8,6,NULL),('64364161651',43,16,49,35146535),('66840840686',5,5,5,NULL),('77777777999',46,19,52,77777999),('99999666666',42,15,48,99996666);
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `passport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` int(4) NOT NULL,
  `numb` int(6) NOT NULL,
  `date` date NOT NULL,
  `org` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
INSERT INTO `passport` VALUES (1,4895,564585,'2012-09-25','МО УФМС РФ ПО УР в г.Глазове'),(2,4856,456895,'2010-10-31','МО УФМС РФ ПО УР в г.Глазове'),(3,5085,462311,'2005-08-01','МО УФМС РФ ПО УР в г.Глазове'),(4,2569,468547,'2009-07-12','МО УФМС РФ ПО УР в г.Глазове'),(5,4863,123645,'2001-01-01','МО УФМС РФ ПО УР в г.Глазове'),(6,4856,548963,'2013-06-30','МО УФМС РОССИИ по УР в г.Глазове'),(7,4859,456845,'2019-03-15','МО УФМС РФ'),(8,4858,458745,'2019-03-29','МО УФМС РФ по УР в г.Глазове'),(9,7548,485948,'2019-03-15','МО УФМС РОССИИ по УР'),(10,4856,485648,'2019-03-15','651'),(11,8547,489568,'2019-03-15','Отсутствует'),(12,4856,485658,'2019-03-15','Очень длинное название для провверки ввода организации и проверки колонки'),(13,4856,458954,'2019-03-17','МО УФМС РФ'),(14,5896,651235,'2019-03-19','МО УФМС');
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `cname` varchar(25) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stat_idx` (`status`),
  CONSTRAINT `FK_stat` FOREIGN KEY (`status`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Иван','Иванов','Иванович','1999-05-27',1),(2,'Петр','Карнишов','Сергеевич','1999-09-07',3),(3,'Игорь','Игольченко','Вахтинович','1963-12-05',4),(4,'Артур','Еревансий - Армянский','Нихтович','1990-08-15',2),(5,'Константин','Колич','Феодосеевич','1985-09-08',3),(6,'Си','Доджи','От','1945-05-10',4),(7,'Николай','Гошивечи','Карентник','1948-06-30',1),(8,'Артур','Пирожков','Александрович','1975-05-24',NULL),(9,'Антонио','Перуарти','Миконно','1985-02-15',NULL),(10,'Буду','Работать','Сейчас','1999-05-27',NULL),(11,'Антонио','Перуарти','Миконно','1985-02-15',NULL),(12,'Антонио','Перуарти','Миконно','1985-02-15',NULL),(13,'Антонио','Перуарти','Миконно','1985-02-15',18),(14,'Джорджио','Волин','Алионно','1985-02-15',NULL),(15,'Ин','Аржи','Регарин','2000-01-01',NULL),(16,'Ильнур','Ларин','Каминович','1988-12-27',NULL),(17,'Гамаз','Качинбеговв','Валиров','1985-12-30',NULL),(18,'Нульзияр','Вахитов','Абахович','1945-07-19',22),(19,'Ярослав','Ка','Оринович','1990-01-30',23);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phone` (
  `numb` varchar(12) NOT NULL,
  PRIMARY KEY (`numb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES ('+75821564878'),('+79582514515'),('+79584586595'),('+79828234645'),('+79854864545'),('+9999999999'),('01234569874'),('465-595-594'),('4856845'),('58945'),('79828238603'),('79828238645'),('84564'),('89955948794');
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php`
--

DROP TABLE IF EXISTS `php`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `php` (
  `id_phone` varchar(12) NOT NULL,
  `id_pp` int(11) NOT NULL,
  PRIMARY KEY (`id_phone`,`id_pp`),
  KEY `FK_peop_idx` (`id_pp`),
  CONSTRAINT `FK_peop` FOREIGN KEY (`id_pp`) REFERENCES `people` (`id`),
  CONSTRAINT `FK_phon` FOREIGN KEY (`id_phone`) REFERENCES `phone` (`numb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php`
--

LOCK TABLES `php` WRITE;
/*!40000 ALTER TABLE `php` DISABLE KEYS */;
INSERT INTO `php` VALUES ('+75821564878',1),('+79854864545',1),('84564',1),('89955948794',1),('+75821564878',2),('465-595-594',3),('4856845',3),('+79854864545',4),('58945',4),('+79582514515',5),('58945',5),('+79828234645',13),('+9999999999',13),('79828238603',13),('79828238645',13),('+79584586595',19);
/*!40000 ALTER TABLE `php` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disability` int(1) DEFAULT NULL,
  `vvtf` tinyint(1) DEFAULT NULL,
  `vettr` tinyint(1) DEFAULT NULL,
  `stat` varchar(50) DEFAULT NULL,
  `order` varchar(50) DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL,
  `prof_soyuz` tinyint(1) DEFAULT NULL,
  `agreement` tinyint(1) DEFAULT NULL,
  `prim` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,NULL,1,0,'Почетный','км/58.15-ОП','5+5',1,1,'Случайный текст для проверки написанный в ручную без применения спец устройств для протсого текстирования'),(2,3,0,1,NULL,NULL,NULL,0,0,NULL),(3,1,1,1,'Почетный','ар/48','Через',1,1,'Монтеростиконтирование вориторанивания приротинадикованиятикотичо'),(4,NULL,NULL,NULL,NULL,NULL,'Пост.',NULL,NULL,NULL),(5,NULL,1,0,'Почет','5.255 Кф-пр/жк','5 + 5',0,0,''),(17,1,0,0,'Почетный','ар/48','Через',0,1,'Монтеростиконтирование вориторанивания приротинадикованиятикотичо'),(18,2,0,0,'Почетный','ар/48','Через',0,1,'Монтеростиконтирование вориторанивания приротинадикованиятикотичо'),(19,3,1,0,'Отсутствует','1488/1337','5+5',0,1,'Монтеростиконтирование вориторанивания приротинадикованиятикотичо'),(20,1,1,0,'Отсутствует','1488/1337','5+5',0,1,'Монтеростиконтирование вориторанивания приротинадикованиятикотичо'),(21,2,1,0,'Отсутствует','1488/1337','5+5',0,1,'Монтеростиконтирование вориторанивания приротинадикованиятикотичо'),(22,0,1,0,'Отсутствует','1488/1337','5+5',0,1,'Монтеростиконтирование вориторанивания приротинадикованиятикотичо'),(23,0,1,1,'Почетный','5/5РФ.к','5+5',0,1,'Текст для проверки ');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `адрес`
--

DROP TABLE IF EXISTS `адрес`;
/*!50001 DROP VIEW IF EXISTS `адрес`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `адрес` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `отчество`,
 1 AS `Город`,
 1 AS `Улица`,
 1 AS `Дом`,
 1 AS `Квартира`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `все`
--

DROP TABLE IF EXISTS `все`;
/*!50001 DROP VIEW IF EXISTS `все`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `все` AS SELECT 
 1 AS `fname`,
 1 AS `lname`,
 1 AS `cname`,
 1 AS `birthday`,
 1 AS `snils`,
 1 AS `inn`,
 1 AS `bank`,
 1 AS `numb`,
 1 AS `shop`,
 1 AS `exp`,
 1 AS `exp_list`,
 1 AS `end_work`,
 1 AS `stat`,
 1 AS `order`,
 1 AS `disability`,
 1 AS `pay`,
 1 AS `vvtf`,
 1 AS `vettr`,
 1 AS `prof_soyuz`,
 1 AS `agreement`,
 1 AS `prim`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `документы`
--

DROP TABLE IF EXISTS `документы`;
/*!50001 DROP VIEW IF EXISTS `документы`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `документы` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `отчество`,
 1 AS `ИНН`,
 1 AS `Номер банковского счета`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `паспорт`
--

DROP TABLE IF EXISTS `паспорт`;
/*!50001 DROP VIEW IF EXISTS `паспорт`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `паспорт` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `отчество`,
 1 AS `Серия`,
 1 AS `Номер`,
 1 AS `Дата выдачи`,
 1 AS `Выдавшая организация`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `работа`
--

DROP TABLE IF EXISTS `работа`;
/*!50001 DROP VIEW IF EXISTS `работа`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `работа` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `отчество`,
 1 AS `Трудовой номер`,
 1 AS `Дата выхода на пенсию`,
 1 AS `Стаж`,
 1 AS `Стаж по списку`,
 1 AS `Цех`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `снилс`
--

DROP TABLE IF EXISTS `снилс`;
/*!50001 DROP VIEW IF EXISTS `снилс`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `снилс` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `отчество`,
 1 AS `СНИЛС`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `статус`
--

DROP TABLE IF EXISTS `статус`;
/*!50001 DROP VIEW IF EXISTS `статус`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `статус` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `отчество`,
 1 AS `Группа инвалидности`,
 1 AS `ВВ и ТФ`,
 1 AS `Ветеран труда`,
 1 AS `Статус`,
 1 AS `Приказ по списку`,
 1 AS `Период выплат`,
 1 AS `Член профсоюза`,
 1 AS `Согласие`,
 1 AS `Примечание`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `телефоны`
--

DROP TABLE IF EXISTS `телефоны`;
/*!50001 DROP VIEW IF EXISTS `телефоны`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `телефоны` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `отчество`,
 1 AS `Номер телефона`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `человек`
--

DROP TABLE IF EXISTS `человек`;
/*!50001 DROP VIEW IF EXISTS `человек`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `человек` AS SELECT 
 1 AS `Фамилия`,
 1 AS `Имя`,
 1 AS `Отчество`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'well'
--

--
-- Dumping routines for database 'well'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `add_add`(snils varchar(11), c varchar(50), s varchar(50), b varchar(6), h int(3))
BEGIN
#address chek--------------------------------------------------------------------------------------------------------------------------------------------------------------
    IF
		(SELECT EXISTS (SELECT `address`.`id` FROM `address` WHERE `address`.`city` = c and `address`.`street` = s and `address`.`build` = b and `address`.`house` = h) = 0)
    THEN
		INSERT INTO address (`city`, `street`, `build`, `house`) VALUES (c, s, b, h);
    END IF;
#get id-----------------------------------------------------------------------------------------------------------------------------------------------------------        
    SET @id_p = (SELECT `people`.`id` FROM `main`, `people` WHERE `main`.`snils` = snils AND `people`.`id` = `main`.`addpp`);    
    SET @id_a = (SELECT `address`.`id` FROM `address` WHERE `address`.`city` = c and `address`.`street` = s and `address`.`build` = b and `address`.`house` = h);
#insert-----------------------------------------------------------------------------------------------------------------------------------------------------------------        
    INSERT INTO adpp (`id_add`, `id_pp`) VALUE (@id_a, @id_p); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_main` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `add_main`(fn varchar(25), ln varchar(25), cn varchar(25), bd date, sn varchar(11), i varchar(12), b varchar(18), ew date, e int(2), el int(2), s int(2), n int(8))
BEGIN
IF
		(SELECT EXISTS (SELECT `main`.`snils` FROM `main` WHERE `main`.`snils` = sn) = 0)
THEN
#job chek--------------------------------------------------------------------------------------------------------------------------------------------------------------
	IF
		(SELECT EXISTS (SELECT `job`.`id` FROM `job` WHERE `job`.`end_work` = ew and `job`.`exp` = e and `job`.`exp_list` = el and `job`.`shop` = s) = 0)
    THEN
		INSERT INTO job (`end_work`, `exp`, `exp_list`, `shop`) VALUES (ew, e, el, s);
    END IF;
#docs chek---------------------------------------------------------------------------------------------------------------------------------------------------
    IF 
		(SELECT EXISTS (SELECT `docs`.`id` FROM `docs` WHERE `docs`.`inn` = i and `docs`.`bank` = b) = 0)
    THEN
		INSERT INTO docs (`inn`, `bank`) VALUE (i, b);
    END IF;
#id job dock--------------------------------------------------------------------------------------------------------------------------------------------------------------    
	SET @id_j = (SELECT `job`.`id` FROM `job` WHERE `job`.`end_work` = ew and `job`.`exp` = e and `job`.`exp_list` = el and `job`.`shop` = s);
    SET @id_d = (SELECT `docs`.`id` FROM `docs` WHERE `docs`.`inn` = i and `docs`.`bank` = b);    
#people chek---------------------------------------------------------------------------------------------------------------------------------------------------
		INSERT INTO `people` (`fname`, `lname`, `cname`, `birthday`) VALUE (fn, ln, cn, bd);    
		SET @id_p = (SELECT LAST_INSERT_ID());               
		INSERT INTO `main` (`snils`, `job`, `addpp`, `docs`, `numb`) VALUE (sn, @id_j, @id_p, @id_d, n);
    END IF;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `add_pass`(i varchar(12), b varchar(18), s int(4), n int(6), d date, o varchar(100))
BEGIN
#passport chek--------------------------------------------------------------------------------------------------------------------------------------------------------------
    IF
		(SELECT EXISTS (SELECT `passport`.`id` FROM `passport` WHERE `passport`.`serial` = s and `passport`.`numb` = n and `passport`.`date` = d and `passport`.`org` = o) = 0)
    THEN
		INSERT INTO passport (`serial`, `numb`, `date`, `org`) VALUES (s, n, d, o);
        #get id-----------------------------------------------------------------------------------------------------------------------------------------------------------
    SET @id_d = (SELECT `docs`.`id` FROM `docs` WHERE `docs`.`inn` = i and `docs`.`bank` = b);
    SET @id_p = (SELECT `passport`.`id` FROM `passport` WHERE `passport`.`serial` = s and `passport`.`numb` = n and `passport`.`date` = d and `passport`.`org` = o);
#insert-----------------------------------------------------------------------------------------------------------------------------------------------------------------
    INSERT INTO dcp (`id_doc`, `id_pass`) VALUE (@id_d, @id_p);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_phone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `add_phone`(n varchar(12), snils varchar(11))
BEGIN   
	#phone chek--------------------------------------------------------------------------------------------------------------------------------------------------------------
    IF
		(SELECT EXISTS (SELECT `phone`.`numb` FROM `phone` WHERE `phone`.`numb` = n) = 0)
    THEN
		INSERT INTO phone (`numb`) VALUES (n);
    END IF;
    #get id-----------------------------------------------------------------------------------------------------------------------------------------------------------    
    SET @id_p = (SELECT `people`.`id` FROM `main`, `people` WHERE `main`.`snils` = snils AND `people`.`id` = `main`.`addpp`);
    SET @id_ph = (SELECT `phone`.`numb` FROM `phone` WHERE `phone`.`numb` = n);
    #insert-----------------------------------------------------------------------------------------------------------------------------------------------------------------
    INSERT INTO php (`id_phone`, `id_pp`) VALUE (@id_ph, @id_p); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_stat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `add_stat`(snils varchar(11),dy int(1), vf tinyint(1), vr tinyint(1), st varchar(50), ord varchar (50), py varchar(50), pz tinyint(1), agr tinyint(1), pm mediumtext)
BEGIN               
#IF dy = '-'
#THEN SET @p_dy = NULL;
#ELSEIF dy = '1'
#THEN SET @p_dy = 1;
#ELSEIF dy = '2'
#THEN SET @p_dy = 2;
#ELSEIF dy = '3'
#THEN SET @p_dy = 3;
#END IF; 
#status chek--------------------------------------------------------------------------------------------------------------------------------------------------------------
    IF
		(SELECT EXISTS (SELECT `status`.`id` FROM `status` 
        WHERE `status`.`disability` = dy AND `status`.`vvtf` = vf AND `status`.`vettr` = vr AND `status`.`stat` = st AND `status`.`order` = ord AND `status`.`pay` = py AND `status`.`prof_soyuz` = pz AND `status`.`agreement` = agr AND `status`.`Prim` = pm) = 0)
    THEN
		INSERT INTO `status` (`disability`, `vvtf`, `vettr`, `stat`, `order`, `pay`, `prof_soyuz`, `agreement`, `Prim`) VALUES (dy, vf, vr, st, ord, py, pz, agr, pm);
    END IF;
#get id-----------------------------------------------------------------------------------------------------------------------------------------------------------        
    SET @id_p = (SELECT `people`.`id` FROM `main`, `people` WHERE `main`.`snils` = snils AND `people`.`id` = `main`.`addpp`);        
    SET @id_s = (SELECT `status`.`id` FROM `status`
    WHERE `status`.`disability` = dy AND `status`.`vvtf` = vf AND `status`.`vettr` = vr AND `status`.`stat` = st AND `status`.`order` = ord AND `status`.`pay` = py AND `status`.`prof_soyuz` = pz AND `status`.`agreement` = agr AND `status`.`Prim` = pm);
#insert-----------------------------------------------------------------------------------------------------------------------------------------------------------------        
    UPDATE `well`.`people` SET `status` = @id_s WHERE `id` = @id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `view_add`(snils varchar(11))
BEGIN
#SET @id_p = (SELECT `people`.`id` FROM `people` WHERE `people`.`fname` = fn and `people`.`lname` = ln and `people`.`cname` = cn);
SET @id_p = (SELECT `people`.`id` FROM `main`, `people` WHERE `main`.`snils` = snils AND `people`.`id` = `main`.`addpp`);
	SELECT         
        `address`.`city` AS `Город`,
        `address`.`street` AS `Улица`,
        `address`.`build` AS `Дом`,
        `address`.`house` AS `Квартира`
    FROM
        `address`,
        `people`,
        `adpp`
    WHERE
        `adpp`.`id_add` = `address`.`id` AND `adpp`.`id_pp` = `people`.`id` AND `adpp`.`id_pp` = @id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `view_pass`(snils varchar(11))
BEGIN
#SET @id_p = (SELECT `people`.`id` FROM `people` WHERE `people`.`fname` = fn and `people`.`lname` = ln and `people`.`cname` = cn);
SET @id_p = (SELECT `people`.`id` FROM `main`, `people` WHERE `main`.`snils` = snils AND `people`.`id` = `main`.`addpp`);    
SELECT 
        `passport`.`serial` AS `Серия`,
        `passport`.`numb` AS `Номер`,
        `passport`.`date` AS `Дата выдачи`,
        `passport`.`org` AS `Выдавшая организация`
    FROM
       `passport`, `people`, `main`, `docs`, `dcp`
    WHERE
        `main`.`addpp` = `people`.`id` AND `docs`.`id` = `main`.`docs` AND `passport`.`id` = `dcp`.`id_pass` AND `docs`.`id` = `dcp`.`id_doc` AND `people`.`id` = @id_p;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_ph` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `view_ph`(snils varchar(11))
BEGIN
#SET @id_p = (SELECT `people`.`id` FROM `people` WHERE `people`.`fname` = fn and `people`.`lname` = ln and `people`.`cname` = cn);
SET @id_p = (SELECT `people`.`id` FROM `main`, `people` WHERE `main`.`snils` = snils AND `people`.`id` = `main`.`addpp`);
	SELECT 
        `phone`.`numb` AS `Номер телефона`
    FROM
        `phone`, `people`, `php`
    WHERE
        `php`.`id_phone` = `phone`.`numb`
            AND `php`.`id_pp` = `people`.`id` AND `php`.`id_pp` = @id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `адрес`
--

/*!50001 DROP VIEW IF EXISTS `адрес`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `адрес` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `отчество`,`address`.`city` AS `Город`,`address`.`street` AS `Улица`,`address`.`build` AS `Дом`,`address`.`house` AS `Квартира` from ((`address` join `people`) join `adpp`) where ((`adpp`.`id_add` = `address`.`id`) and (`adpp`.`id_pp` = `people`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `все`
--

/*!50001 DROP VIEW IF EXISTS `все`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `все` AS select `people`.`fname` AS `fname`,`people`.`lname` AS `lname`,`people`.`cname` AS `cname`,`people`.`birthday` AS `birthday`,`main`.`snils` AS `snils`,`docs`.`inn` AS `inn`,`docs`.`bank` AS `bank`,`main`.`numb` AS `numb`,`job`.`shop` AS `shop`,`job`.`exp` AS `exp`,`job`.`exp_list` AS `exp_list`,`job`.`end_work` AS `end_work`,`status`.`stat` AS `stat`,`status`.`order` AS `order`,`status`.`disability` AS `disability`,`status`.`pay` AS `pay`,`status`.`vvtf` AS `vvtf`,`status`.`vettr` AS `vettr`,`status`.`prof_soyuz` AS `prof_soyuz`,`status`.`agreement` AS `agreement`,`status`.`prim` AS `prim` from ((((`people` join `status`) join `main`) join `docs`) join `job`) where ((`main`.`addpp` = `people`.`id`) and (`docs`.`id` = `main`.`docs`) and (`main`.`job` = `job`.`id`) and (`status`.`id` = `people`.`status`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `документы`
--

/*!50001 DROP VIEW IF EXISTS `документы`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `документы` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `отчество`,`docs`.`inn` AS `ИНН`,`docs`.`bank` AS `Номер банковского счета` from ((`docs` join `people`) join `main`) where ((`main`.`addpp` = `people`.`id`) and (`docs`.`id` = `main`.`docs`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `паспорт`
--

/*!50001 DROP VIEW IF EXISTS `паспорт`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `паспорт` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `отчество`,`passport`.`serial` AS `Серия`,`passport`.`numb` AS `Номер`,`passport`.`date` AS `Дата выдачи`,`passport`.`org` AS `Выдавшая организация` from ((((`passport` join `people`) join `main`) join `docs`) join `dcp`) where ((`main`.`addpp` = `people`.`id`) and (`docs`.`id` = `main`.`docs`) and (`passport`.`id` = `dcp`.`id_pass`) and (`docs`.`id` = `dcp`.`id_doc`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `работа`
--

/*!50001 DROP VIEW IF EXISTS `работа`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `работа` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `отчество`,`main`.`numb` AS `Трудовой номер`,`job`.`end_work` AS `Дата выхода на пенсию`,`job`.`exp` AS `Стаж`,`job`.`exp_list` AS `Стаж по списку`,`job`.`shop` AS `Цех` from ((`job` join `people`) join `main`) where ((`main`.`addpp` = `people`.`id`) and (`main`.`job` = `job`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `снилс`
--

/*!50001 DROP VIEW IF EXISTS `снилс`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `снилс` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `отчество`,`main`.`snils` AS `СНИЛС` from (`main` join `people`) where (`main`.`addpp` = `people`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `статус`
--

/*!50001 DROP VIEW IF EXISTS `статус`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `статус` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `отчество`,`status`.`disability` AS `Группа инвалидности`,`status`.`vvtf` AS `ВВ и ТФ`,`status`.`vettr` AS `Ветеран труда`,`status`.`stat` AS `Статус`,`status`.`order` AS `Приказ по списку`,`status`.`pay` AS `Период выплат`,`status`.`prof_soyuz` AS `Член профсоюза`,`status`.`agreement` AS `Согласие`,`status`.`prim` AS `Примечание` from (`status` join `people`) where (`status`.`id` = `people`.`status`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `телефоны`
--

/*!50001 DROP VIEW IF EXISTS `телефоны`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `телефоны` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `отчество`,`phone`.`numb` AS `Номер телефона` from ((`phone` join `people`) join `php`) where ((`php`.`id_phone` = `phone`.`numb`) and (`php`.`id_pp` = `people`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `человек`
--

/*!50001 DROP VIEW IF EXISTS `человек`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `человек` AS select `people`.`lname` AS `Фамилия`,`people`.`fname` AS `Имя`,`people`.`cname` AS `Отчество` from `people` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-20 16:30:33
