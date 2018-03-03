-- ----------------------------
-- 日期：2017-07-31 16:23:21
-- 仅用于测试和学习,本程序不适合处理超大量数据
-- ----------------------------

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `allstudent`
-- ----------------------------
DROP TABLE IF EXISTS `allstudent`;
CREATE TABLE `allstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `Xstu` int(11) NOT NULL COMMENT '学生序号',
  `stunum` bigint(12) NOT NULL COMMENT '学生学号',
  `stuname` varchar(255) NOT NULL COMMENT '学生姓名',
  `stugroup` varchar(10) DEFAULT NULL COMMENT '学生组号',
  `sex` varchar(22) NOT NULL COMMENT '性别',
  `classname` varchar(355) NOT NULL COMMENT '班级名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `allworks`
-- ----------------------------
DROP TABLE IF EXISTS `allworks`;
CREATE TABLE `allworks` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Xstu` int(11) NOT NULL COMMENT '学生序号',
  `stunum` bigint(12) NOT NULL,
  `stuname` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Qian_gong` int(11) DEFAULT '-1' COMMENT '钳工',
  `Pu_xi` int(11) DEFAULT '-1' COMMENT '普通铣削',
  `Mo_xue` int(11) DEFAULT '-1' COMMENT '磨削',
  `Dian_huo_hua` int(11) DEFAULT '-1' COMMENT '电火花',
  `Chong_ya` int(11) DEFAULT '-1' COMMENT '冲压',
  `Zhu_zao` int(11) DEFAULT '-1' COMMENT '铸造',
  `Mu_ju` int(11) DEFAULT '-1' COMMENT '模具',
  `Han_jie` int(11) DEFAULT '-1' COMMENT '焊接',
  `Pu_che` int(11) DEFAULT '-1' COMMENT '普车',
  `Jia_gong` int(11) DEFAULT '-1',
  `Shu_chong` int(11) NOT NULL DEFAULT '-1',
  `Shu_xi` int(11) NOT NULL DEFAULT '-1',
  `Shu_che` int(11) NOT NULL DEFAULT '-1',
  `PLC` int(11) NOT NULL DEFAULT '-1',
  `Xian_qie_ge` int(11) NOT NULL DEFAULT '-1',
  `Kuai_su_cheng_xing` int(11) NOT NULL DEFAULT '-1',
  `re_chu_li` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classss`
-- ----------------------------
DROP TABLE IF EXISTS `classss`;
CREATE TABLE `classss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `curriculum`
-- ----------------------------
DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) NOT NULL COMMENT '设置的课程表名字',
  `url` varchar(500) NOT NULL COMMENT '存放地址',
  `time` bigint(16) NOT NULL COMMENT '存放时间',
  `state` int(11) NOT NULL COMMENT '使用状态,1为正在使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(500) NOT NULL COMMENT '标题',
  `content` varchar(20000) NOT NULL COMMENT '内容',
  `time` varchar(20) NOT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `singlegrade`
-- ----------------------------
DROP TABLE IF EXISTS `singlegrade`;
CREATE TABLE `singlegrade` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Xstu` bigint(12) NOT NULL,
  `stunum` bigint(12) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '0',
  `txt` int(11) NOT NULL DEFAULT '0',
  `re_grade` int(11) NOT NULL DEFAULT '0',
  `work` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '标注工种',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='单工种成绩表';

-- ----------------------------
-- Table structure for `totalmark`
-- ----------------------------
DROP TABLE IF EXISTS `totalmark`;
CREATE TABLE `totalmark` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Xstu` int(11) NOT NULL DEFAULT '0' COMMENT '学生序号',
  `stunum` bigint(12) NOT NULL DEFAULT '0',
  `stuname` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `regular_grade` int(11) DEFAULT '0',
  `exam_grade` int(11) DEFAULT '0',
  `written_grade` int(11) DEFAULT '0' COMMENT '实验成绩',
  `final_grade` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `admin`
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'teacher', '123456');

-- ----------------------------
-- Records for `curriculum`
-- ----------------------------
INSERT INTO `curriculum` VALUES ('1', '模板1', '1.xls', '1501442534', '1');
INSERT INTO `curriculum` VALUES ('2', '模板2', '2.xls', '1501442534', '0');
INSERT INTO `curriculum` VALUES ('3', '模板3', '3.xls', '1501442534', '0');
INSERT INTO `curriculum` VALUES ('5', '测试', '1501442534.xls', '1501442534', '0');
INSERT INTO `curriculum` VALUES ('6', '啊啊啊', '1501442638.xls', '1501442638', '0');

-- ----------------------------
-- Records for `notice`
-- ----------------------------
INSERT INTO `notice` VALUES ('1', 'sa', '<p>sad</p>', '1501430232');

