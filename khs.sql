-- Date: 2023-03-17 03:45:48


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
INSERT INTO `data_dosen` VALUES ('1', 'M1001', 'Triadi');   -- Auto increment = NULL
INSERT INTO `data_dosen` VALUES ('2', 'M1002', 'Laksono');
INSERT INTO `data_dosen` VALUES ('3', 'M3001', 'Putri');

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
