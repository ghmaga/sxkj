# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.10.10 (MySQL 5.7.22-0ubuntu18.04.1)
# Database: ladmin
# Generation Time: 2018-08-06 11:44:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`)
VALUES
	(1,0,1,'后台主页','fa-bar-chart','/',NULL,'2018-08-02 11:09:34'),
	(2,0,2,'后台管理','fa-tasks',NULL,NULL,'2018-08-02 11:09:12'),
	(3,2,3,'用户管理','fa-users','auth/users',NULL,'2018-08-02 11:10:07'),
	(4,2,4,'角色管理','fa-user','auth/roles',NULL,'2018-08-02 11:10:19'),
	(5,2,5,'权限管理','fa-ban','auth/permissions',NULL,'2018-08-02 11:10:29'),
	(6,2,6,'菜单管理','fa-bars','auth/menu',NULL,'2018-08-02 11:10:51'),
	(7,2,7,'操作日志','fa-history','auth/logs',NULL,'2018-08-02 11:11:00'),
	(8,0,0,'产品管理','fa-bars','product','2018-07-26 14:03:14','2018-08-02 11:11:12'),
	(9,0,0,'轮换管理','fa-area-chart','slide','2018-07-26 14:03:23','2018-08-02 16:52:26'),
	(10,0,0,'分类管理','fa-bars','category','2018-08-02 11:11:42','2018-08-02 12:48:31'),
	(11,0,0,'新闻管理','fa-bars','news','2018-08-02 11:11:58','2018-08-02 11:18:12'),
	(12,0,0,'厂牌管理','fa-bars','brands','2018-08-02 11:12:28','2018-08-02 11:12:28'),
	(13,0,0,'关于管理','fa-street-view','about','2018-08-02 11:12:41','2018-08-02 16:51:39'),
	(14,0,0,'招聘管理','fa-street-view','job','2018-08-02 11:13:00','2018-08-02 16:52:08'),
	(15,0,7,'帮助工具','fa-gears',NULL,'2018-08-02 16:47:15','2018-08-02 16:49:05'),
	(16,15,8,'脚手架','fa-keyboard-o','helpers/scaffold','2018-08-02 16:47:15','2018-08-02 16:49:35'),
	(17,15,9,'数据库命令行','fa-database','helpers/terminal/database','2018-08-02 16:47:15','2018-08-02 16:49:48'),
	(18,15,10,'artisan命令行','fa-terminal','helpers/terminal/artisan','2018-08-02 16:47:15','2018-08-02 16:50:05'),
	(19,15,11,'系统路由','fa-list-alt','helpers/routes','2018-08-02 16:47:15','2018-08-02 16:50:22');

/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
