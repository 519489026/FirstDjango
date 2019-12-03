/*
Navicat MySQL Data Transfer

Source Server         : HiMall
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : cas

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-03 17:20:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sysdept
-- ----------------------------
DROP TABLE IF EXISTS `sysdept`;
CREATE TABLE `sysdept` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DeptName` varchar(255) NOT NULL DEFAULT '' COMMENT '部门名称',
  `ParentId` int(11) NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `ParentName` varchar(255) NOT NULL DEFAULT '' COMMENT '上级部门名称',
  `Status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态，0正常，1删除',
  `OrderBy` int(11) NOT NULL DEFAULT '0' COMMENT '部门排序',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysdept
-- ----------------------------

-- ----------------------------
-- Table structure for sysmenu
-- ----------------------------
DROP TABLE IF EXISTS `sysmenu`;
CREATE TABLE `sysmenu` (
  `Id` int(255) NOT NULL AUTO_INCREMENT,
  `MenuType` tinyint(4) DEFAULT '0' COMMENT '类型，0为菜单，1为菜单上的按钮操作',
  `MenuName` varchar(255) DEFAULT NULL,
  `MenuUrl` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysmenu
-- ----------------------------

-- ----------------------------
-- Table structure for sysrole
-- ----------------------------
DROP TABLE IF EXISTS `sysrole`;
CREATE TABLE `sysrole` (
  `Id` int(11) NOT NULL,
  `RoleName` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysrole
-- ----------------------------

-- ----------------------------
-- Table structure for sysrolemenu
-- ----------------------------
DROP TABLE IF EXISTS `sysrolemenu`;
CREATE TABLE `sysrolemenu` (
  `Id` int(11) NOT NULL,
  `MenuId` int(11) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysrolemenu
-- ----------------------------

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `Id` int(11) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `TrueName` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES (null, 'admin', '系统管理员', '8921410912104a9634b40d6bc207aad0', '1', '0');

-- ----------------------------
-- Table structure for sysuserrole
-- ----------------------------
DROP TABLE IF EXISTS `sysuserrole`;
CREATE TABLE `sysuserrole` (
  `Id` int(11) NOT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuserrole
-- ----------------------------

-- ----------------------------
-- Table structure for sysvalid
-- ----------------------------
DROP TABLE IF EXISTS `sysvalid`;
CREATE TABLE `sysvalid` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长字段，主键',
  `SystemName` varchar(255) DEFAULT '' COMMENT '子系统名称',
  `RSAPrivateKey` varchar(2000) DEFAULT '' COMMENT '子系统对应的私钥',
  `RSAPublicKey` varchar(2000) DEFAULT '' COMMENT '子系统对应的公钥',
  `Staus` tinyint(255) DEFAULT '0' COMMENT '0正常，1废止',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysvalid
-- ----------------------------
INSERT INTO `sysvalid` VALUES ('1', 'First', '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', '0');
