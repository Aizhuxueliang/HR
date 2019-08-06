/*
 Navicat Premium Data Transfer

 Source Server         : mysql_54
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : 39.105.54.45:3306
 Source Schema         : hr1

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 06/08/2019 15:07:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_number` int(10) NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL,
  `time_type` enum('上午','下午','加班') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` time NULL DEFAULT NULL,
  `start_type` enum('正常','迟到','未签到') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未签到',
  `end_time` time NULL DEFAULT NULL,
  `end_type` enum('正常','早退','未签到') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未签到',
  `work_type` enum('上班','请假') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES (1, 1001, '2017-07-07', '下午', '17:01:33', '迟到', '17:25:15', '早退', NULL, NULL);
INSERT INTO `attendance` VALUES (2, 1001, '2017-07-08', '上午', '08:53:43', '正常', '11:20:46', '早退', NULL, NULL);
INSERT INTO `attendance` VALUES (3, 1001, '2017-07-08', '下午', '14:25:17', '正常', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (4, 1009, '2017-07-10', '上午', '10:29:35', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (5, 1009, '2017-07-10', '下午', '16:42:01', '迟到', '16:42:25', '早退', NULL, NULL);
INSERT INTO `attendance` VALUES (6, 1009, '2017-07-10', '加班', '19:31:46', '正常', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (7, 1009, '2017-07-11', '上午', '09:21:13', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (8, 1009, '2017-07-12', '上午', '09:09:53', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (9, 1009, '2017-07-12', '下午', '15:31:03', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (10, 1001, '2017-07-12', '下午', '15:34:58', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (11, 1007, '2017-07-12', '下午', '15:51:24', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (12, 1008, '2017-07-12', '下午', '16:48:03', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (13, 1009, '2017-07-12', '加班', '21:02:35', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (14, 1010, '2017-07-12', '加班', '21:24:34', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (15, 1012, '2018-10-25', '上午', '10:09:19', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (16, 1007, '2018-10-27', '加班', '20:15:13', '迟到', '20:26:42', '早退', NULL, NULL);
INSERT INTO `attendance` VALUES (17, 1012, '2018-10-27', '加班', '20:48:44', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (18, 1007, '2018-10-29', '下午', '16:07:41', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (19, 1012, '2018-10-31', '上午', '11:38:59', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (20, 1001, '2018-10-31', '下午', '16:10:11', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (21, 1001, '2018-11-01', '上午', '10:16:56', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (22, 1007, '2018-11-01', '下午', '15:28:43', '迟到', NULL, '未签到', NULL, NULL);
INSERT INTO `attendance` VALUES (23, 1001, '2019-03-05', '下午', '14:37:30', '正常', '18:33:45', '正常', NULL, NULL);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `department_number` int(10) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, 2001, '运维部', '王生安', '0923-3456180', '运维楼101', '');
INSERT INTO `department` VALUES (2, 2002, '运维部', '贺易', '0923-3456324', '运维楼304', '');
INSERT INTO `department` VALUES (3, 2003, '项目开发部', '周卓浩', '0923-3456909', '开发楼205', '');
INSERT INTO `department` VALUES (4, 2004, '项目开发部', '何刚名', '0923-3456231', '开发楼109', '');
INSERT INTO `department` VALUES (5, 2005, '项目开发部', '王成文 ', '0923-3456782', '开发楼102', '');
INSERT INTO `department` VALUES (6, 2006, '项目开发部', '严席华', '0923-3456098', '开发楼201', '');
INSERT INTO `department` VALUES (7, 2007, '项目开发部', '云介融 ', '0923-3456143', '开发楼104', '');
INSERT INTO `department` VALUES (8, 2008, '技术支持部', '范湖', '0923-3456677', '科技楼203', '');
INSERT INTO `department` VALUES (9, 2009, '项目运维部', '吴敬序', '0923-3456489', '运维楼305', '');
INSERT INTO `department` VALUES (10, 2010, '研发部', '凌月青', '0923-3456210', '开发楼109', '');
INSERT INTO `department` VALUES (11, 2011, '需求调研部', '丁频佟', '0923-3456724', '调研楼208', '');
INSERT INTO `department` VALUES (12, 2012, '技术支持部', '王缘', '0923-3456423', '科技楼302', '');
INSERT INTO `department` VALUES (13, 2013, '人事部', '朱学良', '0923-2456123', '人才楼108', '');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_number` int(10) NULL DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `department_number` int(10) NULL DEFAULT NULL,
  `position_number` int(10) NULL DEFAULT NULL,
  `in_time` date NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `department_number`(`department_number`) USING BTREE,
  INDEX `title_number`(`position_number`) USING BTREE,
  INDEX `employee_number`(`employee_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 1001, 'admin', '男', '1995-10-18', '15678015439', '', '', '', '', 2013, 3009, '2017-02-22', '1001', '');
INSERT INTO `employee` VALUES (2, 1007, '李烨', '女', '1996-03-04', '18907327612', '', NULL, '', '', 2001, 3003, '2017-01-10', '1007', '');
INSERT INTO `employee` VALUES (3, 1008, '刘旭亮', '男', '1995-06-06', '13464238971', '', '', '', '', 2007, 3003, '2017-06-28', '1008', '');
INSERT INTO `employee` VALUES (4, 1009, '张彤', '男', '1995-09-24', '15810239904', '', '', '', '', 2013, 3009, '2017-02-06', '1009', '');
INSERT INTO `employee` VALUES (5, 1010, '杨杰', '男', '1995-01-26', '17871239756', '', '', '', '', 2003, 3010, '2017-05-12', '1010', '');
INSERT INTO `employee` VALUES (6, 1011, '唐治涛', '男', '1995-03-29', '18832013916', '', '山东青岛', NULL, '大学本科', 2012, 3003, '2017-07-05', '1011', '');
INSERT INTO `employee` VALUES (7, 1012, '朱学良', '男', '1995-11-10', '15147362138', '', '内蒙古赤峰', NULL, '大学本科', 2013, 3007, '2017-07-05', 'zhuxueliang', '');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_number` int(10) NULL DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `in_time` date NULL DEFAULT NULL,
  `out_time` date NULL DEFAULT NULL,
  `department_number` int(10) NULL DEFAULT NULL,
  `position_number` int(10) NULL DEFAULT NULL,
  `status` enum('离职','在职','退休') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, 1001, 'admin', '男', '1995-10-18', '15678015439', '', '', '', '', '2017-02-22', NULL, 2001, 3002, '在职', '', '');
INSERT INTO `history` VALUES (2, 1002, '王秀英', '女', '1992-03-08', '15590678821', '', '', '', '', '2011-04-29', '2017-07-04', 2011, 3004, '离职', '', '');
INSERT INTO `history` VALUES (3, 1003, '李强', '男', '1993-12-22', '18929778634', '', '', '', '', '2010-05-06', '2017-07-05', 2010, 3007, '退休', '', '');
INSERT INTO `history` VALUES (4, 1004, '刘洋', '男', '1991-07-26', '13807987324', '', '', '', '', '2009-12-23', '2017-07-04', 2009, 3005, '退休', '', '');
INSERT INTO `history` VALUES (5, 1005, '李敏', '女', '1991-01-03', '13791826142', '', '', '', '', '2010-03-29', '2017-07-05', 2008, 3004, '退休', '', '');
INSERT INTO `history` VALUES (6, 1006, '王伟 ', '女', '1990-06-12', '13986207926', '', '', '', '', '2010-10-12', '2017-07-06', 2012, 3005, '离职', '', '');
INSERT INTO `history` VALUES (7, 1007, '李烨', '女', '1996-03-04', '18907327612', '', '', '', '', '2017-01-10', NULL, 2001, 3003, '离职', '', '');
INSERT INTO `history` VALUES (8, 1008, '刘旭亮', '男', '1995-06-00', '13464238971', '', '', '', '', '2017-06-28', NULL, 2002, 3001, '在职', '', '');
INSERT INTO `history` VALUES (9, 1009, '张彤', '男', '1995-09-24', '15810239904', '', '', '', '', '2017-02-06', NULL, 2002, 3003, '在职', '', '');
INSERT INTO `history` VALUES (10, 1010, '杨杰', '男', '1995-01-26', '17871239756', '', '', '', '', '2017-05-12', NULL, 2003, 3003, '在职', '', '');
INSERT INTO `history` VALUES (11, 1011, '唐治涛', '男', '1995-03-29', '18832013916', '819564344@qq.com', '山东青岛', '', '大学本科', '2017-07-05', NULL, 2010, 3006, '在职', '', '');
INSERT INTO `history` VALUES (12, 1012, '朱学良', '男', '1997-03-11', '18832050264', '1215959210@qq.com', '河北省张家口', '', '本科', '2017-07-05', NULL, 2013, 3009, '在职', '', '');

-- ----------------------------
-- Table structure for lea
-- ----------------------------
DROP TABLE IF EXISTS `lea`;
CREATE TABLE `lea`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_number` int(10) NULL DEFAULT NULL,
  `department_number` int(10) NULL DEFAULT NULL,
  `start_time` date NULL DEFAULT NULL,
  `end_time` date NULL DEFAULT NULL,
  `days` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` enum('事假','病假') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` enum('已批准','未批准') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未批准',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lea
-- ----------------------------
INSERT INTO `lea` VALUES (1, 1007, 2007, '2017-07-11', '2017-07-12', '1', '家中有事', '事假', NULL, '未批准', NULL);
INSERT INTO `lea` VALUES (2, 1008, 2007, '2017-07-10', '2017-07-12', '2', '偶感风寒', '病假', NULL, '已批准', NULL);
INSERT INTO `lea` VALUES (3, 1011, 2007, '2017-07-11', '2017-07-11', '1', '回家看看', '事假', NULL, '已批准', NULL);
INSERT INTO `lea` VALUES (7, 1008, 2007, '2017-07-14', '2017-07-17', '3', '真的有点事', '事假', NULL, '已批准', NULL);
INSERT INTO `lea` VALUES (8, 1009, 2013, '2017-07-05', '2017-07-06', '1', '回家看看', '事假', NULL, '已批准', NULL);
INSERT INTO `lea` VALUES (9, 1012, 2013, '2017-07-08', '2017-07-08', '1', '摊上事了', '事假', NULL, '已批准', NULL);
INSERT INTO `lea` VALUES (10, 1012, 2013, '2017-07-13', '2017-07-14', '1', '真的有点事', '事假', NULL, '已批准', NULL);
INSERT INTO `lea` VALUES (11, 1012, NULL, '2018-10-29', '2018-10-31', '2', '累坏了', '事假', NULL, '未批准', NULL);

-- ----------------------------
-- Table structure for move
-- ----------------------------
DROP TABLE IF EXISTS `move`;
CREATE TABLE `move`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_number` int(10) NULL DEFAULT NULL,
  `before` int(10) NULL DEFAULT NULL,
  `after` int(10) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `manager` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of move
-- ----------------------------
INSERT INTO `move` VALUES (1, 1011, 2010, 2011, '2017-07-10 20:40:20', '张彤', NULL);
INSERT INTO `move` VALUES (3, 1007, 2001, 2007, '2017-07-11 09:53:34', '张彤', NULL);
INSERT INTO `move` VALUES (4, 1011, 2007, 2012, '2018-10-24 09:09:54', '朱学良', NULL);
INSERT INTO `move` VALUES (5, 1010, 2013, 2003, '2018-10-24 09:10:13', '朱学良', NULL);
INSERT INTO `move` VALUES (6, 1012, 2005, 2013, '2018-10-24 09:11:05', '朱学良', NULL);

-- ----------------------------
-- Table structure for overtime
-- ----------------------------
DROP TABLE IF EXISTS `overtime`;
CREATE TABLE `overtime`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `department_number` int(10) NULL DEFAULT NULL,
  `employee_number` int(10) NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL,
  `start_time` time NULL DEFAULT NULL,
  `end_time` time NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of overtime
-- ----------------------------
INSERT INTO `overtime` VALUES (1, 2007, 1007, '2017-07-12', NULL, NULL, NULL);
INSERT INTO `overtime` VALUES (2, 2001, 1008, '2017-07-12', NULL, NULL, NULL);
INSERT INTO `overtime` VALUES (3, 2013, 1012, '2018-07-12', NULL, NULL, NULL);
INSERT INTO `overtime` VALUES (4, 2003, 1010, '2017-08-12', NULL, NULL, NULL);
INSERT INTO `overtime` VALUES (8, 2011, 1011, '2017-07-14', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `position_number` int(10) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` enum('部门主任','部门员工','人事部主任','人事部员工') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_number`(`position_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, 3001, 'MFG顾问', '部门主任', '');
INSERT INTO `position` VALUES (2, 3002, 'FIN顾问', '部门员工', '');
INSERT INTO `position` VALUES (3, 3003, 'MDM实施顾问', '部门员工', '');
INSERT INTO `position` VALUES (4, 3004, '算法工程师', '部门主任', '');
INSERT INTO `position` VALUES (5, 3005, 'PS技术顾问', '部门员工', '');
INSERT INTO `position` VALUES (6, 3006, 'CLUDE技术顾问', '部门员工', '');
INSERT INTO `position` VALUES (7, 3007, '人事部主任', '人事部主任', '');
INSERT INTO `position` VALUES (8, 3008, 'EBS1技术顾问', '部门主任', '');
INSERT INTO `position` VALUES (9, 3009, '人事部主任', '人事部主任', '');
INSERT INTO `position` VALUES (10, 3010, 'Java工程师', '部门主任', '');

SET FOREIGN_KEY_CHECKS = 1;
