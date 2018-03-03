-- ----------------------------
-- 日期：2018-03-04 03:07:26
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
INSERT INTO `allstudentbackup` VALUES ('1', '1', '2', '张倩琳', '', '77', '82');
INSERT INTO `allstudentbackup` VALUES ('2', '2', '3', '黄芯颖', '', '82', '82');
INSERT INTO `allstudentbackup` VALUES ('3', '3', '4', '林显锋', '', '82', '67');
INSERT INTO `allstudentbackup` VALUES ('4', '4', '5', '杨广申', '', '82', '81');
INSERT INTO `allstudentbackup` VALUES ('5', '5', '6', '洪楚芬', '', '84', '77');
INSERT INTO `allstudentbackup` VALUES ('6', '6', '7', '黎婉君', '', '82', '79');
INSERT INTO `allstudentbackup` VALUES ('7', '7', '8', '陈韵怡', '', '82', '78');
INSERT INTO `allstudentbackup` VALUES ('8', '8', '9', '陈海莹', '', '82', '79');
INSERT INTO `allstudentbackup` VALUES ('9', '9', '10', '朱碧贞', '', '75', '66');
INSERT INTO `allstudentbackup` VALUES ('10', '10', '11', '陈婉嫔', '', '80', '72');
INSERT INTO `allstudentbackup` VALUES ('11', '11', '12', '甘筱清', '', '79', '64');
INSERT INTO `allstudentbackup` VALUES ('12', '12', '13', '萧嘉嘉', '', '82', '83');
INSERT INTO `allstudentbackup` VALUES ('13', '13', '14', '陈博诗', '', '82', '83');
INSERT INTO `allstudentbackup` VALUES ('14', '14', '15', '罗雅浈', '', '82', '84');
INSERT INTO `allstudentbackup` VALUES ('15', '15', '16', '姚晓琳', '', '82', '81');
INSERT INTO `allstudentbackup` VALUES ('16', '16', '17', '陈鸿婷', '', '83', '85');
INSERT INTO `allstudentbackup` VALUES ('17', '17', '18', '郑茂泽', '', '71', '78');
INSERT INTO `allstudentbackup` VALUES ('18', '18', '19', '翁子仪', '', '82', '87');
INSERT INTO `allstudentbackup` VALUES ('19', '19', '20', '王晓珊', '', '83', '85');
INSERT INTO `allstudentbackup` VALUES ('20', '20', '21', '王蔚琳', '', '83', '83');
INSERT INTO `allstudentbackup` VALUES ('21', '21', '22', '梁舒敏', '', '78', '82');
INSERT INTO `allstudentbackup` VALUES ('22', '22', '23', '余漪楠', '', '83', '81');
INSERT INTO `allstudentbackup` VALUES ('23', '23', '24', '何颖欣', '', '78', '79');
INSERT INTO `allstudentbackup` VALUES ('24', '24', '25', '吕月凤', '', '77', '84');
INSERT INTO `allstudentbackup` VALUES ('25', '25', '26', '洪梓熹', '', '76', '79');
INSERT INTO `allstudentbackup` VALUES ('26', '26', '27', '劳嘉莉', '', '75', '78');
INSERT INTO `allstudentbackup` VALUES ('27', '27', '28', '梁冠杰', '', '71', '77');
INSERT INTO `allstudentbackup` VALUES ('28', '28', '29', '李丽凌', '', '73', '84');
INSERT INTO `allstudentbackup` VALUES ('29', '29', '30', '余礼馨', '', '83', '84');
INSERT INTO `allstudentbackup` VALUES ('30', '30', '31', '朱慧琳', '', '83', '84');
INSERT INTO `allstudentbackup` VALUES ('31', '31', '32', '李宇婷', '', '78', '82');

-- ----------------------------
-- Records for `allworksbackup`
-- ----------------------------
INSERT INTO `allworksbackup` VALUES ('1', '1', '2', '张倩琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('2', '2', '3', '黄芯颖', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('3', '3', '4', '林显锋', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('4', '4', '5', '杨广申', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('5', '5', '6', '洪楚芬', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('6', '6', '7', '黎婉君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('7', '7', '8', '陈韵怡', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('8', '8', '9', '陈海莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('9', '9', '10', '朱碧贞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('10', '10', '11', '陈婉嫔', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('11', '11', '12', '甘筱清', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('12', '12', '13', '萧嘉嘉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('13', '13', '14', '陈博诗', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('14', '14', '15', '罗雅浈', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('15', '15', '16', '姚晓琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('16', '16', '17', '陈鸿婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('17', '17', '18', '郑茂泽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('18', '18', '19', '翁子仪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('19', '19', '20', '王晓珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('20', '20', '21', '王蔚琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('21', '21', '22', '梁舒敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('22', '22', '23', '余漪楠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('23', '23', '24', '何颖欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('24', '24', '25', '吕月凤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('25', '25', '26', '洪梓熹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('26', '26', '27', '劳嘉莉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('27', '27', '28', '梁冠杰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('28', '28', '29', '李丽凌', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('29', '29', '30', '余礼馨', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('30', '30', '31', '朱慧琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('31', '31', '32', '李宇婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `totalmarkbackup`
-- ----------------------------
INSERT INTO `totalmarkbackup` VALUES ('1', '1', '2', '张倩琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('2', '2', '3', '黄芯颖', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('3', '3', '4', '林显锋', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('4', '4', '5', '杨广申', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('5', '5', '6', '洪楚芬', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('6', '6', '7', '黎婉君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('7', '7', '8', '陈韵怡', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('8', '8', '9', '陈海莹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('9', '9', '10', '朱碧贞', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('10', '10', '11', '陈婉嫔', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('11', '11', '12', '甘筱清', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('12', '12', '13', '萧嘉嘉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('13', '13', '14', '陈博诗', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('14', '14', '15', '罗雅浈', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('15', '15', '16', '姚晓琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('16', '16', '17', '陈鸿婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('17', '17', '18', '郑茂泽', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('18', '18', '19', '翁子仪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('19', '19', '20', '王晓珊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('20', '20', '21', '王蔚琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('21', '21', '22', '梁舒敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('22', '22', '23', '余漪楠', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('23', '23', '24', '何颖欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('24', '24', '25', '吕月凤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('25', '25', '26', '洪梓熹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('26', '26', '27', '劳嘉莉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('27', '27', '28', '梁冠杰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('28', '28', '29', '李丽凌', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('29', '29', '30', '余礼馨', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('30', '30', '31', '朱慧琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('31', '31', '32', '李宇婷', '0', '0', '0', '0');

