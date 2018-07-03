/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : si-papi

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-05-02 02:22:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gambar
-- ----------------------------
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE `gambar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of gambar
-- ----------------------------
INSERT INTO `gambar` VALUES ('15', 'DSC_0118', 'SYGMe29910.jpg', '2018-04-29 22:06:10', '2018-04-29 22:06:10');
INSERT INTO `gambar` VALUES ('16', 'DSC_0119', 'KGHvv29310.jpg', '2018-04-29 22:06:10', '2018-04-29 22:06:10');
INSERT INTO `gambar` VALUES ('17', 'DSC_0120', 'KXVFr29910.jpg', '2018-04-29 22:06:10', '2018-04-29 22:06:10');
INSERT INTO `gambar` VALUES ('18', 'DSC_0121', 'sAZBN29210.jpg', '2018-04-29 22:06:10', '2018-04-29 22:06:10');
INSERT INTO `gambar` VALUES ('19', '2014-11-21 09.56.42', 'txuKb29810.jpg', '2018-04-29 22:13:21', '2018-04-29 22:13:21');
INSERT INTO `gambar` VALUES ('20', 'ngrembel-asri', 'SUR9629710.jpg', '2018-04-29 22:13:21', '2018-04-29 22:13:21');
INSERT INTO `gambar` VALUES ('21', 'ngrembel-asri-semarang', 'ylcQb29210.jpg', '2018-04-29 22:13:21', '2018-04-29 22:13:21');
INSERT INTO `gambar` VALUES ('22', 'WhatsApp Image 2018-04-25 at 14.29.07', 'IIyJt29410.jpg', '2018-04-29 22:14:40', '2018-04-29 22:14:40');
INSERT INTO `gambar` VALUES ('23', 'WhatsApp Image 2018-04-25 at 14.29.11', 'EeKpG29710.jpg', '2018-04-29 22:14:41', '2018-04-29 22:14:41');
INSERT INTO `gambar` VALUES ('24', 'WhatsApp Image 2018-04-25 at 14.29.13 (1)', 'BuXnb29110.jpg', '2018-04-29 22:14:41', '2018-04-29 22:14:41');
INSERT INTO `gambar` VALUES ('25', 'WhatsApp Image 2018-04-25 at 14.29.13', 'qPerd29210.jpg', '2018-04-29 22:14:41', '2018-04-29 22:14:41');
INSERT INTO `gambar` VALUES ('26', 'DSC_0135', 'qIVbN29310.jpg', '2018-04-29 22:19:31', '2018-04-29 22:19:31');
INSERT INTO `gambar` VALUES ('27', 'DSC_0139', 'rXZ8n29310.jpg', '2018-04-29 22:19:31', '2018-04-29 22:19:31');
INSERT INTO `gambar` VALUES ('28', 'DSC_0140', 'OjMft29810.jpg', '2018-04-29 22:19:31', '2018-04-29 22:19:31');
INSERT INTO `gambar` VALUES ('29', 'DSC_0141', 'oq46L29210.jpg', '2018-04-29 22:19:31', '2018-04-29 22:19:31');
INSERT INTO `gambar` VALUES ('30', 'DSC_0142', 'LUbgz29710.jpg', '2018-04-29 22:19:31', '2018-04-29 22:19:31');
INSERT INTO `gambar` VALUES ('31', 'DSC_0143', 'S9Qye29810.jpg', '2018-04-29 22:27:19', '2018-04-29 22:27:19');
INSERT INTO `gambar` VALUES ('32', 'DSC_0144', 'o4xpE29210.jpg', '2018-04-29 22:27:19', '2018-04-29 22:27:19');
INSERT INTO `gambar` VALUES ('33', 'DSC_0145', 'vAqvW29410.jpg', '2018-04-29 22:27:19', '2018-04-29 22:27:19');
INSERT INTO `gambar` VALUES ('34', 'DSC_0146', 'ObgNR29610.jpg', '2018-04-29 22:27:19', '2018-04-29 22:27:19');
INSERT INTO `gambar` VALUES ('35', '1', 'pEO6s29110.jpg', '2018-04-29 22:36:59', '2018-04-29 22:36:59');
INSERT INTO `gambar` VALUES ('36', '2', 'pgdMV29310.jpg', '2018-04-29 22:36:59', '2018-04-29 22:36:59');
INSERT INTO `gambar` VALUES ('37', '3', 'BW6E229410.jpg', '2018-04-29 22:36:59', '2018-04-29 22:36:59');
INSERT INTO `gambar` VALUES ('38', '4', 'S0UUA29810.jpg', '2018-04-29 22:36:59', '2018-04-29 22:36:59');
INSERT INTO `gambar` VALUES ('39', 'DSC_0147', 'DQaqg29510.jpg', '2018-04-29 22:43:01', '2018-04-29 22:43:01');
INSERT INTO `gambar` VALUES ('40', 'lab anti korupsi', 'Yme2p29210.jpg', '2018-04-29 22:43:01', '2018-04-29 22:43:01');
INSERT INTO `gambar` VALUES ('41', 'WhatsApp Image 2018-04-10 at 22.26.03', 'gx3Hy29310.jpg', '2018-04-29 22:43:01', '2018-04-29 22:43:01');
INSERT INTO `gambar` VALUES ('42', 'WhatsApp Image 2018-04-10 at 22.26.04', 'ad6tO29210.jpg', '2018-04-29 22:43:01', '2018-04-29 22:43:01');
INSERT INTO `gambar` VALUES ('43', 'DSC_0158', 'rEmOR29610.jpg', '2018-04-29 22:47:59', '2018-04-29 22:47:59');
INSERT INTO `gambar` VALUES ('44', 'DSC_0162', 'tLaS429710.jpg', '2018-04-29 22:47:59', '2018-04-29 22:47:59');
INSERT INTO `gambar` VALUES ('45', 'DSC_0163', 'OVc6229110.jpg', '2018-04-29 22:47:59', '2018-04-29 22:47:59');
INSERT INTO `gambar` VALUES ('46', 'DSC_0164', '9cRUv29710.jpg', '2018-04-29 22:47:59', '2018-04-29 22:47:59');
INSERT INTO `gambar` VALUES ('47', 'DSC_0175', 'qg16o29710.jpg', '2018-04-29 22:52:04', '2018-04-29 22:52:04');
INSERT INTO `gambar` VALUES ('48', 'DSC_0176', 'V02EX29110.jpg', '2018-04-29 22:52:04', '2018-04-29 22:52:04');
INSERT INTO `gambar` VALUES ('49', 'DSC_0177', 'Xi4gd29310.jpg', '2018-04-29 22:52:04', '2018-04-29 22:52:04');
INSERT INTO `gambar` VALUES ('50', 'DSC_0178', 'dZs1829410.jpg', '2018-04-29 22:52:04', '2018-04-29 22:52:04');
INSERT INTO `gambar` VALUES ('51', 'DSC_0179', 'Ie6d029710.jpg', '2018-04-29 22:52:04', '2018-04-29 22:52:04');
INSERT INTO `gambar` VALUES ('52', '1', 'ai7s029611.jpg', '2018-04-29 23:02:25', '2018-04-29 23:02:25');
INSERT INTO `gambar` VALUES ('53', '2', 'WSRR629111.jpg', '2018-04-29 23:02:25', '2018-04-29 23:02:25');
INSERT INTO `gambar` VALUES ('54', '3', 'IHlJa29311.jpg', '2018-04-29 23:02:25', '2018-04-29 23:02:25');
INSERT INTO `gambar` VALUES ('55', '4', 'sZSFf29311.jpg', '2018-04-29 23:02:25', '2018-04-29 23:02:25');
INSERT INTO `gambar` VALUES ('56', '1', 'NpbWC29311.jpg', '2018-04-29 23:05:40', '2018-04-29 23:05:40');
INSERT INTO `gambar` VALUES ('57', '2', 'UxP2c29711.jpg', '2018-04-29 23:05:40', '2018-04-29 23:05:40');
INSERT INTO `gambar` VALUES ('58', '3', 'MDUK229311.jpg', '2018-04-29 23:05:40', '2018-04-29 23:05:40');
INSERT INTO `gambar` VALUES ('59', '1', 'iaINE29911.jpg', '2018-04-29 23:25:28', '2018-04-29 23:25:28');
INSERT INTO `gambar` VALUES ('60', '2', '2B5Nj29711.jpg', '2018-04-29 23:25:28', '2018-04-29 23:25:28');
INSERT INTO `gambar` VALUES ('61', '3', 'AMEt929811.jpg', '2018-04-29 23:25:28', '2018-04-29 23:25:28');
INSERT INTO `gambar` VALUES ('62', '2', 'n0Cw929511.jpg', '2018-04-29 23:38:27', '2018-04-29 23:38:27');
INSERT INTO `gambar` VALUES ('63', 'WhatsApp Image 2018-04-25 at 13.16.36', 'GDDU929711.jpg', '2018-04-29 23:38:27', '2018-04-29 23:38:27');
INSERT INTO `gambar` VALUES ('64', 'WhatsApp Image 2018-04-25 at 13.16.40', 'iauKh29211.jpg', '2018-04-29 23:38:27', '2018-04-29 23:38:27');
INSERT INTO `gambar` VALUES ('65', 'WhatsApp Image 2018-04-25 at 13.36.28', 'MxgkN29211.jpg', '2018-04-29 23:38:27', '2018-04-29 23:38:27');
INSERT INTO `gambar` VALUES ('66', 'WhatsApp Image 2018-04-25 at 13.38.18', '5djN129911.jpg', '2018-04-29 23:38:28', '2018-04-29 23:38:28');
INSERT INTO `gambar` VALUES ('67', '1', 'Tf7CI30701.jpg', '2018-04-30 01:49:11', '2018-04-30 01:49:11');
INSERT INTO `gambar` VALUES ('68', '2', 'UdDjW30101.jpg', '2018-04-30 01:49:11', '2018-04-30 01:49:11');
INSERT INTO `gambar` VALUES ('69', '3', 'Wca0a30501.jpg', '2018-04-30 01:49:11', '2018-04-30 01:49:11');
INSERT INTO `gambar` VALUES ('70', '4', 'CDg3P30701.jpg', '2018-04-30 01:49:11', '2018-04-30 01:49:11');
INSERT INTO `gambar` VALUES ('71', '2', 'gSxPn30102.jpg', '2018-04-30 02:17:22', '2018-04-30 02:17:22');
INSERT INTO `gambar` VALUES ('72', '3', 'ckEnq30402.jpg', '2018-04-30 02:17:22', '2018-04-30 02:17:22');
INSERT INTO `gambar` VALUES ('73', '4', 'hpI5i30302.jpg', '2018-04-30 02:17:22', '2018-04-30 02:17:22');
INSERT INTO `gambar` VALUES ('74', '6', 'e8KOC30902.jpg', '2018-04-30 02:17:22', '2018-04-30 02:17:22');
INSERT INTO `gambar` VALUES ('75', '7', 'mj1oA30802.jpg', '2018-04-30 02:17:22', '2018-04-30 02:17:22');
INSERT INTO `gambar` VALUES ('76', '1', 'wybrt30202.jpg', '2018-04-30 02:21:20', '2018-04-30 02:21:20');
INSERT INTO `gambar` VALUES ('77', '2', 'Qm1EY30602.jpg', '2018-04-30 02:21:20', '2018-04-30 02:21:20');
INSERT INTO `gambar` VALUES ('78', '1', '6Quw101104.jpg', '2018-05-01 16:06:45', '2018-05-01 16:06:45');
INSERT INTO `gambar` VALUES ('79', '2', 'bqHDq01104.jpg', '2018-05-01 16:06:46', '2018-05-01 16:06:46');
INSERT INTO `gambar` VALUES ('80', '1', 'axwtP01304.jpg', '2018-05-01 16:28:39', '2018-05-01 16:28:39');
INSERT INTO `gambar` VALUES ('81', '2', 'Yd4tj01604.jpg', '2018-05-01 16:28:40', '2018-05-01 16:28:40');
INSERT INTO `gambar` VALUES ('82', '3', 'Z8cQ701404.jpg', '2018-05-01 16:28:40', '2018-05-01 16:28:40');
INSERT INTO `gambar` VALUES ('83', 'DSC_0124', 'Z8y5Y01804.jpg', '2018-05-01 16:30:21', '2018-05-01 16:30:21');
INSERT INTO `gambar` VALUES ('84', 'DSC_0125', '20azE01404.jpg', '2018-05-01 16:30:21', '2018-05-01 16:30:21');
INSERT INTO `gambar` VALUES ('85', 'DSC_0126', 'CK33F01304.jpg', '2018-05-01 16:30:21', '2018-05-01 16:30:21');
INSERT INTO `gambar` VALUES ('86', 'DSC_0127', 'yAeQ901104.jpg', '2018-05-01 16:30:21', '2018-05-01 16:30:21');
INSERT INTO `gambar` VALUES ('87', 'DSC_0129', 'x5mKp01204.jpg', '2018-05-01 16:30:21', '2018-05-01 16:30:21');
INSERT INTO `gambar` VALUES ('88', 'IMG_20180402_154544(FILEminimizer)', 'WzEu801904.jpg', '2018-05-01 16:35:56', '2018-05-01 16:35:56');
INSERT INTO `gambar` VALUES ('89', 'IMG_20180402_154601(FILEminimizer)', 'OIRtC01604.jpg', '2018-05-01 16:35:56', '2018-05-01 16:35:56');
INSERT INTO `gambar` VALUES ('90', 'IMG_20180402_154700(FILEminimizer)', '0Wkt401204.jpg', '2018-05-01 16:35:56', '2018-05-01 16:35:56');
INSERT INTO `gambar` VALUES ('91', 'IMG_20180402_155307(FILEminimizer)', 'JzQZC01204.jpg', '2018-05-01 16:35:56', '2018-05-01 16:35:56');
INSERT INTO `gambar` VALUES ('92', '20180501_095201(FILEminimizer)', 'NYeq701804.jpg', '2018-05-01 16:49:09', '2018-05-01 16:49:09');
INSERT INTO `gambar` VALUES ('93', '20180501_095430(FILEminimizer)', 'hOU4701804.jpg', '2018-05-01 16:49:09', '2018-05-01 16:49:09');
INSERT INTO `gambar` VALUES ('94', '20180501_095525(FILEminimizer)', 'v8xUv01504.jpg', '2018-05-01 16:49:09', '2018-05-01 16:49:09');
INSERT INTO `gambar` VALUES ('95', '20180501_101852(FILEminimizer)', 'cyYiY01504.jpg', '2018-05-01 16:49:09', '2018-05-01 16:49:09');
INSERT INTO `gambar` VALUES ('96', '20180501_101917(FILEminimizer)', 'lRSLb01204.jpg', '2018-05-01 16:49:09', '2018-05-01 16:49:09');
INSERT INTO `gambar` VALUES ('97', '1', 'zXZyf01204.jpg', '2018-05-01 16:56:29', '2018-05-01 16:56:29');
INSERT INTO `gambar` VALUES ('98', '2', 'Fdny501404.jpg', '2018-05-01 16:56:29', '2018-05-01 16:56:29');
INSERT INTO `gambar` VALUES ('99', '3', 'mV7ai01404.jpg', '2018-05-01 16:56:29', '2018-05-01 16:56:29');
INSERT INTO `gambar` VALUES ('100', '1', 'OpPOD01704.jpg', '2018-05-01 16:57:57', '2018-05-01 16:57:57');
INSERT INTO `gambar` VALUES ('101', 'DSC_0213', 'eLSbm01404.jpg', '2018-05-01 16:59:56', '2018-05-01 16:59:56');
INSERT INTO `gambar` VALUES ('102', 'DSC_0217', 'vhCCJ01404.jpg', '2018-05-01 16:59:56', '2018-05-01 16:59:56');
INSERT INTO `gambar` VALUES ('103', 'DSC_0220', 'wzCTd01604.jpg', '2018-05-01 16:59:56', '2018-05-01 16:59:56');
INSERT INTO `gambar` VALUES ('104', 'DSC_0221', 'h4d6H01104.jpg', '2018-05-01 16:59:57', '2018-05-01 16:59:57');
INSERT INTO `gambar` VALUES ('105', 'DSC_0226', '5JoWT01804.jpg', '2018-05-01 16:59:57', '2018-05-01 16:59:57');
INSERT INTO `gambar` VALUES ('106', 'DSC_0111', '8pnAH01805.jpg', '2018-05-01 17:02:05', '2018-05-01 17:02:05');
INSERT INTO `gambar` VALUES ('107', 'DSC_0113', 'HvWhF01405.jpg', '2018-05-01 17:02:05', '2018-05-01 17:02:05');
INSERT INTO `gambar` VALUES ('108', 'DSC_0115', 'mJCqW01905.jpg', '2018-05-01 17:02:05', '2018-05-01 17:02:05');
INSERT INTO `gambar` VALUES ('109', 'DSC_0116', 'pAnk001905.jpg', '2018-05-01 17:02:05', '2018-05-01 17:02:05');
INSERT INTO `gambar` VALUES ('110', 'DSC_0117', 'Xyade01405.jpg', '2018-05-01 17:02:05', '2018-05-01 17:02:05');
INSERT INTO `gambar` VALUES ('111', '20180501_112702(FILEminimizer)', 'qTcNS01105.jpg', '2018-05-01 17:06:03', '2018-05-01 17:06:03');
INSERT INTO `gambar` VALUES ('112', '20180501_112736(FILEminimizer)', 'mY8W501505.jpg', '2018-05-01 17:06:03', '2018-05-01 17:06:03');
INSERT INTO `gambar` VALUES ('113', '20180501_113024(FILEminimizer)', 'aj7ZI01105.jpg', '2018-05-01 17:06:03', '2018-05-01 17:06:03');
INSERT INTO `gambar` VALUES ('114', 'DSC_0119', 'i6XRS01305.jpg', '2018-05-01 17:07:27', '2018-05-01 17:07:27');
INSERT INTO `gambar` VALUES ('115', 'DSC_0122', '4U1o401605.jpg', '2018-05-01 17:07:28', '2018-05-01 17:07:28');
INSERT INTO `gambar` VALUES ('116', 'DSC_0130', 'r8HfC01405.jpg', '2018-05-01 17:11:34', '2018-05-01 17:11:34');
INSERT INTO `gambar` VALUES ('117', 'DSC_0131', 'yMh0s01205.jpg', '2018-05-01 17:11:34', '2018-05-01 17:11:34');
INSERT INTO `gambar` VALUES ('118', 'DSC_0133', 'apbs801205.jpg', '2018-05-01 17:11:34', '2018-05-01 17:11:34');
INSERT INTO `gambar` VALUES ('119', 'DSC_0135', '6YmwC01305.jpg', '2018-05-01 17:11:34', '2018-05-01 17:11:34');
INSERT INTO `gambar` VALUES ('120', 'DSC_0136', 'kXcJr01405.jpg', '2018-05-01 17:11:34', '2018-05-01 17:11:34');
INSERT INTO `gambar` VALUES ('121', 'DSC_0202', 'K9wCW01505.jpg', '2018-05-01 17:19:01', '2018-05-01 17:19:01');
INSERT INTO `gambar` VALUES ('122', 'DSC_0205', 'syRmM01405.jpg', '2018-05-01 17:19:01', '2018-05-01 17:19:01');
INSERT INTO `gambar` VALUES ('123', 'DSC_0206', 'W7epB01205.jpg', '2018-05-01 17:19:01', '2018-05-01 17:19:01');
INSERT INTO `gambar` VALUES ('124', 'DSC_0209', 'q4h7i01605.jpg', '2018-05-01 17:19:02', '2018-05-01 17:19:02');
INSERT INTO `gambar` VALUES ('125', 'DSC_0212', 'KOL1M01505.jpg', '2018-05-01 17:19:02', '2018-05-01 17:19:02');

-- ----------------------------
-- Table structure for gambar_potensi
-- ----------------------------
DROP TABLE IF EXISTS `gambar_potensi`;
CREATE TABLE `gambar_potensi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gambar_id` int(10) unsigned NOT NULL,
  `potensi_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gambar_potensi_gambar_id_foreign` (`gambar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of gambar_potensi
-- ----------------------------
INSERT INTO `gambar_potensi` VALUES ('12', '16', '15');
INSERT INTO `gambar_potensi` VALUES ('11', '15', '15');
INSERT INTO `gambar_potensi` VALUES ('15', '19', '16');
INSERT INTO `gambar_potensi` VALUES ('14', '18', '15');
INSERT INTO `gambar_potensi` VALUES ('13', '17', '15');
INSERT INTO `gambar_potensi` VALUES ('16', '20', '16');
INSERT INTO `gambar_potensi` VALUES ('17', '21', '16');
INSERT INTO `gambar_potensi` VALUES ('18', '22', '17');
INSERT INTO `gambar_potensi` VALUES ('19', '23', '17');
INSERT INTO `gambar_potensi` VALUES ('20', '24', '17');
INSERT INTO `gambar_potensi` VALUES ('21', '25', '17');
INSERT INTO `gambar_potensi` VALUES ('22', '26', '18');
INSERT INTO `gambar_potensi` VALUES ('23', '27', '18');
INSERT INTO `gambar_potensi` VALUES ('24', '28', '18');
INSERT INTO `gambar_potensi` VALUES ('25', '29', '18');
INSERT INTO `gambar_potensi` VALUES ('26', '30', '18');
INSERT INTO `gambar_potensi` VALUES ('27', '31', '19');
INSERT INTO `gambar_potensi` VALUES ('28', '32', '19');
INSERT INTO `gambar_potensi` VALUES ('29', '33', '19');
INSERT INTO `gambar_potensi` VALUES ('30', '34', '19');
INSERT INTO `gambar_potensi` VALUES ('31', '35', '20');
INSERT INTO `gambar_potensi` VALUES ('32', '36', '20');
INSERT INTO `gambar_potensi` VALUES ('33', '37', '20');
INSERT INTO `gambar_potensi` VALUES ('34', '38', '20');
INSERT INTO `gambar_potensi` VALUES ('35', '39', '21');
INSERT INTO `gambar_potensi` VALUES ('36', '40', '21');
INSERT INTO `gambar_potensi` VALUES ('37', '41', '21');
INSERT INTO `gambar_potensi` VALUES ('38', '42', '21');
INSERT INTO `gambar_potensi` VALUES ('39', '43', '22');
INSERT INTO `gambar_potensi` VALUES ('40', '44', '22');
INSERT INTO `gambar_potensi` VALUES ('41', '45', '22');
INSERT INTO `gambar_potensi` VALUES ('42', '46', '22');
INSERT INTO `gambar_potensi` VALUES ('43', '47', '23');
INSERT INTO `gambar_potensi` VALUES ('44', '48', '23');
INSERT INTO `gambar_potensi` VALUES ('45', '49', '23');
INSERT INTO `gambar_potensi` VALUES ('46', '50', '23');
INSERT INTO `gambar_potensi` VALUES ('47', '51', '23');
INSERT INTO `gambar_potensi` VALUES ('48', '52', '24');
INSERT INTO `gambar_potensi` VALUES ('49', '53', '24');
INSERT INTO `gambar_potensi` VALUES ('50', '54', '24');
INSERT INTO `gambar_potensi` VALUES ('51', '55', '24');
INSERT INTO `gambar_potensi` VALUES ('52', '56', '25');
INSERT INTO `gambar_potensi` VALUES ('53', '57', '25');
INSERT INTO `gambar_potensi` VALUES ('54', '58', '25');
INSERT INTO `gambar_potensi` VALUES ('55', '59', '26');
INSERT INTO `gambar_potensi` VALUES ('56', '60', '26');
INSERT INTO `gambar_potensi` VALUES ('57', '61', '26');
INSERT INTO `gambar_potensi` VALUES ('58', '62', '27');
INSERT INTO `gambar_potensi` VALUES ('59', '63', '27');
INSERT INTO `gambar_potensi` VALUES ('60', '64', '27');
INSERT INTO `gambar_potensi` VALUES ('61', '65', '27');
INSERT INTO `gambar_potensi` VALUES ('62', '66', '27');
INSERT INTO `gambar_potensi` VALUES ('63', '67', '28');
INSERT INTO `gambar_potensi` VALUES ('64', '68', '28');
INSERT INTO `gambar_potensi` VALUES ('65', '69', '28');
INSERT INTO `gambar_potensi` VALUES ('66', '70', '28');
INSERT INTO `gambar_potensi` VALUES ('67', '71', '29');
INSERT INTO `gambar_potensi` VALUES ('68', '72', '29');
INSERT INTO `gambar_potensi` VALUES ('69', '73', '29');
INSERT INTO `gambar_potensi` VALUES ('70', '74', '29');
INSERT INTO `gambar_potensi` VALUES ('71', '75', '29');
INSERT INTO `gambar_potensi` VALUES ('72', '76', '30');
INSERT INTO `gambar_potensi` VALUES ('73', '77', '30');
INSERT INTO `gambar_potensi` VALUES ('74', '78', '31');
INSERT INTO `gambar_potensi` VALUES ('75', '79', '31');
INSERT INTO `gambar_potensi` VALUES ('76', '80', '32');
INSERT INTO `gambar_potensi` VALUES ('77', '81', '32');
INSERT INTO `gambar_potensi` VALUES ('78', '82', '32');
INSERT INTO `gambar_potensi` VALUES ('79', '83', '33');
INSERT INTO `gambar_potensi` VALUES ('80', '84', '33');
INSERT INTO `gambar_potensi` VALUES ('81', '85', '33');
INSERT INTO `gambar_potensi` VALUES ('82', '86', '33');
INSERT INTO `gambar_potensi` VALUES ('83', '87', '33');
INSERT INTO `gambar_potensi` VALUES ('84', '88', '34');
INSERT INTO `gambar_potensi` VALUES ('85', '89', '34');
INSERT INTO `gambar_potensi` VALUES ('86', '90', '34');
INSERT INTO `gambar_potensi` VALUES ('87', '91', '34');
INSERT INTO `gambar_potensi` VALUES ('88', '92', '35');
INSERT INTO `gambar_potensi` VALUES ('89', '93', '35');
INSERT INTO `gambar_potensi` VALUES ('90', '94', '35');
INSERT INTO `gambar_potensi` VALUES ('91', '95', '35');
INSERT INTO `gambar_potensi` VALUES ('92', '96', '35');
INSERT INTO `gambar_potensi` VALUES ('93', '97', '36');
INSERT INTO `gambar_potensi` VALUES ('94', '98', '36');
INSERT INTO `gambar_potensi` VALUES ('95', '99', '36');
INSERT INTO `gambar_potensi` VALUES ('96', '100', '37');
INSERT INTO `gambar_potensi` VALUES ('97', '101', '38');
INSERT INTO `gambar_potensi` VALUES ('98', '102', '38');
INSERT INTO `gambar_potensi` VALUES ('99', '103', '38');
INSERT INTO `gambar_potensi` VALUES ('100', '104', '38');
INSERT INTO `gambar_potensi` VALUES ('101', '105', '38');
INSERT INTO `gambar_potensi` VALUES ('102', '106', '39');
INSERT INTO `gambar_potensi` VALUES ('103', '107', '39');
INSERT INTO `gambar_potensi` VALUES ('104', '108', '39');
INSERT INTO `gambar_potensi` VALUES ('105', '109', '39');
INSERT INTO `gambar_potensi` VALUES ('106', '110', '39');
INSERT INTO `gambar_potensi` VALUES ('107', '111', '40');
INSERT INTO `gambar_potensi` VALUES ('108', '112', '40');
INSERT INTO `gambar_potensi` VALUES ('109', '113', '40');
INSERT INTO `gambar_potensi` VALUES ('110', '114', '41');
INSERT INTO `gambar_potensi` VALUES ('111', '115', '41');
INSERT INTO `gambar_potensi` VALUES ('112', '116', '42');
INSERT INTO `gambar_potensi` VALUES ('113', '117', '42');
INSERT INTO `gambar_potensi` VALUES ('114', '118', '42');
INSERT INTO `gambar_potensi` VALUES ('115', '119', '42');
INSERT INTO `gambar_potensi` VALUES ('116', '120', '42');
INSERT INTO `gambar_potensi` VALUES ('117', '121', '43');
INSERT INTO `gambar_potensi` VALUES ('118', '122', '43');
INSERT INTO `gambar_potensi` VALUES ('119', '123', '43');
INSERT INTO `gambar_potensi` VALUES ('120', '124', '43');
INSERT INTO `gambar_potensi` VALUES ('121', '125', '43');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_icon` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('11', 'UMKM', 'Kategori UMKM', 'K6Lac29809.png', '2018-04-29 21:35:41', '2018-04-29 21:35:41');
INSERT INTO `kategori` VALUES ('9', 'Wisata Kuliner', 'Kategori Wisata Kuliner', 'sbJsz29609.png', '2018-04-29 21:34:48', '2018-04-29 21:34:48');
INSERT INTO `kategori` VALUES ('10', 'Wisata Edukasi', 'Kategori Wisata Edukasi', 'zC3hZ29809.png', '2018-04-29 21:35:06', '2018-04-29 21:35:06');
INSERT INTO `kategori` VALUES ('12', 'Agrowisata', 'Wisata Kebun Buah', '8GYb329309.png', '2018-04-29 21:36:38', '2018-04-30 03:10:13');
INSERT INTO `kategori` VALUES ('13', 'Industri', 'Kategori Industri Ekonomi Masyarakat', 'Tj3Xe29909.png', '2018-04-29 21:37:56', '2018-04-29 21:37:56');
INSERT INTO `kategori` VALUES ('14', 'Wisata Religi', 'Kategori Wisata Religi', 'sjijx29209.png', '2018-04-29 21:39:11', '2018-04-29 21:39:11');
INSERT INTO `kategori` VALUES ('15', 'Wisata Budaya', 'Kategori Wisata Budaya', 'yLXDk29609.png', '2018-04-29 21:40:07', '2018-04-29 21:40:07');
INSERT INTO `kategori` VALUES ('16', 'Instansi', 'Kategori Instansi Pemerintahan, Sekolah', 'iG2jB29409.png', '2018-04-29 21:49:53', '2018-04-29 21:49:53');
INSERT INTO `kategori` VALUES ('17', 'Lainnya', 'Kategori Lain-lain', '9J0WH30403.png', '2018-04-30 03:15:53', '2018-04-30 03:15:53');

-- ----------------------------
-- Table structure for kategori_potensi
-- ----------------------------
DROP TABLE IF EXISTS `kategori_potensi`;
CREATE TABLE `kategori_potensi` (
  `kategori_id` int(10) unsigned NOT NULL,
  `potensi_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`kategori_id`,`potensi_id`),
  KEY `kategori_potensi_potensi_id_foreign` (`potensi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kategori_potensi
-- ----------------------------
INSERT INTO `kategori_potensi` VALUES ('9', '16');
INSERT INTO `kategori_potensi` VALUES ('9', '17');
INSERT INTO `kategori_potensi` VALUES ('10', '16');
INSERT INTO `kategori_potensi` VALUES ('10', '21');
INSERT INTO `kategori_potensi` VALUES ('10', '27');
INSERT INTO `kategori_potensi` VALUES ('10', '34');
INSERT INTO `kategori_potensi` VALUES ('10', '42');
INSERT INTO `kategori_potensi` VALUES ('11', '19');
INSERT INTO `kategori_potensi` VALUES ('11', '23');
INSERT INTO `kategori_potensi` VALUES ('11', '24');
INSERT INTO `kategori_potensi` VALUES ('11', '25');
INSERT INTO `kategori_potensi` VALUES ('11', '26');
INSERT INTO `kategori_potensi` VALUES ('11', '27');
INSERT INTO `kategori_potensi` VALUES ('11', '29');
INSERT INTO `kategori_potensi` VALUES ('11', '31');
INSERT INTO `kategori_potensi` VALUES ('11', '38');
INSERT INTO `kategori_potensi` VALUES ('12', '20');
INSERT INTO `kategori_potensi` VALUES ('12', '33');
INSERT INTO `kategori_potensi` VALUES ('13', '18');
INSERT INTO `kategori_potensi` VALUES ('13', '22');
INSERT INTO `kategori_potensi` VALUES ('14', '28');
INSERT INTO `kategori_potensi` VALUES ('14', '30');
INSERT INTO `kategori_potensi` VALUES ('14', '36');
INSERT INTO `kategori_potensi` VALUES ('14', '37');
INSERT INTO `kategori_potensi` VALUES ('15', '32');
INSERT INTO `kategori_potensi` VALUES ('16', '15');
INSERT INTO `kategori_potensi` VALUES ('17', '35');
INSERT INTO `kategori_potensi` VALUES ('17', '39');
INSERT INTO `kategori_potensi` VALUES ('17', '40');
INSERT INTO `kategori_potensi` VALUES ('17', '41');
INSERT INTO `kategori_potensi` VALUES ('17', '43');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_04_28_073955_create_kategori_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_04_28_074223_create_gambar_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_04_28_074257_create_potensi_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_04_28_074312_create_rute_table', '1');
INSERT INTO `migrations` VALUES ('7', '2018_04_28_074339_create_kategori_potensi_table', '1');
INSERT INTO `migrations` VALUES ('8', '2018_04_28_074406_create_gambar_potensi_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for potensi
-- ----------------------------
DROP TABLE IF EXISTS `potensi`;
CREATE TABLE `potensi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemilik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of potensi
-- ----------------------------
INSERT INTO `potensi` VALUES ('17', 'DEWANDARU', 'Selvy Ratu Wiharsih', 'RW VII', 'Dewandaru merupakan wahana rekreasi / wisata yang memiliki  fasilitas kolam renang, mushola, area bermain, karaoke, kolam pancing.', '-7.078145', '110.360122', '2018-04-29 22:14:40', '2018-04-29 22:14:40');
INSERT INTO `potensi` VALUES ('15', 'Kelurahan Gunungpati', '-', 'RT 2 RW 2', 'Kelurahan Gunungpati berada di Jl. RM. Tjondro Koesoemo Kode Pos 50225 Kecamatan Gunungpati Kota Semarang.', '-7.087673', '110.361466', '2018-04-29 22:06:10', '2018-04-29 22:06:10');
INSERT INTO `potensi` VALUES ('16', 'NGREMBEL ASRI', 'Heru Willy', 'RW VII', 'Ngrembel asri merupakan wahana  rekreasi / wisata yang memiliki fasilitas restoran, wahana permainan anak dan wahana permainan dewasa. Pekerja tetap disana mencapai kurang lebih 40 Orang.', '-7.075689', '110.360219', '2018-04-29 22:13:21', '2018-04-29 22:13:21');
INSERT INTO `potensi` VALUES ('18', 'KONVEKSI AMANAH', 'Istiqomah', 'RT 2 RW I', 'Konveksi Amanah melayani pembuatan kaos, jaket seragam, busana muslim. Konveksi Amanah berdiri sejak 1994. Pekerja tetap disana mencapai 20 orang.', '-7.086464', '110.361822', '2018-04-29 22:19:31', '2018-04-29 22:19:31');
INSERT INTO `potensi` VALUES ('19', 'KONVEKSI MITAYANI', 'Mitayani', 'RT 2 RW 2', 'Konveksi Mitayani melayani pembuatan kaos, jaket, seragam. Konveksi Mitayani berdiri sejak 2011. Pekerja tetap disana mencapai 9 orang.', '-7.087059', '110.361934', '2018-04-29 22:27:19', '2018-04-29 22:27:19');
INSERT INTO `potensi` VALUES ('20', 'KEBUN BUAH MONTHI', 'Ketua Kelompok Tumidiarso', 'RT 2 RW 2', 'Kebuh buah tersebut milik Kelompok Tani Gunungpati 1 yang bekerja sama dengan JSDF dan Pemerintah Kota Semarang. Kelompok tani tersebut berjumlah 15 orang.', '-7.086985', '110.361098', '2018-04-29 22:36:59', '2018-04-29 22:36:59');
INSERT INTO `potensi` VALUES ('21', 'HIDROPONIK GOEBOEG PENTJENG', 'Abah Ahmad Saksono Widodo Al Habsyi', '-', 'Kebun Hidroponik yang berada di Goeboeg Pentjeng dimanfaatkan sebagai pusat pembelajaran anak-anak yang bersekolah disana. Sekolah yang ada disana yaitu TK/RA, TPQ, Pondok Pesantren dan Sekolah Anti Korupsi.', '-7.080396', '110.357859', '2018-04-29 22:43:01', '2018-04-29 22:43:01');
INSERT INTO `potensi` VALUES ('22', 'PASAR JOWO', 'Warga Kel. Gunungpati', 'RW III', 'Pasar Jowo merupakan potensi yang ada di RW 03 Kelurahan Gunungpati yang dibuka atau digagas oleh para tokoh masyarakat dan Karang taruna, karena di pasar Gunungpati terkenal dengan Pasar Kliwon. Dulunya Pasar Jowo diselenggarakan setiap Minggu Kliwon.', '-7.089565', '110.361098', '2018-04-29 22:47:59', '2018-04-29 22:47:59');
INSERT INTO `potensi` VALUES ('23', 'Batik Manggis', 'Ani Wardani', 'RT 1 RW 6', 'Batik manggis merupakan salah satu kelompok  batik yang ada di Kampoeng Malon.', '-7.100377', '110.360028', '2018-04-29 22:52:04', '2018-04-29 22:52:04');
INSERT INTO `potensi` VALUES ('24', 'Batik Salma', 'Umi Salamah', 'RT 2 RW 6', 'Batik Salma merupakan salah satu sentra batik yang ada di kampoeng Malon. Batik Salma juga memberikan pelatihan membatik.', '-7.101969', '110.360159', '2018-04-29 23:02:25', '2018-04-29 23:02:25');
INSERT INTO `potensi` VALUES ('25', 'BATIK DELIMA', 'Yuliana', 'RT 2 RW 6', 'Batik Delima merupakan salah satu kelompok  batik yang ada di Kampoeng Malon. Batik Delima dapat membuat kain batik sebanyak 10 kain dengan panjang kain 2 meter.', '-7.102172', '110.360339', '2018-04-29 23:05:40', '2018-04-29 23:05:40');
INSERT INTO `potensi` VALUES ('26', 'Batik Kristal', 'Umi Kholifatus Saadah', 'RT 3 RW 6', 'Batik Delima merupakan salah satu kelompok  batik yang ada di Kampoeng Malon.', '-7.1040001', '110.360624', '2018-04-29 23:25:28', '2018-04-29 23:25:28');
INSERT INTO `potensi` VALUES ('27', 'Batik Zie', 'Zazilah', 'RT 2 RW 6', 'Batik Zie merupakan sentra batik yang berada di Kampoeng Malon. Batik Zie juga memberikan pelatihan membatik ke warga, instansi maupun mahasiswa dalam negeri maupun luar negeri. Batik Zie merupakan penemu bahan baku pewarnaan membatik dari limbah mangrove (bakau).', '-7.103042', '110.360927', '2018-04-29 23:38:27', '2018-04-29 23:38:27');
INSERT INTO `potensi` VALUES ('28', 'Padepokan Ilir-Ilir', 'Kyai Rohadi', 'RT 2 RW 6', 'Padepokan Ilir ilir (Sunan Kalijaga) merupakan Paguyuban Spiritual - Sosial - Seni dan Budaya dibawah naungan Ormas Lindu Aji di daerah Gunungpati (LA Pasgupati).', '-7.102553', '110.361766', '2018-04-30 01:49:10', '2018-04-30 01:49:10');
INSERT INTO `potensi` VALUES ('29', 'Budidaya Arwana', 'Langgeng', 'RT 3 RW 10', 'Budidaya arwana terletak di kampung siroto RT 3 RW 10. Budidaya ikan arwana didirikan pada awal 2012. Jenis ikan arawana yang dibudayakan, silver ,golden dan red. Yang bekerja mengelola budidaya tersebut 2 orang.', '-7.100532', '110.354226', '2018-04-30 02:17:22', '2018-04-30 02:17:22');
INSERT INTO `potensi` VALUES ('30', 'Ponpes Saidiyah', 'KH.M.Said Almasyhad', 'RW 10', 'Ponpes Saidiyah merupakan ponpes yang berada di Kampung Siroto. Ponpes Saidiyah sampai saat masih dalam proses pembangunan.', '-7.101893', '110.355403', '2018-04-30 02:21:19', '2018-04-30 02:21:19');
INSERT INTO `potensi` VALUES ('31', 'Batik Citra', 'Samsul Muarif', 'RT 3 RW 6', 'Batik Citra merupakan salah satu kelompok  batik yang ada di Kampoeng Malon.', '-7.1040001', '110.360624', '2018-05-01 16:06:44', '2018-05-01 16:06:44');
INSERT INTO `potensi` VALUES ('32', 'Rumah Pintar, Sanggar Tari, Perdalangan Sulasih Sulandini', 'Darwanto dan Nurlaela', 'RW V', 'Jadwal latihan sanggar tari jam 10.00 WIB setiap hari minggu di balai kelurahan Gunungpati. Yang ikut berpartisipasi yaitu warga kelurahan Gunungpati dan sekitarnya. Jenis tari yang diajarkan yaitu tari kembang sore, tari gajah melin , tari lilin dan tari gajah denok. Untuk perdalangan tidak hanya sebagai perdalangan wayang saja tapi juga sebagai sarana pembelajaran bagi anak-anak di rumah pintar.', '-7.088448', '110.364105', '2018-05-01 16:28:39', '2018-05-01 16:28:39');
INSERT INTO `potensi` VALUES ('33', 'Kebun Buah Jambu Kristal', 'Ketua Bapak Anshori', 'RW I', 'Kebun Buah Jambu Kistal terletak di RW I (Kampung Jagalan) Kelurahan Gunungpati. Kebun Buah ini dibawah binaan Dinas Pertanian Kota Semarang.', '-7.084742', '110.361531', '2018-05-01 16:30:20', '2018-05-01 16:30:20');
INSERT INTO `potensi` VALUES ('34', 'Rumah Pintar “Chasanah”', 'Fitia Fatmawati', 'RT 3 RW 10', 'Rumah pintar meliki kegiatan bimbingan belajar untuk anak sekolah. Disana juga terdapat buku-buku bacaan. Di rumah pintar juga ada kegiatan untuk remaja diantaranya belajar bersama membuat kerajinan, kegiatan olahraga, penyuluhan dll.', '-7.099246', '110.35554', '2018-05-01 16:35:55', '2018-05-01 16:35:55');
INSERT INTO `potensi` VALUES ('35', 'Rumah Sehat', 'Subagiyono', 'RT 3 RW 10', 'Rumah yang memiliki komponen yang baik sebagai sarana kesehatan untuk penghuninya. Mulai dari ventilasi yang ada disetiap ruangan. Dapur dan wc dalam kondisi bersih diikuti dengan pembuangan limbah yang terjaga adanya 3 filter sanitasi / rembesan langusng menuju tanah dan selokan.', '-7.009665', '110.355706', '2018-05-01 16:49:09', '2018-05-01 16:49:09');
INSERT INTO `potensi` VALUES ('36', 'Ponpes Sunan Gunung Jati Ba’alawy', 'KH Muhammad Masroni', 'RT 1 RW 6', 'Pesantren Sunan Gunung Jati berkomitmen membantu program pemerintah di bidang keamanan negara dan pertahanan pangan. Ciri khas Pesantren ini bisa dilihat dari bentuk bangunan yang menyatu dengan alam. Kediaman kiai, mushalla, dan bangunan pesantren lain terbuat dari kayu.', '-7.101312', '110.358883', '2018-05-01 16:56:29', '2018-05-01 16:56:29');
INSERT INTO `potensi` VALUES ('37', 'Makam Adipati Wasis Joyo Kusumo (Sibatur)', '-', 'RW V', 'Makam Adipati Wasis\r\nJoyo Kusumo merupakan makam Adipati Pragola I. Makam\r\nini sering didatangi banyak para peziarah yang datang dari\r\nberbagai kota terutama dari Kabupaten Pati taitu Bupati Pati beserta jajarannya setiap Khaul satu tahun sekali.', '-7.090089', '110.362257', '2018-05-01 16:57:57', '2018-05-01 16:57:57');
INSERT INTO `potensi` VALUES ('38', 'Budidaya Ikan Lele dan Obat Lele', 'Muhlis', 'RT 3 RW 10', 'Budidaya lele tersebut dimulai dari pembibitan hingga besar dan mulai panen. Budidaya ini didirikan sejak tahun 2010. Tidak hanya budidaya saja, namun juga mengembangkan obat kesahatan bibit lele.', '-7.099077', '110.355335', '2018-05-01 16:59:56', '2018-05-01 16:59:56');
INSERT INTO `potensi` VALUES ('39', 'Aquaponik dan Composting', 'Hariyadi', 'RT 3 RW 10', 'Aquaponik memanfaatkan kotoran lele untuk pupuk tanamannya. Sedangkan kompostingnya menggunakan bahan dasar daun kering, kotoran hewan dan em4. Dan komposting tersebut dimanfaatkan oleh warga sekitar untuk pupuk tanaman.', '-7.088917', '110.361879', '2018-05-01 17:02:04', '2018-05-01 17:02:04');
INSERT INTO `potensi` VALUES ('40', 'Kelompok Wanita Tani Puji Lestari', 'Puji Rahayu', 'RW IX', 'Kelompok Wanita Tani (KWT) di bentuk bulan Februari 2018. Kegiatannya yaitu mengoptimalisasi atau memanfaatkan pekarangan yang ada. Pemanfaatan pekaranngannya untuk ditanami tanaman terong, cabai, okra, tomat, kacang panjang. Dan hasil produksinya dimanfaatkan oleh warga sekitar (konsumsi) dan dijual.', '-7.090704', '110.358745', '2018-05-01 17:06:02', '2018-05-01 17:06:02');
INSERT INTO `potensi` VALUES ('41', 'Bank Sampah Jagalsari', 'Siti R Muhimmatul', 'RW I', 'Program kegiatan-kegiatan di bank sampah meliputi pilah sampah, penimbangan, pemanfaatan sampah untuk kerajinan (tas, sourvenir). Sampah yang tidak layak dijadikan kerajinan dijual ke pengepul. Kemudian hasil dari kegiatan tersebut untuk simpan pinjam untuk simpan pinjam untuk warga RW I. Bank sampah berdiri tahun 2009.', '-7.081698', '110.362134', '2018-05-01 17:07:27', '2018-05-01 17:07:27');
INSERT INTO `potensi` VALUES ('42', 'Posyandu, PAUD, BKB Melati', 'Sri P, Rina L, Mudrikah', 'RW I', 'Kegiatan posyandu meliputi penimbangan balita, imunisasi, penyuluhan.Pos PAUD memberikan layanan pendidikan anak usia 2-4 tahun. Dan program BKB, memberikan kegiatan penyuluhan parenting kepada wali murid yang mengikuti posyandu.', '-7.086985', '110.362628', '2018-05-01 17:11:34', '2018-05-01 17:11:34');
INSERT INTO `potensi` VALUES ('43', 'Poskampling Pasar Sari', 'Ketua RT 3', 'RT 3 RW 3', 'Poskamling pasar sari berada di belakang pasar jowo atau pasar gunungpati dekat pintu masuk kampung malon. Poskamling ini memiliki perlengkapan keamanan yang lengkap diantaranya kentong besar, baju satpam, baju linmas, rambu-rambu, peta lingkungan, alat komunikasi HT, dll.', '-7.090487', '110.366218', '2018-05-01 17:19:01', '2018-05-01 17:19:01');

-- ----------------------------
-- Table structure for rute
-- ----------------------------
DROP TABLE IF EXISTS `rute`;
CREATE TABLE `rute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rute_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rute
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
