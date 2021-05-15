/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : x-admin

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 15/05/2021 19:16:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (6, '用户 hello 登录系统', '2021-05-13 23:39:25', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (7, '用户 hello 登录系统', '2021-05-13 23:49:54', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (8, '用户 hello 登录系统', '2021-05-13 23:50:01', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (9, '用户 hello 登录系统', '2021-05-13 23:50:27', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (10, '更新用户：hello ', '2021-05-14 00:00:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (11, '用户 admin 登录系统', '2021-05-15 10:28:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (12, '用户 admin 退出系统', '2021-05-15 11:13:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (13, '用户 admin 登录系统', '2021-05-15 11:13:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (14, '更新角色：超级管理员', '2021-05-15 12:20:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (15, '更新角色：超级管理员', '2021-05-15 12:20:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (16, '更新角色：超级管理员', '2021-05-15 12:21:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (17, '更新角色：超级管理员', '2021-05-15 12:21:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (18, '更新角色：超级管理员', '2021-05-15 12:21:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (19, '更新角色：超级管理员', '2021-05-15 12:21:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (20, '更新角色：超级管理员', '2021-05-15 12:21:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (21, '更新角色：超级管理员', '2021-05-15 12:21:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (22, '更新角色：超级管理员', '2021-05-15 12:21:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (23, '更新角色：超级管理员', '2021-05-15 12:21:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (24, '更新角色：超级管理员', '2021-05-15 12:21:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (25, '更新角色：超级管理员', '2021-05-15 12:21:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (26, '更新角色：超级管理员', '2021-05-15 12:21:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (27, '更新角色：超级管理员', '2021-05-15 12:21:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (28, '更新角色：超级管理员', '2021-05-15 12:21:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (29, '更新角色：超级管理员', '2021-05-15 12:21:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (30, '更新角色：超级管理员', '2021-05-15 12:31:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (31, '用户 admin 登录系统', '2021-05-15 13:20:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (32, '更新角色：超级管理员', '2021-05-15 13:21:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (33, '更新角色：超级管理员', '2021-05-15 13:25:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (34, '更新角色：超级管理员', '2021-05-15 13:25:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (35, '更新角色：超级管理员', '2021-05-15 13:29:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (36, '更新角色：超级管理员', '2021-05-15 13:29:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (37, '用户 admin 登录系统', '2021-05-15 14:31:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (38, '更新角色：超级管理员', '2021-05-15 15:36:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (39, '更新角色：超级管理员', '2021-05-15 15:37:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (40, '更新角色：超级管理员', '2021-05-15 15:38:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (41, '更新角色：超级管理员', '2021-05-15 15:38:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (42, '更新权限菜单：用户管理', '2021-05-15 16:31:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (43, '用户 admin 登录系统', '2021-05-15 16:32:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (44, '更新权限菜单：用户管理', '2021-05-15 16:32:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (45, '更新权限菜单：角色管理', '2021-05-15 16:33:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (46, '更新权限菜单：权限管理', '2021-05-15 16:34:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (47, '更新权限菜单：公告管理', '2021-05-15 16:35:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (48, '更新权限菜单：日志管理', '2021-05-15 16:36:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (49, '用户 admin 登录系统', '2021-05-15 17:12:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (50, '用户 admin 登录系统', '2021-05-15 17:19:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (51, '更新角色：超级管理员', '2021-05-15 17:19:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (52, '用户 admin 退出系统', '2021-05-15 17:21:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (53, '用户 admin 登录系统', '2021-05-15 17:21:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (54, '新增权限菜单：11', '2021-05-15 17:21:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (55, '更新角色：超级管理员', '2021-05-15 17:21:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (56, '删除权限菜单：11', '2021-05-15 17:21:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (57, '更新用户：hello ', '2021-05-15 17:26:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (58, '更新用户：tom ', '2021-05-15 17:26:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (59, '更新用户：admin ', '2021-05-15 17:26:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (60, '用户 admin 退出系统', '2021-05-15 17:26:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (61, '用户 admin 登录系统', '2021-05-15 17:26:52', 'admin', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint(20) NULL DEFAULT 0 COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (16, '我来了', 'admin', '2021-04-23 23:15:57', NULL, 0);
INSERT INTO `t_message` VALUES (17, '来了老弟', 'admin', '2021-04-23 23:17:46', 16, 0);
INSERT INTO `t_message` VALUES (19, '今天直播', 'admin', '2021-04-24 11:08:41', 17, 0);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, '公众号【Java学习指南】', '微信关注公众号【Java学习指南】，回复关键字【666】即可获取项目下载链接。', '2021-04-16 17:10:44');
INSERT INTO `t_notice` VALUES (2, '【直播】B站关注程序员青戈，三连走起', '直播间地址：https://live.bilibili.com/21889562', '2021-04-16 17:54:10');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 's-data' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '用户管理', '用户管理', 'user', 'user-solid');
INSERT INTO `t_permission` VALUES (2, '角色管理', '角色管理', 'role', 's-cooperation');
INSERT INTO `t_permission` VALUES (3, '权限管理', '权限管理', 'permission', 'menu');
INSERT INTO `t_permission` VALUES (19, '公告管理', '公告管理', 'notice', 'data-board');
INSERT INTO `t_permission` VALUES (24, '日志管理', '日志管理', 'log', 'notebook-2');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '所有权限', '[1,2,3,19,24,25]');
INSERT INTO `t_role` VALUES (2, '普通用户', '部分权限', '[]');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', '管理员', '111124444', '13978786565', '1616271650817', '[1]');
INSERT INTO `t_user` VALUES (11, 'tom', '123456', '汤姆', 'tom@qq.com', '13685249632', '1616271650817', '[2]');
INSERT INTO `t_user` VALUES (21, 'hello', '123456', '哈喽', 'hello@qq.com', '13695285413', '1615969390812', '[2]');

SET FOREIGN_KEY_CHECKS = 1;
