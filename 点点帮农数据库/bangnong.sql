/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : bangnong

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-05-29 17:43:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `category_dictionary`;
CREATE TABLE `category_dictionary` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `category_l` tinyint(4) DEFAULT NULL COMMENT '大类',
  `category_m` tinyint(4) DEFAULT NULL COMMENT '中类',
  `category_s` smallint(4) DEFAULT NULL COMMENT '小类',
  `category_c` int(11) DEFAULT NULL COMMENT '具体类',
  `category_name` varchar(255) DEFAULT NULL COMMENT '类别名称',
  `explanation` varchar(255) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_dictionary
-- ----------------------------
INSERT INTO `category_dictionary` VALUES ('81', '1', '10', '100', '10000', '农业', '对各种农作物的种植');
INSERT INTO `category_dictionary` VALUES ('82', '1', '11', '110', '11000', '谷物种植', '谷物种植');
INSERT INTO `category_dictionary` VALUES ('83', '1', '11', '111', '11100', '稻谷种植', '稻谷种植');
INSERT INTO `category_dictionary` VALUES ('84', '1', '11', '111', '11101', '早籼稻', '种用早籼稻、其他早籼稻');
INSERT INTO `category_dictionary` VALUES ('85', '1', '11', '111', '11102', '晚籼稻', '种用晚籼稻、其他晚籼稻');
INSERT INTO `category_dictionary` VALUES ('86', '1', '11', '111', '11103', '中籼稻', '种用中籼稻、其他中籼稻');
INSERT INTO `category_dictionary` VALUES ('87', '1', '11', '111', '11104', '粳稻', '种用粳稻、其他粳稻');
INSERT INTO `category_dictionary` VALUES ('88', '1', '11', '111', '11105', '糯稻', '种用糯稻、其他糯稻');
INSERT INTO `category_dictionary` VALUES ('89', '1', '11', '111', '11106', '其他未列明稻谷', '其他未列明稻谷');
INSERT INTO `category_dictionary` VALUES ('90', '1', '11', '112', '11200', '小麦种植', '小麦种植');
INSERT INTO `category_dictionary` VALUES ('91', '1', '11', '112', '11201', '硬质小麦', '种用硬质小麦、其他硬质小麦');
INSERT INTO `category_dictionary` VALUES ('92', '1', '11', '112', '11202', '软质小麦', '种用软质小麦、其他软质小麦');
INSERT INTO `category_dictionary` VALUES ('93', '1', '11', '112', '11203', '混合小麦', '种用混合小麦、其他混合小麦');
INSERT INTO `category_dictionary` VALUES ('94', '1', '11', '112', '11204', '其他未列明小麦', '其他未列明小麦');
INSERT INTO `category_dictionary` VALUES ('95', '1', '11', '113', '11300', '玉米种植', '玉米种植');
INSERT INTO `category_dictionary` VALUES ('96', '1', '11', '113', '11301', '白玉米', '种用白玉米、其他白玉米');
INSERT INTO `category_dictionary` VALUES ('97', '1', '11', '113', '11302', '黄玉米', '种用黄玉米、其他黄玉米');
INSERT INTO `category_dictionary` VALUES ('98', '1', '11', '113', '11303', '糯玉米', '种用糯玉米、其他糯玉米');
INSERT INTO `category_dictionary` VALUES ('99', '1', '11', '113', '11304', '甜玉米', '种用甜玉米、其他甜玉米');
INSERT INTO `category_dictionary` VALUES ('100', '1', '11', '113', '11305', '其他未列明玉米', '其他未列明玉米');
INSERT INTO `category_dictionary` VALUES ('101', '1', '11', '119', '11900', '其他谷物种植', '其他谷物种植');
INSERT INTO `category_dictionary` VALUES ('102', '1', '11', '119', '11901', '谷子', '硬谷子、糯谷子、其他谷子');
INSERT INTO `category_dictionary` VALUES ('103', '1', '11', '119', '11902', '高粱', '红粒高粱（种用红粒高粱、其他红粒高粱）、白粒高粱（种用白粒高粱、其他白粒高粱）、糯高粱（种用糯高粱、其他糯高粱）、其他高粱（其他种用高粱、其他未列明高粱）');
INSERT INTO `category_dictionary` VALUES ('104', '1', '11', '119', '11903', '大麦', '裸大麦（种用裸大麦、其他裸大麦）、皮大麦（种用皮大麦、其他皮大麦）');
INSERT INTO `category_dictionary` VALUES ('105', '1', '11', '119', '11904', '燕麦', '裸燕麦(莜麦)、皮燕麦');
INSERT INTO `category_dictionary` VALUES ('106', '1', '11', '119', '11905', '黑麦', '黑麦');
INSERT INTO `category_dictionary` VALUES ('107', '1', '11', '119', '11906', '荞麦', '甜荞麦、苦荞麦');
INSERT INTO `category_dictionary` VALUES ('108', '1', '11', '119', '11907', '作物茎、秆、根', '稻草、谷壳、谷子秸、高粱秸');
INSERT INTO `category_dictionary` VALUES ('109', '1', '11', '119', '11908', '其他谷物', '元麦、青稞、糜子（硬糜子、糯糜子）、黍子、紫米、薏苡、其他未列明谷物');
INSERT INTO `category_dictionary` VALUES ('110', '1', '12', '120', '12000', '豆类、油料和薯类种植', '豆类、油料和薯类种植');
INSERT INTO `category_dictionary` VALUES ('111', '1', '12', '121', '12100', '豆类种植', '豆类种植');
INSERT INTO `category_dictionary` VALUES ('112', '1', '12', '121', '12101', '大豆', '黄大豆、黑大豆、青大豆、褐红大豆、双青豆、青仁乌豆、小黑豆、其他大豆');
INSERT INTO `category_dictionary` VALUES ('113', '1', '12', '121', '12102', '绿豆', '明绿豆（种用明绿豆、其他明绿豆）、毛绿豆（种用毛绿豆、其他毛绿豆）');
INSERT INTO `category_dictionary` VALUES ('114', '1', '12', '121', '12103', '小豆', '红小豆、灰白小豆、狸小豆、其他小豆');
INSERT INTO `category_dictionary` VALUES ('115', '1', '12', '121', '12104', '干豌豆', '白豌豆（种用白豌豆、其他白豌豆）、绿豌豆（种用绿豌豆、其他绿豌豆）、麻豌豆（种用麻豌豆、其他麻豌豆）');
INSERT INTO `category_dictionary` VALUES ('116', '1', '12', '121', '12105', '干蚕豆', '种用干蚕豆、其他干蚕豆');
INSERT INTO `category_dictionary` VALUES ('117', '1', '12', '121', '12106', '芸豆', '种用芸豆、其他芸豆');
INSERT INTO `category_dictionary` VALUES ('118', '1', '12', '121', '12107', '饭豆', '种用饭豆、其他饭豆');
INSERT INTO `category_dictionary` VALUES ('119', '1', '12', '121', '12108', '干豇豆', '种用干豇豆、其他干豇豆');
INSERT INTO `category_dictionary` VALUES ('120', '1', '12', '121', '12109', '鹰嘴豆', '种用鹰嘴豆、其他鹰嘴豆');
INSERT INTO `category_dictionary` VALUES ('121', '1', '12', '121', '12110', '大豆秸', '大豆秸');
INSERT INTO `category_dictionary` VALUES ('122', '1', '12', '121', '12111', '其他杂豆', '种用杂豆、其他未列明杂豆');
INSERT INTO `category_dictionary` VALUES ('123', '1', '12', '122', '12200', '油料种植', '油料种植');
INSERT INTO `category_dictionary` VALUES ('124', '1', '12', '122', '12201', '花生', '带壳花生（种用带壳花生、其他带壳花生）、花生仁');
INSERT INTO `category_dictionary` VALUES ('125', '1', '12', '122', '12202', '油菜籽', '双低油菜籽（种用双低油菜籽、其他双低油菜籽）、其他油菜籽（其他种用油菜籽、其他未列明油菜籽）');
INSERT INTO `category_dictionary` VALUES ('126', '1', '12', '122', '12203', '葵花籽', '油葵（种用油葵、其他油葵）、食葵（种用食葵、其他食葵）');
INSERT INTO `category_dictionary` VALUES ('127', '1', '12', '122', '12204', '芝麻', '白芝麻（种用白芝麻、其他白芝麻）、黑芝麻（种用黑芝麻、其他黑芝麻）、黄芝麻（种用黄芝麻、其他黄芝麻）');
INSERT INTO `category_dictionary` VALUES ('128', '1', '12', '122', '12205', '胡麻籽', '种用胡麻籽、其他胡麻籽');
INSERT INTO `category_dictionary` VALUES ('129', '1', '12', '122', '12206', '棉籽', '种用棉籽、其他棉籽');
INSERT INTO `category_dictionary` VALUES ('130', '1', '12', '122', '12207', '蓖麻籽', '种用蓖麻籽、其他蓖麻籽');
INSERT INTO `category_dictionary` VALUES ('131', '1', '12', '122', '12208', '芥子', '种用芥子、其他芥子');
INSERT INTO `category_dictionary` VALUES ('132', '1', '12', '122', '12209', '红花籽', '种用红花籽、其他红花籽');
INSERT INTO `category_dictionary` VALUES ('133', '1', '12', '122', '12210', '罂粟子', '罂粟子');
INSERT INTO `category_dictionary` VALUES ('134', '1', '12', '122', '12211', '作物茎、秆、根', '花生蔓、油菜籽秆、芝麻秆、向日葵秆');
INSERT INTO `category_dictionary` VALUES ('135', '1', '12', '122', '12212', '其他油料', '其他油料');
INSERT INTO `category_dictionary` VALUES ('136', '1', '12', '123', '12300', '薯类种植', '薯类种植');
INSERT INTO `category_dictionary` VALUES ('137', '1', '12', '123', '12301', '马铃薯', '种用马铃薯、其他马铃薯');
INSERT INTO `category_dictionary` VALUES ('138', '1', '12', '123', '12302', '甘薯', '种用甘薯、甘薯干、其他甘薯');
INSERT INTO `category_dictionary` VALUES ('139', '1', '12', '123', '12303', '木薯', '鲜木薯、木薯干、其他木薯');
INSERT INTO `category_dictionary` VALUES ('140', '1', '12', '123', '12304', '薯藤', '薯藤');
INSERT INTO `category_dictionary` VALUES ('141', '1', '12', '123', '12305', '紫薯', '紫薯');
INSERT INTO `category_dictionary` VALUES ('142', '1', '12', '123', '12306', '其他薯类', '其他薯类');
INSERT INTO `category_dictionary` VALUES ('143', '1', '13', '130', '13000', '棉、麻、糖、烟草种植', '棉、麻、糖、烟草种植');
INSERT INTO `category_dictionary` VALUES ('144', '1', '13', '131', '13100', '棉花种植', '棉花种植');
INSERT INTO `category_dictionary` VALUES ('145', '1', '13', '131', '13101', '籽棉', '籽棉');
INSERT INTO `category_dictionary` VALUES ('146', '1', '13', '131', '13102', '棉花秆', '棉花秆');
INSERT INTO `category_dictionary` VALUES ('147', '1', '13', '131', '13103', '其他棉花', '其他棉花');
INSERT INTO `category_dictionary` VALUES ('148', '1', '13', '132', '13200', '麻类种植', '麻类种植');
INSERT INTO `category_dictionary` VALUES ('149', '1', '13', '132', '13201', '生亚麻', '生亚麻');
INSERT INTO `category_dictionary` VALUES ('150', '1', '13', '132', '13202', '生苎麻', '生苎麻');
INSERT INTO `category_dictionary` VALUES ('151', '1', '13', '132', '13203', '生黄麻', '生黄麻');
INSERT INTO `category_dictionary` VALUES ('152', '1', '13', '132', '13204', '生红麻', '生红麻');
INSERT INTO `category_dictionary` VALUES ('153', '1', '13', '132', '13205', '生苘麻', '生苘麻');
INSERT INTO `category_dictionary` VALUES ('154', '1', '13', '132', '13206', '生大麻', '生大麻');
INSERT INTO `category_dictionary` VALUES ('155', '1', '13', '132', '13207', '生剑麻', '生剑麻');
INSERT INTO `category_dictionary` VALUES ('156', '1', '13', '132', '13208', '麻秆', '麻秆');
INSERT INTO `category_dictionary` VALUES ('157', '1', '13', '132', '13209', '其他生麻', '其他生麻');
INSERT INTO `category_dictionary` VALUES ('158', '1', '13', '133', '13300', '糖料种植', '糖料种植');
INSERT INTO `category_dictionary` VALUES ('159', '1', '13', '133', '13301', '甘蔗', '甘蔗');
INSERT INTO `category_dictionary` VALUES ('160', '1', '13', '133', '13302', '甜菜', '甜菜');
INSERT INTO `category_dictionary` VALUES ('161', '1', '13', '133', '13303', '其他糖料', '其他糖料');
INSERT INTO `category_dictionary` VALUES ('162', '1', '13', '134', '13400', '烟草种植', '烟草种植');
INSERT INTO `category_dictionary` VALUES ('163', '1', '13', '134', '13401', '烤烟烟叶', '烤烟烟叶');
INSERT INTO `category_dictionary` VALUES ('164', '1', '13', '134', '13402', '晒烟烟叶', '晒烟烟叶');
INSERT INTO `category_dictionary` VALUES ('165', '1', '13', '134', '13403', '白肋烟烟叶', '白肋烟烟叶');
INSERT INTO `category_dictionary` VALUES ('166', '1', '13', '134', '13404', '香料烟烟叶', '香料烟烟叶');
INSERT INTO `category_dictionary` VALUES ('167', '1', '13', '134', '13405', '马里兰烟烟叶', '马里兰烟烟叶');
INSERT INTO `category_dictionary` VALUES ('168', '1', '13', '134', '13406', '雪茄烟烟叶', '雪茄烟烟叶');
INSERT INTO `category_dictionary` VALUES ('169', '1', '13', '134', '13407', '烟秆', '烟秆');
INSERT INTO `category_dictionary` VALUES ('170', '1', '13', '134', '13408', '其他未加工烟草', '其他未加工烟草');
INSERT INTO `category_dictionary` VALUES ('171', '1', '14', '140', '14000', '蔬菜、食用菌及园艺作物种植', '蔬菜、食用菌及园艺作物种植');
INSERT INTO `category_dictionary` VALUES ('172', '1', '14', '141', '14100', '蔬菜种植', '蔬菜种植');
INSERT INTO `category_dictionary` VALUES ('173', '1', '14', '141', '14101', '绿叶菜类蔬菜', '芹菜、菠菜、莴苣、苋菜、蕹菜、香菜、茼蒿、菊苣、冬寒菜、落葵、茴香、其他绿叶菜类蔬菜');
INSERT INTO `category_dictionary` VALUES ('174', '1', '14', '141', '14102', '白菜类蔬菜', '大白菜、普通白菜、菜心（菜薹）、乌塌菜，其他白菜类蔬菜');
INSERT INTO `category_dictionary` VALUES ('175', '1', '14', '141', '14103', '甘蓝类蔬菜', '结球甘蓝、花椰菜、青花菜、抱子甘蓝、羽衣甘蓝、球茎甘蓝、芥蓝');
INSERT INTO `category_dictionary` VALUES ('176', '1', '14', '141', '14104', '芥菜类蔬菜', '叶用芥菜、茎用芥菜、根用芥菜');
INSERT INTO `category_dictionary` VALUES ('177', '1', '14', '141', '14105', '根茎类蔬菜', '萝卜、胡萝卜、生姜、芜菁、芋头、山药、牛蒡、魔芋，其他根茎类蔬菜');
INSERT INTO `category_dictionary` VALUES ('178', '1', '14', '141', '14106', '瓜类蔬菜', '黄瓜、南瓜、西葫芦、冬瓜、苦瓜、丝瓜、瓠瓜、节瓜、佛手瓜，其他瓜类蔬菜');
INSERT INTO `category_dictionary` VALUES ('179', '1', '14', '141', '14107', '豆类蔬菜', '菜豆(含四季豆)、豇豆、扁豆、豌豆、毛豆、四棱豆，其他豆类蔬菜');
INSERT INTO `category_dictionary` VALUES ('180', '1', '14', '141', '14108', '茄果类蔬菜', '茄子、甜椒、辣椒、西红柿、其他茄果类蔬菜');
INSERT INTO `category_dictionary` VALUES ('181', '1', '14', '141', '14109', '葱蒜类蔬菜', '大葱、大蒜、韭菜、洋葱，其他葱蒜类蔬菜');
INSERT INTO `category_dictionary` VALUES ('182', '1', '14', '141', '14110', '水生蔬菜', '莲藕、荸荠、茭白、慈姑、芡实、水芹、菱、莲子、豆瓣菜，莼菜，其他水生蔬菜');
INSERT INTO `category_dictionary` VALUES ('183', '1', '14', '141', '14111', '多年生及杂类蔬菜', '竹笋、金针菜、芦笋、香椿、百合、黄秋葵、薄荷、朝鲜蓟，其他杂类蔬菜');
INSERT INTO `category_dictionary` VALUES ('184', '1', '14', '142', '14200', '食用菌种植', '食用菌种植');
INSERT INTO `category_dictionary` VALUES ('185', '1', '14', '142', '14201', '平菇', '平菇');
INSERT INTO `category_dictionary` VALUES ('186', '1', '14', '142', '14202', '金针菇', '金针菇');
INSERT INTO `category_dictionary` VALUES ('187', '1', '14', '142', '14203', '双孢蘑菇', '双孢蘑菇');
INSERT INTO `category_dictionary` VALUES ('188', '1', '14', '142', '14204', '鸡腿菇', '鸡腿菇');
INSERT INTO `category_dictionary` VALUES ('189', '1', '14', '142', '14205', '杏鲍菇', '杏鲍菇');
INSERT INTO `category_dictionary` VALUES ('190', '1', '14', '142', '14206', '茶树菇', '茶树菇');
INSERT INTO `category_dictionary` VALUES ('191', '1', '14', '142', '14207', '滑菇', '滑菇');
INSERT INTO `category_dictionary` VALUES ('192', '1', '14', '142', '14208', '草菇', '草菇');
INSERT INTO `category_dictionary` VALUES ('193', '1', '14', '142', '14209', '猴头菌', '猴头菌');
INSERT INTO `category_dictionary` VALUES ('194', '1', '14', '142', '14210', '香菇', '香菇');
INSERT INTO `category_dictionary` VALUES ('195', '1', '14', '142', '14211', '竹荪', '竹荪');
INSERT INTO `category_dictionary` VALUES ('196', '1', '14', '142', '14212', '黑木耳', '黑木耳');
INSERT INTO `category_dictionary` VALUES ('197', '1', '14', '142', '14213', '毛木耳', '毛木耳');
INSERT INTO `category_dictionary` VALUES ('198', '1', '14', '142', '14214', '银耳', '银耳');
INSERT INTO `category_dictionary` VALUES ('199', '1', '14', '142', '14215', '榛蘑', '榛蘑');
INSERT INTO `category_dictionary` VALUES ('200', '1', '14', '142', '14216', '灰树花', '灰树花');
INSERT INTO `category_dictionary` VALUES ('201', '1', '14', '142', '14217', '金顶侧耳', '金顶侧耳');
INSERT INTO `category_dictionary` VALUES ('202', '1', '14', '142', '14218', '白灵菇', '白灵菇');
INSERT INTO `category_dictionary` VALUES ('203', '1', '14', '142', '14219', '海鲜菇', '海鲜菇');
INSERT INTO `category_dictionary` VALUES ('204', '1', '14', '142', '14220', '羊肚菌', '羊肚菌');
INSERT INTO `category_dictionary` VALUES ('205', '1', '14', '142', '14221', '其他食用菌', '其他食用菌');
INSERT INTO `category_dictionary` VALUES ('206', '1', '14', '143', '14300', '花卉种植', '花卉种植');
INSERT INTO `category_dictionary` VALUES ('207', '1', '14', '143', '14301', '观花盆栽花卉', '孤挺花、银莲花（鳞茎类）、美人蕉、窄叶小草、铃兰、藏红花、仙客来、大丽花、独尾草、小苍兰、盆栽贝母、雪花莲、大岩桐、风信子、鸢尾、观音兰、水仙头、水仙花、虎眼万年青、酢浆草、晚香玉、毛茛、茜草、老虎莲、郁金香、杜鹃、盆栽菊花、凤梨、兰花、一品红、花烛属、君子兰、秋海棠、伽兰菜、新几内亚凤仙、仙人掌及多浆植物、花坛花卉、木本盆花、其他盆栽花');
INSERT INTO `category_dictionary` VALUES ('208', '1', '14', '143', '14302', '观叶盆栽花卉', '龙血树、马拉巴栗、喜林芋、绿萝、变叶木、袖珍椰子、盆栽散尾葵、绿巨人、花叶万年青、竹芋、白鹤芋、花叶芋、亮丝草、其他盆栽观叶植物');
INSERT INTO `category_dictionary` VALUES ('209', '1', '14', '143', '14303', '鲜切花', '康乃馨、满天星、勿忘我、玫瑰、情人草、紫罗兰、月季、香石竹、唐菖蒲、百合花、非洲菊、补血草、马蹄莲、火鹤、其他鲜切花及花蕾');
INSERT INTO `category_dictionary` VALUES ('210', '1', '14', '143', '14304', '切叶', '肾蕨、散尾葵、苏铁、富贵竹、龟背竹、其他切叶');
INSERT INTO `category_dictionary` VALUES ('211', '1', '14', '143', '14305', '切枝', '银芽柳、其他切枝');
INSERT INTO `category_dictionary` VALUES ('212', '1', '14', '143', '14306', '干燥花', '干燥花');
INSERT INTO `category_dictionary` VALUES ('213', '1', '14', '143', '14307', '花卉种球', '唐菖蒲种球、百合种球、郁金香种球、水仙种球、马蹄莲种球、大丽花种球、美人蕉种球、风信子种球、小苍兰种球、球根鸢尾种球、晚香玉种球、其他花卉种球');
INSERT INTO `category_dictionary` VALUES ('214', '1', '14', '143', '14308', '花卉种子', '一串红种子、矮牵牛种子、万寿菊种子、凤仙花种子、鸡冠花种子、三色堇种子、金鱼草种子、石竹种子、翠菊种子、四季秋海棠种子、其他花卉种子');
INSERT INTO `category_dictionary` VALUES ('215', '1', '14', '143', '14309', '花卉种苗', '香石竹种苗、菊花种苗、非洲菊种苗、月季种苗、火鹤种苗、兰花种苗、君子兰种苗、其他花卉种苗');
INSERT INTO `category_dictionary` VALUES ('216', '1', '14', '149', '14900', '其他园艺作物种植', '其他园艺作物种植');
INSERT INTO `category_dictionary` VALUES ('217', '1', '14', '149', '14901', '园艺产品', '草皮、草坪、其他园艺产品');
INSERT INTO `category_dictionary` VALUES ('218', '1', '14', '149', '14902', '草种', '苜蓿草种、箭舌豌豆草种、红豆草草种、草木犀草种、燕麦草种、多花黑麦草草种、披碱草草种、柠挑草种、沙打旺草种、锦鸡儿草种、老芒麦草种、羊柴草种、其他草种');
INSERT INTO `category_dictionary` VALUES ('219', '1', '14', '149', '14903', '其他盆景及园艺产品', '其他盆景及园艺产品');
INSERT INTO `category_dictionary` VALUES ('220', '1', '15', '150', '15000', '水果种植', '水果种植');
INSERT INTO `category_dictionary` VALUES ('221', '1', '15', '151', '15100', '仁果类和核果类水果种植', '仁果类和核果类水果种植');
INSERT INTO `category_dictionary` VALUES ('222', '1', '15', '151', '15101', '苹果', '红富士苹果、国光苹果、秦冠苹果、香蕉苹果、金冠苹果、元帅苹果、新红星苹果、其他苹果');
INSERT INTO `category_dictionary` VALUES ('223', '1', '15', '151', '15102', '梨', '雪花梨、鸭梨、酥梨、香梨、苹果梨、黄冠梨、绿宝石梨、冬果梨、贡梨、黄花梨、玉露香、其他梨');
INSERT INTO `category_dictionary` VALUES ('224', '1', '15', '151', '15103', '其他仁果类', '红果、山楂');
INSERT INTO `category_dictionary` VALUES ('225', '1', '15', '151', '15104', '核果类水果', '桃、樱桃、枣、李子、石榴、杏、杨梅');
INSERT INTO `category_dictionary` VALUES ('226', '1', '15', '151', '15105', '水果籽（部分）', '杏核等');
INSERT INTO `category_dictionary` VALUES ('227', '1', '15', '151', '15106', '农户仁果类和核果类水果种植、加工一体的果酒及水果产品的生产', '农户仁果类和核果类水果种植、加工一体的果酒及水果产品的生产');
INSERT INTO `category_dictionary` VALUES ('228', '1', '15', '152', '15200', '葡萄种植', '葡萄种植');
INSERT INTO `category_dictionary` VALUES ('229', '1', '15', '152', '15201', '葡萄', '巨峰葡萄、玫瑰香葡萄、白葡萄、龙眼葡萄、木纳格葡萄、红提葡萄、酿造葡萄、其他葡萄');
INSERT INTO `category_dictionary` VALUES ('230', '1', '15', '152', '15202', '葡萄籽', '葡萄籽');
INSERT INTO `category_dictionary` VALUES ('231', '1', '15', '152', '15203', '农户葡萄种植、加工一体的葡萄酒生产及葡萄产品加工', '农户葡萄种植、加工一体的葡萄酒生产及葡萄产品加工');
INSERT INTO `category_dictionary` VALUES ('232', '1', '15', '153', '15300', '柑橘类种植', '柑橘类种植');
INSERT INTO `category_dictionary` VALUES ('233', '1', '15', '153', '15301', '橘', '橘');
INSERT INTO `category_dictionary` VALUES ('234', '1', '15', '153', '15302', '柑', '柑');
INSERT INTO `category_dictionary` VALUES ('235', '1', '15', '153', '15303', '橙', '橙');
INSERT INTO `category_dictionary` VALUES ('236', '1', '15', '153', '15304', '柚类', '柚类');
INSERT INTO `category_dictionary` VALUES ('237', '1', '15', '153', '15305', '金柑', '金柑');
INSERT INTO `category_dictionary` VALUES ('238', '1', '15', '153', '15306', '柠檬', '柠檬');
INSERT INTO `category_dictionary` VALUES ('239', '1', '15', '153', '15307', '其他柑橘类水果', '其他柑橘类水果');
INSERT INTO `category_dictionary` VALUES ('240', '1', '15', '154', '15400', '香蕉等亚热带水果种植', '香蕉等亚热带水果种植');
INSERT INTO `category_dictionary` VALUES ('241', '1', '15', '154', '15401', '香蕉', '香蕉');
INSERT INTO `category_dictionary` VALUES ('242', '1', '15', '154', '15402', '菠萝', '菠萝');
INSERT INTO `category_dictionary` VALUES ('243', '1', '15', '154', '15403', '龙眼', '龙眼');
INSERT INTO `category_dictionary` VALUES ('244', '1', '15', '154', '15404', '荔枝', '荔枝');
INSERT INTO `category_dictionary` VALUES ('245', '1', '15', '154', '15405', '枇杷', '枇杷');
INSERT INTO `category_dictionary` VALUES ('246', '1', '15', '154', '15406', '红毛丹', '红毛丹');
INSERT INTO `category_dictionary` VALUES ('247', '1', '15', '154', '15407', '芒果', '芒果');
INSERT INTO `category_dictionary` VALUES ('248', '1', '15', '154', '15408', '橄榄', '橄榄');
INSERT INTO `category_dictionary` VALUES ('249', '1', '15', '154', '15409', '无花果', '无花果');
INSERT INTO `category_dictionary` VALUES ('250', '1', '15', '154', '15410', '鳄梨', '鳄梨');
INSERT INTO `category_dictionary` VALUES ('251', '1', '15', '154', '15411', '番石榴', '番石榴');
INSERT INTO `category_dictionary` VALUES ('252', '1', '15', '154', '15412', '山竹果', '山竹果');
INSERT INTO `category_dictionary` VALUES ('253', '1', '15', '154', '15413', '杨桃', '杨桃');
INSERT INTO `category_dictionary` VALUES ('254', '1', '15', '154', '15414', '莲雾', '莲雾');
INSERT INTO `category_dictionary` VALUES ('255', '1', '15', '154', '15415', '火龙果', '火龙果');
INSERT INTO `category_dictionary` VALUES ('256', '1', '15', '154', '15416', '木瓜', '木瓜');
INSERT INTO `category_dictionary` VALUES ('257', '1', '15', '154', '15417', '其他亚热带水果', '其他亚热带水果');
INSERT INTO `category_dictionary` VALUES ('258', '1', '15', '154', '15418', '农户亚热带水果种植、加工一体的果酒及水果产品的生产', '农户亚热带水果种植、加工一体的果酒及水果产品的生产');
INSERT INTO `category_dictionary` VALUES ('259', '1', '15', '159', '15900', '其他水果种植', '其他水果种植');
INSERT INTO `category_dictionary` VALUES ('260', '1', '15', '159', '15901', '西瓜', '麒麟、京秀、黑金刚、黑美人、红小玉、黄小玉、特小凤、无籽西瓜、其他西瓜');
INSERT INTO `category_dictionary` VALUES ('261', '1', '15', '159', '15902', '甜瓜', '哈蜜瓜、华莱士瓜、香瓜、伊利沙白瓜、金瓜、其他类甜瓜');
INSERT INTO `category_dictionary` VALUES ('262', '1', '15', '159', '15903', '其他水果', '柿子、草莓、黑莓、桑椹、猕猴桃、沙棘、其他未列明水果');
INSERT INTO `category_dictionary` VALUES ('263', '1', '15', '159', '15904', '其他水果籽', '其他水果籽');
INSERT INTO `category_dictionary` VALUES ('264', '1', '15', '159', '15905', '农户其他水果种植、加工一体的果酒及其他水果产品的生产', '农户其他水果种植、加工一体的果酒及其他水果产品的生产');
INSERT INTO `category_dictionary` VALUES ('265', '1', '16', '160', '16000', '坚果、含油果、香料和饮料作物种植', '坚果、含油果、香料和饮料作物种植');
INSERT INTO `category_dictionary` VALUES ('266', '1', '16', '161', '16100', '坚果种植', '坚果种');
INSERT INTO `category_dictionary` VALUES ('267', '1', '16', '161', '16101', '腰果', '腰果');
INSERT INTO `category_dictionary` VALUES ('268', '1', '16', '161', '16102', '核桃', '核桃');
INSERT INTO `category_dictionary` VALUES ('269', '1', '16', '161', '16103', '山核桃', '山核桃');
INSERT INTO `category_dictionary` VALUES ('270', '1', '16', '161', '16104', '栗子', '板栗、锥栗、丹东栗、其他栗子');
INSERT INTO `category_dictionary` VALUES ('271', '1', '16', '161', '16105', '松子', '松子');
INSERT INTO `category_dictionary` VALUES ('272', '1', '16', '161', '16106', '榛子', '榛子');
INSERT INTO `category_dictionary` VALUES ('273', '1', '16', '161', '16107', '开心果', '阿月浑子果、开心果');
INSERT INTO `category_dictionary` VALUES ('274', '1', '16', '161', '16108', '槟榔', '槟榔');
INSERT INTO `category_dictionary` VALUES ('275', '1', '16', '161', '16109', '白果', '白果');
INSERT INTO `category_dictionary` VALUES ('276', '1', '16', '161', '16110', '香榧', '香榧');
INSERT INTO `category_dictionary` VALUES ('277', '1', '16', '161', '16111', '巴旦杏', '巴旦杏');
INSERT INTO `category_dictionary` VALUES ('278', '1', '16', '161', '16112', '夏威夷果', '夏威夷果');
INSERT INTO `category_dictionary` VALUES ('279', '1', '16', '161', '16113', '其他坚果', '其他坚果');
INSERT INTO `category_dictionary` VALUES ('280', '1', '16', '161', '16114', '农户坚果种植、加工一体的果酒及坚果产品的生产', '农户坚果种植、加工一体的果酒及坚果产品的生产');
INSERT INTO `category_dictionary` VALUES ('281', '1', '16', '162', '16200', '含油果种植', '含油果种植');
INSERT INTO `category_dictionary` VALUES ('282', '1', '16', '162', '16201', '油棕果及油棕仁', '种用油棕果及油棕仁、其他油棕果及油棕仁');
INSERT INTO `category_dictionary` VALUES ('283', '1', '16', '162', '16202', '椰子', '椰子');
INSERT INTO `category_dictionary` VALUES ('284', '1', '16', '162', '16203', '油橄榄果', '油橄榄果');
INSERT INTO `category_dictionary` VALUES ('285', '1', '16', '163', '16300', '香料作物种植', '香料作物种植');
INSERT INTO `category_dictionary` VALUES ('286', '1', '16', '163', '16301', '调味香料', '花椒、胡椒、八椒、桂皮、桂花、丁香、豆蔻、小茴香、咖喱、枯茗子、蒿子、杜松果、其他调味香料');
INSERT INTO `category_dictionary` VALUES ('287', '1', '16', '163', '16302', '香味料', '香子兰、香茅草、薄菏油、留兰香、啤酒花、番红花、姜黄、麝香草、月桂叶、其他香味料');
INSERT INTO `category_dictionary` VALUES ('288', '1', '16', '164', '16400', '茶叶种植', '茶叶种植');
INSERT INTO `category_dictionary` VALUES ('289', '1', '16', '164', '16401', '茶树', '用于生产红茶、绿茶、白茶、黄茶、青茶（铁观音、乌龙茶、其他青茶）、黑茶（普洱茶、其他黑茶）以及其他茶叶的各种茶树种植');
INSERT INTO `category_dictionary` VALUES ('290', '1', '16', '169', '16900', '其他饮料作物种植', '其他饮料作物种植');
INSERT INTO `category_dictionary` VALUES ('291', '1', '16', '169', '16901', '其他饮料原料', '可可豆、咖啡豆、其他未列明饮料原料');
INSERT INTO `category_dictionary` VALUES ('292', '1', '17', '170', '17000', '中药材种植', '中药材种植');
INSERT INTO `category_dictionary` VALUES ('293', '1', '17', '171', '17100', '中草药种植', '中草药种植');
INSERT INTO `category_dictionary` VALUES ('294', '1', '17', '171', '17101', '各种中草药材', '冬虫夏草、甘草、人参、古柯叶、罂粟秆、当归、田七、党参、黄连、菊花、贝母、川芎、半夏、白芍、天麻、黄芪、大黄、籽黄、白术、地黄、槐米、杜仲、茯苓、枸杞、大海子、沉香、沙参、青蒿、鱼藤根、除虫菊、灵芝、五味子、刺五加、生地、麦冬、云木香、白芷、元胡、山茱萸、莲翘、辛荑、厚朴、黄芩、葛根、柴胡、麻黄、列当、肉苁蓉、锁阳、罗布麻');
INSERT INTO `category_dictionary` VALUES ('295', '1', '17', '179', '17900', '其他中药材种植', '其他中药材种植');
INSERT INTO `category_dictionary` VALUES ('296', '1', '17', '179', '17901', '其他中草药材', '其他中草药材');
INSERT INTO `category_dictionary` VALUES ('297', '1', '18', '180', '18000', '草种植及割草', '草种植及割草');
INSERT INTO `category_dictionary` VALUES ('298', '1', '18', '181', '18100', '草种植', '草种植');
INSERT INTO `category_dictionary` VALUES ('299', '1', '18', '181', '18101', '多年生饲草', '苜蓿、无芒雀麦、披碱草、老芒麦、狼尾草（象草、王草）、多年生黑麦草、三叶草、红豆草、沙打旺、鸭茅、羊茅、羊草、冰草、苏丹草、猫尾草、雀稗、早熟禾、牛鞭草、碱茅、多年生狗尾草、胡枝子、野豌豆、柠条、羊柴、柱花草');
INSERT INTO `category_dictionary` VALUES ('300', '1', '18', '181', '18102', '一年生饲草', '多花黑麦草、全株青贮玉米、高丹草、草高粱、小黑麦、草谷子、一年生狗尾草、苕子、箭筈豌豆、草木樨、苦荬菜、墨西哥类玉米、籽粒苋、紫云英');
INSERT INTO `category_dictionary` VALUES ('301', '1', '18', '181', '18103', '其他草的种植', '其他草的种植');
INSERT INTO `category_dictionary` VALUES ('302', '1', '18', '182', '18200', '天然草原割草', '天然草原割草');
INSERT INTO `category_dictionary` VALUES ('303', '1', '18', '182', '18201', '天然草原刈割收获牧草', '天然草原刈割收获牧草');
INSERT INTO `category_dictionary` VALUES ('304', '1', '18', '182', '18202', '改良草场刈割收获牧草', '改良草场刈割收获牧草');
INSERT INTO `category_dictionary` VALUES ('305', '1', '18', '182', '18203', '其他天然草的刈割收获', '其他天然草的刈割收获');
INSERT INTO `category_dictionary` VALUES ('306', '1', '19', '190', '19000', '其他农业', '其他农业');
INSERT INTO `category_dictionary` VALUES ('307', '1', '19', '190', '19001', '水生植物类', '芦苇、席草、苇子、蒲草、其他水生植物类');
INSERT INTO `category_dictionary` VALUES ('308', '1', '19', '190', '19002', '部分农作物副产品', '部分作物茎、秆、根（其他作物茎、杆、根）');
INSERT INTO `category_dictionary` VALUES ('309', '1', '19', '190', '19003', '其他农作物副产品', '其他农作物副产品');
INSERT INTO `category_dictionary` VALUES ('310', '2', '20', '200', '20000', '林业', '林业');
INSERT INTO `category_dictionary` VALUES ('311', '2', '21', '210', '21000', '林木育种和育苗', '林木育种和育苗');
INSERT INTO `category_dictionary` VALUES ('312', '2', '21', '211', '21100', '林木育种', '林木育种');
INSERT INTO `category_dictionary` VALUES ('313', '2', '21', '211', '21101', '针叶乔木树种种子', '杉树种子、柏树种子、松树种子、银杏种子、其他针叶乔木树种种子');
INSERT INTO `category_dictionary` VALUES ('314', '2', '21', '211', '21102', '阔叶乔木树种种子', '槭树类种子、枫树类种子、冬青树类种子、桦树类种子、木棉树类种子、榛树类种子、榆树类种子、楠木类种子、樟树类种子、相思类种子、壳斗科类种子、其他阔叶乔木树种种子');
INSERT INTO `category_dictionary` VALUES ('315', '2', '21', '211', '21103', '灌木种子', '蕃荔枝类灌木种子、夹竹桃类灌木种子、冬青类灌木种子、小檗类灌木种子、榛树类灌木种子、胡枝子灌木种子、沙棘类灌木种子、马棘类灌木种子、其他灌木种子');
INSERT INTO `category_dictionary` VALUES ('316', '2', '21', '211', '21104', '藤木种子', '棕榈藤种子、其他藤木种子');
INSERT INTO `category_dictionary` VALUES ('317', '2', '21', '211', '21105', '其他林木种子', '其他林木种子');
INSERT INTO `category_dictionary` VALUES ('318', '2', '21', '212', '21200', '林木育苗', '林木育苗');
INSERT INTO `category_dictionary` VALUES ('319', '2', '21', '212', '21201', '针叶乔木苗类', '杉树树苗、柏树树苗、松树树苗、银杏树苗、其他针叶乔木树苗');
INSERT INTO `category_dictionary` VALUES ('320', '2', '21', '212', '21202', '阔叶乔木苗类', '槭树类树苗、枫树类树苗、冬青树类树苗、桦树类树苗、木棉树类树苗、榛树类树苗、杨树类树苗、柳树类树苗、樟树类树苗、楠木类树苗、榆树类树苗、桂花树苗、相思类树苗、壳斗科类树苗、其他阔叶乔木树苗');
INSERT INTO `category_dictionary` VALUES ('321', '2', '21', '212', '21203', '果树苗', '苹果树苗、梨树苗、葡萄树苗、柑橘树苗、桃树苗、其他果树苗');
INSERT INTO `category_dictionary` VALUES ('322', '2', '21', '212', '21204', '竹苗', '毛竹苗、撑蒿竹苗、水竹苗、淡竹苗、慈竹苗、红壳竹苗、绿竹苗、其他竹苗');
INSERT INTO `category_dictionary` VALUES ('323', '2', '21', '212', '21205', '灌木树苗', '蕃荔枝类灌木树苗、夹竹桃类灌木树苗、冬青类灌木树苗、小檗类灌木树苗、桦木及杨树类灌木树苗、其他灌木树苗');
INSERT INTO `category_dictionary` VALUES ('324', '2', '21', '212', '21206', '茶树苗木', '茶树品种扦插育苗');
INSERT INTO `category_dictionary` VALUES ('325', '2', '21', '212', '21207', '其他林木养育', '其他林木养育');
INSERT INTO `category_dictionary` VALUES ('326', '2', '22', '220', '22000', '造林和更新', '造林和更新');
INSERT INTO `category_dictionary` VALUES ('327', '2', '22', '220', '22001', '人工造林服务', '人工造林服务');
INSERT INTO `category_dictionary` VALUES ('328', '2', '22', '220', '22002', '飞播造林服务', '飞播造林服务');
INSERT INTO `category_dictionary` VALUES ('329', '2', '22', '220', '22003', '其他造林服务', '其他造林服务');
INSERT INTO `category_dictionary` VALUES ('330', '2', '23', '230', '23000', '森林经营、管护和改培', '森林经营、管护和改培');
INSERT INTO `category_dictionary` VALUES ('331', '2', '23', '231', '23100', '森林经营和管护', '森林经营和管护');
INSERT INTO `category_dictionary` VALUES ('332', '2', '23', '231', '23101', '从幼林郁闭成林到林分成熟前根据培育目标所采取的抚育采伐、补植、修枝、除草、割灌（藤）、浇水、施肥、人工促进天然更新等各种森林抚育措施', '从幼林郁闭成林到林分成熟前根据培育目标所采取的抚育采伐、补植、修枝、除草、割灌（藤）、浇水、施肥、人工促进天然更新等各种森林抚育措施');
INSERT INTO `category_dictionary` VALUES ('333', '2', '23', '231', '23102', '对林木进行的松土、培蔸、割灌、除草等管护活动', '对林木进行的松土、培蔸、割灌、除草等管护活动');
INSERT INTO `category_dictionary` VALUES ('334', '2', '23', '231', '23103', '其他未列明的森林经营和管护活动', '其他未列明的森林经营和管护活动');
INSERT INTO `category_dictionary` VALUES ('335', '2', '23', '232', '23200', '森林改培', '森林改培');
INSERT INTO `category_dictionary` VALUES ('336', '2', '23', '232', '23201', '树种结构调整', '树种结构调整');
INSERT INTO `category_dictionary` VALUES ('337', '2', '23', '232', '23202', '补植补播', '补植补播');
INSERT INTO `category_dictionary` VALUES ('338', '2', '23', '232', '23203', '封山育林', '封山育林');
INSERT INTO `category_dictionary` VALUES ('339', '2', '23', '232', '23204', '林分抚育', '林分抚育');
INSERT INTO `category_dictionary` VALUES ('340', '2', '23', '232', '23205', '嫁接复壮等营林措施', '嫁接复壮等营林措施');
INSERT INTO `category_dictionary` VALUES ('341', '2', '23', '232', '23206', '其他未列明的森林改培活动', '其他未列明的森林改培活动');
INSERT INTO `category_dictionary` VALUES ('342', '2', '24', '240', '24000', '木材和竹材采运', '对林木和竹木的采伐，并将其运出山场至贮木场的生产活动');
INSERT INTO `category_dictionary` VALUES ('343', '2', '24', '241', '24100', '木材采运', '木材采运');
INSERT INTO `category_dictionary` VALUES ('344', '2', '24', '241', '24101', '针叶原木', '红松原木、樟子松原木、白松（云杉和冷杉）原木、辐射松原木、落叶松原木、马尾松原木、云南松原木、杉木原条、其他针叶原木');
INSERT INTO `category_dictionary` VALUES ('345', '2', '24', '241', '24102', '非针叶原木', '栎木（橡木）原木、山毛榉木原木、楠木原木、樟木原木、泡桐木原木、杨树原木、水曲柳原木、胡桃楸原木、柞木原木、桦木原木、榆木原木、柳木原木、椴木原木、桉树原木、其他非针叶原木');
INSERT INTO `category_dictionary` VALUES ('346', '2', '24', '241', '24103', '小规格木材', '针叶木小规格木材、其他木小规格木材');
INSERT INTO `category_dictionary` VALUES ('347', '2', '24', '241', '24104', '薪材', '薪材');
INSERT INTO `category_dictionary` VALUES ('348', '2', '24', '241', '24105', '短条及细枝等', '短条及细枝等');
INSERT INTO `category_dictionary` VALUES ('349', '2', '24', '242', '24200', '竹材采运', '竹材采运');
INSERT INTO `category_dictionary` VALUES ('350', '2', '24', '242', '24201', '砍伐的竹材', '毛竹、撑蒿竹、水竹、淡竹、慈竹、红壳竹、其他竹材');
INSERT INTO `category_dictionary` VALUES ('351', '2', '24', '242', '24202', '林区竹材运输服务', '林区竹材运输服务');
INSERT INTO `category_dictionary` VALUES ('352', '2', '24', '242', '24203', '其他竹材采伐产品', '其他竹材采伐产品');
INSERT INTO `category_dictionary` VALUES ('353', '2', '25', '250', '25000', '林产品采集:指在天然林地和人工林地进行的各种林木产品和其他野生植物的采集等活动。', '林产品采集:指在天然林地和人工林地进行的各种林木产品和其他野生植物的采集等活动');
INSERT INTO `category_dictionary` VALUES ('354', '2', '25', '251', '25100', '木竹材林产品采集', '木竹材林产品采集');
INSERT INTO `category_dictionary` VALUES ('355', '2', '25', '251', '25101', '木竹编结用原料', '藤条、柳条、柠条、荆条、桑条');
INSERT INTO `category_dictionary` VALUES ('356', '2', '25', '251', '25102', '木竹野生植物活体', '野生乔木、野生灌木、野生藤木、野生菌类');
INSERT INTO `category_dictionary` VALUES ('357', '2', '25', '252', '25200', '非木竹材林产品采集', '非木竹材林产品采集');
INSERT INTO `category_dictionary` VALUES ('358', '2', '25', '252', '25201', '天然橡胶', '天然橡胶乳、烟胶片、胶清片、白皱片、褐胶片、标准胶片、其他天然橡胶');
INSERT INTO `category_dictionary` VALUES ('359', '2', '25', '252', '25202', '天然树脂、树胶', '天然生漆、天然松脂、虫胶、桃胶、冷杉胶、其他天然树脂、树胶');
INSERT INTO `category_dictionary` VALUES ('360', '2', '25', '252', '25203', '栲胶原料', '落叶松树皮、杨梅树皮、油柑树皮、檞树皮、木麻黄树皮、黑荆树皮、橡碗、化香果、其他栲胶原料');
INSERT INTO `category_dictionary` VALUES ('361', '2', '25', '252', '25204', '非直接食用果类', '油桐籽、油茶籽、沙棘果、乌桕子、文冠果、山苍籽、黑椋子、麻风树果（小桐子）、黄连木果、光皮梾（光皮树）果、其他非直接食用果类');
INSERT INTO `category_dictionary` VALUES ('362', '2', '25', '252', '25205', '非木竹编结用原料', '灯心草、菖蒲、葵叶、其他编织用原料');
INSERT INTO `category_dictionary` VALUES ('363', '2', '25', '252', '25206', '染色、鞣革用植物原料', '五倍子、地衣、蓝靛、薯茛、其他染色、鞣革用植物原料');
INSERT INTO `category_dictionary` VALUES ('364', '2', '25', '252', '25207', '非木竹野生植物活体', '野生蕨菜、野生发菜、野生薇菜、野生锁阳、其他野生植物活体');
INSERT INTO `category_dictionary` VALUES ('365', '2', '25', '252', '25208', '野生植物采集产品', '野生植物根、野生植物茎、野生植物叶、野生植物花、野生植物果实、其他野生植物采集产品');
INSERT INTO `category_dictionary` VALUES ('366', '2', '25', '252', '25209', '其他林产品', '未加工天然软木、棕片、竹笋干、黄柏桕、山苍子、桉树叶、其他未列明林产品');
INSERT INTO `category_dictionary` VALUES ('367', '3', '30', '300', '30000', '畜牧业', '为了获得各种畜禽产品而从事的动物饲养、捕捉活动');
INSERT INTO `category_dictionary` VALUES ('368', '3', '31', '310', '31000', '牲畜饲养', '牲畜饲养');
INSERT INTO `category_dictionary` VALUES ('369', '3', '31', '311', '31100', '牛的饲养', '牛的饲养');
INSERT INTO `category_dictionary` VALUES ('370', '3', '31', '311', '31101', '牛', '种牛、黄牛、水牛、奶牛、肉牛、牦牛、牛犊、能繁殖母牛、其他牛');
INSERT INTO `category_dictionary` VALUES ('371', '3', '31', '311', '31102', '生牛奶', '生牛奶');
INSERT INTO `category_dictionary` VALUES ('372', '3', '31', '311', '31103', '生乳', '生乳');
INSERT INTO `category_dictionary` VALUES ('373', '3', '31', '311', '31104', '同一农（牧）场或农户生产加工的生牛奶以及奶酪、黄油等', '同一农（牧）场或农户生产加工的生牛奶以及奶酪、黄油等');
INSERT INTO `category_dictionary` VALUES ('374', '3', '31', '311', '31105', '同一农（牧）场或农户生产加工的牛毛', '同一农（牧）场或农户生产加工的牛毛');
INSERT INTO `category_dictionary` VALUES ('375', '3', '31', '311', '31106', '牦牛毛（牦牛绒）', '牦牛毛（牦牛绒）');
INSERT INTO `category_dictionary` VALUES ('376', '3', '31', '312', '31200', '马的饲养', '马的饲养');
INSERT INTO `category_dictionary` VALUES ('377', '3', '31', '312', '31201', '马', '种马、马驹、其他马');
INSERT INTO `category_dictionary` VALUES ('378', '3', '31', '312', '31202', '马毛', '马鬃、马尾、其他马毛');
INSERT INTO `category_dictionary` VALUES ('379', '3', '31', '312', '31203', '生马奶', '生马奶');
INSERT INTO `category_dictionary` VALUES ('380', '3', '31', '312', '31204', '同一农（牧）场或农户生产加工的生马奶', '同一农（牧）场或农户生产加工的生马奶');
INSERT INTO `category_dictionary` VALUES ('381', '3', '31', '312', '31205', '同一农（牧）场或农户生产加工的马毛', '同一农（牧）场或农户生产加工的马毛');
INSERT INTO `category_dictionary` VALUES ('382', '3', '31', '312', '31206', '整张生马皮', '整张生马皮');
INSERT INTO `category_dictionary` VALUES ('383', '3', '31', '313', '31300', '猪的饲养', '猪的饲养');
INSERT INTO `category_dictionary` VALUES ('384', '3', '31', '313', '31301', '猪', '种猪、仔猪、中猪、能繁殖母猪、其他猪');
INSERT INTO `category_dictionary` VALUES ('385', '3', '31', '313', '31302', '生皮（部分）', '整张生猪皮');
INSERT INTO `category_dictionary` VALUES ('386', '3', '31', '313', '31303', '猪鬃', '猪鬃');
INSERT INTO `category_dictionary` VALUES ('387', '3', '31', '314', '31400', '羊的饲养', '羊的饲养');
INSERT INTO `category_dictionary` VALUES ('388', '3', '31', '314', '31401', '绵羊', '细毛羊、半细毛羊、种绵羊、能繁殖母绵羊、其他绵羊');
INSERT INTO `category_dictionary` VALUES ('389', '3', '31', '314', '31402', '山羊', '种山羊、奶山羊、种绒山羊、绒山羊、能繁殖母山羊、其他山羊');
INSERT INTO `category_dictionary` VALUES ('390', '3', '31', '314', '31403', '能繁殖母羊', '能繁殖母羊');
INSERT INTO `category_dictionary` VALUES ('391', '3', '31', '314', '31404', '羔羊', '羔羊');
INSERT INTO `category_dictionary` VALUES ('392', '3', '31', '314', '31405', '绵羊毛（部分）', '细羊毛、半细羊毛、剪羊毛');
INSERT INTO `category_dictionary` VALUES ('393', '3', '31', '314', '31406', '山羊绒', '山羊绒');
INSERT INTO `category_dictionary` VALUES ('394', '3', '31', '314', '31407', '整张羔羊生毛皮', '整张羔羊生毛皮');
INSERT INTO `category_dictionary` VALUES ('395', '3', '31', '314', '31408', '制刷用山羊毛', '制刷用山羊毛');
INSERT INTO `category_dictionary` VALUES ('396', '3', '31', '314', '31409', '同一农（牧）场或农户生产加工的生羊奶', '同一农（牧）场或农户生产加工的生羊奶');
INSERT INTO `category_dictionary` VALUES ('397', '3', '31', '314', '31410', '同一农（牧）场或农户生产加工的绵羊毛、山羊毛、制刷用山羊毛，以及羔羊整张毛皮', '同一农（牧）场或农户生产加工的绵羊毛、山羊毛、制刷用山羊毛，以及羔羊整张毛皮');
INSERT INTO `category_dictionary` VALUES ('398', '3', '31', '315', '31500', '骆驼饲养', '骆驼饲养');
INSERT INTO `category_dictionary` VALUES ('399', '3', '31', '315', '31501', '骆驼', '骆驼');
INSERT INTO `category_dictionary` VALUES ('400', '3', '31', '315', '31502', '骆驼毛', '骆驼粗毛、骆驼绒');
INSERT INTO `category_dictionary` VALUES ('401', '3', '31', '315', '31503', '同一农（牧）场或农户生产加工的骆驼毛', '同一农（牧）场或农户生产加工的骆驼毛');
INSERT INTO `category_dictionary` VALUES ('402', '3', '31', '315', '31504', '其他骆驼的饲养活动及相关初级产品', '其他骆驼的饲养活动及相关初级产品');
INSERT INTO `category_dictionary` VALUES ('403', '3', '31', '319', '31900', '其他牲畜饲养', '其他牲畜饲养');
INSERT INTO `category_dictionary` VALUES ('404', '3', '31', '319', '31901', '驴', '种驴、其他驴');
INSERT INTO `category_dictionary` VALUES ('405', '3', '31', '319', '31902', '骡', '骡');
INSERT INTO `category_dictionary` VALUES ('406', '3', '31', '319', '31903', '其他活牲畜', '其他活牲畜');
INSERT INTO `category_dictionary` VALUES ('407', '3', '31', '319', '31904', '同一农（牧）场或农户生产加工的其他牲畜毛', '同一农（牧）场或农户生产加工的其他牲畜毛');
INSERT INTO `category_dictionary` VALUES ('408', '3', '32', '320', '32000', '家禽饲养', '家禽饲养');
INSERT INTO `category_dictionary` VALUES ('409', '3', '32', '321', '32100', '鸡的饲养', '鸡的饲养');
INSERT INTO `category_dictionary` VALUES ('410', '3', '32', '321', '32101', '蛋鸡', '种蛋鸡、其他蛋鸡');
INSERT INTO `category_dictionary` VALUES ('411', '3', '32', '321', '32102', '雏鸡', '种雏鸡、肉雏鸡、蛋雏鸡、其他雏鸡');
INSERT INTO `category_dictionary` VALUES ('412', '3', '32', '321', '32103', '肉鸡', '种肉鸡、黄羽肉鸡、白羽肉鸡、其他肉鸡');
INSERT INTO `category_dictionary` VALUES ('413', '3', '32', '321', '32104', '其他活鸡', '其他种用活鸡、其他未列明活鸡');
INSERT INTO `category_dictionary` VALUES ('414', '3', '32', '321', '32105', '鸡蛋', '种用鸡蛋、其他鲜鸡蛋');
INSERT INTO `category_dictionary` VALUES ('415', '3', '32', '322', '32200', '鸭的饲养', '鸭的饲养');
INSERT INTO `category_dictionary` VALUES ('416', '3', '32', '322', '32201', '雏鸭', '种用雏鸭、其他雏鸭');
INSERT INTO `category_dictionary` VALUES ('417', '3', '32', '322', '32202', '成鸭', '种用成鸭、其他成鸭');
INSERT INTO `category_dictionary` VALUES ('418', '3', '32', '322', '32203', '鸭蛋', '种用鸭蛋、其他鲜鸭蛋');
INSERT INTO `category_dictionary` VALUES ('419', '3', '32', '323', '32300', '鹅的饲养', '鹅的饲养');
INSERT INTO `category_dictionary` VALUES ('420', '3', '32', '323', '32301', '雏鹅', '种用雏鹅、其他雏鹅');
INSERT INTO `category_dictionary` VALUES ('421', '3', '32', '323', '32302', '成鹅', '种用成鹅、其他成鹅');
INSERT INTO `category_dictionary` VALUES ('422', '3', '32', '323', '32303', '鹅蛋', '种用鹅蛋、其他鲜鹅蛋');
INSERT INTO `category_dictionary` VALUES ('423', '3', '32', '329', '32900', '其他家禽饲养', '其他家禽饲养');
INSERT INTO `category_dictionary` VALUES ('424', '3', '32', '329', '32901', '活火鸡', '雏火鸡（种用雏火鸡、其他雏火鸡）、成火鸡（种用成火鸡、其他成火鸡）');
INSERT INTO `category_dictionary` VALUES ('425', '3', '32', '329', '32902', '活珍珠鸡', '雏珍珠鸡（种用雏珍珠鸡、其他雏珍珠鸡）、成珍珠鸡（种用成珍珠鸡、其他成珍珠鸡）');
INSERT INTO `category_dictionary` VALUES ('426', '3', '32', '329', '32903', '其他活家禽', '鸽子、鸵鸟、野鸭、鹌鹑、其他未列明活家禽');
INSERT INTO `category_dictionary` VALUES ('427', '3', '32', '329', '32904', '禽蛋（部分）', '鹌鹑蛋（种用鹌鹑蛋、其他鲜鹌鹑蛋）、其他禽蛋');
INSERT INTO `category_dictionary` VALUES ('428', '3', '33', '330', '33000', '狩猎和捕捉动物', '狩猎和捕捉动物');
INSERT INTO `category_dictionary` VALUES ('429', '3', '33', '330', '33001', '野生动物', '野兔、狐狸、其他野生动物');
INSERT INTO `category_dictionary` VALUES ('430', '3', '33', '330', '33002', '野生鸟类', '水禽、雉鸡、野鸡、其他野生鸟类');
INSERT INTO `category_dictionary` VALUES ('431', '3', '33', '330', '33003', '爬行动物', '食用爬行动物、其他爬行动物');
INSERT INTO `category_dictionary` VALUES ('432', '3', '33', '330', '33004', '来自猎取和捕捉活动中的兽皮和爬行动物、鸟类毛皮等的生产', '来自猎取和捕捉活动中的兽皮和爬行动物、鸟类毛皮等的生产');
INSERT INTO `category_dictionary` VALUES ('433', '3', '33', '330', '33005', '整张爬行动物皮', '整张爬行动物皮');
INSERT INTO `category_dictionary` VALUES ('434', '3', '33', '330', '33006', '整张狐生毛皮', '整张狐生毛皮');
INSERT INTO `category_dictionary` VALUES ('435', '3', '33', '330', '33007', '其他捕获野生动物和有关的服务活动', '其他捕获野生动物和有关的服务活动');
INSERT INTO `category_dictionary` VALUES ('436', '3', '39', '390', '39000', '其他畜牧业', '其他畜牧业');
INSERT INTO `category_dictionary` VALUES ('437', '3', '39', '391', '39100', '兔的饲养', '兔的饲养');
INSERT INTO `category_dictionary` VALUES ('438', '3', '39', '391', '39101', '种用家兔', '种用家兔');
INSERT INTO `category_dictionary` VALUES ('439', '3', '39', '391', '39102', '非种用家兔', '毛兔、皮兔、肉兔');
INSERT INTO `category_dictionary` VALUES ('440', '3', '39', '392', '39200', '蜜蜂饲养', '蜜蜂饲养');
INSERT INTO `category_dictionary` VALUES ('441', '3', '39', '392', '39201', '蜜蜂', '蜂王、雄蜂、工蜂');
INSERT INTO `category_dictionary` VALUES ('442', '3', '39', '392', '39202', '天然蜂蜜', '天然蜂蜜');
INSERT INTO `category_dictionary` VALUES ('443', '3', '39', '392', '39203', '蜂蜡', '蜂蜡');
INSERT INTO `category_dictionary` VALUES ('444', '3', '39', '392', '39204', '鲜蜂王浆', '鲜蜂王浆');
INSERT INTO `category_dictionary` VALUES ('445', '3', '39', '392', '39205', '其他天然蜂蜜及副产品', '其他天然蜂蜜及副产品');
INSERT INTO `category_dictionary` VALUES ('446', '3', '39', '399', '39900', '其他未列明畜牧业', '其他未列明畜牧业');
INSERT INTO `category_dictionary` VALUES ('447', '3', '39', '399', '39901', '蚕茧', '桑蚕茧、柞蚕茧、蓖麻蚕茧、其他蚕茧');
INSERT INTO `category_dictionary` VALUES ('448', '3', '39', '399', '39902', '驯鹿、梅花鹿、麝', '驯鹿、梅花鹿、麝');
INSERT INTO `category_dictionary` VALUES ('449', '3', '39', '399', '39903', '狐、貂', '狐、貂');
INSERT INTO `category_dictionary` VALUES ('450', '3', '39', '399', '39904', '其他动物毛类：兔毛、其他制刷用兽毛', '兔毛、其他制刷用兽毛');
INSERT INTO `category_dictionary` VALUES ('451', '3', '39', '399', '39905', '其他动物生皮', '其他动物生皮');
INSERT INTO `category_dictionary` VALUES ('452', '3', '39', '399', '39906', '其他动物生毛皮', '整张水貂生毛皮、整张兔生毛皮、其他生毛皮');
INSERT INTO `category_dictionary` VALUES ('453', '3', '39', '399', '39907', '其他畜禽产品', '麝香、鹿茸、燕窝、龟蛋、其他未列明畜禽产品');
INSERT INTO `category_dictionary` VALUES ('454', '3', '39', '399', '39908', '其他未列明养殖畜禽', '其他未列明养殖畜禽');
INSERT INTO `category_dictionary` VALUES ('455', '4', '40', '400', '40000', '渔业', '渔业');
INSERT INTO `category_dictionary` VALUES ('456', '4', '41', '410', '41000', '水产养殖', '水产养殖');
INSERT INTO `category_dictionary` VALUES ('457', '4', '41', '411', '41100', '海水养殖', '海水养殖');
INSERT INTO `category_dictionary` VALUES ('458', '4', '41', '411', '41101', '海水养殖鱼', '海水养殖观赏鱼、海水养殖鲈鱼、海水养殖石斑鱼、海水养殖美国红鱼、海水养殖鲆鱼、海水养殖大黄鱼、海水养殖军曹鱼、海水养殖鰤鱼、海水养殖鲷鱼、海水养殖河鲀、海水养殖鲽鱼、其他海水养殖活鱼');
INSERT INTO `category_dictionary` VALUES ('459', '4', '41', '411', '41102', '海水养殖虾', '海水养殖中国对虾、海水养殖南美白对虾、海水养殖斑节对虾、海水养殖日本对虾、海水养殖龙虾、其他海水养殖海虾');
INSERT INTO `category_dictionary` VALUES ('460', '4', '41', '411', '41103', '海水养殖蟹', '海水养殖梭子蟹、海水养殖青蟹、其他海水养殖蟹');
INSERT INTO `category_dictionary` VALUES ('461', '4', '41', '411', '41104', '海水养殖贝类', '海水养殖牡蛎、海水养殖扇贝、海水养殖贻贝、海水养殖江珧、海水养殖鲍、海水养殖螺、海水养殖蚶、海水养殖蛤、海水养殖蛏、其他海水养殖贝类');
INSERT INTO `category_dictionary` VALUES ('462', '4', '41', '411', '41105', '海水养殖藻类', '海水养殖海带、海水养殖紫菜、海水养殖裙带菜、海水养殖江蓠、海水养殖麒麟菜、海水养殖石花菜、海水养殖羊栖菜、海水养殖苔菜、其他海水养殖藻类');
INSERT INTO `category_dictionary` VALUES ('463', '4', '41', '411', '41106', '其他海水养殖产品', '海水养殖海参、海水养殖海胆、海水养殖珍珠、海水养殖海蜇、其他未列明海水养殖产品');
INSERT INTO `category_dictionary` VALUES ('464', '4', '41', '411', '41107', '海水养殖鱼苗', '海水养殖军曹鱼苗、海水养殖鰤鱼苗、海水养殖鲷鱼苗、海水养殖大黄鱼苗、海水养殖鲆鱼苗、海水养殖鲽鱼苗、海水养殖鳎鱼苗、海水养殖鲀鱼苗、其他海水养殖鱼苗');
INSERT INTO `category_dictionary` VALUES ('465', '4', '41', '411', '41108', '海水养殖虾种苗', '海水养殖对虾种苗、海水养殖中国对虾种苗、海水养殖南美白对虾种苗、海水养殖斑节对虾种苗、海水养殖日本对虾种苗、海水养殖龙虾种苗、其他海水养殖海虾种苗');
INSERT INTO `category_dictionary` VALUES ('466', '4', '41', '411', '41109', '海水养殖蟹苗', '海水养殖梭子蟹苗、海水养殖青蟹苗、其他海水养殖蟹苗');
INSERT INTO `category_dictionary` VALUES ('467', '4', '41', '411', '41110', '海水养殖贝类种苗', '海水养殖牡蛎种苗、海水养殖扇贝种苗、海水养殖贻贝种苗、海水养殖江珧种苗、海水养殖鲍种苗、海水养殖螺种苗、海水养殖蚶种苗、海水养殖蛤种苗、海水养殖蛏种苗、其他海水养殖贝类种苗');
INSERT INTO `category_dictionary` VALUES ('468', '4', '41', '411', '41111', '海水养殖藻类育苗', '海水养殖海带苗、海水养殖紫菜苗、海水养殖裙带菜苗、海水养殖江蓠苗、海水养殖麒麟菜苗、海水养殖石花菜苗、海水养殖羊栖菜苗、海水养殖苔菜苗、其他海水养殖藻类育苗');
INSERT INTO `category_dictionary` VALUES ('469', '4', '41', '411', '41112', '其他海水养殖产品种苗', '海水养殖海参苗、海水养殖海胆苗、海水养殖珍珠蚌、海水养殖海蜇苗、其他未列明海水养殖产品种苗');
INSERT INTO `category_dictionary` VALUES ('470', '4', '41', '412', '41200', '内陆养殖', '指在内陆水域进行的各种水生动植物的养殖');
INSERT INTO `category_dictionary` VALUES ('471', '4', '41', '412', '41201', '养殖淡水鱼', '养殖淡水观赏鱼、养殖淡水鳟鱼、养殖淡水鳗鲡、养殖淡水鲤鱼、养殖淡水草鱼、养殖淡水鳙鱼（胖头鱼）、养殖淡水鲟鱼、养殖淡水罗非鱼、养殖淡水河鲀、养殖淡水青鱼、养殖淡水鲢鱼、养殖淡水鲫鱼、养殖淡水鳊鲂、养殖淡水鲶鱼、养殖淡水鮰鱼、养殖淡水黄颡鱼、养殖淡水鲑鱼、养殖淡水池沼公鱼、养殖淡水银鱼、养殖淡水短盖巨脂鲤、养殖淡水长吻鮠、养殖淡水黄鳝、养殖淡水鳜鱼、养殖淡水鲈鱼、养殖淡水乌鳢、养殖淡水泥鳅、其他养殖淡水鱼');
INSERT INTO `category_dictionary` VALUES ('472', '4', '41', '412', '41202', '淡水养殖虾', '淡水养殖罗氏沼虾、淡水养殖青虾、淡水养殖克氏原鳌虾、淡水养殖南美白对虾、其他淡水养殖虾');
INSERT INTO `category_dictionary` VALUES ('473', '4', '41', '412', '41203', '淡水养殖蟹', '淡水养殖活河蟹、其他淡水养殖蟹');
INSERT INTO `category_dictionary` VALUES ('474', '4', '41', '412', '41204', '淡水养殖贝类', '淡水养殖河蚌、淡水养殖螺、淡水养殖蚬、其他淡水养殖贝类');
INSERT INTO `category_dictionary` VALUES ('475', '4', '41', '412', '41205', '其他淡水养殖产品', '淡水养殖龟、淡水养殖鳖、淡水养殖蛙、淡水养殖珍珠、淡水养殖螺旋藻、其他未列明淡水养殖产品');
INSERT INTO `category_dictionary` VALUES ('476', '4', '41', '412', '41206', '淡水养殖鱼苗', '鳟鱼苗、鳗鱼苗、鲤鱼苗、草鱼鱼苗、鳙鱼鱼苗、鲟鱼苗、罗非鱼苗、鲀鱼苗、青鱼苗、鲢鱼苗、鲫鱼苗、鳊鱼苗、鲶鱼苗、鮰鱼苗、黄颡鱼苗、鲑鱼苗、池沼公鱼苗、银鱼苗、短盖巨脂鲤苗、长吻鮠苗、黄鳝苗、鳜鱼苗、鲈鱼苗、乌鳢苗、泥鳅苗、其他淡水鱼苗');
INSERT INTO `category_dictionary` VALUES ('477', '4', '41', '412', '41207', '淡水养殖虾苗', '罗氏沼虾苗、青虾苗、克氏原鳌虾苗、南美白对虾苗、其他淡水养殖虾苗');
INSERT INTO `category_dictionary` VALUES ('478', '4', '41', '412', '41208', '淡水养殖蟹种苗', '中华绒毛蟹（大闸蟹）种苗、其他淡水养殖蟹种苗');
INSERT INTO `category_dictionary` VALUES ('479', '4', '41', '412', '41209', '淡水养殖贝壳种苗', '河蚌种苗、螺种苗、蚬种苗、其他淡水养殖贝壳种苗');
INSERT INTO `category_dictionary` VALUES ('480', '4', '41', '412', '41210', '淡水养殖藻类种苗', '螺旋藻种苗、其他淡水养殖藻类种苗');
INSERT INTO `category_dictionary` VALUES ('481', '4', '41', '412', '41211', '其他淡水养殖产品种苗', '稚龟种苗、稚鳖种苗、幼蛙种苗、珍珠蚌种苗、其他未列明淡水养殖产品种苗');
INSERT INTO `category_dictionary` VALUES ('482', '4', '42', '420', '42000', '水产捕捞', '水产捕捞');
INSERT INTO `category_dictionary` VALUES ('483', '4', '42', '421', '42100', '海水捕捞', '指在海洋中对各种天然水生动植物的捕捞');
INSERT INTO `category_dictionary` VALUES ('484', '4', '42', '421', '42101', '海水捕捞鱼类', '大黄鱼、小黄鱼、带鱼、鳓鱼、比目鱼、金枪鱼、鳕鱼、沙丁鱼、鲑鱼（海水）、大马哈鱼、角鲨、相关鲨鱼、海鳗、鳀鱼、鲳鱼、鲱鱼、石斑鱼、蓝圆鲹、白姑鱼、黄姑鱼、梅童鱼、方头鱼、玉筋鱼、梭鱼、鲻鱼、鲐鱼、鲅鱼、马面鲀、竹荚鱼、其他海水捕捞鲜鱼');
INSERT INTO `category_dictionary` VALUES ('485', '4', '42', '421', '42102', '海水捕捞虾类', '龙虾、斑节对虾、中国对虾、日本对虾、毛虾、虾蛄、鹰爪虾、其他海水捕捞虾');
INSERT INTO `category_dictionary` VALUES ('486', '4', '42', '421', '42103', '海水捕捞蟹类', '梭子蟹、青蟹、其他海水捕捞蟹');
INSERT INTO `category_dictionary` VALUES ('487', '4', '42', '421', '42104', '海水捕捞贝类', '贻贝、蛤、蚶、其他海水捕捞贝类');
INSERT INTO `category_dictionary` VALUES ('488', '4', '42', '421', '42105', '海水捕捞藻类', '江蓠、石花菜和紫菜等');
INSERT INTO `category_dictionary` VALUES ('489', '4', '42', '421', '42106', '海水捕捞软体水生动物', '墨鱼、鱿鱼、沙蚕、其他海水捕捞软体水生动物');
INSERT INTO `category_dictionary` VALUES ('490', '4', '42', '421', '42107', '其他海水捕捞产品', '其他海水捕捞产品');
INSERT INTO `category_dictionary` VALUES ('491', '4', '42', '422', '42200', '内陆捕捞', '指在内陆水域对各种天然水生动植物的捕捞');
INSERT INTO `category_dictionary` VALUES ('492', '4', '42', '422', '42201', '捕捞淡水鱼', '鳗鲡、青鱼、草鱼、鲢鱼、鳙鱼、鲤鱼、鲫鱼、鳊鲂、泥鳅、鲶鱼、鮰鱼、黄颡鱼、鲑鱼（淡水）、鳟鱼、河鲀、池沼公鱼、银鱼、长吻鮠、黄鳝、鳜鱼、鲈鱼、其他捕捞淡水鱼');
INSERT INTO `category_dictionary` VALUES ('493', '4', '42', '422', '42202', '淡水捕捞鲜虾', '罗氏沼虾、青虾、克氏螯虾（克氏原螯虾）、其他淡水捕捞鲜虾');
INSERT INTO `category_dictionary` VALUES ('494', '4', '42', '422', '42203', '淡水捕捞蟹', '中华绒毛蟹（大闸蟹）、其他淡水捕捞蟹');
INSERT INTO `category_dictionary` VALUES ('495', '4', '42', '422', '42204', '淡水捕捞鲜软体动物', '螺、河蚌、蚬、其他淡水捕捞鲜软体动物');
INSERT INTO `category_dictionary` VALUES ('496', '4', '42', '422', '42205', '淡水捕捞螺旋藻', '螺旋藻等');
INSERT INTO `category_dictionary` VALUES ('497', '4', '42', '422', '42206', '其他淡水捕捞产品', '丰年虫、其他未列明淡水捕捞产品');
INSERT INTO `category_dictionary` VALUES ('498', '5', '50', '500', '50000', '农、林、牧、渔专业及辅助性活动', '农、林、牧、渔服务业，指对农、林、牧、渔业生产活动进行的各种支持性服务活动，但不包括各种科学技术和专业技术服务活动');
INSERT INTO `category_dictionary` VALUES ('499', '5', '51', '510', '51000', '农业专业及辅助性活动', '指对农业提供的各种专业及辅助性生产活动，不包括各种科学技术和专业技术服务');
INSERT INTO `category_dictionary` VALUES ('500', '5', '51', '511', '51100', '种子种苗培育活动', '指各类种子、种苗的培育活动，以及通过基因、辐射、航天等技术手段培育种子、种苗的活动');
INSERT INTO `category_dictionary` VALUES ('501', '5', '51', '511', '51101', '普通农作物种子、种苗的培育活动', '普通农作物种子、种苗的培育活动');
INSERT INTO `category_dictionary` VALUES ('502', '5', '51', '511', '51102', '生物育种', '生物育种');
INSERT INTO `category_dictionary` VALUES ('503', '5', '51', '511', '51103', '优质、高产、抗病虫、抗旱耐盐等谷物作物种子、种苗', '优质、高产、抗病虫、抗旱耐盐等谷物作物种子、种苗');
INSERT INTO `category_dictionary` VALUES ('504', '5', '51', '511', '51104', '优质、高产、抗病虫、抗旱耐盐等豆类作物种子、种苗', '优质、高产、抗病虫、抗旱耐盐等豆类作物种子、种苗');
INSERT INTO `category_dictionary` VALUES ('505', '5', '51', '511', '51105', '优质、高产、抗病虫、抗旱耐盐等薯类作物种子、种苗', '优质、高产、抗病虫、抗旱耐盐等薯类作物种子、种苗');
INSERT INTO `category_dictionary` VALUES ('506', '5', '51', '511', '51106', '优质、高产、抗病虫、抗旱耐盐等油料作物种子、种苗', '优质、高产、抗病虫、抗旱耐盐等油料作物种子、种苗');
INSERT INTO `category_dictionary` VALUES ('507', '5', '51', '511', '51107', '优质、高产、抗病虫、抗旱耐盐等水果、坚果新品种种子、种苗、种芽', '优质、高产、抗病虫、抗旱耐盐等水果、坚果新品种种子、种苗、种芽');
INSERT INTO `category_dictionary` VALUES ('508', '5', '51', '511', '51108', '优质、高产、抗病虫、抗旱耐盐等蔬菜新品种种子、种苗、种芽', '优质、高产、抗病虫、抗旱耐盐等蔬菜新品种种子、种苗、种芽');
INSERT INTO `category_dictionary` VALUES ('509', '5', '51', '511', '51109', '优质、高产、抗病虫、抗旱耐盐等花卉新品种种子、种苗、种芽', '优质、高产、抗病虫、抗旱耐盐等花卉新品种种子、种苗、种芽');
INSERT INTO `category_dictionary` VALUES ('510', '5', '51', '511', '51110', '优质、高产、抗病虫、抗旱耐盐等中草药新品种种子、种苗、种芽', '优质、高产、抗病虫、抗旱耐盐等中草药新品种种子、种苗、种芽');
INSERT INTO `category_dictionary` VALUES ('511', '5', '51', '511', '51111', '优质、高产、抗病虫、抗旱耐盐等其他农作物新品种种子、种苗、种芽', '优质、高产、抗病虫、抗旱耐盐等其他农作物新品种种子、种苗、种芽');
INSERT INTO `category_dictionary` VALUES ('512', '5', '51', '512', '51200', '农业机械活动', '为农业生产提供农业机械并配备操作人员的活动');
INSERT INTO `category_dictionary` VALUES ('513', '5', '51', '512', '51201', '收费或合同基础上提供的农作物收获农业机械服务', '收费或合同基础上提供的农作物收获农业机械服务');
INSERT INTO `category_dictionary` VALUES ('514', '5', '51', '512', '51202', '收费或合同基础上提供的农作物播种农业机械服务', '收费或合同基础上提供的农作物播种农业机械服务');
INSERT INTO `category_dictionary` VALUES ('515', '5', '51', '512', '51203', '收费或合同基础上提供的农作物施肥、撒农药农业机械服务', '收费或合同基础上提供的农作物施肥、撒农药农业机械服务');
INSERT INTO `category_dictionary` VALUES ('516', '5', '51', '512', '51204', '收费或合同基础上提供的田间土地整理农业机械服务', '收费或合同基础上提供的田间土地整理农业机械服务');
INSERT INTO `category_dictionary` VALUES ('517', '5', '51', '512', '51205', '其他收费或合同基础上提供的农业机械服务', '其他收费或合同基础上提供的农业机械服务');
INSERT INTO `category_dictionary` VALUES ('518', '5', '51', '513', '51300', '灌溉活动', '指对农业生产灌溉排水系统的经营与管理');
INSERT INTO `category_dictionary` VALUES ('519', '5', '51', '513', '51301', '灌区管理服务', '灌区管理服务');
INSERT INTO `category_dictionary` VALUES ('520', '5', '51', '513', '51302', '农田排水设施管理', '农田排水设施管理');
INSERT INTO `category_dictionary` VALUES ('521', '5', '51', '513', '51303', '节水灌溉管理服务', '节水灌溉管理服务');
INSERT INTO `category_dictionary` VALUES ('522', '5', '51', '513', '51304', '农业水利灌溉系统的经营、管理', '农业水利灌溉系统的经营、管理');
INSERT INTO `category_dictionary` VALUES ('523', '5', '51', '514', '51400', '农产品初加工活动', '对各种农产品（包括天然橡胶、纺织纤维原料）进行脱水、凝固、打蜡、去籽、净化、分类、晒干、剥皮、初烤、沤软或大批包装以提供初级市场的服务，以及其他农产品的初加工；其中棉花等纺织纤维原料加工。工指对棉纤维、短绒剥离后的棉籽以及棉花秸秆、铃壳等副产品的综合加工和利用活动');
INSERT INTO `category_dictionary` VALUES ('524', '5', '51', '514', '51401', '皮棉', '细绒棉皮棉、长绒棉皮棉');
INSERT INTO `category_dictionary` VALUES ('525', '5', '51', '514', '51402', '农副产品的初加工', '稻草、麦秸、谷壳、谷子秸、玉米秸、高粱秸、薯藤、大豆秸、花生蔓、油菜籽秆、芝麻秆、向日葵秆、棉花秆、麻秆、烟秆及其他作物茎、杆、');
INSERT INTO `category_dictionary` VALUES ('526', '5', '51', '514', '51403', '农户的果蔬干燥', '葡萄干、杏干、梅干及李干、苹果干、龙眼干/肉、柿饼、干枣、椰子干、荔枝干、山药片、红薯片、辣椒干、白菜干、茄子干、干豆角丝、干木耳、其他干制果蔬');
INSERT INTO `category_dictionary` VALUES ('527', '5', '51', '514', '51404', '农户的果蔬预冷及储藏', '苹果、葡萄、杏、梅子、李子、马铃薯、红薯、葱、姜、蒜及其他果蔬的产地预冷及冷藏、窖藏');
INSERT INTO `category_dictionary` VALUES ('528', '5', '51', '514', '51405', '农户对生鲜农产品的包装', '农户对生鲜农产品的包装');
INSERT INTO `category_dictionary` VALUES ('529', '5', '51', '514', '51406', '农产品初加工服务', '皮棉加工服务、沤制麻加工服务');
INSERT INTO `category_dictionary` VALUES ('530', '5', '51', '514', '51407', '其他未列明的农产品初加工服务', '其他未列明的农产品初加工服务');
INSERT INTO `category_dictionary` VALUES ('531', '5', '51', '515', '51500', '农作物病虫害防治活动', '指从事农作物重大病虫害防治等活动');
INSERT INTO `category_dictionary` VALUES ('532', '5', '51', '515', '51501', '农作物病虫害防治服务', '农作物病虫害防治服务');
INSERT INTO `category_dictionary` VALUES ('533', '5', '51', '519', '51900', '其他农业专业及辅助性活动', '指代耕代种代收、大田托管等其他农业活动');
INSERT INTO `category_dictionary` VALUES ('534', '5', '51', '519', '51901', '农村土地整理服务', '农田土地整理、其他农村土地整理');
INSERT INTO `category_dictionary` VALUES ('535', '5', '51', '519', '51902', '农作物栽培、移栽服务，农作物收割服务', '农作物栽培、移栽服务，农作物收割服务');
INSERT INTO `category_dictionary` VALUES ('536', '5', '51', '519', '51903', '与花草的种植、截枝、修整和花园的修建和维修，以及树木的整容活动有关的农业服务活动', '与花草的种植、截枝、修整和花园的修建和维修，以及树木的整容活动有关的农业服务活动');
INSERT INTO `category_dictionary` VALUES ('537', '5', '51', '519', '51904', '农业园艺服务', '农业园艺服务');
INSERT INTO `category_dictionary` VALUES ('538', '5', '51', '519', '51905', '为种植某种农作物，促进其生长或预防病虫害的活动', '为种植某种农作物，促进其生长或预防病虫害的活动');
INSERT INTO `category_dictionary` VALUES ('539', '5', '51', '519', '51906', '农作物秸秆还田活动', '农作物秸秆还田活动');
INSERT INTO `category_dictionary` VALUES ('540', '5', '51', '519', '51907', '农业废弃物综合利用', '农业废弃物综合利用');
INSERT INTO `category_dictionary` VALUES ('541', '5', '51', '519', '51908', '农业生产托管活动，以农业生产托管为主的农业服务', '农业生产托管活动，以农业生产托管为主的农业服务');
INSERT INTO `category_dictionary` VALUES ('542', '5', '51', '519', '51909', '农场劳务承包人的活动', '农场劳务承包人的活动');
INSERT INTO `category_dictionary` VALUES ('543', '5', '51', '519', '51910', '智能农业管理（部分）：利用大数据、物联网、互联网等现代信息技术对种农业生产经营进行管理', '利用大数据、物联网、互联网等现代信息技术对种农业生产经营进行管理');
INSERT INTO `category_dictionary` VALUES ('544', '5', '51', '519', '51911', '农业大棚、耕地出租活动', '农业大棚、耕地出租活动');
INSERT INTO `category_dictionary` VALUES ('545', '5', '51', '519', '51912', '其他未列明农业服务', '其他未列明农业服务');
INSERT INTO `category_dictionary` VALUES ('546', '5', '52', '520', '52000', '林业专业及辅助性活动：指为林业生产提供的林业有害生物防治、林地防火等各种辅助性活动。', '为林业生产提供的林业有害生物防治、林地防火等各种辅助性活动');
INSERT INTO `category_dictionary` VALUES ('547', '5', '52', '521', '52100', '林业有害生物防治活动', '林业有害生物防治活动');
INSERT INTO `category_dictionary` VALUES ('548', '5', '52', '521', '52101', '森林病虫、鼠、兽害防治服务', '森林病虫、鼠、兽害防治服务');
INSERT INTO `category_dictionary` VALUES ('549', '5', '52', '522', '52200', '森林防火活动', '森林防火活动');
INSERT INTO `category_dictionary` VALUES ('550', '5', '52', '522', '52201', '森林防火服务', '森林防火服务');
INSERT INTO `category_dictionary` VALUES ('551', '5', '52', '523', '52300', '林产品初级加工活动：指对各种林产品进行去皮、打枝或去料、净化、初包装提供至贮木场或初级加工活动。', '对各种林产品进行去皮、打枝或去料、净化、初包装提供至贮木场或初级加工活动');
INSERT INTO `category_dictionary` VALUES ('552', '5', '52', '523', '52301', '木竹材林产品采集后的初级加工', '木竹材林产品采集后的初级加工');
INSERT INTO `category_dictionary` VALUES ('553', '5', '52', '523', '52302', '非木竹材林产品采集后的初级加工', '非木竹材林产品采集后的初级加工');
INSERT INTO `category_dictionary` VALUES ('554', '5', '52', '529', '52900', '其他林业专业及辅助性活动', '其他林业专业及辅助性活动');
INSERT INTO `category_dictionary` VALUES ('555', '5', '52', '529', '52901', '林业机械服务', '林业机械服务');
INSERT INTO `category_dictionary` VALUES ('556', '5', '52', '529', '52902', '森林管理站、木材检查站、治沙站等进行的林业服务活动', '森林管理站、木材检查站、治沙站等进行的林业服务活动');
INSERT INTO `category_dictionary` VALUES ('557', '5', '52', '529', '52903', '采伐剩余物回收和处理', '枝丫、树梢、树皮、树叶、树根及藤条、灌木');
INSERT INTO `category_dictionary` VALUES ('558', '5', '52', '529', '52904', '造材剩余物回收和处理', '造材截头等');
INSERT INTO `category_dictionary` VALUES ('559', '5', '52', '529', '52905', '加工剩余物回收和处理', '板皮、板材、木竹截头、锯末、碎单板、木芯、刨花、木块、边角余料等');
INSERT INTO `category_dictionary` VALUES ('560', '5', '52', '529', '52906', '林业专业合作社', '林业专业合作社');
INSERT INTO `category_dictionary` VALUES ('561', '5', '52', '529', '52907', '智能农业管理（部分）', '利用大数据、物联网、互联网等现代信息技术对林业生产经营进行管理');
INSERT INTO `category_dictionary` VALUES ('562', '5', '52', '529', '52908', '其他未列明的林业服务', '其他未列明的林业服务');
INSERT INTO `category_dictionary` VALUES ('563', '5', '53', '530', '53000', '畜牧专业及辅助性活动', '提供牲畜繁殖、圈舍清理、畜产品生产、初级加工、动物免疫接种、标识佩戴和动物诊疗等活动');
INSERT INTO `category_dictionary` VALUES ('564', '5', '53', '531', '53100', '畜牧良种繁殖活动', '畜牧良种繁殖活动');
INSERT INTO `category_dictionary` VALUES ('565', '5', '53', '531', '53101', '为促进牲畜繁殖、生长、增加产量以及获得畜产品的活动', '为促进牲畜繁殖、生长、增加产量以及获得畜产品的活动');
INSERT INTO `category_dictionary` VALUES ('566', '5', '53', '531', '53102', '动物的配种（包括冷冻精液站、液氮站、家畜人工授精站）、牧群检验等', '动物的配种（包括冷冻精液站、液氮站、家畜人工授精站）、牧群检验等');
INSERT INTO `category_dictionary` VALUES ('567', '5', '53', '531', '53103', '家禽孵化服务', '家禽孵化服务');
INSERT INTO `category_dictionary` VALUES ('568', '5', '53', '531', '53104', '应用动物胚胎工程技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎', '应用动物胚胎工程技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎');
INSERT INTO `category_dictionary` VALUES ('569', '5', '53', '531', '53105', '应用动物克隆技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎', '应用动物克隆技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎');
INSERT INTO `category_dictionary` VALUES ('570', '5', '53', '531', '53106', '应用动植物生物反应器技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎', '应用动植物生物反应器技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎');
INSERT INTO `category_dictionary` VALUES ('571', '5', '53', '531', '53107', '应用染色体操作技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎', '应用染色体操作技术培育优良畜禽新品种以及种畜、良种动物精子和胚胎');
INSERT INTO `category_dictionary` VALUES ('572', '5', '53', '531', '53108', '应用其他生物技术等培育优良畜禽新品种以及种畜、良种动物精子和胚胎', '应用其他生物技术等培育优良畜禽新品种以及种畜、良种动物精子和胚胎');
INSERT INTO `category_dictionary` VALUES ('573', '5', '53', '532', '53200', '畜禽粪污处理活动', '畜禽粪污处理活动');
INSERT INTO `category_dictionary` VALUES ('574', '5', '53', '532', '53201', '动物圈、舍清理和整治等服务', '动物圈、舍清理和整治等服务');
INSERT INTO `category_dictionary` VALUES ('575', '5', '53', '532', '53202', '畜禽粪污处理', '畜禽粪污处理');
INSERT INTO `category_dictionary` VALUES ('576', '5', '53', '532', '53203', '规模养殖场畜禽粪污设施配套和畜禽粪污资源化利用情况等', '规模养殖场畜禽粪污设施配套和畜禽粪污资源化利用情况等');
INSERT INTO `category_dictionary` VALUES ('577', '5', '53', '532', '53204', '畜禽粪污收集', '畜禽粪污收集');
INSERT INTO `category_dictionary` VALUES ('578', '5', '53', '532', '53205', '支撑畜禽养殖污染控制与资源化技术工程化活动', '支撑畜禽养殖污染控制与资源化技术工程化活动');
INSERT INTO `category_dictionary` VALUES ('579', '5', '53', '532', '53206', '牧业加工废弃物（副产物）综合利用', '牧业加工废弃物（副产物）综合利用');
INSERT INTO `category_dictionary` VALUES ('580', '5', '53', '539', '53900', '其他畜牧专业及辅助性活动', '其他畜牧专业及辅助性活动');
INSERT INTO `category_dictionary` VALUES ('581', '5', '53', '539', '53901', '专门提供的动物剪毛服务', '专门提供的动物剪毛服务');
INSERT INTO `category_dictionary` VALUES ('582', '5', '53', '539', '53902', '专门提供的动物挤奶服务', '专门提供的动物挤奶服务');
INSERT INTO `category_dictionary` VALUES ('583', '5', '53', '539', '53903', '放牧服务', '放牧服务');
INSERT INTO `category_dictionary` VALUES ('584', '5', '53', '539', '53904', '禽蛋的分级、包装服务', '禽蛋的分级、包装服务');
INSERT INTO `category_dictionary` VALUES ('585', '5', '53', '539', '53905', '病死畜禽收集、暂存、转运服务', '病死畜禽收集、暂存、转运服务');
INSERT INTO `category_dictionary` VALUES ('586', '5', '53', '539', '53906', '畜禽尸体处理服务', '畜禽尸体处理服务');
INSERT INTO `category_dictionary` VALUES ('587', '5', '53', '539', '53907', '智能农业管理（部分）', '利用大数据、物联网、互联网等现代信息技术对种畜牧养殖生产经营进行管理');
INSERT INTO `category_dictionary` VALUES ('588', '5', '53', '539', '53908', '其他未列明畜牧服务', '其他未列明畜牧服务');
INSERT INTO `category_dictionary` VALUES ('589', '5', '53', '539', '53909', '畜禽养殖废弃物无害化利用', '畜禽养殖废弃物无害化利用');
INSERT INTO `category_dictionary` VALUES ('590', '5', '54', '540', '54000', '渔业专业及辅助性活动', '对渔业生产提供的各种活动，包括鱼苗及鱼种场、水产良种场和水产增殖场等活动');
INSERT INTO `category_dictionary` VALUES ('591', '5', '54', '541', '54100', '鱼苗及鱼种场活动', '鱼苗及鱼种场活动');
INSERT INTO `category_dictionary` VALUES ('592', '5', '54', '541', '54101', '鱼苗、鱼种培育、养殖服务', '鱼苗、鱼种培育、养殖服务');
INSERT INTO `category_dictionary` VALUES ('593', '5', '54', '541', '54102', '利用生物技术培育、养殖鱼苗、鱼种服务', '利用生物技术培育、养殖鱼苗、鱼种服务');
INSERT INTO `category_dictionary` VALUES ('594', '5', '54', '549', '54900', '其他渔业专业及辅助性活动', '其他渔业专业及辅助性活动');
INSERT INTO `category_dictionary` VALUES ('595', '5', '54', '549', '54901', '鱼病用药及鱼病防治服务', '鱼病用药及鱼病防治服务');
INSERT INTO `category_dictionary` VALUES ('596', '5', '54', '549', '54902', '渔业机械服务', '渔业机械服务');
INSERT INTO `category_dictionary` VALUES ('597', '5', '54', '549', '54903', '智能农业管理（部分）', '利用大数据、物联网、互联网等现代信息技术对种渔业养殖生产经营进行管');
INSERT INTO `category_dictionary` VALUES ('598', '5', '54', '549', '54904', '其他渔业服务', '其他渔业服务');
INSERT INTO `category_dictionary` VALUES ('599', '5', '54', '549', '54905', '渔业加工废弃物综合利用。', '渔业加工废弃物综合利');

-- ----------------------------
-- Table structure for `price`
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `price_id` int(11) NOT NULL,
  `pro_name` varchar(50) DEFAULT NULL COMMENT '货物名称',
  `price` double(50,0) DEFAULT NULL COMMENT '成交价格',
  `unit` varchar(50) DEFAULT NULL COMMENT '单位',
  `address` varchar(500) DEFAULT NULL COMMENT '成交地点',
  `time` varchar(50) DEFAULT NULL COMMENT '成交时间',
  `high_price` double(50,0) DEFAULT NULL COMMENT '最高价',
  `low_price` double(50,0) DEFAULT NULL COMMENT '最低价',
  `avg_price` double(50,0) DEFAULT NULL COMMENT '平均价格',
  `price_from` varchar(500) DEFAULT NULL COMMENT '价格信息来源',
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of price
-- ----------------------------

-- ----------------------------
-- Table structure for `purchase`
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `pur_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(500) NOT NULL COMMENT '产品名称',
  `category_id` int(11) DEFAULT NULL,
  `area_require` text NOT NULL COMMENT '产地要求',
  `start_time` varchar(50) NOT NULL COMMENT '开始日期',
  `end_time` varchar(50) NOT NULL COMMENT '结束日期',
  `pur_num` int(11) NOT NULL COMMENT '采购数量',
  `pur_unit` varchar(50) NOT NULL COMMENT '单位',
  `pur_require` varchar(500) NOT NULL COMMENT '采购描述，采购要求，服务要求',
  `other_require` varchar(500) DEFAULT NULL COMMENT '其他需求',
  `pur_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态 1正在采购 0已过期 2已完成',
  `pub_title` varchar(500) DEFAULT NULL COMMENT '发布标题',
  `pub_address` varchar(500) DEFAULT NULL COMMENT '发布地区',
  `pub_time` varchar(50) DEFAULT NULL COMMENT '发布时间',
  `pur_user` varchar(50) DEFAULT NULL COMMENT '采购联系人',
  `pur_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `pur_email` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `pur_address` varchar(500) NOT NULL COMMENT '交货地址',
  `pur_from` varchar(500) DEFAULT NULL COMMENT '供应信息来源',
  `user_token` varchar(32) NOT NULL COMMENT '发布的用户',
  PRIMARY KEY (`pur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='产品采购表';

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES ('5', '芹菜', null, '', '2019.08.22', '2019.09.19', '5', '吨', '宁夏回族自治区', null, '2', null, null, null, null, null, null, '西安朱雀农贸市场', null, '06AgA8xpQsiKtmwKtcYP91ld3gO4rMhn');
INSERT INTO `purchase` VALUES ('6', '核桃', null, '', '2018.11.30', '2019.02.28', '200', '吨', '内蒙古自治区', null, '2', null, null, null, null, null, null, '交货地址', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('11', '橘子', null, '', '2018.11.28', '2019.03.01', '1000', '吨', '-', null, '2', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('12', '突尼斯软籽石榴苗', null, '', '2018.12.03', '2019.04.08', '1000', '株', '-', null, '2', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('13', '海棠实生苗', null, '', '2018.12.03', '2019.04.09', '200', '株', '-', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('14', 'M26矮化苗', null, '', '2018.12.03', '2019.04.10', '200', '株', '-', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('15', '矮化砧', null, '', '2018.12.03', '2019.04.11', '200', '株', '-', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('16', '中药材', null, '', '2018.12.03', '2019.04.12', '100000', '斤', '全国', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('17', '柿子树苗', null, '', '2018.12.03', '2019.06.05', '1000', '株', '全国', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('18', '甜山楂树苗', null, '', '2018.12.03', '2019.06.06', '300', '株', '-', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('19', '玉米大豆', null, '', '2018.12.03', '2019.06.07', '20000', '株', '全国', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('20', '纯种小尾寒羊', null, '', '2018.12.03', '2019.06.08', '30', '斤', '全国', null, '1', null, null, null, null, null, null, '陕西汉中洋县', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('21', '猪苓种', null, '', '2018.12.03', '2019.06.09', '1000', '千克', '-', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('22', '大黄专用肥', null, '', '2018.12.03', '2019.06.10', '2000', '千克', '全国', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('23', '红薯', null, '', '2018.12.03', '2019.02.19', '1000', '吨', '-', null, '0', null, null, null, null, null, null, '黄瓤红薯/ 紫瓤红薯', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('24', '新鲜拐枣', null, '', '2018.12.03', '2019.02.20', '10000', '斤', '全国', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('25', '桔梗种', null, '', '2018.12.03', '2019.02.21', '100', '斤', '全国', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('26', '两糯1号高粱', null, '', '2018.12.03', '2019.02.22', '50000', '斤', '-', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('27', '新鲜蔬菜', null, '', '2018.12.03', '2019.02.23', '69', '吨', '-', null, '1', null, null, null, null, null, null, '', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('28', '红薯淀粉', null, '', '2018.12.03', '2019.02.24', '3000', '吨', '全国', null, '1', null, null, null, null, null, null, '-', null, 'system_publisher');
INSERT INTO `purchase` VALUES ('29', '有机肥、农家肥', null, '', '2018.12.10', '2019.03.31', '50', '吨', '甘肃省,陕西省,青海省', null, '1', null, null, null, null, null, null, '天水市麦积区元龙镇', null, 'VNax3xczx_IGzQDD66T0HLNcMPKWXRw3');
INSERT INTO `purchase` VALUES ('30', '临洮珍好', null, '', '1970.01.01', '1970.01.01', '10000', '斤', '甘肃省', null, '0', null, null, null, null, null, null, '临洮县峡口镇大嘴张家坪社17号', null, 'sqNNTpSGKFa7x7jdRe4nm3xpJGawiNUG');
INSERT INTO `purchase` VALUES ('31', '苹果�� 套袋', null, '', '2019.01.09', '2019.03.09', '100', '克', '甘肃省,湖北省', null, '1', null, null, null, null, null, null, '甘肃庆阳市正宁县榆林子艳阳合作社', null, '7WgGyt3v35GVpPTa7vKm8_00a0_Lz3UY');
INSERT INTO `purchase` VALUES ('32', '党参', null, '', '2019.01.15', '2019.01.15', '100', '公斤', '', null, '1', null, null, null, null, null, null, '', null, 'AvOuznMwyQv82jBXBQoPAMgZs5MrHGx0');
INSERT INTO `purchase` VALUES ('33', '杜仲皮', null, '', '2019.01.29', '2019.12.28', '150', '吨', '陕西省,四川省,重庆市,甘肃省', null, '1', null, null, null, null, null, null, '', null, '_EFB5_9Lq2m7TDNVmbgLSVWE_i1A94fs');
INSERT INTO `purchase` VALUES ('34', '糯玉米', null, '', '1970.01.01', '1970.01.01', '100', '吨', '辽宁省,吉林省,黑龙江省,海南省', null, '1', null, null, null, null, null, null, '安徽省合肥市瑶海区周谷堆市场，联系方式：18991898023', null, 'harOBiooE9MDDX7nXC2ONwGotBewokLx');

-- ----------------------------
-- Table structure for `supply`
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply` (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(500) DEFAULT NULL COMMENT '产品名称',
  `category_id` int(11) DEFAULT NULL,
  `sup_variety` varchar(500) DEFAULT NULL COMMENT '产品品种',
  `start_time` varchar(30) DEFAULT NULL COMMENT '开始日期',
  `end_time` varchar(30) DEFAULT NULL COMMENT '结束日期',
  `sup_num` int(11) DEFAULT NULL COMMENT '供应数量',
  `sup_unit` varchar(10) DEFAULT NULL COMMENT '单位',
  `sup_pics` text COMMENT '图片',
  `sup_type` int(2) DEFAULT NULL COMMENT '供应类型 1现货 2预售',
  `sup_status` int(2) DEFAULT '1' COMMENT '状态 1正常 0已过期 2已结束',
  `pub_time` varchar(50) DEFAULT NULL COMMENT '发布时间 时间戳',
  `pub_address` varchar(500) DEFAULT NULL COMMENT '发布地区',
  `pub_title` varchar(500) DEFAULT NULL COMMENT '发布标题',
  `sup_user` varchar(50) DEFAULT NULL COMMENT '联系人',
  `sup_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `sup_email` varchar(200) DEFAULT NULL,
  `sup_address` varchar(200) DEFAULT NULL COMMENT '供应地址',
  `sup_description` varchar(500) DEFAULT NULL COMMENT '供应描述',
  `sup_from` varchar(500) DEFAULT NULL COMMENT '信息来源',
  `user_token` varchar(32) DEFAULT NULL COMMENT '发布的用户',
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='产品供应表';

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES ('48', '红薯（山芋）粉、山芋粉丝、粉条', null, '山芋产品', '2018.12.02', '2019.02.08', '4000', '斤', 'https://card.weixin96114.com/upload/201812/2018120204090040.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('49', '红薯苗', null, '龙薯9', '2018.12.02', '2019.02.08', '800', '斤', 'https://card.weixin96114.com/upload/201812/2018120208040250.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('50', '马铃薯脱毒种薯', null, '马铃薯', '2018.12.02', '2019.02.16', '8900', '斤', 'https://card.weixin96114.com/upload/201812/2018120207090300.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('51', '葡萄树', null, '葡萄树', '2018.12.02', '2019.02.05', '3000', '株', 'https://card.weixin96114.com/upload/201812/2018120111400280.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('52', '蜜薯', null, '烟薯25', '2018.12.02', '2019.02.08', '20000', '斤', 'https://card.weixin96114.com/upload/201812/2018120110240011.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('53', '红富士苹果', null, '红富士苹果', '2018.12.02', '2019.02.08', '60000', '斤', 'https://card.weixin96114.com/upload/201812/2018120101030081.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('54', '生态米', null, '五常稻花香7号', '2018.12.02', '2019.02.08', '10000', '斤', 'https://card.weixin96114.com/upload/201811/2018113008190401.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('55', '富硒红薯', null, '普薯32', '2018.12.02', '2019.02.09', '3000', '斤', 'https://card.weixin96114.com/upload/201811/2018113007180133.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('56', '香芋', null, '粉芋', '2018.12.02', '2019.02.09', '20000', '斤', 'https://card.weixin96114.com/upload/201811/2018113005270360.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('57', '富平柿饼', null, '富平柿饼', '2018.12.02', '2019.02.08', '7000', '斤', 'https://card.weixin96114.com/upload/201811/2018112910080316.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('58', '红薯', null, '秦薯四号', '2018.12.02', '2019.02.08', '3000', '斤', 'https://card.weixin96114.com/upload/201811/2018112902010152.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('59', '薄皮核桃', null, '薄皮核桃', '2018.12.02', '2019.02.18', '3000', '斤', 'https://card.weixin96114.com/upload/201811/2018112805030031.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('60', '自育大樱桃苗', null, '大樱桃苗', '2018.12.02', '2019.02.08', '3000', '株', 'https://card.weixin96114.com/upload/201811/2018112804410054.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('61', '子母河红枣', null, '灰枣', '2018.12.02', '2019.02.08', '60000', '斤', 'https://card.weixin96114.com/upload/201811/2018112801270067.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('62', '红南瓜', null, '红南瓜', '2018.12.02', '2019.02.08', '60000', '斤', 'https://card.weixin96114.com/upload/201811/2018112703150030.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('63', '衢州碰柑', null, '碰柑', '2018.12.02', '2019.02.26', '40000', '斤', 'https://card.weixin96114.com/upload/201811/2018112709320485.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('64', '杏李种苗', null, '美国杏李系列苗木', '2018.12.02', '2019.02.09', '6000', '株', 'https://card.weixin96114.com/upload/201811/2018112711230460.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('65', '红豆杉', null, '红豆杉', '2018.12.02', '2019.02.10', '90000', '株', 'https://card.weixin96114.com/upload/201811/2018112711000330.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('66', '黄花菜', null, '黄花菜', '2018.12.02', '2019.02.11', '8000', '斤', 'https://card.weixin96114.com/upload/201811/2018112708060170.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('67', '黄盖花椒苗', null, '黄盖花椒苗', '2018.12.02', '2019.02.12', '1000', '株', 'https://card.weixin96114.com/upload/201811/2018112707080341.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('68', '沙糖桔', null, '沙糖桔', '2018.12.02', '2019.02.13', '60000', '斤', 'https://card.weixin96114.com/upload/201811/2018112705350261.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('69', '板蓝根', null, '板蓝根', '2018.12.02', '2019.02.04', '500', '斤', 'https://card.weixin96114.com/upload/201811/2018112610330330.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('70', '蒲公英', null, '蒲公英', '2018.12.02', '2019.02.15', '900', '斤', 'https://card.weixin96114.com/upload/201811/2018112610300382.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('71', '葵花籽', null, '363', '2018.12.02', '2019.02.16', '3500', '斤', 'https://card.weixin96114.com/upload/201811/2018112609060590.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('72', '甜宝草莓', null, '甜宝草莓', '2018.12.02', '2019.02.17', '5000', '斤', 'https://card.weixin96114.com/upload/201811/2018112608510471.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('73', '红富士苹果', null, '红富士苹果', '2018.12.02', '2019.01.06', '9000', '斤', 'https://card.weixin96114.com/upload/201811/2018112601280445.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('74', '藏红花', null, '藏红花', '2018.12.02', '2019.01.28', '4500', '斤', 'https://card.weixin96114.com/upload/201811/2018112510130343.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('75', '大闸蟹', null, '大闸蟹', '2018.12.02', '2019.01.08', '8000', '斤', 'https://card.weixin96114.com/upload/201811/2018112207130470.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('76', '香菇', null, '香菇', '2018.12.02', '2019.01.09', '2000', '斤', 'https://card.weixin96114.com/upload/201811/2018112410080531.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('77', '肉牛犊', null, '西门塔尔牛', '2018.12.02', '2019.01.10', '500', '吨', 'https://card.weixin96114.com/upload/201811/2018112207070180.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('78', '果园放养鸡', null, '鸡', '2018.12.02', '2019.01.12', '300', '斤', 'https://card.weixin96114.com/upload/201811/2018112205290310.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('79', '核桃苗', null, '核桃苗', '2018.12.02', '2019.01.13', '4500', '株', 'https://card.weixin96114.com/upload/201811/2018112010070411.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('80', '金枝槐', null, '金枝槐', '2018.12.02', '2019.01.14', '3000', '株', 'https://card.weixin96114.com/upload/201811/2018112107030030.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('81', '太阳李', null, '太阳李', '2018.12.02', '2019.01.04', '2000', '株', 'https://card.weixin96114.com/upload/201811/2018112106460100.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('82', '猴头茹', null, '猴头茹', '2018.12.02', '2019.01.16', '6000', '斤', 'https://card.weixin96114.com/upload/201811/2018112107290340.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('83', '纯天然土蜂蜜', null, '土蜂蜜', '2018.12.02', '2019.01.17', '700', '斤', 'https://card.weixin96114.com/upload/201811/2018111908340113.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('84', '黄芪', null, '黄芪', '2018.12.02', '2019.01.18', '1200', '斤', 'https://card.weixin96114.com/upload/201811/2018111812080030.jpg', '1', '0', '1543760039', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('85', '漆树坝想乡香腊肉', null, '腌腊肉制品', '2018.11.20', '2019.08.19', '200000', '斤', 'http://static.hnjiajianmy.com/20181209000537915.jpg,http://static.hnjiajianmy.com/20181209000540445.jpg,http://static.hnjiajianmy.com/20181209000543714.jpeg,http://static.hnjiajianmy.com/20181209000544303.jpeg,http://static.hnjiajianmy.com/20181209000544307.jpeg,http://static.hnjiajianmy.com/20181209000545993.jpg', '1', '1', '1544285162', null, null, null, null, null, null, null, null, 'CdSb8T7OtFblh_mkNSJVCCzoYP5jYjTY');
INSERT INTO `supply` VALUES ('86', '优产区高山红富士苹果', null, '红富士苹果', '2018.11.09', '2019.05.20', '100', '吨', 'http://static.hnjiajianmy.com/20181209235958663.jpg,http://static.hnjiajianmy.com/20181209235959317.jpg,http://static.hnjiajianmy.com/20181209235959862.jpg', '1', '1', '1544371260', null, null, null, null, null, null, null, null, '1ZeS1AWR51JXB6enicPUeiqLmX7Yltbl');
INSERT INTO `supply` VALUES ('87', '枸杞', null, '宁杞7号', '2018.07.10', '2018.01.08', '5000', '斤', 'http://static.hnjiajianmy.com/20181210074348735.jpg,http://static.hnjiajianmy.com/20181210074348510.jpg,http://static.hnjiajianmy.com/20181210074349453.jpg,http://static.hnjiajianmy.com/20181210074349271.jpg', '2', '0', '1544399038', null, null, null, null, null, null, null, null, 'jP8q8QiMBV8JECplzGgFdb2KvOTN0df8');
INSERT INTO `supply` VALUES ('88', '花椒', null, '伏椒、秋椒', '2018.12.10', '2019.03.01', '10000', '斤', 'http://static.hnjiajianmy.com/20181210092602715.jpg,http://static.hnjiajianmy.com/20181210092603840.jpg,http://static.hnjiajianmy.com/20181210092603976.jpg,http://static.hnjiajianmy.com/20181210092604413.jpg,http://static.hnjiajianmy.com/20181210092604685.jpg,http://static.hnjiajianmy.com/20181210092605216.jpg', '1', '0', '1544405225', null, null, null, null, null, null, null, null, 'VNax3xczx_IGzQDD66T0HLNcMPKWXRw3');
INSERT INTO `supply` VALUES ('89', '马铃薯种薯', null, '陇薯七号原种及一级种', '2018.10.09', '2019.04.20', '800', '吨', 'http://static.hnjiajianmy.com/20181210183507821.jpg,http://static.hnjiajianmy.com/20181210183508563.jpg,http://static.hnjiajianmy.com/20181210183508672.jpg,http://static.hnjiajianmy.com/20181210183509626.jpg,http://static.hnjiajianmy.com/20181210183510785.jpg,http://static.hnjiajianmy.com/20181210183510119.jpg', '1', '1', '1544438129', null, null, null, null, null, null, null, null, 'SgyBKmEKyJTpeBc0AO_s65sCjjx720Hv');
INSERT INTO `supply` VALUES ('90', '枸杞', null, '宁杞七号', '2018.07.10', '2019.06.10', '5000', '斤', 'http://static.hnjiajianmy.com/20181210195222387.jpg,http://static.hnjiajianmy.com/20181210195223333.jpg,http://static.hnjiajianmy.com/20181210195223865.jpg,http://static.hnjiajianmy.com/20181210195225235.jpg,http://static.hnjiajianmy.com/20181210195227723.jpg,http://static.hnjiajianmy.com/20181210195228913.jpg', '1', '1', '1544442752', null, null, null, null, null, null, null, null, 'jP8q8QiMBV8JECplzGgFdb2KvOTN0df8');
INSERT INTO `supply` VALUES ('91', '苹果', null, '红富士', '2018.10.01', '2019.07.01', '500', '斤', 'http://static.hnjiajianmy.com/20181210205204386.jpg,http://static.hnjiajianmy.com/20181210205205737.jpg,http://static.hnjiajianmy.com/20181210205206258.jpg', '1', '1', '1544446341', null, null, null, null, null, null, null, null, 'g0mXnzP9yYJLm_6E_H2WZ5huR06YUZW4');
INSERT INTO `supply` VALUES ('92', '白芨苗', null, '白芨苗', '2018.03.10', '2020.12.11', '10000000', '株', 'http://static.hnjiajianmy.com/20181211123637278.jpg,http://static.hnjiajianmy.com/20181211123637549.jpg,http://static.hnjiajianmy.com/20181211123638428.jpg,http://static.hnjiajianmy.com/20181211123638680.jpg,http://static.hnjiajianmy.com/20181211123639384.jpg,http://static.hnjiajianmy.com/20181211123639277.jpg', '1', '1', '1544503033', null, null, null, null, null, null, null, null, '4N7rSjnsDmYodj5xCSk1Fg0be8XIvquu');
INSERT INTO `supply` VALUES ('93', '秦红宝洋葱种子', null, '秦红宝早熟', '2018.07.27', '2019.04.01', '500', '斤', 'http://static.hnjiajianmy.com/20181216100327411.jpg,http://static.hnjiajianmy.com/20181216100443335.jpg,http://static.hnjiajianmy.com/20181216100444899.jpg,http://static.hnjiajianmy.com/20181216100445412.jpg,http://static.hnjiajianmy.com/20181216100446253.jpg,http://static.hnjiajianmy.com/20181216100446607.jpg', '1', '1', '1544925895', null, null, null, null, null, null, null, null, '_upROvClv2VfQ4Zk4kMFeYZ7wfMtDDqc');
INSERT INTO `supply` VALUES ('94', '柿子', null, '杮饼', '2018.12.16', '2019.02.28', '5000', '斤', 'http://static.hnjiajianmy.com/20181216131805150.jpg,http://static.hnjiajianmy.com/20181216131807125.jpg,http://static.hnjiajianmy.com/20181216131936584.jpg,http://static.hnjiajianmy.com/20181216131949741.jpg', '1', '0', '1544938014', null, null, null, null, null, null, null, null, 'x_0bMYlgXVvCTl9L9mWMOiSvMEZJjYur');
INSERT INTO `supply` VALUES ('96', '草莓', null, '章姬', '2018.12.16', '2019.05.12', '10000', '斤', 'http://static.hnjiajianmy.com/20181216133004586.jpg,http://static.hnjiajianmy.com/20181216133005711.jpg,http://static.hnjiajianmy.com/20181216133006685.jpg,http://static.hnjiajianmy.com/20181216133006635.jpg,http://static.hnjiajianmy.com/20181216133007139.jpg,http://static.hnjiajianmy.com/20181216133008644.jpg', '1', '1', '1544938221', null, null, null, null, null, null, null, null, 'x_0bMYlgXVvCTl9L9mWMOiSvMEZJjYur');
INSERT INTO `supply` VALUES ('97', '火龙果', null, '红、白、紫、桂红', '2018.12.16', '2019.02.26', '5000', '斤', 'http://static.hnjiajianmy.com/20181216134030449.jpg,http://static.hnjiajianmy.com/20181216134031148.jpg,http://static.hnjiajianmy.com/20181216134032776.jpg,http://static.hnjiajianmy.com/20181216134033480.jpg,http://static.hnjiajianmy.com/20181216134034763.jpg', '1', '0', '1544938855', null, null, null, null, null, null, null, null, 'x_0bMYlgXVvCTl9L9mWMOiSvMEZJjYur');
INSERT INTO `supply` VALUES ('98', '老秦家石榴', null, '净皮、白皮、天红旦', '2019.09.15', '2019.10.25', '20000', '斤', 'http://static.hnjiajianmy.com/20181216161302486.jpg,http://static.hnjiajianmy.com/20181216161304227.jpg,http://static.hnjiajianmy.com/20181216161306482.jpg,http://static.hnjiajianmy.com/20181216161307436.jpg,http://static.hnjiajianmy.com/20181216161309577.jpg,http://static.hnjiajianmy.com/20181216161310885.jpg', '2', '1', '1544948003', null, null, null, null, null, null, null, null, 'J_uFXzFX7UXOpRpFHS89TRbJnxwfTeo8');
INSERT INTO `supply` VALUES ('99', '临潼山核桃', null, '薄皮嫩核桃', '2019.08.05', '2019.09.05', '2000', '斤', 'http://static.hnjiajianmy.com/20181216162038667.jpg,http://static.hnjiajianmy.com/20181216162039905.jpg,http://static.hnjiajianmy.com/20181216162040719.jpg,http://static.hnjiajianmy.com/20181216162041183.jpg', '2', '1', '1544948468', null, null, null, null, null, null, null, null, 'J_uFXzFX7UXOpRpFHS89TRbJnxwfTeo8');
INSERT INTO `supply` VALUES ('100', '临洮珍好', null, '白条党参', '2018.12.16', '2025.12.16', '0', '斤', 'http://static.hnjiajianmy.com/20181216225553936.jpg,http://static.hnjiajianmy.com/20181216225557341.jpg,http://static.hnjiajianmy.com/20181216225601898.jpg,http://static.hnjiajianmy.com/20181216225605842.jpg,http://static.hnjiajianmy.com/20181216225610502.jpg,http://static.hnjiajianmy.com/20181216225616944.jpg', '1', '1', '1544972216', null, null, null, null, null, null, null, null, 'CcW62ck9mVRF3BRO2v2kbJlvm5u8cN_L');
INSERT INTO `supply` VALUES ('101', '临洮珍好', null, '临洮白条党参', '2018.12.16', '2019.01.16', '0', '斤', 'http://static.hnjiajianmy.com/20181216225254545.jpg,http://static.hnjiajianmy.com/20181216225256772.jpg,http://static.hnjiajianmy.com/20181216225258502.jpg,http://static.hnjiajianmy.com/20181216225304304.jpg', '1', '0', '1544972296', null, null, null, null, null, null, null, null, 'sqNNTpSGKFa7x7jdRe4nm3xpJGawiNUG');
INSERT INTO `supply` VALUES ('102', '临洮珍好', null, '白条党参', '2018.12.16', '2020.12.16', '0', '斤', 'http://static.hnjiajianmy.com/20181216230850803.jpg,http://static.hnjiajianmy.com/20181216230900869.jpg', '1', '1', '1544972944', null, null, null, null, null, null, null, null, 'CcW62ck9mVRF3BRO2v2kbJlvm5u8cN_L');
INSERT INTO `supply` VALUES ('103', '临洮珍好', null, '白条当参', '2018.12.16', '2018.01.16', '100', '斤', 'http://static.hnjiajianmy.com/20181216231644898.jpg,http://static.hnjiajianmy.com/20181216231645188.jpg,http://static.hnjiajianmy.com/20181216231646449.jpg,http://static.hnjiajianmy.com/20181216231747605.jpg', '1', '0', '1544973518', null, null, null, null, null, null, null, null, '5eyZGMAQ9UN6oHkLLnvKPhlAo02tKQzQ');
INSERT INTO `supply` VALUES ('104', '临洮珍好', null, '小柴胡', '2018.12.16', '2020.12.16', '0', '斤', 'http://static.hnjiajianmy.com/20181216233734499.jpg,http://static.hnjiajianmy.com/20181216233735886.jpg,http://static.hnjiajianmy.com/20181216233736120.jpg', '1', '1', '1544974661', null, null, null, null, null, null, null, null, 'CcW62ck9mVRF3BRO2v2kbJlvm5u8cN_L');
INSERT INTO `supply` VALUES ('105', '苹果苗', null, '苗木', '2018.12.15', '2019.02.08', '4000', '株', 'http://static.hnjiajianmy.com/20181217214721816.jpg', '1', '0', '1545201782', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('106', '抗重茬优良砧木', null, '苗木', '2018.12.15', '2019.02.08', '800', '株', 'http://static.hnjiajianmy.com/20181217214959271.jpg', '1', '0', '1545201600', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('107', '山茶籽油', null, '食用油', '2018.12.15', '2019.02.16', '8900', '斤', 'http://static.hnjiajianmy.com/20181217215119757.jpg', '1', '0', '1545201609', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('108', '羊肚菌', null, '食用菌', '2018.12.15', '2019.02.05', '600', '斤', 'http://static.hnjiajianmy.com/20181217215055311.jpg', '1', '0', '1545201669', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('109', '河阴软籽石榴树苗', null, '苗木', '2018.12.15', '2019.02.08', '20000', '株', 'http://static.hnjiajianmy.com/20181217215158354.jpg', '1', '0', '1545201618', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('110', '红富士苹果', null, '富士', '2018.12.15', '2019.02.08', '10000', '斤', 'http://static.hnjiajianmy.com/20181217215225892.jpg', '1', '0', '1545201626', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('111', '关中黑猪', null, '黑猪', '2018.12.15', '2019.02.08', '2000', '斤', 'http://static.hnjiajianmy.com/20181217215251565.jpg', '1', '0', '1545201635', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('112', '琯溪蜜柚', null, '柚子', '2018.12.15', '2019.02.09', '3000', '斤', 'http://static.hnjiajianmy.com/20181217215320488.jpg', '1', '0', '1545201651', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('113', '干赤松茸', null, '食用菌', '2018.12.15', '2019.02.09', '2000', '斤', 'http://static.hnjiajianmy.com/20181217215342231.jpg', '1', '0', '1545201642', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('114', '富平柿饼', null, '柿饼', '2018.12.15', '2019.02.08', '7000', '斤', 'http://static.hnjiajianmy.com/20181217215407327.jpg', '1', '0', '1545201659', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('115', '黑小麦面粉', null, '面粉', '2018.12.15', '2019.02.08', '3000', '斤', 'http://static.hnjiajianmy.com/20181217215427349.jpg', '1', '0', '1545201729', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('116', '富平降霜柿饼', null, '柿饼', '2018.12.15', '2019.02.18', '3000', '斤', 'http://static.hnjiajianmy.com/20181217214818400.jpg', '1', '0', '1545201767', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('117', '党参', null, '党参', '2018.12.15', '2019.02.08', '500', '斤', 'http://static.hnjiajianmy.com/20181217215447525.jpg', '1', '0', '1545201685', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('118', '苹果苗木', null, '苗木', '2018.12.15', '2019.02.08', '2000', '株', 'http://static.hnjiajianmy.com/20181217215510181.jpg', '1', '0', '1545201676', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('119', '太子参', null, '太子参', '2018.12.15', '2019.02.08', '300', '斤', 'http://static.hnjiajianmy.com/20181217215539631.jpg', '1', '0', '1545201692', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('120', '冷库有机土豆', null, '土豆', '2018.12.15', '2019.02.26', '6000', '斤', 'http://static.hnjiajianmy.com/20181217215607582.jpg', '1', '0', '1545201698', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('121', '大白鹅', null, '鹅', '2018.12.15', '2019.02.09', '2000', '斤', 'http://static.hnjiajianmy.com/20181217215626717.jpg', '1', '0', '1545201705', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('122', '糯麦仁', null, '糯麦仁', '2018.12.15', '2019.02.10', '8000', '斤', 'http://static.hnjiajianmy.com/20181217215654323.jpg', '1', '0', '1545201720', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('123', '五角枫', null, '苗木', '2018.12.15', '2019.02.11', '8000', '株', 'http://static.hnjiajianmy.com/20181217215712800.jpg', '1', '0', '1545201712', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('124', '白芨直播苗', null, '苗木', '2018.12.15', '2019.02.12', '1000', '株', 'http://static.hnjiajianmy.com/20181217215735954.jpg', '1', '0', '1545201752', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('125', '文冠果树苗', null, '苗木', '2018.12.15', '2019.02.13', '4000', '株', 'http://static.hnjiajianmy.com/20181217215803503.jpg', '1', '0', '1545201775', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('126', '苹果树苗', null, '苗木', '2018.12.15', '2019.02.04', '1000', '株', 'http://static.hnjiajianmy.com/20181217215825863.jpg', '1', '0', '1545201744', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('127', '齐慧红根韭菜种子', null, '种子', '2018.12.15', '2019.02.15', '500', '斤', 'http://static.hnjiajianmy.com/20181217215850649.jpg', '1', '0', '1545201761', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('128', '占地用桃树苗木', null, '苗木', '2018.12.15', '2019.02.16', '3500', '株', 'http://static.hnjiajianmy.com/20181217214657866.jpg', '1', '0', '1545201577', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('129', '菌包', null, '菌包', '2018.12.15', '2019.02.17', '10000', '斤', 'http://static.hnjiajianmy.com/20181217214630911.jpg', '1', '0', '1545201589', null, null, null, null, null, null, null, null, 'system_publisher');
INSERT INTO `supply` VALUES ('130', '临洮珍好', null, '白条党参', '2017.12.16', '2031.04.16', '20000', '斤', 'http://static.hnjiajianmy.com/20181216234401847.jpg,http://static.hnjiajianmy.com/20181216234402934.jpg,http://static.hnjiajianmy.com/20181216234404511.jpg,http://static.hnjiajianmy.com/20181216234404995.jpg,http://static.hnjiajianmy.com/20181216234405974.jpg', '1', '1', '1544975085', null, null, null, null, null, null, null, null, 'sqNNTpSGKFa7x7jdRe4nm3xpJGawiNUG');
INSERT INTO `supply` VALUES ('131', '萝卜', null, '苹果萝卜，水果萝卜', '2018.12.20', '2018.01.20', '10000', '斤', 'http://static.hnjiajianmy.com/20181220095512614.jpg,http://static.hnjiajianmy.com/20181220095516482.jpg,http://static.hnjiajianmy.com/20181220095519119.jpg,http://static.hnjiajianmy.com/20181220095523363.jpg,undefined,undefined', '1', '0', '1545271244', null, null, null, null, null, null, null, null, 'ErH_dRkl3vWSwNkOd1qz3hEheL7JxSI_');
INSERT INTO `supply` VALUES ('132', '新疆灰枣', null, '新疆麦盖提灰枣', '2018.11.10', '2019.02.01', '100', '吨', 'http://static.hnjiajianmy.com/20181223010746528.jpg,http://static.hnjiajianmy.com/20181223010747112.jpg,http://static.hnjiajianmy.com/20181223010749641.jpg,http://static.hnjiajianmy.com/20181223010749722.jpg,http://static.hnjiajianmy.com/20181223010750916.jpg,http://static.hnjiajianmy.com/20181223010751500.jpg', '1', '0', '1545498476', null, null, null, null, null, null, null, null, 'YP7UJn52InIM6sDCpxhX_TjsKpCbMXRC');
INSERT INTO `supply` VALUES ('133', '澳洛菲墙艺', null, '澳洛菲集成墙', '2016.10.18', '2026.10.24', '0', '株', 'http://static.hnjiajianmy.com/20181224105021905.jpg,http://static.hnjiajianmy.com/20181224105022678.jpg,http://static.hnjiajianmy.com/20181224105023493.jpg,http://static.hnjiajianmy.com/20181224105024868.jpg,http://static.hnjiajianmy.com/20181224105025433.jpg', '1', '1', '1545620461', null, null, null, null, null, null, null, null, 'cqVASi4c9i1lT481FnHuuStrkPSO_Lgg');
INSERT INTO `supply` VALUES ('134', '无硫党参片0.3筛', null, '白条党参', '2018.12.27', '2019.12.27', '0', '斤', 'http://static.hnjiajianmy.com/20181227210303201.jpg,http://static.hnjiajianmy.com/20181227210304477.jpg', '1', '1', '1545915839', null, null, null, null, null, null, null, null, 'CcW62ck9mVRF3BRO2v2kbJlvm5u8cN_L');
INSERT INTO `supply` VALUES ('135', '鸡', null, '良凤', '2019.01.04', '2019.01.15', '3000', '斤', 'http://static.hnjiajianmy.com/20181227215249789.jpg', '1', '0', '1545918782', null, null, null, null, null, null, null, null, 'efZFyIAlB2HDGlGEqGF6dneNHFCXlqRD');
INSERT INTO `supply` VALUES ('136', '老农贡亚麻籽油', null, '500ml*2瓶礼盒、2.2L塑桶、1L铁桶', '2019.01.01', '2019.03.31', '0', '千克', 'http://static.hnjiajianmy.com/20181231184303627.jpg,http://static.hnjiajianmy.com/20181231184304975.jpg,http://static.hnjiajianmy.com/20181231184305993.jpg', '1', '1', '1546253070', null, null, null, null, null, null, null, null, 'P0JV9feV80jYzJ8X8y3tpyzTLvlwBzs2');
INSERT INTO `supply` VALUES ('137', '腊肉', null, '陕南黑猪腊肉', '2019.01.01', '2019.05.01', '500', '斤', 'http://static.hnjiajianmy.com/20190101220741764.jpg,http://static.hnjiajianmy.com/20190101220742651.jpg,http://static.hnjiajianmy.com/20190101220745600.jpg,http://static.hnjiajianmy.com/20190101220748603.jpg,http://static.hnjiajianmy.com/20190101220751400.jpg,http://static.hnjiajianmy.com/20190101220753846.jpg', '1', '1', '1546351679', null, null, null, null, null, null, null, null, 'pfTnrAKspMs94ClNv0nN2Ea2d3hqdtNl');
INSERT INTO `supply` VALUES ('138', '玉米锅巴', null, '手工制作玉米锅巴', '2019.01.01', '2019.07.01', '800', '斤', 'http://static.hnjiajianmy.com/20190101220857491.jpg,http://static.hnjiajianmy.com/20190101220857122.jpg,http://static.hnjiajianmy.com/20190101220858433.jpg,http://static.hnjiajianmy.com/20190101220956424.jpg,http://static.hnjiajianmy.com/20190101220956986.jpg,http://static.hnjiajianmy.com/20190101220957659.jpg', '1', '1', '1546351801', null, null, null, null, null, null, null, null, 'pfTnrAKspMs94ClNv0nN2Ea2d3hqdtNl');
INSERT INTO `supply` VALUES ('139', '蜂蜜', null, '野生蜂蜜', '2019.01.01', '2020.01.01', '100', '斤', 'http://static.hnjiajianmy.com/20190101221147245.jpg,http://static.hnjiajianmy.com/20190101221148620.jpg,http://static.hnjiajianmy.com/20190101221149116.jpg,http://static.hnjiajianmy.com/20190101221151173.jpg,http://static.hnjiajianmy.com/20190101221154973.jpg,http://static.hnjiajianmy.com/20190101221156628.jpg', '1', '1', '1546351924', null, null, null, null, null, null, null, null, 'pfTnrAKspMs94ClNv0nN2Ea2d3hqdtNl');
INSERT INTO `supply` VALUES ('140', '石耳也叫蒲木耳', null, '秦岭野生', '2019.01.01', '2020.01.01', '10', '斤', 'http://static.hnjiajianmy.com/20190101221451183.jpg,http://static.hnjiajianmy.com/20190101221453385.jpg', '1', '1', '1546352108', null, null, null, null, null, null, null, null, 'pfTnrAKspMs94ClNv0nN2Ea2d3hqdtNl');
INSERT INTO `supply` VALUES ('141', '黄芪手工切片', null, '黄芪', '2019.01.04', '2021.06.04', '500', '克', 'http://static.hnjiajianmy.com/20190104113343310.jpg,http://static.hnjiajianmy.com/20190104113344349.jpg,http://static.hnjiajianmy.com/20190104113345378.jpg,http://static.hnjiajianmy.com/20190104113346537.jpg,http://static.hnjiajianmy.com/20190104113346762.jpg,http://static.hnjiajianmy.com/20190104113347826.jpg', '1', '1', '1546572878', null, null, null, null, null, null, null, null, '4mDZljb37GMkA3s4vzquA7zX8FqRLAso');
INSERT INTO `supply` VALUES ('142', '金莲花', null, '金莲花', '2019.01.04', '2021.01.04', '200', '克', 'http://static.hnjiajianmy.com/20190104173143230.jpg,http://static.hnjiajianmy.com/20190104173143981.jpg,http://static.hnjiajianmy.com/20190104173144856.jpg,http://static.hnjiajianmy.com/20190104173144826.jpg,http://static.hnjiajianmy.com/20190104173145259.jpg,http://static.hnjiajianmy.com/20190104173145231.jpg', '1', '1', '1546594342', null, null, null, null, null, null, null, null, '4mDZljb37GMkA3s4vzquA7zX8FqRLAso');
INSERT INTO `supply` VALUES ('143', '花椒', null, '大红袍', '2018.11.06', '2019.04.06', '10000', '斤', 'http://static.hnjiajianmy.com/20190106202124266.jpg', '1', '1', '1546777286', null, null, null, null, null, null, null, null, 'OHAN0MGJWOdq44TVcQN1GxUl6xqD7k9x');
INSERT INTO `supply` VALUES ('144', '硒秦土鸡蛋', null, '土鸡蛋', '2014.01.01', '2038.01.07', '100000', '斤', 'http://static.hnjiajianmy.com/20190107122721939.jpg,http://static.hnjiajianmy.com/20190107122723823.jpg,http://static.hnjiajianmy.com/20190107122724579.jpg,http://static.hnjiajianmy.com/20190107122725702.jpg,http://static.hnjiajianmy.com/20190107122726338.jpg,http://static.hnjiajianmy.com/20190107122727742.jpg', '1', '1', '1546835268', null, null, null, null, null, null, null, null, 'CHzv1QT3aEK_gExRjyGz09qam4v_Nnme');
INSERT INTO `supply` VALUES ('145', '松树', null, '云杉', '1970.01.11', '1970.01.11', '10000', '株', 'http://static.hnjiajianmy.com/20190111145607167.jpg', '2', '0', '1547189775', null, null, null, null, null, null, null, null, 'QGlx3iOtZqpL7qNE4urp0o3T3D9GPMEB');
INSERT INTO `supply` VALUES ('146', '山药', null, '白玉山药', '2019.01.14', '2019.03.18', '3', '斤', 'http://static.hnjiajianmy.com/20190114215240750.jpg,http://static.hnjiajianmy.com/20190114215241240.jpg,http://static.hnjiajianmy.com/20190114215242552.jpg,http://static.hnjiajianmy.com/20190114215242204.jpg,http://static.hnjiajianmy.com/20190114215243771.jpg,http://static.hnjiajianmy.com/20190114215243193.jpg', '1', '1', '1547473971', null, null, null, null, null, null, null, null, 'Q7cWVC7C4gwTw2teUnAcg4N7c3AhkP8Z');
INSERT INTO `supply` VALUES ('147', '树苗', null, '金叶榆', '2019.01.15', '2019.07.16', '0', '株', 'http://static.hnjiajianmy.com/20190115071220905.jpg,http://static.hnjiajianmy.com/20190115071222957.jpg,http://static.hnjiajianmy.com/20190115071223497.jpg,http://static.hnjiajianmy.com/20190115071224613.jpg,http://static.hnjiajianmy.com/20190115071225870.jpg,http://static.hnjiajianmy.com/20190115071226647.jpg', '1', '1', '1547507549', null, null, null, null, null, null, null, null, 'jda8Q6RS4SD233HOL91vvb55MhfjNe4C');
INSERT INTO `supply` VALUES ('148', '黑山羊肉', null, '山羊', '2018.01.15', '2021.02.15', '1000', '斤', 'http://static.hnjiajianmy.com/20190115071523552.jpg,http://static.hnjiajianmy.com/20190115071523295.jpg,http://static.hnjiajianmy.com/20190115071524192.jpg,http://static.hnjiajianmy.com/20190115071524983.jpg,http://static.hnjiajianmy.com/20190115071525609.jpg,http://static.hnjiajianmy.com/20190115071525345.jpg', '1', '1', '1547507754', null, null, null, null, null, null, null, null, 'dOC9_YLbe34OZ4Wm84irpdtqvm0CrBe8');
INSERT INTO `supply` VALUES ('149', '马铃薯', null, '荷兰十五', '2019.07.15', '2019.11.14', '1000', '吨', 'http://static.hnjiajianmy.com/20190115190614764.jpg,http://static.hnjiajianmy.com/20190115190615775.jpg', '2', '0', '1547550384', null, null, null, null, null, null, null, null, 'Ao4WEhUhPQLwQZhCtDwDSL1O_0j8FMIX');
INSERT INTO `supply` VALUES ('150', '苹果', null, '红富士', '2019.01.16', '2019.04.20', '50000', '斤', 'http://static.hnjiajianmy.com/20190116101442693.jpg,http://static.hnjiajianmy.com/20190116101454754.jpg,http://static.hnjiajianmy.com/20190116101500561.jpg,http://static.hnjiajianmy.com/20190116101507564.jpg,http://static.hnjiajianmy.com/20190116101519405.jpg,http://static.hnjiajianmy.com/20190116101526204.jpg', '1', '1', '1547604983', null, null, null, null, null, null, null, null, 'HTVhz4vZ1E44xZL21QzixIAuP2hqOZOa');
INSERT INTO `supply` VALUES ('152', '中药材种苗', null, '苍术，重楼，赤芍', '2019.01.21', '2019.11.21', '0', '株', 'http://static.hnjiajianmy.com/20190121223325787.jpg,http://static.hnjiajianmy.com/20190121223326549.jpg,http://static.hnjiajianmy.com/20190121223327800.jpg,http://static.hnjiajianmy.com/20190121223328510.jpg', '1', '1', '1548081233', null, null, null, null, null, null, null, null, 'u67k0aLqD42DxA1Db5568A1UaM9RnnDs');
INSERT INTO `supply` VALUES ('153', '秦岭山特产', null, '土蜂蜜，黑木耳，天麻', '2019.01.21', '2019.04.22', '100', '斤', 'http://static.hnjiajianmy.com/20190121223858322.jpg,http://static.hnjiajianmy.com/20190121223858255.jpg,http://static.hnjiajianmy.com/20190121223859898.jpg,http://static.hnjiajianmy.com/20190121223859576.jpg,http://static.hnjiajianmy.com/20190121223900539.jpg,http://static.hnjiajianmy.com/20190121223900229.jpg', '1', '1', '1548081544', null, null, null, null, null, null, null, null, 'u67k0aLqD42DxA1Db5568A1UaM9RnnDs');
INSERT INTO `supply` VALUES ('155', '伊拉种兔比利时种兔', null, '伊拉种兔幼兔', '2019.02.20', '2019.02.20', '5000', '公斤', 'http://static.hnjiajianmy.com/20190220165100117.jpg,http://static.hnjiajianmy.com/20190220165102214.jpg,http://static.hnjiajianmy.com/20190220165103543.jpg,http://static.hnjiajianmy.com/20190220165104893.jpg,http://static.hnjiajianmy.com/20190220165107199.jpg,http://static.hnjiajianmy.com/20190220165114272.jpg', '1', '0', '1550652686', null, null, null, null, null, null, null, null, 'tEJS9WR3R0KOkoY0B5dNJBzVRbAQF2XH');
INSERT INTO `supply` VALUES ('156', '小二馬生态羊肉', null, '羊肉', '2019.02.24', '2019.06.24', '500', '斤', 'http://static.hnjiajianmy.com/20190224175430902.jpg,http://static.hnjiajianmy.com/20190224175431934.jpg', '1', '1', '1551002086', null, null, null, null, null, null, null, null, 'seDskeoROg7qlLdSLL0xFMzXCH3I51A0');
