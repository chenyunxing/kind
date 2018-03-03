-- ----------------------------
-- 日期：2018-03-04 02:39:56
-- 仅用于测试和学习,本程序不适合处理超大量数据
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `allstudentbackup`
-- ----------------------------
DROP TABLE IF EXISTS `allstudentbackup`;
CREATE TABLE `allstudentbackup` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `Xstu` int(11) NOT NULL COMMENT '学生序号',
  `stunum` bigint(12) NOT NULL COMMENT '学生学号',
  `stuname` varchar(255) NOT NULL COMMENT '学生姓名',
  `stugroup` varchar(10) DEFAULT NULL COMMENT '学生组号',
  `sex` varchar(22) NOT NULL COMMENT '性别',
  `classname` varchar(355) NOT NULL COMMENT '班级名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `allworksbackup`
-- ----------------------------
DROP TABLE IF EXISTS `allworksbackup`;
CREATE TABLE `allworksbackup` (
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classss`
-- ----------------------------
DROP TABLE IF EXISTS `classss`;
CREATE TABLE `classss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `classssbackup`
-- ----------------------------
DROP TABLE IF EXISTS `classssbackup`;
CREATE TABLE `classssbackup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
-- Table structure for `singlegradebackup`
-- ----------------------------
DROP TABLE IF EXISTS `singlegradebackup`;
CREATE TABLE `singlegradebackup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Xstu` bigint(12) NOT NULL,
  `stunum` bigint(12) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '0',
  `txt` int(11) NOT NULL DEFAULT '0',
  `re_grade` int(11) NOT NULL DEFAULT '0',
  `work` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '标注工种',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1 COMMENT='单工种成绩表';

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Table structure for `totalmarkbackup`
-- ----------------------------
DROP TABLE IF EXISTS `totalmarkbackup`;
CREATE TABLE `totalmarkbackup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Xstu` int(11) NOT NULL DEFAULT '0' COMMENT '学生序号',
  `stunum` bigint(12) NOT NULL DEFAULT '0',
  `stuname` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `regular_grade` int(11) DEFAULT '0',
  `exam_grade` int(11) DEFAULT '0',
  `written_grade` int(11) DEFAULT '0' COMMENT '实验成绩',
  `final_grade` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudent`
-- ----------------------------
INSERT INTO `allstudent` VALUES ('3', '1', '201510102001', '李碧君', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('4', '2', '201510102008', '邓卓铭', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('5', '3', '201510102016', '谢达政', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('6', '4', '201510102020', '许卓君', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('7', '5', '201510102028', '卢祉彤', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('8', '6', '201510102033', '黄梓欣', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('9', '7', '201510102050', '张韵', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('10', '8', '201510102056', '谢婷', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('11', '9', '201510102068', '翁裕舜', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('12', '10', '201510102089', '林敏琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('13', '11', '201510102102', '廖炜滨', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('14', '12', '201510102105', '陈爽', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('15', '13', '201510102107', '林少冰', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('16', '14', '201510102125', '朱旭升', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('17', '15', '201510102126', '李艳嫦', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('18', '16', '201510102154', '胡海婷', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('19', '17', '201510102157', '陈宝丽', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('20', '18', '201510102167', '卢娜妃', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('21', '19', '201510102173', '李东颖', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('22', '20', '201510102179', '陆金庆', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('23', '21', '201510102182', '何慧萍', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('24', '22', '201510102187', '梁文涛', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('25', '23', '201510102194', '陈柳元', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('26', '24', '201510102201', '陆惠娴', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('27', '25', '201510102202', '李斯琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('28', '26', '201510102206', '张美玲', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('29', '27', '201510102208', '林凯斌', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('30', '28', '201510102227', '谢雯琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('31', '29', '201510102233', '朱蔚彤', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('32', '30', '201510102242', '罗楠', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('33', '31', '201510102250', '钟杭娜', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('34', '32', '201510102271', '谢秋月', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('35', '33', '201510102283', '陈靖欣', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('36', '34', '201510102314', '王丹妮', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('37', '35', '201510102326', '傅雪婷', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('38', '36', '201510102354', '钟一铭', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('39', '37', '201510102374', '褚烨彤', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('40', '38', '201510102384', '徐泳雯', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('41', '39', '201510102389', '何鑫', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('42', '40', '201510102437', '王仪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('43', '41', '201510102452', '范芷君', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('44', '42', '201510102466', '郑钰莹', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('45', '43', '201510102505', '蔡敏晓', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('46', '44', '201510102516', '梁建泉', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('47', '45', '201510102521', '伍斌猷', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('48', '46', '201510102538', '刘兰', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('49', '47', '201510102551', '练佳鸿', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('50', '48', '201510102563', '周惜妙', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('51', '49', '201510102574', '张美香', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('52', '50', '201510102603', '卓慧娴', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('53', '51', '201510102614', '陈淯垠', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('54', '52', '201510102616', '张佳熳', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('55', '53', '201510102619', '林嘉琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('56', '54', '201510102646', '王泽远', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudent` VALUES ('57', '55', '201510102647', '谢艳娜', '', '女', '管理学院15级会计（3）班');

-- ----------------------------
-- Records for `allworks`
-- ----------------------------
INSERT INTO `allworks` VALUES ('3', '1', '201510102001', '李碧君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('4', '2', '201510102008', '邓卓铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('5', '3', '201510102016', '谢达政', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('6', '4', '201510102020', '许卓君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('7', '5', '201510102028', '卢祉彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('8', '6', '201510102033', '黄梓欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('9', '7', '201510102050', '张韵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('10', '8', '201510102056', '谢婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('11', '9', '201510102068', '翁裕舜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('12', '10', '201510102089', '林敏琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('13', '11', '201510102102', '廖炜滨', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('14', '12', '201510102105', '陈爽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('15', '13', '201510102107', '林少冰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('16', '14', '201510102125', '朱旭升', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('17', '15', '201510102126', '李艳嫦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('18', '16', '201510102154', '胡海婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('19', '17', '201510102157', '陈宝丽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('20', '18', '201510102167', '卢娜妃', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('21', '19', '201510102173', '李东颖', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('22', '20', '201510102179', '陆金庆', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('23', '21', '201510102182', '何慧萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('24', '22', '201510102187', '梁文涛', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('25', '23', '201510102194', '陈柳元', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('26', '24', '201510102201', '陆惠娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('27', '25', '201510102202', '李斯琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('28', '26', '201510102206', '张美玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('29', '27', '201510102208', '林凯斌', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('30', '28', '201510102227', '谢雯琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('31', '29', '201510102233', '朱蔚彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('32', '30', '201510102242', '罗楠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('33', '31', '201510102250', '钟杭娜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('34', '32', '201510102271', '谢秋月', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('35', '33', '201510102283', '陈靖欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('36', '34', '201510102314', '王丹妮', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('37', '35', '201510102326', '傅雪婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('38', '36', '201510102354', '钟一铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('39', '37', '201510102374', '褚烨彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('40', '38', '201510102384', '徐泳雯', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('41', '39', '201510102389', '何鑫', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('42', '40', '201510102437', '王仪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('43', '41', '201510102452', '范芷君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('44', '42', '201510102466', '郑钰莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('45', '43', '201510102505', '蔡敏晓', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('46', '44', '201510102516', '梁建泉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('47', '45', '201510102521', '伍斌猷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('48', '46', '201510102538', '刘兰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('49', '47', '201510102551', '练佳鸿', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('50', '48', '201510102563', '周惜妙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('51', '49', '201510102574', '张美香', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('52', '50', '201510102603', '卓慧娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('53', '51', '201510102614', '陈淯垠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('54', '52', '201510102616', '张佳熳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('55', '53', '201510102619', '林嘉琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('56', '54', '201510102646', '王泽远', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('57', '55', '201510102647', '谢艳娜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classss`
-- ----------------------------
INSERT INTO `classss` VALUES ('1', '管理学院15级会计（3）班', '55');

-- ----------------------------
-- Records for `totalmark`
-- ----------------------------
INSERT INTO `totalmark` VALUES ('3', '1', '201510102001', '李碧君', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('4', '2', '201510102008', '邓卓铭', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('5', '3', '201510102016', '谢达政', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('6', '4', '201510102020', '许卓君', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('7', '5', '201510102028', '卢祉彤', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('8', '6', '201510102033', '黄梓欣', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('9', '7', '201510102050', '张韵', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('10', '8', '201510102056', '谢婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('11', '9', '201510102068', '翁裕舜', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('12', '10', '201510102089', '林敏琪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('13', '11', '201510102102', '廖炜滨', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('14', '12', '201510102105', '陈爽', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('15', '13', '201510102107', '林少冰', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('16', '14', '201510102125', '朱旭升', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('17', '15', '201510102126', '李艳嫦', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('18', '16', '201510102154', '胡海婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('19', '17', '201510102157', '陈宝丽', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('20', '18', '201510102167', '卢娜妃', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('21', '19', '201510102173', '李东颖', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('22', '20', '201510102179', '陆金庆', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('23', '21', '201510102182', '何慧萍', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('24', '22', '201510102187', '梁文涛', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('25', '23', '201510102194', '陈柳元', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('26', '24', '201510102201', '陆惠娴', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('27', '25', '201510102202', '李斯琪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('28', '26', '201510102206', '张美玲', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('29', '27', '201510102208', '林凯斌', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('30', '28', '201510102227', '谢雯琪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('31', '29', '201510102233', '朱蔚彤', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('32', '30', '201510102242', '罗楠', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('33', '31', '201510102250', '钟杭娜', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('34', '32', '201510102271', '谢秋月', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('35', '33', '201510102283', '陈靖欣', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('36', '34', '201510102314', '王丹妮', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('37', '35', '201510102326', '傅雪婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('38', '36', '201510102354', '钟一铭', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('39', '37', '201510102374', '褚烨彤', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('40', '38', '201510102384', '徐泳雯', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('41', '39', '201510102389', '何鑫', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('42', '40', '201510102437', '王仪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('43', '41', '201510102452', '范芷君', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('44', '42', '201510102466', '郑钰莹', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('45', '43', '201510102505', '蔡敏晓', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('46', '44', '201510102516', '梁建泉', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('47', '45', '201510102521', '伍斌猷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('48', '46', '201510102538', '刘兰', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('49', '47', '201510102551', '练佳鸿', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('50', '48', '201510102563', '周惜妙', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('51', '49', '201510102574', '张美香', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('52', '50', '201510102603', '卓慧娴', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('53', '51', '201510102614', '陈淯垠', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('54', '52', '201510102616', '张佳熳', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('55', '53', '201510102619', '林嘉琪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('56', '54', '201510102646', '王泽远', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('57', '55', '201510102647', '谢艳娜', '0', '0', '0', '0');

