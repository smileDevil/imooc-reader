/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : mylibrary

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-09-03 09:17:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `password` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1002', 'jack', '123456');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publish` varchar(20) DEFAULT NULL,
  `ISBN` varchar(30) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `pubdate` varchar(20) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES ('1', '三体', '刘思欣', '北京出版社', '585886578', '三体的表述', '中文', '125.70', '2020-08-10', '19', '12');
INSERT INTO `book_info` VALUES ('2', '疯狂java讲义', '李刚', '电子工业出版社', '68994765', '学习Java的笔记', '中文', '102.00', '2020-08-10', '19', '3');
INSERT INTO `book_info` VALUES ('3', '活着', '余华', '北京出版社', '55354365', '文学类的图书', '中文', '123.90', '2020-09-08', '19', '4');
INSERT INTO `book_info` VALUES ('4', '西游记', '吴承恩', '深圳出版社', '5847393', '四大名著之一', '中文', '56.00', '2020-09-01', '20', '55');
INSERT INTO `book_info` VALUES ('5', '百年孤独', '小明', '北京出版社', '6532345', '111111小明', '中文', '343.00', '2020-09-03', '18', '21');
INSERT INTO `book_info` VALUES ('8', '测试数据', '李四', '北京出版社', '9467554', '2222222', '中文', '23.00', '2020-09-03', '23', '5');
INSERT INTO `book_info` VALUES ('9', '一根木头', '迪丽热巴', '上海出版社', '4753453', '青春校园剧', '中文', '999.00', '2020-09-07', '21', '2');

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('18', '科技');
INSERT INTO `class_info` VALUES ('19', '文学');
INSERT INTO `class_info` VALUES ('20', '历史');
INSERT INTO `class_info` VALUES ('21', '都市');
INSERT INTO `class_info` VALUES ('22', '玄幻');
INSERT INTO `class_info` VALUES ('23', '无线');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reader_id` int(12) DEFAULT NULL,
  `book_id` int(12) DEFAULT NULL,
  `lend_date` varchar(20) DEFAULT NULL,
  `back_date` varchar(20) DEFAULT NULL,
  `fine` double(10,2) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES ('1', '1', '1', '2020-08-31', '2020-09-28', '0.00', '1');
INSERT INTO `lend_list` VALUES ('2', '1', '4', '2020-09-02', '2020-09-30', '0.00', '1');
INSERT INTO `lend_list` VALUES ('3', '1', '5', '2020-09-02', '2020-09-30', '0.00', '1');
INSERT INTO `lend_list` VALUES ('4', '2', '5', '2020-09-02', '2020-09-30', '0.00', '2');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` int(11) NOT NULL,
  `name` varchar(12) DEFAULT NULL,
  `password` int(12) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `card_state` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES ('6', '1', '张三', '123456', '女', '2020-08-16', '上海', '13874985671', null);
INSERT INTO `reader_info` VALUES ('7', '2', '蛋蛋', '123456', '女', '2020-08-18', '杭州市', '13846745608', null);
INSERT INTO `reader_info` VALUES ('8', '3', '杰克', '123456', '男', '2020-08-19', '深圳', '13656856846', null);
