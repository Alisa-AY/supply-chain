/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.39 : Database - cjshop2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cjshop2` /*!40100 DEFAULT CHARACTER SET gbk */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cjshop2`;

/*Table structure for table `cjadmin` */

DROP TABLE IF EXISTS `cjadmin`;

CREATE TABLE `cjadmin` (
  `cjid` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cjuname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `cjpassword` varchar(20) DEFAULT NULL COMMENT '密码',
  `cjphone` varchar(12) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`cjid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `cjadmin` */

insert  into `cjadmin`(`cjid`,`cjuname`,`cjpassword`,`cjphone`) values 
(1,'zs','111','13666767676'),
(2,'ls','123','13456787656');

/*Table structure for table `cjgoods` */

DROP TABLE IF EXISTS `cjgoods`;

CREATE TABLE `cjgoods` (
  `cjid` int NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `cjname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品名称',
  `cjtxm` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '条形码',
  `cjdw` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '单位',
  `cjjprice` double DEFAULT NULL COMMENT '进价',
  `cjmprice` double DEFAULT NULL COMMENT '卖家',
  `cjzk1` double DEFAULT '10' COMMENT '普通会员折扣',
  `cjzk2` double DEFAULT '10' COMMENT '白金会员折扣',
  `cjzk3` double DEFAULT '10' COMMENT '黄金会员折扣',
  `cjkc` int DEFAULT '0' COMMENT '库存',
  `cjbz` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  `cjdtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`cjid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;

/*Data for the table `cjgoods` */

insert  into `cjgoods`(`cjid`,`cjname`,`cjtxm`,`cjdw`,`cjjprice`,`cjmprice`,`cjzk1`,`cjzk2`,`cjzk3`,`cjkc`,`cjbz`,`cjdtime`) values 
(1,'上衣','1111','件',20,30,10,10,10,10,NULL,'2021-10-08 16:35:13'),
(2,'衬衫','2222','件',20,25,10,10,10,23,NULL,'2021-10-08 16:35:34'),
(3,'牛仔裤','3333','条',30,35,10,10,10,33,NULL,'2021-10-08 16:36:00'),
(4,'打底裤','4444','条',20,25,10,10,10,41,NULL,'2021-10-08 16:36:32'),
(5,'连衣裙','5555','条',40,50,10,10,10,0,NULL,'2021-10-08 16:37:03'),
(6,'半身裙','6666','条',40,50,10,10,10,0,NULL,'2021-10-08 16:37:23');

/*Table structure for table `cjgoodsls` */

DROP TABLE IF EXISTS `cjgoodsls`;

CREATE TABLE `cjgoodsls` (
  `cjid` int DEFAULT NULL,
  `cjname` varchar(20) DEFAULT NULL,
  `cjtxm` varchar(50) DEFAULT NULL,
  `cjdw` char(10) DEFAULT NULL,
  `cjjprice` double DEFAULT NULL,
  `cjmprice` double DEFAULT NULL,
  `cjzk1` double DEFAULT NULL,
  `cjzk2` double DEFAULT NULL,
  `cjzk3` double DEFAULT NULL,
  `cjsl` int DEFAULT NULL,
  `cjrole` int DEFAULT NULL COMMENT '0代表入库，1A；2B；3C；4D'
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `cjgoodsls` */

/*Table structure for table `cjhy` */

DROP TABLE IF EXISTS `cjhy`;

CREATE TABLE `cjhy` (
  `cjid` int NOT NULL AUTO_INCREMENT COMMENT '会员ID',
  `cjname` varchar(30) DEFAULT NULL COMMENT '会员名称',
  `cjphone` varchar(12) DEFAULT NULL COMMENT '会员电话',
  `cjqb` double DEFAULT '0' COMMENT '会员钱包',
  `cjjf` int DEFAULT '0' COMMENT '会员积分',
  `cjaddr` varchar(200) DEFAULT NULL COMMENT '会员地址',
  `cjjb` varchar(20) DEFAULT NULL COMMENT '会员级别',
  `cjdtime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`cjid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

/*Data for the table `cjhy` */

insert  into `cjhy`(`cjid`,`cjname`,`cjphone`,`cjqb`,`cjjf`,`cjaddr`,`cjjb`,`cjdtime`) values 
(1,'张三','13696969878',0,0,'重庆合川','普通会员','2025-09-18 09:29:56'),
(2,'里斯','13526545214',0,0,'重庆北碚','白金会员','2025-09-18 09:30:30'),
(3,'王五','1352555',0,0,'重庆巴南','普通会员','2025-09-25 08:31:26'),
(4,'陈六','133333',0,0,'重庆渝北','白金会员','2025-09-25 08:31:53'),
(5,'马七','1223',0,0,'重庆南岸','黄金会员','2025-09-25 08:32:13'),
(6,'陆八','111111',0,0,'重庆九龙坡','黄金会员','2025-09-25 08:37:29');

/*Table structure for table `cjrkqk` */

DROP TABLE IF EXISTS `cjrkqk`;

CREATE TABLE `cjrkqk` (
  `cjid` varchar(50) NOT NULL COMMENT '订单号',
  `cjgid` int DEFAULT NULL COMMENT '商品ID',
  `cjgname` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `cjsl` int DEFAULT NULL COMMENT '商品数量',
  `cjjprice` double DEFAULT NULL COMMENT '商品进价',
  `cjmprice` double DEFAULT NULL COMMENT '商品卖价',
  `cjdtime` datetime DEFAULT NULL COMMENT '入库时间'
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `cjrkqk` */

insert  into `cjrkqk`(`cjid`,`cjgid`,`cjgname`,`cjsl`,`cjjprice`,`cjmprice`,`cjdtime`) values 
('CJXSXT20251113095232',2,'衬衫',1,20,25,'2025-11-13 01:52:33'),
('CJXSXT20251113095232',3,'牛仔裤',1,30,35,'2025-11-13 01:52:33'),
('CJXSXT20251113095408',2,'衬衫',1,20,25,'2025-11-13 09:54:08'),
('CJXSXT20251113095408',3,'牛仔裤',1,30,35,'2025-11-13 09:54:08'),
('CJXSXT20251113095408',4,'打底裤',1,20,25,'2025-11-13 09:54:08'),
('CJXSXT20251113112347',2,'衬衫',1,20,25,'2025-11-13 11:23:47'),
('CJXSXT20251113112347',3,'牛仔裤',1,30,35,'2025-11-13 11:23:47'),
('CJXSXT20251113112356',4,'打底裤',10,20,25,'2025-11-13 11:23:56'),
('CJXSXT20251113112356',2,'衬衫',1,20,25,'2025-11-13 11:23:56'),
('CJXSXT20251113112404',2,'衬衫',1,20,25,'2025-11-13 11:24:04'),
('CJXSXT20251113112404',3,'牛仔裤',10,30,35,'2025-11-13 11:24:04'),
('CJXSXT20251113112411',2,'衬衫',1,20,25,'2025-11-14 11:24:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
