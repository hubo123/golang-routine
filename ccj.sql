/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.5.53 : Database - songfeelings
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`songfeelings` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `songfeelings`;

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `token` varchar(60) DEFAULT NULL COMMENT '用户token',
  `tribe_id` int(11) DEFAULT NULL COMMENT '部落id',
  `content` text COMMENT '内容',
  `type` tinyint(4) DEFAULT NULL COMMENT '消息类型(1语音，2图片，3其他表情文字)',
  `cdate` int(11) DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(200) DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `type` varchar(20) NOT NULL COMMENT '卡片类型',
  `img` varchar(200) DEFAULT '' COMMENT '图片',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `person` */

insert  into `person`(`id`,`title`,`content`,`type`,`img`,`create_time`) values (1,'神话里的故事','6666666666666666666测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试','img_card','','2019-01-05 14:40:28'),(2,'伤心故事','这是一个故事','','5c30af445863b.png','2019-01-05 21:21:09'),(5,'全文卡','全文内容','wordCard','','2019-01-06 16:19:44'),(6,'图文卡','图文卡内容','picWordCard','5c31ba79368bf.png','2019-01-06 16:21:14'),(7,'全图卡','全图卡内容','picCard','5c31baa870593.jpg','2019-01-06 16:22:01'),(8,'','海报卡内容','postCard','5c31bad1d8a95.jpg','2019-01-06 16:22:42'),(10,'竖文卡标题','竖文内容','stackCard','','2019-01-06 16:27:05'),(11,'sssssssssss','dssssssssssssssssssssss','wordCard','','2019-01-06 16:31:06'),(12,'aaaaaaaaaaaaaaaaaaaa','bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb','wordCard','','2019-01-06 16:35:34'),(13,'标题','内容','picWordCard','5c31c01ad49e2.png','2019-01-06 16:45:15');

/*Table structure for table `qualityrecommend` */

DROP TABLE IF EXISTS `qualityrecommend`;

CREATE TABLE `qualityrecommend` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img` varchar(100) DEFAULT NULL COMMENT '图片',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `description` varchar(300) DEFAULT NULL COMMENT '概要描述',
  `cdate` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `qualityrecommend` */

/*Table structure for table `tribe` */

DROP TABLE IF EXISTS `tribe`;

CREATE TABLE `tribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `qua_id` int(11) DEFAULT NULL COMMENT '精品推荐id',
  `name` varchar(50) DEFAULT NULL COMMENT '部落名称',
  `max_num` int(11) DEFAULT NULL COMMENT '最大加入人数',
  `min_num` int(11) DEFAULT NULL COMMENT '已加入人数',
  `cdate` int(11) DEFAULT NULL COMMENT '创建时间',
  `udate` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tribe` */

/*Table structure for table `user_tribe` */

DROP TABLE IF EXISTS `user_tribe`;

CREATE TABLE `user_tribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tribe_id` int(11) DEFAULT NULL COMMENT '部落id',
  `token` varchar(60) DEFAULT NULL COMMENT '用户token',
  `nick_name` varchar(10) DEFAULT NULL COMMENT '用户别名',
  `cdate` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `user_tribe` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
