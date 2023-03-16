/*
Navicat MySQL Data Transfer

Source Server         : koneksi
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db-khs

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-17 04:19:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data_dosen`
-- ----------------------------
DROP TABLE IF EXISTS `data_dosen`;
CREATE TABLE `data_dosen` (
  `ID_Dosen` int(3) NOT NULL AUTO_INCREMENT,
  `Kode` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Dosen` varchar(35) CHARACTER SET utf8mb4 DEFAULT '',
  PRIMARY KEY (`ID_Dosen`),
  KEY `Kode` (`Kode`),
  CONSTRAINT `Kode` FOREIGN KEY (`Kode`) REFERENCES `data_matkul` (`Kode`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_dosen
-- ----------------------------
INSERT INTO `data_dosen` VALUES ('1', 'M1001', 'Triadi');
INSERT INTO `data_dosen` VALUES ('2', 'M1002', 'Laksono');
INSERT INTO `data_dosen` VALUES ('3', 'M3001', 'Putri');
