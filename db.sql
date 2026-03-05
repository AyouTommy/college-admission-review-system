/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot1hme0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot1hme0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot1hme0`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot1hme0/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot1hme0/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot1hme0/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `ruxuebanli` */

DROP TABLE IF EXISTS `ruxuebanli`;

CREATE TABLE `ruxuebanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shifouruxue` varchar(200) DEFAULT NULL COMMENT '是否入学',
  `shenghuoyongpinlingqu` varchar(200) DEFAULT NULL COMMENT '生活用品领取',
  `sushebaodao` varchar(200) DEFAULT NULL COMMENT '宿舍报到',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='入学办理';

/*Data for the table `ruxuebanli` */

insert  into `ruxuebanli`(`id`,`addtime`,`xuehao`,`xingming`,`shifouruxue`,`shenghuoyongpinlingqu`,`sushebaodao`) values (31,'2021-05-06 17:48:25','学号1','姓名1','未入学','未领取','未报到');
insert  into `ruxuebanli`(`id`,`addtime`,`xuehao`,`xingming`,`shifouruxue`,`shenghuoyongpinlingqu`,`sushebaodao`) values (32,'2021-05-06 17:48:25','学号2','姓名2','未入学','未领取','未报到');
insert  into `ruxuebanli`(`id`,`addtime`,`xuehao`,`xingming`,`shifouruxue`,`shenghuoyongpinlingqu`,`sushebaodao`) values (33,'2021-05-06 17:48:25','学号3','姓名3','未入学','未领取','未报到');
insert  into `ruxuebanli`(`id`,`addtime`,`xuehao`,`xingming`,`shifouruxue`,`shenghuoyongpinlingqu`,`sushebaodao`) values (34,'2021-05-06 17:48:25','学号4','姓名4','未入学','未领取','未报到');
insert  into `ruxuebanli`(`id`,`addtime`,`xuehao`,`xingming`,`shifouruxue`,`shenghuoyongpinlingqu`,`sushebaodao`) values (35,'2021-05-06 17:48:25','学号5','姓名5','未入学','未领取','未报到');
insert  into `ruxuebanli`(`id`,`addtime`,`xuehao`,`xingming`,`shifouruxue`,`shenghuoyongpinlingqu`,`sushebaodao`) values (36,'2021-05-06 17:48:25','学号6','姓名6','未入学','未领取','未报到');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-06 17:48:25');

/*Table structure for table `xuejixinxi` */

DROP TABLE IF EXISTS `xuejixinxi`;

CREATE TABLE `xuejixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `xianduxuexiao` varchar(200) NOT NULL COMMENT '现读学校',
  `zuigaoxueli` varchar(200) NOT NULL COMMENT '最高学历',
  `tijianbiao` varchar(200) DEFAULT NULL COMMENT '体检表',
  `xueshengchengjibiao` varchar(200) DEFAULT NULL COMMENT '学生成绩表',
  `dangjiguanxi` varchar(200) DEFAULT NULL COMMENT '党籍关系',
  `rongyuzhengshu` varchar(200) DEFAULT NULL COMMENT '荣誉证书',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学籍信息';

/*Data for the table `xuejixinxi` */

insert  into `xuejixinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`nianling`,`chushengriqi`,`shenfenzhenghao`,`xianduxuexiao`,`zuigaoxueli`,`tijianbiao`,`xueshengchengjibiao`,`dangjiguanxi`,`rongyuzhengshu`,`zhaopian`) values (21,'2021-05-06 17:48:25','学号1','姓名1','男',1,'2021-05-06','440300199101010001','现读学校1','最高学历1','','','党籍关系1','http://localhost:8080/springboot1hme0/upload/xuejixinxi_rongyuzhengshu1.jpg','http://localhost:8080/springboot1hme0/upload/xuejixinxi_zhaopian1.jpg');
insert  into `xuejixinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`nianling`,`chushengriqi`,`shenfenzhenghao`,`xianduxuexiao`,`zuigaoxueli`,`tijianbiao`,`xueshengchengjibiao`,`dangjiguanxi`,`rongyuzhengshu`,`zhaopian`) values (22,'2021-05-06 17:48:25','学号2','姓名2','男',2,'2021-05-06','440300199202020002','现读学校2','最高学历2','','','党籍关系2','http://localhost:8080/springboot1hme0/upload/xuejixinxi_rongyuzhengshu2.jpg','http://localhost:8080/springboot1hme0/upload/xuejixinxi_zhaopian2.jpg');
insert  into `xuejixinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`nianling`,`chushengriqi`,`shenfenzhenghao`,`xianduxuexiao`,`zuigaoxueli`,`tijianbiao`,`xueshengchengjibiao`,`dangjiguanxi`,`rongyuzhengshu`,`zhaopian`) values (23,'2021-05-06 17:48:25','学号3','姓名3','男',3,'2021-05-06','440300199303030003','现读学校3','最高学历3','','','党籍关系3','http://localhost:8080/springboot1hme0/upload/xuejixinxi_rongyuzhengshu3.jpg','http://localhost:8080/springboot1hme0/upload/xuejixinxi_zhaopian3.jpg');
insert  into `xuejixinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`nianling`,`chushengriqi`,`shenfenzhenghao`,`xianduxuexiao`,`zuigaoxueli`,`tijianbiao`,`xueshengchengjibiao`,`dangjiguanxi`,`rongyuzhengshu`,`zhaopian`) values (24,'2021-05-06 17:48:25','学号4','姓名4','男',4,'2021-05-06','440300199404040004','现读学校4','最高学历4','','','党籍关系4','http://localhost:8080/springboot1hme0/upload/xuejixinxi_rongyuzhengshu4.jpg','http://localhost:8080/springboot1hme0/upload/xuejixinxi_zhaopian4.jpg');
insert  into `xuejixinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`nianling`,`chushengriqi`,`shenfenzhenghao`,`xianduxuexiao`,`zuigaoxueli`,`tijianbiao`,`xueshengchengjibiao`,`dangjiguanxi`,`rongyuzhengshu`,`zhaopian`) values (25,'2021-05-06 17:48:25','学号5','姓名5','男',5,'2021-05-06','440300199505050005','现读学校5','最高学历5','','','党籍关系5','http://localhost:8080/springboot1hme0/upload/xuejixinxi_rongyuzhengshu5.jpg','http://localhost:8080/springboot1hme0/upload/xuejixinxi_zhaopian5.jpg');
insert  into `xuejixinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`nianling`,`chushengriqi`,`shenfenzhenghao`,`xianduxuexiao`,`zuigaoxueli`,`tijianbiao`,`xueshengchengjibiao`,`dangjiguanxi`,`rongyuzhengshu`,`zhaopian`) values (26,'2021-05-06 17:48:25','学号6','姓名6','男',6,'2021-05-06','440300199606060006','现读学校6','最高学历6','','','党籍关系6','http://localhost:8080/springboot1hme0/upload/xuejixinxi_rongyuzhengshu6.jpg','http://localhost:8080/springboot1hme0/upload/xuejixinxi_zhaopian6.jpg');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-05-06 17:48:25','学生1','123456','姓名1','男',1,'学院1','专业1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springboot1hme0/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (12,'2021-05-06 17:48:25','学生2','123456','姓名2','男',2,'学院2','专业2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springboot1hme0/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (13,'2021-05-06 17:48:25','学生3','123456','姓名3','男',3,'学院3','专业3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springboot1hme0/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (14,'2021-05-06 17:48:25','学生4','123456','姓名4','男',4,'学院4','专业4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springboot1hme0/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (15,'2021-05-06 17:48:25','学生5','123456','姓名5','男',5,'学院5','专业5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springboot1hme0/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (16,'2021-05-06 17:48:25','学生6','123456','姓名6','男',6,'学院6','专业6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springboot1hme0/upload/xuesheng_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
