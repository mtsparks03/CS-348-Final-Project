CREATE DATABASE  IF NOT EXISTS `cs348proj` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cs348proj`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: cs348proj
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `City_ID` int NOT NULL AUTO_INCREMENT,
  `City` varchar(45) NOT NULL,
  `State_ID` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Population` int DEFAULT NULL,
  `Timezone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`City_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'New York','NY','New York',18713220,'America/New_York'),(2,'Los Angeles','CA','California',12750807,'America/Los_Angeles'),(3,'Chicago','IL','Illinois',8604203,'America/Chicago'),(4,'Miami','FL','Florida',6445545,'America/New_York'),(5,'Dallas','TX','Texas',5743938,'America/Chicago'),(6,'Philadelphia','PA','Pennsylvania',5649300,'America/New_York'),(7,'Houston','TX','Texas',5464251,'America/Chicago'),(8,'Atlanta','GA','Georgia',5449398,'America/New_York'),(9,'Washington','DC','District of Columbia',5379184,'America/New_York'),(10,'Boston','MA','Massachusetts',4688346,'America/New_York'),(11,'Phoenix','AZ','Arizona',4219697,'America/Phoenix'),(12,'Seattle','WA','Washington',3789215,'America/Los_Angeles'),(13,'San Francisco','CA','California',3592294,'America/Los_Angeles'),(14,'Detroit','MI','Michigan',3506126,'America/Detroit'),(15,'San Diego','CA','California',3220118,'America/Los_Angeles'),(16,'Minneapolis','MN','Minnesota',2977172,'America/Chicago'),(17,'Tampa','FL','Florida',2908063,'America/New_York'),(18,'Denver','CO','Colorado',2876625,'America/Denver'),(19,'Brooklyn','NY','New York',2559903,'America/New_York'),(20,'Queens','NY','New York',2230722,'America/New_York'),(21,'Riverside','CA','California',2107852,'America/Los_Angeles'),(22,'Baltimore','MD','Maryland',2106068,'America/New_York'),(23,'Las Vegas','NV','Nevada',2104198,'America/Los_Angeles'),(24,'Portland','OR','Oregon',2074775,'America/Los_Angeles'),(25,'San Antonio','TX','Texas',2049293,'America/Chicago'),(26,'St. Louis','MO','Missouri',2024074,'America/Chicago'),(27,'Sacramento','CA','California',1898019,'America/Los_Angeles'),(28,'Orlando','FL','Florida',1822394,'America/New_York'),(29,'San Jose','CA','California',1798103,'America/Los_Angeles'),(30,'Cleveland','OH','Ohio',1710093,'America/New_York'),(31,'Pittsburgh','PA','Pennsylvania',1703266,'America/New_York'),(32,'Austin','TX','Texas',1687311,'America/Chicago'),(33,'Cincinnati','OH','Ohio',1662691,'America/New_York'),(34,'Kansas City','MO','Missouri',1636715,'America/Chicago'),(35,'Manhattan','NY','New York',1628706,'America/New_York'),(36,'Indianapolis','IN','Indiana',1588961,'America/Indiana/Indianapolis'),(37,'Columbus','OH','Ohio',1562009,'America/New_York'),(38,'Charlotte','NC','North Carolina',1512923,'America/New_York'),(39,'Virginia Beach','VA','Virginia',1478868,'America/New_York'),(40,'Bronx','NY','New York',1418207,'America/New_York'),(41,'Milwaukee','WI','Wisconsin',1365787,'America/Chicago'),(42,'Providence','RI','Rhode Island',1203230,'America/New_York'),(43,'Jacksonville','FL','Florida',1181496,'America/New_York'),(44,'Salt Lake City','UT','Utah',1098526,'America/Denver'),(45,'Nashville','TN','Tennessee',1081903,'America/Chicago'),(46,'Richmond','VA','Virginia',1075798,'America/New_York'),(47,'Memphis','TN','Tennessee',1066967,'America/Chicago'),(48,'Raleigh','NC','North Carolina',1038738,'America/New_York'),(49,'New Orleans','LA','Louisiana',1020886,'America/Chicago'),(50,'Louisville','KY','Kentucky',1005654,'America/New_York'),(51,'Oklahoma City','OK','Oklahoma',972943,'America/Chicago'),(52,'Bridgeport','CT','Connecticut',924449,'America/New_York'),(53,'Buffalo','NY','New York',914341,'America/New_York'),(54,'Fort Worth','TX','Texas',909585,'America/Chicago'),(55,'Hartford','CT','Connecticut',905152,'America/New_York'),(56,'Tucson','AZ','Arizona',888486,'America/Phoenix'),(57,'Omaha','NE','Nebraska',847819,'America/Chicago'),(58,'El Paso','TX','Texas',843386,'America/Denver'),(59,'Honolulu','HI','Hawaii',820987,'Pacific/Honolulu'),(60,'McAllen','TX','Texas',804114,'America/Chicago'),(61,'Albuquerque','NM','New Mexico',761195,'America/Denver'),(62,'Birmingham','AL','Alabama',739573,'America/Chicago'),(63,'Sarasota','FL','Florida',722243,'America/New_York'),(64,'Dayton','OH','Ohio',718353,'America/New_York'),(65,'Rochester','NY','New York',703952,'America/New_York'),(66,'Fresno','CA','California',703498,'America/Los_Angeles'),(67,'Allentown','PA','Pennsylvania',683794,'America/New_York'),(68,'Tulsa','OK','Oklahoma',671033,'America/Chicago'),(69,'Cape Coral','FL','Florida',668382,'America/New_York'),(70,'Concord','CA','California',652308,'America/Los_Angeles'),(71,'Colorado Springs','CO','Colorado',642413,'America/Denver'),(72,'Charleston','SC','South Carolina',628377,'America/New_York'),(73,'Springfield','MA','Massachusetts',623401,'America/New_York'),(74,'Grand Rapids','MI','Michigan',609314,'America/Detroit'),(75,'Mission Viejo','CA','California',590249,'America/Los_Angeles'),(76,'Albany','NY','New York',586383,'America/New_York'),(77,'Knoxville','TN','Tennessee',586048,'America/New_York'),(78,'Bakersfield','CA','California',579295,'America/Los_Angeles'),(79,'Ogden','UT','Utah',578523,'America/Denver'),(80,'Baton Rouge','LA','Louisiana',570308,'America/Chicago'),(81,'Akron','OH','Ohio',565208,'America/New_York'),(82,'New Haven','CT','Connecticut',564830,'America/New_York'),(83,'Columbia','SC','South Carolina',560041,'America/New_York'),(84,'Mesa','AZ','Arizona',518012,'America/Phoenix'),(85,'Palm Bay','FL','Florida',507002,'America/New_York'),(86,'Provo','UT','Utah',500617,'America/Denver'),(87,'Worcester','MA','Massachusetts',498328,'America/New_York'),(88,'Murrieta','CA','California',496046,'America/Los_Angeles'),(89,'Greenville','SC','South Carolina',484465,'America/New_York'),(90,'Wichita','KS','Kansas',482249,'America/Chicago'),(91,'Toledo','OH','Ohio',482111,'America/New_York'),(92,'Staten Island','NY','New York',476143,'America/New_York'),(93,'Des Moines','IA','Iowa',473957,'America/Chicago'),(94,'Long Beach','CA','California',462628,'America/Los_Angeles'),(95,'Port St. Lucie','FL','Florida',461152,'America/New_York'),(96,'Denton','TX','Texas',457177,'America/Chicago'),(97,'Madison','WI','Wisconsin',447245,'America/Chicago'),(98,'Reno','NV','Nevada',445020,'America/Los_Angeles'),(99,'Harrisburg','PA','Pennsylvania',442289,'America/New_York'),(100,'Little Rock','AR','Arkansas',439815,'America/Chicago');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `Name` varchar(45) NOT NULL,
  `Total_Earnings` int DEFAULT NULL,
  `AVG_Earnings` int DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES ('Apex Legends',26153237,5230647),('Arena of Valor',98746139,10971793),('Call of Duty: Warzone',12904810,3226202),('Counter-Strike',13624160,567673),('Counter-Strike 2',21155138,21155138),('Counter-Strike: Global Offensive',162489707,13540809),('CrossFire',25128358,1478139),('Dota 2',360461163,32769197),('Fortnite',191012699,27287528),('Hearthstone',30708755,3070875),('Heroes of the Storm',18464719,2051635),('League of Legends',113596025,7573068),('Overwatch',35259225,4407403),('Overwatch 2',12861360,6430680),('PLAYERUNKNOWN\'S BATTLEGROUNDS Mobile',87322955,12474708),('Rainbow Six Siege',48130527,5347836),('Rocket League',42262497,4695833),('StarCraft II',42692708,3049479),('VALORANT',32018215,8004554);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `Member_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Years_Experience` int DEFAULT NULL,
  `Org_ID` int DEFAULT NULL,
  `Game` varchar(45) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Member_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `Org_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `City_ID` int DEFAULT NULL,
  PRIMARY KEY (`Org_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_org_delete` AFTER DELETE ON `organizations` FOR EACH ROW BEGIN
    UPDATE members
    SET Org_ID = NULL
    WHERE Org_ID = OLD.Org_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'cs348proj'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetCities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCities`()
BEGIN
	SELECT * FROM cities ORDER BY City;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetGameNames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetGameNames`()
BEGIN
	SELECT * FROM games ORDER BY Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMemNames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMemNames`()
BEGIN
	SELECT * FROM members ORDER BY Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetOrgNames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrgNames`()
BEGIN
	SELECT * FROM organizations ORDER BY Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStatsTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStatsTable`(IN order_by INT, IN limit_by INT)
BEGIN
CREATE TEMPORARY TABLE OrgStatsTemp (
        org_id INT,
        org_name VARCHAR(255),
        org_location VARCHAR(255),
        number_of_members INT,
        projected_earnings DECIMAL(15, 2),
        avg_experience DECIMAL(5, 2)
    );

    INSERT INTO OrgStatsTemp (org_id, org_name, org_location)
    SELECT 
        o.Org_ID AS org_id,
        o.Name AS org_name,
        CONCAT(c.city, ', ', c.state) AS org_location
    FROM 
        organizations o
    JOIN 
        cities c ON o.city_id = c.city_id;

    UPDATE OrgStatsTemp ost
    LEFT JOIN (
        SELECT 
            org_id, COUNT(member_id) AS number_of_members
        FROM 
            members
        GROUP BY 
            org_id
    ) m ON ost.org_id = m.org_id
    SET 
        ost.number_of_members = IFNULL(m.number_of_members, 0);

    UPDATE OrgStatsTemp ost
    LEFT JOIN (
        SELECT 
            m.org_id, SUM(g.avg_earnings) AS projected_earnings
        FROM 
            members m
        LEFT JOIN 
            games g ON m.game = g.name
        GROUP BY 
            m.org_id
    ) g ON ost.org_id = g.org_id
    SET 
        ost.projected_earnings = IFNULL(g.projected_earnings, 0);

    UPDATE OrgStatsTemp ost
    LEFT JOIN (
        SELECT 
            org_id, AVG(years_experience) AS avg_experience
        FROM 
            members
        GROUP BY 
            org_id
    ) exp ON ost.org_id = exp.org_id
    SET 
        ost.avg_experience = IFNULL(exp.avg_experience, 0);

    SET @query = CONCAT(
        'SELECT org_name AS Name, org_location AS Location, number_of_members AS Member_Count, projected_earnings AS Projected_Earnings, avg_experience AS Average_Member_Experience FROM OrgStatsTemp ORDER BY ',
        CASE 
            WHEN order_by = 1 THEN 'org_name'
            WHEN order_by = 2 THEN 'number_of_members DESC'
            WHEN order_by = 3 THEN 'projected_earnings DESC'
            WHEN order_by = 4 THEN 'avg_experience DESC'
            ELSE 'org_name' -- Default order
        END, ' LIMIT ', limit_by
    );

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    DROP TEMPORARY TABLE OrgStatsTemp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 19:36:44
