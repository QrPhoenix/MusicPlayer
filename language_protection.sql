/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : language_protection

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-10-30 20:02:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lang_doc
-- ----------------------------
DROP TABLE IF EXISTS `lang_doc`;
CREATE TABLE `lang_doc` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '文档名称',
  `path` varchar(255) DEFAULT '' COMMENT '文件全名',
  `region_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang_doc
-- ----------------------------
INSERT INTO `lang_doc` VALUES ('1', '口头文化', '1/口头文化.doc', '1');
INSERT INTO `lang_doc` VALUES ('10', '词汇', '2/词汇.xls', '2');
INSERT INTO `lang_doc` VALUES ('11', '话语', '2/话语.doc', '2');
INSERT INTO `lang_doc` VALUES ('12', '语法', '2/语法.xls', '2');
INSERT INTO `lang_doc` VALUES ('13', '音系', '2/音系.xls', '2');
INSERT INTO `lang_doc` VALUES ('14', '音系说明', '2/音系说明.doc', '2');
INSERT INTO `lang_doc` VALUES ('15', '概况', '2/概况.xls', '2');
INSERT INTO `lang_doc` VALUES ('16', '转写校对记录表', '2/转写校对记录表.doc', '2');
INSERT INTO `lang_doc` VALUES ('17', '口头文化', '3/口头文化.doc', '3');
INSERT INTO `lang_doc` VALUES ('18', '词汇', '3/词汇.xls', '3');
INSERT INTO `lang_doc` VALUES ('19', '话语', '3/话语.doc', '3');
INSERT INTO `lang_doc` VALUES ('2', '音系说明', '1/音系说明.doc', '1');
INSERT INTO `lang_doc` VALUES ('20', '语法', '3/语法.xls', '3');
INSERT INTO `lang_doc` VALUES ('21', '音系', '3/音系.xls', '3');
INSERT INTO `lang_doc` VALUES ('22', '音系说明', '3/音系说明.doc', '3');
INSERT INTO `lang_doc` VALUES ('23', '概况', '3/概况.xls', '3');
INSERT INTO `lang_doc` VALUES ('24', '转写校对记录表', '3/转写校对记录表.doc', '3');
INSERT INTO `lang_doc` VALUES ('3', '词汇', '1/词汇.xls', '1');
INSERT INTO `lang_doc` VALUES ('4', '话语', '1/话语.doc', '1');
INSERT INTO `lang_doc` VALUES ('5', '语法', '1/语法.xls', '1');
INSERT INTO `lang_doc` VALUES ('6', '音系', '1/音系.xls', '1');
INSERT INTO `lang_doc` VALUES ('7', '概况', '1/概况.xls', '1');
INSERT INTO `lang_doc` VALUES ('8', '转写校对记录表', '1/转写校对记录表.doc', '1');
INSERT INTO `lang_doc` VALUES ('9', '口头文化', '2/口头文化.doc', '2');

-- ----------------------------
-- Table structure for lang_img
-- ----------------------------
DROP TABLE IF EXISTS `lang_img`;
CREATE TABLE `lang_img` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '视频或图片名称',
  `img_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `region_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang_img
-- ----------------------------
INSERT INTO `lang_img` VALUES ('1', '0001调查', '1/0001调查.JPG', '1');
INSERT INTO `lang_img` VALUES ('10', '东占奎', '2/0001东占奎.jpg', '2');
INSERT INTO `lang_img` VALUES ('11', '王金福', '2/0001王金福.jpg', '2');
INSERT INTO `lang_img` VALUES ('12', '天祝', '2/0001天祝.jpg', '2');
INSERT INTO `lang_img` VALUES ('13', '天祝', '2/0002天祝.jpg', '2');
INSERT INTO `lang_img` VALUES ('14', '调查', '2/0001调查.jpg', '2');
INSERT INTO `lang_img` VALUES ('15', '调查', '2/0002调查.jpg', '2');
INSERT INTO `lang_img` VALUES ('16', '调查', '2/0003调查.jpg', '2');
INSERT INTO `lang_img` VALUES ('17', '地普发音人1', '3/0001地普发音人1.jpg', '3');
INSERT INTO `lang_img` VALUES ('18', '地普发音人2', '3/0002地普发音人2.jpg', '3');
INSERT INTO `lang_img` VALUES ('19', '地普发音人3', '3/0003地普发音人3.jpg', '3');
INSERT INTO `lang_img` VALUES ('2', '0001东乡四甲集', '1/0001东乡四甲集.JPG', '1');
INSERT INTO `lang_img` VALUES ('20', '地普发音人4', '3/0004地普发音人4.jpg', '3');
INSERT INTO `lang_img` VALUES ('21', '地普发音人5', '3/0005地普发音人5.jpg', '3');
INSERT INTO `lang_img` VALUES ('22', '地普发音人6', '3/0006地普发音人6.jpg', '3');
INSERT INTO `lang_img` VALUES ('23', '口头文化发音人1', '3/0001口头文化发音人1.jpg', '3');
INSERT INTO `lang_img` VALUES ('24', '口头文化发音人2', '3/0002口头文化发音人2.jpg', '3');
INSERT INTO `lang_img` VALUES ('25', '口头文化发音人3', '3/0003口头文化发音人3.jpg', '3');
INSERT INTO `lang_img` VALUES ('26', '口头文化发音人4', '3/0004口头文化发音人4.jpg', '3');
INSERT INTO `lang_img` VALUES ('27', '口头文化发音人5', '3/0005口头文化发音人5.jpg', '3');
INSERT INTO `lang_img` VALUES ('28', '口头文化发音人6', '3/0006口头文化发音人6.jpg', '3');
INSERT INTO `lang_img` VALUES ('29', '民语发音人1', '3/0001民语发音人1.jpg', '3');
INSERT INTO `lang_img` VALUES ('3', '0001马继元', '1/0001马继元.JPG', '1');
INSERT INTO `lang_img` VALUES ('30', '民语发音人2', '3/0002民语发音人2.jpg', '3');
INSERT INTO `lang_img` VALUES ('31', '民语发音人3', '3/0003民语发音人3.jpg', '3');
INSERT INTO `lang_img` VALUES ('32', '其他1', '3/0001其他1.jpg', '3');
INSERT INTO `lang_img` VALUES ('33', '其他2', '3/0002其他2.jpg', '3');
INSERT INTO `lang_img` VALUES ('34', '其他3', '3/0003其他3.jpg', '3');
INSERT INTO `lang_img` VALUES ('35', '其他4', '3/0004其他4.jpg', '3');
INSERT INTO `lang_img` VALUES ('36', '其他5', '3/0005其他5.jpg', '3');
INSERT INTO `lang_img` VALUES ('37', '其他6', '3/0006其他6.jpg', '3');
INSERT INTO `lang_img` VALUES ('38', '调查过程1', '3/0001调查过程1.jpg', '3');
INSERT INTO `lang_img` VALUES ('39', '调查过程2', '3/0002调查过程2.jpg', '3');
INSERT INTO `lang_img` VALUES ('4', '0001马五麦勒', '1/0001马五麦勒.JPG', '1');
INSERT INTO `lang_img` VALUES ('40', '调查过程3', '3/0003调查过程3.jpg', '3');
INSERT INTO `lang_img` VALUES ('41', '调查过程4', '3/0004调查过程4.jpg', '3');
INSERT INTO `lang_img` VALUES ('42', '调查过程5', '3/0005调查过程5.jpg', '3');
INSERT INTO `lang_img` VALUES ('43', '调查过程6', '3/0006调查过程6.jpg', '3');
INSERT INTO `lang_img` VALUES ('44', '调查过程7', '3/0007调查过程7.jpg', '3');
INSERT INTO `lang_img` VALUES ('45', '调查过程8', '3/0008调查过程8.jpg', '3');
INSERT INTO `lang_img` VALUES ('5', '0001马五麦勒', '1/0001马五麦勒2.JPG', '1');
INSERT INTO `lang_img` VALUES ('6', '0002调查', '1/0002调查.JPG', '1');
INSERT INTO `lang_img` VALUES ('7', '0002东乡四甲集', '1/0002东乡四甲集.JPG', '1');
INSERT INTO `lang_img` VALUES ('8', '0003调查', '1/0003调查.JPG', '1');
INSERT INTO `lang_img` VALUES ('9', '李占英', '2/0001李占英.jpg', '2');

-- ----------------------------
-- Table structure for lang_video
-- ----------------------------
DROP TABLE IF EXISTS `lang_video`;
CREATE TABLE `lang_video` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '音频名称',
  `video_name` varchar(255) DEFAULT NULL COMMENT '视频文件名',
  `region_id` int(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang_video
-- ----------------------------

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(20) NOT NULL,
  `lng` double DEFAULT NULL COMMENT '经度',
  `lat` double DEFAULT NULL COMMENT '纬度',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '街道或自然村',
  `other` varchar(255) DEFAULT NULL COMMENT '其它',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', '103', '35', '甘肃', '临夏', '甘肃 临夏', '东乡语四甲集土语');
INSERT INTO `location` VALUES ('2', '102', '36', '甘肃', '天祝', '甘肃 天祝', '土族语同仁方言');
INSERT INTO `location` VALUES ('3', '112', '24', '广东', '连南', '广东 连南', '藻敏方言。');

-- ----------------------------
-- Table structure for location_detail
-- ----------------------------
DROP TABLE IF EXISTS `location_detail`;
CREATE TABLE `location_detail` (
  `id` varchar(255) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `principal` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of location_detail
-- ----------------------------
INSERT INTO `location_detail` VALUES ('1', '甘肃 临夏', 'XXX', '中央民族大学', '东乡语四甲集土语');
INSERT INTO `location_detail` VALUES ('2', '甘肃 天祝', 'XXX', '中央民族大学', '土族语同仁方言');
INSERT INTO `location_detail` VALUES ('3', '广东 连南', 'XXX', '中央民族大学', '藻敏方言');

-- ----------------------------
-- Table structure for marks
-- ----------------------------
DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks` (
  `detailsid` int(255) DEFAULT '0',
  `family` varchar(255) DEFAULT NULL,
  `grouper` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `languager` varchar(255) DEFAULT NULL,
  `localism` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of marks
-- ----------------------------
INSERT INTO `marks` VALUES ('13', '汉藏语系', '壮侗语族', '黎语支', '黎语', '侾', '海南', '乐东县', '109.189132', '18.778326', '1');
INSERT INTO `marks` VALUES ('11', '阿尔泰语系', '蒙古语族', '', '蒙古语', '内蒙古', '内蒙古', '正蓝旗', '115.999179', '42.247546', '2');
INSERT INTO `marks` VALUES ('11', '阿尔泰语系', '蒙古语族', '', '蒙古语', '布里亚特', '内蒙古', '鄂温克族旗', '119.759051', '49.153422', '3');
INSERT INTO `marks` VALUES ('11', '阿尔泰语系', '蒙古语族', '', '蒙古语', '卫拉特', '新疆', '和静县', '86.388098', '42.329365', '4');
INSERT INTO `marks` VALUES ('2', '汉藏语系', '藏缅语族', '藏语支', '藏语', '卫藏', '西藏', '拉萨市', '91.119674', '29.650542', '5');
INSERT INTO `marks` VALUES ('2', '汉藏语系', '藏缅语族', '藏语支', '藏语', '安多', '青海', '夏河县', '101.780138', '36.628549', '6');
INSERT INTO `marks` VALUES ('2', '汉藏语系', '藏缅语族', '藏语支', '藏语', '康', '四川', '德格县', '98.589127', '31.812597', '7');
INSERT INTO `marks` VALUES ('15', '阿尔泰语系', '突厥语族', '', '维吾尔语', '中心', '新疆', '乌鲁木齐市', '87.604318', '43.832012', '8');
INSERT INTO `marks` VALUES ('15', '阿尔泰语系', '突厥语族', '', '维吾尔语', '和田', '新疆', '和田市', '79.923625', '37.119746', '9');
INSERT INTO `marks` VALUES ('43', '阿尔泰语系', '突厥语族', '', '哈萨克语', '', '新疆', '伊宁市', '81.284242', '43.914052', '10');
INSERT INTO `marks` VALUES ('33', '汉藏语系', '藏缅语族', '彝语支', '彝语', '北部', '四川', '喜德县', '102.414968', '28.313219', '11');
INSERT INTO `marks` VALUES ('33', '汉藏语系', '藏缅语族', '彝语支', '彝语', '东部', '云南', '禄丰县', '102.083231', '25.157401', '12');
INSERT INTO `marks` VALUES ('33', '汉藏语系', '藏缅语族', '彝语支', '彝语', '南部', '云南', '新平县', '101.997003', '24.081542', '13');
INSERT INTO `marks` VALUES ('33', '汉藏语系', '藏缅语族', '彝语支', '彝语', '东南部', '云南', '弥勒县', '103.423214', '24.422194', '14');
INSERT INTO `marks` VALUES ('39', '汉藏语系', '壮侗语族', '壮傣语支', '壮语', '北部', '广西', '武鸣县', '108.281517', '23.167174', '15');
INSERT INTO `marks` VALUES ('39', '汉藏语系', '壮侗语族', '壮傣语支', '壮语', '南部', '广西', '龙州县', '106.857707', '22.350438', '16');
INSERT INTO `marks` VALUES ('46', '汉藏语系', '壮侗语族', '壮傣语支', '傣语', '西双版纳', '云南', '景洪市', '100.80364', '22.017942', '17');
INSERT INTO `marks` VALUES ('46', '汉藏语系', '壮侗语族', '壮傣语支', '傣语', '德宏', '云南', '芒市', '98.596854', '24.439953', '18');
INSERT INTO `marks` VALUES ('46', '汉藏语系', '壮侗语族', '壮傣语支', '傣语', '金平', '云南', '金平县', '103.232469', '22.792491', '19');
INSERT INTO `marks` VALUES ('46', '汉藏语系', '壮侗语族', '壮傣语支', '傣语', '红金', '云南', '新平县', '102.001602', '24.084709', '20');
INSERT INTO `marks` VALUES ('25', '阿尔泰语系', '突厥语族', '', '柯尔克孜语', '北部', '新疆', '特克斯县', '81.847186', '43.225089', '21');
INSERT INTO `marks` VALUES ('25', '阿尔泰语系', '突厥语族', '', '柯尔克孜语', '南部', '新疆', '乌恰县', '75.267634', '39.726012', '22');
INSERT INTO `marks` VALUES ('31', '阿尔泰语系', '突厥语族', '', '撒拉语', '青海街子', '青海', '循化县', '102.494235', '35.861815', '23');
INSERT INTO `marks` VALUES ('31', '阿尔泰语系', '突厥语族', '', '撒拉语', '青海孟达', '青海', '循化县', '102.494235', '35.861815', '24');
INSERT INTO `marks` VALUES ('31', '阿尔泰语系', '突厥语族', '', '撒拉语', '新疆伊宁', '新疆', '伊宁市', '81.284242', '43.915715', '25');
INSERT INTO `marks` VALUES ('6', '阿尔泰语系', '蒙古语族', '', '达斡尔语', '齐齐哈尔', '黑龙江', '齐齐哈尔市', '123.919972', '47.359196', '26');
INSERT INTO `marks` VALUES ('6', '阿尔泰语系', '蒙古语族', '', '达斡尔语', '新疆', '新疆', '塔城市', '82.983232', '46.751581', '27');
INSERT INTO `marks` VALUES ('41', '阿尔泰语系', '蒙古语族', '', '土族语', '互助', '青海', '互助县', '101.966294', '36.849098', '28');
INSERT INTO `marks` VALUES ('41', '阿尔泰语系', '蒙古语族', '', '土族语', '民和', '青海', '民和县', '102.83869', '36.332074', '29');
INSERT INTO `marks` VALUES ('58', '阿尔泰语系', '蒙古语族', '', '东乡语', '', '甘肃', '东乡族县', '103.397913', '35.668392', '30');
INSERT INTO `marks` VALUES ('3', '阿尔泰语系', '通古斯语族', '', '锡伯语', '', '新疆', '察布查尔县', '81.157925', '43.849187', '31');
INSERT INTO `marks` VALUES ('4', '阿尔泰语系', '通古斯语族', '', '鄂温克语', '辉', '内蒙古', '鄂温克旗', '119.760776', '49.153045', '32');
INSERT INTO `marks` VALUES ('40', '印欧语系', '印度—伊朗语族', '', '塔吉克语', '萨利库尔', '新疆', '塔什库尔干县', '75.246634', '37.815511', '33');
INSERT INTO `marks` VALUES ('40', '印欧语系', '印度—伊朗语族', '', '塔吉克语', '佤罕', '新疆', '塔什库尔干县', '75.335171', '37.432295', '34');
INSERT INTO `marks` VALUES ('1', '阿尔泰语系', '突厥语族', '', '乌孜别克语', '', '新疆', '木垒县', '90.286766', '43.843637', '35');
INSERT INTO `marks` VALUES ('42', '阿尔泰语系', '突厥语族', '', '图佤语', '', '新疆', '哈巴河县', '86.423668', '48.06615', '36');
INSERT INTO `marks` VALUES ('48', '阿尔泰语系', '蒙古语族', '', '保安语', '', '甘肃', '积石山县', '102.885393', '35.700991', '37');
INSERT INTO `marks` VALUES ('4', '阿尔泰语系', '通古斯语族', '', '鄂温克语', '敖鲁古雅', '内蒙', '根河市', '121.52931', '50.787961', '38');
INSERT INTO `marks` VALUES ('5', '阿尔泰语系', '通古斯语族', '', '鄂伦春语', '', '内蒙古', '鄂伦春旗', '123.736974', '50.587429', '39');
INSERT INTO `marks` VALUES ('49', '印欧语系', '斯拉夫语族', '', '俄罗斯语', '新疆', '新疆', '伊宁市', '81.288266', '43.915715', '40');
INSERT INTO `marks` VALUES ('36', '汉藏语系', '壮侗语族', '壮傣语支', '布依语', '', '贵州', '望谟县', '106.10817', '25.186971', '41');
INSERT INTO `marks` VALUES ('50', '汉藏语系', '壮侗语族', '侗水语支', '侗语', '南部', '湖南', '通道县', '109.792745', '26.165777', '42');
INSERT INTO `marks` VALUES ('21', '汉藏语系', '壮侗语族', '侗水语支', '水语', '', '贵州', '三都县', '107.882178', '25.992597', '43');
INSERT INTO `marks` VALUES ('22', '汉藏语系', '壮侗语族', '侗水语支', '毛南语', '', '广西', '环江县', '108.266168', '24.839433', '44');
INSERT INTO `marks` VALUES ('52', '汉藏语系', '壮侗语族', '侗水语支', '仫佬语', '', '广西', '罗城县', '108.909274', '24.789908', '45');
INSERT INTO `marks` VALUES ('26', '汉藏语系', '壮侗语族', '黎语支', '村语', '', '海南', '东方市', '108.661442', '19.101652', '46');
INSERT INTO `marks` VALUES ('48', '汉藏语系', '壮侗语族', '侗水语支', '标话', '', '广东', '怀集县', '112.189744', '23.919428', '47');
INSERT INTO `marks` VALUES ('12', '汉藏语系', '壮侗语族', '侗水语支', '茶洞语', '', '广西', '临桂县', '110.203639', '25.24221', '48');
INSERT INTO `marks` VALUES ('13', '汉藏语系', '苗瑶语族', '苗语支', '苗语', '湘西', '湖南', '吉首市', '109.706174', '28.267493', '49');
INSERT INTO `marks` VALUES ('13', '汉藏语系', '苗瑶语族', '苗语支', '苗语', '川黔滇', '贵州', '毕节县', '105.441129', '27.284081', '50');
INSERT INTO `marks` VALUES ('45', '汉藏语系', '苗瑶语族', '瑶语支', '勉语', '勉', '广西', '龙胜县', '110.012895', '25.806199', '51');
INSERT INTO `marks` VALUES ('51', '南亚语系', '孟—高棉语族', '佤—德昂语支', '佤语', '佤', '云南', '沧源县', '99.255597', '23.155537', '52');
INSERT INTO `marks` VALUES ('17', '汉藏语系', '藏缅语族', '语支未定', '白语', '剑川', '云南', '剑川县', '99.91669', '26.542', '53');
INSERT INTO `marks` VALUES ('19', '汉藏语系', '藏缅语族', '语支未定', '独龙语', '怒江', '云南', '贡山县', '98.681598', '27.76139', '54');
INSERT INTO `marks` VALUES ('44', '汉藏语系', '藏缅语族', '彝语支', '哈尼语', '哈雅', '云南', '绿春县', '102.402518', '23.002826', '55');
INSERT INTO `marks` VALUES ('28', '汉藏语系', '藏缅语族', '景颇语支', '景颇语', '', '云南', '盈江县', '97.939002', '24.712059', '56');
INSERT INTO `marks` VALUES ('47', '汉藏语系', '藏缅语族', '彝语支', '傈僳语', '', '云南', '福贡县', '98.875074', '26.911663', '57');
INSERT INTO `marks` VALUES ('7', '汉藏语系', '藏缅语族', '缅语支', '载瓦语', '', '云南', '潞西县', '102.771607', '24.997999', '58');
INSERT INTO `marks` VALUES ('32', '汉藏语系', '藏缅语族', '彝语支', '拉祜语', '纳', '云南', '澜沧县', '99.929964', '22.567172', '59');
INSERT INTO `marks` VALUES ('9', '阿尔泰语系', '突厥语族', '东突厥语支', '西部裕固语', '', '甘肃', '肃南县', '99.621905', '38.846247', '60');
INSERT INTO `marks` VALUES ('57', '阿尔泰语系', '蒙古语族', '', '东部裕固语', '', '甘肃', '肃南县', '99.744937', '38.894789', '61');
INSERT INTO `marks` VALUES ('20', '阿尔泰语系', '通古斯语族', '满语支', '满语', '', '黑龙江', '富裕县', '124.482267', '47.784879', '62');
INSERT INTO `marks` VALUES ('16', '汉藏语系', '藏缅语族', '藏语支', '白马语', '文县', '甘肃', '文县', '104.691283', '32.95251', '63');
INSERT INTO `marks` VALUES ('38', '汉藏语系', '藏缅语族', '羌语支', '尔龚语', '道孚', '四川', '道孚县', '101.137864', '30.985821', '64');
INSERT INTO `marks` VALUES ('24', '汉藏语系', '藏缅语族', '', '格曼语', '', '西藏', '察隅县', '97.472695', '28.67505', '65');
INSERT INTO `marks` VALUES ('8', '汉藏语系', '藏缅语族', '羌语支', '贵琼语', '', '四川', '康定县', '101.970454', '30.003907', '66');
INSERT INTO `marks` VALUES ('29', '汉藏语系', '藏缅语族', '语支未定', '普米语', '南部', '云南', '永宁县', '106.28598', '38.390691', '67');
INSERT INTO `marks` VALUES ('29', '汉藏语系', '藏缅语族', '语支未定', '普米语', '北部', '四川', '木里县', '101.284672', '27.965743', '68');
INSERT INTO `marks` VALUES ('14', '汉藏语系', '藏缅语族', '羌语支', '羌语', '北部', '四川', '松潘县', '103.635876', '32.617529', '69');
INSERT INTO `marks` VALUES ('30', '汉藏语系', '藏缅语族', '语支未定', '撒都语', '', '云南', '玉溪市', '102.55586', '24.404579', '70');
INSERT INTO `marks` VALUES ('56', '汉藏语系', '藏缅语族', '语支未定', '义都语', '', '西藏', '察隅县', '97.477869', '28.666937', '71');
INSERT INTO `marks` VALUES ('53', '汉藏语系', '壮侗语族', '仡央语支', '仡佬语', '多罗', '贵州', '安顺市', '105.957292', '26.258734', '72');
INSERT INTO `marks` VALUES ('34', '汉藏语系', '壮侗语族', '仡央语支', '布央语', '东部', '云南', '广南县', '105.063307', '24.054839', '73');
INSERT INTO `marks` VALUES ('23', '汉藏语系', '壮侗语族', '壮傣语支', '欸语/五色话', '', '广西', '融水县', '109.260261', '25.075219', '74');
INSERT INTO `marks` VALUES ('18', '汉藏语系', '苗瑶语族', '语支未定', '畲语', '', '广东', '博罗县', '114.297723', '23.181464', '75');
INSERT INTO `marks` VALUES ('37', '南亚语系', '孟—高棉语族', '', '巴那语', '', '湖南', '城步县', '110.337736', '26.39465', '76');
INSERT INTO `marks` VALUES ('35', '南亚语系', '孟—高棉语族', '高棉语支', '布兴语', '', '云南', '勐腊县', '101.577277', '21.466896', '77');
INSERT INTO `marks` VALUES ('54', '汉藏语系', '藏缅语族', '缅语支', '仙岛语', '', '云南', '盈江县', '97.933828', '24.711534', '78');
INSERT INTO `marks` VALUES ('2', '汉藏语系', '藏缅语族', '语支未定', '阿侬语', '', '云南', '福贡县', '98.877949', '26.90754', '79');
INSERT INTO `marks` VALUES ('1', '阿尔泰语系', '通古斯语族', '', '东部裕固语', '', '广东', '连南', '98.877949', '26.90754', '80');

-- ----------------------------
-- Table structure for musiclist
-- ----------------------------
DROP TABLE IF EXISTS `musiclist`;
CREATE TABLE `musiclist` (
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musiclist
-- ----------------------------
INSERT INTO `musiclist` VALUES ('Jar Of Love', 'images/cover2.jpg', 'songs/伊美达 - 童话.mp3', '1');
INSERT INTO `musiclist` VALUES ('number one', 'images/cover.png', 'songs/伊美达 - 童话.mp3', '2');
INSERT INTO `musiclist` VALUES ('黒うさP,初音ミク - 千本桜', 'images/cover3.jpg', 'songs/伊美达 - 童话.mp3', '3');

-- ----------------------------
-- Table structure for smusiclist_example
-- ----------------------------
DROP TABLE IF EXISTS `smusiclist_example`;
CREATE TABLE `smusiclist_example` (
  `title` varchar(255) DEFAULT NULL,
  `singer` varchar(255) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `lyric` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smusiclist_example
-- ----------------------------
INSERT INTO `smusiclist_example` VALUES ('成都', '赵雷', '/songs/伊美达 - 童话.mp3', 'http://p1.music.126.net/34YW1QtKxJ_3YnX9ZzKhzw==/2946691234868155.jpg', '/lyrics/chengdu.lrc');
INSERT INTO `smusiclist_example` VALUES ('Diamonds', 'Rihanna', '/songs/伊美达 - 童话.mp3', 'http://p1.music.126.net/vrJzlA1RIiwaPHlXzZy90g==/3263350514797284.jpg', '/lyrics/diamonds.lrc');
INSERT INTO `smusiclist_example` VALUES ('Fight Song', 'Rachel Platten', '/songs/伊美达 - 童话.mp3', 'http://p1.music.126.net/1pT1uMs8EzCCUpAw6XkuCw==/7890095441301282.jpg', '/lyrics/fightSong.lrc');

-- ----------------------------
-- Table structure for smusiclist_user
-- ----------------------------
DROP TABLE IF EXISTS `smusiclist_user`;
CREATE TABLE `smusiclist_user` (
  `title` varchar(255) DEFAULT NULL,
  `singer` varchar(255) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `lyric` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smusiclist_user
-- ----------------------------
INSERT INTO `smusiclist_user` VALUES ('成都', '赵雷', '/songs/伊美达 - 童话.mp3', 'http://p1.music.126.net/34YW1QtKxJ_3YnX9ZzKhzw==/2946691234868155.jpg', '/lyrics/chengdu.lrc', '1');
INSERT INTO `smusiclist_user` VALUES ('Diamonds', 'Rihanna', '/songs/伊美达 - 童话.mp3', 'http://p1.music.126.net/vrJzlA1RIiwaPHlXzZy90g==/3263350514797284.jpg', '/lyrics/diamonds.lrc', '1');
INSERT INTO `smusiclist_user` VALUES ('Fight Song', 'Rachel Platten', '/songs/伊美达 - 童话.mp3', 'http://p1.music.126.net/1pT1uMs8EzCCUpAw6XkuCw==/7890095441301282.jpg', '/lyrics/fightSong.lrc', '1');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `sid` bigint(64) DEFAULT NULL COMMENT '歌曲ID',
  `stitle` varchar(255) DEFAULT NULL COMMENT '歌曲标题',
  `stime` varchar(255) DEFAULT NULL COMMENT '歌曲时长',
  `singer` varchar(255) DEFAULT NULL,
  `singerID` bigint(64) DEFAULT NULL COMMENT '歌手ID',
  `albumID` bigint(64) DEFAULT NULL COMMENT '专辑ID',
  `albumName` varchar(255) DEFAULT NULL COMMENT '专辑名',
  `path` varchar(255) DEFAULT NULL COMMENT '歌曲路径',
  `size` double(64,0) DEFAULT NULL COMMENT '歌曲大小',
  `albumPic` varchar(255) DEFAULT NULL COMMENT '专辑图片',
  `lyric` varchar(1024) DEFAULT NULL COMMENT '歌词',
  `playNum` bigint(64) DEFAULT '0' COMMENT '歌曲播放次数',
  `lastWeekendPlayNum` bigint(64) DEFAULT NULL COMMENT '截止上周总播放次数',
  `increaseNum` bigint(64) DEFAULT NULL COMMENT '一周内的播放次数',
  `lastUpdateTime` varchar(255) DEFAULT '' COMMENT '上次更新时间',
  `createTime` varchar(255) DEFAULT NULL COMMENT '歌曲的创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('20', '151952826698230', ' 安静.mp3', '05:35', '周杰伦', '151952826698228', '151952826698229', '范特西', '/upload/周杰伦 - 安静.mp3', '0', null, null, '0', '0', '0', '2018-10-25 21:11:11', '2018-02-27 21:01:58');
INSERT INTO `song` VALUES ('21', '151763471286403', ' 江南.mp3', null, '林俊杰', '151763471286401', '151763471286402', '江南', '/upload/林俊杰 - 江南.mp3', '4', null, null, '5', '5', '0', '2018-10-25 21:11:11', '2018-02-27 21:02:58');
INSERT INTO `song` VALUES ('23', '151954853564302', '浪漫手机.mp3', '04:00', '周杰伦', '0', '0', '十一月的萧邦', '/upload/浪漫手机.mp3', '6', null, null, '2', '2', '0', '2018-10-25 21:11:11', '2018-02-27 21:03:58');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `isAdmin` int(1) DEFAULT '0' COMMENT '是否管理员账户',
  `pic` varchar(255) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '234', '567', '0', '0', '/images/测试.png');
INSERT INTO `user` VALUES ('3', '567', '789', '1', '0', null);
INSERT INTO `user` VALUES ('4', '890', '901', '1', '0', null);
INSERT INTO `user` VALUES ('8', '123', '456', '1', '1', null);
