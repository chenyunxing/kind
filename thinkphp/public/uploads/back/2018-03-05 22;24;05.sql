-- ----------------------------
-- 日期：2018-03-05 22:24:05
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classssbackup`
-- ----------------------------
DROP TABLE IF EXISTS `classssbackup`;
CREATE TABLE `classssbackup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudentbackup`
-- ----------------------------
INSERT INTO `allstudentbackup` VALUES ('3', '3', '201510102016', '谢达政', '', '男', '管理学院15级会计（3）班');
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
INSERT INTO `allstudentbackup` VALUES ('58', '3', '201510102021', '苏晓君', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('59', '4', '201510102032', '林晓燕', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('60', '5', '201510102059', '江欣欣', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('61', '6', '201510102127', '张慕娇', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('62', '7', '201510102130', '蔡恒丰', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('63', '8', '201510102133', '陈铭沛', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('64', '9', '201510102135', '陈莲', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('65', '10', '201510102150', '卞梦江', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('66', '11', '201510102158', '谭昕', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('67', '12', '201510102183', '苏肇君', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('68', '13', '201510102191', '何泽龙', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('69', '14', '201510102203', '朱曼瑶', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('70', '15', '201510102209', '何浩贤', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('71', '16', '201510102210', '李朝曦', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('72', '17', '201510102214', '胡汉君', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('73', '18', '201510102215', '黄子聪', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('74', '19', '201510102231', '巫欣', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('75', '20', '201510102248', '陈彩晴', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('76', '21', '201510102251', '廖怡宸', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('77', '22', '201510102252', '刘家俊', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('78', '23', '201510102258', '张洁', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('79', '24', '201510102274', '曾思楚', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('80', '25', '201510102300', '梁鸿欣', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('81', '26', '201510102301', '张婉怡', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('82', '27', '201510102312', '陈楠洁', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('83', '28', '201510102315', '赖映妃', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('84', '29', '201510102329', '唐静华', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('85', '30', '201510102333', '陈怡彤', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('86', '31', '201510102353', '黄琪光', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('87', '32', '201510102385', '徐凤烟', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('88', '33', '201510102387', '姚莉滢', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('89', '34', '201510102438', '余汝欣', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('90', '35', '201510102441', '高佩怡', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('91', '36', '201510102453', '蔡颖梅', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('92', '37', '201510102485', '苏文婧', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('93', '38', '201510102489', '李欣玲', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('94', '39', '201510102507', '李春莹', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('95', '40', '201510102509', '陈家幸', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('96', '41', '201510102520', '叶楚晓', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('97', '42', '201510102522', '黄敏静', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('98', '43', '201510102529', '周惠璇', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('99', '44', '201510102554', '张诗倩', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('100', '45', '201510102555', '江祥林', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('101', '46', '201510102556', '黄诗莹', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('102', '47', '201510102557', '周兆敬', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('103', '48', '201510102566', '陈缘', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('104', '49', '201510102579', '裴丽旦', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('105', '50', '201510102607', '吴娟娟', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('106', '51', '201510102617', '许梦悦', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('107', '52', '201510102623', '徐淑绵', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('108', '53', '201510102633', '陈泽敏', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('109', '54', '201510102645', '王怡欣', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('110', '55', '201510102667', '张喜晴', '', '女', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('112', '56', '123', '啊', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('115', '56', '231', '四班', '', '男', '管理学院15级会计学（4）班');
INSERT INTO `allstudentbackup` VALUES ('116', '1', '201510102003', '梁臻华', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('117', '2', '201510102014', '黄碧欣', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('118', '3', '201510102024', '黄沛弘', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('119', '4', '201510102048', '卢细珍', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('120', '5', '201510102062', '凌博文', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('121', '6', '201510102072', '杨润琪', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('122', '7', '201510102075', '陈晓曼', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('123', '8', '201510102106', '金森锋', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('124', '9', '201510102131', '黄菁菁', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('125', '10', '201510102145', '梁鸿英', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('126', '11', '201510102146', '陈李君', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('127', '12', '201510102175', '陈锦婷', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('128', '13', '201510102199', '黄烨', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('129', '14', '201510102204', '刘智宴', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('130', '15', '201510102216', '卢杨妹', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('131', '16', '201510102218', '曾惠琼', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('132', '17', '201510102221', '曾华燕', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('133', '18', '201510102247', '侯晓丹', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('134', '19', '201510102263', '梁绮乔', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('135', '20', '201510102280', '何家伟', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('136', '21', '201510102281', '尹嘉', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('137', '22', '201510102285', '陈楚豪', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('138', '23', '201510102290', '吴志波', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('139', '24', '201510102305', '黄绮倩', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('140', '25', '201510102309', '蔡锭宇', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('141', '26', '201510102319', '刘芸钿', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('142', '27', '201510102320', '邢苗晴', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('143', '28', '201510102331', '胡晓娣', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('144', '29', '201510102340', '纪春虹', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('145', '30', '201510102360', '戚斯威', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('146', '31', '201510102394', '尹志欣', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('147', '32', '201510102411', '谭可怡', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('148', '33', '201510102415', '吴银燕', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('149', '34', '201510102419', '陈家琪', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('150', '35', '201510102424', '李彤', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('151', '36', '201510102450', '江嘉敏', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('152', '37', '201510102451', '林丽珊', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('153', '38', '201510102475', '郑诗娜', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('154', '39', '201510102493', '谢彤彤', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('155', '40', '201510102495', '蔡春媚', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('156', '41', '201510102514', '苏嘉琪', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('157', '42', '201510102519', '曾梓琼', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('158', '43', '201510102530', '罗玉萍', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('159', '44', '201510102533', '陈海妮', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('160', '45', '201510102543', '赖仙清', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('161', '46', '201510102561', '叶瑜平', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('162', '47', '201510102583', '关天然', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('163', '48', '201510102599', '温智豪', '', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('164', '49', '201510102612', '陈妙玲', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('165', '50', '201510102625', '郑泽华', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('166', '51', '201510102670', '黄紫彤', '', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudentbackup` VALUES ('168', '1', '201510102009', '李铭佩', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('169', '2', '201510102017', '胡秋仙', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('171', '4', '201510102040', '郭映珊', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('172', '5', '201510102053', '邹文琪', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('173', '6', '201510102054', '邓行丽', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('174', '7', '201510102069', '罗裕婷', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('175', '8', '201510102112', '林森柱', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('176', '9', '201510102118', '陈淑萍', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('177', '10', '201510102129', '蔡淑敏', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('178', '11', '201510102144', '庞舒惠', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('179', '12', '201510102160', '陈思思', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('180', '13', '201510102161', '赖伟婷', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('181', '14', '201510102162', '陆慧心', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('182', '15', '201510102165', '陈国聪', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('183', '16', '201510102198', '卢伟慧', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('184', '17', '201510102212', '杨广大', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('185', '18', '201510102213', '温飞燕', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('186', '19', '201510102217', '王梓聪', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('187', '20', '201510102225', '余晓铭', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('188', '21', '201510102230', '熊炽鑫', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('189', '22', '201510102249', '陈静敏', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('190', '23', '201510102256', '王成兰', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('191', '24', '201510102260', '何抒艺', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('192', '25', '201510102269', '张韵', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('193', '26', '201510102275', '朱勇健', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('194', '27', '201510102276', '李芷君', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('195', '28', '201510102287', '吴冠聪', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('196', '29', '201510102291', '刘淑娴', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('197', '30', '201510102310', '王佩璇', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('198', '31', '201510102317', '曾洁铌', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('199', '32', '201510102330', '吴惜银', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('200', '33', '201510102336', '许晓琳', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('201', '34', '201510102343', '周俊钦', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('202', '35', '201510102350', '张彩霞', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('203', '36', '201510102358', '黄子睿', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('204', '37', '201510102391', '张美玲', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('205', '38', '201510102392', '付淑霞', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('206', '39', '201510102402', '李桂虹', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('207', '40', '201510102406', '曾丽莉', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('208', '41', '201510102420', '詹素珊', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('209', '42', '201510102444', '邓彩婷', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('210', '43', '201510102447', '叶华清', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('211', '44', '201510102454', '陈颖瑜', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('212', '45', '201510102474', '梁思源', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('213', '46', '201510102492', '李晓晴', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('214', '47', '201510102526', '曾莉莉', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('215', '48', '201510102527', '冯诗萍', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('216', '49', '201510102560', '范小慧', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('217', '50', '201510102581', '高铭常', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('218', '51', '201510102593', '黄奕', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('219', '52', '201510102615', '陈彦菲', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('220', '53', '201510102620', '卢曼君', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('221', '54', '201510102622', '林婉春', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('222', '55', '201510102637', '田莉琳', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('223', '56', '201510102640', '赵家琪', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('224', '57', '201510102668', '刘文静', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('225', '59', '312', '萨德', '', '男', '管理学院15级会计（3）班');
INSERT INTO `allstudentbackup` VALUES ('226', '58', '96', 'asd', '', '女', '管理学院15级会计（5）班');

-- ----------------------------
-- Records for `allworksbackup`
-- ----------------------------
INSERT INTO `allworksbackup` VALUES ('3', '3', '201510102016', '谢达政', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
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
INSERT INTO `allworksbackup` VALUES ('58', '3', '201510102021', '苏晓君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('59', '4', '201510102032', '林晓燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('60', '5', '201510102059', '江欣欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('61', '6', '201510102127', '张慕娇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('62', '7', '201510102130', '蔡恒丰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('63', '8', '201510102133', '陈铭沛', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('64', '9', '201510102135', '陈莲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('65', '10', '201510102150', '卞梦江', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('66', '11', '201510102158', '谭昕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('67', '12', '201510102183', '苏肇君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('68', '13', '201510102191', '何泽龙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('69', '14', '201510102203', '朱曼瑶', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('70', '15', '201510102209', '何浩贤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('71', '16', '201510102210', '李朝曦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('72', '17', '201510102214', '胡汉君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('73', '18', '201510102215', '黄子聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('74', '19', '201510102231', '巫欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('75', '20', '201510102248', '陈彩晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('76', '21', '201510102251', '廖怡宸', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('77', '22', '201510102252', '刘家俊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('78', '23', '201510102258', '张洁', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('79', '24', '201510102274', '曾思楚', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('80', '25', '201510102300', '梁鸿欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('81', '26', '201510102301', '张婉怡', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('82', '27', '201510102312', '陈楠洁', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('83', '28', '201510102315', '赖映妃', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('84', '29', '201510102329', '唐静华', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('85', '30', '201510102333', '陈怡彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('86', '31', '201510102353', '黄琪光', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('87', '32', '201510102385', '徐凤烟', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('88', '33', '201510102387', '姚莉滢', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('89', '34', '201510102438', '余汝欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('90', '35', '201510102441', '高佩怡', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('91', '36', '201510102453', '蔡颖梅', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('92', '37', '201510102485', '苏文婧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('93', '38', '201510102489', '李欣玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('94', '39', '201510102507', '李春莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('95', '40', '201510102509', '陈家幸', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('96', '41', '201510102520', '叶楚晓', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('97', '42', '201510102522', '黄敏静', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('98', '43', '201510102529', '周惠璇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('99', '44', '201510102554', '张诗倩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('100', '45', '201510102555', '江祥林', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('101', '46', '201510102556', '黄诗莹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('102', '47', '201510102557', '周兆敬', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('103', '48', '201510102566', '陈缘', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('104', '49', '201510102579', '裴丽旦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('105', '50', '201510102607', '吴娟娟', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('106', '51', '201510102617', '许梦悦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('107', '52', '201510102623', '徐淑绵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('108', '53', '201510102633', '陈泽敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('109', '54', '201510102645', '王怡欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('110', '55', '201510102667', '张喜晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('111', '55', '123456', '李白', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('112', '56', '123', '啊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('115', '56', '231', '四班', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('116', '1', '201510102003', '梁臻华', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('117', '2', '201510102014', '黄碧欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('118', '3', '201510102024', '黄沛弘', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('119', '4', '201510102048', '卢细珍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('120', '5', '201510102062', '凌博文', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('121', '6', '201510102072', '杨润琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('122', '7', '201510102075', '陈晓曼', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('123', '8', '201510102106', '金森锋', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('124', '9', '201510102131', '黄菁菁', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('125', '10', '201510102145', '梁鸿英', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('126', '11', '201510102146', '陈李君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('127', '12', '201510102175', '陈锦婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('128', '13', '201510102199', '黄烨', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('129', '14', '201510102204', '刘智宴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('130', '15', '201510102216', '卢杨妹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('131', '16', '201510102218', '曾惠琼', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('132', '17', '201510102221', '曾华燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('133', '18', '201510102247', '侯晓丹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('134', '19', '201510102263', '梁绮乔', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('135', '20', '201510102280', '何家伟', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('136', '21', '201510102281', '尹嘉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('137', '22', '201510102285', '陈楚豪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('138', '23', '201510102290', '吴志波', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('139', '24', '201510102305', '黄绮倩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('140', '25', '201510102309', '蔡锭宇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('141', '26', '201510102319', '刘芸钿', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('142', '27', '201510102320', '邢苗晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('143', '28', '201510102331', '胡晓娣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('144', '29', '201510102340', '纪春虹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('145', '30', '201510102360', '戚斯威', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('146', '31', '201510102394', '尹志欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('147', '32', '201510102411', '谭可怡', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('148', '33', '201510102415', '吴银燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('149', '34', '201510102419', '陈家琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('150', '35', '201510102424', '李彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('151', '36', '201510102450', '江嘉敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('152', '37', '201510102451', '林丽珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('153', '38', '201510102475', '郑诗娜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('154', '39', '201510102493', '谢彤彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('155', '40', '201510102495', '蔡春媚', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('156', '41', '201510102514', '苏嘉琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('157', '42', '201510102519', '曾梓琼', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('158', '43', '201510102530', '罗玉萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('159', '44', '201510102533', '陈海妮', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('160', '45', '201510102543', '赖仙清', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('161', '46', '201510102561', '叶瑜平', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('162', '47', '201510102583', '关天然', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('163', '48', '201510102599', '温智豪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('164', '49', '201510102612', '陈妙玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('165', '50', '201510102625', '郑泽华', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('166', '51', '201510102670', '黄紫彤', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('168', '1', '201510102009', '李铭佩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('169', '2', '201510102017', '胡秋仙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('171', '4', '201510102040', '郭映珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('172', '5', '201510102053', '邹文琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('173', '6', '201510102054', '邓行丽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('174', '7', '201510102069', '罗裕婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('175', '8', '201510102112', '林森柱', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('176', '9', '201510102118', '陈淑萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('177', '10', '201510102129', '蔡淑敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('178', '11', '201510102144', '庞舒惠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('179', '12', '201510102160', '陈思思', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('180', '13', '201510102161', '赖伟婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('181', '14', '201510102162', '陆慧心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('182', '15', '201510102165', '陈国聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('183', '16', '201510102198', '卢伟慧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('184', '17', '201510102212', '杨广大', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('185', '18', '201510102213', '温飞燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('186', '19', '201510102217', '王梓聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('187', '20', '201510102225', '余晓铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('188', '21', '201510102230', '熊炽鑫', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('189', '22', '201510102249', '陈静敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('190', '23', '201510102256', '王成兰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('191', '24', '201510102260', '何抒艺', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('192', '25', '201510102269', '张韵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('193', '26', '201510102275', '朱勇健', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('194', '27', '201510102276', '李芷君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('195', '28', '201510102287', '吴冠聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('196', '29', '201510102291', '刘淑娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('197', '30', '201510102310', '王佩璇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('198', '31', '201510102317', '曾洁铌', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('199', '32', '201510102330', '吴惜银', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('200', '33', '201510102336', '许晓琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('201', '34', '201510102343', '周俊钦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('202', '35', '201510102350', '张彩霞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('203', '36', '201510102358', '黄子睿', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('204', '37', '201510102391', '张美玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('205', '38', '201510102392', '付淑霞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('206', '39', '201510102402', '李桂虹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('207', '40', '201510102406', '曾丽莉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('208', '41', '201510102420', '詹素珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('209', '42', '201510102444', '邓彩婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('210', '43', '201510102447', '叶华清', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('211', '44', '201510102454', '陈颖瑜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('212', '45', '201510102474', '梁思源', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('213', '46', '201510102492', '李晓晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('214', '47', '201510102526', '曾莉莉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('215', '48', '201510102527', '冯诗萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('216', '49', '201510102560', '范小慧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('217', '50', '201510102581', '高铭常', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('218', '51', '201510102593', '黄奕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('219', '52', '201510102615', '陈彦菲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('220', '53', '201510102620', '卢曼君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('221', '54', '201510102622', '林婉春', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('222', '55', '201510102637', '田莉琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('223', '56', '201510102640', '赵家琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('224', '57', '201510102668', '刘文静', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('225', '59', '312', '萨德', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('226', '58', '96', 'asd', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classssbackup`
-- ----------------------------
INSERT INTO `classssbackup` VALUES ('1', '管理学院15级会计（3）班', '48');
INSERT INTO `classssbackup` VALUES ('2', '管理学院15级会计学（4）班', '54');
INSERT INTO `classssbackup` VALUES ('3', '管理学院15级会计（6）班', '51');
INSERT INTO `classssbackup` VALUES ('4', '管理学院15级会计（5）班', '57');

-- ----------------------------
-- Records for `totalmarkbackup`
-- ----------------------------
INSERT INTO `totalmarkbackup` VALUES ('3', '3', '201510102016', '谢达政', '0', '0', '0', '0');
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
INSERT INTO `totalmarkbackup` VALUES ('58', '3', '201510102021', '苏晓君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('59', '4', '201510102032', '林晓燕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('60', '5', '201510102059', '江欣欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('61', '6', '201510102127', '张慕娇', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('62', '7', '201510102130', '蔡恒丰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('63', '8', '201510102133', '陈铭沛', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('64', '9', '201510102135', '陈莲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('65', '10', '201510102150', '卞梦江', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('66', '11', '201510102158', '谭昕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('67', '12', '201510102183', '苏肇君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('68', '13', '201510102191', '何泽龙', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('69', '14', '201510102203', '朱曼瑶', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('70', '15', '201510102209', '何浩贤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('71', '16', '201510102210', '李朝曦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('72', '17', '201510102214', '胡汉君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('73', '18', '201510102215', '黄子聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('74', '19', '201510102231', '巫欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('75', '20', '201510102248', '陈彩晴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('76', '21', '201510102251', '廖怡宸', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('77', '22', '201510102252', '刘家俊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('78', '23', '201510102258', '张洁', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('79', '24', '201510102274', '曾思楚', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('80', '25', '201510102300', '梁鸿欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('81', '26', '201510102301', '张婉怡', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('82', '27', '201510102312', '陈楠洁', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('83', '28', '201510102315', '赖映妃', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('84', '29', '201510102329', '唐静华', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('85', '30', '201510102333', '陈怡彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('86', '31', '201510102353', '黄琪光', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('87', '32', '201510102385', '徐凤烟', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('88', '33', '201510102387', '姚莉滢', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('89', '34', '201510102438', '余汝欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('90', '35', '201510102441', '高佩怡', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('91', '36', '201510102453', '蔡颖梅', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('92', '37', '201510102485', '苏文婧', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('93', '38', '201510102489', '李欣玲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('94', '39', '201510102507', '李春莹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('95', '40', '201510102509', '陈家幸', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('96', '41', '201510102520', '叶楚晓', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('97', '42', '201510102522', '黄敏静', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('98', '43', '201510102529', '周惠璇', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('99', '44', '201510102554', '张诗倩', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('100', '45', '201510102555', '江祥林', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('101', '46', '201510102556', '黄诗莹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('102', '47', '201510102557', '周兆敬', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('103', '48', '201510102566', '陈缘', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('104', '49', '201510102579', '裴丽旦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('105', '50', '201510102607', '吴娟娟', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('106', '51', '201510102617', '许梦悦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('107', '52', '201510102623', '徐淑绵', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('108', '53', '201510102633', '陈泽敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('109', '54', '201510102645', '王怡欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('110', '55', '201510102667', '张喜晴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('111', '55', '123456', '李白', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('112', '56', '123', '啊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('115', '56', '231', '四班', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('116', '1', '201510102003', '梁臻华', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('117', '2', '201510102014', '黄碧欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('118', '3', '201510102024', '黄沛弘', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('119', '4', '201510102048', '卢细珍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('120', '5', '201510102062', '凌博文', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('121', '6', '201510102072', '杨润琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('122', '7', '201510102075', '陈晓曼', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('123', '8', '201510102106', '金森锋', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('124', '9', '201510102131', '黄菁菁', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('125', '10', '201510102145', '梁鸿英', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('126', '11', '201510102146', '陈李君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('127', '12', '201510102175', '陈锦婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('128', '13', '201510102199', '黄烨', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('129', '14', '201510102204', '刘智宴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('130', '15', '201510102216', '卢杨妹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('131', '16', '201510102218', '曾惠琼', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('132', '17', '201510102221', '曾华燕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('133', '18', '201510102247', '侯晓丹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('134', '19', '201510102263', '梁绮乔', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('135', '20', '201510102280', '何家伟', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('136', '21', '201510102281', '尹嘉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('137', '22', '201510102285', '陈楚豪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('138', '23', '201510102290', '吴志波', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('139', '24', '201510102305', '黄绮倩', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('140', '25', '201510102309', '蔡锭宇', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('141', '26', '201510102319', '刘芸钿', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('142', '27', '201510102320', '邢苗晴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('143', '28', '201510102331', '胡晓娣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('144', '29', '201510102340', '纪春虹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('145', '30', '201510102360', '戚斯威', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('146', '31', '201510102394', '尹志欣', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('147', '32', '201510102411', '谭可怡', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('148', '33', '201510102415', '吴银燕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('149', '34', '201510102419', '陈家琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('150', '35', '201510102424', '李彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('151', '36', '201510102450', '江嘉敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('152', '37', '201510102451', '林丽珊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('153', '38', '201510102475', '郑诗娜', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('154', '39', '201510102493', '谢彤彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('155', '40', '201510102495', '蔡春媚', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('156', '41', '201510102514', '苏嘉琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('157', '42', '201510102519', '曾梓琼', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('158', '43', '201510102530', '罗玉萍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('159', '44', '201510102533', '陈海妮', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('160', '45', '201510102543', '赖仙清', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('161', '46', '201510102561', '叶瑜平', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('162', '47', '201510102583', '关天然', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('163', '48', '201510102599', '温智豪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('164', '49', '201510102612', '陈妙玲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('165', '50', '201510102625', '郑泽华', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('166', '51', '201510102670', '黄紫彤', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('168', '1', '201510102009', '李铭佩', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('169', '2', '201510102017', '胡秋仙', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('171', '4', '201510102040', '郭映珊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('172', '5', '201510102053', '邹文琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('173', '6', '201510102054', '邓行丽', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('174', '7', '201510102069', '罗裕婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('175', '8', '201510102112', '林森柱', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('176', '9', '201510102118', '陈淑萍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('177', '10', '201510102129', '蔡淑敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('178', '11', '201510102144', '庞舒惠', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('179', '12', '201510102160', '陈思思', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('180', '13', '201510102161', '赖伟婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('181', '14', '201510102162', '陆慧心', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('182', '15', '201510102165', '陈国聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('183', '16', '201510102198', '卢伟慧', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('184', '17', '201510102212', '杨广大', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('185', '18', '201510102213', '温飞燕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('186', '19', '201510102217', '王梓聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('187', '20', '201510102225', '余晓铭', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('188', '21', '201510102230', '熊炽鑫', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('189', '22', '201510102249', '陈静敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('190', '23', '201510102256', '王成兰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('191', '24', '201510102260', '何抒艺', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('192', '25', '201510102269', '张韵', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('193', '26', '201510102275', '朱勇健', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('194', '27', '201510102276', '李芷君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('195', '28', '201510102287', '吴冠聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('196', '29', '201510102291', '刘淑娴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('197', '30', '201510102310', '王佩璇', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('198', '31', '201510102317', '曾洁铌', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('199', '32', '201510102330', '吴惜银', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('200', '33', '201510102336', '许晓琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('201', '34', '201510102343', '周俊钦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('202', '35', '201510102350', '张彩霞', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('203', '36', '201510102358', '黄子睿', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('204', '37', '201510102391', '张美玲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('205', '38', '201510102392', '付淑霞', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('206', '39', '201510102402', '李桂虹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('207', '40', '201510102406', '曾丽莉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('208', '41', '201510102420', '詹素珊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('209', '42', '201510102444', '邓彩婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('210', '43', '201510102447', '叶华清', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('211', '44', '201510102454', '陈颖瑜', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('212', '45', '201510102474', '梁思源', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('213', '46', '201510102492', '李晓晴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('214', '47', '201510102526', '曾莉莉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('215', '48', '201510102527', '冯诗萍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('216', '49', '201510102560', '范小慧', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('217', '50', '201510102581', '高铭常', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('218', '51', '201510102593', '黄奕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('219', '52', '201510102615', '陈彦菲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('220', '53', '201510102620', '卢曼君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('221', '54', '201510102622', '林婉春', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('222', '55', '201510102637', '田莉琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('223', '56', '201510102640', '赵家琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('224', '57', '201510102668', '刘文静', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('225', '59', '312', '萨德', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('226', '58', '96', 'asd', '0', '0', '0', '0');

