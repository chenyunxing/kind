-- ----------------------------
-- 日期：2017-09-21 16:30:35
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
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `classss`
-- ----------------------------
DROP TABLE IF EXISTS `classss`;
CREATE TABLE `classss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(355) NOT NULL,
  `allS` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=latin1 COMMENT='总评成绩';

-- ----------------------------
-- Records for `allstudent`
-- ----------------------------
INSERT INTO `allstudent` VALUES ('541', '1', '201610102347', '陈楚', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('542', '2', '201610128001', '何绮婷', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('543', '3', '201610128002', '梁嘉颖', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('544', '4', '201610128003', '黄凯莉', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('545', '5', '201610128004', '吴宏莉', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('546', '6', '201610128005', '周晓琳', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('547', '7', '201610128006', '何羽辰', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('548', '8', '201610128007', '姚懿恩', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('549', '9', '201610128008', '石诗颖', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('550', '10', '201610128009', '洪泽凡', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('551', '11', '201610128011', '王紫荆', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('552', '12', '201610128012', '谢梦琪', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('553', '13', '201610128013', '黄婵屏', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('554', '14', '201610128014', '甘尧静', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('555', '15', '201610128015', '郝然', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('556', '16', '201610128016', '谷龙', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('557', '17', '201610128017', '罗景铁', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('558', '18', '201610128018', '刘嘉伟', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('559', '19', '201610128019', '王俊', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('560', '20', '201610128020', '黄任鎧', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('561', '21', '201610128021', '姚壮铎', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('562', '22', '201610128022', '王建雄', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('563', '23', '201610128023', '张伟良', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('564', '24', '201610128024', '曾文豪', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('565', '25', '201610128025', '陈栩杭', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('566', '26', '201610128026', '徐东欣', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('567', '27', '201610128027', '朱慕定', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('568', '28', '201610128029', '许婕', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('569', '29', '201610128030', '朱兰君', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('570', '30', '201610128031', '纪孝豪', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('571', '31', '201610128032', '葛清清', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('572', '32', '201610128033', '徐宸', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('573', '33', '201610128034', '陈博宇', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('574', '34', '201610128035', '李政', '', '男', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('575', '35', '201610128036', '刘婷滢', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('576', '36', '201610128038', '王依涛', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('577', '37', '201610128039', '罗俊美', '', '女', '2016经济统计学1班');
INSERT INTO `allstudent` VALUES ('578', '38', '201610128040', '张惠文', '', '女', '2016经济统计学1班');

-- ----------------------------
-- Records for `allworks`
-- ----------------------------
INSERT INTO `allworks` VALUES ('541', '1', '201610102347', '陈楚', '11', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('542', '2', '201610128001', '何绮婷', '13', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('543', '3', '201610128002', '梁嘉颖', '15', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('544', '4', '201610128003', '黄凯莉', '17', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('545', '5', '201610128004', '吴宏莉', '19', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('546', '6', '201610128005', '周晓琳', '21', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('547', '7', '201610128006', '何羽辰', '23', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('548', '8', '201610128007', '姚懿恩', '25', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('549', '9', '201610128008', '石诗颖', '27', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('550', '10', '201610128009', '洪泽凡', '29', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('551', '11', '201610128011', '王紫荆', '31', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('552', '12', '201610128012', '谢梦琪', '22', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('553', '13', '201610128013', '黄婵屏', '24', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('554', '14', '201610128014', '甘尧静', '26', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('555', '15', '201610128015', '郝然', '28', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('556', '16', '201610128016', '谷龙', '30', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('557', '17', '201610128017', '罗景铁', '32', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('558', '18', '201610128018', '刘嘉伟', '34', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('559', '19', '201610128019', '王俊', '36', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('560', '20', '201610128020', '黄任鎧', '38', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('561', '21', '201610128021', '姚壮铎', '40', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('562', '22', '201610128022', '王建雄', '42', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('563', '23', '201610128023', '张伟良', '44', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('564', '24', '201610128024', '曾文豪', '46', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('565', '25', '201610128025', '陈栩杭', '48', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('566', '26', '201610128026', '徐东欣', '37', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('567', '27', '201610128027', '朱慕定', '39', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('568', '28', '201610128029', '许婕', '41', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('569', '29', '201610128030', '朱兰君', '43', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('570', '30', '201610128031', '纪孝豪', '45', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('571', '31', '201610128032', '葛清清', '47', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('572', '32', '201610128033', '徐宸', '49', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('573', '33', '201610128034', '陈博宇', '21', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('574', '34', '201610128035', '李政', '23', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('575', '35', '201610128036', '刘婷滢', '25', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('576', '36', '201610128038', '王依涛', '27', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('577', '37', '201610128039', '罗俊美', '29', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `allworks` VALUES ('578', '38', '201610128040', '张惠文', '31', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');

-- ----------------------------
-- Records for `classss`
-- ----------------------------
INSERT INTO `classss` VALUES ('13', '2016经济统计学1班', '38');

-- ----------------------------
-- Records for `singlegrade`
-- ----------------------------
INSERT INTO `singlegrade` VALUES ('1', '1', '201610102347', '10', '1', '11', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('2', '2', '201610128001', '11', '2', '13', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('3', '3', '201610128002', '12', '3', '15', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('4', '4', '201610128003', '13', '4', '17', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('5', '5', '201610128004', '14', '5', '19', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('6', '6', '201610128005', '15', '6', '21', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('7', '7', '201610128006', '16', '7', '23', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('8', '8', '201610128007', '17', '8', '25', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('9', '9', '201610128008', '18', '9', '27', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('10', '10', '201610128009', '19', '10', '29', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('11', '11', '201610128011', '20', '11', '31', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('12', '12', '201610128012', '21', '1', '22', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('13', '13', '201610128013', '22', '2', '24', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('14', '14', '201610128014', '23', '3', '26', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('15', '15', '201610128015', '24', '4', '28', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('16', '16', '201610128016', '25', '5', '30', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('17', '17', '201610128017', '26', '6', '32', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('18', '18', '201610128018', '27', '7', '34', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('19', '19', '201610128019', '28', '8', '36', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('20', '20', '201610128020', '29', '9', '38', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('21', '21', '201610128021', '30', '10', '40', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('22', '22', '201610128022', '31', '11', '42', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('23', '23', '201610128023', '32', '12', '44', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('24', '24', '201610128024', '33', '13', '46', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('25', '25', '201610128025', '34', '14', '48', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('26', '26', '201610128026', '35', '2', '37', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('27', '27', '201610128027', '36', '3', '39', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('28', '28', '201610128029', '37', '4', '41', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('29', '29', '201610128030', '38', '5', '43', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('30', '30', '201610128031', '39', '6', '45', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('31', '31', '201610128032', '40', '7', '47', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('32', '32', '201610128033', '41', '8', '49', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('33', '33', '201610128034', '20', '1', '21', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('34', '34', '201610128035', '21', '2', '23', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('35', '35', '201610128036', '22', '3', '25', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('36', '36', '201610128038', '23', '4', '27', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('37', '37', '201610128039', '24', '5', '29', 'Qian_gong');
INSERT INTO `singlegrade` VALUES ('38', '38', '201610128040', '25', '6', '31', 'Qian_gong');

-- ----------------------------
-- Records for `totalmark`
-- ----------------------------
INSERT INTO `totalmark` VALUES ('541', '1', '201610102347', '陈楚', '11', '68', '10', '13');
INSERT INTO `totalmark` VALUES ('542', '2', '201610128001', '何绮婷', '13', '70', '11', '14');
INSERT INTO `totalmark` VALUES ('543', '3', '201610128002', '梁嘉颖', '15', '75', '12', '16');
INSERT INTO `totalmark` VALUES ('544', '4', '201610128003', '黄凯莉', '17', '71', '13', '18');
INSERT INTO `totalmark` VALUES ('545', '5', '201610128004', '吴宏莉', '19', '82', '14', '20');
INSERT INTO `totalmark` VALUES ('546', '6', '201610128005', '周晓琳', '21', '62', '15', '21');
INSERT INTO `totalmark` VALUES ('547', '7', '201610128006', '何羽辰', '23', '71', '16', '23');
INSERT INTO `totalmark` VALUES ('548', '8', '201610128007', '姚懿恩', '25', '79', '17', '25');
INSERT INTO `totalmark` VALUES ('549', '9', '201610128008', '石诗颖', '27', '70', '18', '26');
INSERT INTO `totalmark` VALUES ('550', '10', '201610128009', '洪泽凡', '29', '66', '19', '28');
INSERT INTO `totalmark` VALUES ('551', '11', '201610128011', '王紫荆', '31', '73', '20', '30');
INSERT INTO `totalmark` VALUES ('552', '12', '201610128012', '谢梦琪', '22', '60', '21', '24');
INSERT INTO `totalmark` VALUES ('553', '13', '201610128013', '黄婵屏', '24', '48', '22', '25');
INSERT INTO `totalmark` VALUES ('554', '14', '201610128014', '甘尧静', '26', '60', '23', '27');
INSERT INTO `totalmark` VALUES ('555', '15', '201610128015', '郝然', '28', '75', '24', '29');
INSERT INTO `totalmark` VALUES ('556', '16', '201610128016', '谷龙', '30', '61', '25', '30');
INSERT INTO `totalmark` VALUES ('557', '17', '201610128017', '罗景铁', '32', '68', '26', '32');
INSERT INTO `totalmark` VALUES ('558', '18', '201610128018', '刘嘉伟', '34', '69', '27', '34');
INSERT INTO `totalmark` VALUES ('559', '19', '201610128019', '王俊', '36', '55', '28', '36');
INSERT INTO `totalmark` VALUES ('560', '20', '201610128020', '黄任鎧', '38', '62', '29', '37');
INSERT INTO `totalmark` VALUES ('561', '21', '201610128021', '姚壮铎', '40', '62', '30', '39');
INSERT INTO `totalmark` VALUES ('562', '22', '201610128022', '王建雄', '42', '57', '31', '41');
INSERT INTO `totalmark` VALUES ('563', '23', '201610128023', '张伟良', '44', '60', '32', '42');
INSERT INTO `totalmark` VALUES ('564', '24', '201610128024', '曾文豪', '46', '63', '33', '44');
INSERT INTO `totalmark` VALUES ('565', '25', '201610128025', '陈栩杭', '48', '67', '34', '46');
INSERT INTO `totalmark` VALUES ('566', '26', '201610128026', '徐东欣', '37', '47', '35', '38');
INSERT INTO `totalmark` VALUES ('567', '27', '201610128027', '朱慕定', '39', '68', '36', '40');
INSERT INTO `totalmark` VALUES ('568', '28', '201610128029', '许婕', '41', '69', '37', '42');
INSERT INTO `totalmark` VALUES ('569', '29', '201610128030', '朱兰君', '43', '68', '38', '44');
INSERT INTO `totalmark` VALUES ('570', '30', '201610128031', '纪孝豪', '45', '67', '39', '45');
INSERT INTO `totalmark` VALUES ('571', '31', '201610128032', '葛清清', '47', '58', '40', '47');
INSERT INTO `totalmark` VALUES ('572', '32', '201610128033', '徐宸', '49', '72', '41', '49');
INSERT INTO `totalmark` VALUES ('573', '33', '201610128034', '陈博宇', '21', '20', '10', '20');
INSERT INTO `totalmark` VALUES ('574', '34', '201610128035', '李政', '23', '21', '11', '21');
INSERT INTO `totalmark` VALUES ('575', '35', '201610128036', '刘婷滢', '25', '22', '12', '23');
INSERT INTO `totalmark` VALUES ('576', '36', '201610128038', '王依涛', '27', '23', '13', '25');
INSERT INTO `totalmark` VALUES ('577', '37', '201610128039', '罗俊美', '29', '24', '14', '26');
INSERT INTO `totalmark` VALUES ('578', '38', '201610128040', '张惠文', '31', '25', '15', '28');

