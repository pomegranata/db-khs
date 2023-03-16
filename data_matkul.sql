/*
Navicat MySQL Data Transfer

Source Server         : koneksi
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db-khs

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-17 04:19:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data_matkul`
-- ----------------------------
DROP TABLE IF EXISTS `data_matkul`;
CREATE TABLE `data_matkul` (
  `ID_Matkul` int(100) NOT NULL AUTO_INCREMENT,
  `Kode` varchar(20) NOT NULL,
  `MatKul` varchar(50) DEFAULT '',
  `Jenis` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_Matkul`,`Kode`),
  KEY `Kode` (`Kode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of data_matkul
-- ----------------------------
INSERT INTO `data_matkul` VALUES ('1', 'M1001', 'Algoritma', 'Wajib');
INSERT INTO `data_matkul` VALUES ('2', 'M1002', 'Pengadaan SDM', 'Wajib');
INSERT INTO `data_matkul` VALUES ('3', 'M3001', 'Bahasa Indonesia', 'Pilihan');
