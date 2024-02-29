/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmfg8el
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmfg8el` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmfg8el`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmfg8el/upload/1618973903765.jpg'),(2,'picture2','http://localhost:8080/ssmfg8el/upload/1618973915589.jpg'),(3,'picture3','http://localhost:8080/ssmfg8el/upload/1618973923348.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusshuodongxinxi` */

DROP TABLE IF EXISTS `discusshuodongxinxi`;

CREATE TABLE `discusshuodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618974485296 DEFAULT CHARSET=utf8 COMMENT='活动信息评论表';

/*Data for the table `discusshuodongxinxi` */

insert  into `discusshuodongxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-21 10:50:55',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-21 10:50:55',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-21 10:50:55',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-21 10:50:55',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-21 10:50:55',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-21 10:50:55',6,6,'用户名6','评论内容6','回复内容6'),(1618974011247,'2021-04-21 11:00:10',1618973854166,1618973943745,'1','很不错的活动','111'),(1618974485295,'2021-04-21 11:08:04',1618973854166,1618974294477,'3','感觉很不错的活动','');

/*Table structure for table `huodongbaoming` */

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `baomingneirong` varchar(200) DEFAULT NULL COMMENT '报名内容',
  `baomingriqi` date DEFAULT NULL COMMENT '报名日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618974395042 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodongbaoming` */

insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongleixing`,`tupian`,`huodongshijian`,`huodongdidian`,`baomingneirong`,`baomingriqi`,`beizhu`,`xuehao`,`xueshengxingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (41,'2021-04-21 10:50:55','活动名称1','活动类型1','http://localhost:8080/ssmfg8el/upload/huodongbaoming_tupian1.jpg','活动时间1','活动地点1','报名内容1','2021-04-21','备注1','学号1','学生姓名1','手机1','是','',1),(42,'2021-04-21 10:50:55','活动名称2','活动类型2','http://localhost:8080/ssmfg8el/upload/huodongbaoming_tupian2.jpg','活动时间2','活动地点2','报名内容2','2021-04-21','备注2','学号2','学生姓名2','手机2','是','',2),(43,'2021-04-21 10:50:55','活动名称3','活动类型3','http://localhost:8080/ssmfg8el/upload/huodongbaoming_tupian3.jpg','活动时间3','活动地点3','报名内容3','2021-04-21','备注3','学号3','学生姓名3','手机3','是','',3),(44,'2021-04-21 10:50:55','活动名称4','活动类型4','http://localhost:8080/ssmfg8el/upload/1618973708662.jpg','活动时间4','活动地点4','报名内容4','2021-04-21','备注4','学号4','学生姓名4','手机4','是','',4),(45,'2021-04-21 10:50:55','活动名称5','活动类型5','http://localhost:8080/ssmfg8el/upload/huodongbaoming_tupian5.jpg','活动时间5','活动地点5','报名内容5','2021-04-21','备注5','学号5','学生姓名5','手机5','是','',5),(46,'2021-04-21 10:50:55','活动名称6','活动类型6','http://localhost:8080/ssmfg8el/upload/huodongbaoming_tupian6.jpg','活动时间6','活动地点6','报名内容6','2021-04-21','备注6','学号6','学生姓名6','手机6','是','',6),(1618973968479,'2021-04-21 10:59:28','校园歌唱大赛','文娱类','http://localhost:8080/ssmfg8el/upload/1618973829759.jpg','2021-04-30','南区篮球场','喜欢唱歌','2021-04-21','','1','陈一','12345678978','是','ok',1618973943745),(1618974395041,'2021-04-21 11:06:34','校园歌唱大赛','文娱类','http://localhost:8080/ssmfg8el/upload/1618973829759.jpg','2021-04-30','南区篮球场','唱歌爱好者','2021-04-21','','3','张一','12345678941','是','ok',1618974294477);

/*Table structure for table `huodongleixing` */

DROP TABLE IF EXISTS `huodongleixing`;

CREATE TABLE `huodongleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongleixing` (`huodongleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1618973817072 DEFAULT CHARSET=utf8 COMMENT='活动类型';

/*Data for the table `huodongleixing` */

insert  into `huodongleixing`(`id`,`addtime`,`huodongleixing`) values (21,'2021-04-21 10:50:55','文娱类'),(22,'2021-04-21 10:50:55','公益类'),(23,'2021-04-21 10:50:55','社交类'),(24,'2021-04-21 10:50:55','体育类'),(1618973817071,'2021-04-21 10:56:56','学术类');

/*Table structure for table `huodongxinxi` */

DROP TABLE IF EXISTS `huodongxinxi`;

CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `huodongshijian` date DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `baomingshijian` varchar(200) DEFAULT NULL COMMENT '报名时间',
  `kebaorenshu` int(11) DEFAULT NULL COMMENT '可报人数',
  `huodongneirong` longtext COMMENT '活动内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618973854167 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodongxinxi` */

insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`huodongleixing`,`tupian`,`huodongshijian`,`huodongdidian`,`baomingshijian`,`kebaorenshu`,`huodongneirong`,`fabushijian`,`clicktime`,`clicknum`) values (31,'2021-04-21 10:50:55','活动名称1','体育类','http://localhost:8080/ssmfg8el/upload/1618973628863.jpg','2021-04-21','活动地点1','报名时间1',1,'<p>活动内容1</p>','2021-04-21','2021-04-21 10:53:42',2),(32,'2021-04-21 10:50:55','活动名称2','体育类','http://localhost:8080/ssmfg8el/upload/1618973640141.jpg','2021-04-21','活动地点2','报名时间2',2,'<p>活动内容2</p>','2021-04-21','2021-04-21 10:53:52',3),(33,'2021-04-21 10:50:55','活动名称3','公益类','http://localhost:8080/ssmfg8el/upload/1618973654815.jpg','2021-04-21','活动地点3','报名时间3',3,'<p>活动内容3</p>','2021-04-21','2021-04-21 10:54:03',4),(34,'2021-04-21 10:50:55','活动名称4','文娱类','http://localhost:8080/ssmfg8el/upload/1618973667613.jpg','2021-04-21','活动地点4','报名时间4',4,'<p>活动内容4</p>','2021-04-21','2021-04-21 11:03:47',10),(35,'2021-04-21 10:50:55','活动名称5','社交类','http://localhost:8080/ssmfg8el/upload/1618973678118.jpg','2021-04-21','活动地点5','报名时间5',5,'<p>活动内容5</p>','2021-04-21','2021-04-21 11:05:58',15),(1618973854166,'2021-04-21 10:57:33','校园歌唱大赛','文娱类','http://localhost:8080/ssmfg8el/upload/1618973829759.jpg','2021-04-30','南区篮球场','4.21-4.25',50,'<p>活动内容IJKJGKRYGHJTRKYHH</p><p><img src=\"http://localhost:8080/ssmfg8el/upload/1618973852657.jpg\"></p>','2021-04-21','2021-04-21 11:08:41',11);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618974429932 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-04-21 10:50:55',1,'用户名1','留言内容1','回复内容1'),(72,'2021-04-21 10:50:55',2,'用户名2','留言内容2','回复内容2'),(73,'2021-04-21 10:50:55',3,'用户名3','留言内容3','回复内容3'),(74,'2021-04-21 10:50:55',4,'用户名4','留言内容4','回复内容4'),(75,'2021-04-21 10:50:55',5,'用户名5','留言内容5','回复内容5'),(76,'2021-04-21 10:50:55',6,'用户名6','留言内容6','回复内容6'),(1618973996502,'2021-04-21 10:59:55',1618973943745,'1','请问什么时候有探望养老院老人的公益活动','下个月'),(1618974429931,'2021-04-21 11:07:09',1618974294477,'3','请问什么时候有养老院的公益活动','下个月');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618973892773 DEFAULT CHARSET=utf8 COMMENT='活动公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-21 10:50:55','标题1','简介1','http://localhost:8080/ssmfg8el/upload/1618973716647.jpg','<p>内容1</p>'),(62,'2021-04-21 10:50:55','标题2','简介2','http://localhost:8080/ssmfg8el/upload/1618973725013.jpg','<p>内容2</p>'),(64,'2021-04-21 10:50:55','标题4','简介4','http://localhost:8080/ssmfg8el/upload/1618973739755.jpg','<p>内容4</p>'),(65,'2021-04-21 10:50:55','标题5','简介5','http://localhost:8080/ssmfg8el/upload/1618973757637.jpg','<p>内容5</p>'),(66,'2021-04-21 10:50:55','标题6','简介6','http://localhost:8080/ssmfg8el/upload/1618973768472.jpg','<p>内容6</p>'),(1618973892772,'2021-04-21 10:58:12','校园歌唱大赛比赛通知','校园歌手大赛','http://localhost:8080/ssmfg8el/upload/1618973876711.jpg','<p>公告内容KJITORJTKRLYRYH</p><p><img src=\"http://localhost:8080/ssmfg8el/upload/1618973891219.jpg\"></p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=1618974382154 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','t0f0nvkace8zvvgflk1xw78apkrj8xlp','2021-04-21 10:52:52','2021-04-21 11:56:36'),(2,1618973943745,'1','xuesheng','学生','ryi1iu0r31ms2q444roc9geyhotxncl3','2021-04-21 10:59:09','2021-04-21 11:59:09'),(3,1618974171960,'2','xuesheng','学生','e8hqp7nyhe8w86mb74bku2o8xfqfyzrr','2021-04-21 11:03:27','2021-04-21 12:03:27'),(4,1618974294477,'3','xuesheng','学生','z5grlbnrtlv0gcc98ddagihj62kscy8r','2021-04-21 11:05:30','2021-04-21 12:08:33');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-04-21 10:50:55');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618974294478 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (11,'2021-04-21 10:50:55','学生1','123456','学生姓名1','男','http://localhost:8080/ssmfg8el/upload/xuesheng_touxiang1.jpg','13823888881','773890001@qq.com'),(12,'2021-04-21 10:50:55','学生2','123456','学生姓名2','男','http://localhost:8080/ssmfg8el/upload/xuesheng_touxiang2.jpg','13823888882','773890002@qq.com'),(13,'2021-04-21 10:50:55','学生3','123456','学生姓名3','男','http://localhost:8080/ssmfg8el/upload/xuesheng_touxiang3.jpg','13823888883','773890003@qq.com'),(14,'2021-04-21 10:50:55','学生4','123456','学生姓名4','男','http://localhost:8080/ssmfg8el/upload/xuesheng_touxiang4.jpg','13823888884','773890004@qq.com'),(15,'2021-04-21 10:50:55','学生5','123456','学生姓名5','男','http://localhost:8080/ssmfg8el/upload/xuesheng_touxiang5.jpg','13823888885','773890005@qq.com'),(16,'2021-04-21 10:50:55','学生6','123456','学生姓名6','男','http://localhost:8080/ssmfg8el/upload/xuesheng_touxiang6.jpg','13823888886','773890006@qq.com'),(1618973943745,'2021-04-21 10:59:03','1','1','陈一','女','http://localhost:8080/ssmfg8el/upload/1618973956534.jpg','12345678978','123@qq.com'),(1618974171960,'2021-04-21 11:02:51','2','2','张一','女','http://localhost:8080/ssmfg8el/upload/1618974214602.png','12345678941','159@qq.com'),(1618974294477,'2021-04-21 11:04:54','3','3','张一','女','http://localhost:8080/ssmfg8el/upload/1618974336068.png','12345678941','159@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
