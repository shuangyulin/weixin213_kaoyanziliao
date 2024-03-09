/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kaoyanziliaofenxiang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kaoyanziliaofenxiang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kaoyanziliaofenxiang`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(2,1,'收货人2','17703786902','地址2',1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(3,2,'收货人3','17703786903','地址3',1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(4,3,'收货人4','17703786904','地址4',1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(5,1,'收货人5','17703786905','地址5',1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'123',NULL,NULL,NULL,1,1,'2022-03-18 17:18:10');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/kaoyanziliaofenxiang/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/kaoyanziliaofenxiang/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/kaoyanziliaofenxiang/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-18 14:58:28'),(2,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-18 14:58:28'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-18 14:58:28'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-18 14:58:28'),(5,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-03-18 14:58:28'),(6,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-03-18 14:58:28'),(7,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-03-18 14:58:28'),(8,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-18 14:58:28'),(9,'shangpin_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-18 14:58:28'),(10,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-18 14:58:28'),(11,'shangpin_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-18 14:58:28'),(12,'shangpin_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-18 14:58:28'),(13,'shangpin_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-18 14:58:28'),(14,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-18 14:58:28'),(15,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-18 14:58:28'),(16,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-18 14:58:28'),(17,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-18 14:58:29'),(18,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-18 14:58:29'),(19,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-18 14:58:29'),(20,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-18 14:58:29'),(21,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-03-18 14:58:29'),(22,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-03-18 14:58:29'),(23,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-03-18 14:58:29'),(24,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-03-18 14:58:29'),(25,'kaoyan_types','考研信息类型',1,'考研信息1',NULL,NULL,'2022-03-18 14:58:29'),(26,'kaoyan_types','考研信息类型',2,'考研信息2',NULL,NULL,'2022-03-18 14:58:29'),(27,'kaoyan_types','考研信息类型',3,'考研信息3',NULL,NULL,'2022-03-18 14:58:29');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',NULL,1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,1,'2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(6,NULL,NULL,1,'管理回复',5,2,'2022-03-18 17:11:09',NULL,'2022-03-18 17:11:09'),(7,NULL,1,NULL,'用户回复',5,2,'2022-03-18 17:16:42',NULL,'2022-03-18 17:16:42');

/*Table structure for table `kaoyan` */

DROP TABLE IF EXISTS `kaoyan`;

CREATE TABLE `kaoyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kaoyan_name` varchar(200) DEFAULT NULL COMMENT '考研信息标题 Search111  ',
  `kaoyan_types` int(11) NOT NULL COMMENT '考研信息类型 Search111',
  `kaoyan_photo` varchar(200) DEFAULT NULL COMMENT '考研信息封面',
  `kaoyan_file` varchar(200) DEFAULT NULL COMMENT '考研资料',
  `kaoyan_video` varchar(200) DEFAULT NULL COMMENT '考研视频',
  `yonghu_id` int(11) NOT NULL COMMENT '用户',
  `kaoyan_content` text COMMENT '考研详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='考研信息';

/*Data for the table `kaoyan` */

insert  into `kaoyan`(`id`,`kaoyan_name`,`kaoyan_types`,`kaoyan_photo`,`kaoyan_file`,`kaoyan_video`,`yonghu_id`,`kaoyan_content`,`create_time`) values (1,'考研信息标题1',1,'http://localhost:8080/kaoyanziliaofenxiang/upload/1647589784767.jpeg','http://localhost:8080/kaoyanziliaofenxiang/upload/file.rar','http://localhost:8080/kaoyanziliaofenxiang/upload/video.mp4',1,'<p>考研详情1</p>','2022-03-18 15:02:25'),(2,'考研信息标题2',2,'http://localhost:8080/kaoyanziliaofenxiang/upload/1647589797092.jpeg','http://localhost:8080/kaoyanziliaofenxiang/upload/file.rar','http://localhost:8080/kaoyanziliaofenxiang/upload/video.mp4',1,'<p>考研详情2</p>','2022-03-18 15:02:25'),(3,'考研信息标题3',2,'http://localhost:8080/kaoyanziliaofenxiang/upload/1647589774050.jpeg','http://localhost:8080/kaoyanziliaofenxiang/upload/1647593185971.mp4','http://localhost:8080/kaoyanziliaofenxiang/upload/1647593198549.xls',2,'<p>考研详情3</p>','2022-03-18 15:02:25'),(4,'考研信息标题4',3,'http://localhost:8080/kaoyanziliaofenxiang/upload/1647589765542.jpeg','http://localhost:8080/kaoyanziliaofenxiang/upload/file.rar','http://localhost:8080/kaoyanziliaofenxiang/upload/video.mp4',3,'<p>考研详情4</p>','2022-03-18 15:02:25'),(5,'考研信息标题5',3,'http://localhost:8080/kaoyanziliaofenxiang/upload/1647589751897.jpg','http://localhost:8080/kaoyanziliaofenxiang/upload/file.rar','http://localhost:8080/kaoyanziliaofenxiang/upload/video.mp4',1,'<p>考研详情5</p>','2022-03-18 15:02:25');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int(11) NOT NULL COMMENT '公告类型 Search111',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`news_content`,`create_time`) values (1,'公告标题1','http://localhost:8080/kaoyanziliaofenxiang/upload/news1.jpg',2,'公告详情1','2022-03-18 15:02:25'),(2,'公告标题2','http://localhost:8080/kaoyanziliaofenxiang/upload/news2.jpg',1,'公告详情2','2022-03-18 15:02:25'),(3,'公告标题3','http://localhost:8080/kaoyanziliaofenxiang/upload/news3.jpg',2,'公告详情3','2022-03-18 15:02:25'),(4,'公告标题4','http://localhost:8080/kaoyanziliaofenxiang/upload/news4.jpg',2,'公告详情4','2022-03-18 15:02:25'),(5,'公告标题5','http://localhost:8080/kaoyanziliaofenxiang/upload/news5.jpg',1,'公告详情5','2022-03-18 15:02:25');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangxia_types`,`shangpin_delete`,`shangpin_content`,`create_time`) values (1,'商品名称1','http://localhost:8080/kaoyanziliaofenxiang/upload/1647594332694.jpg',1,100,'512.19','293.45',17,1,1,'<p>商品简介1</p>','2022-03-18 15:02:25'),(2,'商品名称2','http://localhost:8080/kaoyanziliaofenxiang/upload/1647594321396.jpg',1,101,'617.36','86.74',498,1,1,'<p>商品简介2</p>','2022-03-18 15:02:25'),(3,'商品名称3','http://localhost:8080/kaoyanziliaofenxiang/upload/1647594311559.jpg',1,103,'581.64','137.65',62,1,1,'<p>商品简介3</p>','2022-03-18 15:02:25'),(4,'商品名称4','http://localhost:8080/kaoyanziliaofenxiang/upload/1647594301202.jpg',1,103,'676.99','450.73',198,1,1,'<p>商品简介4</p>','2022-03-18 15:02:25'),(5,'商品名称5','http://localhost:8080/kaoyanziliaofenxiang/upload/1647594293907.jpg',2,104,'598.59','235.50',184,1,1,'<p>商品简介5</p>','2022-03-18 15:02:25');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (8,5,1,1,'2022-03-18 17:14:47','2022-03-18 17:14:47');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评价内容1','回复信息1','2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(2,2,3,'评价内容2','回复信息2','2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(3,3,2,'评价内容3','回复信息3','2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(4,4,2,'评价内容4','回复信息4','2022-03-18 15:02:25','2022-03-18 15:02:25','2022-03-18 15:02:25'),(5,5,2,'评价内容5','用户购买完成后可评论 管理可以回复','2022-03-18 15:02:25','2022-03-18 17:12:33','2022-03-18 15:02:25'),(6,2,1,'评价内容1111',NULL,'2022-03-18 17:23:12',NULL,'2022-03-18 17:23:12');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1647595351982',2,1,1,1,'293.45',4,1,'2022-03-18 17:22:32','2022-03-18 17:22:32'),(2,'1647595351982',2,4,1,1,'450.73',4,1,'2022-03-18 17:22:32','2022-03-18 17:22:32'),(3,'1647595351982',2,2,1,1,'86.74',1,1,'2022-03-18 17:22:32','2022-03-18 17:22:32'),(4,'1647595351982',2,5,1,1,'235.50',3,1,'2022-03-18 17:22:32','2022-03-18 17:22:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','fad7aw38d5ndp371gh8ew2lvjiyt1hqt','2022-03-18 15:47:01','2022-03-18 18:28:46'),(2,1,'admin','users','管理员','ohhetiad5v8uf7j7ofkozfnfwlr3ofr4','2022-03-18 15:47:52','2022-03-18 18:28:12');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/kaoyanziliaofenxiang/upload/yonghu1.jpg',2,'1@qq.com','89359.10','2022-03-18 15:02:25'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/kaoyanziliaofenxiang/upload/yonghu2.jpg',2,'2@qq.com','410.19','2022-03-18 15:02:25'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/kaoyanziliaofenxiang/upload/yonghu3.jpg',2,'3@qq.com','793.41','2022-03-18 15:02:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
