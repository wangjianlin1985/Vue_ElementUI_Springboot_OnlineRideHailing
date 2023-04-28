-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootsq5o5
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootsq5o5`
--

/*!40000 DROP DATABASE IF EXISTS `springbootsq5o5`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootsq5o5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootsq5o5`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-05-07 11:52:50',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-05-07 11:52:50',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-05-07 11:52:50',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-05-07 11:52:50',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-05-07 11:52:50',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-05-07 11:52:50',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliang`
--

DROP TABLE IF EXISTS `cheliang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicheleixing` varchar(200) NOT NULL COMMENT '汽车类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qicheleixing` (`qicheleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='车辆';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliang`
--

LOCK TABLES `cheliang` WRITE;
/*!40000 ALTER TABLE `cheliang` DISABLE KEYS */;
INSERT INTO `cheliang` VALUES (31,'2022-05-07 11:52:50','汽车类型1'),(32,'2022-05-07 11:52:50','汽车类型2'),(33,'2022-05-07 11:52:50','汽车类型3'),(34,'2022-05-07 11:52:50','汽车类型4'),(35,'2022-05-07 11:52:50','汽车类型5'),(36,'2022-05-07 11:52:50','汽车类型6');
/*!40000 ALTER TABLE `cheliang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangxinxi`
--

DROP TABLE IF EXISTS `cheliangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `sijigonghao` varchar(200) DEFAULT NULL COMMENT '司机工号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangxinxi`
--

LOCK TABLES `cheliangxinxi` WRITE;
/*!40000 ALTER TABLE `cheliangxinxi` DISABLE KEYS */;
INSERT INTO `cheliangxinxi` VALUES (41,'2022-05-07 11:52:50','标题1','upload/cheliangxinxi_tupian1.jpg','出发地1','目的地1','司机工号1','司机姓名1','车牌号1','联系电话1',99.9),(42,'2022-05-07 11:52:50','标题2','upload/cheliangxinxi_tupian2.jpg','出发地2','目的地2','司机工号2','司机姓名2','车牌号2','联系电话2',99.9),(43,'2022-05-07 11:52:50','标题3','upload/cheliangxinxi_tupian3.jpg','出发地3','目的地3','司机工号3','司机姓名3','车牌号3','联系电话3',99.9),(44,'2022-05-07 11:52:50','标题4','upload/cheliangxinxi_tupian4.jpg','出发地4','目的地4','司机工号4','司机姓名4','车牌号4','联系电话4',99.9),(45,'2022-05-07 11:52:50','标题5','upload/cheliangxinxi_tupian5.jpg','出发地5','目的地5','司机工号5','司机姓名5','车牌号5','联系电话5',99.9),(46,'2022-05-07 11:52:50','标题6','upload/cheliangxinxi_tupian6.jpg','出发地6','目的地6','司机工号6','司机姓名6','车牌号6','联系电话6',99.9);
/*!40000 ALTER TABLE `cheliangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengke`
--

DROP TABLE IF EXISTS `chengke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengkezhanghao` varchar(200) NOT NULL COMMENT '乘客账号',
  `chengkexingming` varchar(200) NOT NULL COMMENT '乘客姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chengkezhanghao` (`chengkezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='乘客';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengke`
--

LOCK TABLES `chengke` WRITE;
/*!40000 ALTER TABLE `chengke` DISABLE KEYS */;
INSERT INTO `chengke` VALUES (11,'2022-05-07 11:52:50','乘客账号1','乘客姓名1','upload/chengke_touxiang1.jpg','123456','男','13823888881',100),(12,'2022-05-07 11:52:50','乘客账号2','乘客姓名2','upload/chengke_touxiang2.jpg','123456','男','13823888882',100),(13,'2022-05-07 11:52:50','乘客账号3','乘客姓名3','upload/chengke_touxiang3.jpg','123456','男','13823888883',100),(14,'2022-05-07 11:52:50','乘客账号4','乘客姓名4','upload/chengke_touxiang4.jpg','123456','男','13823888884',100),(15,'2022-05-07 11:52:50','乘客账号5','乘客姓名5','upload/chengke_touxiang5.jpg','123456','男','13823888885',100),(16,'2022-05-07 11:52:50','乘客账号6','乘客姓名6','upload/chengke_touxiang6.jpg','123456','男','13823888886',100);
/*!40000 ALTER TABLE `chengke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (51,'2022-05-07 11:52:50','标题1','内容1','2022-05-07 19:52:50'),(52,'2022-05-07 11:52:50','标题2','内容2','2022-05-07 19:52:50'),(53,'2022-05-07 11:52:50','标题3','内容3','2022-05-07 19:52:50'),(54,'2022-05-07 11:52:50','标题4','内容4','2022-05-07 19:52:50'),(55,'2022-05-07 11:52:50','标题5','内容5','2022-05-07 19:52:50'),(56,'2022-05-07 11:52:50','标题6','内容6','2022-05-07 19:52:50');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'cheliangxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `sijigonghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijigonghao` varchar(200) NOT NULL COMMENT '司机工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `jialing` varchar(200) DEFAULT NULL COMMENT '驾龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sijigonghao` (`sijigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (21,'2022-05-07 11:52:50','司机工号1','123456','司机姓名1',1,'男','车牌号1','驾龄1','upload/siji_zhaopian1.jpg','联系电话1','汽车类型1','是','',100),(22,'2022-05-07 11:52:50','司机工号2','123456','司机姓名2',2,'男','车牌号2','驾龄2','upload/siji_zhaopian2.jpg','联系电话2','汽车类型2','是','',100),(23,'2022-05-07 11:52:50','司机工号3','123456','司机姓名3',3,'男','车牌号3','驾龄3','upload/siji_zhaopian3.jpg','联系电话3','汽车类型3','是','',100),(24,'2022-05-07 11:52:50','司机工号4','123456','司机姓名4',4,'男','车牌号4','驾龄4','upload/siji_zhaopian4.jpg','联系电话4','汽车类型4','是','',100),(25,'2022-05-07 11:52:50','司机工号5','123456','司机姓名5',5,'男','车牌号5','驾龄5','upload/siji_zhaopian5.jpg','联系电话5','汽车类型5','是','',100),(26,'2022-05-07 11:52:50','司机工号6','123456','司机姓名6',6,'男','车牌号6','驾龄6','upload/siji_zhaopian6.jpg','联系电话6','汽车类型6','是','',100);
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-07 11:52:50');
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

-- Dump completed on 2022-05-07 20:47:10
