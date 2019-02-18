/*
Navicat MySQL Data Transfer

Source Server         : cmits
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : financial

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-01-13 22:55:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add message', '7', 'add_message');
INSERT INTO `auth_permission` VALUES ('26', 'Can change message', '7', 'change_message');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete message', '7', 'delete_message');
INSERT INTO `auth_permission` VALUES ('28', 'Can view message', '7', 'view_message');
INSERT INTO `auth_permission` VALUES ('29', 'Can add notice', '8', 'add_notice');
INSERT INTO `auth_permission` VALUES ('30', 'Can change notice', '8', 'change_notice');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete notice', '8', 'delete_notice');
INSERT INTO `auth_permission` VALUES ('32', 'Can view notice', '8', 'view_notice');
INSERT INTO `auth_permission` VALUES ('33', 'Can add product', '9', 'add_product');
INSERT INTO `auth_permission` VALUES ('34', 'Can change product', '9', 'change_product');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete product', '9', 'delete_product');
INSERT INTO `auth_permission` VALUES ('36', 'Can view product', '9', 'view_product');
INSERT INTO `auth_permission` VALUES ('37', 'Can add selfproduct', '10', 'add_selfproduct');
INSERT INTO `auth_permission` VALUES ('38', 'Can change selfproduct', '10', 'change_selfproduct');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete selfproduct', '10', 'delete_selfproduct');
INSERT INTO `auth_permission` VALUES ('40', 'Can view selfproduct', '10', 'view_selfproduct');
INSERT INTO `auth_permission` VALUES ('41', 'Can add rate', '11', 'add_rate');
INSERT INTO `auth_permission` VALUES ('42', 'Can change rate', '11', 'change_rate');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete rate', '11', 'delete_rate');
INSERT INTO `auth_permission` VALUES ('44', 'Can view rate', '11', 'view_rate');
INSERT INTO `auth_permission` VALUES ('45', 'Can add captcha store', '12', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('46', 'Can change captcha store', '12', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete captcha store', '12', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('48', 'Can view captcha store', '12', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 资讯', '13', 'add_info');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 资讯', '13', 'change_info');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 资讯', '13', 'delete_info');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 资讯', '13', 'view_info');
INSERT INTO `auth_permission` VALUES ('53', 'Can add pl', '14', 'add_pl');
INSERT INTO `auth_permission` VALUES ('54', 'Can change pl', '14', 'change_pl');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete pl', '14', 'delete_pl');
INSERT INTO `auth_permission` VALUES ('56', 'Can view pl', '14', 'view_pl');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 视频', '15', 'add_video');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 视频', '15', 'change_video');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 视频', '15', 'delete_video');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 视频', '15', 'view_video');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 客服记录', '16', 'add_con');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 客服记录', '16', 'change_con');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 客服记录', '16', 'delete_con');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 客服记录', '16', 'view_con');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 卡包', '17', 'add_kcard');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 卡包', '17', 'change_kcard');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 卡包', '17', 'delete_kcard');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 卡包', '17', 'view_kcard');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 用户信息', '18', 'add_myinfo');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 用户信息', '18', 'change_myinfo');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 用户信息', '18', 'delete_myinfo');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 用户信息', '18', 'view_myinfo');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 银行卡', '19', 'add_ycard');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 银行卡', '19', 'change_ycard');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 银行卡', '19', 'delete_ycard');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 银行卡', '19', 'view_ycard');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$120000$h4fB7So8M8uV$twKdxVUpQaLPM75LyPZQGTnCMz4BblzpXxLnU4kbTgU=', '2019-01-13 14:44:16.889134', '1', 'nihe', '', '', '3154250143@qq.com', '1', '1', '2019-01-07 08:22:13.971800');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$120000$Uk8REqK52mKn$x/T+0HyMNzDk4oJKtOTavf1dRbOH5z/9wBXxqW83jwU=', '2019-01-13 12:37:30.218279', '0', 'admin', '', '', '', '1', '1', '2019-01-07 09:14:00.000000');
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$120000$heFExy1AvcdD$jeVnujkDL9zE4LdmTNtAMViEukYoRfRqV4oblr76vsk=', null, '0', 'admin1', '', '', '', '1', '1', '2019-01-07 09:16:00.000000');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$120000$WRfemFTrMcVX$byxIzDTUHuDWPNLDzaPicdMTmQ4+MRchRapwAt8JNa8=', '2019-01-10 08:44:20.031980', '0', 'admin2', '', '', '', '0', '1', '2019-01-10 08:43:57.835574');
INSERT INTO `auth_user` VALUES ('5', 'pbkdf2_sha256$120000$epX3plyNcVtX$1EE1mELMOeDBLbtOu1SFGLFzGAT7ExBXGmmkbEu67JU=', null, '0', 'admin3', '', '', '', '0', '1', '2019-01-10 09:04:32.035406');
INSERT INTO `auth_user` VALUES ('6', 'pbkdf2_sha256$120000$sj07nZmL85eR$OdTfB+J4CVLjIji1MZdk+VOz6a7HzGQKyimz0jaWgXc=', null, '0', 'admin4', '', '', '', '0', '1', '2019-01-11 09:12:34.101050');
INSERT INTO `auth_user` VALUES ('7', 'pbkdf2_sha256$120000$xDi9RIuGp3RS$lEn1AGZUAp0FLdBuH6n77/W+ie+1z29WPdyno/vw+rQ=', null, '0', 'admin5', '', '', '', '0', '1', '2019-01-11 09:13:21.229753');
INSERT INTO `auth_user` VALUES ('8', 'pbkdf2_sha256$120000$JF01ShaQbXmU$9DxjJjVdIGTSv9DlCoE1xO+UcVxSpLWHbsFqCgTxixU=', null, '0', 'admin6', '', '', '', '0', '1', '2019-01-11 09:17:47.762638');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('227', 'OBVL', 'obvl', 'ed6d7d957ce65d70de2ecda2831436816c850b0f', '2019-01-11 09:18:01.575417');
INSERT INTO `captcha_captchastore` VALUES ('229', 'DARC', 'darc', '3ba8efde82b5cf57a92c2167737a86f1992fefed', '2019-01-11 09:18:23.086070');
INSERT INTO `captcha_captchastore` VALUES ('230', 'JVQV', 'jvqv', '382c945d59e01eac972ade08c2d78e8bb61b6d4a', '2019-01-11 09:19:43.196369');
INSERT INTO `captcha_captchastore` VALUES ('231', 'LSXC', 'lsxc', 'c2c47ecda40280fadeb22d8982336f6e4e4ceae5', '2019-01-11 09:19:48.333140');
INSERT INTO `captcha_captchastore` VALUES ('232', 'UBPF', 'ubpf', '295fa741d87747cad7de15d3b3fcfe384b17da22', '2019-01-11 09:19:53.512808');
INSERT INTO `captcha_captchastore` VALUES ('233', 'XNTR', 'xntr', '332210bbcd43200ae54f6b50ff0c25a25a4c59d6', '2019-01-11 09:19:58.076927');
INSERT INTO `captcha_captchastore` VALUES ('234', 'VJBA', 'vjba', '97d6e8e1c0597c144f6fd1d21d4ac925044b3c14', '2019-01-11 09:22:11.731744');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-01-07 09:01:27.975308', '1', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-01-07 09:05:25.600265', '2', '大成创新基金', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-01-07 09:06:25.120363', '3', '金明泰安基金', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-01-07 09:14:59.401719', '2', 'admin', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-01-07 09:16:11.487873', '3', 'admin1', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-01-07 09:18:47.230278', '2', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-01-07 09:19:29.162504', '3', '大成创新基金', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-01-07 09:19:46.477115', '4', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-01-07 09:20:04.697593', '5', '金明泰安基金', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-01-08 00:59:20.746355', '1', '充值提现', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-01-08 01:01:13.390465', '2', '产品消息', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-01-08 01:01:42.749643', '3', '其他', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-01-08 01:02:36.616345', '4', '产品消息', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-01-08 01:31:23.976260', '2', 'admin', '2', '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-01-08 01:31:36.360981', '3', 'admin1', '2', '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-01-08 01:50:17.723824', '1', '通知', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-01-08 01:50:34.214246', '2', '通知', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-01-08 10:50:54.018141', '2', 'admin', '2', '[{\"changed\": {\"fields\": [\"password\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2019-01-09 01:57:57.839855', '1', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2019-01-09 01:58:16.554289', '2', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2019-01-09 02:08:08.509248', '3', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2019-01-09 02:09:00.602287', '4', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2019-01-09 02:09:33.113216', '5', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2019-01-09 02:09:43.172674', '6', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2019-01-09 02:09:52.715950', '7', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2019-01-09 02:10:34.565291', '8', '大成创新基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2019-01-09 02:24:02.101521', '9', '大成创新基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2019-01-09 02:26:36.125193', '10', '光大永鑫混合基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2019-01-09 02:26:58.569084', '11', '大成创新基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2019-01-09 02:27:15.463326', '12', '大成创新基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2019-01-09 02:27:30.099947', '13', '大成创新基金', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2019-01-11 09:46:29.050462', '1', '七月末外汇储备31977万美元', '1', '[{\"added\": {}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2019-01-13 07:59:08.579820', '1', '基金从业基金法律法规职业道德', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2019-01-13 08:42:04.124083', '1', '基金从业基金法律法规职业道德', '2', '[{\"changed\": {\"fields\": [\"vid\"]}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2019-01-13 08:42:34.051223', '1', '基金从业基金法律法规职业道德', '2', '[{\"changed\": {\"fields\": [\"vid\"]}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2019-01-13 08:44:40.363288', '1', '基金从业基金法律法规职业道德', '2', '[{\"changed\": {\"fields\": [\"vid\"]}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2019-01-13 09:06:10.183672', '1', '基金从业基金法律法规职业道德', '2', '[{\"changed\": {\"fields\": [\"vid\"]}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2019-01-13 09:37:56.745997', '2', '基金从业基金法律法规职业道德', '1', '[{\"added\": {}}]', '15', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('12', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('16', 'financing', 'con');
INSERT INTO `django_content_type` VALUES ('13', 'financing', 'info');
INSERT INTO `django_content_type` VALUES ('17', 'financing', 'kcard');
INSERT INTO `django_content_type` VALUES ('7', 'financing', 'message');
INSERT INTO `django_content_type` VALUES ('18', 'financing', 'myinfo');
INSERT INTO `django_content_type` VALUES ('8', 'financing', 'notice');
INSERT INTO `django_content_type` VALUES ('14', 'financing', 'pl');
INSERT INTO `django_content_type` VALUES ('9', 'financing', 'product');
INSERT INTO `django_content_type` VALUES ('11', 'financing', 'rate');
INSERT INTO `django_content_type` VALUES ('10', 'financing', 'selfproduct');
INSERT INTO `django_content_type` VALUES ('15', 'financing', 'video');
INSERT INTO `django_content_type` VALUES ('19', 'financing', 'ycard');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-01-07 08:21:25.300111');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-01-07 08:21:26.161937');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-01-07 08:21:26.305075');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-01-07 08:21:26.317085');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-01-07 08:21:26.332100');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-01-07 08:21:26.417181');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-01-07 08:21:26.457220');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-01-07 08:21:26.505265');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-01-07 08:21:26.519279');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-01-07 08:21:26.563324');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-01-07 08:21:26.569327');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-01-07 08:21:26.581338');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-01-07 08:21:26.623378');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-01-07 08:21:26.663416');
INSERT INTO `django_migrations` VALUES ('15', 'financing', '0001_initial', '2019-01-07 08:21:27.077815');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2019-01-07 08:21:27.135870');
INSERT INTO `django_migrations` VALUES ('17', 'financing', '0002_auto_20190107_1643', '2019-01-07 08:43:26.965284');
INSERT INTO `django_migrations` VALUES ('18', 'financing', '0003_auto_20190108_1847', '2019-01-08 10:47:35.599034');
INSERT INTO `django_migrations` VALUES ('19', 'financing', '0004_auto_20190108_1854', '2019-01-08 10:54:48.549629');
INSERT INTO `django_migrations` VALUES ('20', 'financing', '0005_rate', '2019-01-09 01:51:04.860261');
INSERT INTO `django_migrations` VALUES ('21', 'financing', '0006_auto_20190109_1207', '2019-01-09 04:07:47.490015');
INSERT INTO `django_migrations` VALUES ('22', 'captcha', '0001_initial', '2019-01-10 10:27:58.493748');
INSERT INTO `django_migrations` VALUES ('23', 'financing', '0002_auto_20190111_1740', '2019-01-11 09:40:34.107476');
INSERT INTO `django_migrations` VALUES ('24', 'financing', '0003_auto_20190113_1802', '2019-01-13 10:02:38.005761');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('61gm7ds1f32wdibvwc8m1v6kw2xolifh', 'MTFmOGE2OGQxOTJiNDQ5YWZjZTg2NjhjZGJjNDgzNjZmMzI0YjExYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NDA2NTFkMDFhOTE4MmVhYmFhNTJkNWU2MGUyOGI4YWZjMWNlNmY2In0=', '2019-01-23 02:23:25.796385');
INSERT INTO `django_session` VALUES ('l0p86lk3dwci3oroi6mn112npegl6hr0', 'MTFmOGE2OGQxOTJiNDQ5YWZjZTg2NjhjZGJjNDgzNjZmMzI0YjExYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NDA2NTFkMDFhOTE4MmVhYmFhNTJkNWU2MGUyOGI4YWZjMWNlNmY2In0=', '2019-01-27 14:44:16.893137');
INSERT INTO `django_session` VALUES ('mw8ovygw76gtk7x71isk9xnhhnf0vk3l', 'YWM4N2Q5MWFhYTAxYTE4OWZmODFkM2JmZWFiODY4ZDZkY2JmMDBlODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMjQ5YTcwZGI2ZGNjYmUzN2E2MGU1NjVhNmI1NjM5YzU3OGJkNWViIn0=', '2019-01-22 02:40:55.388735');
INSERT INTO `django_session` VALUES ('zrbq0rl6ocnt8lrugm95ukz1bza0x2if', 'MTFmOGE2OGQxOTJiNDQ5YWZjZTg2NjhjZGJjNDgzNjZmMzI0YjExYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NDA2NTFkMDFhOTE4MmVhYmFhNTJkNWU2MGUyOGI4YWZjMWNlNmY2In0=', '2019-01-21 08:31:41.866345');

-- ----------------------------
-- Table structure for financing_con
-- ----------------------------
DROP TABLE IF EXISTS `financing_con`;
CREATE TABLE `financing_con` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `gt_con` varchar(200) NOT NULL,
  `talker` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_con_u_id_3667b96a_fk_auth_user_id` (`u_id`),
  CONSTRAINT `financing_con_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_con
-- ----------------------------
INSERT INTO `financing_con` VALUES ('1', '2019-01-09 10:13:02.874965', '2019-01-09 10:13:02.874965', '我是168号客服人员，很高兴为您服务！', '1', '2');
INSERT INTO `financing_con` VALUES ('2', '2019-01-09 10:13:32.280847', '2019-01-09 10:13:32.280847', '我购买的基金在资产里找不到！', '0', '2');
INSERT INTO `financing_con` VALUES ('3', '2019-01-09 10:14:09.229947', '2019-01-09 10:14:09.229947', '请您提供相关截图和信息。', '1', '2');
INSERT INTO `financing_con` VALUES ('4', '2019-01-09 10:14:49.544726', '2019-01-09 10:14:49.544726', '我们将第一时间为您处理，请耐心等待。', '1', '2');
INSERT INTO `financing_con` VALUES ('5', '2019-01-09 10:15:27.444311', '2019-01-09 10:15:27.444311', '❀❀', '0', '2');
INSERT INTO `financing_con` VALUES ('7', '2019-01-11 09:17:51.032622', '2019-01-11 09:17:51.032622', 'jigyvu', '0', '2');
INSERT INTO `financing_con` VALUES ('18', '2019-01-11 09:37:47.404249', '2019-01-11 09:37:47.404249', '啊擦擦', '0', '2');
INSERT INTO `financing_con` VALUES ('19', '2019-01-11 09:37:55.388441', '2019-01-11 09:37:55.388441', '啊擦擦', '0', '2');
INSERT INTO `financing_con` VALUES ('20', '2019-01-11 09:38:03.900664', '2019-01-11 09:38:03.900664', '恰是西安深层次', '0', '2');

-- ----------------------------
-- Table structure for financing_info
-- ----------------------------
DROP TABLE IF EXISTS `financing_info`;
CREATE TABLE `financing_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `del_id` tinyint(1) NOT NULL,
  `title` varchar(30) NOT NULL,
  `con` longtext NOT NULL,
  `img` varchar(100) NOT NULL,
  `author` varchar(10) NOT NULL,
  `s_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_info
-- ----------------------------
INSERT INTO `financing_info` VALUES ('1', '2019-01-11 09:46:29.043455', '2019-01-11 09:46:29.043455', '0', '七月末外汇储备31977万美元', '七月末外汇储备31977万美元', 'financing/static/img/zx1.png', 'admin', '1');

-- ----------------------------
-- Table structure for financing_kcard
-- ----------------------------
DROP TABLE IF EXISTS `financing_kcard`;
CREATE TABLE `financing_kcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outdate` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `money` varchar(10) NOT NULL,
  `tz_date` varchar(4) NOT NULL,
  `tz_money` varchar(10) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `use_person` int(11) NOT NULL,
  `yxq_date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_kcard_u_id_880911ab_fk_auth_user_id` (`u_id`),
  CONSTRAINT `financing_kcard_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_kcard
-- ----------------------------
INSERT INTO `financing_kcard` VALUES ('1', '1', '2', '0', '2017-10-01 01:05:00.000000', '998', '30', '10000', '2019-01-11 01:05:02.668464', '0', '1');
INSERT INTO `financing_kcard` VALUES ('2', '1', '2', '0', '2019-01-11 01:05:00.598785', '998', '30', '10000', '2019-01-11 01:05:02.668464', '0', '2');
INSERT INTO `financing_kcard` VALUES ('3', '1', '2', '1', '2019-01-11 01:05:00.598785', '1.8', '30', '10000', '2019-01-11 01:05:02.668464', '0', '3');
INSERT INTO `financing_kcard` VALUES ('4', '0', '2', '0', '2019-01-11 01:05:00.598785', '998', '30', '10000', '2019-01-11 01:05:02.668464', '0', '4');
INSERT INTO `financing_kcard` VALUES ('5', '0', '2', '0', '2019-01-11 01:05:00.598785', '998', '30', '10000', '2019-01-11 01:05:02.668464', '0', '5');

-- ----------------------------
-- Table structure for financing_message
-- ----------------------------
DROP TABLE IF EXISTS `financing_message`;
CREATE TABLE `financing_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `del_id` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `con` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `financing_message_u_id_cd42415a_fk_auth_user_id` (`u_id`),
  CONSTRAINT `financing_message_u_id_cd42415a_fk_auth_user_id` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_message
-- ----------------------------
INSERT INTO `financing_message` VALUES ('1', '2019-01-08 00:59:20.745351', '2019-01-08 00:59:20.745351', '0', '充值提现', '您于9月8日15时30分申请提现10000.00元已处理成功，请查收 您绑定的银行卡明细。实际到账时间以银行通知为准。', '0', '2');
INSERT INTO `financing_message` VALUES ('2', '2019-01-08 01:01:13.388464', '2019-01-08 01:01:13.388464', '0', '产品消息', '您投资的项目（光大永鑫混合基金）今日收益已经到账，本金金 额10000.00元，盈利32.16元。', '1', '2');
INSERT INTO `financing_message` VALUES ('3', '2019-01-08 01:01:42.748643', '2019-01-08 01:01:42.748643', '0', '其他', '恭喜您获得了新人注册奖励，优惠券+加息券以存入卡包。', '2', '2');
INSERT INTO `financing_message` VALUES ('4', '2019-01-08 01:02:36.615352', '2019-01-08 01:02:36.615352', '0', '产品消息', '您投资的项目（光大永鑫混合基金）今日收益已经到账，本金金 额10000.00元，盈利32.16元。', '1', '3');

-- ----------------------------
-- Table structure for financing_myinfo
-- ----------------------------
DROP TABLE IF EXISTS `financing_myinfo`;
CREATE TABLE `financing_myinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `z_money` varchar(20) NOT NULL,
  `d_money` varchar(20) NOT NULL,
  `lj_money` varchar(20) NOT NULL,
  `ky_money` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `financing_myinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_myinfo
-- ----------------------------
INSERT INTO `financing_myinfo` VALUES ('2', '12345678900', '', '234', '34', '234', '', '3');
INSERT INTO `financing_myinfo` VALUES ('3', '18435465241', '', '2042580.83', '2587.00', '7984.00', '2458647.83', '2');

-- ----------------------------
-- Table structure for financing_notice
-- ----------------------------
DROP TABLE IF EXISTS `financing_notice`;
CREATE TABLE `financing_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `del_id` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `con` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_notice
-- ----------------------------
INSERT INTO `financing_notice` VALUES ('1', '2019-01-08 01:50:17.723824', '2019-01-08 01:50:17.723824', '0', '通知', '关于9月10日-9月12日已回款项目的公告。');
INSERT INTO `financing_notice` VALUES ('2', '2019-01-08 01:50:34.214246', '2019-01-08 01:50:34.214246', '0', '通知', '理财派全新版本已经上线');

-- ----------------------------
-- Table structure for financing_pl
-- ----------------------------
DROP TABLE IF EXISTS `financing_pl`;
CREATE TABLE `financing_pl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `del_id` tinyint(1) NOT NULL,
  `con` varchar(150) NOT NULL,
  `u_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `financing_pl_u_id_2175db1e_fk_auth_user_id` (`u_id`),
  KEY `financing_pl_v_id_520b1a42_fk_financing_video_id` (`v_id`),
  CONSTRAINT `financing_pl_u_id_2175db1e_fk_auth_user_id` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `financing_pl_v_id_520b1a42_fk_financing_video_id` FOREIGN KEY (`v_id`) REFERENCES `financing_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_pl
-- ----------------------------
INSERT INTO `financing_pl` VALUES ('1', '2019-01-13 09:30:38.057009', '2019-01-13 09:30:38.058012', '0', '好，开心，哈哈哈', '2', '1');

-- ----------------------------
-- Table structure for financing_product
-- ----------------------------
DROP TABLE IF EXISTS `financing_product`;
CREATE TABLE `financing_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `del_id` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `risk` int(11) NOT NULL,
  `startmoney` varchar(10) NOT NULL,
  `investment_date` varchar(10) NOT NULL,
  `annual_income` varchar(10) NOT NULL,
  `num` int(11) NOT NULL,
  `latest_val` varchar(10) NOT NULL,
  `drop_range` varchar(10) NOT NULL,
  `money` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_product
-- ----------------------------
INSERT INTO `financing_product` VALUES ('1', '2019-01-07 09:01:27.974308', '2019-01-07 09:01:27.974308', '0', '光大永鑫混合基金', '0', '10', '30', '13', '26389', '14560', '0.38', '680');
INSERT INTO `financing_product` VALUES ('2', '2019-01-07 09:05:25.599264', '2019-01-07 09:05:25.599264', '0', '大成创新基金', '0', '30', '90', '11.8', '37598', '15680', '0.42', '780');
INSERT INTO `financing_product` VALUES ('3', '2019-01-07 09:06:25.119364', '2019-01-07 09:06:25.119364', '0', '金明泰安基金', '2', '10', '30', '12.6', '12578', '14670', '0.34', '880');

-- ----------------------------
-- Table structure for financing_rate
-- ----------------------------
DROP TABLE IF EXISTS `financing_rate`;
CREATE TABLE `financing_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `rate` varchar(5) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `financing_rate_p_id_61ef4185_fk_financing_product_id` (`p_id`),
  CONSTRAINT `financing_rate_p_id_61ef4185_fk_financing_product_id` FOREIGN KEY (`p_id`) REFERENCES `financing_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_rate
-- ----------------------------
INSERT INTO `financing_rate` VALUES ('1', '0', '32', '1');
INSERT INTO `financing_rate` VALUES ('2', '1', '46', '1');
INSERT INTO `financing_rate` VALUES ('3', '2', '30', '1');
INSERT INTO `financing_rate` VALUES ('4', '3', '35', '1');
INSERT INTO `financing_rate` VALUES ('5', '4', '42', '1');
INSERT INTO `financing_rate` VALUES ('6', '5', '48', '1');
INSERT INTO `financing_rate` VALUES ('7', '6', '45', '1');
INSERT INTO `financing_rate` VALUES ('8', '0', '30', '2');
INSERT INTO `financing_rate` VALUES ('9', '1', '32', '2');
INSERT INTO `financing_rate` VALUES ('10', '2', '46', '2');
INSERT INTO `financing_rate` VALUES ('11', '3', '35', '2');
INSERT INTO `financing_rate` VALUES ('12', '4', '42', '2');
INSERT INTO `financing_rate` VALUES ('13', '5', '44', '2');
INSERT INTO `financing_rate` VALUES ('14', '6', '46', '2');
INSERT INTO `financing_rate` VALUES ('15', '0', '34.3', '3');
INSERT INTO `financing_rate` VALUES ('16', '1', '36.4', '3');
INSERT INTO `financing_rate` VALUES ('17', '2', '40.7', '3');
INSERT INTO `financing_rate` VALUES ('18', '3', '43.5', '3');
INSERT INTO `financing_rate` VALUES ('19', '4', '45.4', '3');
INSERT INTO `financing_rate` VALUES ('20', '5', '47.8', '3');
INSERT INTO `financing_rate` VALUES ('21', '6', '44.5', '3');

-- ----------------------------
-- Table structure for financing_selfproduct
-- ----------------------------
DROP TABLE IF EXISTS `financing_selfproduct`;
CREATE TABLE `financing_selfproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `del_id` tinyint(1) NOT NULL,
  `y_earning` varchar(50) NOT NULL,
  `h_earning` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `dateLimit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `financing_selfproduct_p_id_43f16310_fk_financing_product_id` (`p_id`),
  KEY `financing_selfproduct_u_id_4ce36e70_fk_auth_user_id` (`u_id`),
  CONSTRAINT `financing_selfproduct_p_id_43f16310_fk_financing_product_id` FOREIGN KEY (`p_id`) REFERENCES `financing_product` (`id`),
  CONSTRAINT `financing_selfproduct_u_id_4ce36e70_fk_auth_user_id` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_selfproduct
-- ----------------------------
INSERT INTO `financing_selfproduct` VALUES ('2', '2019-01-07 09:18:47.229279', '2019-01-07 09:18:47.229279', '0', '26', '248', '1', '2', '24');
INSERT INTO `financing_selfproduct` VALUES ('3', '2019-01-07 09:19:29.161503', '2019-01-07 09:19:29.162504', '0', '18', '178', '2', '2', '84');
INSERT INTO `financing_selfproduct` VALUES ('4', '2019-01-07 09:19:46.475112', '2019-01-07 09:19:46.475112', '0', '20', '216', '1', '3', '0');
INSERT INTO `financing_selfproduct` VALUES ('5', '2019-01-07 09:20:04.696592', '2019-01-07 09:20:04.696592', '0', '22', '238', '3', '3', '0');

-- ----------------------------
-- Table structure for financing_video
-- ----------------------------
DROP TABLE IF EXISTS `financing_video`;
CREATE TABLE `financing_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `del_id` tinyint(1) NOT NULL,
  `title` varchar(30) NOT NULL,
  `author` varchar(10) NOT NULL,
  `vid` varchar(100) NOT NULL,
  `s_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_video
-- ----------------------------
INSERT INTO `financing_video` VALUES ('1', '2019-01-13 07:59:08.578821', '2019-01-13 09:06:10.177663', '0', '基金从业基金法律法规职业道德', 'admin', 'financing/static/video/plane.mp4', '1');
INSERT INTO `financing_video` VALUES ('2', '2019-01-13 09:37:56.741014', '2019-01-13 09:37:56.741014', '0', '基金从业基金法律法规职业道德', 'admin1', 'financing/static/video/plane_ET1ShLI.mp4', '1');

-- ----------------------------
-- Table structure for financing_ycard
-- ----------------------------
DROP TABLE IF EXISTS `financing_ycard`;
CREATE TABLE `financing_ycard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(10) NOT NULL,
  `card_lx` int(11) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_ycard_u_id_0366d7a5_fk_auth_user_id` (`u_id`),
  CONSTRAINT `financing_ycard_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financing_ycard
-- ----------------------------
INSERT INTO `financing_ycard` VALUES ('2', '建设银行', '0', '1111222233335286', '2');
INSERT INTO `financing_ycard` VALUES ('3', '交通银行', '0', '1111222233336686', '2');
