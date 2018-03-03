-- ----------------------------
-- 日期：2018-03-04 02:56:40
-- 仅用于测试和学习,本程序不适合处理超大量数据
-- ----------------------------

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
-- Records for `allstudentbackup`
-- ----------------------------
INSERT INTO `allstudentbackup` VALUES ('1', '1', '201510102001', '李碧君', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('2', '2', '201510102008', '邓卓铭', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('3', '3', '201510102016', '谢达政', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('4', '4', '201510102020', '许卓君', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('5', '5', '201510102028', '卢祉彤', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('6', '6', '201510102033', '黄梓欣', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('7', '7', '201510102050', '张韵', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('8', '8', '201510102056', '谢婷', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('9', '9', '201510102068', '翁裕舜', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('10', '10', '201510102089', '林敏琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('11', '11', '201510102102', '廖炜滨', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('12', '12', '201510102105', '陈爽', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('13', '13', '201510102107', '林少冰', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('14', '14', '201510102125', '朱旭升', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('15', '15', '201510102126', '李艳嫦', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('16', '16', '201510102154', '胡海婷', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('17', '17', '201510102157', '陈宝丽', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('18', '18', '201510102167', '卢娜妃', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('19', '19', '201510102173', '李东颖', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('20', '20', '201510102179', '陆金庆', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('21', '21', '201510102182', '何慧萍', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('22', '22', '201510102187', '梁文涛', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('23', '23', '201510102194', '陈柳元', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('24', '24', '201510102201', '陆惠娴', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('25', '25', '201510102202', '李斯琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('26', '26', '201510102206', '张美玲', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('27', '27', '201510102208', '林凯斌', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('28', '28', '201510102227', '谢雯琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('29', '29', '201510102233', '朱蔚彤', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('30', '30', '201510102242', '罗楠', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('31', '31', '201510102250', '钟杭娜', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('32', '32', '201510102271', '谢秋月', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('33', '33', '201510102283', '陈靖欣', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('34', '34', '201510102314', '王丹妮', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('35', '35', '201510102326', '傅雪婷', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('36', '36', '201510102354', '钟一铭', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('37', '37', '201510102374', '褚烨彤', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('38', '38', '201510102384', '徐泳雯', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('39', '39', '201510102389', '何鑫', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('40', '40', '201510102437', '王仪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('41', '41', '201510102452', '范芷君', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('42', '42', '201510102466', '郑钰莹', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('43', '43', '201510102505', '蔡敏晓', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('44', '44', '201510102516', '梁建泉', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('45', '45', '201510102521', '伍斌猷', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('46', '46', '201510102538', '刘兰', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('47', '47', '201510102551', '练佳鸿', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('48', '48', '201510102563', '周惜妙', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('49', '49', '201510102574', '张美香', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('50', '50', '201510102603', '卓慧娴', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('51', '51', '201510102614', '陈淯垠', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('52', '52', '201510102616', '张佳熳', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('53', '53', '201510102619', '林嘉琪', '', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('54', '54', '201510102646', '王泽远', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('55', '55', '201510102647', '谢艳娜', '', '女', '管理学院15级会计（3）班');

-- ----------------------------
-- Records for `allworksbackup`
-- ----------------------------
INSERT INTO `allworksbackup` VALUES ('1', '1', '201510102001', '李碧君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('2', '2', '201510102008', '邓卓铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('3', '3', '201510102016', '谢达政', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('4', '4', '201510102020', '许卓君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('5', '5', '201510102028', '卢祉彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('6', '6', '201510102033', '黄梓欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('7', '7', '201510102050', '张韵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('8', '8', '201510102056', '谢婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('9', '9', '201510102068', '翁裕舜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('10', '10', '201510102089', '林敏琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('11', '11', '201510102102', '廖炜滨', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('12', '12', '201510102105', '陈爽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('13', '13', '201510102107', '林少冰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('14', '14', '201510102125', '朱旭升', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('15', '15', '201510102126', '李艳嫦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('16', '16', '201510102154', '胡海婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('17', '17', '201510102157', '陈宝丽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('18', '18', '201510102167', '卢娜妃', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('19', '19', '201510102173', '李东颖', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('20', '20', '201510102179', '陆金庆', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('21', '21', '201510102182', '何慧萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('22', '22', '201510102187', '梁文涛', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('23', '23', '201510102194', '陈柳元', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('24', '24', '201510102201', '陆惠娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('25', '25', '201510102202', '李斯琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('26', '26', '201510102206', '张美玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('27', '27', '201510102208', '林凯斌', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('28', '28', '201510102227', '谢雯琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('29', '29', '201510102233', '朱蔚彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('30', '30', '201510102242', '罗楠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('31', '31', '201510102250', '钟杭娜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('32', '32', '201510102271', '谢秋月', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('33', '33', '201510102283', '陈靖欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('34', '34', '201510102314', '王丹妮', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('35', '35', '201510102326', '傅雪婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('36', '36', '201510102354', '钟一铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('37', '37', '201510102374', '褚烨彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('38', '38', '201510102384', '徐泳雯', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('39', '39', '201510102389', '何鑫', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('40', '40', '201510102437', '王仪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('41', '41', '201510102452', '范芷君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('42', '42', '201510102466', '郑钰莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('43', '43', '201510102505', '蔡敏晓', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('44', '44', '201510102516', '梁建泉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('45', '45', '201510102521', '伍斌猷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('46', '46', '201510102538', '刘兰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('47', '47', '201510102551', '练佳鸿', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('48', '48', '201510102563', '周惜妙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('49', '49', '201510102574', '张美香', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('50', '50', '201510102603', '卓慧娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('51', '51', '201510102614', '陈淯垠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('52', '52', '201510102616', '张佳熳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('53', '53', '201510102619', '林嘉琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('54', '54', '201510102646', '王泽远', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('55', '55', '201510102647', '谢艳娜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classssbackup`
-- ----------------------------
INSERT INTO `classssbackup` VALUES ('1', '管理学院15级会计（3）班', '55');

-- ----------------------------
-- Records for `totalmarkbackup`
-- ----------------------------
INSERT INTO `totalmarkbackup` VALUES ('1', '1', '201510102001', '李碧君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('2', '2', '201510102008', '邓卓铭', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('3', '3', '201510102016', '谢达政', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('4', '4', '201510102020', '许卓君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('5', '5', '201510102028', '卢祉彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('6', '6', '201510102033', '黄梓欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('7', '7', '201510102050', '张韵', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('8', '8', '201510102056', '谢婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('9', '9', '201510102068', '翁裕舜', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('10', '10', '201510102089', '林敏琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('11', '11', '201510102102', '廖炜滨', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('12', '12', '201510102105', '陈爽', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('13', '13', '201510102107', '林少冰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('14', '14', '201510102125', '朱旭升', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('15', '15', '201510102126', '李艳嫦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('16', '16', '201510102154', '胡海婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('17', '17', '201510102157', '陈宝丽', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('18', '18', '201510102167', '卢娜妃', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('19', '19', '201510102173', '李东颖', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('20', '20', '201510102179', '陆金庆', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('21', '21', '201510102182', '何慧萍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('22', '22', '201510102187', '梁文涛', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('23', '23', '201510102194', '陈柳元', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('24', '24', '201510102201', '陆惠娴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('25', '25', '201510102202', '李斯琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('26', '26', '201510102206', '张美玲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('27', '27', '201510102208', '林凯斌', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('28', '28', '201510102227', '谢雯琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('29', '29', '201510102233', '朱蔚彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('30', '30', '201510102242', '罗楠', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('31', '31', '201510102250', '钟杭娜', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('32', '32', '201510102271', '谢秋月', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('33', '33', '201510102283', '陈靖欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('34', '34', '201510102314', '王丹妮', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('35', '35', '201510102326', '傅雪婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('36', '36', '201510102354', '钟一铭', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('37', '37', '201510102374', '褚烨彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('38', '38', '201510102384', '徐泳雯', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('39', '39', '201510102389', '何鑫', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('40', '40', '201510102437', '王仪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('41', '41', '201510102452', '范芷君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('42', '42', '201510102466', '郑钰莹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('43', '43', '201510102505', '蔡敏晓', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('44', '44', '201510102516', '梁建泉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('45', '45', '201510102521', '伍斌猷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('46', '46', '201510102538', '刘兰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('47', '47', '201510102551', '练佳鸿', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('48', '48', '201510102563', '周惜妙', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('49', '49', '201510102574', '张美香', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('50', '50', '201510102603', '卓慧娴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('51', '51', '201510102614', '陈淯垠', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('52', '52', '201510102616', '张佳熳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('53', '53', '201510102619', '林嘉琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('54', '54', '201510102646', '王泽远', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('55', '55', '201510102647', '谢艳娜', '0', '0', '0', '0');

