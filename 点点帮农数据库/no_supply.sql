/*
Navicat MySQL Data Transfer

Source Server         : yxh
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : bangnong

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2019-06-03 23:04:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `no_supply`
-- ----------------------------
DROP TABLE IF EXISTS `no_supply`;
CREATE TABLE `no_supply` (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(500) NOT NULL COMMENT '产品名称(必须)',
  `sup_variety` varchar(500) NOT NULL COMMENT '产品品种',
  `sup_validity` varchar(30) NOT NULL COMMENT '有效期(必须)',
  `sup_num` varchar(30) NOT NULL COMMENT '供应数量',
  `sup_phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `sup_user` varchar(16) DEFAULT NULL COMMENT '联系人',
  `sup_origin` varchar(20) DEFAULT NULL COMMENT '来源，如：XXX网',
  `sup_type` varchar(10) DEFAULT NULL COMMENT '类型：供应，需求',
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品供需表';

-- ----------------------------
-- Records of no_supply
-- ----------------------------
