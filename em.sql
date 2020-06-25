/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : em

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2020-06-15 13:46:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrators_information`
-- ----------------------------
DROP TABLE IF EXISTS `administrators_information`;
CREATE TABLE `administrators_information` (
  `user` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of administrators_information
-- ----------------------------
INSERT INTO `administrators_information` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `phone_number` varchar(20) NOT NULL,
  `menu_name` varchar(20) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('13191761858', '入口即化的芝士烤奶块，奶酪棒的美味', '好吃', '1');
INSERT INTO `comments` VALUES ('13191761858', '自制奥尔良鸡翅，零失败，做法超简单', '不错', '2');
INSERT INTO `comments` VALUES ('13191761858', '土豆肥牛拌饭', '哈哈', '3');
INSERT INTO `comments` VALUES ('110', '入口即化的芝士烤奶块，奶酪棒的美味', '好吃', '4');
INSERT INTO `comments` VALUES ('110', '烤箱版羊肉串', '挺好', '5');
INSERT INTO `comments` VALUES ('119', '提拉米苏', '好吃', '6');
INSERT INTO `comments` VALUES ('120', '提拉米苏', 'good', '8');
INSERT INTO `comments` VALUES ('119', '酥脆蛋黄小饼干', '好吃', '9');
INSERT INTO `comments` VALUES ('13191761858', '酥脆蛋黄小饼干', 'Good', '10');

-- ----------------------------
-- Table structure for `likes`
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `phone_number` varchar(20) NOT NULL,
  `menu_name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('13191761858', '入口即化的芝士烤奶块，奶酪棒的美味', '1');
INSERT INTO `likes` VALUES ('13191761858', '自制奥尔良鸡翅，零失败，做法超简单', '2');
INSERT INTO `likes` VALUES ('13191761858', '土豆肥牛拌饭', '3');
INSERT INTO `likes` VALUES ('110', '入口即化的芝士烤奶块，奶酪棒的美味', '4');
INSERT INTO `likes` VALUES ('110', '烤箱版羊肉串', '5');
INSERT INTO `likes` VALUES ('110', '土豆肥牛拌饭', '6');
INSERT INTO `likes` VALUES ('110', '酥脆蛋黄小饼干', '7');
INSERT INTO `likes` VALUES ('119', '提拉米苏', '8');
INSERT INTO `likes` VALUES ('119', '提拉米苏', '9');
INSERT INTO `likes` VALUES ('119', '自制奥尔良鸡翅，零失败，做法超简单', '10');
INSERT INTO `likes` VALUES ('120', '提拉米苏', '11');
INSERT INTO `likes` VALUES ('120', '提拉米苏', '12');
INSERT INTO `likes` VALUES ('120', '提拉米苏', '13');
INSERT INTO `likes` VALUES ('120', '自制奥尔良鸡翅，零失败，做法超简单', '14');
INSERT INTO `likes` VALUES ('120', '酥脆蛋黄小饼干', '15');
INSERT INTO `likes` VALUES ('120', '酥脆蛋黄小饼干', '16');
INSERT INTO `likes` VALUES ('120', '提拉米苏', '17');
INSERT INTO `likes` VALUES ('119', '烤箱版羊肉串', '18');
INSERT INTO `likes` VALUES ('119', '烤箱版羊肉串', '19');
INSERT INTO `likes` VALUES ('119', '烤箱版羊肉串', '20');
INSERT INTO `likes` VALUES ('119', '烤箱版羊肉串', '21');
INSERT INTO `likes` VALUES ('119', '烤箱版羊肉串', '22');
INSERT INTO `likes` VALUES ('13191761858', '入口即化的芝士烤奶块，奶酪棒的美味', '23');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `steps` varchar(1000) DEFAULT NULL,
  `likes` int(20) unsigned zerofill DEFAULT '00000000000000000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '入口即化的芝士烤奶块，奶酪棒的美味', '川', '芝士烤奶', '牛奶、芝士、蛋黄', '往奶锅奶加入两个蛋黄、糖粉和玉米淀粉。倒入500毫升纯牛奶。搅拌均匀。加入芝士片。小火加热至浓稠顺滑，过程中要不停的搅拌。倒入铺有保鲜膜的盒内，入冰箱冷藏3小时。完全凝固后取出，切成大小均匀的块状。鸡蛋液加几滴柠檬汁拌匀给奶块刷上鸡蛋液。入预热好的烤箱中，表面上色即可。', '00000000000000000003');
INSERT INTO `menu` VALUES ('2', '自制奥尔良鸡翅，零失败，做法超简单', '鲁', '鸡翅', '鸡翅中、奥尔良腌料、胡椒粉', '鸡翅洗干净放锅里，所有料放锅里，用手捏，多按摩一会儿，腌制半小时，中间记得翻身锅里热油，我煮半小时，时间无所谓，快要开饭时候打开锅盖大火烧，收汁即可是不是很想吃，那就快试试吧最后装盘撒上芝麻点缀', '00000000000000000003');
INSERT INTO `menu` VALUES ('3', '烤箱版羊肉串', '川', '羊肉串', '羊肉、腌料', '新鲜的羊后腿肉切丁状，下适量食盐、胡椒粉、姜蒜、生抽，拌匀腌制20分钟。用牙签穿好成羊肉串的样子平底锅中放油，小尖椒，中火加热翻炒炒至羊肉有焦酥状成盘，撒烧烤料，辣椒粉，趁热吃。', '00000000000000000006');
INSERT INTO `menu` VALUES ('4', '土豆肥牛拌饭', '豫', '土豆肥牛拌饭', '肥牛卷、土豆、洋葱等', '将洋葱、土豆去皮切丁备用，肥牛卷焯水去除血沫，捞起备用，热锅烧油，加入洋葱丁和土豆丁炒香超软，倒入一碗清水没过洋葱和土豆，大伙烧开后转中小火焖煮10分钟，煮到土豆变软，翻炒均匀后，大火收汁，将煮好的米饭装完，淋上黑胶土豆肥牛，拌匀即可开吃', '00000000000000000002');
INSERT INTO `menu` VALUES ('5', '酥脆蛋黄小饼干', '鲁', '酥脆蛋黄小饼干', '蛋黄、低筋面粉', '蛋黄和全蛋放入无油无水的盆中，加入白砂糖，打发。烤箱预热170度。打发到颜色发白，体积变大。把低筋面粉过筛倒入，翻拌均匀，注意没有干粉就停止，用J字翻拌。避免消泡。把面糊倒入裱花袋中，面糊应该是很稠的。饼干轻微上色，就是烤好了，这个饼干很容易烤糊，要全程看着。出锅，开吃。酥脆，蛋黄香味，甜甜的。', '00000000000000000003');
INSERT INTO `menu` VALUES ('6', '提拉米苏', '豫', '提拉米苏', '马斯卡彭奶酪、动物淡奶油、意大利浓缩咖啡', '浓缩咖啡和朗姆酒混合成咖啡酒备用。蛋黄用打蛋器打发到浓稠的状态备用。水、细砂糖一起倒入锅里。缓缓倒入蛋黄液中，同时用打蛋器不断搅打。全部倒完以后，继续用打蛋器搅打。马斯卡彭奶酪用打蛋器打至顺滑。加入蛋黄糊，混合均匀。将吉利丁溶液倒入混合后的奶酪糊中，拌匀。动物淡奶油用打蛋器打至湿性（即刚刚出现纹路即可）。取出凝固好的蛋糕，脱模，表面撒上可可粉，并在外围围上手指饼干。', '00000000000000000006');

-- ----------------------------
-- Table structure for `person_information`
-- ----------------------------
DROP TABLE IF EXISTS `person_information`;
CREATE TABLE `person_information` (
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `img` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `hobby_chuan` int(11) NOT NULL,
  `hobby_lu` int(11) NOT NULL,
  `hobby_yu` int(11) NOT NULL,
  PRIMARY KEY (`phone_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person_information
-- ----------------------------
INSERT INTO `person_information` VALUES ('13191761858', '13191761858', '乌兹', 'keji', '男', '1', '1', '1');
INSERT INTO `person_information` VALUES ('110', '110', '警察', 'tuzi', '男', '1', '1', '0');
INSERT INTO `person_information` VALUES ('119', '119', '火警', 'tuzi', '男', '1', '1', '1');
INSERT INTO `person_information` VALUES ('120', '120', '医生', 'img.png', '女', '0', '1', '1');
INSERT INTO `person_information` VALUES ('15176659989', '15176659989', 'Rookie', 'keji', '男', '1', '1', '1');
INSERT INTO `person_information` VALUES ('9527', '9527', '星星', 'img.png', '男', '1', '1', '1');
