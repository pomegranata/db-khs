/*
Navicat MySQL Data Transfer

Source Server         : koneksi
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db-khs

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-17 04:19:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data_nilai`
-- ----------------------------
DROP TABLE IF EXISTS `data_nilai`;
CREATE TABLE `data_nilai` (
  `ID_Nilai` int(11) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(10) NOT NULL,
  `Kode` varchar(20) NOT NULL,
  `Tugas` int(3) DEFAULT NULL,
  `Kuis` int(3) DEFAULT NULL,
  `UTS` int(3) DEFAULT NULL,
  `UAS` int(3) DEFAULT NULL,
  PRIMARY KEY (`ID_Nilai`),
  KEY `fk_nim` (`NIM`),
  KEY `fk_kode` (`Kode`),
  CONSTRAINT `fk_kode` FOREIGN KEY (`Kode`) REFERENCES `data_matkul` (`Kode`) ON UPDATE CASCADE,
  CONSTRAINT `fk_nim` FOREIGN KEY (`NIM`) REFERENCES `data_mahasiswa` (`NIM`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of data_nilai
-- ----------------------------
INSERT INTO `data_nilai` VALUES ('1', 'F11001', 'M1001', '85', '90', '76', '88');
INSERT INTO `data_nilai` VALUES ('2', 'F12001', 'M1002', '87', '77', '98', '93');
INSERT INTO `data_nilai` VALUES ('3', 'F13001', 'M3001', '85', '82', '94', '73');
INSERT INTO `data_nilai` VALUES ('4', 'F12001', 'M1001', '83', '92', '90', '83');
INSERT INTO `data_nilai` VALUES ('5', 'F13001', 'M1002', '88', '78', '75', '90');
INSERT INTO `data_nilai` VALUES ('6', 'F11001', 'M1002', '81', '98', '90', '89');
INSERT INTO `data_nilai` VALUES ('7', 'F12001', 'M3001', '90', '76', '78', '83');
INSERT INTO `data_nilai` VALUES ('8', 'F13001', 'M1001', '77', '75', '75', '80');
INSERT INTO `data_nilai` VALUES ('9', 'F11001', 'M3001', '85', '89', '98', '80');
