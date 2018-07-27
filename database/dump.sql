-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 192.168.10.10    Database: laravel_crud_starter
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'1S4u7lJzehk62xDm3DgYgXXYWtbHE6gSP',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_02_230147_migration_cartalyst_sentinel',1),(2,'2017_05_05_084634_PasswordReset',1),(3,'2018_07_25_134652_add_event_related_fields_to_user',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistences`
--

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` VALUES (3,1,'8P3BnKQU3SpiUWTIiV0iLRzt15EFJmdg','2018-07-25 05:33:04','2018-07-25 05:33:04'),(4,1,'1ZN86IGWC7QvFqtQRk0vrLfeZFAUfa26','2018-07-25 13:24:58','2018-07-25 13:24:58');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"password.request\":true,\"password.email\":true,\"password.reset\":true,\"home.dashboard\":true,\"user.index\":true,\"user.create\":true,\"user.store\":true,\"user.show\":true,\"user.edit\":true,\"user.update\":true,\"user.destroy\":true,\"user.permissions\":true,\"user.save\":true,\"user.activate\":true,\"user.deactivate\":true,\"role.index\":true,\"role.create\":true,\"role.store\":true,\"role.show\":true,\"role.edit\":true,\"role.update\":true,\"role.destroy\":true,\"role.permissions\":true,\"role.save\":true}',NULL,NULL),(2,'client','client','{\"home.dashboard\":true}',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_duplicate`
--

DROP TABLE IF EXISTS `user_duplicate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_duplicate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QRpassword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receive_certificate_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_first_snack_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_second_snack_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_lunch_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_position` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_duplicate`
--

LOCK TABLES `user_duplicate` WRITE;
/*!40000 ALTER TABLE `user_duplicate` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_duplicate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QRpassword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receive_certificate_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_first_snack_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_second_snack_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_lunch_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_position` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.com','$2y$10$b6q62eF6Byay5zZHzPGTHOQ/N9hI0DOfZR2f5eUsLyhWqHf/3rCr.','{\"home.dashboard\":true}','2018-07-25 13:24:58','John','Doe',NULL,'Dammy-CODE-1S4u7lJzehk62xDm3DgYgXXYWtbHE6gSP',NULL,NULL,'2018-07-25 13:24:58',NULL,NULL,NULL,NULL,NULL,NULL),(26,'E6-I@email.com','123456',NULL,NULL,'Adri Liberty Simorangkir',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(27,'E6-J@email.com','123456',NULL,NULL,'Anita Happy Rahayu Sitanggang',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(28,'E@email.com','123456',NULL,NULL,'Andreas Eka',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(29,'R3-F@email.com','123456',NULL,NULL,'Angelina Clara Septiana',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(30,'R3-G@email.com','123456',NULL,NULL,'Christi Andini',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(31,'E1-M@email.com','123456',NULL,NULL,'Darwin Dame',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(32,'E3-I@email.com','123456',NULL,NULL,'Ketrin Apriliana Surya Gama',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(33,'E@email.com','123456',NULL,NULL,'Maria Siagian',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(34,'R3-B@email.com','123456',NULL,NULL,'Febe Agustina',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(35,'R2-A@email.com','123456',NULL,NULL,'Reinhard',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(36,'E5-J@email.com','123456',NULL,NULL,'Adriaan Asaranov',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(37,'E5-I@email.com','123456',NULL,NULL,'Arthur Tona Manik',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(38,'R4-L@email.com','123456',NULL,NULL,'David Amadeus Lawalata',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(39,'R3-M@email.com','123456',NULL,NULL,'Endri Loristy Sianipar',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(40,'E4-E@email.com','123456',NULL,NULL,'Jahja Lawalata',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(41,'R4-M@email.com','123456',NULL,NULL,'Moses Lawalata',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(42,'R3-L@email.com','123456',NULL,NULL,'Vanda Amadea',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(43,'E4-F@email.com','123456',NULL,NULL,'Yuriza Launa Muhita',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(44,'R2-E@email.com','123456',NULL,NULL,'Clara Gunadi Kanna',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(45,'R3-I@email.com','123456',NULL,NULL,'Dewi Suganda',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(46,'R2-F@email.com','123456',NULL,NULL,'Guntur Kanna',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(47,'R1-D@email.com','123456',NULL,NULL,'Neny Napitupulu',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(48,'E1-H@email.com','123456',NULL,NULL,'Agustina Milca',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(49,'R2-B@email.com','123456',NULL,NULL,'Aminah',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(50,'R2-L@email.com','123456',NULL,NULL,'Arung Tandirura',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(51,'E1-G@email.com','123456',NULL,NULL,'Citra Indah Simanjuntak',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(52,'R2-J@email.com','123456',NULL,NULL,'Claudia Situmeang',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(53,'E2-I@email.com','123456',NULL,NULL,'Ellen Leatemea',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(54,'E3-C@email.com','123456',NULL,NULL,'Fitri Br Hutagaol',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(55,'R7-O@email.com','123456',NULL,NULL,'Gandarino',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(56,'R2-M@email.com','123456',NULL,NULL,'Hannaniel Lidia L',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(57,'V1-I@email.com','123456',NULL,NULL,'Herman',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(58,'E1-K@email.com','123456',NULL,NULL,'Jenny Makole',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(59,'E1-L@email.com','123456',NULL,NULL,'Jirma Makole',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(60,'R5-I@email.com','123456',NULL,NULL,'Helmi Moses',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(61,'R2-D@email.com','123456',NULL,NULL,'Mardiana Rosali Lencimina',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(62,'E5-K@email.com','123456',NULL,NULL,'Mario Fredrick',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(63,'E2-N@email.com','123456',NULL,NULL,'Martha Ulina Veronika H',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(64,'E3-B@email.com','123456',NULL,NULL,'Matiur Evelyn Br Sianipar',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(65,'E1-J@email.com','123456',NULL,NULL,'Meisy',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(66,'E1-I@email.com','123456',NULL,NULL,'Nancy',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(67,'E2-C@email.com','123456',NULL,NULL,'Nanik',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(68,'E3-L@email.com','123456',NULL,NULL,'Nina hernaningsih',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(69,'R3-A@email.com','123456',NULL,NULL,'Nova Sinambela',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(70,'E1-C@email.com','123456',NULL,NULL,'Purnama Situmorang',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(71,'E3-M@email.com','123456',NULL,NULL,'Rani Regina',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(72,'E3-N@email.com','123456',NULL,NULL,'Siti Maelah',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(73,'E3-K@email.com','123456',NULL,NULL,'Sri purwaningsih',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(74,'E4-M@email.com','123456',NULL,NULL,'Tan Feriyando Sugianto',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(75,'E1-B@email.com','123456',NULL,NULL,'Verawaty Bulegalangi',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(76,'V1-J@email.com','123456',NULL,NULL,'Vonny Chandra',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(77,'R2-I@email.com','123456',NULL,NULL,'Yoseph M. Situmeang',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(78,'E1-N@email.com','123456',NULL,NULL,'Doly Sipayung',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(79,'V1-K@email.com','123456',NULL,NULL,'Ernawati Sihombing',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(80,'E4-I@email.com','123456',NULL,NULL,'Christian Anggoro',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(81,'R2-K@email.com','123456',NULL,NULL,'Evelin Tadete',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(82,'E4-K@email.com','123456',NULL,NULL,'Indah Indriany Gultom',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(83,'R4-G@email.com','123456',NULL,NULL,'Nia',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(84,'E4-J@email.com','123456',NULL,NULL,'Pesta Chandra',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(85,'R3-K@email.com','123456',NULL,NULL,'Richard',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(86,'R3-J@email.com','123456',NULL,NULL,'Tiodora',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(87,'R1-N@email.com','123456',NULL,NULL,'Ade Prihartika',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(88,'R1-G@email.com','123456',NULL,NULL,'Eldinaria Purba (tentative)',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(89,'R4-J@email.com','123456',NULL,NULL,'Erina Silalahi',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(90,'R1-F@email.com','123456',NULL,NULL,'Febe Manurung',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(91,'R1-K@email.com','123456',NULL,NULL,'Irene Fransisca',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(92,'R4-I@email.com','123456',NULL,NULL,'Josua Pardede',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(93,'R1-L@email.com','123456',NULL,NULL,'Linda Marissa',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(94,'R1-H@email.com','123456',NULL,NULL,'Mixan Masala',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(95,'R1-O@email.com','123456',NULL,NULL,'Qualikai Deliratna',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(96,'R1-J@email.com','123456',NULL,NULL,'Rifka Junita Putri',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(97,'R1-I@email.com','123456',NULL,NULL,'Ryanto Tirta Darmali',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(98,'R1-M@email.com','123456',NULL,NULL,'Theresia Aniek Setyowati Soetaryo',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(99,'R1-B@email.com','123456',NULL,NULL,'Chrischof Lawalata',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(100,'E4-G@email.com','123456',NULL,NULL,'Ester Maharani',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(101,'R1-E@email.com','123456',NULL,NULL,'Feris Ardianto',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(102,'R1-C@email.com','123456',NULL,NULL,'Moses Jackson',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(103,'R1-A@email.com','123456',NULL,NULL,'Murni Lestari',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(104,'E4-H@email.com','123456',NULL,NULL,'Sara Pingkan',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(105,'E3-J@email.com','123456',NULL,NULL,'Yosua Bobby',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(106,'E5-F@email.com','123456',NULL,NULL,'Inne',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(107,'R4-K@email.com','123456',NULL,NULL,'Reza Amelia',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(108,'E5-G@email.com','123456',NULL,NULL,'Wiji Lestari',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(109,'E2-M@email.com','123456',NULL,NULL,'Yosephine Mandik',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(110,'E3-H@email.com','123456',NULL,NULL,'Agnes Hasibuan',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(111,'E3-F@email.com','123456',NULL,NULL,'Andreas Ruben',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(112,'E3-E@email.com','123456',NULL,NULL,'Grasus',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(113,'E3-G@email.com','123456',NULL,NULL,'Indri Elisabeth',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(114,'E6-K@email.com','123456',NULL,NULL,'Naomi',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(115,'E6-L@email.com','123456',NULL,NULL,'Sabastian Martinus',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(116,'R2-G@email.com','123456',NULL,NULL,'Audy Morphy Tambunan',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(117,'R2-H@email.com','123456',NULL,NULL,'Nataliah',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(118,'R2-N@email.com','123456',NULL,NULL,'Navy Esthernes',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(119,'R2-O@email.com','123456',NULL,NULL,'Navy Esthernes 2',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(120,'E2-J@email.com','123456',NULL,NULL,'Tesza Tamam 1',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(121,'E2-K@email.com','123456',NULL,NULL,'Tesza Tamam 2',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(122,'E2-L@email.com','123456',NULL,NULL,'Tesza Tamam 3',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(123,'E1-D@email.com','123456',NULL,NULL,'George Papilaya',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(124,'E5-H@email.com','123456',NULL,NULL,'Selly',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(125,'E5-L@email.com','123456',NULL,NULL,'Dede Hastri Neldi',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(126,'E5-N@email.com','123456',NULL,NULL,'Rahayu Hercahyaningsih',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(127,'E5-M@email.com','123456',NULL,NULL,'Sherly Masala',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(128,'R5-J@email.com','123456',NULL,NULL,'Maylani Tiosari',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(129,'R5-K@email.com','123456',NULL,NULL,'Muhammad Faleri Febriyanto',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL),(130,'R3-H@email.com','123456',NULL,NULL,'Tonggo Martina Lasmaria',NULL,NULL,'q0jGJ7hE1p9m2vRhZ6YwP9uoMI0xpVPgwYQpL5Vp',NULL,'2018-07-25 15:02:44','2018-07-25 15:02:44',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-26 13:05:57
