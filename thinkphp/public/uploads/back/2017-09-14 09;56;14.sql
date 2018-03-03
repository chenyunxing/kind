-- ----------------------------
-- 日期：2017-09-14 09:56:14
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classss`
-- ----------------------------
DROP TABLE IF EXISTS `classss`;
CREATE TABLE `classss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudent`
-- ----------------------------
INSERT INTO `allstudent` VALUES ('1', '1', '201610131001', '武宇艳', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('2', '2', '201610131002', '程晋敏', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('3', '3', '201610131003', '纪培喜', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('4', '4', '201610131004', '何嘉怡', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('5', '5', '201610131005', '陆诗婷', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('6', '6', '201610131006', '黄璐', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('7', '7', '201610131007', '陈欣', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('8', '8', '201610131008', '陈思瑶', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('9', '9', '201610131009', '张银玲', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('10', '10', '201610131010', '吴雪婷', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('11', '11', '201610131011', '王晓欣', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('12', '12', '201610131012', '林燕玲', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('13', '13', '201610131013', '林诗敏', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('14', '14', '201610131014', '罗海媚', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('15', '15', '201610131015', '陈春霞', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('16', '16', '201610131017', '何昱霖', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('17', '17', '201610131018', '石芷晴', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('18', '18', '201610131019', '黄容芳', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('19', '19', '201610131020', '林確萃', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('20', '20', '201610131021', '王婷婷', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('21', '21', '201610131022', '李燕妮', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('22', '22', '201610131023', '周文静', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('23', '23', '201610131024', '张婕媚', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('24', '24', '201610131025', '赖菲妮', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('25', '25', '201610131026', '叶丽芝', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('26', '26', '201610131027', '黄诗茹', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('27', '27', '201610131028', '黄铚', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('28', '28', '201610131029', '许紫璇', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('29', '29', '201610131030', '梁晓燕', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('30', '30', '201610131031', '梁琼文', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('31', '31', '201610131032', '李雨晴', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('32', '32', '201610131033', '翁冰', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('33', '33', '201610131034', '陈超敏', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('34', '34', '201610131036', '谢舒雲', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('35', '35', '201610131037', '梁庆芬', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('36', '36', '201610131038', '龙晓东', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('37', '37', '201610131039', '马畅', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('38', '38', '201610131040', '郑幸东', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('39', '39', '201610131041', '欧阳浩然', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('40', '40', '201610131042', '谢梓涛', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('41', '41', '201610131043', '倪浩槟', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('42', '42', '201610131044', '许桐熙', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('43', '43', '201610131046', '陈俊霖', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('44', '44', '201610131047', '李焯', '', '男', 'ada');
INSERT INTO `allstudent` VALUES ('45', '45', '201610131048', '兰琳', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('46', '46', '201610131049', '邵铭烨', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('47', '47', '201610131050', '杨晓倩', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('48', '48', '201610131053', '王芝洁', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('49', '49', '201610131054', '窦子祥', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('50', '50', '201610131055', '周彤澳', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('51', '51', '201610131056', '赵鑫', '', '女', 'ada');
INSERT INTO `allstudent` VALUES ('52', '52', '201610131057', '黄如珩', '', '女', 'ada');

-- ----------------------------
-- Records for `allworks`
-- ----------------------------
INSERT INTO `allworks` VALUES ('1', '1', '201610131001', '武宇艳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('2', '2', '201610131002', '程晋敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('3', '3', '201610131003', '纪培喜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('4', '4', '201610131004', '何嘉怡', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('5', '5', '201610131005', '陆诗婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('6', '6', '201610131006', '黄璐', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('7', '7', '201610131007', '陈欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('8', '8', '201610131008', '陈思瑶', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('9', '9', '201610131009', '张银玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('10', '10', '201610131010', '吴雪婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('11', '11', '201610131011', '王晓欣', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('12', '12', '201610131012', '林燕玲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('13', '13', '201610131013', '林诗敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('14', '14', '201610131014', '罗海媚', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('15', '15', '201610131015', '陈春霞', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('16', '16', '201610131017', '何昱霖', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('17', '17', '201610131018', '石芷晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('18', '18', '201610131019', '黄容芳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('19', '19', '201610131020', '林確萃', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('20', '20', '201610131021', '王婷婷', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('21', '21', '201610131022', '李燕妮', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('22', '22', '201610131023', '周文静', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('23', '23', '201610131024', '张婕媚', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('24', '24', '201610131025', '赖菲妮', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('25', '25', '201610131026', '叶丽芝', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('26', '26', '201610131027', '黄诗茹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('27', '27', '201610131028', '黄铚', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('28', '28', '201610131029', '许紫璇', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('29', '29', '201610131030', '梁晓燕', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('30', '30', '201610131031', '梁琼文', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('31', '31', '201610131032', '李雨晴', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('32', '32', '201610131033', '翁冰', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('33', '33', '201610131034', '陈超敏', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('34', '34', '201610131036', '谢舒雲', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('35', '35', '201610131037', '梁庆芬', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('36', '36', '201610131038', '龙晓东', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('37', '37', '201610131039', '马畅', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('38', '38', '201610131040', '郑幸东', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('39', '39', '201610131041', '欧阳浩然', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('40', '40', '201610131042', '谢梓涛', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('41', '41', '201610131043', '倪浩槟', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('42', '42', '201610131044', '许桐熙', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('43', '43', '201610131046', '陈俊霖', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('44', '44', '201610131047', '李焯', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('45', '45', '201610131048', '兰琳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('46', '46', '201610131049', '邵铭烨', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('47', '47', '201610131050', '杨晓倩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('48', '48', '201610131053', '王芝洁', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('49', '49', '201610131054', '窦子祥', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('50', '50', '201610131055', '周彤澳', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('51', '51', '201610131056', '赵鑫', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('52', '52', '201610131057', '黄如珩', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `totalmark`
-- ----------------------------
INSERT INTO `totalmark` VALUES ('1', '1', '201610131001', '武宇艳', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('2', '2', '201610131002', '程晋敏', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('3', '3', '201610131003', '纪培喜', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('4', '4', '201610131004', '何嘉怡', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('5', '5', '201610131005', '陆诗婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('6', '6', '201610131006', '黄璐', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('7', '7', '201610131007', '陈欣', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('8', '8', '201610131008', '陈思瑶', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('9', '9', '201610131009', '张银玲', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('10', '10', '201610131010', '吴雪婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('11', '11', '201610131011', '王晓欣', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('12', '12', '201610131012', '林燕玲', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('13', '13', '201610131013', '林诗敏', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('14', '14', '201610131014', '罗海媚', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('15', '15', '201610131015', '陈春霞', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('16', '16', '201610131017', '何昱霖', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('17', '17', '201610131018', '石芷晴', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('18', '18', '201610131019', '黄容芳', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('19', '19', '201610131020', '林確萃', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('20', '20', '201610131021', '王婷婷', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('21', '21', '201610131022', '李燕妮', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('22', '22', '201610131023', '周文静', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('23', '23', '201610131024', '张婕媚', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('24', '24', '201610131025', '赖菲妮', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('25', '25', '201610131026', '叶丽芝', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('26', '26', '201610131027', '黄诗茹', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('27', '27', '201610131028', '黄铚', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('28', '28', '201610131029', '许紫璇', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('29', '29', '201610131030', '梁晓燕', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('30', '30', '201610131031', '梁琼文', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('31', '31', '201610131032', '李雨晴', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('32', '32', '201610131033', '翁冰', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('33', '33', '201610131034', '陈超敏', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('34', '34', '201610131036', '谢舒雲', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('35', '35', '201610131037', '梁庆芬', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('36', '36', '201610131038', '龙晓东', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('37', '37', '201610131039', '马畅', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('38', '38', '201610131040', '郑幸东', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('39', '39', '201610131041', '欧阳浩然', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('40', '40', '201610131042', '谢梓涛', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('41', '41', '201610131043', '倪浩槟', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('42', '42', '201610131044', '许桐熙', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('43', '43', '201610131046', '陈俊霖', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('44', '44', '201610131047', '李焯', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('45', '45', '201610131048', '兰琳', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('46', '46', '201610131049', '邵铭烨', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('47', '47', '201610131050', '杨晓倩', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('48', '48', '201610131053', '王芝洁', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('49', '49', '201610131054', '窦子祥', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('50', '50', '201610131055', '周彤澳', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('51', '51', '201610131056', '赵鑫', '0', '0', '0', '0');
INSERT INTO `totalmark` VALUES ('52', '52', '201610131057', '黄如珩', '0', '0', '0', '0');

