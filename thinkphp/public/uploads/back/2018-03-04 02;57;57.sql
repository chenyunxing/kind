-- ----------------------------
-- 日期：2018-03-04 02:57:57
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
INSERT INTO `allstudentbackup` VALUES ('1', '1', '201510102009', '李铭佩', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('2', '2', '201510102017', '胡秋仙', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('3', '3', '201510102027', '陈梓曦', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('4', '4', '201510102040', '郭映珊', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('5', '5', '201510102053', '邹文琪', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('6', '6', '201510102054', '邓行丽', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('7', '7', '201510102069', '罗裕婷', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('8', '8', '201510102112', '林森柱', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('9', '9', '201510102118', '陈淑萍', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('10', '10', '201510102129', '蔡淑敏', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('11', '11', '201510102144', '庞舒惠', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('12', '12', '201510102160', '陈思思', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('13', '13', '201510102161', '赖伟婷', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('14', '14', '201510102162', '陆慧心', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('15', '15', '201510102165', '陈国聪', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('16', '16', '201510102198', '卢伟慧', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('17', '17', '201510102212', '杨广大', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('18', '18', '201510102213', '温飞燕', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('19', '19', '201510102217', '王梓聪', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('20', '20', '201510102225', '余晓铭', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('21', '21', '201510102230', '熊炽鑫', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('22', '22', '201510102249', '陈静敏', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('23', '23', '201510102256', '王成兰', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('24', '24', '201510102260', '何抒艺', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('25', '25', '201510102269', '张韵', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('26', '26', '201510102275', '朱勇健', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('27', '27', '201510102276', '李芷君', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('28', '28', '201510102287', '吴冠聪', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('29', '29', '201510102291', '刘淑娴', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('30', '30', '201510102310', '王佩璇', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('31', '31', '201510102317', '曾洁铌', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('32', '32', '201510102330', '吴惜银', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('33', '33', '201510102336', '许晓琳', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('34', '34', '201510102343', '周俊钦', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('35', '35', '201510102350', '张彩霞', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('36', '36', '201510102358', '黄子睿', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('37', '37', '201510102391', '张美玲', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('38', '38', '201510102392', '付淑霞', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('39', '39', '201510102402', '李桂虹', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('40', '40', '201510102406', '曾丽莉', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('41', '41', '201510102420', '詹素珊', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('42', '42', '201510102444', '邓彩婷', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('43', '43', '201510102447', '叶华清', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('44', '44', '201510102454', '陈颖瑜', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('45', '45', '201510102474', '梁思源', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('46', '46', '201510102492', '李晓晴', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('47', '47', '201510102526', '曾莉莉', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('48', '48', '201510102527', '冯诗萍', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('49', '49', '201510102560', '范小慧', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('50', '50', '201510102581', '高铭常', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('51', '51', '201510102593', '黄奕', '', '男', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('52', '52', '201510102615', '陈彦菲', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('53', '53', '201510102620', '卢曼君', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('54', '54', '201510102622', '林婉春', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('55', '55', '201510102637', '田莉琳', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('56', '56', '201510102640', '赵家琪', '', '女', '管理学院15级会计（5）班');
INSERT INTO `allstudentbackup` VALUES ('57', '57', '201510102668', '刘文静', '', '女', '管理学院15级会计（5）班');

-- ----------------------------
-- Records for `allworksbackup`
-- ----------------------------
INSERT INTO `allworksbackup` VALUES ('1', '1', '201510102009', '李铭佩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('2', '2', '201510102017', '胡秋仙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('3', '3', '201510102027', '陈梓曦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('4', '4', '201510102040', '郭映珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('5', '5', '201510102053', '邹文琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('6', '6', '201510102054', '邓行丽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('7', '7', '201510102069', '罗裕婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('8', '8', '201510102112', '林森柱', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('9', '9', '201510102118', '陈淑萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('10', '10', '201510102129', '蔡淑敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('11', '11', '201510102144', '庞舒惠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('12', '12', '201510102160', '陈思思', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('13', '13', '201510102161', '赖伟婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('14', '14', '201510102162', '陆慧心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('15', '15', '201510102165', '陈国聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('16', '16', '201510102198', '卢伟慧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('17', '17', '201510102212', '杨广大', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('18', '18', '201510102213', '温飞燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('19', '19', '201510102217', '王梓聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('20', '20', '201510102225', '余晓铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('21', '21', '201510102230', '熊炽鑫', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('22', '22', '201510102249', '陈静敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('23', '23', '201510102256', '王成兰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('24', '24', '201510102260', '何抒艺', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('25', '25', '201510102269', '张韵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('26', '26', '201510102275', '朱勇健', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('27', '27', '201510102276', '李芷君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('28', '28', '201510102287', '吴冠聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('29', '29', '201510102291', '刘淑娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('30', '30', '201510102310', '王佩璇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('31', '31', '201510102317', '曾洁铌', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('32', '32', '201510102330', '吴惜银', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('33', '33', '201510102336', '许晓琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('34', '34', '201510102343', '周俊钦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('35', '35', '201510102350', '张彩霞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('36', '36', '201510102358', '黄子睿', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('37', '37', '201510102391', '张美玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('38', '38', '201510102392', '付淑霞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('39', '39', '201510102402', '李桂虹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('40', '40', '201510102406', '曾丽莉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('41', '41', '201510102420', '詹素珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('42', '42', '201510102444', '邓彩婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('43', '43', '201510102447', '叶华清', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('44', '44', '201510102454', '陈颖瑜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('45', '45', '201510102474', '梁思源', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('46', '46', '201510102492', '李晓晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('47', '47', '201510102526', '曾莉莉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('48', '48', '201510102527', '冯诗萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('49', '49', '201510102560', '范小慧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('50', '50', '201510102581', '高铭常', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('51', '51', '201510102593', '黄奕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('52', '52', '201510102615', '陈彦菲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('53', '53', '201510102620', '卢曼君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('54', '54', '201510102622', '林婉春', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('55', '55', '201510102637', '田莉琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('56', '56', '201510102640', '赵家琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworksbackup` VALUES ('57', '57', '201510102668', '刘文静', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classssbackup`
-- ----------------------------
INSERT INTO `classssbackup` VALUES ('1', '管理学院15级会计（5）班', '57');

-- ----------------------------
-- Records for `totalmarkbackup`
-- ----------------------------
INSERT INTO `totalmarkbackup` VALUES ('1', '1', '201510102009', '李铭佩', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('2', '2', '201510102017', '胡秋仙', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('3', '3', '201510102027', '陈梓曦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('4', '4', '201510102040', '郭映珊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('5', '5', '201510102053', '邹文琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('6', '6', '201510102054', '邓行丽', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('7', '7', '201510102069', '罗裕婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('8', '8', '201510102112', '林森柱', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('9', '9', '201510102118', '陈淑萍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('10', '10', '201510102129', '蔡淑敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('11', '11', '201510102144', '庞舒惠', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('12', '12', '201510102160', '陈思思', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('13', '13', '201510102161', '赖伟婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('14', '14', '201510102162', '陆慧心', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('15', '15', '201510102165', '陈国聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('16', '16', '201510102198', '卢伟慧', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('17', '17', '201510102212', '杨广大', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('18', '18', '201510102213', '温飞燕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('19', '19', '201510102217', '王梓聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('20', '20', '201510102225', '余晓铭', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('21', '21', '201510102230', '熊炽鑫', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('22', '22', '201510102249', '陈静敏', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('23', '23', '201510102256', '王成兰', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('24', '24', '201510102260', '何抒艺', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('25', '25', '201510102269', '张韵', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('26', '26', '201510102275', '朱勇健', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('27', '27', '201510102276', '李芷君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('28', '28', '201510102287', '吴冠聪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('29', '29', '201510102291', '刘淑娴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('30', '30', '201510102310', '王佩璇', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('31', '31', '201510102317', '曾洁铌', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('32', '32', '201510102330', '吴惜银', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('33', '33', '201510102336', '许晓琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('34', '34', '201510102343', '周俊钦', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('35', '35', '201510102350', '张彩霞', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('36', '36', '201510102358', '黄子睿', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('37', '37', '201510102391', '张美玲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('38', '38', '201510102392', '付淑霞', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('39', '39', '201510102402', '李桂虹', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('40', '40', '201510102406', '曾丽莉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('41', '41', '201510102420', '詹素珊', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('42', '42', '201510102444', '邓彩婷', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('43', '43', '201510102447', '叶华清', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('44', '44', '201510102454', '陈颖瑜', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('45', '45', '201510102474', '梁思源', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('46', '46', '201510102492', '李晓晴', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('47', '47', '201510102526', '曾莉莉', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('48', '48', '201510102527', '冯诗萍', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('49', '49', '201510102560', '范小慧', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('50', '50', '201510102581', '高铭常', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('51', '51', '201510102593', '黄奕', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('52', '52', '201510102615', '陈彦菲', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('53', '53', '201510102620', '卢曼君', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('54', '54', '201510102622', '林婉春', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('55', '55', '201510102637', '田莉琳', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('56', '56', '201510102640', '赵家琪', '0', '0', '0', '0');
INSERT INTO `totalmarkbackup` VALUES ('57', '57', '201510102668', '刘文静', '0', '0', '0', '0');

