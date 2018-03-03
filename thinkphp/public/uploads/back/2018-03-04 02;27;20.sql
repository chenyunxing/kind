-- ----------------------------
-- 日期：2018-03-04 02:27:20
-- 仅用于测试和学习,本程序不适合处理超大量数据
-- ----------------------------

-- ----------------------------
-- Table structure for `allstudentbackup`
-- ----------------------------
DROP TABLE IF EXISTS `allstudentbackup`;
CREATE TABLE `allstudent` (
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classssbackup`
-- ----------------------------
DROP TABLE IF EXISTS `classssbackup`;
CREATE TABLE `classss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `singlegradebackup`
-- ----------------------------
DROP TABLE IF EXISTS `singlegradebackup`;
CREATE TABLE `singlegrade` (
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudentbackup`
-- ----------------------------
INSERT INTO `allstudentbackup` VALUES ('112', '1', '201510090277', '郭媛', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('113', '2', '201510091261', '杨泽鑫', 'A', '男', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('114', '3', '201510092107', '陈海燕', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('115', '4', '201510094017', '钟远锋', 'A', '男', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('116', '5', '201510102058', '刘筱晨', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('117', '6', '201510102093', '柯晓文', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('118', '7', '201510102114', '黄佳玲', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('119', '8', '201510102232', '曾琪', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('120', '9', '201510102313', '蔡仰芝', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('121', '10', '201510102357', '梁嘉琪', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('122', '11', '201510102362', '张旭蕾', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('123', '12', '201510102373', '杨清如', 'D', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('124', '13', '201510102377', '叶倩怡', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('125', '14', '201510102380', '卢惠贤', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('126', '15', '201510102382', '何晓君', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('127', '16', '201510102399', '王伶宇', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('128', '17', '201510102400', '叶根欢', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('129', '18', '201510102405', '刘海琪', 'A', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('130', '19', '201510102407', '吴诗文', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('131', '20', '201510102408', '罗锦花', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('132', '21', '201510102409', '陈春秀', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('133', '22', '201510102418', '罗晓宜', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('134', '23', '201510102427', '林海玲', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('135', '24', '201510102433', '黄淼', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('136', '25', '201510102440', '叶芷惠', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('137', '26', '201510102449', '李浩民', 'B', '男', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('138', '27', '201510102458', '司徒泳康', 'B', '男', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('139', '28', '201510102461', '吕东霖', 'B', '男', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('140', '29', '201510102465', '王家劲', 'B', '男', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('141', '30', '201510102471', '周文敏', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('142', '31', '201510102476', '徐梦妤', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('143', '32', '201510102490', '张中炎', 'B', '男', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('144', '33', '201510102508', '何华妍', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('145', '34', '201510102510', '吕宛鲜', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('146', '35', '201510102517', '黄蔚儿', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('147', '36', '201510102524', '陈伟婵', 'B', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('148', '37', '201510102539', '邓梓柔', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('149', '38', '201510102541', '吴洁雅', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('150', '39', '201510102542', '郭惠楠', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('151', '40', '201510102552', '李华媛', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('152', '41', '201510102570', '许婷婷', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('153', '42', '201510102577', '曾淑蔚', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('154', '43', '201510102591', '陈桂娴', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('155', '44', '201510102597', '罗金燕', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('156', '45', '201510102611', '杨燕花', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('157', '46', '201510102613', '张楷莉', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('158', '47', '201510102627', '吴雪容', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('159', '48', '201510102634', '林嘉萍', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('160', '49', '201510102636', '杨华娜', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('161', '50', '201510102649', '陈洁', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('162', '51', '201510102662', '鲍雨晴', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('163', '52', '201510102669', '黄美玲', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('164', '53', '201510112041', '周西薇', 'C', '女', '管理学院15级会计（2）班');
INSERT INTO `allstudentbackup` VALUES ('165', '54', '201510123567', '胡文慧', 'C', '女', '管理学院15级会计（2）班');

-- ----------------------------
-- Records for `allworksbackup`
-- ----------------------------
INSERT INTO `allworksbackup` VALUES ('112', '1', '201510090277', '郭媛', '80', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('113', '2', '201510091261', '杨泽鑫', '80', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('114', '3', '201510092107', '陈海燕', '80', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('115', '4', '201510094017', '钟远锋', '100', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('116', '5', '201510102058', '刘筱晨', '78', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('117', '6', '201510102093', '柯晓文', '78', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('118', '7', '201510102114', '黄佳玲', '80', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('119', '8', '201510102232', '曾琪', '80', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('120', '9', '201510102313', '蔡仰芝', '79', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('121', '10', '201510102357', '梁嘉琪', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('122', '11', '201510102362', '张旭蕾', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('123', '12', '201510102373', '杨清如', '84', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('124', '13', '201510102377', '叶倩怡', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('125', '14', '201510102380', '卢惠贤', '82', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('126', '15', '201510102382', '何晓君', '84', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('127', '16', '201510102399', '王伶宇', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('128', '17', '201510102400', '叶根欢', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('129', '18', '201510102405', '刘海琪', '84', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('130', '19', '201510102407', '吴诗文', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('131', '20', '201510102408', '罗锦花', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('132', '21', '201510102409', '陈春秀', '82', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('133', '22', '201510102418', '罗晓宜', '84', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('134', '23', '201510102427', '林海玲', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('135', '24', '201510102433', '黄淼', '84', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('136', '25', '201510102440', '叶芷惠', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('137', '26', '201510102449', '李浩民', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('138', '27', '201510102458', '司徒泳康', '72', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('139', '28', '201510102461', '吕东霖', '76', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('140', '29', '201510102465', '王家劲', '76', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('141', '30', '201510102471', '周文敏', '77', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('142', '31', '201510102476', '徐梦妤', '75', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('143', '32', '201510102490', '张中炎', '76', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('144', '33', '201510102508', '何华妍', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('145', '34', '201510102510', '吕宛鲜', '85', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('146', '35', '201510102517', '黄蔚儿', '71', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('147', '36', '201510102524', '陈伟婵', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('148', '37', '201510102539', '邓梓柔', '85', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('149', '38', '201510102541', '吴洁雅', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('150', '39', '201510102542', '郭惠楠', '75', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('151', '40', '201510102552', '李华媛', '76', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('152', '41', '201510102570', '许婷婷', '76', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('153', '42', '201510102577', '曾淑蔚', '75', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('154', '43', '201510102591', '陈桂娴', '75', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('155', '44', '201510102597', '罗金燕', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('156', '45', '201510102611', '杨燕花', '85', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('157', '46', '201510102613', '张楷莉', '85', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('158', '47', '201510102627', '吴雪容', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('159', '48', '201510102634', '林嘉萍', '85', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('160', '49', '201510102636', '杨华娜', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('161', '50', '201510102649', '陈洁', '81', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('162', '51', '201510102662', '鲍雨晴', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('163', '52', '201510102669', '黄美玲', '82', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('164', '53', '201510112041', '周西薇', '75', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('165', '54', '201510123567', '胡文慧', '83', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classssbackup`
-- ----------------------------
INSERT INTO `classssbackup` VALUES ('3', '管理学院15级会计（2）班', '54');

-- ----------------------------
-- Records for `singlegradebackup`
-- ----------------------------
INSERT INTO `singlegradebackup` VALUES ('1', '1', '201430102491', '80', '71', '151', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('2', '2', '201510102181', '83', '55', '138', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('3', '3', '201510102270', '82', '68', '150', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('4', '4', '201510102272', '78', '54', '132', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('5', '5', '201510102286', '77', '63', '140', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('6', '6', '201510102344', '85', '66', '151', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('7', '7', '201510102366', '82', '65', '147', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('8', '8', '201510102371', '82', '54', '136', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('9', '9', '201510102372', '81', '64', '145', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('10', '10', '201510102376', '78', '61', '139', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('11', '11', '201510102395', '78', '60', '138', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('12', '12', '201510102397', '75', '64', '139', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('13', '13', '201510102403', '81', '71', '152', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('14', '14', '201510102404', '82', '71', '153', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('15', '15', '201510102413', '84', '80', '164', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('16', '16', '201510102423', '82', '65', '147', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('17', '17', '201510102426', '81', '61', '142', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('18', '18', '201510102429', '73', '68', '141', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('19', '19', '201510102431', '82', '72', '154', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('20', '20', '201510102435', '81', '75', '156', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('21', '21', '201510102436', '82', '57', '139', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('22', '22', '201510102456', '80', '65', '145', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('23', '23', '201510102463', '78', '55', '133', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('24', '24', '201510102464', '77', '57', '134', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('25', '25', '201510102467', '78', '63', '141', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('26', '26', '201510102469', '77', '60', '137', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('27', '27', '201510102470', '77', '57', '134', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('28', '28', '201510102483', '71', '62', '133', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('29', '29', '201510102487', '79', '65', '144', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('30', '30', '201510102488', '80', '54', '134', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('31', '31', '201510102491', '82', '64', '146', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('32', '32', '201510102498', '80', '70', '150', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('33', '0', '33', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('34', '0', '34', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('35', '0', '35', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('36', '0', '36', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('37', '0', '37', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('38', '0', '38', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('39', '0', '39', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('40', '0', '40', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('41', '0', '41', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('42', '0', '42', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('43', '0', '43', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('44', '0', '44', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('45', '0', '45', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('46', '0', '46', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('47', '0', '47', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('48', '0', '48', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('49', '0', '49', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('50', '0', '50', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('51', '0', '51', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('52', '0', '52', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('53', '0', '53', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('54', '0', '54', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('55', '0', '55', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('56', '0', '56', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('57', '0', '57', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('58', '0', '58', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('59', '0', '59', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('60', '0', '60', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('61', '0', '61', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('62', '0', '62', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('63', '0', '63', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('64', '0', '64', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('97', '0', '33', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('98', '0', '34', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('99', '0', '35', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('100', '0', '36', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('101', '0', '37', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('102', '0', '38', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('103', '0', '39', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('104', '0', '40', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('105', '0', '41', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('106', '0', '42', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('107', '0', '43', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('108', '0', '44', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('109', '0', '45', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('110', '0', '46', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('111', '0', '47', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('112', '0', '48', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('113', '0', '49', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('114', '0', '50', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('115', '0', '51', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('116', '0', '52', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('117', '0', '53', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('118', '0', '54', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('119', '0', '55', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('120', '0', '56', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('121', '0', '57', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('122', '0', '58', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('123', '0', '59', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('124', '0', '60', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('125', '0', '61', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('126', '0', '62', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('127', '0', '63', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('128', '0', '64', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('129', '1', '201510090277', '65', '15', '80', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('130', '2', '201510091261', '69', '15', '84', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('131', '3', '201510092107', '65', '15', '80', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('132', '4', '201510094017', '-1', '-1', '-1', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('133', '5', '201510102058', '63', '15', '78', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('134', '6', '201510102093', '65', '13', '78', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('135', '7', '201510102114', '65', '15', '80', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('136', '8', '201510102232', '65', '15', '80', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('137', '9', '201510102313', '64', '15', '79', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('138', '10', '201510102357', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('139', '11', '201510102362', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('140', '12', '201510102373', '69', '15', '84', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('141', '13', '201510102377', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('142', '14', '201510102380', '67', '15', '82', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('143', '15', '201510102382', '69', '15', '84', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('144', '16', '201510102399', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('145', '17', '201510102400', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('146', '18', '201510102405', '69', '15', '84', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('147', '19', '201510102407', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('148', '20', '201510102408', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('149', '21', '201510102409', '67', '15', '82', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('150', '22', '201510102418', '69', '15', '84', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('151', '23', '201510102427', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('152', '24', '201510102433', '69', '15', '84', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('153', '25', '201510102440', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('154', '26', '201510102449', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('155', '27', '201510102458', '61', '11', '72', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('156', '28', '201510102461', '63', '13', '76', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('157', '29', '201510102465', '63', '13', '76', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('158', '30', '201510102471', '64', '13', '77', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('159', '31', '201510102476', '62', '13', '75', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('160', '32', '201510102490', '63', '13', '76', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('161', '33', '201510102508', '68', '15', '83', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('162', '34', '201510102510', '70', '15', '85', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('163', '35', '201510102517', '60', '11', '71', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('164', '36', '201510102524', '68', '15', '83', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('165', '37', '201510102539', '70', '15', '85', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('166', '38', '201510102541', '68', '15', '83', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('167', '39', '201510102542', '62', '13', '75', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('168', '40', '201510102552', '63', '13', '76', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('169', '41', '201510102570', '63', '13', '76', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('170', '42', '201510102577', '62', '13', '75', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('171', '43', '201510102591', '62', '13', '75', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('172', '44', '201510102597', '68', '15', '83', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('173', '45', '201510102611', '70', '15', '85', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('174', '46', '201510102613', '70', '15', '85', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('175', '47', '201510102627', '68', '15', '83', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('176', '48', '201510102634', '70', '15', '85', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('177', '49', '201510102636', '68', '15', '83', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('178', '50', '201510102649', '66', '15', '81', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('179', '51', '201510102662', '68', '15', '83', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('180', '52', '201510102669', '67', '15', '82', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('181', '53', '201510112041', '62', '13', '75', 'Qian_gong');
INSERT INTO `singlegradebackup` VALUES ('182', '54', '201510123567', '68', '15', '83', 'Qian_gong');

-- ----------------------------
-- Records for `totalmarkbackup`
-- ----------------------------
INSERT INTO `totalmarkbackup` VALUES ('112', '1', '201510090277', '郭媛', '80', '68', '90', '79');
INSERT INTO `totalmarkbackup` VALUES ('113', '2', '201510091261', '杨泽鑫', '80', '68', '50', '75');
INSERT INTO `totalmarkbackup` VALUES ('114', '3', '201510092107', '陈海燕', '80', '52', '80', '74');
INSERT INTO `totalmarkbackup` VALUES ('115', '4', '201510094017', '钟远锋', '100', '67', '85', '92');
INSERT INTO `totalmarkbackup` VALUES ('116', '5', '201510102058', '刘筱晨', '78', '62', '80', '75');
INSERT INTO `totalmarkbackup` VALUES ('117', '6', '201510102093', '柯晓文', '78', '76', '60', '76');
INSERT INTO `totalmarkbackup` VALUES ('118', '7', '201510102114', '黄佳玲', '80', '59', '80', '76');
INSERT INTO `totalmarkbackup` VALUES ('119', '8', '201510102232', '曾琪', '80', '77', '70', '78');
INSERT INTO `totalmarkbackup` VALUES ('120', '9', '201510102313', '蔡仰芝', '79', '70', '80', '77');
INSERT INTO `totalmarkbackup` VALUES ('121', '10', '201510102357', '梁嘉琪', '81', '66', '30', '73');
INSERT INTO `totalmarkbackup` VALUES ('122', '11', '201510102362', '张旭蕾', '81', '73', '90', '80');
INSERT INTO `totalmarkbackup` VALUES ('123', '12', '201510102373', '杨清如', '84', '60', '80', '79');
INSERT INTO `totalmarkbackup` VALUES ('124', '13', '201510102377', '叶倩怡', '81', '70', '80', '79');
INSERT INTO `totalmarkbackup` VALUES ('125', '14', '201510102380', '卢惠贤', '82', '57', '80', '77');
INSERT INTO `totalmarkbackup` VALUES ('126', '15', '201510102382', '何晓君', '84', '65', '75', '79');
INSERT INTO `totalmarkbackup` VALUES ('127', '16', '201510102399', '王伶宇', '81', '70', '50', '76');
INSERT INTO `totalmarkbackup` VALUES ('128', '17', '201510102400', '叶根欢', '81', '76', '75', '79');
INSERT INTO `totalmarkbackup` VALUES ('129', '18', '201510102405', '刘海琪', '84', '72', '80', '81');
INSERT INTO `totalmarkbackup` VALUES ('130', '19', '201510102407', '吴诗文', '81', '56', '80', '76');
INSERT INTO `totalmarkbackup` VALUES ('131', '20', '201510102408', '罗锦花', '81', '52', '80', '75');
INSERT INTO `totalmarkbackup` VALUES ('132', '21', '201510102409', '陈春秀', '82', '49', '80', '75');
INSERT INTO `totalmarkbackup` VALUES ('133', '22', '201510102418', '罗晓宜', '84', '57', '75', '78');
INSERT INTO `totalmarkbackup` VALUES ('134', '23', '201510102427', '林海玲', '81', '69', '85', '79');
INSERT INTO `totalmarkbackup` VALUES ('135', '24', '201510102433', '黄淼', '84', '49', '85', '77');
INSERT INTO `totalmarkbackup` VALUES ('136', '25', '201510102440', '叶芷惠', '81', '63', '80', '77');
INSERT INTO `totalmarkbackup` VALUES ('137', '26', '201510102449', '李浩民', '81', '66', '70', '77');
INSERT INTO `totalmarkbackup` VALUES ('138', '27', '201510102458', '司徒泳康', '72', '58', '80', '70');
INSERT INTO `totalmarkbackup` VALUES ('139', '28', '201510102461', '吕东霖', '76', '52', '0', '64');
INSERT INTO `totalmarkbackup` VALUES ('140', '29', '201510102465', '王家劲', '76', '63', '80', '74');
INSERT INTO `totalmarkbackup` VALUES ('141', '30', '201510102471', '周文敏', '77', '41', '60', '68');
INSERT INTO `totalmarkbackup` VALUES ('142', '31', '201510102476', '徐梦妤', '75', '76', '80', '76');
INSERT INTO `totalmarkbackup` VALUES ('143', '32', '201510102490', '张中炎', '76', '77', '75', '76');
INSERT INTO `totalmarkbackup` VALUES ('144', '33', '201510102508', '何华妍', '83', '60', '80', '78');
INSERT INTO `totalmarkbackup` VALUES ('145', '34', '201510102510', '吕宛鲜', '85', '65', '80', '80');
INSERT INTO `totalmarkbackup` VALUES ('146', '35', '201510102517', '黄蔚儿', '71', '66', '80', '71');
INSERT INTO `totalmarkbackup` VALUES ('147', '36', '201510102524', '陈伟婵', '83', '48', '80', '76');
INSERT INTO `totalmarkbackup` VALUES ('148', '37', '201510102539', '邓梓柔', '85', '67', '90', '82');
INSERT INTO `totalmarkbackup` VALUES ('149', '38', '201510102541', '吴洁雅', '83', '82', '90', '84');
INSERT INTO `totalmarkbackup` VALUES ('150', '39', '201510102542', '郭惠楠', '75', '70', '90', '76');
INSERT INTO `totalmarkbackup` VALUES ('151', '40', '201510102552', '李华媛', '76', '55', '80', '72');
INSERT INTO `totalmarkbackup` VALUES ('152', '41', '201510102570', '许婷婷', '76', '61', '80', '73');
INSERT INTO `totalmarkbackup` VALUES ('153', '42', '201510102577', '曾淑蔚', '75', '61', '30', '68');
INSERT INTO `totalmarkbackup` VALUES ('154', '43', '201510102591', '陈桂娴', '75', '68', '70', '73');
INSERT INTO `totalmarkbackup` VALUES ('155', '44', '201510102597', '罗金燕', '83', '62', '70', '78');
INSERT INTO `totalmarkbackup` VALUES ('156', '45', '201510102611', '杨燕花', '85', '64', '90', '81');
INSERT INTO `totalmarkbackup` VALUES ('157', '46', '201510102613', '张楷莉', '85', '69', '90', '82');
INSERT INTO `totalmarkbackup` VALUES ('158', '47', '201510102627', '吴雪容', '83', '60', '80', '78');
INSERT INTO `totalmarkbackup` VALUES ('159', '48', '201510102634', '林嘉萍', '85', '64', '80', '80');
INSERT INTO `totalmarkbackup` VALUES ('160', '49', '201510102636', '杨华娜', '83', '71', '85', '81');
INSERT INTO `totalmarkbackup` VALUES ('161', '50', '201510102649', '陈洁', '81', '77', '75', '80');
INSERT INTO `totalmarkbackup` VALUES ('162', '51', '201510102662', '鲍雨晴', '83', '67', '75', '79');
INSERT INTO `totalmarkbackup` VALUES ('163', '52', '201510102669', '黄美玲', '82', '73', '80', '80');
INSERT INTO `totalmarkbackup` VALUES ('164', '53', '201510112041', '周西薇', '75', '55', '80', '72');
INSERT INTO `totalmarkbackup` VALUES ('165', '54', '201510123567', '胡文慧', '83', '66', '75', '79');

