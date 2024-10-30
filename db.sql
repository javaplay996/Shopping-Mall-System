/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gouwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gouwu` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gouwu`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615184135047 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1615184135046,'2021-03-08 14:15:34',1615183846425,'河南省郑州市二七区解放路街道正兴街','李先生','17713989898','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615184158055 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1615184149084,'2021-03-08 14:15:48','shangpinxinxi',1615183846425,1615170379499,'橙子','http://localhost:8080/gouwu/upload/1615170349155.jpg',1,98,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (14,'picture1','http://localhost:8080/gouwu/upload/1615183572615.jpg'),(15,'picture1','http://localhost:8080/gouwu/upload/1615183611578.jpg'),(16,'picture1','http://localhost:8080/gouwu/upload/1615184416961.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615183951499 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1615173451131,'2021-03-08 11:17:30',1615173244314,1614430386281,'9/898',''),(1615174131692,'2021-03-08 11:28:51',1615173244314,1614430386281,'987','77'),(1615174319395,'2021-03-08 11:31:58',1615170379499,1614430386281,'887','98'),(1615183951498,'2021-03-08 14:12:30',1615183934010,1615183846425,'好吃么','好吃');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615184053735 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-03-08 09:10:10','新闻标题1','http://localhost:8080/gouwu/upload/news_picture1.jpg','内容1'),(82,'2021-03-08 09:10:10','新闻标题2','http://localhost:8080/gouwu/upload/news_picture2.jpg','内容2'),(83,'2021-03-08 09:10:10','新闻标题3','http://localhost:8080/gouwu/upload/news_picture3.jpg','内容3'),(84,'2021-03-08 09:10:10','新闻标题4','http://localhost:8080/gouwu/upload/news_picture4.jpg','内容4'),(85,'2021-03-08 09:10:10','新闻标题5','http://localhost:8080/gouwu/upload/news_picture5.jpg','内容5'),(86,'2021-03-08 09:10:10','新闻标题6','http://localhost:8080/gouwu/upload/news_picture6.jpg','内容6'),(1615184053734,'2021-03-08 14:14:12','新闻标题9','http://localhost:8080/gouwu/upload/1615184047865.jpg','新闻内容989\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615184203026 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615184174797,'2021-03-08 14:16:14','20213814161396396428','shangpinxinxi',1615183846425,1615183431297,'大米','http://localhost:8080/gouwu/upload/1615183405016.jpg',2,87,87,272,174,1,'已完成','河南省郑州市二七区解放路街道正兴街'),(1615184175088,'2021-03-08 14:16:14','20213814161393985151','shangpinxinxi',1615183846425,1615170379499,'橙子','http://localhost:8080/gouwu/upload/1615170349155.jpg',1,98,98,272,98,1,'已发货','河南省郑州市二七区解放路街道正兴街'),(1615184202830,'2021-03-08 14:16:42','20213814164247843000','shangpinxinxi',1615183846425,1615183431297,'大米','http://localhost:8080/gouwu/upload/1615183405016.jpg',2,87,87,272,174,1,'已发货','河南省郑州市二七区解放路街道正兴街'),(1615184203025,'2021-03-08 14:16:43','20213814164248664904','shangpinxinxi',1615183846425,1615170379499,'橙子','http://localhost:8080/gouwu/upload/1615170349155.jpg',1,98,98,272,98,1,'未支付','河南省郑州市二七区解放路街道正兴街');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615183879391 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-07 22:39:58','商品分类1'),(22,'2021-03-07 22:39:58','商品分类2'),(23,'2021-03-07 22:39:58','商品分类3'),(24,'2021-03-07 22:39:58','商品分类4'),(25,'2021-03-07 22:39:58','商品分类5'),(26,'2021-03-07 22:39:58','商品分类6'),(1615183879390,'2021-03-08 14:11:18','98');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615183934011 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1615170379499,'2021-03-08 10:26:19','1615170322','橙子','商品分类2','99','橙子优选','大','87\r\n','http://localhost:8080/gouwu/upload/1615170349155.jpg','2021-03-08 14:17:19',19,98,NULL,NULL,NULL),(1615173244314,'2021-03-08 11:14:03','1615173204','111','商品分类2','苹果','伊犁','大','好吃 甜\r\n\r\n<img src=\"http://localhost:8080/gouwu/upload/1615183703110.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gouwu/upload/1615183703110.jpg\">\r\n','http://localhost:8080/gouwu/upload/1615173211627.jpg','2021-03-08 14:08:50',11,98,NULL,NULL,NULL),(1615183431297,'2021-03-08 14:03:50','1615183391','大米','商品分类2','99','有机稻花香','大','好吃的大米\r\n','http://localhost:8080/gouwu/upload/1615183405016.jpg','2021-03-08 14:17:14',4,87,NULL,NULL,NULL),(1615183476718,'2021-03-08 14:04:35','1615183434','大豆油','商品分类4','87','普通牌子','大','7877\r\n','http://localhost:8080/gouwu/upload/1615183444899.jpg',NULL,0,100,NULL,NULL,NULL),(1615183511655,'2021-03-08 14:05:11','1615183479','食用油','商品分类3','','金龙鱼','小','是打算撒\r\n','http://localhost:8080/gouwu/upload/1615183497381.jpg',NULL,0,200,NULL,NULL,NULL),(1615183549782,'2021-03-08 14:05:49','1615183515','大米','商品分类5','','金龙鱼大米','大','999\r\n','http://localhost:8080/gouwu/upload/1615183525016.jpg',NULL,0,150,NULL,NULL,NULL),(1615183934010,'2021-03-08 14:12:13','1615183886','猪大排','商品分类6','100','好吃的','小1','99<img src=\"http://localhost:8080/gouwu/upload/1615183931681.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gouwu/upload/1615183931681.jpg\">\r\n','http://localhost:8080/gouwu/upload/1615183903248.jpg','2021-03-08 14:13:02',6,60,NULL,NULL,NULL);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1365651638691164163 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615183724644 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615183724643,'2021-03-08 14:08:43',1614430386281,1615173244314,'shangpinxinxi','111','http://localhost:8080/gouwu/upload/1615173211627.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','pz3uaqvx1mxfe1t4hysjc2ulmrccafin','2021-01-25 10:11:10','2021-03-08 15:10:54'),(2,1614257015238,'a3','yonghu','用户','kspy8s5a7z4yqfsrbrtvw6swc1zzl9r5','2021-02-25 20:44:17','2021-02-26 18:51:19'),(3,1614337294646,'aa1','yonghu','用户','ue3jr8jx8t5m9nym4ci7whkr8sdhm6q3','2021-02-26 19:01:45','2021-02-26 20:01:45'),(4,1614338210814,'aa2','yonghu','用户','m3ll5gz74m32e35dm9whw7aj4h1qo4js','2021-02-26 19:20:14','2021-02-27 21:04:12'),(5,1614430386281,'a2','yonghu','用户','fnlt75w54ncx91wrvg0d8x2ncw9g2v6v','2021-02-27 20:56:38','2021-03-08 15:07:33'),(6,1615183846425,'a3','yonghu','用户','ymalghk5b1uhvj1m9wkzztg00pmswn7d','2021-03-08 14:11:04','2021-03-08 15:11:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-01-08 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615183846426 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a2','a2','男','13823888883','229992@qq.ccom',2000,402),(1614431342348,'2021-02-27 21:09:02','a4','a4','a4','男','a41','22850@qq.com',98,70),(1615183846425,'2021-03-08 14:10:46','a3','张三','123456','女','17703789897','773890001@qq.com',228,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
