CREATE DATABASE  IF NOT EXISTS `mysql-class_challenge` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mysql-class_challenge`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mysql-class_challenge
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Temporary view structure for view `projectswithteamleads`
--

DROP TABLE IF EXISTS `projectswithteamleads`;
/*!50001 DROP VIEW IF EXISTS `projectswithteamleads`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectswithteamleads` AS SELECT 
 1 AS `ProjectID`,
 1 AS `ProjectName`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `ClientID`,
 1 AS `TeamLead`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientcontacts`
--

DROP TABLE IF EXISTS `clientcontacts`;
/*!50001 DROP VIEW IF EXISTS `clientcontacts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientcontacts` AS SELECT 
 1 AS `ClientName`,
 1 AS `ContactName`,
 1 AS `ContactEmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ongoingprojects`
--

DROP TABLE IF EXISTS `ongoingprojects`;
/*!50001 DROP VIEW IF EXISTS `ongoingprojects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ongoingprojects` AS SELECT 
 1 AS `ProjectID`,
 1 AS `ProjectName`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `ClientID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projectsperemployee`
--

DROP TABLE IF EXISTS `projectsperemployee`;
/*!50001 DROP VIEW IF EXISTS `projectsperemployee`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectsperemployee` AS SELECT 
 1 AS `EmployeeName`,
 1 AS `TotalProjects`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `projectswithteamleads`
--

/*!50001 DROP VIEW IF EXISTS `projectswithteamleads`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectswithteamleads` AS select `projects`.`ProjectID` AS `ProjectID`,`projects`.`ProjectName` AS `ProjectName`,`projects`.`Requirements` AS `Requirements`,`projects`.`Deadline` AS `Deadline`,`projects`.`ClientID` AS `ClientID`,`employees`.`EmployeeName` AS `TeamLead` from ((`projects` left join `projectteam` on((`projects`.`ProjectID` = `projectteam`.`ProjectID`))) left join `employees` on((`projectteam`.`EmployeeID` = `employees`.`EmployeeID`))) where (`projectteam`.`TeamLead` = 'Yes') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientcontacts`
--

/*!50001 DROP VIEW IF EXISTS `clientcontacts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientcontacts` AS select `clients`.`ClientName` AS `ClientName`,`clients`.`ContactName` AS `ContactName`,`clients`.`ContactEmail` AS `ContactEmail` from `clients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ongoingprojects`
--

/*!50001 DROP VIEW IF EXISTS `ongoingprojects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ongoingprojects` AS select `projects`.`ProjectID` AS `ProjectID`,`projects`.`ProjectName` AS `ProjectName`,`projects`.`Requirements` AS `Requirements`,`projects`.`Deadline` AS `Deadline`,`projects`.`ClientID` AS `ClientID` from `projects` where (`projects`.`Deadline` >= curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectsperemployee`
--

/*!50001 DROP VIEW IF EXISTS `projectsperemployee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectsperemployee` AS select `employees`.`EmployeeName` AS `EmployeeName`,count(`projectteam`.`ProjectID`) AS `TotalProjects` from (`employees` left join `projectteam` on((`employees`.`EmployeeID` = `projectteam`.`EmployeeID`))) group by `employees`.`EmployeeID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'mysql-class_challenge'
--

--
-- Dumping routines for database 'mysql-class_challenge'
--
/*!50003 DROP FUNCTION IF EXISTS `DaysOverdue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DaysOverdue`(project_deadline DATE) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE days_overdue INT;
    SET days_overdue = DATEDIFF(CURDATE(), project_deadline);
    RETURN days_overdue;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DaysUntilDeadline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DaysUntilDeadline`(project_deadline DATE) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE days_remaining INT;
    SET days_remaining = DATEDIFF(project_deadline, CURDATE());
    RETURN days_remaining;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddClientAndProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddClientAndProject`(
    IN client_name VARCHAR(255),
    IN contact_name VARCHAR(255),
    IN contact_email VARCHAR(255),
    IN project_name VARCHAR(255),
    IN requirements TEXT,
    IN deadline DATE
)
BEGIN
    DECLARE new_client_id INT;
   
    -- Insert new client
    INSERT INTO Clients (ClientName, ContactName, ContactEmail)
    VALUES (client_name, contact_name, contact_email);
   
    -- Get the newly inserted client ID
    SET new_client_id = LAST_INSERT_ID();
   
    -- Insert new project
    INSERT INTO Projects (ProjectName, ClientID, Requirements, Deadline)
    VALUES (project_name, new_client_id, requirements, deadline);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ArchiveCompletedProjects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ArchiveCompletedProjects`()
BEGIN
    DECLARE v_current_date DATE;
    SET v_current_date = CURDATE();
   
    -- Insert completed projects into archive table
    INSERT INTO ProjectsArchive
    SELECT * FROM Projects
    WHERE Deadline < v_current_date;
   
    -- Delete completed projects from the original table
    DELETE FROM Projects
    WHERE Deadline < v_current_date;
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

-- Dump completed on 2024-07-04  0:24:45
