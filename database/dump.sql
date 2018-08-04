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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'1S4u7lJzehk62xDm3DgYgXXYWtbHE6gSP',1,NULL,NULL,NULL),(2,131,'GT90lMLdtsDRJ7y7GyKbMosssl9dgj5d',1,'2018-07-27 03:57:41','2018-07-27 03:57:41','2018-07-27 03:57:41'),(3,2,'CBVE0LlXlQ3aP26a253b0cM2UVPf4gaY',1,'2018-08-03 19:04:43','2018-08-03 19:04:43','2018-08-03 19:04:43'),(4,3,'s5mbSySC4SKcibwhWLKQLHLLWYxKHZLu',1,'2018-08-03 19:04:43','2018-08-03 19:04:43','2018-08-03 19:04:43'),(5,4,'PFFXrFAesFQVT5e0ArfabgJ2e7HgnoLW',1,'2018-08-03 19:04:43','2018-08-03 19:04:43','2018-08-03 19:04:43'),(6,5,'MpjrKRJvWMs02MutteKb3vdpC2cb4cft',1,'2018-08-03 19:04:43','2018-08-03 19:04:43','2018-08-03 19:04:43'),(7,6,'5iPXEqlxYTva8pOyrokwMwuFqtX0zkI3',1,'2018-08-03 19:04:43','2018-08-03 19:04:43','2018-08-03 19:04:43'),(8,7,'enfS5rCdrT99kZeRbviP4l4wQ78M9jjN',1,'2018-08-03 19:04:43','2018-08-03 19:04:43','2018-08-03 19:04:43'),(9,8,'BofFuJDa68CH6cj9QwB5ta2eanZZcmXx',1,'2018-08-03 19:04:44','2018-08-03 19:04:44','2018-08-03 19:04:44'),(10,9,'Um1K27LerVlhZpzwca075xTyTLZyXLX2',1,'2018-08-03 19:04:44','2018-08-03 19:04:44','2018-08-03 19:04:44'),(11,10,'J0S1AqfUIgInsCshpoM95bMgd1IEKyEd',1,'2018-08-03 19:04:44','2018-08-03 19:04:44','2018-08-03 19:04:44'),(12,11,'Xh6yfSQR8oxIUNMSLxWWDv9yNGFuLAOP',1,'2018-08-03 19:04:44','2018-08-03 19:04:44','2018-08-03 19:04:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_02_230147_migration_cartalyst_sentinel',1),(2,'2017_05_05_084634_PasswordReset',1),(4,'2018_07_25_134652_add_event_related_fields_to_user',2),(5,'2018_07_30_123619_add_user_retreat_event',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistences`
--

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` VALUES (3,1,'8P3BnKQU3SpiUWTIiV0iLRzt15EFJmdg','2018-07-25 05:33:04','2018-07-25 05:33:04'),(4,1,'1ZN86IGWC7QvFqtQRk0vrLfeZFAUfa26','2018-07-25 13:24:58','2018-07-25 13:24:58'),(5,1,'rRlmUhLMyD6IIGCTsrXEzaSj2O0fVFRv','2018-07-26 14:08:57','2018-07-26 14:08:57'),(6,1,'yuDdtkIYnp5ztarQk3eKQo2SFjgy7UO1','2018-07-26 14:23:31','2018-07-26 14:23:31'),(8,1,'EzbZTysGSrBhc3RwBIvEMlaIg1f0QBVi','2018-07-27 15:13:03','2018-07-27 15:13:03'),(9,1,'gyGqRsqcKBdVXmTAT8HtCk1na7kNoMYK','2018-08-03 15:19:01','2018-08-03 15:19:01'),(10,1,'2Pc1Ov0F4l5kQPaDAn5grlPb6cJlHfZ3','2018-08-03 18:38:45','2018-08-03 18:38:45');
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
INSERT INTO `role_users` VALUES (1,1,NULL,NULL),(2,1,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(3,1,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(4,1,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(5,2,'2018-08-04 02:56:11','2018-08-04 02:56:11'),(6,1,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(7,1,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(8,1,'2018-08-03 19:04:44','2018-08-03 19:04:44'),(9,1,'2018-08-03 19:04:44','2018-08-03 19:04:44'),(10,1,'2018-08-03 19:04:44','2018-08-03 19:04:44'),(11,1,'2018-08-03 19:04:44','2018-08-03 19:04:44'),(131,2,'2018-07-27 03:57:41','2018-07-27 03:57:41');
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
-- Table structure for table `user_retreat_details`
--

DROP TABLE IF EXISTS `user_retreat_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_retreat_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fMDcg5JvDT05Zg1hv4TxynrmWxeWN9jSm3AJ9Gq3',
  `first_dinner_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_breakfast_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_lunch_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_snack_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_snack_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_no` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_retreat_details`
--

LOCK TABLES `user_retreat_details` WRITE;
/*!40000 ALTER TABLE `user_retreat_details` DISABLE KEYS */;
INSERT INTO `user_retreat_details` VALUES (1,2,'c81e728d9d4c2f636f067f89cc14862c','0','0','0','0','0','','Lunas','2018-08-03 19:04:43','2018-08-03 19:04:43'),(2,3,'eccbc87e4b5ce2fe28308fd9f2a7baf3','0','0','0','0','0','','Lunas','2018-08-03 19:04:43','2018-08-03 19:04:43'),(3,4,'a87ff679a2f3e71d9181a67b7542122c','0','0','0','0','0','','DP','2018-08-03 19:04:43','2018-08-03 19:04:43'),(4,5,'e4da3b7fbbce2345d7772b0674a318d5','0','0','0','0','0','','DP','2018-08-03 19:04:43','2018-08-03 19:04:43'),(5,6,'1679091c5a880faf6fb5e6087eb1b2dc','0','0','0','0','0','','Nul','2018-08-03 19:04:43','2018-08-03 19:04:43'),(6,7,'8f14e45fceea167a5a36dedd4bea2543','0','0','0','0','0','','DP','2018-08-03 19:04:43','2018-08-03 19:04:43'),(7,8,'c9f0f895fb98ab9159f51fd0297e236d','0','0','0','0','0','','Lunas','2018-08-03 19:04:44','2018-08-03 19:04:44'),(8,9,'45c48cce2e2d7fbdea1afc51c7c6ad26','0','0','0','0','0','','DP','2018-08-03 19:04:44','2018-08-03 19:04:44'),(9,10,'d3d9446802a44259755d38e6d163e820','0','0','0','0','0','','Nul','2018-08-03 19:04:44','2018-08-03 19:04:44'),(10,11,'6512bd43d9caa6e02c990b0a82652dca','0','0','0','0','0','','Nul','2018-08-03 19:04:44','2018-08-03 19:04:44');
/*!40000 ALTER TABLE `user_retreat_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_venue_details`
--

DROP TABLE IF EXISTS `user_venue_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_venue_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Xcw0NvnXFGqkbT99XKtBIqu5HZY8FcGSgUoA2GHS',
  `receive_certificate_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_first_snack_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_second_snack_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_lunch_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_position` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_venue_details`
--

LOCK TABLES `user_venue_details` WRITE;
/*!40000 ALTER TABLE `user_venue_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_venue_details` ENABLE KEYS */;
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.com','$2y$10$b6q62eF6Byay5zZHzPGTHOQ/N9hI0DOfZR2f5eUsLyhWqHf/3rCr.','{\"home.dashboard\":true}','2018-08-03 18:38:45','John','Doe',NULL,NULL,NULL,'2018-08-03 18:38:45'),(2,'3fN7lDxmAo8JEci@email.com','$2y$10$4LPfXDeMBejm3pwGjHIJGulpw/qQdr5M.EpUEkbWpw07LnrvUXydK',NULL,NULL,'Bp. Arthur',NULL,NULL,NULL,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(3,'tvZyTvx46PEvsYl@email.com','$2y$10$k/O5VpnSgrh.dwm8oGN7Euw9xqmf3muU32lEYQeSlQT8RONvm/vXO',NULL,NULL,'Ibu Golda',NULL,NULL,NULL,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(4,'xibtRsyozoG03ds@email.com','$2y$10$go7nTXlFcbJsnQwnGzF31OseJO6dx7gLFrgIy2FyWDvIJl.Vcokdq',NULL,NULL,'Ibu Tonggo',NULL,NULL,NULL,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(5,'ouVcBonbsxlyKHs@email.com','$2y$10$ZsZTS.mYrXtcJR8o30S2xuzpWOvAOoH/PnJQoEUDn81g5//8x7MAS',NULL,NULL,'Bp. Ivan','oe',NULL,NULL,'2018-08-03 19:04:43','2018-08-04 02:56:11'),(6,'0MplmPLNQKOUKu8@email.com','$2y$10$VL4CezlM7BIVXIDle995u.hFaeYOYfDlWggALdidHDOBQNbOewt5m',NULL,NULL,'Feris',NULL,NULL,NULL,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(7,'mScLstMNHtCMkCO@email.com','$2y$10$GZ67aHCwz11QKT2lz0UZk.7Iq5e29pe9ojcy7ixk./tIcwGK8FcAm',NULL,NULL,'Angelina',NULL,NULL,NULL,'2018-08-03 19:04:43','2018-08-03 19:04:43'),(8,'DiKJobBA6YdUfup@email.com','$2y$10$1GGlxbl/ig5SuWxAJKYG5O31GfBAZpea3J02AK/ZNOvWaUsDnBYjO',NULL,NULL,'Nova',NULL,NULL,NULL,'2018-08-03 19:04:44','2018-08-03 19:04:44'),(9,'ZWWDgv4YWE6u34o@email.com','$2y$10$P6GwxDNOR0GQpfEVFQGWm.ZmlKiAJNPwV7gkxBcElPvhi3J8Fr92G',NULL,NULL,'Anita Happy',NULL,NULL,NULL,'2018-08-03 19:04:44','2018-08-03 19:04:44'),(10,'JUx2Vw5inU4NEZx@email.com','$2y$10$cwG1WXPhqii411r1NdO2UOqyiQ.RPGXe0z/P7XCt7JxTgdLXRH2K6',NULL,NULL,'Lani',NULL,NULL,NULL,'2018-08-03 19:04:44','2018-08-03 19:04:44'),(11,'KNfcOQtWYuedsvh@email.com','$2y$10$2GzgMmsCGX/IfnDz50H4AukiaIMd6d5iTTv.oz4977C1XOpEubdtO',NULL,NULL,'Tika',NULL,NULL,NULL,'2018-08-03 19:04:44','2018-08-03 19:04:44');
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

-- Dump completed on 2018-08-04 18:12:35
