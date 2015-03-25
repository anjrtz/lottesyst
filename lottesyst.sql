/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : lottesyst

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-25 10:24:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for applicant
-- ----------------------------
DROP TABLE IF EXISTS `applicant`;
CREATE TABLE `applicant` (
  `appl_id` int(11) NOT NULL,
  `appl_firstname` varchar(100) DEFAULT NULL,
  `appl_lastname` varchar(100) DEFAULT NULL,
  `appl_idcard` varchar(32) DEFAULT NULL,
  `appl_idcard_type` enum('ktp','sim') DEFAULT NULL,
  `appl_username` varchar(32) DEFAULT NULL,
  `appl_password` varchar(32) DEFAULT NULL,
  `appl_referal` int(11) DEFAULT NULL,
  `appl_phone` decimal(32,0) DEFAULT NULL,
  `appl_email` varchar(100) DEFAULT NULL,
  `appl_mobile` decimal(32,0) DEFAULT NULL,
  `appl_address` varchar(255) DEFAULT NULL,
  `appl_city` varchar(50) DEFAULT NULL,
  `appl_province` varchar(50) DEFAULT NULL,
  `appl_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`appl_id`),
  KEY `referal` (`appl_referal`),
  CONSTRAINT `referal` FOREIGN KEY (`appl_referal`) REFERENCES `applicant` (`appl_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of applicant
-- ----------------------------

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_code` varchar(32) DEFAULT NULL,
  `appl_id` int(11) DEFAULT NULL,
  `appl_referal` int(11) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `code` (`coupon_code`),
  UNIQUE KEY `referal` (`appl_id`,`appl_referal`),
  CONSTRAINT `appl` FOREIGN KEY (`appl_id`) REFERENCES `applicant` (`appl_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of coupon
-- ----------------------------

-- ----------------------------
-- Table structure for picked_winner
-- ----------------------------
DROP TABLE IF EXISTS `picked_winner`;
CREATE TABLE `picked_winner` (
  `coupon_id` int(11) NOT NULL,
  `date_picked` datetime DEFAULT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of picked_winner
-- ----------------------------
