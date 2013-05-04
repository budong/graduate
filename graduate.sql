-- MySQL dump 10.13  Distrib 5.1.67, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: graduate
-- ------------------------------------------------------
-- Server version	5.1.67

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
-- Table structure for table `accounts_myprofile`
--

DROP TABLE IF EXISTS `accounts_myprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_myprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mugshot` varchar(100) NOT NULL,
  `privacy` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `favourite_snack` varchar(5) NOT NULL,
  `network` int(11) NOT NULL,
  `system` int(11) NOT NULL,
  `database` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myprofile`
--

LOCK TABLES `accounts_myprofile` WRITE;
/*!40000 ALTER TABLE `accounts_myprofile` DISABLE KEYS */;
INSERT INTO `accounts_myprofile` VALUES (6,'','registered',2,'net',2,1,1,1),(5,'','registered',1,'net',1,1,2,1);
/*!40000 ALTER TABLE `accounts_myprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aiteo_question`
--

DROP TABLE IF EXISTS `aiteo_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aiteo_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_content_type_id` int(11) DEFAULT NULL,
  `group_object_id` int(11) DEFAULT NULL,
  `question` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `score` int(11) NOT NULL,
  `vote_up_count` int(11) NOT NULL,
  `vote_down_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aiteo_question_5c21c2f4` (`group_content_type_id`),
  KEY `aiteo_question_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aiteo_question`
--

LOCK TABLES `aiteo_question` WRITE;
/*!40000 ALTER TABLE `aiteo_question` DISABLE KEYS */;
INSERT INTO `aiteo_question` VALUES (1,NULL,NULL,'who am i ?','I am lee.',1,'2013-05-04 12:37:40',0,7,-5),(2,NULL,NULL,'你好呀','我很好',2,'2013-05-04 14:00:27',0,1,0),(3,NULL,NULL,'撒地方','得分',2,'2013-05-04 14:07:31',0,0,0);
/*!40000 ALTER TABLE `aiteo_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aiteo_response`
--

DROP TABLE IF EXISTS `aiteo_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aiteo_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `score` int(11) NOT NULL,
  `vote_up_count` int(11) NOT NULL,
  `vote_down_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aiteo_response_1f92e550` (`question_id`),
  KEY `aiteo_response_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aiteo_response`
--

LOCK TABLES `aiteo_response` WRITE;
/*!40000 ALTER TABLE `aiteo_response` DISABLE KEYS */;
INSERT INTO `aiteo_response` VALUES (1,1,'你好',0,1,'2013-05-04 12:38:35',0,20,-4),(2,1,'我真的很好',0,1,'2013-05-04 12:39:02',0,2,-3),(3,1,'发斯蒂芬',0,1,'2013-05-04 12:47:29',0,0,0),(4,1,'发斯蒂芬',0,1,'2013-05-04 12:47:34',0,0,0),(5,1,'发生法斯蒂芬',0,1,'2013-05-04 12:47:39',0,3,-3),(6,2,'我很阿红',0,2,'2013-05-04 14:00:32',0,0,0),(7,2,'年后',0,2,'2013-05-04 14:01:54',0,0,0),(8,1,'你好',0,2,'2013-05-04 14:04:31',0,0,0);
/*!40000 ALTER TABLE `aiteo_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add comment',8,'add_comment'),(23,'Can change comment',8,'change_comment'),(24,'Can delete comment',8,'delete_comment'),(25,'Can moderate comments',8,'can_moderate'),(26,'Can add comment flag',9,'add_commentflag'),(27,'Can change comment flag',9,'change_commentflag'),(28,'Can delete comment flag',9,'delete_commentflag'),(29,'Can add userena registration',10,'add_userenasignup'),(30,'Can change userena registration',10,'change_userenasignup'),(31,'Can delete userena registration',10,'delete_userenasignup'),(32,'Can add source',11,'add_source'),(33,'Can change source',11,'change_source'),(34,'Can delete source',11,'delete_source'),(35,'Can add thumbnail',12,'add_thumbnail'),(36,'Can change thumbnail',12,'change_thumbnail'),(37,'Can delete thumbnail',12,'delete_thumbnail'),(38,'Can add user object permission',13,'add_userobjectpermission'),(39,'Can change user object permission',13,'change_userobjectpermission'),(40,'Can delete user object permission',13,'delete_userobjectpermission'),(41,'Can add group object permission',14,'add_groupobjectpermission'),(42,'Can change group object permission',14,'change_groupobjectpermission'),(43,'Can delete group object permission',14,'delete_groupobjectpermission'),(44,'Can add category',15,'add_category'),(45,'Can change category',15,'change_category'),(46,'Can delete category',15,'delete_category'),(47,'Can add entry',16,'add_entry'),(48,'Can change entry',16,'change_entry'),(49,'Can delete entry',16,'delete_entry'),(50,'Can add my profile',17,'add_myprofile'),(51,'Can change my profile',17,'change_myprofile'),(52,'Can delete my profile',17,'delete_myprofile'),(53,'Can view profile',17,'view_profile'),(54,'Can change profile',17,'change_profile'),(55,'Can delete profile',17,'delete_profile'),(56,'Can add profile',18,'add_profile'),(57,'Can change profile',18,'change_profile'),(58,'Can delete profile',18,'delete_profile'),(59,'Can add question',19,'add_question'),(60,'Can change question',19,'change_question'),(61,'Can delete question',19,'delete_question'),(62,'Can add answer',20,'add_answer'),(63,'Can change answer',20,'change_answer'),(64,'Can delete answer',20,'delete_answer'),(65,'Can add quiz',21,'add_quiz'),(66,'Can change quiz',21,'change_quiz'),(67,'Can delete quiz',21,'delete_quiz'),(68,'Can add question paper',22,'add_questionpaper'),(69,'Can change question paper',22,'change_questionpaper'),(70,'Can delete question paper',22,'delete_questionpaper'),(71,'Can add question',23,'add_question'),(72,'Can change question',23,'change_question'),(73,'Can delete question',23,'delete_question'),(74,'Can add participant',24,'add_participant'),(75,'Can change participant',24,'change_participant'),(76,'Can delete participant',24,'delete_participant'),(77,'Can add answer',25,'add_answer'),(78,'Can change answer',25,'change_answer'),(79,'Can delete answer',25,'delete_answer'),(80,'Can add sign every day',26,'add_signeveryday'),(81,'Can change sign every day',26,'change_signeveryday'),(82,'Can delete sign every day',26,'delete_signeveryday'),(83,'Can add Category',27,'add_category'),(84,'Can change Category',27,'change_category'),(85,'Can delete Category',27,'delete_category'),(86,'Can add Forum',28,'add_forum'),(87,'Can change Forum',28,'change_forum'),(88,'Can delete Forum',28,'delete_forum'),(89,'Can add Topic',29,'add_topic'),(90,'Can change Topic',29,'change_topic'),(91,'Can delete Topic',29,'delete_topic'),(92,'Can add Post',30,'add_post'),(93,'Can change Post',30,'change_post'),(94,'Can delete Post',30,'delete_post'),(95,'Can add Profile',31,'add_profile'),(96,'Can change Profile',31,'change_profile'),(97,'Can delete Profile',31,'delete_profile'),(98,'Can add Attachment',32,'add_attachment'),(99,'Can change Attachment',32,'change_attachment'),(100,'Can delete Attachment',32,'delete_attachment'),(101,'Can add Topic read tracker',33,'add_topicreadtracker'),(102,'Can change Topic read tracker',33,'change_topicreadtracker'),(103,'Can delete Topic read tracker',33,'delete_topicreadtracker'),(104,'Can add Forum read tracker',34,'add_forumreadtracker'),(105,'Can change Forum read tracker',34,'change_forumreadtracker'),(106,'Can delete Forum read tracker',34,'delete_forumreadtracker'),(107,'Can add Poll answer',35,'add_pollanswer'),(108,'Can change Poll answer',35,'change_pollanswer'),(109,'Can delete Poll answer',35,'delete_pollanswer'),(110,'Can add Poll answer user',36,'add_pollansweruser'),(111,'Can change Poll answer user',36,'change_pollansweruser'),(112,'Can delete Poll answer user',36,'delete_pollansweruser'),(113,'Can add kv store',37,'add_kvstore'),(114,'Can change kv store',37,'change_kvstore'),(115,'Can delete kv store',37,'delete_kvstore'),(116,'Can add migration history',38,'add_migrationhistory'),(117,'Can change migration history',38,'change_migrationhistory'),(118,'Can delete migration history',38,'delete_migrationhistory'),(119,'Can add avatar',39,'add_avatar'),(120,'Can change avatar',39,'change_avatar'),(121,'Can delete avatar',39,'delete_avatar'),(128,'Can add user exam',42,'add_userexam'),(129,'Can change user exam',42,'change_userexam'),(130,'Can delete user exam',42,'delete_userexam'),(131,'Can add question',43,'add_question'),(132,'Can change question',43,'change_question'),(133,'Can delete question',43,'delete_question'),(134,'Can add response',44,'add_response'),(135,'Can change response',44,'change_response'),(136,'Can delete response',44,'delete_response'),(137,'Can add vote',45,'add_vote'),(138,'Can change vote',45,'change_vote'),(139,'Can delete vote',45,'delete_vote'),(140,'Can add question answer',46,'add_questionanswer'),(141,'Can change question answer',46,'change_questionanswer'),(142,'Can delete question answer',46,'delete_questionanswer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','sias_peiqiang@qq.com','pbkdf2_sha256$10000$n854VpV0LjIl$2F6pShnpDmOs3dFgYFJOuPr1OOr8palYeKwnvNemj3w=',1,1,1,'2013-05-04 12:37:35','2013-04-23 04:50:25'),(-1,'AnonymousUser','','','','',0,1,0,'2013-04-23 04:50:25','2013-04-23 04:50:25'),(2,'budong','','','sias_peiqiang@163.com','pbkdf2_sha256$10000$EbClb5mS95mf$B3i9EwYnMVsyeffQaqE6gTSKw4CqN6190dEKkxeZDzI=',0,1,0,'2013-05-04 14:50:04','2013-04-23 04:54:02'),(3,'john','','','a@a.com','pbkdf2_sha256$10000$cc8HYdqpao6t$1sru//g/scX0IKXeYYW5LfqQEBE662sT/RVUvhS41Ns=',0,1,0,'2013-04-24 06:17:37','2013-04-24 06:17:37');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coltrane_category`
--

DROP TABLE IF EXISTS `coltrane_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coltrane_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coltrane_category`
--

LOCK TABLES `coltrane_category` WRITE;
/*!40000 ALTER TABLE `coltrane_category` DISABLE KEYS */;
INSERT INTO `coltrane_category` VALUES (12,'other','other','other'),(11,'database','database','database'),(10,'network','network','network'),(9,'system','system','system');
/*!40000 ALTER TABLE `coltrane_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coltrane_entry`
--

DROP TABLE IF EXISTS `coltrane_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coltrane_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `excerpt` longtext NOT NULL,
  `body` longtext NOT NULL,
  `pub_date` datetime NOT NULL,
  `excerpt_html` longtext NOT NULL,
  `body_html` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `coltrane_entry_cc846901` (`author_id`),
  KEY `coltrane_entry_a951d5d6` (`slug`),
  KEY `coltrane_entry_9bfa5f2e` (`categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coltrane_entry`
--

LOCK TABLES `coltrane_entry` WRITE;
/*!40000 ALTER TABLE `coltrane_entry` DISABLE KEYS */;
INSERT INTO `coltrane_entry` VALUES (1,'network_1','network_1','network_1','2013-04-23 04:57:12','<p>network_1</p>','<p>network_1</p>',1,1,0,'network_1',1,10),(2,'network_2','network_2','network_2','2013-04-23 04:57:37','<p>network_2</p>','<p>network_2</p>',1,1,0,'network_2',1,10),(3,'system_1','system_1','system_1','2013-04-23 04:58:00','<p>system_1</p>','<p>system_1</p>',1,1,0,'system_1',1,9),(4,'system_2','system_2','system_2','2013-04-23 04:58:25','<p>system_2</p>','<p>system_2</p>',1,1,0,'system_2',1,9),(5,'database_1','database_1','database_1','2013-04-23 04:58:41','<p>database_1</p>','<p>database_1</p>',1,1,0,'database_1',1,11),(6,'database_2','database_2','database_2','2013-04-23 04:58:57','<p>database_2</p>','<p>database_2</p>',1,1,0,'database_2',1,11),(7,'other_1','other_1','other_1','2013-04-23 04:59:09','<p>other_1</p>','<p>other_1</p>',1,1,0,'other_1',1,12),(8,'other_2','other_2','other_2','2013-04-23 04:59:24','<p>other_2</p>','<p>other_2</p>',1,1,0,'other_2',1,12),(9,'你好','你好','你好','2013-05-01 09:21:08','<p>你好</p>','<p>你好</p>',1,1,0,'hello',1,11),(10,'高兴','高兴','高兴','2013-05-01 09:21:32','<p>高兴</p>','<p>高兴</p>',1,1,0,'gaoxing',1,11);
/*!40000 ALTER TABLE `coltrane_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-04-23 04:52:04',1,15,'1','network_1',1,''),(2,'2013-04-23 04:52:11',1,15,'2','network_2',1,''),(3,'2013-04-23 04:52:22',1,15,'3','system_1',1,''),(4,'2013-04-23 04:52:32',1,15,'4','system_2',1,''),(5,'2013-04-23 04:52:44',1,15,'5','database_1',1,''),(6,'2013-04-23 04:52:56',1,15,'6','database_2',1,''),(7,'2013-04-23 04:53:05',1,15,'7','other_1',1,''),(8,'2013-04-23 04:53:13',1,15,'8','other_2',1,''),(9,'2013-04-23 04:54:21',1,3,'2','budong',2,'已修改 password 和 is_active 。'),(10,'2013-04-23 04:54:31',1,3,'2','budong',2,'已修改 password 和 is_staff 。'),(11,'2013-04-23 04:56:28',1,15,'5','database_1',3,''),(12,'2013-04-23 04:56:28',1,15,'6','database_2',3,''),(13,'2013-04-23 04:56:28',1,15,'1','network_1',3,''),(14,'2013-04-23 04:56:28',1,15,'2','network_2',3,''),(15,'2013-04-23 04:56:28',1,15,'7','other_1',3,''),(16,'2013-04-23 04:56:28',1,15,'8','other_2',3,''),(17,'2013-04-23 04:56:28',1,15,'3','system_1',3,''),(18,'2013-04-23 04:56:28',1,15,'4','system_2',3,''),(19,'2013-04-23 04:56:40',1,15,'9','system',1,''),(20,'2013-04-23 04:56:48',1,15,'10','network',1,''),(21,'2013-04-23 04:56:59',1,15,'11','database',1,''),(22,'2013-04-23 04:57:05',1,15,'12','other',1,''),(23,'2013-04-23 04:57:36',1,16,'1','network_1',1,''),(24,'2013-04-23 04:57:58',1,16,'2','network_2',1,''),(25,'2013-04-23 04:58:23',1,16,'3','system_1',1,''),(26,'2013-04-23 04:58:39',1,16,'4','system_2',1,''),(27,'2013-04-23 04:58:55',1,16,'5','database_1',1,''),(28,'2013-04-23 04:59:07',1,16,'6','database_2',1,''),(29,'2013-04-23 04:59:23',1,16,'7','other_1',1,''),(30,'2013-04-23 04:59:39',1,16,'8','other_2',1,''),(31,'2013-04-23 11:26:27',1,24,'4','',1,''),(32,'2013-04-23 11:28:34',1,23,'1','1+1? - no',1,''),(33,'2013-04-23 11:29:16',1,24,'5','',1,''),(34,'2013-04-23 11:50:49',1,23,'1','who am I ? - lee',1,''),(35,'2013-04-23 11:51:03',1,23,'2','hello ? - hello',1,''),(36,'2013-04-24 18:03:20',1,3,'2','budong',2,'已修改 password 和 is_staff 。'),(37,'2013-04-24 18:13:33',1,3,'2','budong',2,'已修改 password 和 is_staff 。'),(38,'2013-04-24 18:13:47',1,3,'2','budong',2,'已修改 password 和 is_staff 。'),(39,'2013-04-25 01:22:36',1,26,'1','budong',2,'已修改 mood 。'),(40,'2013-04-25 01:58:42',1,26,'1','budong',1,''),(41,'2013-04-27 10:22:52',1,27,'1','xuexi',1,''),(42,'2013-04-27 10:23:29',1,28,'1','xuexi',1,''),(69,'2013-05-04 08:13:35',1,46,'5','2+2=?',1,''),(70,'2013-05-04 08:13:55',1,46,'2','born ?',2,'已修改 a 和 b 。'),(68,'2013-05-04 08:13:04',1,46,'4','1+1=?',1,''),(67,'2013-05-04 08:12:44',1,46,'3','Love me?',1,''),(66,'2013-05-04 08:12:06',1,46,'2','born ?',1,''),(65,'2013-05-04 08:11:38',1,46,'1','who are you',1,''),(72,'2013-05-04 12:38:19',1,43,'1','Question object',1,''),(71,'2013-05-04 08:14:11',1,46,'4','1+1=?',2,'已修改 a 和 d 。'),(58,'2013-05-01 09:21:32',1,16,'9','你好',1,''),(59,'2013-05-01 09:21:54',1,16,'10','高兴',1,''),(60,'2013-05-04 06:55:23',1,17,'1','budong',3,''),(61,'2013-05-04 07:07:22',1,17,'2','budong',1,''),(62,'2013-05-04 07:18:15',1,17,'3','admin',3,''),(63,'2013-05-04 07:18:15',1,17,'2','budong',3,''),(64,'2013-05-04 07:18:48',1,17,'4','admin',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comment_flags`
--

DROP TABLE IF EXISTS `django_comment_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_fbfc09f1` (`user_id`),
  KEY `django_comment_flags_9b3dc754` (`comment_id`),
  KEY `django_comment_flags_111c90f9` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comment_flags`
--

LOCK TABLES `django_comment_flags` WRITE;
/*!40000 ALTER TABLE `django_comment_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comment_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comments`
--

DROP TABLE IF EXISTS `django_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_pk` longtext NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(75) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime NOT NULL,
  `ip_address` char(15) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_comments_e4470c6e` (`content_type_id`),
  KEY `django_comments_6223029` (`site_id`),
  KEY `django_comments_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comments`
--

LOCK TABLES `django_comments` WRITE;
/*!40000 ALTER TABLE `django_comments` DISABLE KEYS */;
INSERT INTO `django_comments` VALUES (1,16,'5',1,2,'df','a@qq.com','http://a.com/','fsd','2013-04-23 06:51:17','192.168.41.1',1,0),(2,16,'6',1,2,'lee','lee@lee.com','http://lee.com/','lee','2013-04-24 18:40:54','192.168.41.1',1,0);
/*!40000 ALTER TABLE `django_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'comment','comments','comment'),(9,'comment flag','comments','commentflag'),(10,'userena registration','userena','userenasignup'),(11,'source','easy_thumbnails','source'),(12,'thumbnail','easy_thumbnails','thumbnail'),(13,'user object permission','guardian','userobjectpermission'),(14,'group object permission','guardian','groupobjectpermission'),(15,'category','coltrane','category'),(16,'entry','coltrane','entry'),(17,'my profile','accounts','myprofile'),(18,'profile','exam','profile'),(19,'question','exam','question'),(20,'answer','exam','answer'),(21,'quiz','exam','quiz'),(22,'question paper','exam','questionpaper'),(23,'question','lola','question'),(24,'participant','lola','participant'),(25,'answer','lola','answer'),(26,'sign every day','sign','signeveryday'),(27,'Category','pybb','category'),(28,'Forum','pybb','forum'),(29,'Topic','pybb','topic'),(30,'Post','pybb','post'),(31,'Profile','pybb','profile'),(32,'Attachment','pybb','attachment'),(33,'Topic read tracker','pybb','topicreadtracker'),(34,'Forum read tracker','pybb','forumreadtracker'),(35,'Poll answer','pybb','pollanswer'),(36,'Poll answer user','pybb','pollansweruser'),(37,'kv store','thumbnail','kvstore'),(38,'migration history','south','migrationhistory'),(39,'avatar','simpleavatar','avatar'),(42,'user exam','exam_test','userexam'),(43,'question','aiteo','question'),(44,'response','aiteo','response'),(45,'vote','voting','vote'),(46,'question answer','exam_test','questionanswer');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('f0a30ea76e841dc8dabd602b232b059d','MzhmYTEzMWRjOWIwNzdjNzhhNjdkMWU0Y2I3NTA1YWI4MTZlNTM1NjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAlUSX2F1dGhfdXNlcl9iYWNrZW5kcQNVLXVzZXJlbmEuYmFja2VuZHMuVXNlcmVu\nYUF1dGhlbnRpY2F0aW9uQmFja2VuZHEEVQ9fc2Vzc2lvbl9leHBpcnlxBUsAVQ9kamFuZ29fbGFu\nZ3VhZ2VxBlgFAAAAemgtY25xB3Uu\n','2013-05-12 02:38:21'),('92b66805b4a3e5c02ecfcd47f2f3c4f1','MzVhYWRhYTBmMzM5NzViMjE0ZDkwN2Y0NjA3YmIwODdhMjc0MmVkMjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAlUSX2F1dGhfdXNlcl9iYWNrZW5kcQNVLXVzZXJlbmEuYmFja2VuZHMuVXNlcmVu\nYUF1dGhlbnRpY2F0aW9uQmFja2VuZHEEVQ9fc2Vzc2lvbl9leHBpcnlxBUsAVQ5wYXJ0aWNpcGFu\ndF9pZHEGigEMdS4=\n','2013-05-07 19:34:23'),('1d58644e16e50471e67ba8a27f20a077','NjRiOWVjMmRmMmZkNWRhMzVjZjYyZTY0MDk3MWEwNDRlNThkZTgwZjqAAn1xAShVD19zZXNzaW9u\nX2V4cGlyeXECSwBVEl9hdXRoX3VzZXJfYmFja2VuZHEDVS11c2VyZW5hLmJhY2tlbmRzLlVzZXJl\nbmFBdXRoZW50aWNhdGlvbkJhY2tlbmRxBFUNX2F1dGhfdXNlcl9pZHEFigECdS4=\n','2013-05-09 04:24:06'),('ad12ee054f286459c9763774a9c35e53','NjRiOWVjMmRmMmZkNWRhMzVjZjYyZTY0MDk3MWEwNDRlNThkZTgwZjqAAn1xAShVD19zZXNzaW9u\nX2V4cGlyeXECSwBVEl9hdXRoX3VzZXJfYmFja2VuZHEDVS11c2VyZW5hLmJhY2tlbmRzLlVzZXJl\nbmFBdXRoZW50aWNhdGlvbkJhY2tlbmRxBFUNX2F1dGhfdXNlcl9pZHEFigECdS4=\n','2013-05-08 18:14:50'),('20583522a9ba34e7eac1f02e305015df','MzhmYTEzMWRjOWIwNzdjNzhhNjdkMWU0Y2I3NTA1YWI4MTZlNTM1NjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAlUSX2F1dGhfdXNlcl9iYWNrZW5kcQNVLXVzZXJlbmEuYmFja2VuZHMuVXNlcmVu\nYUF1dGhlbnRpY2F0aW9uQmFja2VuZHEEVQ9fc2Vzc2lvbl9leHBpcnlxBUsAVQ9kamFuZ29fbGFu\nZ3VhZ2VxBlgFAAAAemgtY25xB3Uu\n','2013-05-12 04:49:35'),('edf95c119977eef77763bf2739ab7ca2','ZjM3N2VlNDc4YWEwOTBkNTIzMzkyN2UxNGY0Yjc2Y2QxZmE5NzBhZDqAAn1xAS4=\n','2013-05-18 05:13:17'),('aadf9ba4cf629b038328a8f66e20f65d','ODY5YTVlOTcxYzBkODRhZDA4YjE1ZmQ2NTdhNGM0MjE0Mzg5ODdmZDqAAn1xAShVBXJpZ2h0cQJL\nAFUNX2F1dGhfdXNlcl9pZHEDigECVRJfYXV0aF91c2VyX2JhY2tlbmRxBFUtdXNlcmVuYS5iYWNr\nZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kcQVVAnFhcQZ9cQdLAH1xCChVCGFuc3dl\ncl9kcQlYBgAAAGhhbm1laXEKVQhhbnN3ZXJfY3ELWAMAAAB0b21xDFUIYW5zd2VyX2JxDVgEAAAA\namFja3EOVQhhbnN3ZXJfYXEPWAMAAABsZWVxEFUIcXVlc3Rpb25xEVgBAAAAc1UPYW5zd2VyX2lz\nX3JpZ2h0cRJYAQAAAEF1c1UDbnVtcRNLAVUPX3Nlc3Npb25fZXhwaXJ5cRRKAI0nAFUDb3VycRVL\nAFUPZGphbmdvX2xhbmd1YWdlcRZYBQAAAHpoLWNucRd1Lg==\n','2013-05-30 01:13:52'),('3186f5b80fc54baebff856d3b5673a38','MThhZTQ1NDQ0NmM1N2I4ZmRmODRiZDNhZmI4ZTkwZjRiNDhlOTQ2MDqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAVUSX2F1dGhfdXNlcl9iYWNrZW5kcQNVKWRqYW5nby5jb250cmliLmF1dGguYmFj\na2VuZHMuTW9kZWxCYWNrZW5kcQRVD2RqYW5nb19sYW5ndWFnZXEFWAUAAAB6aC1jbnEGdS4=\n','2013-05-16 00:35:23'),('367d7768d5e7c531763fec97c636fbea','ZjM3N2VlNDc4YWEwOTBkNTIzMzkyN2UxNGY0Yjc2Y2QxZmE5NzBhZDqAAn1xAS4=\n','2013-05-18 05:13:09'),('82b5d836f86625f7951d1308f82c7038','MGIyMTYyM2VlYmI0ZDU1ZjZkMTkwYmNlY2I3ZTEwMDZjYmQ3MWUyNTqAAn1xAShVD19zZXNzaW9u\nX2V4cGlyeXECSgCNJwBVEl9hdXRoX3VzZXJfYmFja2VuZHEDVS11c2VyZW5hLmJhY2tlbmRzLlVz\nZXJlbmFBdXRoZW50aWNhdGlvbkJhY2tlbmRxBFUNX2F1dGhfdXNlcl9pZHEFigECdS4=\n','2013-06-03 14:50:04');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_hash` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_3a997c55` (`storage_hash`),
  KEY `easy_thumbnails_source_52094d6e` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_hash` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thumbnail_3a997c55` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_52094d6e` (`name`),
  KEY `easy_thumbnails_thumbnail_89f89e85` (`source_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_test_questionanswer`
--

DROP TABLE IF EXISTS `exam_test_questionanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_test_questionanswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `is_right` varchar(255) NOT NULL,
  `a` varchar(1024) NOT NULL,
  `b` varchar(1024) NOT NULL,
  `c` varchar(1024) NOT NULL,
  `d` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_test_questionanswer`
--

LOCK TABLES `exam_test_questionanswer` WRITE;
/*!40000 ALTER TABLE `exam_test_questionanswer` DISABLE KEYS */;
INSERT INTO `exam_test_questionanswer` VALUES (1,'who are you','who','A','lee','jack','marry','tom'),(2,'born ?','born','B','1991','1990','1992','1993'),(3,'Love me?','love','C','no','yes','don\'t know','guess'),(4,'1+1=?','1','D','5','3','4','2'),(5,'2+2=?','2','C','1','3','4','5');
/*!40000 ALTER TABLE `exam_test_questionanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_test_userexam`
--

DROP TABLE IF EXISTS `exam_test_userexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_test_userexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pub_date` datetime NOT NULL,
  `rate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_test_userexam_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_test_userexam`
--

LOCK TABLES `exam_test_userexam` WRITE;
/*!40000 ALTER TABLE `exam_test_userexam` DISABLE KEYS */;
INSERT INTO `exam_test_userexam` VALUES (1,2,'2013-05-04 09:45:49','80'),(2,1,'2013-05-04 09:47:00','100.0'),(3,2,'2013-05-04 10:33:23','100.0'),(4,2,'2013-05-04 10:36:26','100.0'),(5,2,'2013-05-04 10:39:46','80.0'),(6,2,'2013-05-04 10:41:14','100.0'),(7,2,'2013-05-04 11:09:57','100.0');
/*!40000 ALTER TABLE `exam_test_userexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_groupobjectpermission`
--

DROP TABLE IF EXISTS `guardian_groupobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`,`object_pk`),
  KEY `guardian_groupobjectpermission_1e014c8f` (`permission_id`),
  KEY `guardian_groupobjectpermission_e4470c6e` (`content_type_id`),
  KEY `guardian_groupobjectpermission_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_groupobjectpermission`
--

LOCK TABLES `guardian_groupobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_userobjectpermission`
--

DROP TABLE IF EXISTS `guardian_userobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_userobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`,`object_pk`),
  KEY `guardian_userobjectpermission_1e014c8f` (`permission_id`),
  KEY `guardian_userobjectpermission_e4470c6e` (`content_type_id`),
  KEY `guardian_userobjectpermission_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_userobjectpermission`
--

LOCK TABLES `guardian_userobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_userobjectpermission` DISABLE KEYS */;
INSERT INTO `guardian_userobjectpermission` VALUES (1,53,17,'1',2),(2,54,17,'1',2),(3,55,17,'1',2),(4,8,3,'2',2),(5,9,3,'2',2);
/*!40000 ALTER TABLE `guardian_userobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_signeveryday`
--

DROP TABLE IF EXISTS `sign_signeveryday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_signeveryday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pub_date` date NOT NULL,
  `mood` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sign_signeveryday_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_signeveryday`
--

LOCK TABLES `sign_signeveryday` WRITE;
/*!40000 ALTER TABLE `sign_signeveryday` DISABLE KEYS */;
INSERT INTO `sign_signeveryday` VALUES (1,1,'2013-05-04','ni'),(2,2,'2013-05-04','你好');
/*!40000 ALTER TABLE `sign_signeveryday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simpleavatar_avatar`
--

DROP TABLE IF EXISTS `simpleavatar_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simpleavatar_avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(1024) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simpleavatar_avatar`
--

LOCK TABLES `simpleavatar_avatar` WRITE;
/*!40000 ALTER TABLE `simpleavatar_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `simpleavatar_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userena_userenasignup`
--

DROP TABLE IF EXISTS `userena_userenasignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userena_userenasignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_active` datetime DEFAULT NULL,
  `activation_key` varchar(40) NOT NULL,
  `activation_notification_send` tinyint(1) NOT NULL,
  `email_unconfirmed` varchar(75) NOT NULL,
  `email_confirmation_key` varchar(40) NOT NULL,
  `email_confirmation_key_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userena_userenasignup`
--

LOCK TABLES `userena_userenasignup` WRITE;
/*!40000 ALTER TABLE `userena_userenasignup` DISABLE KEYS */;
INSERT INTO `userena_userenasignup` VALUES (1,2,NULL,'3d65d79cca780d531bf764db4581e3cfab58a436',0,'','',NULL);
/*!40000 ALTER TABLE `userena_userenasignup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `vote` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`content_type_id`,`object_id`),
  KEY `votes_fbfc09f1` (`user_id`),
  KEY `votes_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-04 23:14:18
