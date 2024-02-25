/*
 Navicat Premium Data Transfer

 Source Server         : 8.0
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : djangoqrs54

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 26/02/2024 00:11:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2023-04-20 09:42:37', '关于我们', 'ABOUT US', '<p><span style=\"color: var(--tw-prose-bold);\">公司简介：</span></p><p><span style=\"color: var(--tw-prose-bold);\">智能水果销售系统是一家专注于提供新鲜水果的在线销售平台，成立于2015年，总部位于北京市朝阳区中关村创业大厦。</span></p><p><span style=\"color: var(--tw-prose-bold);\">联系方式：</span></p><ul><li>公司地址：北京市朝阳区中关村创业大厦1001室</li><li>客服电话：400-123-4567</li><li>电子邮箱：<span style=\"color: var(--link);\">service@fruitmart.com</span></li></ul>', 'upload/1708805738301.png', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1681955129980 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2023-04-20 09:42:37', 11, '黑子篮球路', '蔡坤坤', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2023-04-20 09:42:37', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2023-04-20 09:42:37', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2023-04-20 09:42:37', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2023-04-20 09:42:37', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2023-04-20 09:42:37', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (7, '2023-04-20 09:42:37', 17, '宇宙银河系黑洞1号', '黑某', '13823888887', '是');
INSERT INTO `address` VALUES (8, '2023-04-20 09:42:37', 18, '宇宙银河系地球1号', '地某', '13823888888', '是');
INSERT INTO `address` VALUES (1681955129979, '2023-04-20 09:45:29', 1681955112518, 'xxx地址', '王丽', '15214121411', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shuiguoxinxi' COMMENT '商品表名',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `goodid` bigint(0) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `buynumber` int(0) NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  `goodtype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708839008274 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1708838970909, '2024-02-25 13:29:31', 'shuiguoxinxi', 1, 31, '橘子', 'upload/1708793125047.png', 1, 4.96, 0, '柑橘类');
INSERT INTO `cart` VALUES (1708838979771, '2024-02-25 13:29:40', 'shuiguoxinxi', 1, 36, '核桃', 'upload/1708798505608.jpg', 1, 10, 0, '坚果类');
INSERT INTO `cart` VALUES (1708838984220, '2024-02-25 13:29:44', 'shuiguoxinxi', 1, 34, '猕猴桃', 'upload/1708800775077.jpg', 1, 6.47, 0, '奇异果类');
INSERT INTO `cart` VALUES (1708838988896, '2024-02-25 13:29:49', 'shuiguoxinxi', 1, 32, '苹果', 'upload/1708794359463.jpg', 1, 3.29, 0, '核果类');
INSERT INTO `cart` VALUES (1708838997466, '2024-02-25 13:29:57', 'shuiguoxinxi', 1, 33, '哈密瓜', 'upload/1708795249049.jpg', 1, 1.5, 0, '瓜果类');
INSERT INTO `cart` VALUES (1708839001710, '2024-02-25 13:30:02', 'shuiguoxinxi', 1, 38, '青提', 'upload/1708800439368.png', 1, 300, 0, '葡萄类');
INSERT INTO `cart` VALUES (1708839004810, '2024-02-25 13:30:05', 'shuiguoxinxi', 1, 37, '凤梨', 'upload/1708799537089.jpg', 1, 3.41, 0, '热带水果类');
INSERT INTO `cart` VALUES (1708839008273, '2024-02-25 13:30:08', 'shuiguoxinxi', 1, 35, '草莓', 'upload/1708797028424.png', 1, 18.57, 0, '浆果类');
INSERT INTO `cart` VALUES (1708876746766, '2024-02-25 23:59:07', 'shuiguoxinxi', 11, 37, '凤梨', 'upload/1708799537089.jpg', 7, 3.41, 0, '热带水果类');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `adminid` bigint(0) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(0) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线客服' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1708853750551, '2024-02-25 17:35:51', 1, 1, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1708853878005, '2024-02-25 17:37:58', 11, NULL, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1708868400147, '2024-02-25 21:40:00', 11, NULL, '1', NULL, 0);
INSERT INTO `chat` VALUES (1708868401184, '2024-02-25 21:40:01', 11, NULL, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1708872621964, '2024-02-25 22:50:22', 1, 1, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1708872638791, '2024-02-25 22:50:39', 11, NULL, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1708876681814, '2024-02-25 23:58:02', 1, 1, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1708876696134, '2024-02-25 23:58:16', 11, NULL, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1708876860198, '2024-02-26 00:01:00', 11, NULL, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);

-- ----------------------------
-- Table structure for chathelper
-- ----------------------------
DROP TABLE IF EXISTS `chathelper`;
CREATE TABLE `chathelper`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `ask` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天助手表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chathelper
-- ----------------------------
INSERT INTO `chathelper` VALUES (51, '2023-04-20 09:42:37', '提问1', '回复1');
INSERT INTO `chathelper` VALUES (52, '2023-04-20 09:42:37', '提问2', '回复2');
INSERT INTO `chathelper` VALUES (53, '2023-04-20 09:42:37', '提问3', '回复3');
INSERT INTO `chathelper` VALUES (54, '2023-04-20 09:42:37', '提问4', '回复4');
INSERT INTO `chathelper` VALUES (55, '2023-04-20 09:42:37', '提问5', '回复5');
INSERT INTO `chathelper` VALUES (56, '2023-04-20 09:42:37', '提问6', '回复6');
INSERT INTO `chathelper` VALUES (57, '2023-04-20 09:42:37', '提问7', '回复7');
INSERT INTO `chathelper` VALUES (58, '2023-04-20 09:42:37', '你好啊', '亲在的有什么可以帮到您的？\n这里可以设置自动回复聂荣的');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1708806260541.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/1708806250182.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/1708806236794.jpg');

-- ----------------------------
-- Table structure for discussshuiguoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshuiguoxinxi`;
CREATE TABLE `discussshuiguoxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1681955446676 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '水果信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussshuiguoxinxi
-- ----------------------------
INSERT INTO `discussshuiguoxinxi` VALUES (1681955446675, '2023-04-20 09:50:46', 31, 1681955112518, 'upload/1681955100623.jpg', '2', '非常好吃。。。', '感谢支持。。。');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2023-04-20 09:42:37', '感谢信公告', '尊敬的顾客们，\n\n在这个特别的时刻，我们想向您致以诚挚的感谢。感谢您长期以来对智能水果销售系统的支持与信任。您的支持是我们前进的动力，您的信任是我们不断进步的保证。让我们携手并肩，共同成长，共同创造更加美好的未来！\n\n智能水果销售系统团队', 'upload/1708805279278.png', '<p>尊敬的顾客们，</p><p>我们怀着一颗感恩的心，向您表达最诚挚的感谢。在过去的时光里，您一直是智能水果销售系统最重要的支持者和伙伴。您的信任和支持是我们不断努力改进的动力，也是我们取得成功的基石。</p><p>在您的支持下，我们不断创新，不断提升服务质量，力求为您提供更优质、更便捷的购物体验。无论是您的建议、反馈，还是您的每一次购买，都激励着我们不断进步，为您带来更多惊喜和便利。</p><p>在此，我们衷心感谢您选择智能水果销售系统。感谢您对我们的信任和支持，我们将继续努力，不断提升服务水平，为您带来更好的购物体验。</p><p>再次感谢您的支持，祝您生活愉快！</p><p>智能水果销售系统团队</p>');
INSERT INTO `news` VALUES (102, '2023-04-20 09:42:37', '技术升级公告', '尊敬的顾客们，\n\n我们将对智能水果销售系统进行技术升级，以提供更稳定、更高效的服务。在此过程中可能会有短暂的停机时间，我们将尽最大努力减少对您的影响。感谢您的理解与支持！\n\n智能水果销售系统团队', 'upload/1708805089877.png', '<p>尊敬的顾客们，</p><p>为了提供更稳定、更高效的服务，智能水果销售系统将进行技术升级。升级内容涵盖系统架构优化、安全性增强以及性能提升等方面。我们期待通过这次升级为您带来更加流畅、便捷的购物体验。</p><p>升级计划安排如下：</p><ul><li><span style=\"color: var(--tw-prose-bold);\">升级时间</span>：本周末，具体时间为[具体日期和时间]。</li><li><span style=\"color: var(--tw-prose-bold);\">影响范围</span>：在升级过程中，系统可能会出现短暂的停机时间或访问延迟，给您带来的不便，敬请谅解。</li><li><span style=\"color: var(--tw-prose-bold);\">预期改进</span>：升级后，您将感受到系统响应更快、界面更友好、订单处理更高效等方面的改善。</li></ul><p>我们将尽最大努力减少升级对您的影响，并在升级完成后尽快恢复正常服务。如果您在升级期间有任何疑问或需要帮助，请随时联系我们的客服团队。</p><p>感谢您的理解与支持！</p><p>智能水果销售系统团队</p>');
INSERT INTO `news` VALUES (103, '2023-04-20 09:42:37', '新产品发布公告', '尊敬的顾客们，\n\n我们很高兴地向您宣布，智能水果销售系统即将推出全新产品！这款产品经过精心设计和研发，将为您带来全新的使用体验。敬请期待，感谢您一直以来的支持！\n\n智能水果销售系统团队', 'upload/1708805016018.jpg', '<p>尊敬的顾客们，</p><p>我们非常激动地向您宣布，智能水果销售系统即将推出全新产品——\"果乐盒\"！\"果乐盒\"是一款精心策划的水果礼盒，内含精选的新鲜水果和特色小食，是您送礼或自用的理想选择。</p><p>\"果乐盒\"不仅包含了各种当季水果的精选组合，还配备了精美的包装和个性化的贺卡，适合各种场合的赠送，如生日、节日、聚会等。无论是送给亲朋好友，还是作为自己的健康零食，都能带来愉悦的味觉享受和惊喜。</p><p>我们相信，\"果乐盒\"将成为您生活中的一份美好礼物，带来健康和快乐。敬请期待，即将上市！</p><p>感谢您对智能水果销售系统的支持与信任！</p><p>智能水果销售系统团队</p>');
INSERT INTO `news` VALUES (104, '2023-04-20 09:42:37', '假期通知公告', '尊敬的顾客们，\n\n为了给我们的团队成员一个休息的机会，我们将在近期放假一天。在这段时间里，可能会对您的服务产生一些影响，敬请谅解。感谢您的理解与支持！\n\n智能水果销售系统团队', 'upload/1708804905384.png', '<p>尊敬的顾客们，</p><p>感谢您长期以来对我们智能水果销售系统的支持与信任。在即将到来的节日里，为了给我们的团队成员一个休息的机会，我们决定将下周一设为放假日，公司将暂停营业一天。</p><p>请注意，以下是假期通知的具体安排：</p><ul><li><span style=\"color: var(--tw-prose-bold);\">放假日期</span>：下周一，日期为2023年3月1日。</li><li><span style=\"color: var(--tw-prose-bold);\">营业恢复</span>：假期结束后，我们将于2023年3月2日恢复正常营业，为您提供更好的服务。</li></ul><p>在这期间，您仍然可以通过我们的在线平台进行浏览和下单，但订单处理和物流运输可能会有所延迟。请您谅解这一临时安排，我们会尽快处理您的订单。</p><p>再次感谢您的理解与支持！祝您节日愉快！</p><p>智能水果销售系统团队</p>');
INSERT INTO `news` VALUES (105, '2023-04-20 09:42:37', '社区活动公告', '尊敬的顾客们，\n\n欢迎参加智能水果销售系统的社区活动！我们致力于与社区成员一起，共同打造一个更美好、更健康的社区环境。通过这些活动，我们可以互相交流、合作，共同促进社区的发展和进步。\n\n智能水果销售系统团队', 'upload/1708804714763.jpg', '<p>尊敬的顾客们，</p><p>我们很高兴地宣布，智能水果销售系统将于本周末举办社区清洁活动！这是我们社区的一次集体行动，旨在美化我们的环境，让我们的社区更加宜居。</p><p>活动详情如下：</p><ul><li><span style=\"color: var(--tw-prose-bold);\">日期和时间</span>：本周六上午10点开始</li><li><span style=\"color: var(--tw-prose-bold);\">集合地点</span>：智能水果销售系统门店前广场</li><li><span style=\"color: var(--tw-prose-bold);\">活动内容</span>：我们将一起清理社区周围的垃圾，包括公园、街道和河岸等地方。请自备工具，如手套、垃圾袋等。</li></ul><p>我们诚邀您和您的家人朋友一同参与这个有意义的活动。让我们携手行动，为我们的社区增添美丽，共同营造一个清洁、整洁的环境！</p><p>感谢您的支持和参与！</p><p>智能水果销售系统团队</p>');
INSERT INTO `news` VALUES (106, '2023-04-20 09:42:37', '季节特惠公告', '尊敬的顾客们，\n\n欢迎来到智能水果销售系统的季节特惠活动！在这个特殊的时刻，我们将为您带来丰富多彩的优惠和折扣，让您尽情享受购物乐趣。敬请关注我们的特惠商品，抓住限时优惠，共同享受季节购物的快乐！\n\n智能水果销售系统团队', 'upload/1708804632542.png', '<p>尊敬的顾客们，</p><p>为了感谢您长期以来对智能水果销售系统的支持与厚爱，我们特别推出了本季节的特惠活动，希望能为您带来更多的购物惊喜与便利。</p><ol><li><span style=\"color: var(--tw-prose-bold);\">优惠商品</span>：在本季特惠活动期间，我们将为您精选一系列优质水果，并以优惠的价格供应。这些水果不仅新鲜美味，而且价格亲民，让您尽情品尝水果的美味。</li><li><span style=\"color: var(--tw-prose-bold);\">折扣优惠</span>：除了优惠商品外，我们还将推出各种折扣优惠，包括满额立减、买赠活动等，让您在购物时享受更多实惠。抓住机会，尽情享受购物的乐趣吧！</li><li><span style=\"color: var(--tw-prose-bold);\">积分奖励</span>：在特惠活动期间，您还可以通过购物获得积分奖励，积分可在以后的购物中抵扣现金，让您的购物更加划算。</li></ol><p>特惠活动时间有限，机会不容错过！快来智能水果销售系统选购您喜爱的水果，尽享优惠与便利。感谢您对我们的支持与信任！</p><p>智能水果销售系统团队</p>');
INSERT INTO `news` VALUES (107, '2023-04-20 09:42:37', '环保倡议公告', '尊敬的顾客们，\n\n我们很高兴地向您宣布，智能水果销售系统将发起一项环保倡议！我们致力于通过减少塑料和包装物的使用，为环境保护贡献一份力量。本倡议旨在鼓励大家采取环保行动，保护我们的地球家园。\n\n智能水果销售系统团队', 'upload/1708803775871.png', '<p>尊敬的顾客们，</p><p>作为环保意识的倡导者，我们深知塑料污染和包装浪费对环境造成的影响。因此，我们决定发起一项环保倡议，希望通过大家的共同努力，减少塑料使用量，为地球环境做出贡献。</p><ol><li><span style=\"color: var(--tw-prose-bold);\">自带袋活动</span>：我们鼓励顾客自带环保袋或容器前来购物。每位顾客使用自带袋或容器购物，我们将为其提供一定的优惠或积分奖励。</li><li><span style=\"color: var(--tw-prose-bold);\">环保包装选择</span>：我们将优先选择环保材料进行商品包装，减少塑料袋和包装的使用。同时，我们也鼓励顾客选择可降解或可回收的包装材料。</li><li><span style=\"color: var(--tw-prose-bold);\">回收循环利用</span>：我们将设立回收点，方便顾客回收利用塑料袋和包装物。同时，我们也将与合作伙伴合作，推动塑料包装的再利用和回收处理。</li><li><span style=\"color: var(--tw-prose-bold);\">环保意识宣传</span>：我们将定期举办环保意识宣传活动，提高顾客对环保问题的认识，并分享环保生活的实践经验和方法。</li></ol><p>我们诚挚邀请您加入我们的环保行动，一起为地球环境贡献力量，共创美好未来！</p><p>智能水果销售系统团队</p>');
INSERT INTO `news` VALUES (108, '2023-04-20 09:42:37', '健康生活公告', '尊敬的顾客们，\n\n欢迎来到我们的健康生活社区！这是一个专注于健康饮食、运动和生活方式的平台。我们致力于与您分享最新的健康资讯、营养建议和健身技巧，帮助您实现更健康、更美好的生活。加入我们，一起探索健康的乐趣，迈向更健康的未来！\n\n智能水果销售系统团队', 'upload/1708803642640.png', '<p>智能水果销售系统健康生活公告内容：</p><p>尊敬的顾客们，</p><p>我们很高兴地宣布，智能水果销售系统将开展健康生活系列活动！在这个系列活动中，我们将为您带来一系列有关健康生活的内容和资源，旨在帮助您改善生活方式，提升健康水平。</p><ol><li><span style=\"color: var(--tw-prose-bold);\">营养知识分享</span>：我们将定期发布有关营养和饮食的知识，包括各种水果的营养价值、均衡饮食的重要性等，让您更加了解如何通过饮食获得健康。</li><li><span style=\"color: var(--tw-prose-bold);\">健康食谱推荐</span>：我们将分享简单易做、营养丰富的健康食谱，帮助您在家轻松制作健康美食，享受美味与健康兼得的生活。</li><li><span style=\"color: var(--tw-prose-bold);\">运动健身建议</span>：我们将提供各种运动健身建议和技巧，帮助您选择适合自己的运动方式，保持身体活力和健康。</li><li><span style=\"color: var(--tw-prose-bold);\">生活方式改善</span>：我们将分享一些简单易行的生活方式改善建议，如如何改善睡眠质量、减压放松等，助您拥有更加健康的生活方式。</li></ol><p>我们相信，通过健康生活系列活动，您将能够更好地了解健康知识，改善生活方式，享受健康快乐的生活。敬请关注我们的活动内容，并积极参与其中！</p><p>祝您健康愉快！</p><p>智能水果销售系统团队</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shuiguoxinxi' COMMENT '商品表名',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `goodid` bigint(0) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品图片',
  `buynumber` int(0) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int(0) NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logistics` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '物流',
  `goodtype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708853734437 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1708853892932, '2024-02-25 17:38:13', '2024225173812876', 'shuiguoxinxi', 11, 36, '核桃', 'upload/1708798505608.jpg', 1, 10, 10, 10, 10, 1, '已退款', '宇宙银河系金星1号', '13823888881', '金某', '', NULL, '坚果类');
INSERT INTO `orders` VALUES (1708857593363, '2024-02-25 18:39:53', '2024225183953341', 'shuiguoxinxi', 11, 32, '苹果', 'upload/1708794359463.jpg', 1, 3.29, 3.29, 3.29, 3.29, 1, '已支付', '宇宙银河系金星1号', '13823888881', '金某', '', NULL, '核果类');
INSERT INTO `orders` VALUES (1708872524193, '2024-02-25 22:48:44', '2024225224844162', 'shuiguoxinxi', 11, 33, '哈密瓜', 'upload/1708795249049.jpg', 3, 1.5, 1.5, 4.5, 4.5, 1, '已退款', '宇宙银河系金星1号', '13823888881', '金某', '', NULL, '瓜果类');
INSERT INTO `orders` VALUES (1708876597496, '2024-02-25 23:56:37', '2024225235637439', 'shuiguoxinxi', 11, 31, '橘子', 'upload/1708793125047.png', 15, 4.96, 4.96, 74.4, 74.4, 1, '已发货', '宇宙银河系金星1号', '13823888881', '金某', '', NULL, '柑橘类');
INSERT INTO `orders` VALUES (1708876760984, '2024-02-25 23:59:21', '2024225235920967', 'shuiguoxinxi', 11, 35, '草莓', 'upload/1708797028424.png', 5, 18.57, 18.57, 92.85, 92.85, 1, '已完成', '宇宙银河系金星1号', '13823888881', '金某', '', NULL, '浆果类');

-- ----------------------------
-- Table structure for shuiguofenlei
-- ----------------------------
DROP TABLE IF EXISTS `shuiguofenlei`;
CREATE TABLE `shuiguofenlei`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shuiguofenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '水果分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shuiguofenlei`(`shuiguofenlei`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '水果分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shuiguofenlei
-- ----------------------------
INSERT INTO `shuiguofenlei` VALUES (21, '2023-04-20 09:42:37', '奇异果类');
INSERT INTO `shuiguofenlei` VALUES (22, '2023-04-20 09:42:37', '葡萄类');
INSERT INTO `shuiguofenlei` VALUES (23, '2023-04-20 09:42:37', '热带水果类');
INSERT INTO `shuiguofenlei` VALUES (24, '2023-04-20 09:42:37', '坚果类');
INSERT INTO `shuiguofenlei` VALUES (25, '2023-04-20 09:42:37', '浆果类');
INSERT INTO `shuiguofenlei` VALUES (26, '2023-04-20 09:42:37', '瓜果类');
INSERT INTO `shuiguofenlei` VALUES (27, '2023-04-20 09:42:37', '核果类');
INSERT INTO `shuiguofenlei` VALUES (28, '2023-04-20 09:42:37', '柑橘类');

-- ----------------------------
-- Table structure for shuiguoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shuiguoxinxi`;
CREATE TABLE `shuiguoxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shuiguomingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '水果名称',
  `shuiguofenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '水果分类',
  `jijie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '季节',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `jinghanliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '净含量',
  `caizhairiqi` date NULL DEFAULT NULL COMMENT '采摘日期',
  `baozhiqi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保质期',
  `shuiguojieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '水果介绍',
  `onelimittimes` int(0) NULL DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(0) NULL DEFAULT NULL COMMENT '库存',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '水果信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shuiguoxinxi
-- ----------------------------
INSERT INTO `shuiguoxinxi` VALUES (31, '2023-04-20 09:42:37', '橘子', '柑橘类', '秋季', 'upload/1708793125047.png,upload/1708793128623.png,upload/1708793132374.png', 'Sunkist', '500g', '2023-11-01', '两周', '<p>水果介绍1</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1681955205384.jpg\"></p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1681955208976.jpg\"><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1681955212242.jpg\"></p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1681955215650.jpg\"></p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1681955220498.jpg\"></p>', 15, 45, '2023-04-20 09:42:37', 4.96);
INSERT INTO `shuiguoxinxi` VALUES (32, '2023-04-20 09:42:37', '苹果', '核果类', '秋季', 'upload/1708794359463.jpg,upload/1708794363063.jpg,upload/1708794366754.jpg', '阿克苏苹果', '500g', '2023-09-01', '一周', '<p>水果介绍：</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1708797254078.png\"></p>', 2, 90, '2023-04-20 09:42:37', 3.29);
INSERT INTO `shuiguoxinxi` VALUES (33, '2023-04-20 09:42:37', '哈密瓜', '瓜果类', '夏季', 'upload/1708795249049.jpg,upload/1708795252169.jpg,upload/1708795255625.jpg', '西州密哈密瓜', '500g', '2023-08-01', '7-10天', '<p>水果介绍：</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1708794994582.png\"></p>', 3, 146, '2023-04-20 09:42:37', 1.5);
INSERT INTO `shuiguoxinxi` VALUES (34, '2023-04-20 09:42:37', '猕猴桃', '奇异果类', '秋季', 'upload/1708800775077.jpg,upload/1708800779835.jpg,upload/1708800783325.jpg', '徐香绿心猕猴桃', '500g', '2023-10-01', '7-10天', '<p>水果介绍：</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1708800640096.png\"></p>', 4, 89, '2023-04-20 09:42:37', 6.47);
INSERT INTO `shuiguoxinxi` VALUES (35, '2023-04-20 09:42:37', '草莓', '浆果类', '春季', 'upload/1708797028424.png,upload/1708797031346.jpg,upload/1708797034823.jpg', '奶油草莓', '500g', '2023-02-01', '1-2天', '<p>水果介绍：</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1708796409933.png\"></p><p><br></p>', 5, 90, '2023-04-20 09:42:37', 18.57);
INSERT INTO `shuiguoxinxi` VALUES (36, '2023-04-20 09:42:37', '核桃', '坚果类', '冬季', 'upload/1708798505608.jpg,upload/1708798508289.jpg,upload/1708798512078.jpg', '纸皮核桃', '500g', '2023-11-01', '1-2周', '<p>水果介绍：</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1708798494441.png\"></p>', 6, 81, '2023-04-20 09:42:37', 10);
INSERT INTO `shuiguoxinxi` VALUES (37, '2023-04-20 09:42:37', '凤梨', '热带水果类', '夏季', 'upload/1708799537089.jpg,upload/1708799540516.jpg,upload/1708799544209.jpg', '泰国小凤梨', '500g', '2023-07-01', '半个月', '<p>水果介绍：</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1708799357827.png\"></p>', 7, 95, '2023-04-20 09:42:37', 3.41);
INSERT INTO `shuiguoxinxi` VALUES (38, '2023-04-20 09:42:37', '青提', '葡萄类', '夏季', 'upload/1708800439368.png,upload/1708800441994.png,upload/1708800445388.png', '香印晴王青提', '500g', '2023-08-01', '3-5天', '<p>水果介绍:</p><p><img src=\"http://127.0.0.1:8080/djangoqrs54/upload/1708800194069.png\"></p>', 1, 95, '2023-04-20 09:42:37', 300);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `refid` bigint(0) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1681955312371 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1681955306495, '2023-04-20 09:48:26', 1681955112518, 34, 'shuiguoxinxi', '水果名称4', 'upload/shuiguoxinxi_tupian4.jpg', '1', '水果分类4', NULL);
INSERT INTO `storeup` VALUES (1708857700382, '2024-02-25 18:41:40', 11, 32, 'shuiguoxinxi', '苹果', 'upload/1708794359463.jpg', '1', '核果类', NULL);

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES (1, '2023-04-20 09:42:37', '系统简介', 'SYSTEM INTRODUCTION', '<p><span style=\"color: rgb(13, 13, 13);\">智能水果销售系统是一个基于Django框架开发的网络应用，提供商品管理、订单处理、支付功能、库存监控、数据分析等特性。用户可以方便地浏览和购买水果，管理员可以实时管理库存和订单，系统还提供智能推荐和客服服务，以提升用户体验和销售效率。</span></p>', 'upload/1708806030613.png', 'upload/1708806033721.png', 'upload/1708805977590.png');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2023-04-20 09:42:37');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1681955112519 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2023-04-20 09:42:37', '鸡你太美', '123456', '蔡徐坤', '男', 'upload/yonghu_touxiang1.jpg', '26', '773890001@qq.com', '13823888881', 128.75);
INSERT INTO `yonghu` VALUES (12, '2023-04-20 09:42:37', '乖乖呀', '123456', '魏潇潇', '女', 'upload/yonghu_touxiang2.jpg', '27', '773890002@qq.com', '13823888882', 200);
INSERT INTO `yonghu` VALUES (13, '2023-04-20 09:42:37', '瑾曦曦曦_', '123456', '李娇', '女', 'upload/yonghu_touxiang3.jpg', '23', '773890003@qq.com', '13823888883', 200);
INSERT INTO `yonghu` VALUES (14, '2023-04-20 09:42:37', '笙歌白云上', '123456', '李逍遥', '男', 'upload/yonghu_touxiang4.jpg', '23', '773890004@qq.com', '13823888884', 200);
INSERT INTO `yonghu` VALUES (15, '2023-04-20 09:42:37', '木一', '123456', '陈怡晓', '女', 'upload/yonghu_touxiang5.jpg', '25', '773890005@qq.com', '13823888885', 200);
INSERT INTO `yonghu` VALUES (16, '2023-04-20 09:42:37', '杜冥鸦', '123456', '杜冥鸦', '女', 'upload/yonghu_touxiang6.jpg', '25', '773890006@qq.com', '13823888886', 200);
INSERT INTO `yonghu` VALUES (18, '2023-04-20 09:42:37', '小白甜', 'angel', '霍然然', '女', 'upload/yonghu_touxiang8.jpg', '21', '773890008@qq.com', '13823888888', 200);
INSERT INTO `yonghu` VALUES (1681955112518, '2023-04-20 09:45:12', '小小粒', '123456', '王丽', '女', 'upload/1681955100623.jpg', '22', '6230575274@qq.com', '15214121411', 1840.76);

SET FOREIGN_KEY_CHECKS = 1;
