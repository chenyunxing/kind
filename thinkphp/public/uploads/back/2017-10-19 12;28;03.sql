-- ----------------------------
-- 日期：2017-10-19 12:28:03
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1 COMMENT='单工种成绩表';

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudent`
-- ----------------------------
INSERT INTO `allstudent` VALUES ('1', '1', '201510102003', '梁臻华', 'A', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('2', '2', '201510102014', '黄碧欣', 'A', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('3', '3', '201510102024', '黄沛弘', 'A', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('4', '4', '201510102048', '卢细珍', 'A', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('5', '5', '201510102062', '凌博文', 'A', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('6', '6', '201510102072', '杨润琪', 'A', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('7', '7', '201510102075', '陈晓曼', 'A', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('8', '8', '201510102106', '金森锋', 'A', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('9', '9', '201510102131', '黄菁菁', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('10', '10', '201510102145', '梁鸿英', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('11', '11', '201510102146', '陈李君', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('12', '12', '201510102175', '陈锦婷', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('13', '13', '201510102199', '黄烨', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('14', '14', '201510102204', '刘智宴', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('15', '15', '201510102216', '卢杨妹', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('16', '16', '201510102218', '曾惠琼', 'B', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('17', '17', '201510102221', '曾华燕', 'C', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('18', '18', '201510102247', '侯晓丹', 'C', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('19', '19', '201510102263', '梁绮乔', 'C', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('20', '20', '201510102280', '何家伟', 'C', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('21', '21', '201510102281', '尹嘉', 'C', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('22', '22', '201510102285', '陈楚豪', 'C', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('23', '23', '201510102290', '吴志波', 'C', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('24', '24', '201510102305', '黄绮倩', 'C', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('25', '25', '201510102309', '蔡锭宇', 'D', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('26', '26', '201510102319', '刘芸钿', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('27', '27', '201510102320', '邢苗晴', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('28', '28', '201510102331', '胡晓娣', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('29', '29', '201510102340', '纪春虹', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('30', '30', '201510102360', '戚斯威', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('31', '31', '201510102394', '尹志欣', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('32', '32', '201510102411', '谭可怡', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('33', '33', '201510102415', '吴银燕', 'D', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('34', '34', '201510102419', '陈家琪', 'E', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('35', '35', '201510102424', '李彤', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('36', '36', '201510102450', '江嘉敏', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('37', '37', '201510102451', '林丽珊', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('38', '38', '201510102475', '郑诗娜', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('39', '39', '201510102493', '谢彤彤', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('40', '40', '201510102495', '蔡春媚', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('41', '41', '201510102514', '苏嘉琪', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('42', '42', '201510102519', '曾梓琼', 'E', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('43', '43', '201510102530', '罗玉萍', 'F', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('44', '44', '201510102533', '陈海妮', 'F', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('45', '45', '201510102543', '赖仙清', 'F', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('46', '46', '201510102561', '叶瑜平', 'F', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('47', '47', '201510102583', '关天然', 'F', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('48', '48', '201510102599', '温智豪', 'F', '男', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('49', '49', '201510102612', '陈妙玲', 'F', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('50', '50', '201510102625', '郑泽华', 'F', '女', '管理学院15级会计（6）班');
INSERT INTO `allstudent` VALUES ('51', '51', '201510102670', '黄紫彤', 'F', '女', '管理学院15级会计（6）班');

-- ----------------------------
-- Records for `allworks`
-- ----------------------------
INSERT INTO `allworks` VALUES ('1', '1', '201510102003', '梁臻华', '50', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '70', '-1');
INSERT INTO `allworks` VALUES ('2', '2', '201510102014', '黄碧欣', '36', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '36', '-1');
INSERT INTO `allworks` VALUES ('3', '3', '201510102024', '黄沛弘', '38', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '38', '-1');
INSERT INTO `allworks` VALUES ('4', '4', '201510102048', '卢细珍', '40', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '40', '-1');
INSERT INTO `allworks` VALUES ('5', '5', '201510102062', '凌博文', '42', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '42', '-1');
INSERT INTO `allworks` VALUES ('6', '6', '201510102072', '杨润琪', '44', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '44', '-1');
INSERT INTO `allworks` VALUES ('7', '7', '201510102075', '陈晓曼', '46', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '46', '-1');
INSERT INTO `allworks` VALUES ('8', '8', '201510102106', '金森锋', '48', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '48', '-1');
INSERT INTO `allworks` VALUES ('9', '9', '201510102131', '黄菁菁', '50', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '50', '-1');
INSERT INTO `allworks` VALUES ('10', '10', '201510102145', '梁鸿英', '52', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '52', '-1');
INSERT INTO `allworks` VALUES ('11', '11', '201510102146', '陈李君', '54', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '54', '-1');
INSERT INTO `allworks` VALUES ('12', '12', '201510102175', '陈锦婷', '56', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '56', '-1');
INSERT INTO `allworks` VALUES ('13', '13', '201510102199', '黄烨', '58', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '58', '-1');
INSERT INTO `allworks` VALUES ('14', '14', '201510102204', '刘智宴', '60', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '60', '-1');
INSERT INTO `allworks` VALUES ('15', '15', '201510102216', '卢杨妹', '62', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '62', '-1');
INSERT INTO `allworks` VALUES ('16', '16', '201510102218', '曾惠琼', '64', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '64', '-1');
INSERT INTO `allworks` VALUES ('17', '17', '201510102221', '曾华燕', '66', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '66', '-1');
INSERT INTO `allworks` VALUES ('18', '18', '201510102247', '侯晓丹', '68', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '68', '-1');
INSERT INTO `allworks` VALUES ('19', '19', '201510102263', '梁绮乔', '70', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '70', '-1');
INSERT INTO `allworks` VALUES ('20', '20', '201510102280', '何家伟', '72', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '72', '-1');
INSERT INTO `allworks` VALUES ('21', '21', '201510102281', '尹嘉', '74', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '74', '-1');
INSERT INTO `allworks` VALUES ('22', '22', '201510102285', '陈楚豪', '76', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '76', '-1');
INSERT INTO `allworks` VALUES ('23', '23', '201510102290', '吴志波', '78', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '78', '-1');
INSERT INTO `allworks` VALUES ('24', '24', '201510102305', '黄绮倩', '80', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '80', '-1');
INSERT INTO `allworks` VALUES ('25', '25', '201510102309', '蔡锭宇', '82', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '82', '-1');
INSERT INTO `allworks` VALUES ('26', '26', '201510102319', '刘芸钿', '84', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '84', '-1');
INSERT INTO `allworks` VALUES ('27', '27', '201510102320', '邢苗晴', '86', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '86', '-1');
INSERT INTO `allworks` VALUES ('28', '28', '201510102331', '胡晓娣', '88', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '88', '-1');
INSERT INTO `allworks` VALUES ('29', '29', '201510102340', '纪春虹', '90', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '90', '-1');
INSERT INTO `allworks` VALUES ('30', '30', '201510102360', '戚斯威', '92', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '92', '-1');
INSERT INTO `allworks` VALUES ('31', '31', '201510102394', '尹志欣', '94', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '94', '-1');
INSERT INTO `allworks` VALUES ('32', '32', '201510102411', '谭可怡', '96', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '96', '-1');
INSERT INTO `allworks` VALUES ('33', '33', '201510102415', '吴银燕', '34', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '34', '-1');
INSERT INTO `allworks` VALUES ('34', '34', '201510102419', '陈家琪', '36', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '36', '-1');
INSERT INTO `allworks` VALUES ('35', '35', '201510102424', '李彤', '38', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '38', '-1');
INSERT INTO `allworks` VALUES ('36', '36', '201510102450', '江嘉敏', '40', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '40', '-1');
INSERT INTO `allworks` VALUES ('37', '37', '201510102451', '林丽珊', '42', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '42', '-1');
INSERT INTO `allworks` VALUES ('38', '38', '201510102475', '郑诗娜', '44', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '44', '-1');
INSERT INTO `allworks` VALUES ('39', '39', '201510102493', '谢彤彤', '46', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '46', '-1');
INSERT INTO `allworks` VALUES ('40', '40', '201510102495', '蔡春媚', '48', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '48', '-1');
INSERT INTO `allworks` VALUES ('41', '41', '201510102514', '苏嘉琪', '50', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '50', '-1');
INSERT INTO `allworks` VALUES ('42', '42', '201510102519', '曾梓琼', '52', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '52', '-1');
INSERT INTO `allworks` VALUES ('43', '43', '201510102530', '罗玉萍', '54', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '54', '-1');
INSERT INTO `allworks` VALUES ('44', '44', '201510102533', '陈海妮', '56', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '56', '-1');
INSERT INTO `allworks` VALUES ('45', '45', '201510102543', '赖仙清', '58', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '58', '-1');
INSERT INTO `allworks` VALUES ('46', '46', '201510102561', '叶瑜平', '60', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '60', '-1');
INSERT INTO `allworks` VALUES ('47', '47', '201510102583', '关天然', '62', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '62', '-1');
INSERT INTO `allworks` VALUES ('48', '48', '201510102599', '温智豪', '64', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '64', '-1');
INSERT INTO `allworks` VALUES ('49', '49', '201510102612', '陈妙玲', '66', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '66', '-1');
INSERT INTO `allworks` VALUES ('50', '50', '201510102625', '郑泽华', '68', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '68', '-1');
INSERT INTO `allworks` VALUES ('51', '51', '201510102670', '黄紫彤', '70', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '70', '-1');

-- ----------------------------
-- Records for `classss`
-- ----------------------------
INSERT INTO `classss` VALUES ('1', '管理学院15级会计（6）班', '51');

-- ----------------------------
-- Records for `singlegrade`
-- ----------------------------
INSERT INTO `singlegrade` VALUES ('2', '1', '201510102003', '33', '1', '34', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('3', '2', '201510102014', '34', '2', '36', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('4', '3', '201510102024', '35', '3', '38', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('5', '4', '201510102048', '36', '4', '40', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('6', '5', '201510102062', '37', '5', '42', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('7', '6', '201510102072', '38', '6', '44', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('8', '7', '201510102075', '39', '7', '46', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('9', '8', '201510102106', '40', '8', '48', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('10', '9', '201510102131', '41', '9', '50', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('11', '10', '201510102145', '42', '10', '52', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('12', '11', '201510102146', '43', '11', '54', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('13', '12', '201510102175', '44', '12', '56', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('14', '13', '201510102199', '45', '13', '58', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('15', '14', '201510102204', '46', '14', '60', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('16', '15', '201510102216', '47', '15', '62', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('17', '16', '201510102218', '48', '16', '64', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('18', '17', '201510102221', '49', '17', '66', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('19', '18', '201510102247', '50', '18', '68', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('20', '19', '201510102263', '51', '19', '70', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('21', '20', '201510102280', '52', '20', '72', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('22', '21', '201510102281', '53', '21', '74', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('23', '22', '201510102285', '54', '22', '76', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('24', '23', '201510102290', '55', '23', '78', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('25', '24', '201510102305', '56', '24', '80', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('26', '25', '201510102309', '57', '25', '82', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('27', '26', '201510102319', '58', '26', '84', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('28', '27', '201510102320', '59', '27', '86', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('29', '28', '201510102331', '60', '28', '88', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('30', '29', '201510102340', '61', '29', '90', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('31', '30', '201510102360', '62', '30', '92', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('32', '31', '201510102394', '63', '31', '94', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('33', '32', '201510102411', '64', '32', '96', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('34', '33', '201510102415', '33', '1', '34', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('35', '34', '201510102419', '34', '2', '36', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('36', '35', '201510102424', '35', '3', '38', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('37', '36', '201510102450', '36', '4', '40', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('38', '37', '201510102451', '37', '5', '42', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('39', '38', '201510102475', '38', '6', '44', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('40', '39', '201510102493', '39', '7', '46', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('41', '40', '201510102495', '40', '8', '48', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('42', '41', '201510102514', '41', '9', '50', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('43', '42', '201510102519', '42', '10', '52', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('44', '43', '201510102530', '43', '11', '54', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('45', '44', '201510102533', '44', '12', '56', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('46', '45', '201510102543', '45', '13', '58', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('47', '46', '201510102561', '46', '14', '60', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('48', '47', '201510102583', '47', '15', '62', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('49', '48', '201510102599', '48', '16', '64', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('50', '49', '201510102612', '49', '17', '66', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('51', '50', '201510102625', '50', '18', '68', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('52', '51', '201510102670', '51', '19', '70', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('53', '1', '201510102003', '33', '1', '34', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('54', '2', '201510102014', '34', '2', '36', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('55', '3', '201510102024', '35', '3', '38', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('56', '4', '201510102048', '36', '4', '40', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('57', '5', '201510102062', '37', '5', '42', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('58', '6', '201510102072', '38', '6', '44', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('59', '7', '201510102075', '39', '7', '46', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('60', '8', '201510102106', '40', '8', '48', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('61', '9', '201510102131', '41', '9', '50', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('62', '10', '201510102145', '42', '10', '52', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('63', '11', '201510102146', '43', '11', '54', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('64', '12', '201510102175', '44', '12', '56', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('65', '13', '201510102199', '45', '13', '58', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('66', '14', '201510102204', '46', '14', '60', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('67', '15', '201510102216', '47', '15', '62', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('68', '16', '201510102218', '48', '16', '64', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('69', '17', '201510102221', '49', '17', '66', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('70', '18', '201510102247', '50', '18', '68', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('71', '19', '201510102263', '51', '19', '70', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('72', '20', '201510102280', '52', '20', '72', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('73', '21', '201510102281', '53', '21', '74', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('74', '22', '201510102285', '54', '22', '76', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('75', '23', '201510102290', '55', '23', '78', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('76', '24', '201510102305', '56', '24', '80', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('77', '25', '201510102309', '57', '25', '82', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('78', '26', '201510102319', '58', '26', '84', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('79', '27', '201510102320', '59', '27', '86', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('80', '28', '201510102331', '60', '28', '88', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('81', '29', '201510102340', '61', '29', '90', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('82', '30', '201510102360', '62', '30', '92', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('83', '31', '201510102394', '63', '31', '94', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('84', '32', '201510102411', '64', '32', '96', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('85', '33', '201510102415', '33', '1', '34', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('86', '34', '201510102419', '34', '2', '36', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('87', '35', '201510102424', '35', '3', '38', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('88', '36', '201510102450', '36', '4', '40', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('89', '37', '201510102451', '37', '5', '42', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('90', '38', '201510102475', '38', '6', '44', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('91', '39', '201510102493', '39', '7', '46', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('92', '40', '201510102495', '40', '8', '48', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('93', '41', '201510102514', '41', '9', '50', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('94', '42', '201510102519', '42', '10', '52', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('95', '43', '201510102530', '43', '11', '54', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('96', '44', '201510102533', '44', '12', '56', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('97', '45', '201510102543', '45', '13', '58', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('98', '46', '201510102561', '46', '14', '60', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('99', '47', '201510102583', '47', '15', '62', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('100', '48', '201510102599', '48', '16', '64', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('101', '49', '201510102612', '49', '17', '66', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('102', '50', '201510102625', '50', '18', '68', 'Kuai_su_cheng_xing');
INSERT INTO `singlegrade` VALUES ('103', '51', '201510102670', '51', '19', '70', 'Kuai_su_cheng_xing');

-- ----------------------------
-- Records for `totalmark`
-- ----------------------------
INSERT INTO `totalmark` VALUES ('1', '1', '201510102003', '梁臻华', '60', '57', '1', '54');
INSERT INTO `totalmark` VALUES ('2', '2', '201510102014', '黄碧欣', '36', '0', '2', '25');
INSERT INTO `totalmark` VALUES ('3', '3', '201510102024', '黄沛弘', '38', '0', '3', '27');
INSERT INTO `totalmark` VALUES ('4', '4', '201510102048', '卢细珍', '40', '0', '4', '28');
INSERT INTO `totalmark` VALUES ('5', '5', '201510102062', '凌博文', '42', '0', '5', '30');
INSERT INTO `totalmark` VALUES ('6', '6', '201510102072', '杨润琪', '44', '0', '6', '31');
INSERT INTO `totalmark` VALUES ('7', '7', '201510102075', '陈晓曼', '46', '0', '7', '33');
INSERT INTO `totalmark` VALUES ('8', '8', '201510102106', '金森锋', '48', '0', '8', '34');
INSERT INTO `totalmark` VALUES ('9', '9', '201510102131', '黄菁菁', '50', '0', '9', '36');
INSERT INTO `totalmark` VALUES ('10', '10', '201510102145', '梁鸿英', '52', '0', '10', '37');
INSERT INTO `totalmark` VALUES ('11', '11', '201510102146', '陈李君', '54', '0', '11', '39');
INSERT INTO `totalmark` VALUES ('12', '12', '201510102175', '陈锦婷', '56', '83', '12', '57');
INSERT INTO `totalmark` VALUES ('13', '13', '201510102199', '黄烨', '58', '0', '13', '42');
INSERT INTO `totalmark` VALUES ('14', '14', '201510102204', '刘智宴', '60', '0', '14', '43');
INSERT INTO `totalmark` VALUES ('15', '15', '201510102216', '卢杨妹', '62', '0', '15', '45');
INSERT INTO `totalmark` VALUES ('16', '16', '201510102218', '曾惠琼', '64', '0', '16', '46');
INSERT INTO `totalmark` VALUES ('17', '17', '201510102221', '曾华燕', '66', '0', '17', '48');
INSERT INTO `totalmark` VALUES ('18', '18', '201510102247', '侯晓丹', '68', '0', '18', '49');
INSERT INTO `totalmark` VALUES ('19', '19', '201510102263', '梁绮乔', '70', '0', '19', '51');
INSERT INTO `totalmark` VALUES ('20', '20', '201510102280', '何家伟', '72', '0', '20', '52');
INSERT INTO `totalmark` VALUES ('21', '21', '201510102281', '尹嘉', '74', '0', '21', '54');
INSERT INTO `totalmark` VALUES ('22', '22', '201510102285', '陈楚豪', '76', '0', '22', '55');
INSERT INTO `totalmark` VALUES ('23', '23', '201510102290', '吴志波', '78', '0', '23', '57');
INSERT INTO `totalmark` VALUES ('24', '24', '201510102305', '黄绮倩', '80', '0', '24', '58');
INSERT INTO `totalmark` VALUES ('25', '25', '201510102309', '蔡锭宇', '82', '0', '25', '60');
INSERT INTO `totalmark` VALUES ('26', '26', '201510102319', '刘芸钿', '84', '0', '26', '61');
INSERT INTO `totalmark` VALUES ('27', '27', '201510102320', '邢苗晴', '86', '0', '27', '63');
INSERT INTO `totalmark` VALUES ('28', '28', '201510102331', '胡晓娣', '88', '0', '28', '64');
INSERT INTO `totalmark` VALUES ('29', '29', '201510102340', '纪春虹', '90', '0', '29', '66');
INSERT INTO `totalmark` VALUES ('30', '30', '201510102360', '戚斯威', '92', '0', '30', '67');
INSERT INTO `totalmark` VALUES ('31', '31', '201510102394', '尹志欣', '94', '0', '31', '69');
INSERT INTO `totalmark` VALUES ('32', '32', '201510102411', '谭可怡', '96', '0', '32', '70');
INSERT INTO `totalmark` VALUES ('33', '33', '201510102415', '吴银燕', '34', '78', '1', '40');
INSERT INTO `totalmark` VALUES ('34', '34', '201510102419', '陈家琪', '36', '62', '2', '38');
INSERT INTO `totalmark` VALUES ('35', '35', '201510102424', '李彤', '38', '68', '3', '40');
INSERT INTO `totalmark` VALUES ('36', '36', '201510102450', '江嘉敏', '40', '71', '4', '43');
INSERT INTO `totalmark` VALUES ('37', '37', '201510102451', '林丽珊', '42', '83', '5', '46');
INSERT INTO `totalmark` VALUES ('38', '38', '201510102475', '郑诗娜', '44', '61', '6', '44');
INSERT INTO `totalmark` VALUES ('39', '39', '201510102493', '谢彤彤', '46', '71', '7', '47');
INSERT INTO `totalmark` VALUES ('40', '40', '201510102495', '蔡春媚', '48', '74', '8', '49');
INSERT INTO `totalmark` VALUES ('41', '41', '201510102514', '苏嘉琪', '50', '77', '9', '51');
INSERT INTO `totalmark` VALUES ('42', '42', '201510102519', '曾梓琼', '52', '62', '10', '50');
INSERT INTO `totalmark` VALUES ('43', '43', '201510102530', '罗玉萍', '54', '71', '11', '53');
INSERT INTO `totalmark` VALUES ('44', '44', '201510102533', '陈海妮', '56', '60', '12', '52');
INSERT INTO `totalmark` VALUES ('45', '45', '201510102543', '赖仙清', '58', '0', '13', '42');
INSERT INTO `totalmark` VALUES ('46', '46', '201510102561', '叶瑜平', '60', '80', '14', '59');
INSERT INTO `totalmark` VALUES ('47', '47', '201510102583', '关天然', '62', '75', '15', '60');
INSERT INTO `totalmark` VALUES ('48', '48', '201510102599', '温智豪', '64', '55', '16', '57');
INSERT INTO `totalmark` VALUES ('49', '49', '201510102612', '陈妙玲', '66', '70', '17', '62');
INSERT INTO `totalmark` VALUES ('50', '50', '201510102625', '郑泽华', '68', '71', '18', '64');
INSERT INTO `totalmark` VALUES ('51', '51', '201510102670', '黄紫彤', '70', '73', '19', '66');

