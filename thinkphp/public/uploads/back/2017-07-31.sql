-- ----------------------------
-- 日期：2017-07-31 04:53:32
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COMMENT='单工种成绩表';

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `admin`
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'teacher', '123456');

-- ----------------------------
-- Records for `allstudent`
-- ----------------------------
INSERT INTO `allstudent` VALUES ('1', '1', '201330092001', '陈秋华', 'A', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('2', '2', '201330092015', '郝顺章', 'A', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('3', '3', '201330092018', '陈子琦', 'A', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('4', '4', '201330092020', '黄思准', 'A', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('5', '5', '201330092025', '陈旭鸿', 'A', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('6', '6', '201330092027', '陈成钧', 'A', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('7', '7', '201330092034', '林仁仕', 'A', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('8', '8', '201330092039', '陈平深', 'A', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('9', '9', '201330092043', '陈超鹏', 'A', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('10', '10', '201330092053', '欧艳芬', 'A', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('11', '11', '201330092054', '江家尧', 'A', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('12', '12', '201330092058', '余麟浩', 'A', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('13', '13', '201330092061', '林志鑫', 'A', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('14', '14', '201330092065', '何志伟', 'B', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('15', '15', '201330092073', '刘荣乐', 'B', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('16', '16', '201330092078', '郑文鑫', 'B', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('17', '17', '201330092080', '吴靖康', 'B', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('18', '18', '201330092084', '陈宝怡', 'B', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('19', '19', '201330092097', '胡伊敏', 'B', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('20', '20', '201330092098', '柯坚宇', 'B', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('21', '21', '201330092100', '林秀媛', 'B', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('22', '22', '201330092106', '何韵仪', 'B', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('23', '23', '201330092109', '赵彩虹', 'B', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('24', '24', '201330092110', '李惠玉', 'B', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('25', '25', '201330092113', '庞延玲', 'B', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('26', '26', '201330092114', '肖海媚', 'B', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('27', '27', '201330092118', '吴彩玲', 'C', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('28', '28', '201330092130', '陈志明', 'C', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('29', '29', '201330092135', '陈柏蓉', 'C', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('30', '30', '201330092136', '黄楚彬', 'C', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('31', '31', '201330092137', '彭金灿', 'C', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('32', '32', '201330092138', '林嘉怡', 'C', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('33', '33', '201330092145', '林东升', 'C', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('34', '34', '201330092147', '吴逸舒', 'C', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('35', '35', '201330092159', '张翎', 'C', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('36', '36', '201330092162', '雷俊贤', 'C', '女', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('37', '37', '201330092163', '汤诗文', 'C', '男', '工商学院14级工商管理（1）班');
INSERT INTO `allstudent` VALUES ('38', '38', '201330092173', '黄俊', 'C', '男', '工商学院14级工商管理（1）班');

-- ----------------------------
-- Records for `allworks`
-- ----------------------------
INSERT INTO `allworks` VALUES ('1', '1', '201330092001', '陈秋华', '115', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('2', '2', '201330092015', '郝顺章', '117', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('3', '3', '201330092018', '陈子琦', '119', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('4', '4', '201330092020', '黄思准', '121', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('5', '5', '201330092025', '陈旭鸿', '123', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('6', '6', '201330092027', '陈成钧', '125', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('7', '7', '201330092034', '林仁仕', '127', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('8', '8', '201330092039', '陈平深', '129', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('9', '9', '201330092043', '陈超鹏', '131', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('10', '10', '201330092053', '欧艳芬', '133', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('11', '11', '201330092054', '江家尧', '135', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('12', '12', '201330092058', '余麟浩', '137', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('13', '13', '201330092061', '林志鑫', '139', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('14', '14', '201330092065', '何志伟', '141', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('15', '15', '201330092073', '刘荣乐', '143', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('16', '16', '201330092078', '郑文鑫', '93', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('17', '17', '201330092080', '吴靖康', '95', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('18', '18', '201330092084', '陈宝怡', '97', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('19', '19', '201330092097', '胡伊敏', '99', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('20', '20', '201330092098', '柯坚宇', '101', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('21', '21', '201330092100', '林秀媛', '103', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('22', '22', '201330092106', '何韵仪', '105', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('23', '23', '201330092109', '赵彩虹', '107', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('24', '24', '201330092110', '李惠玉', '109', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('25', '25', '201330092113', '庞延玲', '111', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('26', '26', '201330092114', '肖海媚', '113', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('27', '27', '201330092118', '吴彩玲', '115', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('28', '28', '201330092130', '陈志明', '117', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('29', '29', '201330092135', '陈柏蓉', '119', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('30', '30', '201330092136', '黄楚彬', '121', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('31', '31', '201330092137', '彭金灿', '123', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('32', '32', '201330092138', '林嘉怡', '125', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('33', '33', '201330092145', '林东升', '66', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('34', '34', '201330092147', '吴逸舒', '68', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('35', '35', '201330092159', '张翎', '70', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('36', '36', '201330092162', '雷俊贤', '72', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('37', '37', '201330092163', '汤诗文', '74', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('38', '38', '201330092173', '黄俊', '76', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classss`
-- ----------------------------
INSERT INTO `classss` VALUES ('1', '工商学院14级工商管理（1）班', '38');

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

-- ----------------------------
-- Records for `singlegrade`
-- ----------------------------
INSERT INTO `singlegrade` VALUES ('1', '1', '201330092001', '45', '70', '115', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('2', '2', '201330092015', '46', '71', '117', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('3', '3', '201330092018', '47', '72', '119', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('4', '4', '201330092020', '48', '73', '121', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('5', '5', '201330092025', '49', '74', '123', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('6', '6', '201330092027', '50', '75', '125', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('7', '7', '201330092034', '51', '76', '127', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('8', '8', '201330092039', '52', '77', '129', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('9', '9', '201330092043', '53', '78', '131', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('10', '10', '201330092053', '54', '79', '133', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('11', '11', '201330092054', '55', '80', '135', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('12', '12', '201330092058', '56', '81', '137', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('13', '13', '201330092061', '57', '82', '139', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('14', '14', '201330092065', '58', '83', '141', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('15', '15', '201330092073', '59', '84', '143', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('16', '16', '201330092078', '60', '33', '93', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('17', '17', '201330092080', '61', '34', '95', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('18', '18', '201330092084', '62', '35', '97', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('19', '19', '201330092097', '63', '36', '99', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('20', '20', '201330092098', '64', '37', '101', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('21', '21', '201330092100', '65', '38', '103', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('22', '22', '201330092106', '66', '39', '105', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('23', '23', '201330092109', '67', '40', '107', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('24', '24', '201330092110', '68', '41', '109', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('25', '25', '201330092113', '69', '42', '111', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('26', '26', '201330092114', '70', '43', '113', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('27', '27', '201330092118', '71', '44', '115', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('28', '28', '201330092130', '72', '45', '117', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('29', '29', '201330092135', '73', '46', '119', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('30', '30', '201330092136', '74', '47', '121', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('31', '31', '201330092137', '75', '48', '123', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('32', '32', '201330092138', '76', '49', '125', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('33', '33', '201330092145', '23', '43', '66', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('34', '34', '201330092147', '24', '44', '68', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('35', '35', '201330092159', '25', '45', '70', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('36', '36', '201330092162', '26', '46', '72', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('37', '37', '201330092163', '27', '47', '74', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('38', '38', '201330092173', '28', '48', '76', 'Qian_gong');

-- ----------------------------
-- Records for `totalmark`
-- ----------------------------
INSERT INTO `totalmark` VALUES ('1', '1', '201330092001', '陈秋华', '115', '73', '80', '23');
INSERT INTO `totalmark` VALUES ('2', '2', '201330092015', '郝顺章', '117', '65', '85', '22');
INSERT INTO `totalmark` VALUES ('3', '3', '201330092018', '陈子琦', '119', '54', '85', '19');
INSERT INTO `totalmark` VALUES ('4', '4', '201330092020', '黄思准', '121', '86', '80', '25');
INSERT INTO `totalmark` VALUES ('5', '5', '201330092025', '陈旭鸿', '123', '69', '90', '23');
INSERT INTO `totalmark` VALUES ('6', '6', '201330092027', '陈成钧', '125', '78', '80', '24');
INSERT INTO `totalmark` VALUES ('7', '7', '201330092034', '林仁仕', '127', '72', '80', '22');
INSERT INTO `totalmark` VALUES ('8', '8', '201330092039', '陈平深', '129', '80', '75', '24');
INSERT INTO `totalmark` VALUES ('9', '9', '201330092043', '陈超鹏', '131', '81', '75', '24');
INSERT INTO `totalmark` VALUES ('10', '10', '201330092053', '欧艳芬', '133', '62', '85', '21');
INSERT INTO `totalmark` VALUES ('11', '11', '201330092054', '江家尧', '135', '75', '70', '22');
INSERT INTO `totalmark` VALUES ('12', '12', '201330092058', '余麟浩', '137', '84', '85', '25');
INSERT INTO `totalmark` VALUES ('13', '13', '201330092061', '林志鑫', '139', '78', '70', '23');
INSERT INTO `totalmark` VALUES ('14', '14', '201330092065', '何志伟', '141', '68', '65', '20');
INSERT INTO `totalmark` VALUES ('15', '15', '201330092073', '刘荣乐', '143', '74', '90', '24');
INSERT INTO `totalmark` VALUES ('16', '16', '201330092078', '郑文鑫', '93', '76', '60', '21');
INSERT INTO `totalmark` VALUES ('17', '17', '201330092080', '吴靖康', '95', '60', '60', '18');
INSERT INTO `totalmark` VALUES ('18', '18', '201330092084', '陈宝怡', '97', '85', '90', '26');
INSERT INTO `totalmark` VALUES ('19', '19', '201330092097', '胡伊敏', '99', '82', '85', '25');
INSERT INTO `totalmark` VALUES ('20', '20', '201330092098', '柯坚宇', '101', '76', '80', '23');
INSERT INTO `totalmark` VALUES ('21', '21', '201330092100', '林秀媛', '103', '55', '95', '20');
INSERT INTO `totalmark` VALUES ('22', '22', '201330092106', '何韵仪', '105', '84', '90', '26');
INSERT INTO `totalmark` VALUES ('23', '23', '201330092109', '赵彩虹', '107', '77', '95', '25');
INSERT INTO `totalmark` VALUES ('24', '24', '201330092110', '李惠玉', '109', '76', '60', '21');
INSERT INTO `totalmark` VALUES ('25', '25', '201330092113', '庞延玲', '111', '65', '85', '22');
INSERT INTO `totalmark` VALUES ('26', '26', '201330092114', '肖海媚', '113', '69', '80', '22');
INSERT INTO `totalmark` VALUES ('27', '27', '201330092118', '吴彩玲', '115', '68', '85', '22');
INSERT INTO `totalmark` VALUES ('28', '28', '201330092130', '陈志明', '117', '49', '98', '20');
INSERT INTO `totalmark` VALUES ('29', '29', '201330092135', '陈柏蓉', '119', '54', '40', '15');
INSERT INTO `totalmark` VALUES ('30', '30', '201330092136', '黄楚彬', '121', '67', '60', '19');
INSERT INTO `totalmark` VALUES ('31', '31', '201330092137', '彭金灿', '123', '69', '80', '22');
INSERT INTO `totalmark` VALUES ('32', '32', '201330092138', '林嘉怡', '125', '77', '80', '23');
INSERT INTO `totalmark` VALUES ('33', '33', '201330092145', '林东升', '66', '64', '70', '20');
INSERT INTO `totalmark` VALUES ('34', '34', '201330092147', '吴逸舒', '68', '70', '85', '22');
INSERT INTO `totalmark` VALUES ('35', '35', '201330092159', '张翎', '70', '68', '80', '22');
INSERT INTO `totalmark` VALUES ('36', '36', '201330092162', '雷俊贤', '72', '64', '65', '19');
INSERT INTO `totalmark` VALUES ('37', '37', '201330092163', '汤诗文', '74', '67', '85', '22');
INSERT INTO `totalmark` VALUES ('38', '38', '201330092173', '黄俊', '76', '61', '65', '19');

