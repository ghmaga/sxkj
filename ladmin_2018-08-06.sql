# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.10.10 (MySQL 5.7.22-0ubuntu18.04.1)
# Database: ladmin
# Generation Time: 2018-08-06 11:51:09 +0000
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


# Dump of table admin_operation_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`)
VALUES
	(1,1,'admin/auth/login','GET','192.168.10.1','[]','2018-07-26 14:02:34','2018-07-26 14:02:34'),
	(2,1,'admin','GET','192.168.10.1','[]','2018-07-26 14:02:35','2018-07-26 14:02:35'),
	(3,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:02:38','2018-07-26 14:02:38'),
	(4,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:02:47','2018-07-26 14:02:47'),
	(5,1,'admin/product','GET','192.168.10.1','[]','2018-07-26 14:02:53','2018-07-26 14:02:53'),
	(6,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:02:58','2018-07-26 14:02:58'),
	(7,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"product\",\"icon\":\"fa-bars\",\"uri\":\"product\",\"roles\":[null],\"_token\":\"25f64LCcfpplwvf1kFEKETgBVWqPuL6Ib2xqFC3d\"}','2018-07-26 14:03:13','2018-07-26 14:03:13'),
	(8,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-07-26 14:03:14','2018-07-26 14:03:14'),
	(9,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"slide\",\"icon\":\"fa-bars\",\"uri\":\"slide\",\"roles\":[null],\"_token\":\"25f64LCcfpplwvf1kFEKETgBVWqPuL6Ib2xqFC3d\"}','2018-07-26 14:03:23','2018-07-26 14:03:23'),
	(10,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-07-26 14:03:24','2018-07-26 14:03:24'),
	(11,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-07-26 14:03:26','2018-07-26 14:03:26'),
	(12,1,'admin/product','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:03:29','2018-07-26 14:03:29'),
	(13,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:03:31','2018-07-26 14:03:31'),
	(14,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:03:34','2018-07-26 14:03:34'),
	(15,1,'admin/slide','POST','192.168.10.1','{\"_token\":\"25f64LCcfpplwvf1kFEKETgBVWqPuL6Ib2xqFC3d\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-07-26 14:03:36','2018-07-26 14:03:36'),
	(16,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:03:36','2018-07-26 14:03:36'),
	(17,1,'admin/product','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:03:42','2018-07-26 14:03:42'),
	(18,1,'admin/product/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:03:44','2018-07-26 14:03:44'),
	(19,1,'admin/product','POST','192.168.10.1','{\"_token\":\"25f64LCcfpplwvf1kFEKETgBVWqPuL6Ib2xqFC3d\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/product\"}','2018-07-26 14:03:45','2018-07-26 14:03:45'),
	(20,1,'admin/product','GET','192.168.10.1','[]','2018-07-26 14:03:46','2018-07-26 14:03:46'),
	(21,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 14:03:58','2018-07-26 14:03:58'),
	(22,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:15:26','2018-07-26 14:15:26'),
	(23,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:15:52','2018-07-26 14:15:52'),
	(24,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:16:01','2018-07-26 14:16:01'),
	(25,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:16:30','2018-07-26 14:16:30'),
	(26,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:17:02','2018-07-26 14:17:02'),
	(27,1,'admin/slide','GET','192.168.10.1','[]','2018-07-26 14:17:14','2018-07-26 14:17:14'),
	(28,1,'admin/slide','GET','192.168.10.1','[]','2018-08-01 15:25:12','2018-08-01 15:25:12'),
	(29,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-01 15:25:19','2018-08-01 15:25:19'),
	(30,1,'admin/product','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-01 15:25:21','2018-08-01 15:25:21'),
	(31,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-01 15:25:41','2018-08-01 15:25:41'),
	(32,1,'admin/product','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-01 15:25:53','2018-08-01 15:25:53'),
	(33,1,'admin/product/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-01 15:27:12','2018-08-01 15:27:12'),
	(34,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:28:00','2018-08-01 15:28:00'),
	(35,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:28:33','2018-08-01 15:28:33'),
	(36,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:28:46','2018-08-01 15:28:46'),
	(37,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:28:56','2018-08-01 15:28:56'),
	(38,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:30:56','2018-08-01 15:30:56'),
	(39,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:31:30','2018-08-01 15:31:30'),
	(40,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:31:58','2018-08-01 15:31:58'),
	(41,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:32:13','2018-08-01 15:32:13'),
	(42,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:33:17','2018-08-01 15:33:17'),
	(43,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:33:27','2018-08-01 15:33:27'),
	(44,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:34:23','2018-08-01 15:34:23'),
	(45,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:36:27','2018-08-01 15:36:27'),
	(46,1,'admin/product/create','GET','192.168.10.1','[]','2018-08-01 15:37:12','2018-08-01 15:37:12'),
	(47,1,'admin','GET','192.168.10.1','[]','2018-08-02 11:07:43','2018-08-02 11:07:43'),
	(48,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:07:46','2018-08-02 11:07:46'),
	(49,1,'admin','GET','192.168.10.1','[]','2018-08-02 11:08:27','2018-08-02 11:08:27'),
	(50,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:08:36','2018-08-02 11:08:36'),
	(51,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:08:43','2018-08-02 11:08:43'),
	(52,1,'admin/auth/menu/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:08:48','2018-08-02 11:08:48'),
	(53,1,'admin/auth/menu/1','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:08:57','2018-08-02 11:08:57'),
	(54,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:08:58','2018-08-02 11:08:58'),
	(55,1,'admin/auth/menu/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:09:03','2018-08-02 11:09:03'),
	(56,1,'admin/auth/menu/2','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:09:12','2018-08-02 11:09:12'),
	(57,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:09:12','2018-08-02 11:09:12'),
	(58,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:09:14','2018-08-02 11:09:14'),
	(59,1,'admin/auth/menu/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:09:25','2018-08-02 11:09:25'),
	(60,1,'admin/auth/menu/1','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u4e3b\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:09:34','2018-08-02 11:09:34'),
	(61,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:09:35','2018-08-02 11:09:35'),
	(62,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:09:37','2018-08-02 11:09:37'),
	(63,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:09:38','2018-08-02 11:09:38'),
	(64,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:09:41','2018-08-02 11:09:41'),
	(65,1,'admin/auth/menu/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:09:46','2018-08-02 11:09:46'),
	(66,1,'admin/auth/menu/3','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:10:06','2018-08-02 11:10:06'),
	(67,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:10:07','2018-08-02 11:10:07'),
	(68,1,'admin/auth/menu/4/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:10:11','2018-08-02 11:10:11'),
	(69,1,'admin/auth/menu/4','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:10:19','2018-08-02 11:10:19'),
	(70,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:10:19','2018-08-02 11:10:19'),
	(71,1,'admin/auth/menu/5/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:10:23','2018-08-02 11:10:23'),
	(72,1,'admin/auth/menu/5','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:10:29','2018-08-02 11:10:29'),
	(73,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:10:29','2018-08-02 11:10:29'),
	(74,1,'admin/auth/menu/6/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:10:33','2018-08-02 11:10:33'),
	(75,1,'admin/auth/menu/6','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:10:51','2018-08-02 11:10:51'),
	(76,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:10:52','2018-08-02 11:10:52'),
	(77,1,'admin/auth/menu/7/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:10:55','2018-08-02 11:10:55'),
	(78,1,'admin/auth/menu/7','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:11:00','2018-08-02 11:11:00'),
	(79,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:11:01','2018-08-02 11:11:01'),
	(80,1,'admin/auth/menu/8/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:11:04','2018-08-02 11:11:04'),
	(81,1,'admin/auth/menu/8','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u4ea7\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"product\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:11:12','2018-08-02 11:11:12'),
	(82,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:11:12','2018-08-02 11:11:12'),
	(83,1,'admin/auth/menu/9/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:11:16','2018-08-02 11:11:16'),
	(84,1,'admin/auth/menu/9','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u6362\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"slide\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:11:24','2018-08-02 11:11:24'),
	(85,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:11:24','2018-08-02 11:11:24'),
	(86,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"cate\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 11:11:42','2018-08-02 11:11:42'),
	(87,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:11:43','2018-08-02 11:11:43'),
	(88,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u65b0\\u95fb\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 11:11:58','2018-08-02 11:11:58'),
	(89,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:11:59','2018-08-02 11:11:59'),
	(90,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5382\\u724c\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"brands\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 11:12:27','2018-08-02 11:12:27'),
	(91,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:12:28','2018-08-02 11:12:28'),
	(92,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5173\\u4e8e\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"about\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 11:12:41','2018-08-02 11:12:41'),
	(93,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:12:42','2018-08-02 11:12:42'),
	(94,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u62db\\u8058\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"job\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 11:12:59','2018-08-02 11:12:59'),
	(95,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:13:00','2018-08-02 11:13:00'),
	(96,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:13:03','2018-08-02 11:13:03'),
	(97,1,'admin/auth/menu/11/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:18:07','2018-08-02 11:18:07'),
	(98,1,'admin/auth/menu/11','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u65b0\\u95fb\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"news\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 11:18:12','2018-08-02 11:18:12'),
	(99,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 11:18:13','2018-08-02 11:18:13'),
	(100,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:32:30','2018-08-02 11:32:30'),
	(101,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:36:42','2018-08-02 11:36:42'),
	(102,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:36:47','2018-08-02 11:36:47'),
	(103,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:36:50','2018-08-02 11:36:50'),
	(104,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:37:47','2018-08-02 11:37:47'),
	(105,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:37:51','2018-08-02 11:37:51'),
	(106,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:37:53','2018-08-02 11:37:53'),
	(107,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:38:56','2018-08-02 11:38:56'),
	(108,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:39:07','2018-08-02 11:39:07'),
	(109,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:39:30','2018-08-02 11:39:30'),
	(110,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:39:32','2018-08-02 11:39:32'),
	(111,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:39:34','2018-08-02 11:39:34'),
	(112,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:40:25','2018-08-02 11:40:25'),
	(113,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:40:27','2018-08-02 11:40:27'),
	(114,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 11:41:04','2018-08-02 11:41:04'),
	(115,1,'admin/cate','POST','192.168.10.1','{\"name\":\"\\u8f6e\\u6362\\u56fe\",\"description\":\"\\u5404\\u6a21\\u5757\\u8f6e\\u6362\\u56fe\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 11:41:41','2018-08-02 11:41:41'),
	(116,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:41:42','2018-08-02 11:41:42'),
	(117,1,'admin/cate/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:42:14','2018-08-02 11:42:14'),
	(118,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:42:17','2018-08-02 11:42:17'),
	(119,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:42:29','2018-08-02 11:42:29'),
	(120,1,'admin/cate/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:42:32','2018-08-02 11:42:32'),
	(121,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:42:40','2018-08-02 11:42:40'),
	(122,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 11:52:36','2018-08-02 11:52:36'),
	(123,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:52:41','2018-08-02 11:52:41'),
	(124,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:52:41','2018-08-02 11:52:41'),
	(125,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:52:46','2018-08-02 11:52:46'),
	(126,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 11:58:04','2018-08-02 11:58:04'),
	(127,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 11:58:15','2018-08-02 11:58:15'),
	(128,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 11:58:32','2018-08-02 11:58:32'),
	(129,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:58:34','2018-08-02 11:58:34'),
	(130,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 11:58:39','2018-08-02 11:58:39'),
	(131,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:05:40','2018-08-02 12:05:40'),
	(132,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:07:48','2018-08-02 12:07:48'),
	(133,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:07:50','2018-08-02 12:07:50'),
	(134,1,'admin/product','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:07:51','2018-08-02 12:07:51'),
	(135,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:07:57','2018-08-02 12:07:57'),
	(136,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:07:58','2018-08-02 12:07:58'),
	(137,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 12:08:00','2018-08-02 12:08:00'),
	(138,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 12:08:21','2018-08-02 12:08:21'),
	(139,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:08:24','2018-08-02 12:08:24'),
	(140,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:08:56','2018-08-02 12:08:56'),
	(141,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:09:54','2018-08-02 12:09:54'),
	(142,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 12:10:18','2018-08-02 12:10:18'),
	(143,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:15:02','2018-08-02 12:15:02'),
	(144,1,'admin/cate','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:15:03','2018-08-02 12:15:03'),
	(145,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:15:06','2018-08-02 12:15:06'),
	(146,1,'admin/cate','POST','192.168.10.1','{\"pid\":\"0\",\"name\":\"\\u8f6e\\u6362\",\"description\":\"\\u8f6e\\u6362\\u56fe\\u5206\\u7c7b\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/cate\"}','2018-08-02 12:15:29','2018-08-02 12:15:29'),
	(147,1,'admin/cate','GET','192.168.10.1','[]','2018-08-02 12:15:30','2018-08-02 12:15:30'),
	(148,1,'admin/cate/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:15:47','2018-08-02 12:15:47'),
	(149,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:15:58','2018-08-02 12:15:58'),
	(150,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:16:57','2018-08-02 12:16:57'),
	(151,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:18:10','2018-08-02 12:18:10'),
	(152,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:20:07','2018-08-02 12:20:07'),
	(153,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:20:23','2018-08-02 12:20:23'),
	(154,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:20:34','2018-08-02 12:20:34'),
	(155,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:20:44','2018-08-02 12:20:44'),
	(156,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:21:21','2018-08-02 12:21:21'),
	(157,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:22:48','2018-08-02 12:22:48'),
	(158,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:23:15','2018-08-02 12:23:15'),
	(159,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:23:25','2018-08-02 12:23:25'),
	(160,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:24:02','2018-08-02 12:24:02'),
	(161,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:24:55','2018-08-02 12:24:55'),
	(162,1,'admin/cate/create','GET','192.168.10.1','[]','2018-08-02 12:25:15','2018-08-02 12:25:15'),
	(163,1,'admin','GET','192.168.10.1','[]','2018-08-02 12:48:03','2018-08-02 12:48:03'),
	(164,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:48:09','2018-08-02 12:48:09'),
	(165,1,'admin/auth/menu/10/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:48:17','2018-08-02 12:48:17'),
	(166,1,'admin/auth/menu/10','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"category\",\"roles\":[null],\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 12:48:31','2018-08-02 12:48:31'),
	(167,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 12:48:32','2018-08-02 12:48:32'),
	(168,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 12:48:43','2018-08-02 12:48:43'),
	(169,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:49:24','2018-08-02 12:49:24'),
	(170,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:49:28','2018-08-02 12:49:28'),
	(171,1,'admin/category/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:49:30','2018-08-02 12:49:30'),
	(172,1,'admin/category/create','GET','192.168.10.1','[]','2018-08-02 12:57:53','2018-08-02 12:57:53'),
	(173,1,'admin/category/create','GET','192.168.10.1','[]','2018-08-02 12:59:11','2018-08-02 12:59:11'),
	(174,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 12:59:17','2018-08-02 12:59:17'),
	(175,1,'admin/category/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 12:59:24','2018-08-02 12:59:24'),
	(176,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 12:59:25','2018-08-02 12:59:25'),
	(177,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:00:56','2018-08-02 13:00:56'),
	(178,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:01:00','2018-08-02 13:01:00'),
	(179,1,'admin/category/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:01:05','2018-08-02 13:01:05'),
	(180,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:01:06','2018-08-02 13:01:06'),
	(181,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:16:36','2018-08-02 13:16:36'),
	(182,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:17:26','2018-08-02 13:17:26'),
	(183,1,'admin/category','POST','192.168.10.1','{\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_order\":\"[]\"}','2018-08-02 13:19:14','2018-08-02 13:19:14'),
	(184,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:19:24','2018-08-02 13:19:24'),
	(185,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:19:27','2018-08-02 13:19:27'),
	(186,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:19:29','2018-08-02 13:19:29'),
	(187,1,'admin/category','POST','192.168.10.1','{\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_order\":\"[]\"}','2018-08-02 13:19:33','2018-08-02 13:19:33'),
	(188,1,'admin/category','POST','192.168.10.1','{\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_order\":\"[]\"}','2018-08-02 13:19:34','2018-08-02 13:19:34'),
	(189,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:19:34','2018-08-02 13:19:34'),
	(190,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:19:35','2018-08-02 13:19:35'),
	(191,1,'admin/category','POST','192.168.10.1','{\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_order\":\"[]\"}','2018-08-02 13:19:51','2018-08-02 13:19:51'),
	(192,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:19:58','2018-08-02 13:19:58'),
	(193,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:20:16','2018-08-02 13:20:16'),
	(194,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:20:19','2018-08-02 13:20:19'),
	(195,1,'admin/category','POST','192.168.10.1','{\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_order\":\"[]\"}','2018-08-02 13:20:22','2018-08-02 13:20:22'),
	(196,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:20:23','2018-08-02 13:20:23'),
	(197,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:20:31','2018-08-02 13:20:31'),
	(198,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u8f6e\\u6362\\u56fe\",\"description\":\"\\u8f6e\\u6362\\u56fe\\u7c7b\\u578b\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:20:52','2018-08-02 13:20:52'),
	(199,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:20:53','2018-08-02 13:20:53'),
	(200,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:21:34','2018-08-02 13:21:34'),
	(201,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:21:37','2018-08-02 13:21:37'),
	(202,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u8f6e\\u6362\\u56fe\",\"description\":\"\\u8f6e\\u6362\\u56fe\\u7c7b\\u578b\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:21:55','2018-08-02 13:21:55'),
	(203,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:21:55','2018-08-02 13:21:55'),
	(204,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:21:57','2018-08-02 13:21:57'),
	(205,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:21:58','2018-08-02 13:21:58'),
	(206,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:00','2018-08-02 13:22:00'),
	(207,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:01','2018-08-02 13:22:01'),
	(208,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:02','2018-08-02 13:22:02'),
	(209,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:04','2018-08-02 13:22:04'),
	(210,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:05','2018-08-02 13:22:05'),
	(211,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:06','2018-08-02 13:22:06'),
	(212,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:08','2018-08-02 13:22:08'),
	(213,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:09','2018-08-02 13:22:09'),
	(214,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:22:10','2018-08-02 13:22:10'),
	(215,1,'admin/category/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:22:24','2018-08-02 13:22:24'),
	(216,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:22:26','2018-08-02 13:22:26'),
	(217,1,'admin/category/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:22:37','2018-08-02 13:22:37'),
	(218,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:22:42','2018-08-02 13:22:42'),
	(219,1,'admin/category/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:22:47','2018-08-02 13:22:47'),
	(220,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:22:51','2018-08-02 13:22:51'),
	(221,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:25:10','2018-08-02 13:25:10'),
	(222,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:25:24','2018-08-02 13:25:24'),
	(223,1,'admin/category','POST','192.168.10.1','{\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_order\":\"[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":2}]\"}','2018-08-02 13:25:27','2018-08-02 13:25:27'),
	(224,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:25:28','2018-08-02 13:25:28'),
	(225,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"3\",\"name\":\"test1\",\"description\":null,\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:25:43','2018-08-02 13:25:43'),
	(226,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:25:44','2018-08-02 13:25:44'),
	(227,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:26:16','2018-08-02 13:26:16'),
	(228,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:26:58','2018-08-02 13:26:58'),
	(229,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:27:01','2018-08-02 13:27:01'),
	(230,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:27:03','2018-08-02 13:27:03'),
	(231,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u8f6e\\u6362\\u56fe\",\"description\":null,\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:27:21','2018-08-02 13:27:21'),
	(232,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:27:22','2018-08-02 13:27:22'),
	(233,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u4ea7\\u54c1\",\"description\":null,\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:27:41','2018-08-02 13:27:41'),
	(234,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:27:41','2018-08-02 13:27:41'),
	(235,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u65b0\\u95fb\",\"description\":null,\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:28:03','2018-08-02 13:28:03'),
	(236,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:28:03','2018-08-02 13:28:03'),
	(237,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"1\",\"name\":\"\\u4ea7\\u54c1\",\"description\":\"\\u4ea7\\u54c1\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:28:21','2018-08-02 13:28:21'),
	(238,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:28:22','2018-08-02 13:28:22'),
	(239,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"1\",\"name\":\"\\u65b0\\u95fb\",\"description\":\"\\u65b0\\u95fb\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:28:39','2018-08-02 13:28:39'),
	(240,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:28:40','2018-08-02 13:28:40'),
	(241,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"1\",\"name\":\"\\u5382\\u724c\",\"description\":\"\\u5382\\u724c\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:29:12','2018-08-02 13:29:12'),
	(242,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:29:12','2018-08-02 13:29:12'),
	(243,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u5173\\u4e8e\",\"description\":\"\\u5173\\u4e8e\\u6211\\u4eec\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:29:28','2018-08-02 13:29:28'),
	(244,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:29:29','2018-08-02 13:29:29'),
	(245,1,'admin/category/7','DELETE','192.168.10.1','{\"_method\":\"delete\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:29:38','2018-08-02 13:29:38'),
	(246,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:29:39','2018-08-02 13:29:39'),
	(247,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u5173\\u4e8e\",\"description\":\"\\u5173\\u4e8e\\u6211\\u4eec\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:29:56','2018-08-02 13:29:56'),
	(248,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:29:58','2018-08-02 13:29:58'),
	(249,1,'admin/category/8/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:30:03','2018-08-02 13:30:03'),
	(250,1,'admin/category/8','PUT','192.168.10.1','{\"name\":\"\\u5173\\u4e8e\",\"description\":\"\\u5173\\u4e8e\\u6211\\u4eec\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"parent_id\":\"1\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/category\"}','2018-08-02 13:30:14','2018-08-02 13:30:14'),
	(251,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:30:15','2018-08-02 13:30:15'),
	(252,1,'admin/category','POST','192.168.10.1','{\"parent_id\":\"0\",\"name\":\"\\u62db\\u8058\",\"description\":\"\\u62db\\u8058\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\"}','2018-08-02 13:30:30','2018-08-02 13:30:30'),
	(253,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:30:30','2018-08-02 13:30:30'),
	(254,1,'admin/category/9/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:30:33','2018-08-02 13:30:33'),
	(255,1,'admin/category/9','PUT','192.168.10.1','{\"name\":\"\\u62db\\u8058\",\"description\":\"\\u62db\\u8058\\u8f6e\\u6362\\u56fe\",\"order\":\"0\",\"parent_id\":\"1\",\"_token\":\"sVoivvEaykJ8N36yeYrLuISodCBUtKWLtFY0Nz2V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/category\"}','2018-08-02 13:30:41','2018-08-02 13:30:41'),
	(256,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 13:30:42','2018-08-02 13:30:42'),
	(257,1,'admin/product','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 13:31:02','2018-08-02 13:31:02'),
	(258,1,'admin/category','GET','192.168.10.1','[]','2018-08-02 16:07:45','2018-08-02 16:07:45'),
	(259,1,'admin/category/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:08:08','2018-08-02 16:08:08'),
	(260,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:08:13','2018-08-02 16:08:13'),
	(261,1,'admin/category/4/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:08:16','2018-08-02 16:08:16'),
	(262,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:08:18','2018-08-02 16:08:18'),
	(263,1,'admin/slide','GET','192.168.10.1','[]','2018-08-02 16:09:10','2018-08-02 16:09:10'),
	(264,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:09:24','2018-08-02 16:09:24'),
	(265,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:12:20','2018-08-02 16:12:20'),
	(266,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:24:38','2018-08-02 16:24:38'),
	(267,1,'admin/product','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:24:48','2018-08-02 16:24:48'),
	(268,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:24:52','2018-08-02 16:24:52'),
	(269,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:24:53','2018-08-02 16:24:53'),
	(270,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:25:07','2018-08-02 16:25:07'),
	(271,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:37:11','2018-08-02 16:37:11'),
	(272,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:37:29','2018-08-02 16:37:29'),
	(273,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:43:57','2018-08-02 16:43:57'),
	(274,1,'admin/category','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:44:00','2018-08-02 16:44:00'),
	(275,1,'admin/helpers/scaffold','GET','192.168.10.1','[]','2018-08-02 16:47:53','2018-08-02 16:47:53'),
	(276,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:48:46','2018-08-02 16:48:46'),
	(277,1,'admin/auth/menu/15/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:48:50','2018-08-02 16:48:50'),
	(278,1,'admin/auth/menu/15','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5e2e\\u52a9\\u5de5\\u5177\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:49:05','2018-08-02 16:49:05'),
	(279,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:49:06','2018-08-02 16:49:06'),
	(280,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:49:10','2018-08-02 16:49:10'),
	(281,1,'admin/auth/menu/16/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:49:27','2018-08-02 16:49:27'),
	(282,1,'admin/auth/menu/16','PUT','192.168.10.1','{\"parent_id\":\"15\",\"title\":\"\\u811a\\u624b\\u67b6\",\"icon\":\"fa-keyboard-o\",\"uri\":\"helpers\\/scaffold\",\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:49:35','2018-08-02 16:49:35'),
	(283,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:49:35','2018-08-02 16:49:35'),
	(284,1,'admin/auth/menu/17/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:49:40','2018-08-02 16:49:40'),
	(285,1,'admin/auth/menu/17','PUT','192.168.10.1','{\"parent_id\":\"15\",\"title\":\"\\u6570\\u636e\\u5e93\\u547d\\u4ee4\\u884c\",\"icon\":\"fa-database\",\"uri\":\"helpers\\/terminal\\/database\",\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:49:48','2018-08-02 16:49:48'),
	(286,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:49:49','2018-08-02 16:49:49'),
	(287,1,'admin/auth/menu/18/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:49:52','2018-08-02 16:49:52'),
	(288,1,'admin/auth/menu/18','PUT','192.168.10.1','{\"parent_id\":\"15\",\"title\":\"artisan\\u547d\\u4ee4\\u884c\",\"icon\":\"fa-terminal\",\"uri\":\"helpers\\/terminal\\/artisan\",\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:50:05','2018-08-02 16:50:05'),
	(289,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:50:06','2018-08-02 16:50:06'),
	(290,1,'admin/auth/menu/19/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:50:11','2018-08-02 16:50:11'),
	(291,1,'admin/auth/menu/19','PUT','192.168.10.1','{\"parent_id\":\"15\",\"title\":\"\\u7cfb\\u7edf\\u8def\\u7531\",\"icon\":\"fa-list-alt\",\"uri\":\"helpers\\/routes\",\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:50:22','2018-08-02 16:50:22'),
	(292,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:50:23','2018-08-02 16:50:23'),
	(293,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:50:35','2018-08-02 16:50:35'),
	(294,1,'admin/auth/menu/13/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:50:42','2018-08-02 16:50:42'),
	(295,1,'admin/auth/menu/13','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5173\\u4e8e\\u7ba1\\u7406\",\"icon\":\"fa-street-view\",\"uri\":\"about\",\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:51:39','2018-08-02 16:51:39'),
	(296,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:51:39','2018-08-02 16:51:39'),
	(297,1,'admin/auth/menu/14/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:51:46','2018-08-02 16:51:46'),
	(298,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:51:48','2018-08-02 16:51:48'),
	(299,1,'admin/auth/menu/13/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:51:53','2018-08-02 16:51:53'),
	(300,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:51:57','2018-08-02 16:51:57'),
	(301,1,'admin/auth/menu/14/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:52:02','2018-08-02 16:52:02'),
	(302,1,'admin/auth/menu/14','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u62db\\u8058\\u7ba1\\u7406\",\"icon\":\"fa-street-view\",\"uri\":\"job\",\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:52:08','2018-08-02 16:52:08'),
	(303,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:52:08','2018-08-02 16:52:08'),
	(304,1,'admin/auth/menu/9/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:52:14','2018-08-02 16:52:14'),
	(305,1,'admin/auth/menu/9','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u6362\\u7ba1\\u7406\",\"icon\":\"fa-area-chart\",\"uri\":\"slide\",\"roles\":[null],\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/auth\\/menu\"}','2018-08-02 16:52:26','2018-08-02 16:52:26'),
	(306,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:52:27','2018-08-02 16:52:27'),
	(307,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-08-02 16:53:59','2018-08-02 16:53:59'),
	(308,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:54:12','2018-08-02 16:54:12'),
	(309,1,'admin/helpers/routes','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:59:01','2018-08-02 16:59:01'),
	(310,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 16:59:19','2018-08-02 16:59:19'),
	(311,1,'admin/helpers/scaffold','POST','192.168.10.1','{\"table_name\":\"slides\",\"model_name\":\"App\\\\Models\\\\Slide\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SlideController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"parent_id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7236\\u7ea7ID\"},{\"name\":\"img\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u8def\\u5f84\"},{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u540d\\u79f0\"},{\"name\":\"description\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"link\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u94fe\\u63a5\"}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\"}','2018-08-02 17:05:37','2018-08-02 17:05:37'),
	(312,1,'admin/helpers/scaffold','GET','192.168.10.1','[]','2018-08-02 17:05:38','2018-08-02 17:05:38'),
	(313,1,'admin/helpers/scaffold','POST','192.168.10.1','{\"table_name\":\"slides\",\"model_name\":\"App\\\\Models\\\\Slide\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SlideController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"parent_id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7236\\u7ea7ID\"},{\"name\":\"img\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u8def\\u5f84\"},{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u540d\\u79f0\"},{\"name\":\"description\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"link\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u94fe\\u63a5\"}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\"}','2018-08-02 17:06:03','2018-08-02 17:06:03'),
	(314,1,'admin/helpers/scaffold','GET','192.168.10.1','[]','2018-08-02 17:06:04','2018-08-02 17:06:04'),
	(315,1,'admin/helpers/scaffold','POST','192.168.10.1','{\"table_name\":\"slides\",\"model_name\":\"App\\\\Models\\\\Slide\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SlideController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"parent_id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7236\\u7ea7ID\"},{\"name\":\"img\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u8def\\u5f84\"},{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u540d\\u79f0\"},{\"name\":\"description\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"link\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u94fe\\u63a5\"}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\"}','2018-08-02 17:06:20','2018-08-02 17:06:20'),
	(316,1,'admin/helpers/scaffold','GET','192.168.10.1','[]','2018-08-02 17:06:22','2018-08-02 17:06:22'),
	(317,1,'admin/helpers/scaffold','POST','192.168.10.1','{\"table_name\":\"slides\",\"model_name\":\"App\\\\Models\\\\Slide\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SlideController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"parent_id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7236\\u7ea7ID\"},{\"name\":\"img\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u8def\\u5f84\"},{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u540d\\u79f0\"},{\"name\":\"description\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"link\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\\u94fe\\u63a5\"}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"UMcnNjqa7gpmUUSvoRr0xpFQzbDL7eZmTmnJSlq9\"}','2018-08-02 17:06:47','2018-08-02 17:06:47'),
	(318,1,'admin/helpers/scaffold','GET','192.168.10.1','[]','2018-08-02 17:06:49','2018-08-02 17:06:49'),
	(319,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 17:07:28','2018-08-02 17:07:28'),
	(320,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 17:07:31','2018-08-02 17:07:31'),
	(321,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-02 17:07:32','2018-08-02 17:07:32'),
	(322,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:33','2018-08-03 07:44:33'),
	(323,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:44','2018-08-03 07:44:44'),
	(324,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:45','2018-08-03 07:44:45'),
	(325,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:45','2018-08-03 07:44:45'),
	(326,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:46','2018-08-03 07:44:46'),
	(327,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:47','2018-08-03 07:44:47'),
	(328,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:47','2018-08-03 07:44:47'),
	(329,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:48','2018-08-03 07:44:48'),
	(330,1,'admin/auth/menu/9/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:49','2018-08-03 07:44:49'),
	(331,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:52','2018-08-03 07:44:52'),
	(332,1,'admin/helpers/scaffold','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:44:54','2018-08-03 07:44:54'),
	(333,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:45:47','2018-08-03 07:45:47'),
	(334,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:46:00','2018-08-03 07:46:00'),
	(335,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:48:01','2018-08-03 07:48:01'),
	(336,1,'admin/slide','GET','192.168.10.1','[]','2018-08-03 07:48:30','2018-08-03 07:48:30'),
	(337,1,'admin/slide','GET','192.168.10.1','[]','2018-08-03 07:48:42','2018-08-03 07:48:42'),
	(338,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:48:45','2018-08-03 07:48:45'),
	(339,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:48:49','2018-08-03 07:48:49'),
	(340,1,'admin/slide','GET','192.168.10.1','[]','2018-08-03 07:50:45','2018-08-03 07:50:45'),
	(341,1,'admin/slide','GET','192.168.10.1','[]','2018-08-03 07:52:48','2018-08-03 07:52:48'),
	(342,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-03 07:52:51','2018-08-03 07:52:51'),
	(343,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-03 07:53:06','2018-08-03 07:53:06'),
	(344,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-03 07:55:31','2018-08-03 07:55:31'),
	(345,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-03 07:55:41','2018-08-03 07:55:41'),
	(346,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-03 07:57:08','2018-08-03 07:57:08'),
	(347,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-03 08:00:48','2018-08-03 08:00:48'),
	(348,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 03:38:29','2018-08-04 03:38:29'),
	(349,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 03:38:32','2018-08-04 03:38:32'),
	(350,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 03:38:35','2018-08-04 03:38:35'),
	(351,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 03:38:52','2018-08-04 03:38:52'),
	(352,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 03:38:54','2018-08-04 03:38:54'),
	(353,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 03:39:02','2018-08-04 03:39:02'),
	(354,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 03:39:03','2018-08-04 03:39:03'),
	(355,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:05','2018-08-04 03:39:05'),
	(356,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:07','2018-08-04 03:39:07'),
	(357,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:08','2018-08-04 03:39:08'),
	(358,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:09','2018-08-04 03:39:09'),
	(359,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:11','2018-08-04 03:39:11'),
	(360,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:12','2018-08-04 03:39:12'),
	(361,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:13','2018-08-04 03:39:13'),
	(362,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:14','2018-08-04 03:39:14'),
	(363,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:16','2018-08-04 03:39:16'),
	(364,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:18','2018-08-04 03:39:18'),
	(365,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 03:39:18','2018-08-04 03:39:18'),
	(366,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:20','2018-08-04 03:39:20'),
	(367,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:22','2018-08-04 03:39:22'),
	(368,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:23','2018-08-04 03:39:23'),
	(369,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:25','2018-08-04 03:39:25'),
	(370,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:26','2018-08-04 03:39:26'),
	(371,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:28','2018-08-04 03:39:28'),
	(372,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:30','2018-08-04 03:39:30'),
	(373,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:31','2018-08-04 03:39:31'),
	(374,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:32','2018-08-04 03:39:32'),
	(375,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:34','2018-08-04 03:39:34'),
	(376,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:35','2018-08-04 03:39:35'),
	(377,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:36','2018-08-04 03:39:36'),
	(378,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:37','2018-08-04 03:39:37'),
	(379,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:39','2018-08-04 03:39:39'),
	(380,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:40','2018-08-04 03:39:40'),
	(381,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:42','2018-08-04 03:39:42'),
	(382,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:44','2018-08-04 03:39:44'),
	(383,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:46','2018-08-04 03:39:46'),
	(384,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:50','2018-08-04 03:39:50'),
	(385,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:39:56','2018-08-04 03:39:56'),
	(386,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 03:40:00','2018-08-04 03:40:00'),
	(387,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:27:41','2018-08-04 04:27:41'),
	(388,1,'admin/slide','POST','192.168.10.1','{\"title\":\"\\u6807\\u9898\",\"parent_id\":\"1\",\"name\":\"\\u56fe\\u7247\\u6807\\u9898\",\"description\":\"\\u56fe\\u7247\\u63cf\\u8ff0\",\"link\":\"\\u56fe\\u7247\\u94fe\\u63a5\",\"_token\":\"ry9nKg27W1klZhdsFIsawXkiMw62spZsqISDa3ZI\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:28:25','2018-08-04 04:28:25'),
	(389,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:28:28','2018-08-04 04:28:28'),
	(390,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:37:59','2018-08-04 04:37:59'),
	(391,1,'admin/slide','POST','192.168.10.1','{\"title\":\"111\",\"parent_id\":\"1\",\"name\":\"111\",\"description\":\"11\",\"link\":\"11\",\"_token\":\"ry9nKg27W1klZhdsFIsawXkiMw62spZsqISDa3ZI\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:38:14','2018-08-04 04:38:14'),
	(392,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:38:17','2018-08-04 04:38:17'),
	(393,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:38:38','2018-08-04 04:38:38'),
	(394,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:38:57','2018-08-04 04:38:57'),
	(395,1,'admin/slide','POST','192.168.10.1','{\"title\":null,\"parent_id\":null,\"name\":null,\"description\":null,\"link\":null,\"_token\":\"ry9nKg27W1klZhdsFIsawXkiMw62spZsqISDa3ZI\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:39:03','2018-08-04 04:39:03'),
	(396,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:39:06','2018-08-04 04:39:06'),
	(397,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:40:20','2018-08-04 04:40:20'),
	(398,1,'admin/slide','POST','192.168.10.1','{\"title\":\"1111\",\"parent_id\":\"1\",\"name\":null,\"description\":null,\"link\":null,\"_token\":\"ry9nKg27W1klZhdsFIsawXkiMw62spZsqISDa3ZI\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:40:33','2018-08-04 04:40:33'),
	(399,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:40:35','2018-08-04 04:40:35'),
	(400,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:48:17','2018-08-04 04:48:17'),
	(401,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 04:48:48','2018-08-04 04:48:48'),
	(402,1,'admin/auth/login','GET','192.168.10.1','[]','2018-08-04 04:49:35','2018-08-04 04:49:35'),
	(403,1,'admin/auth/setting','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 04:49:40','2018-08-04 04:49:40'),
	(404,1,'admin/auth/setting','PUT','192.168.10.1','{\"name\":\"Administrator\",\"password\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"password_confirmation\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\"}','2018-08-04 04:49:55','2018-08-04 04:49:55'),
	(405,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:50:03','2018-08-04 04:50:03'),
	(406,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:50:08','2018-08-04 04:50:08'),
	(407,1,'admin/auth/setting','PUT','192.168.10.1','{\"name\":\"Administrator\",\"password\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"password_confirmation\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:53:07','2018-08-04 04:53:07'),
	(408,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:53:09','2018-08-04 04:53:09'),
	(409,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:53:22','2018-08-04 04:53:22'),
	(410,1,'admin/auth/setting','PUT','192.168.10.1','{\"name\":\"Administrator\",\"password\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"password_confirmation\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:53:46','2018-08-04 04:53:46'),
	(411,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:53:47','2018-08-04 04:53:47'),
	(412,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:55:46','2018-08-04 04:55:46'),
	(413,1,'admin/auth/setting','PUT','192.168.10.1','{\"name\":\"Administrator\",\"password\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"password_confirmation\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:55:58','2018-08-04 04:55:58'),
	(414,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:55:59','2018-08-04 04:55:59'),
	(415,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:56:04','2018-08-04 04:56:04'),
	(416,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:56:24','2018-08-04 04:56:24'),
	(417,1,'admin/auth/setting','PUT','192.168.10.1','{\"name\":\"Administrator\",\"password\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"password_confirmation\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:56:32','2018-08-04 04:56:32'),
	(418,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:56:33','2018-08-04 04:56:33'),
	(419,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:57:10','2018-08-04 04:57:10'),
	(420,1,'admin/auth/setting','PUT','192.168.10.1','{\"name\":\"Administrator\",\"password\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"password_confirmation\":\"$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 04:57:26','2018-08-04 04:57:26'),
	(421,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:57:27','2018-08-04 04:57:27'),
	(422,1,'admin/auth/setting','GET','192.168.10.1','[]','2018-08-04 04:57:31','2018-08-04 04:57:31'),
	(423,1,'admin/helpers/routes','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 04:58:57','2018-08-04 04:58:57'),
	(424,1,'admin/helpers/routes','GET','192.168.10.1','[]','2018-08-04 05:03:20','2018-08-04 05:03:20'),
	(425,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:03:26','2018-08-04 05:03:26'),
	(426,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:03:29','2018-08-04 05:03:29'),
	(427,1,'admin/slide','POST','192.168.10.1','{\"title\":\"111\",\"parent_id\":null,\"name\":null,\"description\":null,\"link\":null,\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:03:43','2018-08-04 05:03:43'),
	(428,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 05:03:45','2018-08-04 05:03:45'),
	(429,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-04 05:04:36','2018-08-04 05:04:36'),
	(430,1,'admin/slide','POST','192.168.10.1','{\"parent_id\":\"2\",\"name\":\"1\",\"description\":\"1\",\"link\":\"1\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:04:51','2018-08-04 05:04:51'),
	(431,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 05:04:52','2018-08-04 05:04:52'),
	(432,1,'admin/slide/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:04:58','2018-08-04 05:04:58'),
	(433,1,'admin/slide/1/edit','GET','192.168.10.1','[]','2018-08-04 05:06:28','2018-08-04 05:06:28'),
	(434,1,'admin/slide/1','PUT','192.168.10.1','{\"parent_id\":\"2\",\"name\":\"1\",\"description\":\"1\",\"link\":\"1\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:06:41','2018-08-04 05:06:41'),
	(435,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 05:06:43','2018-08-04 05:06:43'),
	(436,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:06:46','2018-08-04 05:06:46'),
	(437,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:06:48','2018-08-04 05:06:48'),
	(438,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:06:51','2018-08-04 05:06:51'),
	(439,1,'admin/slide','POST','192.168.10.1','{\"parent_id\":\"3\",\"name\":\"22\",\"description\":\"22\",\"link\":\"22\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:07:17','2018-08-04 05:07:17'),
	(440,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 05:07:17','2018-08-04 05:07:17'),
	(441,1,'admin/slide/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:07:24','2018-08-04 05:07:24'),
	(442,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:07:42','2018-08-04 05:07:42'),
	(443,1,'admin/slide/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:07:44','2018-08-04 05:07:44'),
	(444,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:07:53','2018-08-04 05:07:53'),
	(445,1,'admin/slide/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:07:56','2018-08-04 05:07:56'),
	(446,1,'admin/slide/2','PUT','192.168.10.1','{\"parent_id\":\"3\",\"name\":\"22\",\"description\":\"22\",\"link\":\"22\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:08:17','2018-08-04 05:08:17'),
	(447,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 05:08:18','2018-08-04 05:08:18'),
	(448,1,'admin/slide/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:08:21','2018-08-04 05:08:21'),
	(449,1,'admin/slide/2','PUT','192.168.10.1','{\"parent_id\":\"3\",\"name\":\"22\",\"description\":\"22\",\"link\":\"22\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:08:36','2018-08-04 05:08:36'),
	(450,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 05:08:36','2018-08-04 05:08:36'),
	(451,1,'admin/slide/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:08:40','2018-08-04 05:08:40'),
	(452,1,'admin/slide/2/edit','GET','192.168.10.1','[]','2018-08-04 05:09:54','2018-08-04 05:09:54'),
	(453,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:09:59','2018-08-04 05:09:59'),
	(454,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:10:01','2018-08-04 05:10:01'),
	(455,1,'admin/slide','POST','192.168.10.1','{\"parent_id\":\"3\",\"name\":\"\\u56fe\\u7247\\u6807\\u9898\",\"description\":\"\\u56fe\\u7247\\u6807\\u9898\",\"link\":\"\\u56fe\\u7247\\u6807\\u9898\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:10:22','2018-08-04 05:10:22'),
	(456,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 05:10:23','2018-08-04 05:10:23'),
	(457,1,'admin/slide/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:10:26','2018-08-04 05:10:26'),
	(458,1,'admin/slide/3','PUT','192.168.10.1','{\"parent_id\":\"3\",\"name\":\"\\u56fe\\u7247\\u6807\\u9898\",\"description\":\"\\u56fe\\u7247\\u6807\\u9898\",\"link\":\"\\u56fe\\u7247\\u6807\\u9898\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 05:11:11','2018-08-04 05:11:11'),
	(459,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 05:11:11','2018-08-04 05:11:11'),
	(460,1,'admin/slide/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 05:11:15','2018-08-04 05:11:15'),
	(461,1,'admin/slide/3/edit','GET','192.168.10.1','[]','2018-08-04 05:12:01','2018-08-04 05:12:01'),
	(462,1,'admin/slide/3','PUT','192.168.10.1','{\"parent_id\":\"3\",\"name\":\"\\u56fe\\u7247\\u6807\\u9898\",\"description\":\"\\u56fe\\u7247\\u6807\\u9898\",\"link\":\"\\u56fe\\u7247\\u6807\\u9898\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 15:02:21','2018-08-04 15:02:21'),
	(463,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:02:22','2018-08-04 15:02:22'),
	(464,1,'admin/slide/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 15:02:26','2018-08-04 15:02:26'),
	(465,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 15:02:30','2018-08-04 15:02:30'),
	(466,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 15:02:33','2018-08-04 15:02:33'),
	(467,1,'admin/slide','POST','192.168.10.1','{\"parent_id\":\"2\",\"name\":\"55555\",\"description\":\"555555555555\",\"link\":\"5555555555\",\"_token\":\"orTTqndTswLy1o2MTM3Lw6UO4V1xKKbZDsOJ5fQi\",\"_previous_\":\"http:\\/\\/ladmin.test\\/admin\\/slide\"}','2018-08-04 15:03:03','2018-08-04 15:03:03'),
	(468,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:03:03','2018-08-04 15:03:03'),
	(469,1,'admin/slide/4/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 15:03:08','2018-08-04 15:03:08'),
	(470,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 15:03:41','2018-08-04 15:03:41'),
	(471,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:05:21','2018-08-04 15:05:21'),
	(472,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:05:44','2018-08-04 15:05:44'),
	(473,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:05:59','2018-08-04 15:05:59'),
	(474,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:06:23','2018-08-04 15:06:23'),
	(475,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:06:37','2018-08-04 15:06:37'),
	(476,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:08:12','2018-08-04 15:08:12'),
	(477,1,'admin/slide/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 15:08:16','2018-08-04 15:08:16'),
	(478,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-04 15:08:19','2018-08-04 15:08:19'),
	(479,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:08:27','2018-08-04 15:08:27'),
	(480,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:09:24','2018-08-04 15:09:24'),
	(481,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:09:37','2018-08-04 15:09:37'),
	(482,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:09:51','2018-08-04 15:09:51'),
	(483,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:10:02','2018-08-04 15:10:02'),
	(484,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:10:20','2018-08-04 15:10:20'),
	(485,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:10:30','2018-08-04 15:10:30'),
	(486,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:11:06','2018-08-04 15:11:06'),
	(487,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:12:55','2018-08-04 15:12:55'),
	(488,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:13:07','2018-08-04 15:13:07'),
	(489,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:13:17','2018-08-04 15:13:17'),
	(490,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:13:36','2018-08-04 15:13:36'),
	(491,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:13:55','2018-08-04 15:13:55'),
	(492,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:14:26','2018-08-04 15:14:26'),
	(493,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:14:39','2018-08-04 15:14:39'),
	(494,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:14:45','2018-08-04 15:14:45'),
	(495,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:14:53','2018-08-04 15:14:53'),
	(496,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:15:09','2018-08-04 15:15:09'),
	(497,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:15:16','2018-08-04 15:15:16'),
	(498,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:15:35','2018-08-04 15:15:35'),
	(499,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:17:15','2018-08-04 15:17:15'),
	(500,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:17:25','2018-08-04 15:17:25'),
	(501,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:30:09','2018-08-04 15:30:09'),
	(502,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:33:23','2018-08-04 15:33:23'),
	(503,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:34:38','2018-08-04 15:34:38'),
	(504,1,'admin/slide','GET','192.168.10.1','[]','2018-08-04 15:34:47','2018-08-04 15:34:47'),
	(505,1,'admin','GET','192.168.10.1','[]','2018-08-05 01:52:56','2018-08-05 01:52:56'),
	(506,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 01:53:33','2018-08-05 01:53:33'),
	(507,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:54:28','2018-08-05 01:54:28'),
	(508,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:54:42','2018-08-05 01:54:42'),
	(509,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:55:12','2018-08-05 01:55:12'),
	(510,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:55:30','2018-08-05 01:55:30'),
	(511,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:55:52','2018-08-05 01:55:52'),
	(512,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:56:23','2018-08-05 01:56:23'),
	(513,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:56:26','2018-08-05 01:56:26'),
	(514,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:56:56','2018-08-05 01:56:56'),
	(515,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:57:20','2018-08-05 01:57:20'),
	(516,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:57:30','2018-08-05 01:57:30'),
	(517,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:57:50','2018-08-05 01:57:50'),
	(518,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:57:56','2018-08-05 01:57:56'),
	(519,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:58:10','2018-08-05 01:58:10'),
	(520,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:58:29','2018-08-05 01:58:29'),
	(521,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 01:59:00','2018-08-05 01:59:00'),
	(522,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 01:59:03','2018-08-05 01:59:03'),
	(523,1,'admin/slide/create','GET','192.168.10.1','[]','2018-08-05 02:00:30','2018-08-05 02:00:30'),
	(524,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:01:04','2018-08-05 02:01:04'),
	(525,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 02:02:49','2018-08-05 02:02:49'),
	(526,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 02:02:58','2018-08-05 02:02:58'),
	(527,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 02:03:12','2018-08-05 02:03:12'),
	(528,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 02:03:26','2018-08-05 02:03:26'),
	(529,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 02:05:51','2018-08-05 02:05:51'),
	(530,1,'admin/slide','GET','192.168.10.1','[]','2018-08-05 02:06:08','2018-08-05 02:06:08'),
	(531,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:06:18','2018-08-05 02:06:18'),
	(532,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:07:32','2018-08-05 02:07:32'),
	(533,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:07:33','2018-08-05 02:07:33'),
	(534,1,'admin/helpers/terminal/database','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:08:48','2018-08-05 02:08:48'),
	(535,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:09:15','2018-08-05 02:09:15'),
	(536,1,'admin/slide/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:09:23','2018-08-05 02:09:23'),
	(537,1,'admin/slide','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-08-05 02:09:54','2018-08-05 02:09:54');

/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`)
VALUES
	(1,'All permission','*','','*',NULL,NULL),
	(2,'Dashboard','dashboard','GET','/',NULL,NULL),
	(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),
	(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),
	(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),
	(6,'Admin helpers','ext.helpers',NULL,'/helpers/*','2018-08-02 16:47:15','2018-08-02 16:47:15');

/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`)
VALUES
	(1,2,NULL,NULL),
	(1,3,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Administrator','administrator','2018-07-26 14:02:14','2018-07-26 14:02:14');

/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','$2y$10$MUcSfSJchwZ7t2D5HExBC.3No4jOkiM0eKX3CvXyHd3j9UeOCG7nS','Administrator','images/WechatIMG14.jpg',NULL,'2018-07-26 14:02:14','2018-08-04 04:57:26');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `description`, `order`, `parent_id`, `created_at`, `updated_at`)
VALUES
	(1,'轮换图',NULL,0,0,'2018-08-02 13:27:21','2018-08-02 13:27:21'),
	(2,'产品',NULL,0,0,'2018-08-02 13:27:41','2018-08-02 13:27:41'),
	(3,'新闻',NULL,0,0,'2018-08-02 13:28:03','2018-08-02 13:28:03'),
	(4,'产品','产品轮换图',0,1,'2018-08-02 13:28:21','2018-08-02 13:28:21'),
	(5,'新闻','新闻轮换图',0,1,'2018-08-02 13:28:40','2018-08-02 13:28:40'),
	(6,'厂牌','厂牌轮换图',0,1,'2018-08-02 13:29:12','2018-08-02 13:29:12'),
	(8,'关于','关于我们轮换图',0,1,'2018-08-02 13:29:57','2018-08-02 13:30:14'),
	(9,'招聘','招聘轮换图',0,1,'2018-08-02 13:30:30','2018-08-02 13:30:41'),
	(10,'',NULL,0,NULL,NULL,NULL);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_04_173148_create_admin_tables',1),
	(4,'2018_07_26_135557_create_products_table',1),
	(5,'2018_07_26_135759_create_slides_tables',1),
	(13,'2018_08_02_125228_create_categories_table',2),
	(14,'2018_08_02_170647_create_slides_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `created_at`, `updated_at`)
VALUES
	(1,'2018-07-26 14:03:46','2018-07-26 14:03:46');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table slides
# ------------------------------------------------------------

DROP TABLE IF EXISTS `slides`;

CREATE TABLE `slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL COMMENT '父级ID',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片路径',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片名称',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片链接',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;

INSERT INTO `slides` (`id`, `parent_id`, `img`, `name`, `description`, `link`, `created_at`, `updated_at`)
VALUES
	(1,2,'images/7.jpg','1','1','1','2018-08-04 05:04:51','2018-08-04 05:04:51'),
	(2,3,'images/1.jpg','22','22','22','2018-08-04 05:07:17','2018-08-04 05:08:36'),
	(3,3,'images/c5bb5c71d09c2c5af142bb37ec576cdd.jpg','图片标题','图片标题','图片标题','2018-08-04 05:10:22','2018-08-04 15:02:21'),
	(4,2,'images/5.jpg','55555','555555555555','5555555555','2018-08-04 15:03:03','2018-08-04 15:03:03');

/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
