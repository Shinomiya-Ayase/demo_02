/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : hrms

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 29/01/2020 11:58:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment`  (
  `app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约编号',
  `app_resume_id` int(11) NULL DEFAULT NULL COMMENT '简历编号外键(简历表)',
  `app_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `app_principal_id` int(11) NULL DEFAULT NULL COMMENT '面试负责人外键(用户表)',
  `app_detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约详情',
  `appointmentor_id` int(11) NULL DEFAULT NULL COMMENT '预约人(用户表)',
  `app_interview_time` date NULL DEFAULT NULL COMMENT '面试时间',
  `app_writer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '笔试试题',
  `inter_assessment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面试评价',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bargain
-- ----------------------------
DROP TABLE IF EXISTS `bargain`;
CREATE TABLE `bargain`  (
  `bargain_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同编号',
  `bargain_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `ba_date` date NULL DEFAULT NULL COMMENT '合同日期',
  PRIMARY KEY (`bargain_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channel
-- ----------------------------
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel`  (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '渠道编号',
  `channel_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '渠道名称',
  `website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网址',
  `channel_type_id` int(11) NULL DEFAULT NULL COMMENT '渠道类型外键(渠道类表)',
  `principal_id` int(11) NULL DEFAULT NULL COMMENT '负责人外键(用户表)',
  `contract_id` int(11) NULL DEFAULT NULL COMMENT '合同编号外键(合同表)',
  `progress_situation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '进展情况',
  PRIMARY KEY (`channel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '渠道表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channel_link
-- ----------------------------
DROP TABLE IF EXISTS `channel_link`;
CREATE TABLE `channel_link`  (
  `channel_id` int(11) NULL DEFAULT NULL COMMENT '渠道编号外键(渠道表)',
  `link_id` int(11) NULL DEFAULT NULL COMMENT '联系人编号外键(联系人表)'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '渠道联系人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channel_type
-- ----------------------------
DROP TABLE IF EXISTS `channel_type`;
CREATE TABLE `channel_type`  (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '渠道类型编号(渠道表)',
  `channel_typeName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '渠道类型名称',
  PRIMARY KEY (`channel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '渠道类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel_type
-- ----------------------------
INSERT INTO `channel_type` VALUES (6, '校园招聘');
INSERT INTO `channel_type` VALUES (7, '现场招聘');
INSERT INTO `channel_type` VALUES (8, '网络招聘');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `cust_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户公司编号',
  `cust_company` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户公司名称',
  PRIMARY KEY (`cust_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '源美');
INSERT INTO `company` VALUES (2, '协盈');
INSERT INTO `company` VALUES (3, '茂发');
INSERT INTO `company` VALUES (4, '长鑫');
INSERT INTO `company` VALUES (5, '优元');

-- ----------------------------
-- Table structure for cust_interview
-- ----------------------------
DROP TABLE IF EXISTS `cust_interview`;
CREATE TABLE `cust_interview`  (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户面试编号',
  `interview_id` int(11) NULL DEFAULT NULL COMMENT '面试编号外键(面试表)',
  `interview_result` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面试结果说明',
  `ruzhiInfo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入职信息',
  `yesOrNo` int(11) NULL DEFAULT NULL COMMENT '是否通过面试',
  `yesOrNoPosition` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否到岗',
  `position_condition` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '到岗情况',
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户面试记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `department_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `duty_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `department_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门描述',
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '财务部', 'cwBoss', '管钱');
INSERT INTO `department` VALUES (2, '经理部', 'jlBoss', '官人');
INSERT INTO `department` VALUES (3, '市场部', 'scBoss', '传销');
INSERT INTO `department` VALUES (4, '销售部', 'xsBoss', '销售');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典编号',
  `dict_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型下拉框的绑定',
  `dict_item` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典条目',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (1, '语言水平', '一级');
INSERT INTO `dict` VALUES (2, '语言水平', '二级');
INSERT INTO `dict` VALUES (3, '语言水平', '三级');
INSERT INTO `dict` VALUES (4, '语言类型', '英语');
INSERT INTO `dict` VALUES (5, '学历', '高中');
INSERT INTO `dict` VALUES (6, '学历', '大专');
INSERT INTO `dict` VALUES (7, '学历', '本科');
INSERT INTO `dict` VALUES (8, '学历', '研究生');
INSERT INTO `dict` VALUES (9, '应聘岗位', 'JAVA');
INSERT INTO `dict` VALUES (10, '应聘岗位', 'Python');
INSERT INTO `dict` VALUES (11, '应聘岗位', '.NET');
INSERT INTO `dict` VALUES (12, '语言类型', '日语');
INSERT INTO `dict` VALUES (13, '语言类型', '俄语');
INSERT INTO `dict` VALUES (14, '语言类型', '韩语');
INSERT INTO `dict` VALUES (15, '投递方式', '自投');
INSERT INTO `dict` VALUES (16, '投递方式', '邮政');
INSERT INTO `dict` VALUES (17, '投递方式', '网络');

-- ----------------------------
-- Table structure for interview
-- ----------------------------
DROP TABLE IF EXISTS `interview`;
CREATE TABLE `interview`  (
  `interview_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '面试记录编号',
  `app_id` int(11) NULL DEFAULT NULL COMMENT '预约编号外键(预约表)',
  `interview_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `newJob` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '已有新工作',
  `leaveOffice` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否离职',
  `workExperience` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作经验',
  `figure` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '形象',
  `logical` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '逻辑思维',
  `comm_team` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '沟通协作',
  `writtenTest` int(11) NULL DEFAULT NULL COMMENT '笔试成绩',
  `interview_time` date NULL DEFAULT NULL COMMENT '面试日期',
  `income` int(11) NULL DEFAULT NULL COMMENT '原单位收入',
  `interviewer` int(11) NULL DEFAULT NULL COMMENT '面试人外键(用户表)',
  `hope_salary` int(11) NULL DEFAULT NULL COMMENT '期望薪水',
  `treat_salary` int(11) NULL DEFAULT NULL COMMENT '谈判薪水',
  `duty_time` date NULL DEFAULT NULL COMMENT '预计到岗时间',
  `assessment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '综合评价',
  `resume_state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历状态',
  `interview_remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`interview_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '面试记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link`  (
  `link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系人编号',
  `linkMan_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `dutyOne` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `officePhoneOne` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公电话',
  `mobilePhoneOne` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `homePhoneOne` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住宅电话',
  `emailOne` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'email',
  `msn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'msn',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '联系人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `parent_id` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级菜单',
  `css` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单样式',
  `menu_url` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '简历管理', '0', 'icon clipboard outline large yellow', '1');
INSERT INTO `menu` VALUES (2, '简历中心', '1', 'align justify yellow icon', '/to/resume/center');
INSERT INTO `menu` VALUES (4, '预约记录', '1', 'sticky note yellow icon', '/to/resume/wait');
INSERT INTO `menu` VALUES (5, '面试评价', '1', 'user md yellow icon', '/to/resume/ms');
INSERT INTO `menu` VALUES (6, '客户评价', '1', 'smile yellow icon', '/to/resume/cst');
INSERT INTO `menu` VALUES (7, '系统管理', '0', 'icon cogs large teal', '2');
INSERT INTO `menu` VALUES (8, '用户管理', '2', 'user teal icon', '/to/sys/user');
INSERT INTO `menu` VALUES (9, '角色管理', '2', 'user secret teal icon', '/to/sys/role');
INSERT INTO `menu` VALUES (10, '更改密码', '2', 'lock teal icon', '/to/sys/pwd');
INSERT INTO `menu` VALUES (11, '部门管理', '2', 'building teal icon', '/to/sys/dep');
INSERT INTO `menu` VALUES (12, '渠道管理', '0', 'icon handshake pink inverted large', '3');
INSERT INTO `menu` VALUES (13, '渠道类型', '3', 'cubes pink icon', '/to/channel/type');
INSERT INTO `menu` VALUES (14, '需求管理', '0', 'icon pencil blue inverted large', '4');
INSERT INTO `menu` VALUES (15, '需求信息', '4', 'comment alternate blue icon', '/to/re/info');
INSERT INTO `menu` VALUES (16, '项目管理', '4', 'blue bug icon', '/to/re/pj');
INSERT INTO `menu` VALUES (17, '数据统计', '0', 'icon database large orange', '5');
INSERT INTO `menu` VALUES (18, '渠道类型统计', '5', 'sitemap orange icon', '/to/data/channelType');
INSERT INTO `menu` VALUES (19, '渠道简历数量统计', '5', 'sort numeric down orange icon', '/to/data/resumeCount');
INSERT INTO `menu` VALUES (20, '渠道简历状态统计', '5', 'signal orange icon', '/to/data/resumest');
INSERT INTO `menu` VALUES (21, '招聘部门业绩统计', '5', 'sort amount down orange icon', '/to/data/depyj');
INSERT INTO `menu` VALUES (22, '到岗人数统计', '5', 'rss orange icon', '/to/data/personCount');
INSERT INTO `menu` VALUES (23, '渠道合格简历统计', '5', 'wifi orange icon', '/to/data/channelok');
INSERT INTO `menu` VALUES (24, '渠道列表', '3', 'list ol pink icon', '/to/channel/list');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限编号',
  `permissionName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `permission_path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限路径',
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '权限添加', '/addPermission');
INSERT INTO `permission` VALUES (2, '权限删除', '/delPermission');
INSERT INTO `permission` VALUES (3, '权限修改', '/updatePermission');
INSERT INTO `permission` VALUES (4, '查看权限', '/showPermission');
INSERT INTO `permission` VALUES (5, '部门删除', '/delDep');
INSERT INTO `permission` VALUES (6, '部门添加', '/addDep');
INSERT INTO `permission` VALUES (7, '部门修改', '/updateDep');
INSERT INTO `permission` VALUES (8, '用户添加', '/addUser');
INSERT INTO `permission` VALUES (9, '用户删除', '/delUser');
INSERT INTO `permission` VALUES (10, '用户修改', '/updateUser');
INSERT INTO `permission` VALUES (11, '查看用户', '/showUser');
INSERT INTO `permission` VALUES (12, '查看简历', '/showResume');
INSERT INTO `permission` VALUES (13, '录入简历', '/addResume');
INSERT INTO `permission` VALUES (14, '修改简历', '/updateResume');
INSERT INTO `permission` VALUES (15, '删除简历', '/delResume');
INSERT INTO `permission` VALUES (16, '查看客户评价', '/showCst');
INSERT INTO `permission` VALUES (17, '添加客户评价', '/addCst');
INSERT INTO `permission` VALUES (18, '删除客户评价', '/delCst');
INSERT INTO `permission` VALUES (19, '修改客户评价', '/updateCst');
INSERT INTO `permission` VALUES (20, '查看预约记录', '/showYy');
INSERT INTO `permission` VALUES (21, '添加预约', '/addYy');
INSERT INTO `permission` VALUES (22, '删除预约', '/delYy');
INSERT INTO `permission` VALUES (23, '修改预约', '/updateYy');
INSERT INTO `permission` VALUES (24, '查看面试记录', '/showMs');
INSERT INTO `permission` VALUES (25, '添加面试', '/addMs');
INSERT INTO `permission` VALUES (26, '删除面试', '/delMs');
INSERT INTO `permission` VALUES (27, '修改面试', '/updateMs');
INSERT INTO `permission` VALUES (28, '渠道类型添加', '/addChannelType');
INSERT INTO `permission` VALUES (29, '渠道类型删除', '/delChannelType');
INSERT INTO `permission` VALUES (30, '渠道类型修改', '/updateChannelType');
INSERT INTO `permission` VALUES (31, '查看渠道类型', '/showChannelType');
INSERT INTO `permission` VALUES (32, '添加渠道', '/addChannel');
INSERT INTO `permission` VALUES (33, '删除渠道', '/delChannel');
INSERT INTO `permission` VALUES (34, '修改渠道', '/updateChannel');
INSERT INTO `permission` VALUES (35, '查看渠道信息', '/showChannel');
INSERT INTO `permission` VALUES (36, '项目添加', '/addPj');
INSERT INTO `permission` VALUES (37, '项目删除', '/delPj');
INSERT INTO `permission` VALUES (38, '项目修改', '/updatePj');
INSERT INTO `permission` VALUES (39, '查看项目', '/showPj');
INSERT INTO `permission` VALUES (40, '添加需求', '/addXq');
INSERT INTO `permission` VALUES (41, '删除需求', '/delXq');
INSERT INTO `permission` VALUES (42, '修改需求', '/updateXq');
INSERT INTO `permission` VALUES (43, '查看需求', '/showXq');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门编号外键(部门表)',
  `project_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `projectManage_id` int(11) NULL DEFAULT NULL COMMENT '项目经理',
  `project_helper_id` int(11) NULL DEFAULT NULL COMMENT '项目助理',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `linkman` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `project_start_time` date NULL DEFAULT NULL COMMENT '项目开始时间',
  `project_end_time` date NULL DEFAULT NULL COMMENT '项目截止时间',
  `projectDesc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目描述',
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for requirement
-- ----------------------------
DROP TABLE IF EXISTS `requirement`;
CREATE TABLE `requirement`  (
  `requirement_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '需求编号',
  `requirement_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求名称',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门编号外键(部门表)',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目编号外键(项目表)',
  `re_population` int(11) NULL DEFAULT NULL COMMENT '需求人数',
  `cust_company_id` int(11) NULL DEFAULT NULL COMMENT '外键(客户公司)',
  `custmanger_id` int(11) NULL DEFAULT NULL COMMENT '客户经理外键(用户表)',
  `re_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `re_start_time` date NULL DEFAULT NULL COMMENT '需求起始时间',
  `re_end_time` date NULL DEFAULT NULL COMMENT '需求结束时间',
  `re_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求描述',
  `re_remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `re_station_id` int(11) NULL DEFAULT NULL COMMENT '外键(岗位表)',
  PRIMARY KEY (`requirement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目需求表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `resume_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '简历编号',
  `resume_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `resume_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他联系方式',
  `resume_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `resume_bir` date NULL DEFAULT NULL COMMENT '出生年月',
  `resume_gender` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `resume_lang_id` int(11) NULL DEFAULT NULL COMMENT '语言水平(外键)',
  `resume_lanType_id` int(11) NULL DEFAULT NULL COMMENT '语言类型(外键)',
  `education_time` date NULL DEFAULT NULL COMMENT '毕业时间',
  `education_id` int(11) NULL DEFAULT NULL COMMENT '学历(外键)',
  `resume_resource_id` int(11) NULL DEFAULT NULL COMMENT '简历渠道来源外键(渠道类型)',
  `resume_channel_id` int(11) NULL DEFAULT NULL COMMENT '简历渠道外键(渠道表)',
  `position_id` int(11) NULL DEFAULT NULL COMMENT '应聘岗位外键(岗位表)',
  `post_id` int(11) NULL DEFAULT NULL COMMENT '投递方式',
  `post_time` date NULL DEFAULT NULL COMMENT '简历投递时间',
  `arrive_time` date NULL DEFAULT NULL COMMENT '简历收到时间',
  `resume_college` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `idCard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `resume_major` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `background` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业背景',
  `skills` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技能',
  `hukouLocation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户口所在地',
  `workTime` int(11) NULL DEFAULT NULL COMMENT '工作年限',
  `txtResume` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文本简历',
  PRIMARY KEY (`resume_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简历表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `roleName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_flag` int(11) NULL DEFAULT NULL COMMENT '角色标识',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '系统管理员', 1);
INSERT INTO `role` VALUES (2, '招聘经理', 1);
INSERT INTO `role` VALUES (3, '招聘助理', 1);
INSERT INTO `role` VALUES (4, '项目助理', 1);
INSERT INTO `role` VALUES (5, '项目经理', 1);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `role_id` int(11) NOT NULL COMMENT '外键(角色表)',
  `permission_id` int(11) NULL DEFAULT NULL COMMENT '外键(权限表)'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1);
INSERT INTO `role_permission` VALUES (1, 2);
INSERT INTO `role_permission` VALUES (1, 3);
INSERT INTO `role_permission` VALUES (1, 4);
INSERT INTO `role_permission` VALUES (1, 5);
INSERT INTO `role_permission` VALUES (1, 6);
INSERT INTO `role_permission` VALUES (1, 7);
INSERT INTO `role_permission` VALUES (1, 8);
INSERT INTO `role_permission` VALUES (1, 9);
INSERT INTO `role_permission` VALUES (1, 10);
INSERT INTO `role_permission` VALUES (1, 11);
INSERT INTO `role_permission` VALUES (2, 11);
INSERT INTO `role_permission` VALUES (2, 20);
INSERT INTO `role_permission` VALUES (2, 24);
INSERT INTO `role_permission` VALUES (2, 27);
INSERT INTO `role_permission` VALUES (2, 12);
INSERT INTO `role_permission` VALUES (3, 20);
INSERT INTO `role_permission` VALUES (3, 21);
INSERT INTO `role_permission` VALUES (3, 22);
INSERT INTO `role_permission` VALUES (3, 23);
INSERT INTO `role_permission` VALUES (3, 24);
INSERT INTO `role_permission` VALUES (3, 25);
INSERT INTO `role_permission` VALUES (3, 26);
INSERT INTO `role_permission` VALUES (3, 27);
INSERT INTO `role_permission` VALUES (3, 12);
INSERT INTO `role_permission` VALUES (3, 13);
INSERT INTO `role_permission` VALUES (3, 14);
INSERT INTO `role_permission` VALUES (3, 15);
INSERT INTO `role_permission` VALUES (4, 16);
INSERT INTO `role_permission` VALUES (4, 17);
INSERT INTO `role_permission` VALUES (4, 18);
INSERT INTO `role_permission` VALUES (4, 19);
INSERT INTO `role_permission` VALUES (4, 12);
INSERT INTO `role_permission` VALUES (5, 12);
INSERT INTO `role_permission` VALUES (5, 16);
INSERT INTO `role_permission` VALUES (5, 19);
INSERT INTO `role_permission` VALUES (3, 28);
INSERT INTO `role_permission` VALUES (3, 30);
INSERT INTO `role_permission` VALUES (3, 31);
INSERT INTO `role_permission` VALUES (3, 32);
INSERT INTO `role_permission` VALUES (3, 34);
INSERT INTO `role_permission` VALUES (3, 35);
INSERT INTO `role_permission` VALUES (2, 28);
INSERT INTO `role_permission` VALUES (2, 29);
INSERT INTO `role_permission` VALUES (2, 30);
INSERT INTO `role_permission` VALUES (2, 31);
INSERT INTO `role_permission` VALUES (2, 32);
INSERT INTO `role_permission` VALUES (2, 33);
INSERT INTO `role_permission` VALUES (2, 34);
INSERT INTO `role_permission` VALUES (2, 35);
INSERT INTO `role_permission` VALUES (1, 36);
INSERT INTO `role_permission` VALUES (1, 37);
INSERT INTO `role_permission` VALUES (1, 38);
INSERT INTO `role_permission` VALUES (1, 39);
INSERT INTO `role_permission` VALUES (2, 36);
INSERT INTO `role_permission` VALUES (2, 37);
INSERT INTO `role_permission` VALUES (2, 38);
INSERT INTO `role_permission` VALUES (2, 39);
INSERT INTO `role_permission` VALUES (4, 40);
INSERT INTO `role_permission` VALUES (4, 41);
INSERT INTO `role_permission` VALUES (4, 42);
INSERT INTO `role_permission` VALUES (4, 43);
INSERT INTO `role_permission` VALUES (5, 40);
INSERT INTO `role_permission` VALUES (5, 41);
INSERT INTO `role_permission` VALUES (5, 42);
INSERT INTO `role_permission` VALUES (5, 43);

-- ----------------------------
-- Table structure for station
-- ----------------------------
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station`  (
  `cust_No` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户公司编号',
  `station_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户公司名称',
  `depart_id` int(11) NULL DEFAULT NULL COMMENT '所属部门外键(部门表)',
  PRIMARY KEY (`cust_No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `user_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_role_id` int(11) NULL DEFAULT NULL COMMENT '角色',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '所属部门',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '所属项目',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'jack', '111', 1, 1, NULL);
INSERT INTO `user` VALUES (2, 'admin', '111', 2, 2, NULL);
INSERT INTO `user` VALUES (3, 'mayun', '111', 3, 3, NULL);
INSERT INTO `user` VALUES (4, 'zhangsan', '111', 3, 4, NULL);
INSERT INTO `user` VALUES (5, 'lisi', '111', 4, 2, NULL);
INSERT INTO `user` VALUES (6, 'wangwu', '111', 5, 3, NULL);
INSERT INTO `user` VALUES (7, 'tianliu', '111', 2, 1, NULL);
INSERT INTO `user` VALUES (8, 'jlBoss', '111', 2, 2, NULL);
INSERT INTO `user` VALUES (9, 'cwBoss', '111', 1, 1, NULL);
INSERT INTO `user` VALUES (10, 'scBoss', '111', 3, 3, NULL);
INSERT INTO `user` VALUES (11, 'xsBoss', '111', 4, 4, NULL);

-- ----------------------------
-- View structure for pm
-- ----------------------------
DROP VIEW IF EXISTS `pm`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `pm` AS select `rp`.`role_id` AS `role_id`,`r`.`roleName` AS `roleName`,(select group_concat(`permission`.`permission_id` separator ',') from `permission` where `permission`.`permission_id` in (select `role_permission`.`permission_id` from `role_permission` where (`role_permission`.`role_id` = `rp`.`role_id`))) AS `ids`,(select group_concat(`permission`.`permissionName` separator ',') from `permission` where `permission`.`permission_id` in (select `role_permission`.`permission_id` from `role_permission` where (`role_permission`.`role_id` = `rp`.`role_id`))) AS `roles` from (`role_permission` `rp` join `role` `r`) where (`rp`.`role_id` = `r`.`role_id`) group by `rp`.`role_id`;

-- ----------------------------
-- View structure for showalluser
-- ----------------------------
DROP VIEW IF EXISTS `showalluser`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `showalluser` AS select `u`.`user_id` AS `user_id`,`u`.`username` AS `username`,`u`.`user_pwd` AS `user_pwd`,`u`.`user_role_id` AS `user_role_id`,`u`.`department_id` AS `department_id`,`u`.`project_id` AS `project_id`,`r`.`role_id` AS `role_id`,`r`.`roleName` AS `roleName`,`r`.`role_flag` AS `role_flag`,(select group_concat(`permission`.`permissionName` separator ',') from `permission` where `permission`.`permission_id` in (select `role_permission`.`permission_id` from `role_permission` where `role_permission`.`role_id` in (select `role`.`role_id` from `role` where (`role`.`role_id` = `r`.`role_id`)))) AS `pname` from (`user` `u` join `role` `r`) where (`u`.`user_role_id` = `r`.`role_id`);

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
delimiter ;;
CREATE PROCEDURE `test`()
begin DECLARE i int DEFAULT 40;
while i<=43 do
INSERT into role_permission values(5,i);
set i=i+1;
end while;end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
