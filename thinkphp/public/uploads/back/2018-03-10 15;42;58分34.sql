-- ----------------------------
-- 日期：2018-03-10 15:42:58
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classssbackup`
-- ----------------------------
DROP TABLE IF EXISTS `classssbackup`;
CREATE TABLE `classssbackup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='单工种成绩表';

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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudentbackup`
-- ----------------------------
INSERT INTO `allstudentbackup` VALUES ('1', '1', '201430102429', '吴晓彤', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('2', '2', '201510102018', '沈嘉钊', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('3', '3', '201510102021', '苏晓君', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('4', '4', '201510102032', '林晓燕', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('5', '5', '201510102059', '江欣欣', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('6', '6', '201510102127', '张慕娇', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('7', '7', '201510102130', '蔡恒丰', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('8', '8', '201510102133', '陈铭沛', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('9', '9', '201510102135', '陈莲', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('10', '10', '201510102150', '卞梦江', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('11', '11', '201510102158', '谭昕', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('12', '12', '201510102183', '苏肇君', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('13', '13', '201510102191', '何泽龙', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('14', '14', '201510102203', '朱曼瑶', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('15', '15', '201510102209', '何浩贤', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('16', '16', '201510102210', '李朝曦', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('17', '17', '201510102214', '胡汉君', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('18', '18', '201510102215', '黄子聪', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('19', '19', '201510102231', '巫欣', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('20', '20', '201510102248', '陈彩晴', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('21', '21', '201510102251', '廖怡宸', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('22', '22', '201510102252', '刘家俊', 'A', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('23', '23', '201510102258', '张洁', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('24', '24', '201510102274', '曾思楚', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('25', '25', '201510102300', '梁鸿欣', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('26', '26', '201510102301', '张婉怡', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('27', '27', '201510102312', '陈楠洁', 'A', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('28', '28', '201510102315', '赖映妃', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('29', '29', '201510102329', '唐静华', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('30', '30', '201510102333', '陈怡彤', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('31', '31', '201510102353', '黄琪光', 'B', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('32', '32', '201510102385', '徐凤烟', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('33', '33', '201510102387', '姚莉滢', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('34', '34', '201510102438', '余汝欣', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('35', '35', '201510102441', '高佩怡', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('36', '36', '201510102453', '蔡颖梅', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('37', '37', '201510102485', '苏文婧', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('38', '38', '201510102489', '李欣玲', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('39', '39', '201510102507', '李春莹', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('40', '40', '201510102509', '陈家幸', 'B', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('41', '41', '201510102520', '叶楚晓', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('42', '42', '201510102522', '黄敏静', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('43', '43', '201510102529', '周惠璇', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('44', '44', '201510102554', '张诗倩', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('45', '45', '201510102555', '江祥林', 'B', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('46', '46', '201510102556', '黄诗莹', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('47', '47', '201510102557', '周兆敬', 'B', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('48', '48', '201510102566', '陈缘', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('49', '49', '201510102579', '裴丽旦', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('50', '50', '201510102607', '吴娟娟', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('51', '51', '201510102617', '许梦悦', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('52', '52', '201510102623', '徐淑绵', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('53', '53', '201510102633', '陈泽敏', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('54', '54', '201510102645', '王怡欣', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('55', '55', '201510102667', '张喜晴', 'B', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('56', '1', '201510102001', '李碧君', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('57', '2', '201510102008', '邓卓铭', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('58', '3', '201510102016', '谢达政', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('59', '4', '201510102020', '许卓君', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('60', '5', '201510102028', '卢祉彤', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('61', '6', '201510102033', '黄梓欣', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('62', '7', '201510102050', '张韵', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('63', '8', '201510102056', '谢婷', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('64', '9', '201510102068', '翁裕舜', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('65', '10', '201510102089', '林敏琪', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('66', '11', '201510102102', '廖炜滨', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('67', '12', '201510102105', '陈爽', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('68', '13', '201510102107', '林少冰', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('69', '14', '201510102125', '朱旭升', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('70', '15', '201510102126', '李艳嫦', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('71', '16', '201510102154', '胡海婷', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('72', '17', '201510102157', '陈宝丽', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('73', '18', '201510102167', '卢娜妃', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('74', '19', '201510102173', '李东颖', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('75', '20', '201510102179', '陆金庆', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('76', '21', '201510102182', '何慧萍', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('77', '22', '201510102187', '梁文涛', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('78', '23', '201510102194', '陈柳元', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('79', '24', '201510102201', '陆惠娴', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('80', '25', '201510102202', '李斯琪', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('81', '26', '201510102206', '张美玲', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('82', '27', '201510102208', '林凯斌', 'C', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('83', '28', '201510102227', '谢雯琪', 'C', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('84', '29', '201510102233', '朱蔚彤', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('85', '30', '201510102242', '罗楠', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('86', '31', '201510102250', '钟杭娜', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('87', '32', '201510102271', '谢秋月', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('88', '33', '201510102283', '陈靖欣', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('89', '34', '201510102314', '王丹妮', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('90', '35', '201510102326', '傅雪婷', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('91', '36', '201510102354', '钟一铭', 'D', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('92', '37', '201510102374', '褚烨彤', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('93', '38', '201510102384', '徐泳雯', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('94', '39', '201510102389', '何鑫', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('95', '40', '201510102437', '王仪', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('96', '41', '201510102452', '范芷君', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('97', '42', '201510102466', '郑钰莹', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('98', '43', '201510102505', '蔡敏晓', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('99', '44', '201510102516', '梁建泉', 'D', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('100', '45', '201510102521', '伍斌猷', 'D', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('101', '46', '201510102538', '刘兰', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('102', '47', '201510102551', '练佳鸿', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('103', '48', '201510102563', '周惜妙', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('104', '49', '201510102574', '张美香', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('105', '50', '201510102603', '卓慧娴', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('106', '51', '201510102614', '陈淯垠', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('107', '52', '201510102616', '张佳熳', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('108', '53', '201510102619', '林嘉琪', 'D', '女', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('109', '54', '201510102646', '王泽远', 'D', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('110', '55', '201510102647', '谢艳娜', 'D', '女', '管理学院15级会计（3）班');

-- ----------------------------
-- Records for `allworksbackup`
-- ----------------------------
INSERT INTO `allworksbackup` VALUES ('1', '1', '201430102429', '吴晓彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('2', '2', '201510102018', '沈嘉钊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('3', '3', '201510102021', '苏晓君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('4', '4', '201510102032', '林晓燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('5', '5', '201510102059', '江欣欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('6', '6', '201510102127', '张慕娇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('7', '7', '201510102130', '蔡恒丰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('8', '8', '201510102133', '陈铭沛', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('9', '9', '201510102135', '陈莲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('10', '10', '201510102150', '卞梦江', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('11', '11', '201510102158', '谭昕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('12', '12', '201510102183', '苏肇君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('13', '13', '201510102191', '何泽龙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('14', '14', '201510102203', '朱曼瑶', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('15', '15', '201510102209', '何浩贤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('16', '16', '201510102210', '李朝曦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('17', '17', '201510102214', '胡汉君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('18', '18', '201510102215', '黄子聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('19', '19', '201510102231', '巫欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('20', '20', '201510102248', '陈彩晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('21', '21', '201510102251', '廖怡宸', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('22', '22', '201510102252', '刘家俊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('23', '23', '201510102258', '张洁', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('24', '24', '201510102274', '曾思楚', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('25', '25', '201510102300', '梁鸿欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('26', '26', '201510102301', '张婉怡', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('27', '27', '201510102312', '陈楠洁', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('28', '28', '201510102315', '赖映妃', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('29', '29', '201510102329', '唐静华', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('30', '30', '201510102333', '陈怡彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('31', '31', '201510102353', '黄琪光', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('32', '32', '201510102385', '徐凤烟', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('33', '33', '201510102387', '姚莉滢', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('34', '34', '201510102438', '余汝欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('35', '35', '201510102441', '高佩怡', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('36', '36', '201510102453', '蔡颖梅', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('37', '37', '201510102485', '苏文婧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('38', '38', '201510102489', '李欣玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('39', '39', '201510102507', '李春莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('40', '40', '201510102509', '陈家幸', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('41', '41', '201510102520', '叶楚晓', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('42', '42', '201510102522', '黄敏静', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('43', '43', '201510102529', '周惠璇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('44', '44', '201510102554', '张诗倩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('45', '45', '201510102555', '江祥林', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('46', '46', '201510102556', '黄诗莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('47', '47', '201510102557', '周兆敬', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('48', '48', '201510102566', '陈缘', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('49', '49', '201510102579', '裴丽旦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('50', '50', '201510102607', '吴娟娟', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('51', '51', '201510102617', '许梦悦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('52', '52', '201510102623', '徐淑绵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('53', '53', '201510102633', '陈泽敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('54', '54', '201510102645', '王怡欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('55', '55', '201510102667', '张喜晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('56', '1', '201510102001', '李碧君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('57', '2', '201510102008', '邓卓铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('58', '3', '201510102016', '谢达政', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('59', '4', '201510102020', '许卓君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('60', '5', '201510102028', '卢祉彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('61', '6', '201510102033', '黄梓欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('62', '7', '201510102050', '张韵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('63', '8', '201510102056', '谢婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('64', '9', '201510102068', '翁裕舜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('65', '10', '201510102089', '林敏琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('66', '11', '201510102102', '廖炜滨', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('67', '12', '201510102105', '陈爽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('68', '13', '201510102107', '林少冰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('69', '14', '201510102125', '朱旭升', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('70', '15', '201510102126', '李艳嫦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('71', '16', '201510102154', '胡海婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('72', '17', '201510102157', '陈宝丽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('73', '18', '201510102167', '卢娜妃', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('74', '19', '201510102173', '李东颖', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('75', '20', '201510102179', '陆金庆', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('76', '21', '201510102182', '何慧萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('77', '22', '201510102187', '梁文涛', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('78', '23', '201510102194', '陈柳元', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('79', '24', '201510102201', '陆惠娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('80', '25', '201510102202', '李斯琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('81', '26', '201510102206', '张美玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('82', '27', '201510102208', '林凯斌', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('83', '28', '201510102227', '谢雯琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('84', '29', '201510102233', '朱蔚彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('85', '30', '201510102242', '罗楠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('86', '31', '201510102250', '钟杭娜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('87', '32', '201510102271', '谢秋月', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('88', '33', '201510102283', '陈靖欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('89', '34', '201510102314', '王丹妮', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('90', '35', '201510102326', '傅雪婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('91', '36', '201510102354', '钟一铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('92', '37', '201510102374', '褚烨彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('93', '38', '201510102384', '徐泳雯', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('94', '39', '201510102389', '何鑫', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('95', '40', '201510102437', '王仪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('96', '41', '201510102452', '范芷君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('97', '42', '201510102466', '郑钰莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('98', '43', '201510102505', '蔡敏晓', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('99', '44', '201510102516', '梁建泉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('100', '45', '201510102521', '伍斌猷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('101', '46', '201510102538', '刘兰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('102', '47', '201510102551', '练佳鸿', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('103', '48', '201510102563', '周惜妙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('104', '49', '201510102574', '张美香', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('105', '50', '201510102603', '卓慧娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('106', '51', '201510102614', '陈淯垠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('107', '52', '201510102616', '张佳熳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('108', '53', '201510102619', '林嘉琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('109', '54', '201510102646', '王泽远', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('110', '55', '201510102647', '谢艳娜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classssbackup`
-- ----------------------------
INSERT INTO `classssbackup` VALUES ('1', '管理学院15级会计学（4）班', '55');
INSERT INTO `classssbackup` VALUES ('2', '管理学院15级会计（3）班', '55');

-- ----------------------------
-- Records for `totalmarkbackup`
-- ----------------------------
INSERT INTO `totalmarkbackup` VALUES ('1', '1', '201430102429', '吴晓彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('2', '2', '201510102018', '沈嘉钊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('3', '3', '201510102021', '苏晓君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('4', '4', '201510102032', '林晓燕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('5', '5', '201510102059', '江欣欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('6', '6', '201510102127', '张慕娇', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('7', '7', '201510102130', '蔡恒丰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('8', '8', '201510102133', '陈铭沛', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('9', '9', '201510102135', '陈莲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('10', '10', '201510102150', '卞梦江', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('11', '11', '201510102158', '谭昕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('12', '12', '201510102183', '苏肇君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('13', '13', '201510102191', '何泽龙', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('14', '14', '201510102203', '朱曼瑶', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('15', '15', '201510102209', '何浩贤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('16', '16', '201510102210', '李朝曦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('17', '17', '201510102214', '胡汉君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('18', '18', '201510102215', '黄子聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('19', '19', '201510102231', '巫欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('20', '20', '201510102248', '陈彩晴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('21', '21', '201510102251', '廖怡宸', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('22', '22', '201510102252', '刘家俊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('23', '23', '201510102258', '张洁', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('24', '24', '201510102274', '曾思楚', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('25', '25', '201510102300', '梁鸿欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('26', '26', '201510102301', '张婉怡', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('27', '27', '201510102312', '陈楠洁', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('28', '28', '201510102315', '赖映妃', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('29', '29', '201510102329', '唐静华', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('30', '30', '201510102333', '陈怡彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('31', '31', '201510102353', '黄琪光', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('32', '32', '201510102385', '徐凤烟', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('33', '33', '201510102387', '姚莉滢', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('34', '34', '201510102438', '余汝欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('35', '35', '201510102441', '高佩怡', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('36', '36', '201510102453', '蔡颖梅', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('37', '37', '201510102485', '苏文婧', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('38', '38', '201510102489', '李欣玲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('39', '39', '201510102507', '李春莹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('40', '40', '201510102509', '陈家幸', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('41', '41', '201510102520', '叶楚晓', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('42', '42', '201510102522', '黄敏静', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('43', '43', '201510102529', '周惠璇', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('44', '44', '201510102554', '张诗倩', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('45', '45', '201510102555', '江祥林', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('46', '46', '201510102556', '黄诗莹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('47', '47', '201510102557', '周兆敬', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('48', '48', '201510102566', '陈缘', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('49', '49', '201510102579', '裴丽旦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('50', '50', '201510102607', '吴娟娟', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('51', '51', '201510102617', '许梦悦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('52', '52', '201510102623', '徐淑绵', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('53', '53', '201510102633', '陈泽敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('54', '54', '201510102645', '王怡欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('55', '55', '201510102667', '张喜晴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('56', '1', '201510102001', '李碧君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('57', '2', '201510102008', '邓卓铭', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('58', '3', '201510102016', '谢达政', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('59', '4', '201510102020', '许卓君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('60', '5', '201510102028', '卢祉彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('61', '6', '201510102033', '黄梓欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('62', '7', '201510102050', '张韵', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('63', '8', '201510102056', '谢婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('64', '9', '201510102068', '翁裕舜', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('65', '10', '201510102089', '林敏琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('66', '11', '201510102102', '廖炜滨', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('67', '12', '201510102105', '陈爽', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('68', '13', '201510102107', '林少冰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('69', '14', '201510102125', '朱旭升', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('70', '15', '201510102126', '李艳嫦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('71', '16', '201510102154', '胡海婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('72', '17', '201510102157', '陈宝丽', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('73', '18', '201510102167', '卢娜妃', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('74', '19', '201510102173', '李东颖', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('75', '20', '201510102179', '陆金庆', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('76', '21', '201510102182', '何慧萍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('77', '22', '201510102187', '梁文涛', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('78', '23', '201510102194', '陈柳元', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('79', '24', '201510102201', '陆惠娴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('80', '25', '201510102202', '李斯琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('81', '26', '201510102206', '张美玲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('82', '27', '201510102208', '林凯斌', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('83', '28', '201510102227', '谢雯琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('84', '29', '201510102233', '朱蔚彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('85', '30', '201510102242', '罗楠', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('86', '31', '201510102250', '钟杭娜', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('87', '32', '201510102271', '谢秋月', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('88', '33', '201510102283', '陈靖欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('89', '34', '201510102314', '王丹妮', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('90', '35', '201510102326', '傅雪婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('91', '36', '201510102354', '钟一铭', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('92', '37', '201510102374', '褚烨彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('93', '38', '201510102384', '徐泳雯', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('94', '39', '201510102389', '何鑫', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('95', '40', '201510102437', '王仪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('96', '41', '201510102452', '范芷君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('97', '42', '201510102466', '郑钰莹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('98', '43', '201510102505', '蔡敏晓', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('99', '44', '201510102516', '梁建泉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('100', '45', '201510102521', '伍斌猷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('101', '46', '201510102538', '刘兰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('102', '47', '201510102551', '练佳鸿', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('103', '48', '201510102563', '周惜妙', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('104', '49', '201510102574', '张美香', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('105', '50', '201510102603', '卓慧娴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('106', '51', '201510102614', '陈淯垠', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('107', '52', '201510102616', '张佳熳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('108', '53', '201510102619', '林嘉琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('109', '54', '201510102646', '王泽远', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('110', '55', '201510102647', '谢艳娜', '0', '0', '0', '0');

