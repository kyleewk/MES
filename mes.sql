/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : localhost:3306
 Source Schema         : mes

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 31/07/2020 18:13:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bom
-- ----------------------------
DROP TABLE IF EXISTS `bom`;
CREATE TABLE `bom`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `materialId` int(10) NOT NULL COMMENT '物料编号',
  `materialName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料名称',
  `specification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格',
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产厂家',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注信息',
  `status` int(10) NOT NULL COMMENT '状态：数字0表示正常正常，1表示缺料',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bom
-- ----------------------------
INSERT INTO `bom` VALUES (101, 100022, '上壳', '30*20', '重庆广达', '正常', 0);
INSERT INTO `bom` VALUES (102, 100023, '下壳', '30*20', '重庆广达', '正常', 0);
INSERT INTO `bom` VALUES (103, 100024, 'LCD', '15*10', '上海世硕', '正常', 0);
INSERT INTO `bom` VALUES (104, 100025, '电池', '5*3', '昆山恩业', '正常', 0);
INSERT INTO `bom` VALUES (105, 100026, '支架', '1', '昆山伟业', '正常', 0);

-- ----------------------------
-- Table structure for check_res
-- ----------------------------
DROP TABLE IF EXISTS `check_res`;
CREATE TABLE `check_res`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '工单审核res主键',
  `checkId` int(20) NULL DEFAULT NULL COMMENT '工单审核涉及工单id',
  `opinion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  `operation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核操作记录',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id,自增',
  `customerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户姓名',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型',
  `quantity` int(10) NOT NULL COMMENT '商品数量',
  `orderStartDate` datetime(0) NOT NULL COMMENT '订单创建日期',
  `orderStopDate` datetime(0) NOT NULL COMMENT '订单截止日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (101, '北大青鸟', '成都', '联想电脑', 1000, '2020-05-22 00:00:00', '2020-07-22 00:00:00');
INSERT INTO `client` VALUES (102, '达内', '成都', '戴尔电脑', 200, '2020-05-23 00:00:00', '2020-07-29 00:00:00');
INSERT INTO `client` VALUES (103, '千峰', '成都', '华硕电脑', 5000, '2020-06-24 00:00:00', '2020-06-29 00:00:00');

-- ----------------------------
-- Table structure for craft_check_res
-- ----------------------------
DROP TABLE IF EXISTS `craft_check_res`;
CREATE TABLE `craft_check_res`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '工艺审核res主键',
  `checkId` int(20) NULL DEFAULT NULL COMMENT '工艺审核涉及工单id',
  `opinion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  `operation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核操作记录',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for craftcheck
-- ----------------------------
DROP TABLE IF EXISTS `craftcheck`;
CREATE TABLE `craftcheck`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '工艺审核主键id，自增',
  `machineType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机种',
  `modifyReason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改原因',
  `modifyContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改内容',
  `modifyDate` date NOT NULL COMMENT '修改时间',
  `applicantName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申请人姓名',
  `status` int(20) NOT NULL DEFAULT 0 COMMENT '状态，数字表示,默认0草稿，1提交，2审核中，-1驳回，2拒绝，3已完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of craftcheck
-- ----------------------------
INSERT INTO `craftcheck` VALUES (1, 'M001', '工程变更', '增加目检', '2020-05-29', '张三', 1);
INSERT INTO `craftcheck` VALUES (2, 'M002', '工程变更', '增加烧结时间', '2020-05-29', '张三', 1);
INSERT INTO `craftcheck` VALUES (3, 'M003', '工程变更', '换用厂家材料', '2020-05-29', '张三', 1);

-- ----------------------------
-- Table structure for craftlist
-- ----------------------------
DROP TABLE IF EXISTS `craftlist`;
CREATE TABLE `craftlist`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '工艺列表主键id，自增',
  `machineType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机种',
  `craftName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工艺名称',
  `steps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作步骤',
  `device` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所需设备',
  `materiel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所需物料',
  `createDate` date NOT NULL COMMENT '制作时间',
  `designer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of craftlist
-- ----------------------------
INSERT INTO `craftlist` VALUES (1, 'M001', '检验外观', '拿取机器，检验外观', 'AGC', '产品1', '2020-05-29', '张三');
INSERT INTO `craftlist` VALUES (2, 'M001', '打印label', '打开包装程式，打印rating label', '打印机', 'label', '2020-05-29', '张三');
INSERT INTO `craftlist` VALUES (3, 'M001', '放出', '放入流水线', '流水线', '产品1', '2020-05-29', '张三');

-- ----------------------------
-- Table structure for dailypro
-- ----------------------------
DROP TABLE IF EXISTS `dailypro`;
CREATE TABLE `dailypro`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '每日生产明细id',
  `orderId` int(20) NULL DEFAULT NULL COMMENT '关联工单id',
  `NGNum` int(20) NOT NULL DEFAULT 0 COMMENT '不良品数量默认为0',
  `realNum` int(50) NOT NULL DEFAULT 0 COMMENT '实际产量,默认新建时加入为0',
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '工单状态，默认为0，即准备中，1为进行中，2为已完成，-1为暂停,-2为关闭',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `isClosed` int(10) NULL DEFAULT 0 COMMENT '工单是否关闭，默认0，未关闭，1关闭',
  `comm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产线日志,生产备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dailypro
-- ----------------------------
INSERT INTO `dailypro` VALUES (1, 34, 2, 2000, 1, '2020-06-28 15:34:33', 0, '32435');
INSERT INTO `dailypro` VALUES (2, 1, 30, 300, 1, '2020-06-29 08:59:17', 0, '第一次');
INSERT INTO `dailypro` VALUES (3, 1, 20, 200, 2, '2020-06-29 09:03:29', 0, '完成了哦');
INSERT INTO `dailypro` VALUES (4, 42, 20, 2000, 1, '2020-07-02 10:29:51', 0, '继续');
INSERT INTO `dailypro` VALUES (5, 42, 20, 1000, -2, '2020-07-02 10:30:24', 1, '工艺问题，关闭工单');
INSERT INTO `dailypro` VALUES (6, 43, 10, 1000, 2, '2020-07-02 10:37:56', 0, '就这样测试了');
INSERT INTO `dailypro` VALUES (7, 26, 1000, 1000, 2, '2020-07-02 11:42:14', 0, '完事');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id,自增',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门',
  `manger` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门主管',
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职务',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '生产一部', '张三', '经理', '15913325601');
INSERT INTO `department` VALUES (2, '生产二部', '李四', '资深经理', '15939303232');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `deviceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备名称',
  `unitType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格型号',
  `equipmentUse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备用途',
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产厂家',
  `factoryNumber` int(10) NOT NULL COMMENT '出厂编号',
  `acceptanceDate` datetime(0) NOT NULL COMMENT '接受日期',
  `commissioningDate` datetime(0) NOT NULL COMMENT '启用日期',
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '放置地点',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态：0表示在用，1表示停用',
  `storeman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '保管人员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1001, '电控板', '203387', 'LBC测试', '富士康', 2001, '2013-02-01 00:00:00', '2013-05-01 00:00:00', '生产一部', '在用', '李四');
INSERT INTO `equipment` VALUES (1002, '机械手臂', '100566', 'LBC组装', '富士康', 20130211, '2020-06-01 00:00:00', '2020-06-24 00:00:00', 'demo1', '在用', '李四');
INSERT INTO `equipment` VALUES (1003, '流水带', '100233', 'LBC运输', '富士康', 20150211, '2020-06-23 00:00:00', '2020-06-16 00:00:00', '1', '在用', '张三');

-- ----------------------------
-- Table structure for inv_back
-- ----------------------------
DROP TABLE IF EXISTS `inv_back`;
CREATE TABLE `inv_back`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退料数量',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '种类',
  `team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退料班组',
  `time` datetime(6) NOT NULL COMMENT '退料时间',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退料理由',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退料处理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for inv_get
-- ----------------------------
DROP TABLE IF EXISTS `inv_get`;
CREATE TABLE `inv_get`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '领料数量',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '种类',
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '领料人',
  `team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '领料班组',
  `time` datetime(6) NOT NULL COMMENT '领料时间',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否处理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for inv_save
-- ----------------------------
DROP TABLE IF EXISTS `inv_save`;
CREATE TABLE `inv_save`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '入库数量',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '种类',
  `team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '入库班组',
  `time` datetime(6) NOT NULL COMMENT '入库时间',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '领料处理',
  `sresponse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否入库',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for made_up
-- ----------------------------
DROP TABLE IF EXISTS `made_up`;
CREATE TABLE `made_up`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '成品库数量',
  `time` time(6) NOT NULL COMMENT '更新时间',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否损耗',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for maintain
-- ----------------------------
DROP TABLE IF EXISTS `maintain`;
CREATE TABLE `maintain`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id,自增',
  `deviceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备名称',
  `specification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格型号',
  `fault` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '故障现象',
  `maintanence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '维修保养',
  `maintainer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '维修人员',
  `maintanenceDate` datetime(0) NOT NULL COMMENT '维修日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of maintain
-- ----------------------------
INSERT INTO `maintain` VALUES (1, '电控板', '203387', '线路短路', '	更换主板', '	张三', '2013-02-01 00:00:00');
INSERT INTO `maintain` VALUES (2, '电路板', '203387', '线路短路', '更换主板零件', '张三', '2020-06-22 00:00:00');

-- ----------------------------
-- Table structure for monitoring
-- ----------------------------
DROP TABLE IF EXISTS `monitoring`;
CREATE TABLE `monitoring`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `deviceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备名称',
  `checkPoint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '检测点',
  `detection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '检测内容',
  `standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '检测标准',
  `record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题记录',
  `recordDate` datetime(0) NOT NULL COMMENT '记录日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of monitoring
-- ----------------------------
INSERT INTO `monitoring` VALUES (1, '冲B1000T', '主电机', 'U1相电流值', 'T<40 C', '30', '2020-06-22 00:00:00');

-- ----------------------------
-- Table structure for ordercheck
-- ----------------------------
DROP TABLE IF EXISTS `ordercheck`;
CREATE TABLE `ordercheck`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `checkId` int(20) NULL DEFAULT NULL COMMENT '工单审核涉及工单id',
  `orderId` int(20) NOT NULL COMMENT '工单序号',
  `checkSn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人id',
  `checkDate` datetime(0) NOT NULL COMMENT '修改时间',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核结果',
  `comm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ordercheck
-- ----------------------------
INSERT INTO `ordercheck` VALUES (4, NULL, 36, '1101', '2020-06-28 15:44:04', '同意', '同意');
INSERT INTO `ordercheck` VALUES (5, NULL, 36, '2101', '2020-06-28 15:46:30', '同意', '同意');
INSERT INTO `ordercheck` VALUES (6, NULL, 36, '3101', '2020-06-28 15:52:20', '同意', '同意');
INSERT INTO `ordercheck` VALUES (7, NULL, 35, '', '2020-06-28 17:08:38', '拒绝', '同意');
INSERT INTO `ordercheck` VALUES (8, NULL, 1, '', '2020-06-28 17:36:08', '驳回', '驳回');
INSERT INTO `ordercheck` VALUES (9, NULL, 39, '1101', '2020-06-29 10:17:18', '驳回', '就这？');
INSERT INTO `ordercheck` VALUES (10, NULL, 39, '1101', '2020-06-29 10:21:04', '驳回', '就这？');
INSERT INTO `ordercheck` VALUES (11, NULL, 39, '1101', '2020-06-29 10:21:24', '驳回', '就这？');
INSERT INTO `ordercheck` VALUES (12, NULL, 39, '1101', '2020-06-29 10:21:35', '拒绝', '就这？');
INSERT INTO `ordercheck` VALUES (13, NULL, 41, '', '2020-06-29 10:57:17', '同意', '同意');
INSERT INTO `ordercheck` VALUES (14, NULL, 41, '', '2020-06-29 10:57:29', '同意', '同意');
INSERT INTO `ordercheck` VALUES (15, NULL, 41, '', '2020-06-29 10:57:38', '同意', '同意');
INSERT INTO `ordercheck` VALUES (16, NULL, 26, '', '2020-06-29 11:33:26', '同意', '为期二天');
INSERT INTO `ordercheck` VALUES (17, NULL, 42, '1101', '2020-07-02 10:24:22', '同意', '劳资没意见');
INSERT INTO `ordercheck` VALUES (18, NULL, 42, '2101', '2020-07-02 10:25:06', '同意', '劳资也没得意见');
INSERT INTO `ordercheck` VALUES (19, NULL, 42, '3101', '2020-07-02 10:25:39', '同意', '换账号审核真麻烦');
INSERT INTO `ordercheck` VALUES (20, NULL, 43, '3101', '2020-07-02 10:32:52', '同意', '懒得弄了，直接改数据库');
INSERT INTO `ordercheck` VALUES (21, NULL, 20, '3101', '2020-07-02 17:27:27', '同意', '312');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `productLine` int(50) NOT NULL COMMENT '产线',
  `device` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机台',
  `materiel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料',
  `team` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班组',
  `leader` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人sn',
  `progress` int(3) NOT NULL DEFAULT 0 COMMENT '进度默认0',
  `machineType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机种',
  `targetNum` int(10) NOT NULL COMMENT '目标产量',
  `startTime` date NOT NULL COMMENT '开始时间',
  `endTime` date NOT NULL COMMENT '结束时间',
  `connectId` int(20) NULL DEFAULT NULL COMMENT '关联工单id,被关闭和与之关联的工单才有',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `nextId` int(20) NULL DEFAULT NULL COMMENT '下一步处理人sn',
  `modifyTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `status` int(10) NOT NULL DEFAULT 0 COMMENT '申请工单状态，-2拒绝，-1驳回，0草稿（默认）,1已提交，2物料审核，3生产审核，4已完成',
  `isClosed` int(10) NULL DEFAULT 0 COMMENT '工单是否关闭，默认0，未关闭，1关闭',
  `closeReason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关闭工单原因',
  PRIMARY KEY (`id`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES (1, 5, 'AGV', '产品1', '3', '1001', 0, 'M001', 1000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 00:00:00', 1101, '2020-06-28 17:36:08', 1, 0, NULL);
INSERT INTO `orderlist` VALUES (2, 2, 'AGC', '产品2', '2', '1001', 0, 'M002', 2000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 1101, NULL, 0, 0, NULL);
INSERT INTO `orderlist` VALUES (3, 3, 'AGC', '产品3', '3', '1001', 0, 'M003', 3000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 1101, NULL, 0, 0, NULL);
INSERT INTO `orderlist` VALUES (4, 2, 'AGV', '预设物料D', '4', '1001', 0, 'M004', 4000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 1101, NULL, 0, 0, NULL);
INSERT INTO `orderlist` VALUES (5, 5, 'AGV', '预设物料E', '5', '1001', 0, 'M005', 5000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 1101, NULL, 0, 0, NULL);
INSERT INTO `orderlist` VALUES (6, 5, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 4000, '2020-07-06', '2020-06-24', NULL, '2020-06-24 14:23:15', 1101, NULL, 1, 0, NULL);
INSERT INTO `orderlist` VALUES (7, 4, 'AGV', '产品1', '1', '1001', 0, 'M001', 1000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 1101, NULL, 1, 0, NULL);
INSERT INTO `orderlist` VALUES (8, 2, 'AGC', '产品2', '2', '1001', 0, 'M002', 2000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 1101, NULL, 1, 0, NULL);
INSERT INTO `orderlist` VALUES (9, 5, 'AGC', '产品3', '3', '1001', 0, 'M003', 3000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 1101, '2020-06-28 17:06:10', 1, 0, NULL);
INSERT INTO `orderlist` VALUES (10, 3, 'AGV', '预设物料D', '4', '1001', 0, 'M004', 4000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 1101, NULL, 1, 0, NULL);
INSERT INTO `orderlist` VALUES (11, 2, 'AGV', '预设物料E', '5', '1001', 0, 'M005', 5000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 1101, NULL, 1, 0, NULL);
INSERT INTO `orderlist` VALUES (12, 4, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 4000, '2020-07-06', '2020-06-24', NULL, '2020-06-24 14:23:15', 1101, NULL, 1, 0, NULL);
INSERT INTO `orderlist` VALUES (13, 3, 'AGV', '产品1', '1', '1001', 0, 'M001', 1000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 2101, NULL, 2, 0, NULL);
INSERT INTO `orderlist` VALUES (14, 5, 'AGC', '产品2', '2', '1001', 0, 'M002', 2000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 2101, NULL, 2, 0, NULL);
INSERT INTO `orderlist` VALUES (15, 4, 'AGC', '产品3', '3', '1001', 0, 'M003', 3000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 2101, NULL, 2, 0, NULL);
INSERT INTO `orderlist` VALUES (16, 3, 'AGV', '预设物料D', '4', '1001', 0, 'M004', 4000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 2101, NULL, 2, 0, NULL);
INSERT INTO `orderlist` VALUES (17, 5, 'AGV', '预设物料E', '5', '1001', 0, 'M005', 5000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 2101, NULL, 2, 0, NULL);
INSERT INTO `orderlist` VALUES (18, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-07-06', '2020-06-24', NULL, '2020-06-24 14:23:15', 2101, NULL, 2, 0, NULL);
INSERT INTO `orderlist` VALUES (19, 2, 'AGV', '产品1', '1', '1001', 0, 'M001', 1000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 2101, NULL, 2, 0, NULL);
INSERT INTO `orderlist` VALUES (20, 3, 'AGC', '产品2', '2', '1001', 0, 'M002', 2000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 0, '2020-07-02 17:27:27', 4, 0, NULL);
INSERT INTO `orderlist` VALUES (21, 4, 'AGC', '产品3', '3', '1001', 0, 'M003', 3000, '2020-06-02', '2020-06-02', NULL, '2020-06-24 14:23:15', 3101, NULL, 3, 0, NULL);
INSERT INTO `orderlist` VALUES (22, 1, 'AGV', '预设物料D', '4', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 3101, NULL, 3, 0, NULL);
INSERT INTO `orderlist` VALUES (23, 2, 'AGV', '预设物料E', '5', '1001', 0, 'M005', 5000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 3101, NULL, 3, 0, NULL);
INSERT INTO `orderlist` VALUES (24, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-07-06', '2020-06-24', NULL, '2020-06-24 14:23:15', 3101, NULL, 3, 0, NULL);
INSERT INTO `orderlist` VALUES (25, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 3101, NULL, 3, 0, NULL);
INSERT INTO `orderlist` VALUES (26, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 0, '2020-06-29 11:33:26', 4, 0, NULL);
INSERT INTO `orderlist` VALUES (27, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 0, NULL, 4, 0, NULL);
INSERT INTO `orderlist` VALUES (28, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 0, NULL, 4, 0, NULL);
INSERT INTO `orderlist` VALUES (29, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 0, NULL, 4, 0, NULL);
INSERT INTO `orderlist` VALUES (30, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 0, NULL, 4, 0, NULL);
INSERT INTO `orderlist` VALUES (31, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 0, NULL, 4, 0, NULL);
INSERT INTO `orderlist` VALUES (32, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-24 14:23:15', 1001, NULL, -1, 0, NULL);
INSERT INTO `orderlist` VALUES (33, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-11', '2020-06-17', NULL, '2020-06-24 14:23:15', 1001, NULL, -1, 0, NULL);
INSERT INTO `orderlist` VALUES (35, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-14', '2020-06-24', NULL, '2020-06-28 00:00:00', 0, '2020-06-28 17:08:38', -2, 0, NULL);
INSERT INTO `orderlist` VALUES (36, 5, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 4000, '2020-06-14', '2020-06-24', NULL, '2020-06-28 13:09:34', 0, '2020-06-28 15:52:20', 4, 0, NULL);
INSERT INTO `orderlist` VALUES (37, 2, 'AGV', '预设物料D', '2', '1001', 0, 'M004', 4000, '2020-01-01', '2020-01-10', NULL, '2020-06-28 00:00:00', 1101, '2020-06-28 00:00:00', 1, 0, NULL);
INSERT INTO `orderlist` VALUES (38, 1, 'AGV', '预设物料E', '1', '1001', 0, 'M002', 4000, '2020-06-22', '2020-06-30', NULL, '2020-06-28 22:11:23', NULL, '2020-06-28 22:11:23', 0, 0, NULL);
INSERT INTO `orderlist` VALUES (39, 3, 'AGV', '预设物料A', '3', '1001', 0, 'M001', 4000, '2020-06-01', '2020-06-17', NULL, '2020-06-29 00:00:00', 0, '2020-06-29 10:21:34', -2, 0, NULL);
INSERT INTO `orderlist` VALUES (40, 5, 'AGV', '预设物料C', '4', '1001', 0, 'M003', 4000, '2020-06-09', '2020-06-24', NULL, '2020-06-29 00:00:00', 1101, '2020-06-29 00:00:00', 1, 0, NULL);
INSERT INTO `orderlist` VALUES (41, 1, 'AGV', '预设物料B', '1', '1001', 0, 'M001', 4000, '2020-06-01', '2020-06-10', NULL, '2020-06-29 00:00:00', 0, '2020-06-29 10:57:38', 4, 0, NULL);
INSERT INTO `orderlist` VALUES (42, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M001', 4000, '2020-06-14', '2020-06-24', NULL, '2020-07-02 10:17:04', 0, '2020-07-02 10:25:39', 4, 0, NULL);
INSERT INTO `orderlist` VALUES (43, 1, 'AGV', '预设物料D', '1', '1001', 0, 'M004', 1000, '2020-06-09', '2020-06-24', 42, '2020-07-02 10:30:51', 0, '2020-07-02 10:32:52', 4, 0, NULL);

-- ----------------------------
-- Table structure for perm
-- ----------------------------
DROP TABLE IF EXISTS `perm`;
CREATE TABLE `perm`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'permId',
  `roleId` int(20) NULL DEFAULT NULL COMMENT 'roleId',
  `departmentId` int(20) NULL DEFAULT NULL COMMENT 'departmentId',
  `permName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of perm
-- ----------------------------
INSERT INTO `perm` VALUES (1, NULL, 7, 'all');
INSERT INTO `perm` VALUES (2, NULL, 2, 'storeChart');
INSERT INTO `perm` VALUES (3, NULL, 1, 'produceChart');
INSERT INTO `perm` VALUES (4, NULL, 3, 'produceChart');
INSERT INTO `perm` VALUES (5, NULL, 4, 'qualityChart');

-- ----------------------------
-- Table structure for process
-- ----------------------------
DROP TABLE IF EXISTS `process`;
CREATE TABLE `process`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '工单进度表id',
  `orderId` int(20) NOT NULL COMMENT '生产工单id',
  `NGNum` int(20) NOT NULL DEFAULT 0 COMMENT '不良品数量默认为0',
  `realNum` int(50) NOT NULL DEFAULT 0 COMMENT '实际产量,默认新建时加入为0',
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '工单状态，默认为0，即准备中，1为进行中，2为已完成，-1为暂停',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `isClosed` int(10) NULL DEFAULT 0 COMMENT '工单是否关闭，默认0，未关闭，1关闭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of process
-- ----------------------------
INSERT INTO `process` VALUES (1, 1, 150, 1000, 2, '2020-06-29 00:00:00', 0);
INSERT INTO `process` VALUES (2, 2, 100, 1000, 1, NULL, 0);
INSERT INTO `process` VALUES (3, 3, 100, 3000, 2, NULL, 0);
INSERT INTO `process` VALUES (4, 4, 100, 2000, 1, NULL, 0);
INSERT INTO `process` VALUES (5, 5, 100, 1000, 1, NULL, 0);
INSERT INTO `process` VALUES (6, 32, 0, 0, 0, NULL, 0);
INSERT INTO `process` VALUES (7, 33, 0, 0, 0, NULL, 0);
INSERT INTO `process` VALUES (8, 34, 2, 2000, 2, '2020-06-28 00:00:00', 0);
INSERT INTO `process` VALUES (9, 26, 1000, 1000, 2, '2020-07-02 11:42:14', 0);
INSERT INTO `process` VALUES (10, 42, 40, 3000, -2, '2020-07-02 10:30:24', 1);
INSERT INTO `process` VALUES (11, 43, 10, 1000, 2, '2020-07-02 10:37:56', 0);
INSERT INTO `process` VALUES (12, 20, 0, 0, 0, '2020-07-02 17:27:27', 0);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id,自增',
  `productType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品类型',
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `specification` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'LCD', 'LV5触摸屏', '15.2*2.54', 'cm');
INSERT INTO `product` VALUES (2, '上壳', 'V8金属壳', '810*920', 'mm');

-- ----------------------------
-- Table structure for productline
-- ----------------------------
DROP TABLE IF EXISTS `productline`;
CREATE TABLE `productline`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `productDeparment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产部门',
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `productType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品型号',
  `productOrder` int(11) NOT NULL COMMENT '生产单号',
  `peopleTotal` int(20) NOT NULL COMMENT '共用人数',
  `outputPlan` int(20) NOT NULL COMMENT '计划产量',
  `comlpetionDate` datetime(0) NOT NULL COMMENT '完成日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56785 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of productline
-- ----------------------------
INSERT INTO `productline` VALUES (1, '生产一线', '电脑', '1918273', 201921334, 10, 100, '2019-03-04 00:00:00');
INSERT INTO `productline` VALUES (56784, '生产一线', '电脑', 'A100023', 201921334, 10, 100, '2019-04-05 00:00:00');

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id,自增',
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产厂家',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of provider
-- ----------------------------
INSERT INTO `provider` VALUES (1, 'LCD', '富士康', '成都武侯区', '15624337658');
INSERT INTO `provider` VALUES (2, '上壳', '世硕电脑', '成都青羊区', '18724337658');
INSERT INTO `provider` VALUES (3, '下壳', '富士康', '成都成华区', '18724337456');

-- ----------------------------
-- Table structure for qualitybasic
-- ----------------------------
DROP TABLE IF EXISTS `qualitybasic`;
CREATE TABLE `qualitybasic`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `project` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目',
  `proportion` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '比重',
  `target` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目标',
  `modifyTime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qualitybasic
-- ----------------------------
INSERT INTO `qualitybasic` VALUES (2, '电脑周边产品', 'COB退货率', '25', '≤80PPM', '2020-06-26 14:03:52');
INSERT INTO `qualitybasic` VALUES (3, '电脑周边产品', 'PCBA退货率', '20', '≤120PPM', '2020-06-26 14:03:52');
INSERT INTO `qualitybasic` VALUES (4, '电脑周边产品', 'COB生产良率', '15', '≥99.8%', '2020-06-26 14:03:52');
INSERT INTO `qualitybasic` VALUES (5, '电脑周边产品', 'PCBA生产良率', '15', '≥99.8%', '2020-06-26 14:03:52');
INSERT INTO `qualitybasic` VALUES (6, '电脑周边产品', '客户怨诉件数', '25', '≤3件', '2020-06-26 14:03:52');
INSERT INTO `qualitybasic` VALUES (7, '电话产品', 'COB退货率', '25', '≤800PPM', '2020-06-27 14:03:52');
INSERT INTO `qualitybasic` VALUES (8, '电话产品', 'PCBA退货率', '20', '≤800PPM', '2020-06-27 14:03:52');
INSERT INTO `qualitybasic` VALUES (9, '电话产品', 'COB生产良率', '15', '≥97%', '2020-06-27 14:03:52');
INSERT INTO `qualitybasic` VALUES (10, '电话产品', 'PCBA生产良率', '15', '≥98%', '2020-06-27 14:03:52');
INSERT INTO `qualitybasic` VALUES (11, '电话产品', '客户怨诉件数', '25', '≤5件', '2020-06-27 14:03:52');
INSERT INTO `qualitybasic` VALUES (12, '其他产品', 'COB退货率', '25', '≤1200PPM', '2020-06-28 14:03:52');
INSERT INTO `qualitybasic` VALUES (13, '其他产品', 'PCBA退货率', '20', '≤1200PPM', '2020-06-28 14:03:52');
INSERT INTO `qualitybasic` VALUES (14, '其他产品', 'COB生产良率', '15', '≥95%', '2020-06-28 14:03:52');
INSERT INTO `qualitybasic` VALUES (15, '其他产品', 'PCBA生产良率', '15', '≥95%', '2020-06-28 14:03:52');
INSERT INTO `qualitybasic` VALUES (16, '其他产品', '客户怨诉件数', '25', '≤5件', '2020-06-28 14:03:52');
INSERT INTO `qualitybasic` VALUES (17, 'SMT', 'SMT生产良率', '40', '≥99.8%', '2020-06-28 14:03:52');
INSERT INTO `qualitybasic` VALUES (18, 'SMT', 'SMT退货率', '30', '≤120PPM', '2020-06-29 14:03:52');
INSERT INTO `qualitybasic` VALUES (19, 'SMT', '客户怨诉件数', '25', '≤4件', '2020-06-29 14:03:52');
INSERT INTO `qualitybasic` VALUES (20, '测试', '测试', '80', '20', '2020-06-29 14:03:52');
INSERT INTO `qualitybasic` VALUES (21, '测试', '测试', '80', '20', '2020-06-29 14:03:52');

-- ----------------------------
-- Table structure for qualitylog
-- ----------------------------
DROP TABLE IF EXISTS `qualitylog`;
CREATE TABLE `qualitylog`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `orderId` int(20) NOT NULL COMMENT '工单序号',
  `machineType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机种',
  `team` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班组',
  `createDate` datetime(0) NOT NULL COMMENT '检测时间',
  `status` int(20) NOT NULL DEFAULT 0 COMMENT '状态，数字表示,默认0无异常，1未处理，2处理中，3已处理',
  `isMistake` int(2) NULL DEFAULT 0 COMMENT '是否发生过异常，默认无异常0，有异常1',
  `isRepair` int(2) NULL DEFAULT 0 COMMENT '是否重修，默认无重修0，有重修1',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常原因',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理记录',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  `modifyTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qualitylog
-- ----------------------------
INSERT INTO `qualitylog` VALUES (1, 1, 'M001', '1线', '2020-05-29 00:00:00', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `qualitylog` VALUES (2, 2, 'M002', '2线', '2020-05-29 00:00:00', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `qualitylog` VALUES (3, 3, 'M003', '3线', '2020-05-29 00:00:00', 2, 1, 0, '机器故障', '更换机器', '2020-06-19 00:00:00', NULL);
INSERT INTO `qualitylog` VALUES (4, 4, 'M003', '3线', '2020-05-29 00:00:00', 2, 1, 1, '来料异常', '返修', '2020-06-19 00:00:00', NULL);
INSERT INTO `qualitylog` VALUES (5, 5, 'M001', '1线', '2020-05-29 00:00:00', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `qualitylog` VALUES (6, 6, 'M002', '2线', '2020-05-29 00:00:00', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `qualitylog` VALUES (7, 7, 'M003', '3线', '2020-05-29 00:00:00', 2, 1, 0, '机器故障', '更换机器', '2020-06-19 00:00:00', NULL);
INSERT INTO `qualitylog` VALUES (8, 8, 'M003', '3线', '2020-05-29 00:00:00', 2, 1, 1, '来料异常', '返修', '2020-06-19 00:00:00', NULL);
INSERT INTO `qualitylog` VALUES (9, 37, 'M001', '1', '2020-06-29 15:50:59', 0, NULL, NULL, '无异常', NULL, NULL, NULL);
INSERT INTO `qualitylog` VALUES (10, 38, 'M004', '1', '2020-06-29 15:59:40', 0, NULL, NULL, '无异常', NULL, NULL, '2020-06-29 15:59:40');
INSERT INTO `qualitylog` VALUES (11, 42, 'M001', '1', '2020-07-02 17:31:17', 0, NULL, NULL, '', NULL, NULL, '2020-07-02 17:31:17');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `orderId` int(20) NOT NULL COMMENT '返修工单序号',
  `repairType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '返修机种',
  `modifyReason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改原因',
  `modifyDate` date NOT NULL COMMENT '修改时间',
  `repairTeam` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '人员安排',
  `applicantName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (1, 1, 'M001', '设备故障', '2020-05-29', '1', '张武');
INSERT INTO `repair` VALUES (2, 2, 'M002', '设备故障', '2020-05-29', '2', '张武');
INSERT INTO `repair` VALUES (3, 3, 'M003', '设备故障', '2020-06-01', '3', '张武');

-- ----------------------------
-- Table structure for resou
-- ----------------------------
DROP TABLE IF EXISTS `resou`;
CREATE TABLE `resou`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `num` int(255) NOT NULL COMMENT '原料库数量',
  `time` date NOT NULL COMMENT '更新时间',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否损耗',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of resou
-- ----------------------------
INSERT INTO `resou` VALUES (1, 1000, '2019-01-15', '');
INSERT INTO `resou` VALUES (2, 2000, '2019-02-15', '');
INSERT INTO `resou` VALUES (3, 3000, '2019-03-15', '');
INSERT INTO `resou` VALUES (4, 4000, '2019-04-15', '');
INSERT INTO `resou` VALUES (5, 8000, '2019-05-15', '');
INSERT INTO `resou` VALUES (6, 10000, '2019-06-15', '');
INSERT INTO `resou` VALUES (7, 12000, '2019-07-15', '');
INSERT INTO `resou` VALUES (8, 11000, '2019-08-15', '');
INSERT INTO `resou` VALUES (9, 9000, '2019-09-15', '');
INSERT INTO `resou` VALUES (10, 6000, '2019-10-15', '');
INSERT INTO `resou` VALUES (11, 5000, '2019-11-15', '');
INSERT INTO `resou` VALUES (12, 3000, '2019-12-15', '');
INSERT INTO `resou` VALUES (13, 3500, '2019-12-16', '');
INSERT INTO `resou` VALUES (14, 5000, '2020-06-21', '');
INSERT INTO `resou` VALUES (15, 8000, '2020-06-22', '');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'roleId',
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'manager');
INSERT INTO `role` VALUES (3, 'normal');

-- ----------------------------
-- Table structure for show_list
-- ----------------------------
DROP TABLE IF EXISTS `show_list`;
CREATE TABLE `show_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '日期',
  `num` int(255) NULL DEFAULT NULL COMMENT '计划数',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品型号',
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单总数',
  `acc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当日累计产品',
  `bad` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不良品累计产量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` int(15) NOT NULL COMMENT '部门编号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES (0, '系统管理');
INSERT INTO `sys_department` VALUES (1, '产销管理部');
INSERT INTO `sys_department` VALUES (2, '物料部');
INSERT INTO `sys_department` VALUES (3, '生产部');
INSERT INTO `sys_department` VALUES (4, '品质部');
INSERT INTO `sys_department` VALUES (5, '设备部');
INSERT INTO `sys_department` VALUES (6, '工艺部');
INSERT INTO `sys_department` VALUES (7, '运营部');

-- ----------------------------
-- Table structure for sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee`;
CREATE TABLE `sys_employee`  (
  `sn` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工编号',
  `department_id` int(15) NULL DEFAULT NULL COMMENT '所在部门编号',
  `position_id` int(15) NULL DEFAULT NULL COMMENT '职位名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `roleId` int(20) NULL DEFAULT NULL COMMENT '角色id',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '随机盐',
  PRIMARY KEY (`sn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_employee
-- ----------------------------
INSERT INTO `sys_employee` VALUES ('0', 0, 0, '无', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('1001', 1, 1, '张三', 'ed77f3e6eb042c4589643119a4ab9b3d', 3, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('1101', 1, 2, '张四', 'ed77f3e6eb042c4589643119a4ab9b3d', 2, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('1234', 0, 0, '系统管理员', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('2001', 2, 1, '王五', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('2101', 2, 2, '王六', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('3001', 3, 1, '李三', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('3101', 3, 2, '李四', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('4001', 4, 1, '赵三', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');
INSERT INTO `sys_employee` VALUES ('4101', 4, 2, '赵四', 'ed77f3e6eb042c4589643119a4ab9b3d', 1, 'ifov!^u&');

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `id` int(15) NOT NULL COMMENT '职位id',
  `name_cn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文职务',
  `name_en` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文职务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO `sys_position` VALUES (1, '普通员工', 'normal');
INSERT INTO `sys_position` VALUES (2, '部门经理', 'd_manager');
INSERT INTO `sys_position` VALUES (3, '总经理', 'g_manager');
INSERT INTO `sys_position` VALUES (4, '品质人员', 'financer');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `productDepartment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产部门',
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `productTeam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产班组',
  `teamTotal` int(10) NOT NULL COMMENT '班组人数',
  `completeTotalPlan` int(20) NOT NULL COMMENT '完成数量',
  `completeTime` datetime(0) NOT NULL COMMENT '完成日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (1, '生产一线', 'LCD', '一班', 20, 400, '2019-04-05 00:00:00');
INSERT INTO `team` VALUES (2, '生产一线', 'LCD', '二班', 25, 400, '2019-04-05 00:00:00');
INSERT INTO `team` VALUES (3, '生产一线', 'LCD', '三班', 15, 400, '2019-04-05 00:00:00');
INSERT INTO `team` VALUES (4, '生产一线', 'LCD', '四班', 20, 400, '2019-04-05 00:00:00');
INSERT INTO `team` VALUES (5, '生产一线', 'LCD', '五班', 18, 400, '2019-04-05 00:00:00');

-- ----------------------------
-- Table structure for trace
-- ----------------------------
DROP TABLE IF EXISTS `trace`;
CREATE TABLE `trace`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '产品追溯id',
  `orderId` int(20) NULL DEFAULT NULL COMMENT '工单id',
  `craftId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工艺机型',
  `productId` int(20) NULL DEFAULT NULL COMMENT '产线id',
  `teamId` int(20) NULL DEFAULT NULL COMMENT '班组id',
  `invGetId` int(20) NULL DEFAULT NULL COMMENT '领料id',
  `invSaveId` int(20) NULL DEFAULT NULL COMMENT '入库id',
  `invBackId` int(20) NULL DEFAULT NULL COMMENT '退料id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trace
-- ----------------------------
INSERT INTO `trace` VALUES (1, 1, '1', 1, 1, 1, 1, 1);
INSERT INTO `trace` VALUES (2, 2, '2', 2, 2, 2, 2, 2);
INSERT INTO `trace` VALUES (3, 3, '3', 3, 3, 3, 3, 3);
INSERT INTO `trace` VALUES (36, 36, '36', 36, 36, 36, 36, 36);
INSERT INTO `trace` VALUES (37, 41, NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `trace` VALUES (38, 26, NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `trace` VALUES (39, 39, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trace` VALUES (40, 42, 'M001', 1, 1, 42, 42, 42);
INSERT INTO `trace` VALUES (41, 43, 'M004', 1, 1, 43, 43, 43);
INSERT INTO `trace` VALUES (42, 20, 'M002', 3, 2, 20, 20, 20);

SET FOREIGN_KEY_CHECKS = 1;
