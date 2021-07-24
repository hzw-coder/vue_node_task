/*
Navicat MySQL Data Transfer

Source Server         : hzw
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : task

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2021-07-13 21:50:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '清单id',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  `name` varchar(255) DEFAULT NULL COMMENT '清单名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `run` tinyint(3) unsigned DEFAULT '1' COMMENT '是否被删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '1', '今天', '2020-05-03 20:13:39', '2020-09-16 09:14:31', '0');
INSERT INTO `category` VALUES ('41', '1', '明天', '2020-07-24 15:28:25', '2020-11-10 17:13:42', '0');
INSERT INTO `category` VALUES ('85', '1', '购物', '2020-08-20 11:13:25', '2020-08-26 23:21:07', '0');
INSERT INTO `category` VALUES ('86', '1', '学习', '2020-08-20 11:13:31', '2020-08-26 22:53:57', '0');
INSERT INTO `category` VALUES ('87', '1', '后天', '2020-08-23 23:28:51', '2020-08-26 22:53:21', '0');
INSERT INTO `category` VALUES ('88', '1', '工作', '2020-08-23 23:29:05', '2020-08-26 22:53:54', '0');
INSERT INTO `category` VALUES ('89', '1', '最近七天', '2020-08-26 16:42:03', '2020-09-06 22:44:13', '0');
INSERT INTO `category` VALUES ('90', '1', '2222', '2020-09-06 22:44:18', '2020-11-22 14:32:19', '0');
INSERT INTO `category` VALUES ('91', '1', '大后天', '2020-09-06 22:52:59', null, '0');
INSERT INTO `category` VALUES ('92', '1', '学习', '2020-09-06 22:54:41', '2020-09-06 22:56:39', '0');
INSERT INTO `category` VALUES ('93', '1', '333', '2020-09-06 22:56:45', '2020-11-24 12:31:43', '0');
INSERT INTO `category` VALUES ('94', '1', '家人', '2020-09-07 10:03:15', null, '0');
INSERT INTO `category` VALUES ('95', '1', '吃饭', '2020-09-07 10:03:58', null, '0');
INSERT INTO `category` VALUES ('96', '1', '2222', '2020-09-07 10:04:03', '2020-11-25 14:25:47', '0');
INSERT INTO `category` VALUES ('97', '1', '吃吃', '2020-09-07 10:08:35', null, '0');
INSERT INTO `category` VALUES ('98', '1', '44', '2020-09-07 10:12:02', '2020-12-05 10:59:14', '0');
INSERT INTO `category` VALUES ('99', '1', '嘻嘻', '2020-09-07 10:13:59', null, '0');
INSERT INTO `category` VALUES ('100', '1', '最近七天', '2020-09-07 13:52:38', null, '0');
INSERT INTO `category` VALUES ('101', '1', '唉爱', '2020-09-07 13:53:50', null, '0');
INSERT INTO `category` VALUES ('102', '1', '滴答', '2020-09-07 13:55:41', null, '0');
INSERT INTO `category` VALUES ('103', '1', '33', '2020-09-07 13:58:30', '2020-12-05 23:00:23', '0');
INSERT INTO `category` VALUES ('104', '1', '哦哦', '2020-09-07 13:59:08', null, '0');
INSERT INTO `category` VALUES ('105', '1', 'dda', null, null, '0');
INSERT INTO `category` VALUES ('106', '1', 'dddd', '2020-11-24 12:31:46', '2020-11-24 12:31:46', '0');
INSERT INTO `category` VALUES ('107', '1', '测试', '2020-12-03 09:48:59', '2020-12-03 09:48:59', '0');
INSERT INTO `category` VALUES ('108', '1', '测试', '2020-12-03 11:02:30', '2020-12-03 11:02:30', '0');
INSERT INTO `category` VALUES ('109', '1', '测试', '2020-12-03 14:00:31', '2020-12-03 14:00:31', '0');
INSERT INTO `category` VALUES ('110', '1', '测试', '2020-12-04 15:25:55', '2020-12-04 15:25:55', '0');
INSERT INTO `category` VALUES ('111', '1', '测试', '2020-12-04 15:27:12', '2020-12-04 15:27:12', '0');
INSERT INTO `category` VALUES ('112', '1', '测试', '2020-12-04 15:31:56', '2020-12-04 15:31:56', '0');
INSERT INTO `category` VALUES ('113', '1', '测试', '2020-12-05 10:56:22', '2020-12-05 10:56:22', '0');
INSERT INTO `category` VALUES ('114', '1', '666', '2020-12-05 11:01:22', '2020-12-05 11:01:22', '0');
INSERT INTO `category` VALUES ('115', '1', '54645', '2020-12-05 11:04:16', '2020-12-05 11:04:16', '0');
INSERT INTO `category` VALUES ('116', '1', '8888', '2020-12-05 11:04:30', '2020-12-05 11:04:30', '0');
INSERT INTO `category` VALUES ('117', '1', 'hello', '2020-12-05 11:04:45', '2020-12-05 11:04:45', '0');
INSERT INTO `category` VALUES ('118', '1', '我是', '2020-12-05 11:08:42', '2020-12-05 11:08:42', '0');
INSERT INTO `category` VALUES ('119', '1', '你好', '2020-12-05 11:09:15', '2020-12-05 11:09:15', '0');
INSERT INTO `category` VALUES ('120', '1', '你好', '2020-12-05 11:09:36', '2020-12-05 11:09:36', '0');
INSERT INTO `category` VALUES ('121', '1', '我是', '2020-12-05 11:10:02', '2020-12-05 11:10:02', '0');
INSERT INTO `category` VALUES ('122', '1', '999', '2020-12-05 11:18:49', '2020-12-05 11:20:51', '0');
INSERT INTO `category` VALUES ('123', '1', '777', '2020-12-05 11:20:43', '2020-12-05 11:20:43', '0');
INSERT INTO `category` VALUES ('124', '1', '33', '2020-12-05 23:00:44', '2020-12-05 23:00:44', '0');
INSERT INTO `category` VALUES ('125', '1', '测试', '2020-12-05 23:14:12', '2020-12-05 23:14:12', '0');
INSERT INTO `category` VALUES ('126', '1', '测试', '2020-12-06 20:59:55', '2020-12-06 20:59:55', '0');
INSERT INTO `category` VALUES ('127', '1', '测试', '2020-12-06 21:00:55', '2020-12-06 21:00:55', '0');
INSERT INTO `category` VALUES ('128', '1', '今天', '2020-12-09 13:50:59', '2020-12-09 13:50:59', '0');
INSERT INTO `category` VALUES ('129', '1', '明天', '2020-12-09 13:51:05', '2020-12-09 13:51:05', '1');
INSERT INTO `category` VALUES ('130', '1', '大后天', '2020-12-09 13:51:09', '2020-12-11 16:16:56', '0');
INSERT INTO `category` VALUES ('131', '1', '今天', '2020-12-09 13:51:13', '2020-12-11 16:48:36', '1');
INSERT INTO `category` VALUES ('132', '1', '重要且紧急', '2020-12-09 13:51:18', '2020-12-09 13:51:18', '1');
INSERT INTO `category` VALUES ('133', '1', '最近', '2020-12-09 13:51:22', '2020-12-14 14:34:12', '0');
INSERT INTO `category` VALUES ('134', '1', '测试', '2020-12-09 14:55:58', '2020-12-09 14:55:58', '0');
INSERT INTO `category` VALUES ('135', '1', '购物', '2020-12-11 15:03:52', '2020-12-11 15:03:52', '0');
INSERT INTO `category` VALUES ('136', '1', '滴答', '2020-12-11 15:39:45', '2020-12-11 15:39:45', '0');
INSERT INTO `category` VALUES ('137', '1', '滴答', '2020-12-11 15:40:30', '2020-12-11 15:40:30', '0');
INSERT INTO `category` VALUES ('138', '1', '滴答', '2020-12-11 15:41:42', '2020-12-11 15:41:42', '0');
INSERT INTO `category` VALUES ('139', '1', '测试', '2020-12-11 16:17:20', '2020-12-11 16:17:20', '0');
INSERT INTO `category` VALUES ('140', '1', '测试', '2020-12-11 16:29:47', '2020-12-11 16:29:47', '0');
INSERT INTO `category` VALUES ('141', '1', '大测试', '2020-12-11 16:31:26', '2020-12-11 16:31:26', '0');
INSERT INTO `category` VALUES ('142', '1', '最近', '2020-12-14 14:08:26', '2020-12-14 14:08:26', '0');
INSERT INTO `category` VALUES ('143', '1', '最近', '2020-12-14 14:34:01', '2020-12-14 14:34:01', '0');
INSERT INTO `category` VALUES ('144', '1', 'ddd', '2020-12-18 15:12:24', '2020-12-18 15:12:37', '0');
INSERT INTO `category` VALUES ('145', '1', 'ceshi', '2020-12-18 15:12:58', '2020-12-18 15:12:58', '0');
INSERT INTO `category` VALUES ('146', '1', '日志系统', '2021-01-23 13:38:35', '2021-01-23 13:38:35', '0');
INSERT INTO `category` VALUES ('147', '1', '我测试的', '2021-01-23 14:00:20', '2021-01-23 14:00:20', '1');
INSERT INTO `category` VALUES ('148', '1', '打方法', '2021-02-01 15:54:24', '2021-02-20 15:15:52', '0');
INSERT INTO `category` VALUES ('149', '1', '撒打打发', '2021-02-03 16:22:16', '2021-02-03 16:22:16', '1');
INSERT INTO `category` VALUES ('150', '1', '阿发', '2021-02-03 16:24:29', '2021-02-03 16:24:29', '1');
INSERT INTO `category` VALUES ('151', '1', '大法师', '2021-02-03 16:29:35', '2021-02-03 16:29:35', '1');
INSERT INTO `category` VALUES ('152', '1', '代发', '2021-02-11 21:10:00', '2021-02-11 21:10:00', '1');

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '反馈id',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '所属用户id',
  `title` varchar(255) DEFAULT NULL COMMENT '反馈标题',
  `description` varchar(255) DEFAULT NULL COMMENT '反馈描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '0', 'string', 'string', '2020-09-07 08:04:14', '2020-09-07 08:04:14');
INSERT INTO `feedback` VALUES ('2', '1', '玩我', '滴答', '2020-09-07 16:38:49', null);
INSERT INTO `feedback` VALUES ('3', '1', '方法', '方法', '2020-09-07 16:39:37', null);
INSERT INTO `feedback` VALUES ('4', '1', '对对对', '对对对', '2020-11-22 14:32:35', null);
INSERT INTO `feedback` VALUES ('5', '1', 'aaa', 'ddd', '2020-11-24 12:34:47', '2020-11-24 12:34:47');
INSERT INTO `feedback` VALUES ('6', '1', '222', '对对对', '2020-11-24 14:03:13', '2020-11-24 14:03:13');
INSERT INTO `feedback` VALUES ('7', '1', '测试', '测试', '2020-12-02 12:44:03', '2020-12-02 12:44:03');
INSERT INTO `feedback` VALUES ('8', '1', '测试', '测试', '2020-12-02 12:44:41', '2020-12-02 12:44:41');
INSERT INTO `feedback` VALUES ('9', '1', '测试', '测试', '2020-12-03 14:00:32', '2020-12-03 14:00:32');
INSERT INTO `feedback` VALUES ('10', '1', '测试', '测试', '2020-12-04 15:25:56', '2020-12-04 15:25:56');
INSERT INTO `feedback` VALUES ('11', '1', '测试', '测试', '2020-12-04 15:27:13', '2020-12-04 15:27:13');
INSERT INTO `feedback` VALUES ('12', '1', '测试', '测试', '2020-12-04 15:31:57', '2020-12-04 15:31:57');
INSERT INTO `feedback` VALUES ('13', '1', '测试', '测试', '2020-12-05 10:56:23', '2020-12-05 10:56:23');
INSERT INTO `feedback` VALUES ('14', '1', '666', '6666', '2020-12-05 11:23:08', '2020-12-05 11:23:08');
INSERT INTO `feedback` VALUES ('15', '1', '唉爱', '滴答', '2020-12-05 23:01:23', '2020-12-05 23:01:23');
INSERT INTO `feedback` VALUES ('16', '1', '测试', '测试', '2020-12-05 23:14:13', '2020-12-05 23:14:13');
INSERT INTO `feedback` VALUES ('17', '1', '测试', '测试', '2020-12-06 20:59:55', '2020-12-06 20:59:55');
INSERT INTO `feedback` VALUES ('18', '1', '测试', '测试', '2020-12-06 21:00:56', '2020-12-06 21:00:56');
INSERT INTO `feedback` VALUES ('19', '1', '测试', '测试', '2020-12-09 14:55:58', '2020-12-09 14:55:58');
INSERT INTO `feedback` VALUES ('20', '1', '测试', '测试', '2020-12-16 09:10:51', '2020-12-16 09:10:51');
INSERT INTO `feedback` VALUES ('21', '1', '大测试', '大测试', '2020-12-16 09:11:50', '2020-12-16 09:11:50');
INSERT INTO `feedback` VALUES ('22', '1', 'dfasf ', 'dfasfs ', '2021-02-19 20:03:28', '2021-02-19 20:03:28');
INSERT INTO `feedback` VALUES ('23', '1', 'dd', 'dd', '2021-02-19 20:14:59', '2021-02-19 20:14:59');
INSERT INTO `feedback` VALUES ('24', '1', 'dd', 'dd', '2021-02-19 20:17:37', '2021-02-19 20:17:37');
INSERT INTO `feedback` VALUES ('25', '1', '发送邮件', '我发送了一个邮件', '2021-02-19 20:25:45', '2021-02-19 20:25:45');
INSERT INTO `feedback` VALUES ('26', '1', '滴答', '唉爱', '2021-02-19 20:30:04', '2021-02-19 20:30:04');
INSERT INTO `feedback` VALUES ('27', '1', '测试', '测试', '2021-02-19 20:31:24', '2021-02-19 20:31:24');
INSERT INTO `feedback` VALUES ('28', '1', '滴答', '唉爱', '2021-02-20 15:16:19', '2021-02-20 15:16:19');
INSERT INTO `feedback` VALUES ('29', '1', '滴答', '滴答', '2021-02-20 16:25:14', '2021-02-20 16:25:14');

-- ----------------------------
-- Table structure for `label`
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  `name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `run` tinyint(3) unsigned DEFAULT '1' COMMENT '是否还在使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('1', '1', '3333', '2020-08-17 16:45:13', '2020-11-22 14:32:30', '0');
INSERT INTO `label` VALUES ('2', '1', '学习', '2020-08-17 16:45:17', '2020-09-16 09:14:52', '0');
INSERT INTO `label` VALUES ('3', '1', '生活', '2020-08-17 16:58:49', '2020-08-19 06:08:09', '0');
INSERT INTO `label` VALUES ('6', '1', 'dd', '2020-08-20 11:13:54', '2020-11-24 12:31:56', '0');
INSERT INTO `label` VALUES ('7', '1', 'Java', '2020-08-20 11:14:01', '2020-08-26 23:29:20', '0');
INSERT INTO `label` VALUES ('8', '1', 'Mysql', '2020-08-20 11:14:10', '2020-09-06 22:46:45', '0');
INSERT INTO `label` VALUES ('9', '1', '笔记', '2020-08-20 11:14:24', '2020-09-06 22:46:47', '0');
INSERT INTO `label` VALUES ('10', '1', '家人', '2020-08-20 11:14:32', '2020-09-06 22:46:49', '0');
INSERT INTO `label` VALUES ('11', '1', '朋友', '2020-08-20 11:14:35', '2020-09-06 22:46:07', '0');
INSERT INTO `label` VALUES ('13', '1', '朋友', '2020-09-06 22:46:55', '2020-09-06 22:56:55', '0');
INSERT INTO `label` VALUES ('14', '1', '朋友', '2020-09-06 22:57:33', '2020-09-06 22:58:00', '0');
INSERT INTO `label` VALUES ('15', '1', '777', '2020-09-06 22:58:05', '2020-12-05 11:22:15', '0');
INSERT INTO `label` VALUES ('16', '1', '什么', '2020-09-07 14:01:34', null, '0');
INSERT INTO `label` VALUES ('17', '1', '抱抱', '2020-09-07 15:03:28', '2020-11-24 14:02:26', '0');
INSERT INTO `label` VALUES ('18', '1', '滴答', '2020-11-24 12:34:43', '2020-12-05 23:01:14', '0');
INSERT INTO `label` VALUES ('19', '1', '测试', '2020-12-02 16:02:15', '2020-12-02 16:02:15', '0');
INSERT INTO `label` VALUES ('20', '1', '测试', '2020-12-02 16:04:10', '2020-12-02 16:04:10', '0');
INSERT INTO `label` VALUES ('21', '1', '测试', '2020-12-02 20:24:49', '2020-12-02 20:24:49', '0');
INSERT INTO `label` VALUES ('22', '1', '测试', '2020-12-03 09:39:28', '2020-12-03 09:39:28', '0');
INSERT INTO `label` VALUES ('23', '1', '测试', '2020-12-03 14:00:31', '2020-12-03 14:00:31', '0');
INSERT INTO `label` VALUES ('24', '1', '测试', '2020-12-04 15:25:55', '2020-12-04 15:25:55', '0');
INSERT INTO `label` VALUES ('25', '1', '测试', '2020-12-04 15:27:12', '2020-12-04 15:27:12', '0');
INSERT INTO `label` VALUES ('26', '1', '测试', '2020-12-04 15:31:56', '2020-12-04 15:31:56', '0');
INSERT INTO `label` VALUES ('27', '1', '测试', '2020-12-05 10:56:22', '2020-12-05 10:56:22', '0');
INSERT INTO `label` VALUES ('28', '1', '777', '2020-12-05 11:22:23', '2020-12-05 11:22:23', '0');
INSERT INTO `label` VALUES ('29', '1', '66', '2020-12-05 11:23:04', '2020-12-05 11:23:04', '0');
INSERT INTO `label` VALUES ('30', '1', '顶顶顶顶', '2020-12-05 23:01:18', '2020-12-05 23:01:18', '0');
INSERT INTO `label` VALUES ('31', '1', '测试', '2020-12-05 23:14:13', '2020-12-05 23:14:13', '0');
INSERT INTO `label` VALUES ('32', '1', '测试', '2020-12-06 20:59:55', '2020-12-06 20:59:55', '0');
INSERT INTO `label` VALUES ('33', '1', '测试', '2020-12-06 21:00:56', '2020-12-06 21:00:56', '0');
INSERT INTO `label` VALUES ('34', '1', '工作', '2020-12-09 13:52:15', '2020-12-09 13:52:15', '1');
INSERT INTO `label` VALUES ('35', '1', '学习', '2020-12-09 13:52:19', '2020-12-09 13:52:19', '1');
INSERT INTO `label` VALUES ('36', '1', '生活', '2020-12-09 13:52:23', '2020-12-09 13:52:23', '1');
INSERT INTO `label` VALUES ('37', '1', '理想', '2020-12-09 13:52:26', '2020-12-09 13:52:26', '1');
INSERT INTO `label` VALUES ('38', '1', '事业', '2020-12-09 13:52:32', '2020-12-09 13:52:32', '0');
INSERT INTO `label` VALUES ('39', '1', '滴答', '2020-12-09 13:52:44', '2021-02-03 16:29:58', '0');
INSERT INTO `label` VALUES ('40', '1', '测试', '2020-12-09 14:55:58', '2020-12-09 14:55:58', '0');
INSERT INTO `label` VALUES ('41', '1', '打发打发', '2021-02-19 20:31:23', '2021-02-20 15:15:58', '0');

-- ----------------------------
-- Table structure for `task`
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  `category_id` bigint(20) unsigned DEFAULT '1' COMMENT '所属清单id',
  `name` varchar(255) DEFAULT NULL COMMENT '任务名',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `run` tinyint(3) unsigned DEFAULT '1' COMMENT '是否完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('6', '1', '1', '早睡', '12点准时睡觉', '2020-05-04 10:35:19', '2021-02-19 20:31:24', '0');
INSERT INTO `task` VALUES ('32', '1', '1', '学猫叫', '喵喵喵', '2020-05-31 19:11:05', '2020-08-25 10:43:40', '0');
INSERT INTO `task` VALUES ('33', '1', '1', '学狗叫', '汪汪汪', '2020-05-31 19:11:14', '2020-08-25 10:43:40', '0');
INSERT INTO `task` VALUES ('34', '1', '1', '学猪叫', '呃呃呃', '2020-05-31 19:11:24', '2020-08-25 10:43:40', '0');
INSERT INTO `task` VALUES ('106', '1', '41', '吃饭饭', '', '2020-08-26 16:42:35', '2020-09-06 22:43:08', '0');
INSERT INTO `task` VALUES ('107', '1', '41', '遛狗', '', '2020-08-26 16:42:50', '2020-08-26 22:47:19', '0');
INSERT INTO `task` VALUES ('108', '1', '1', '钓鱼', '', '2020-08-26 16:43:19', '2020-08-26 23:16:45', '0');
INSERT INTO `task` VALUES ('109', '1', '1', '123', '4568787', '2020-08-26 22:39:59', '2020-08-26 22:43:03', '0');
INSERT INTO `task` VALUES ('110', '1', '85', '541', '', '2020-08-26 22:40:44', '2020-08-26 22:43:07', '0');
INSERT INTO `task` VALUES ('111', '1', '85', '5451', '', '2020-08-26 22:41:01', '2020-08-26 23:14:02', '0');
INSERT INTO `task` VALUES ('112', '1', '41', '9874', '8211', '2020-08-26 22:41:40', '2020-08-26 23:13:50', '0');
INSERT INTO `task` VALUES ('113', '1', '41', '222', '', '2020-08-26 23:13:34', '2020-08-26 23:13:44', '0');
INSERT INTO `task` VALUES ('114', '1', '85', '2222', '', '2020-08-26 23:13:39', '2020-08-26 23:13:58', '0');
INSERT INTO `task` VALUES ('116', '1', '41', '小李', '滴答', '2020-08-28 15:29:09', '2020-09-14 22:40:10', '0');
INSERT INTO `task` VALUES ('117', '1', '1', '小夏', '夏天过去了', '2020-08-28 15:29:23', '2020-09-16 09:13:51', '0');
INSERT INTO `task` VALUES ('118', '1', '89', '夏天', '', '2020-08-28 15:29:32', '2020-09-06 22:43:37', '0');
INSERT INTO `task` VALUES ('119', '1', '89', '小小', '', '2020-08-28 15:32:06', '2020-09-06 22:43:39', '0');
INSERT INTO `task` VALUES ('120', '1', '1', '吃吃', '滴答', '2020-09-06 17:59:28', '2020-11-10 17:13:37', '0');
INSERT INTO `task` VALUES ('121', '1', '41', '打球', '', '2020-09-06 18:00:13', '2020-09-06 22:43:43', '0');
INSERT INTO `task` VALUES ('122', '1', '1', '嗯是', '滴答', '2020-09-06 18:03:29', '2020-11-22 14:32:05', '0');
INSERT INTO `task` VALUES ('123', '1', '41', '吃饭', '我要吃两碗饭2222', '2020-09-06 22:42:58', '2020-11-22 14:32:09', '0');
INSERT INTO `task` VALUES ('124', '1', '93', '玩我1111', '滴答', '2020-09-07 15:03:50', '2020-11-24 12:31:27', '0');
INSERT INTO `task` VALUES ('129', '1', '93', 'aaaaa', 'bbbbb', '2020-11-24 11:17:30', '2020-11-25 14:25:10', '0');
INSERT INTO `task` VALUES ('130', '1', '91', '11', '33', '2020-11-24 12:31:16', '2020-11-26 12:48:53', '0');
INSERT INTO `task` VALUES ('131', '1', '93', 'dd', 'dd', '2020-11-24 12:31:35', '2020-11-24 14:22:05', '0');
INSERT INTO `task` VALUES ('134', '1', '96', '11', '滴答', '2020-11-26 14:18:18', '2020-11-26 14:22:29', '0');
INSERT INTO `task` VALUES ('135', '1', '101', '3333', '11', '2020-11-26 14:18:27', '2020-11-26 14:22:30', '0');
INSERT INTO `task` VALUES ('136', '1', '103', '对对对', '滴答', '2020-11-26 14:18:40', '2020-11-26 14:22:30', '0');
INSERT INTO `task` VALUES ('137', '1', '98', '对对对', '对对对', '2020-11-26 14:18:47', '2020-11-26 14:22:30', '0');
INSERT INTO `task` VALUES ('138', '1', '98', '2222', '滴答', '2020-11-26 14:55:33', '2020-11-26 14:55:46', '0');
INSERT INTO `task` VALUES ('139', '1', '99', '对对对', '试试', '2020-11-26 14:55:40', '2020-11-26 14:55:46', '0');
INSERT INTO `task` VALUES ('140', '1', '98', 'abc', 'dd', '2020-11-30 10:20:12', '2020-11-30 12:56:53', '0');
INSERT INTO `task` VALUES ('141', '1', '98', 'aaaa', '1111', '2020-11-30 10:20:21', '2020-11-30 12:58:56', '0');
INSERT INTO `task` VALUES ('142', '1', '99', '111', '5555', '2020-11-30 10:20:28', '2020-12-01 11:14:21', '0');
INSERT INTO `task` VALUES ('143', '1', '98', '11', '11', '2020-12-01 13:59:03', '2020-12-05 09:37:55', '0');
INSERT INTO `task` VALUES ('144', '1', '1', '测试', '测试', '2020-12-03 11:04:12', '2020-12-05 10:58:54', '0');
INSERT INTO `task` VALUES ('145', '1', '1', '测试', '测试', '2020-12-03 11:09:04', '2020-12-05 10:58:54', '0');
INSERT INTO `task` VALUES ('146', '1', '1', '测试', '测试', '2020-12-03 12:27:48', '2020-12-05 10:58:55', '0');
INSERT INTO `task` VALUES ('147', '1', '1', '测试', '测试', '2020-12-03 12:33:08', '2020-12-05 10:58:55', '0');
INSERT INTO `task` VALUES ('148', '1', '1', '测试', '测试', '2020-12-03 12:34:50', '2020-12-05 10:58:56', '0');
INSERT INTO `task` VALUES ('149', '1', '1', '测试', '测试', '2020-12-03 12:47:43', '2020-12-05 10:58:56', '0');
INSERT INTO `task` VALUES ('150', '1', '1', '测试', '测试', '2020-12-03 13:00:52', '2020-12-05 10:58:56', '0');
INSERT INTO `task` VALUES ('151', '1', '1', '测试', '测试', '2020-12-03 13:02:27', '2020-12-05 10:58:57', '0');
INSERT INTO `task` VALUES ('152', '1', '1', '测试', '测试', '2020-12-03 13:04:21', '2020-12-05 10:58:57', '0');
INSERT INTO `task` VALUES ('153', '1', '1', '测试', '测试', '2020-12-03 13:44:52', '2020-12-05 10:58:57', '0');
INSERT INTO `task` VALUES ('154', '1', '1', '测试', '测试', '2020-12-03 14:00:32', '2020-12-05 22:59:58', '0');
INSERT INTO `task` VALUES ('155', '1', '1', '测试', '测试', '2020-12-04 15:25:56', '2020-12-05 22:59:59', '0');
INSERT INTO `task` VALUES ('156', '1', '1', '测试', '测试', '2020-12-04 15:27:13', '2020-12-05 23:00:00', '0');
INSERT INTO `task` VALUES ('157', '1', '1', '测试', '测试', '2020-12-04 15:31:57', '2020-12-06 17:08:08', '0');
INSERT INTO `task` VALUES ('158', '1', '1', '测试', '测试', '2020-12-04 15:32:13', '2020-12-06 17:08:08', '0');
INSERT INTO `task` VALUES ('159', '1', '96', '111', '11', '2020-12-05 09:37:42', '2020-12-06 17:08:09', '0');
INSERT INTO `task` VALUES ('160', '1', '98', '1111', '云烟', '2020-12-05 09:38:24', '2020-12-06 17:08:09', '0');
INSERT INTO `task` VALUES ('161', '1', '98', '2222', '22222', '2020-12-05 10:23:20', '2020-12-06 17:08:10', '0');
INSERT INTO `task` VALUES ('162', '1', '1', '测试', '测试', '2020-12-05 10:56:23', '2020-12-06 17:08:10', '0');
INSERT INTO `task` VALUES ('163', '1', '98', '555', '555', '2020-12-05 10:58:49', '2020-12-06 17:08:11', '0');
INSERT INTO `task` VALUES ('164', '1', '103', '333', '444', '2020-12-05 22:59:52', '2020-12-06 17:08:11', '0');
INSERT INTO `task` VALUES ('165', '1', '1', '测试', '测试', '2020-12-05 23:14:14', '2020-12-06 17:08:12', '0');
INSERT INTO `task` VALUES ('166', '1', '1', '测试', '测试', '2020-12-06 20:59:56', '2020-12-09 13:47:59', '0');
INSERT INTO `task` VALUES ('167', '1', '1', '测试', '测试', '2020-12-06 21:00:57', '2020-12-09 13:48:00', '0');
INSERT INTO `task` VALUES ('168', '1', '128', '学习', '学习', '2020-12-09 13:51:32', '2020-12-09 13:53:50', '0');
INSERT INTO `task` VALUES ('169', '1', '129', '读书读书读书', '读书', '2020-12-09 13:51:42', '2021-02-19 20:50:13', '1');
INSERT INTO `task` VALUES ('170', '1', '131', '钓鱼', '钓鱼', '2020-12-09 13:51:50', '2021-02-19 20:29:12', '0');
INSERT INTO `task` VALUES ('171', '1', '131', '吃饭', '吃饭', '2020-12-09 13:51:59', '2021-02-19 20:29:13', '0');
INSERT INTO `task` VALUES ('172', '1', '132', '梦游', '梦游', '2020-12-09 13:52:08', '2020-12-09 13:52:08', '1');
INSERT INTO `task` VALUES ('173', '1', '129', '理想', '滴答', '2020-12-09 13:55:06', '2021-02-03 16:30:04', '0');
INSERT INTO `task` VALUES ('174', '1', '1', '测试', '测试', '2020-12-09 14:55:59', '2020-12-09 14:55:59', '1');
INSERT INTO `task` VALUES ('175', '1', '131', '滴答', '滴答', '2021-01-11 10:10:19', '2021-01-11 10:10:19', '1');
INSERT INTO `task` VALUES ('176', '1', '132', '打发大水发', '大方', '2021-02-15 10:09:55', '2021-02-15 10:09:55', '1');
INSERT INTO `task` VALUES ('177', '1', '132', '大法师', '阿打发', '2021-02-15 10:10:04', '2021-02-15 10:10:04', '1');
INSERT INTO `task` VALUES ('178', '1', '129', '大方', '大法师', '2021-02-15 10:10:33', '2021-02-15 10:10:33', '1');
INSERT INTO `task` VALUES ('179', '1', '132', '滴答', '滴答', '2021-02-19 20:29:06', '2021-02-19 20:29:06', '1');
INSERT INTO `task` VALUES ('180', '1', '1', '测试', '测试', '2021-02-19 20:31:24', '2021-02-19 20:31:24', '1');
INSERT INTO `task` VALUES ('181', '1', '131', '滴答', '的', '2021-02-19 20:36:00', '2021-02-19 20:36:00', '1');

-- ----------------------------
-- Table structure for `task_label`
-- ----------------------------
DROP TABLE IF EXISTS `task_label`;
CREATE TABLE `task_label` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `task_id` bigint(20) unsigned NOT NULL COMMENT '清单id',
  `label_id` bigint(20) unsigned DEFAULT NULL COMMENT '标签id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of task_label
-- ----------------------------
INSERT INTO `task_label` VALUES ('1', '78', '1', '2020-08-16 08:31:56', null);
INSERT INTO `task_label` VALUES ('2', '78', '2', '2020-08-16 08:31:56', null);
INSERT INTO `task_label` VALUES ('3', '79', '1', '2020-08-16 08:42:44', null);
INSERT INTO `task_label` VALUES ('4', '80', '1', '2020-08-16 08:42:54', null);
INSERT INTO `task_label` VALUES ('5', '81', '1', '2020-08-16 12:41:59', null);
INSERT INTO `task_label` VALUES ('6', '81', '2', '2020-08-16 12:41:59', null);
INSERT INTO `task_label` VALUES ('7', '4', '1', '2020-08-16 20:22:03', null);
INSERT INTO `task_label` VALUES ('8', '4', '2', '2020-08-16 20:22:03', null);
INSERT INTO `task_label` VALUES ('9', '37', '1', '2020-08-17 11:18:52', null);
INSERT INTO `task_label` VALUES ('10', '37', '2', '2020-08-17 11:18:52', null);
INSERT INTO `task_label` VALUES ('11', '32', '1', '2020-08-17 11:19:01', null);
INSERT INTO `task_label` VALUES ('12', '32', '2', '2020-08-17 11:19:01', null);
INSERT INTO `task_label` VALUES ('13', '32', '1', '2020-08-17 11:19:12', null);
INSERT INTO `task_label` VALUES ('14', '32', '2', '2020-08-17 11:19:12', null);
INSERT INTO `task_label` VALUES ('15', '32', '1', '2020-08-17 13:37:26', null);
INSERT INTO `task_label` VALUES ('16', '32', '2', '2020-08-17 13:37:26', null);
INSERT INTO `task_label` VALUES ('17', '32', '1', '2020-08-17 13:37:26', null);
INSERT INTO `task_label` VALUES ('18', '32', '2', '2020-08-17 13:37:26', null);
INSERT INTO `task_label` VALUES ('19', '89', '2', '2020-08-17 19:24:29', null);
INSERT INTO `task_label` VALUES ('20', '90', '2', '2020-08-18 10:21:13', null);
INSERT INTO `task_label` VALUES ('21', '35', '2', '2020-08-18 10:21:24', null);
INSERT INTO `task_label` VALUES ('22', '91', '1', '2020-08-18 17:00:50', null);
INSERT INTO `task_label` VALUES ('23', '91', '2', '2020-08-18 17:00:50', null);
INSERT INTO `task_label` VALUES ('24', '92', '1', '2020-08-18 19:37:18', null);
INSERT INTO `task_label` VALUES ('25', '92', '2', '2020-08-18 19:37:18', null);
INSERT INTO `task_label` VALUES ('26', '36', '1', '2020-08-18 19:38:26', null);
INSERT INTO `task_label` VALUES ('27', '36', '2', '2020-08-18 19:38:26', null);
INSERT INTO `task_label` VALUES ('28', '36', '1', '2020-08-19 05:41:42', null);
INSERT INTO `task_label` VALUES ('29', '36', '2', '2020-08-19 05:41:42', null);
INSERT INTO `task_label` VALUES ('30', '36', '3', '2020-08-19 05:41:42', null);
INSERT INTO `task_label` VALUES ('31', '4', '1', '2020-08-23 17:22:46', null);
INSERT INTO `task_label` VALUES ('32', '4', '2', '2020-08-23 17:22:46', null);
INSERT INTO `task_label` VALUES ('33', '4', '1', '2020-08-23 17:22:53', null);
INSERT INTO `task_label` VALUES ('34', '4', '2', '2020-08-23 17:22:53', null);
INSERT INTO `task_label` VALUES ('35', '4', '3', '2020-08-23 17:22:53', null);
INSERT INTO `task_label` VALUES ('36', '96', '3', '2020-08-24 10:58:22', null);
INSERT INTO `task_label` VALUES ('37', '96', '6', '2020-08-24 10:58:22', null);
INSERT INTO `task_label` VALUES ('38', '100', '1', '2020-08-26 15:12:03', null);
INSERT INTO `task_label` VALUES ('39', '100', '2', '2020-08-26 15:12:03', null);
INSERT INTO `task_label` VALUES ('40', '106', '1', '2020-08-26 16:42:35', null);
INSERT INTO `task_label` VALUES ('41', '106', '2', '2020-08-26 16:42:35', null);
INSERT INTO `task_label` VALUES ('42', '107', '1', '2020-08-26 16:42:50', null);
INSERT INTO `task_label` VALUES ('43', '107', '2', '2020-08-26 16:42:50', null);
INSERT INTO `task_label` VALUES ('44', '109', '1', '2020-08-26 22:39:59', null);
INSERT INTO `task_label` VALUES ('45', '109', '2', '2020-08-26 22:39:59', null);
INSERT INTO `task_label` VALUES ('46', '110', '3', '2020-08-26 22:40:44', null);
INSERT INTO `task_label` VALUES ('47', '110', '2', '2020-08-26 22:40:44', null);
INSERT INTO `task_label` VALUES ('48', '110', '1', '2020-08-26 22:40:44', null);
INSERT INTO `task_label` VALUES ('49', '111', '6', '2020-08-26 22:41:01', null);
INSERT INTO `task_label` VALUES ('50', '111', '7', '2020-08-26 22:41:01', null);
INSERT INTO `task_label` VALUES ('51', '112', '2', '2020-08-26 22:41:40', null);
INSERT INTO `task_label` VALUES ('52', '112', '3', '2020-08-26 22:41:40', null);
INSERT INTO `task_label` VALUES ('53', '106', '1', '2020-08-26 22:42:09', null);
INSERT INTO `task_label` VALUES ('54', '106', '2', '2020-08-26 22:42:09', null);
INSERT INTO `task_label` VALUES ('55', '106', '1', '2020-08-26 22:42:18', null);
INSERT INTO `task_label` VALUES ('56', '106', '2', '2020-08-26 22:42:18', null);
INSERT INTO `task_label` VALUES ('57', '106', '1', '2020-08-26 22:42:18', null);
INSERT INTO `task_label` VALUES ('58', '106', '2', '2020-08-26 22:42:18', null);
INSERT INTO `task_label` VALUES ('59', '106', '7', '2020-08-26 22:42:18', null);
INSERT INTO `task_label` VALUES ('60', '106', '8', '2020-08-26 22:42:18', null);
INSERT INTO `task_label` VALUES ('61', '109', '1', '2020-08-26 22:42:36', null);
INSERT INTO `task_label` VALUES ('62', '109', '2', '2020-08-26 22:42:36', null);
INSERT INTO `task_label` VALUES ('63', '109', '3', '2020-08-26 22:42:36', null);
INSERT INTO `task_label` VALUES ('64', '109', '1', '2020-08-26 22:42:42', null);
INSERT INTO `task_label` VALUES ('65', '109', '2', '2020-08-26 22:42:42', null);
INSERT INTO `task_label` VALUES ('66', '109', '1', '2020-08-26 22:42:42', null);
INSERT INTO `task_label` VALUES ('67', '109', '2', '2020-08-26 22:42:42', null);
INSERT INTO `task_label` VALUES ('68', '109', '3', '2020-08-26 22:42:42', null);
INSERT INTO `task_label` VALUES ('69', '115', '1', '2020-08-28 15:28:55', null);
INSERT INTO `task_label` VALUES ('70', '115', '2', '2020-08-28 15:28:55', null);
INSERT INTO `task_label` VALUES ('71', '116', '1', '2020-08-28 15:29:09', null);
INSERT INTO `task_label` VALUES ('72', '116', '2', '2020-08-28 15:29:09', null);
INSERT INTO `task_label` VALUES ('73', '116', '6', '2020-08-28 15:29:09', null);
INSERT INTO `task_label` VALUES ('74', '116', '8', '2020-08-28 15:29:09', null);
INSERT INTO `task_label` VALUES ('75', '117', '1', '2020-08-28 15:29:23', null);
INSERT INTO `task_label` VALUES ('76', '117', '6', '2020-08-28 15:29:23', null);
INSERT INTO `task_label` VALUES ('77', '117', '9', '2020-08-28 15:29:23', null);
INSERT INTO `task_label` VALUES ('78', '118', '1', '2020-08-28 15:29:32', null);
INSERT INTO `task_label` VALUES ('79', '118', '2', '2020-08-28 15:29:32', null);
INSERT INTO `task_label` VALUES ('80', '118', '3', '2020-08-28 15:29:32', null);
INSERT INTO `task_label` VALUES ('81', '119', '2', '2020-08-28 15:32:06', null);
INSERT INTO `task_label` VALUES ('82', '119', '3', '2020-08-28 15:32:06', null);
INSERT INTO `task_label` VALUES ('83', '120', '2', '2020-09-06 17:59:28', null);
INSERT INTO `task_label` VALUES ('84', '120', '3', '2020-09-06 17:59:28', null);
INSERT INTO `task_label` VALUES ('85', '121', '3', '2020-09-06 18:00:13', null);
INSERT INTO `task_label` VALUES ('86', '121', '1', '2020-09-06 18:00:13', null);
INSERT INTO `task_label` VALUES ('87', '121', '2', '2020-09-06 18:00:13', null);
INSERT INTO `task_label` VALUES ('88', '122', '1', '2020-09-06 18:03:29', null);
INSERT INTO `task_label` VALUES ('89', '115', '1', '2020-09-06 22:43:22', null);
INSERT INTO `task_label` VALUES ('90', '115', '2', '2020-09-06 22:43:22', null);
INSERT INTO `task_label` VALUES ('91', '117', '1', '2020-09-06 22:43:35', null);
INSERT INTO `task_label` VALUES ('92', '117', '6', '2020-09-06 22:43:35', null);
INSERT INTO `task_label` VALUES ('93', '117', '9', '2020-09-06 22:43:35', null);
INSERT INTO `task_label` VALUES ('94', '124', '2', '2020-09-07 15:03:50', null);
INSERT INTO `task_label` VALUES ('95', '124', '3', '2020-09-07 15:03:50', null);
INSERT INTO `task_label` VALUES ('96', '125', '1', '2020-11-21 14:57:46', null);
INSERT INTO `task_label` VALUES ('97', '125', '3', '2020-11-21 14:57:46', null);
INSERT INTO `task_label` VALUES ('98', '126', '1', '2020-11-22 14:32:01', null);
INSERT INTO `task_label` VALUES ('99', '126', '3', '2020-11-22 14:32:01', null);
INSERT INTO `task_label` VALUES ('100', '127', '3', null, null);
INSERT INTO `task_label` VALUES ('101', '127', '6', null, null);
INSERT INTO `task_label` VALUES ('102', '127', '3', null, null);
INSERT INTO `task_label` VALUES ('103', '127', '6', null, null);
INSERT INTO `task_label` VALUES ('104', '128', '6', null, null);
INSERT INTO `task_label` VALUES ('105', '129', '3', null, null);
INSERT INTO `task_label` VALUES ('106', '129', '6', null, null);
INSERT INTO `task_label` VALUES ('107', '129', '3', null, null);
INSERT INTO `task_label` VALUES ('108', '129', '6', null, null);
INSERT INTO `task_label` VALUES ('109', '130', '3', '2020-11-24 12:31:16', '2020-11-24 12:31:16');
INSERT INTO `task_label` VALUES ('110', '130', '6', '2020-11-24 12:31:16', '2020-11-24 12:31:16');
INSERT INTO `task_label` VALUES ('111', '124', '2', '2020-11-24 12:31:27', '2020-11-24 12:31:27');
INSERT INTO `task_label` VALUES ('112', '124', '3', '2020-11-24 12:31:27', '2020-11-24 12:31:27');
INSERT INTO `task_label` VALUES ('113', '131', '3', '2020-11-24 12:31:35', '2020-11-24 12:31:35');
INSERT INTO `task_label` VALUES ('114', '131', '6', '2020-11-24 12:31:35', '2020-11-24 12:31:35');
INSERT INTO `task_label` VALUES ('115', '132', '6', '2020-11-24 14:00:04', '2020-11-24 14:00:04');
INSERT INTO `task_label` VALUES ('116', '132', '15', '2020-11-24 14:00:04', '2020-11-24 14:00:04');
INSERT INTO `task_label` VALUES ('117', '126', '1', '2020-11-24 14:00:12', '2020-11-24 14:00:12');
INSERT INTO `task_label` VALUES ('118', '126', '3', '2020-11-24 14:00:12', '2020-11-24 14:00:12');
INSERT INTO `task_label` VALUES ('119', '133', '6', '2020-11-24 14:00:19', '2020-11-24 14:00:19');
INSERT INTO `task_label` VALUES ('120', '133', '15', '2020-11-24 14:00:19', '2020-11-24 14:00:19');
INSERT INTO `task_label` VALUES ('121', '134', '15', '2020-11-26 14:18:18', '2020-11-26 14:18:18');
INSERT INTO `task_label` VALUES ('122', '134', '16', '2020-11-26 14:18:18', '2020-11-26 14:18:18');
INSERT INTO `task_label` VALUES ('123', '135', '15', '2020-11-26 14:18:27', '2020-11-26 14:18:27');
INSERT INTO `task_label` VALUES ('124', '135', '16', '2020-11-26 14:18:27', '2020-11-26 14:18:27');
INSERT INTO `task_label` VALUES ('125', '136', '15', '2020-11-26 14:18:40', '2020-11-26 14:18:40');
INSERT INTO `task_label` VALUES ('126', '136', '16', '2020-11-26 14:18:40', '2020-11-26 14:18:40');
INSERT INTO `task_label` VALUES ('127', '137', '16', '2020-11-26 14:18:47', '2020-11-26 14:18:47');
INSERT INTO `task_label` VALUES ('128', '137', '17', '2020-11-26 14:18:47', '2020-11-26 14:18:47');
INSERT INTO `task_label` VALUES ('129', '138', '16', '2020-11-26 14:55:33', '2020-11-26 14:55:33');
INSERT INTO `task_label` VALUES ('130', '138', '17', '2020-11-26 14:55:33', '2020-11-26 14:55:33');
INSERT INTO `task_label` VALUES ('131', '139', '15', '2020-11-26 14:55:40', '2020-11-26 14:55:40');
INSERT INTO `task_label` VALUES ('132', '140', '15', '2020-11-30 10:20:12', '2020-11-30 10:20:12');
INSERT INTO `task_label` VALUES ('133', '140', '16', '2020-11-30 10:20:12', '2020-11-30 10:20:12');
INSERT INTO `task_label` VALUES ('134', '141', '15', '2020-11-30 10:20:21', '2020-11-30 10:20:21');
INSERT INTO `task_label` VALUES ('135', '141', '16', '2020-11-30 10:20:21', '2020-11-30 10:20:21');
INSERT INTO `task_label` VALUES ('136', '141', '17', '2020-11-30 10:20:21', '2020-11-30 10:20:21');
INSERT INTO `task_label` VALUES ('137', '142', '15', '2020-11-30 10:20:28', '2020-11-30 10:20:28');
INSERT INTO `task_label` VALUES ('138', '142', '16', '2020-11-30 10:20:28', '2020-11-30 10:20:28');
INSERT INTO `task_label` VALUES ('139', '143', '15', '2020-12-01 13:59:03', '2020-12-01 13:59:03');
INSERT INTO `task_label` VALUES ('140', '143', '16', '2020-12-01 13:59:03', '2020-12-01 13:59:03');
INSERT INTO `task_label` VALUES ('141', '143', '15', '2020-12-03 10:00:58', '2020-12-03 10:00:58');
INSERT INTO `task_label` VALUES ('142', '143', '16', '2020-12-03 10:00:58', '2020-12-03 10:00:58');
INSERT INTO `task_label` VALUES ('143', '143', '17', '2020-12-03 10:00:58', '2020-12-03 10:00:58');
INSERT INTO `task_label` VALUES ('144', '143', '15', '2020-12-03 10:01:25', '2020-12-03 10:01:25');
INSERT INTO `task_label` VALUES ('145', '143', '16', '2020-12-03 10:01:25', '2020-12-03 10:01:25');
INSERT INTO `task_label` VALUES ('146', '143', '15', '2020-12-03 10:01:25', '2020-12-03 10:01:25');
INSERT INTO `task_label` VALUES ('147', '143', '16', '2020-12-03 10:01:25', '2020-12-03 10:01:25');
INSERT INTO `task_label` VALUES ('148', '143', '17', '2020-12-03 10:01:25', '2020-12-03 10:01:25');
INSERT INTO `task_label` VALUES ('149', '143', '18', '2020-12-03 10:01:25', '2020-12-03 10:01:25');
INSERT INTO `task_label` VALUES ('150', '143', '15', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('151', '143', '16', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('152', '143', '15', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('153', '143', '16', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('154', '143', '17', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('155', '143', '15', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('156', '143', '16', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('157', '143', '15', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('158', '143', '16', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('159', '143', '17', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('160', '143', '18', '2020-12-03 10:12:15', '2020-12-03 10:12:15');
INSERT INTO `task_label` VALUES ('161', '143', '15', '2020-12-03 10:13:24', '2020-12-03 10:13:24');
INSERT INTO `task_label` VALUES ('162', '143', '15', '2020-12-03 10:13:24', '2020-12-03 10:13:24');
INSERT INTO `task_label` VALUES ('163', '143', '15', '2020-12-03 10:13:24', '2020-12-03 10:13:24');
INSERT INTO `task_label` VALUES ('164', '159', '15', '2020-12-05 09:37:42', '2020-12-05 09:37:42');
INSERT INTO `task_label` VALUES ('165', '159', '16', '2020-12-05 09:37:42', '2020-12-05 09:37:42');
INSERT INTO `task_label` VALUES ('166', '160', '15', '2020-12-05 09:38:24', '2020-12-05 09:38:24');
INSERT INTO `task_label` VALUES ('167', '160', '16', '2020-12-05 09:38:24', '2020-12-05 09:38:24');
INSERT INTO `task_label` VALUES ('170', '144', '17', '2020-12-05 10:23:07', '2020-12-05 10:23:07');
INSERT INTO `task_label` VALUES ('171', '144', '16', '2020-12-05 10:23:07', '2020-12-05 10:23:07');
INSERT INTO `task_label` VALUES ('172', '144', '15', '2020-12-05 10:23:07', '2020-12-05 10:23:07');
INSERT INTO `task_label` VALUES ('173', '144', '18', '2020-12-05 10:23:07', '2020-12-05 10:23:07');
INSERT INTO `task_label` VALUES ('184', '163', '15', '2020-12-05 10:58:49', '2020-12-05 10:58:49');
INSERT INTO `task_label` VALUES ('185', '163', '16', '2020-12-05 10:58:49', '2020-12-05 10:58:49');
INSERT INTO `task_label` VALUES ('186', '163', '17', '2020-12-05 10:58:49', '2020-12-05 10:58:49');
INSERT INTO `task_label` VALUES ('187', '154', '16', '2020-12-05 10:59:06', '2020-12-05 10:59:06');
INSERT INTO `task_label` VALUES ('188', '154', '17', '2020-12-05 10:59:06', '2020-12-05 10:59:06');
INSERT INTO `task_label` VALUES ('189', '154', '18', '2020-12-05 10:59:06', '2020-12-05 10:59:06');
INSERT INTO `task_label` VALUES ('190', '154', '19', '2020-12-05 10:59:06', '2020-12-05 10:59:06');
INSERT INTO `task_label` VALUES ('191', '164', '17', '2020-12-05 22:59:52', '2020-12-05 22:59:52');
INSERT INTO `task_label` VALUES ('192', '164', '18', '2020-12-05 22:59:52', '2020-12-05 22:59:52');
INSERT INTO `task_label` VALUES ('193', '164', '19', '2020-12-05 22:59:52', '2020-12-05 22:59:52');
INSERT INTO `task_label` VALUES ('194', '161', '19', '2020-12-05 23:00:10', '2020-12-05 23:00:10');
INSERT INTO `task_label` VALUES ('195', '161', '20', '2020-12-05 23:00:10', '2020-12-05 23:00:10');
INSERT INTO `task_label` VALUES ('196', '161', '21', '2020-12-05 23:00:10', '2020-12-05 23:00:10');
INSERT INTO `task_label` VALUES ('197', '161', '17', '2020-12-05 23:00:10', '2020-12-05 23:00:10');
INSERT INTO `task_label` VALUES ('198', '161', '18', '2020-12-05 23:00:10', '2020-12-05 23:00:10');
INSERT INTO `task_label` VALUES ('199', '173', '34', '2020-12-09 13:55:06', '2020-12-09 13:55:06');
INSERT INTO `task_label` VALUES ('200', '173', '35', '2020-12-09 13:55:06', '2020-12-09 13:55:06');
INSERT INTO `task_label` VALUES ('201', '173', '36', '2020-12-09 13:55:06', '2020-12-09 13:55:06');
INSERT INTO `task_label` VALUES ('202', '173', '37', '2020-12-09 13:55:06', '2020-12-09 13:55:06');
INSERT INTO `task_label` VALUES ('203', '175', '34', '2021-01-11 10:10:19', '2021-01-11 10:10:19');
INSERT INTO `task_label` VALUES ('204', '175', '35', '2021-01-11 10:10:19', '2021-01-11 10:10:19');
INSERT INTO `task_label` VALUES ('205', '176', '34', '2021-02-15 10:09:55', '2021-02-15 10:09:55');
INSERT INTO `task_label` VALUES ('206', '176', '35', '2021-02-15 10:09:55', '2021-02-15 10:09:55');
INSERT INTO `task_label` VALUES ('207', '177', '35', '2021-02-15 10:10:04', '2021-02-15 10:10:04');
INSERT INTO `task_label` VALUES ('208', '177', '36', '2021-02-15 10:10:04', '2021-02-15 10:10:04');
INSERT INTO `task_label` VALUES ('209', '178', '34', '2021-02-15 10:10:33', '2021-02-15 10:10:33');
INSERT INTO `task_label` VALUES ('210', '178', '35', '2021-02-15 10:10:33', '2021-02-15 10:10:33');
INSERT INTO `task_label` VALUES ('211', '179', '34', '2021-02-19 20:29:06', '2021-02-19 20:29:06');
INSERT INTO `task_label` VALUES ('212', '179', '35', '2021-02-19 20:29:06', '2021-02-19 20:29:06');
INSERT INTO `task_label` VALUES ('215', '181', '34', '2021-02-19 20:36:00', '2021-02-19 20:36:00');
INSERT INTO `task_label` VALUES ('216', '181', '35', '2021-02-19 20:36:00', '2021-02-19 20:36:00');
INSERT INTO `task_label` VALUES ('217', '181', '36', '2021-02-19 20:36:00', '2021-02-19 20:36:00');
INSERT INTO `task_label` VALUES ('218', '181', '37', '2021-02-19 20:36:00', '2021-02-19 20:36:00');
INSERT INTO `task_label` VALUES ('221', '169', '34', '2021-02-19 20:50:13', '2021-02-19 20:50:13');
INSERT INTO `task_label` VALUES ('222', '169', '35', '2021-02-19 20:50:13', '2021-02-19 20:50:13');

-- ----------------------------
-- Table structure for `tomato_set`
-- ----------------------------
DROP TABLE IF EXISTS `tomato_set`;
CREATE TABLE `tomato_set` (
  `id` bigint(20) NOT NULL COMMENT '设置id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `aim_number` int(11) DEFAULT NULL COMMENT '每日目标数',
  `start_aim` tinyint(4) DEFAULT NULL COMMENT '是否开始目标',
  `duration` int(11) DEFAULT NULL COMMENT '番茄时长',
  `short_rest_duration` int(11) DEFAULT NULL COMMENT '短休息时长',
  `long_rest_duration` int(11) DEFAULT NULL COMMENT '长休息时长',
  `long_rest_interval_number` int(11) DEFAULT NULL COMMENT '长休息间隔数',
  `auto_start_next` tinyint(4) DEFAULT NULL COMMENT '是否自动开始下一个番茄',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tomato_set
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `head_portrait` varchar(255) DEFAULT NULL COMMENT '头像',
  `roles` varchar(255) DEFAULT '0' COMMENT '权限',
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT '是否被冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'user', '15484596587', '$2a$10$sWcogzyDN43YUx38iUdADe9U4skcAtLcNQb93FmI3wg5xiom6V.P6', '2020-06-06 15:36:54', '2020-07-22 09:41:21', '541269@qq.ocm', null, 'ROLE_USER', '1');
INSERT INTO `user` VALUES ('2', 'admin1', '12569854865', '$2a$10$sWcogzyDN43YUx38iUdADe9U4skcAtLcNQb93FmI3wg5xiom6V.P6', '2020-06-06 15:37:09', '2020-07-22 09:41:25', '98714649544@qq.com', null, 'ROLE_USER', '1');
INSERT INTO `user` VALUES ('11', 'test', '121323434234', '$2a$10$sWcogzyDN43YUx38iUdADe9U4skcAtLcNQb93FmI3wg5xiom6V.P6', '2020-11-22 11:20:53', '2020-11-22 11:21:01', null, null, '0', '1');
INSERT INTO `user` VALUES ('12', 'string', null, '$2a$10$ZJP9Jj56RKEYB60wVkbos..lPl/8TlrQFGS/iAl1Hqxcg51DESiou', '2020-11-25 16:10:28', '2020-11-25 16:10:28', null, null, '0', '1');
INSERT INTO `user` VALUES ('13', 'admin', null, '8e476ed8800c400239af52b2d0c9e8d8', null, null, null, null, '0', '1');