/*
Navicat MySQL Data Transfer

Source Server         : koneksi
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db-khs

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-17 04:19:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data_mahasiswa`
-- ----------------------------
DROP TABLE IF EXISTS `data_mahasiswa`;
CREATE TABLE `data_mahasiswa` (
  `ID_Mahasiswa` int(100) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(35) DEFAULT '',
  `Jurusan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Mahasiswa`,`NIM`),
  KEY `NIM` (`NIM`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of data_mahasiswa
-- ----------------------------
INSERT INTO `data_mahasiswa` VALUES ('1', 'F11001', 'Adna', 'Teknik Informatika');
INSERT INTO `data_mahasiswa` VALUES ('2', 'F12001', 'Adi', 'Sistem Informasi');
INSERT INTO `data_mahasiswa` VALUES ('3', 'F13001', 'Cindy', 'Manajemen');
