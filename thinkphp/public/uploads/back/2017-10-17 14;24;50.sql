-- ----------------------------
-- 日期：2017-10-17 14:24:50
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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classss`
-- ----------------------------
DROP TABLE IF EXISTS `classss`;
CREATE TABLE `classss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1 COMMENT='单工种成绩表';

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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudent`
-- ----------------------------
INSERT INTO `allstudent` VALUES ('180', '1', '201510102009', '李铭佩', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('181', '2', '201510102017', '胡秋仙', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('182', '3', '201510102027', '陈梓曦', 'F', '男', '');
INSERT INTO `allstudent` VALUES ('183', '4', '201510102040', '郭映珊', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('184', '5', '201510102053', '邹文琪', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('185', '6', '201510102054', '邓行丽', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('186', '7', '201510102069', '罗裕婷', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('187', '8', '201510102112', '林森柱', 'F', '男', '');
INSERT INTO `allstudent` VALUES ('188', '9', '201510102118', '陈淑萍', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('189', '10', '201510102129', '蔡淑敏', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('190', '11', '201510102144', '庞舒惠', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('191', '12', '201510102160', '陈思思', 'F', '女', '');
INSERT INTO `allstudent` VALUES ('192', '13', '201510102161', '赖伟婷', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('193', '14', '201510102162', '陆慧心', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('194', '15', '201510102165', '陈国聪', 'G', '男', '');
INSERT INTO `allstudent` VALUES ('195', '16', '201510102198', '卢伟慧', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('196', '17', '201510102212', '杨广大', 'G', '男', '');
INSERT INTO `allstudent` VALUES ('197', '18', '201510102213', '温飞燕', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('198', '19', '201510102217', '王梓聪', 'G', '男', '');
INSERT INTO `allstudent` VALUES ('199', '20', '201510102225', '余晓铭', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('200', '21', '201510102230', '熊炽鑫', 'G', '男', '');
INSERT INTO `allstudent` VALUES ('201', '22', '201510102249', '陈静敏', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('202', '23', '201510102256', '王成兰', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('203', '24', '201510102260', '何抒艺', 'G', '女', '');
INSERT INTO `allstudent` VALUES ('204', '25', '201510102269', '张韵', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('205', '26', '201510102275', '朱勇健', 'H', '男', '');
INSERT INTO `allstudent` VALUES ('206', '27', '201510102276', '李芷君', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('207', '28', '201510102287', '吴冠聪', 'H', '男', '');
INSERT INTO `allstudent` VALUES ('208', '29', '201510102291', '刘淑娴', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('209', '30', '201510102310', '王佩璇', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('210', '31', '201510102317', '曾洁铌', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('211', '32', '201510102330', '吴惜银', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('212', '33', '201510102336', '许晓琳', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('213', '34', '201510102343', '周俊钦', 'H', '男', '');
INSERT INTO `allstudent` VALUES ('214', '35', '201510102350', '张彩霞', 'H', '女', '');
INSERT INTO `allstudent` VALUES ('215', '36', '201510102358', '黄子睿', 'H', '男', '');
INSERT INTO `allstudent` VALUES ('216', '37', '201510102391', '张美玲', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('217', '38', '201510102392', '付淑霞', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('218', '39', '201510102402', '李桂虹', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('219', '40', '201510102406', '曾丽莉', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('220', '41', '201510102420', '詹素珊', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('221', '42', '201510102444', '邓彩婷', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('222', '43', '201510102447', '叶华清', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('223', '44', '201510102454', '陈颖瑜', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('224', '45', '201510102474', '梁思源', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('225', '46', '201510102492', '李晓晴', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('226', '47', '201510102526', '曾莉莉', 'I', '女', '');
INSERT INTO `allstudent` VALUES ('227', '48', '201510102527', '冯诗萍', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('228', '49', '201510102560', '范小慧', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('229', '50', '201510102581', '高铭常', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('230', '51', '201510102593', '黄奕', 'J', '男', '');
INSERT INTO `allstudent` VALUES ('231', '52', '201510102615', '陈彦菲', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('232', '53', '201510102620', '卢曼君', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('233', '54', '201510102622', '林婉春', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('234', '55', '201510102637', '田莉琳', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('235', '56', '201510102640', '赵家琪', 'J', '女', '');
INSERT INTO `allstudent` VALUES ('236', '57', '201510102668', '刘文静', 'J', '女', '');

-- ----------------------------
-- Records for `allworks`
-- ----------------------------
INSERT INTO `allworks` VALUES ('180', '1', '201510102009', '李铭佩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('181', '2', '201510102017', '胡秋仙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('182', '3', '201510102027', '陈梓曦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('183', '4', '201510102040', '郭映珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('184', '5', '201510102053', '邹文琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('185', '6', '201510102054', '邓行丽', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('186', '7', '201510102069', '罗裕婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('187', '8', '201510102112', '林森柱', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('188', '9', '201510102118', '陈淑萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('189', '10', '201510102129', '蔡淑敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('190', '11', '201510102144', '庞舒惠', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('191', '12', '201510102160', '陈思思', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('192', '13', '201510102161', '赖伟婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('193', '14', '201510102162', '陆慧心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('194', '15', '201510102165', '陈国聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('195', '16', '201510102198', '卢伟慧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('196', '17', '201510102212', '杨广大', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('197', '18', '201510102213', '温飞燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('198', '19', '201510102217', '王梓聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('199', '20', '201510102225', '余晓铭', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('200', '21', '201510102230', '熊炽鑫', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('201', '22', '201510102249', '陈静敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('202', '23', '201510102256', '王成兰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('203', '24', '201510102260', '何抒艺', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('204', '25', '201510102269', '张韵', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('205', '26', '201510102275', '朱勇健', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('206', '27', '201510102276', '李芷君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('207', '28', '201510102287', '吴冠聪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('208', '29', '201510102291', '刘淑娴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('209', '30', '201510102310', '王佩璇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('210', '31', '201510102317', '曾洁铌', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('211', '32', '201510102330', '吴惜银', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('212', '33', '201510102336', '许晓琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('213', '34', '201510102343', '周俊钦', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('214', '35', '201510102350', '张彩霞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('215', '36', '201510102358', '黄子睿', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('216', '37', '201510102391', '张美玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('217', '38', '201510102392', '付淑霞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('218', '39', '201510102402', '李桂虹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('219', '40', '201510102406', '曾丽莉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('220', '41', '201510102420', '詹素珊', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('221', '42', '201510102444', '邓彩婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('222', '43', '201510102447', '叶华清', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('223', '44', '201510102454', '陈颖瑜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('224', '45', '201510102474', '梁思源', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('225', '46', '201510102492', '李晓晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('226', '47', '201510102526', '曾莉莉', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('227', '48', '201510102527', '冯诗萍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('228', '49', '201510102560', '范小慧', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('229', '50', '201510102581', '高铭常', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('230', '51', '201510102593', '黄奕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('231', '52', '201510102615', '陈彦菲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('232', '53', '201510102620', '卢曼君', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('233', '54', '201510102622', '林婉春', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('234', '55', '201510102637', '田莉琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('235', '56', '201510102640', '赵家琪', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('236', '57', '201510102668', '刘文静', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classss`
-- ----------------------------
INSERT INTO `classss` VALUES ('5', '', '57');

-- ----------------------------
-- Records for `singlegrade`
-- ----------------------------
INSERT INTO `singlegrade` VALUES ('157', '1', '201610131001', '30', '1', '31', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('158', '2', '201610131002', '31', '2', '33', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('159', '3', '201610131003', '32', '3', '35', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('160', '4', '201610131004', '33', '4', '37', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('161', '5', '201610131005', '34', '5', '39', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('162', '6', '201610131006', '35', '6', '41', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('163', '7', '201610131007', '36', '7', '43', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('164', '8', '201610131008', '37', '8', '45', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('165', '9', '201610131009', '38', '9', '47', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('166', '10', '201610131010', '39', '10', '49', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('167', '11', '201610131011', '40', '11', '51', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('168', '12', '201610131012', '41', '12', '53', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('169', '13', '201610131013', '42', '13', '55', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('170', '14', '201610131014', '43', '14', '57', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('171', '15', '201610131015', '44', '1', '45', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('172', '16', '201610131017', '45', '2', '47', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('173', '17', '201610131018', '46', '3', '49', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('174', '18', '201610131019', '47', '4', '51', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('175', '19', '201610131020', '48', '5', '53', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('176', '20', '201610131021', '49', '6', '55', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('177', '21', '201610131022', '50', '7', '57', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('178', '22', '201610131023', '51', '8', '59', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('179', '23', '201610131024', '52', '9', '61', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('180', '24', '201610131025', '53', '10', '63', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('181', '25', '201610131026', '54', '11', '65', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('182', '26', '201610131027', '55', '12', '67', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('183', '27', '201610131028', '56', '13', '69', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('184', '28', '201610131029', '57', '14', '71', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('185', '29', '201610131030', '58', '15', '73', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('186', '30', '201610131031', '59', '1', '60', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('187', '31', '201610131032', '60', '2', '62', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('188', '32', '201610131033', '61', '3', '64', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('189', '33', '201610131034', '42', '1', '43', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('190', '34', '201610131036', '43', '2', '45', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('191', '35', '201610131037', '44', '3', '47', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('192', '36', '201610131038', '45', '4', '49', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('193', '37', '201610131039', '46', '5', '51', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('194', '38', '201610131040', '47', '6', '53', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('195', '39', '201610131041', '48', '7', '55', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('196', '40', '201610131042', '49', '8', '57', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('197', '41', '201610131043', '50', '9', '59', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('198', '42', '201610131044', '51', '10', '61', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('199', '43', '201610131046', '52', '11', '63', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('200', '44', '201610131047', '53', '12', '65', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('201', '45', '201610131048', '54', '1', '55', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('202', '46', '201610131049', '55', '3', '58', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('203', '47', '201610131050', '56', '4', '60', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('204', '48', '201610131053', '57', '5', '62', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('205', '49', '201610131054', '58', '6', '64', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('206', '50', '201610131055', '59', '7', '66', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('207', '51', '201610131056', '60', '8', '68', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('208', '52', '201610131057', '61', '9', '70', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('210', '1', '201510102003', '21', '1', '22', 'Qian_gong');

-- ----------------------------
-- Records for `totalmark`
-- ----------------------------
INSERT INTO `totalmark` VALUES ('180', '1', '201510102009', '李铭佩', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('181', '2', '201510102017', '胡秋仙', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('182', '3', '201510102027', '陈梓曦', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('183', '4', '201510102040', '郭映珊', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('184', '5', '201510102053', '邹文琪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('185', '6', '201510102054', '邓行丽', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('186', '7', '201510102069', '罗裕婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('187', '8', '201510102112', '林森柱', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('188', '9', '201510102118', '陈淑萍', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('189', '10', '201510102129', '蔡淑敏', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('190', '11', '201510102144', '庞舒惠', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('191', '12', '201510102160', '陈思思', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('192', '13', '201510102161', '赖伟婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('193', '14', '201510102162', '陆慧心', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('194', '15', '201510102165', '陈国聪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('195', '16', '201510102198', '卢伟慧', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('196', '17', '201510102212', '杨广大', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('197', '18', '201510102213', '温飞燕', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('198', '19', '201510102217', '王梓聪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('199', '20', '201510102225', '余晓铭', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('200', '21', '201510102230', '熊炽鑫', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('201', '22', '201510102249', '陈静敏', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('202', '23', '201510102256', '王成兰', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('203', '24', '201510102260', '何抒艺', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('204', '25', '201510102269', '张韵', '0', '81', '0', '0');
INSERT INTO `totalmark` VALUES ('205', '26', '201510102275', '朱勇健', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('206', '27', '201510102276', '李芷君', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('207', '28', '201510102287', '吴冠聪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('208', '29', '201510102291', '刘淑娴', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('209', '30', '201510102310', '王佩璇', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('210', '31', '201510102317', '曾洁铌', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('211', '32', '201510102330', '吴惜银', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('212', '33', '201510102336', '许晓琳', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('213', '34', '201510102343', '周俊钦', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('214', '35', '201510102350', '张彩霞', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('215', '36', '201510102358', '黄子睿', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('216', '37', '201510102391', '张美玲', '0', '61', '0', '0');
INSERT INTO `totalmark` VALUES ('217', '38', '201510102392', '付淑霞', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('218', '39', '201510102402', '李桂虹', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('219', '40', '201510102406', '曾丽莉', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('220', '41', '201510102420', '詹素珊', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('221', '42', '201510102444', '邓彩婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('222', '43', '201510102447', '叶华清', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('223', '44', '201510102454', '陈颖瑜', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('224', '45', '201510102474', '梁思源', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('225', '46', '201510102492', '李晓晴', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('226', '47', '201510102526', '曾莉莉', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('227', '48', '201510102527', '冯诗萍', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('228', '49', '201510102560', '范小慧', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('229', '50', '201510102581', '高铭常', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('230', '51', '201510102593', '黄奕', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('231', '52', '201510102615', '陈彦菲', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('232', '53', '201510102620', '卢曼君', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('233', '54', '201510102622', '林婉春', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('234', '55', '201510102637', '田莉琳', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('235', '56', '201510102640', '赵家琪', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('236', '57', '201510102668', '刘文静', '0', '0', '0', '0');

