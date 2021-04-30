-- x-admin
drop database if exists `x-admin`;
create database `x-admin`;
use `x-admin`;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
                                 `flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一标识',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '用户管理', '用户管理', '/page/end/user.html', 'user');
INSERT INTO `t_permission` VALUES (2, '角色管理', '角色管理', '/page/end/role.html', 'role');
INSERT INTO `t_permission` VALUES (3, '权限管理', '权限管理', '/page/end/permission.html', 'permission');
INSERT INTO `t_permission` VALUES (19, '公告管理', '公告管理', '/page/end/notice.html', 'notice');
INSERT INTO `t_permission` VALUES (20, '插件管理', '插件管理', '/page/end/plugins.html', 'plugins');
INSERT INTO `t_permission` VALUES (21, '聊天室', '聊天室', '/page/end/im.html', 'im');
INSERT INTO `t_permission` VALUES (22, '在线留言', '在线留言', '/page/end/message.html', 'message');

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
INSERT INTO `t_role` VALUES (1, '超级管理员', '所有权限', '[1,2,3,19,20,21,22]');
INSERT INTO `t_role` VALUES (2, '普通用户', '部分权限', '[20,21,22]');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
                           `id` bigint(20) NOT NULL AUTO_INCREMENT,
                           `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
                           `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
                           `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
                           `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
                           `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
                           `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限',
                           `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '部门',
                           `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职位',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', '111124444', '13978786565', '1616271650817', '[1]', NULL, NULL);
INSERT INTO `t_user` VALUES (11, 'tom', '123456', 'tom@qq.com', '13685249632', '1616271650817', '[2]', NULL, NULL);
INSERT INTO `t_user` VALUES (21, 'hello', '123456', 'hello@qq.com', '13695285412', '1615969390812', '[2]', NULL, NULL);
