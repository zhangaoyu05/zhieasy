/*
 Navicat Premium Dump SQL

 Source Server         : 致易
 Source Server Type    : MySQL
 Source Server Version : 50743 (5.7.43-log)
 Source Host           : 81.70.132.157:3306
 Source Schema         : zhiyi

 Target Server Type    : MySQL
 Target Server Version : 50743 (5.7.43-log)
 File Encoding         : 65001

 Date: 02/11/2026 19:35:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allocation
-- ----------------------------
DROP TABLE IF EXISTS `allocation`;
CREATE TABLE `allocation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `year` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招新年份',
  `timeRange` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历投递时间',
  `qq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq交流群',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of allocation
-- ----------------------------
INSERT INTO `allocation` VALUES (1, '2026', '2026年1月-2026年3月', '838129791', 'zhiyiOnline@163.com');

-- ----------------------------
-- Table structure for learninglinks
-- ----------------------------
DROP TABLE IF EXISTS `learninglinks`;
CREATE TABLE `learninglinks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学习链接id',
  `direction` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向',
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片链接',
  `link` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '超链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of learninglinks
-- ----------------------------
INSERT INTO `learninglinks` VALUES (1, 'C++学习链接', 'https://images.zayy.online/images/c%2B%2B.jfif', 'https://zheneasy.yuque.com/zheneasy/zukr23/xlk9np?#%20%E3%80%8AC++%E6%96%B9%E5%90%91%E5%AD%A6%E4%B9%A0%E5%9F%B9%E5%85%BB%E6%96%B9%E6%A1%88%E3%80%8B');
INSERT INTO `learninglinks` VALUES (2, '测试开发学习链接', 'https://images.zayy.online/images/测试开发.jpg', 'https://r5bf0bjx4j.feishu.cn/wiki/Zt3owAEuniom5LkQiKUcUmFVnmd?from=from_copylink');
INSERT INTO `learninglinks` VALUES (3, 'Java学习链接', 'https://images.zayy.online/images/java.jfif', 'https://r5bf0bjx4j.feishu.cn/wiki/RR7LwZUFii0f9sk63hCcl4x4nvd');
INSERT INTO `learninglinks` VALUES (4, 'Python学习链接', 'https://images.zayy.online/images/python.jfif', 'https://r5bf0bjx4j.feishu.cn/docx/Ac9kdYBCkoRNVCxOoBPcWcF7nzb');
INSERT INTO `learninglinks` VALUES (5, '前端开发学习链接', 'https://images.zayy.online/images/frontEnd.jfif', 'https://dcnghwcjy973.feishu.cn/wiki/QFRawZlzTid8VukfXZBcyFGVndX');
INSERT INTO `learninglinks` VALUES (6, 'GoLang语言学习链接', 'https://images.zayy.online/images/golang.jpg', 'https://zheneasy.yuque.com/zheneasy/zukr23/nqeynf13lwa6vwef?#%20%E3%80%8AGoLang%E6%96%B9%E5%90%91%E5%AD%A6%E4%B9%A0%E5%9F%B9%E5%85%BB%E6%96%B9%E6%A1%88%E3%80%8B');
INSERT INTO `learninglinks` VALUES (7, '大数据应用学习链接', 'https://images.zayy.online/images/bigData.jfif', 'https://zheneasy.yuque.com/zheneasy/zukr23/uhq4p6?#%20%E3%80%8A%E5%A4%A7%E6%95%B0%E6%8D%AE%E5%AD%A6%E4%B9%A0%E5%8F%8A%E5%9F%B9%E5%85%BB%E6%96%B9%E6%A1%88%E3%80%8B');
INSERT INTO `learninglinks` VALUES (8, 'Android开发学习链接', 'https://images.zayy.online/images/android.webp', 'https://zheneasy.yuque.com/zheneasy/zukr23/nb9xel?#%20%E3%80%8AAndroid%E5%AD%A6%E4%B9%A0%E4%BB%A5%E5%8F%8A%E5%9F%B9%E5%85%BB%E8%AE%A1%E5%88%92%E3%80%8B');
INSERT INTO `learninglinks` VALUES (9, 'unity游戏开发学习链接', 'https://images.zayy.online/images/unity.jpg', 'https://r5bf0bjx4j.feishu.cn/wiki/JGdbwwylzikJ0lkc8gXcQ970n22?from=from_copylink');
INSERT INTO `learninglinks` VALUES (10, '网络安全学习链接', 'https://images.zayy.online/images/network.jpg', 'https://images.zayy.online/CTF-web%E5%AE%89%E5%85%A8%E5%AD%A6%E4%B9%A0%E8%B7%AF%E7%BA%BF.pdf');

-- ----------------------------
-- Table structure for reason
-- ----------------------------
DROP TABLE IF EXISTS `reason`;
CREATE TABLE `reason`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `direction` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reason
-- ----------------------------
INSERT INTO `reason` VALUES (1, '严肃活泼', ' 严肃使你进步，活泼为你缓解压力，在这里，你遇到的是为你解决疑惑的学长学姐，更是共同进步的朋友。 ', 'https://images.zayy.online/images/lively.png');
INSERT INTO `reason` VALUES (2, '时间自由', '工作室主要为自主学习，每周有一次例会，解决大家学习的疑惑并对每周的学习做总结扩展，其他时间自主安排。', 'https://images.zayy.online/images/free.png');
INSERT INTO `reason` VALUES (3, '体验办公', '舒适的办公环境，融洽的工作氛围，相互合作相互学习，提前体验互联网办公，成为“打工人”。', 'https://images.zayy.online/images/work.png');
INSERT INTO `reason` VALUES (4, '线下实践', '在大家学习到一定程度时，会组织大家做开发实践，工作室有各类项目随手练，有专门的学长学姐带队参加各类竞赛。', 'https://images.zayy.online/images/diy.png');
INSERT INTO `reason` VALUES (5, '齐心协力', '在工作室丰富的竞赛经验下，学长学姐组织并带领团队参加学科竞赛，齐心协力去做好每一项竞赛，斩下一份份荣誉。', 'https://images.zayy.online/images/together2.png');
INSERT INTO `reason` VALUES (6, '全面兼顾', '在学习上，我们解决你学习中的疑惑，帮助你找到自己的方向。生活上，我们是无所不谈的朋友，吃喝玩乐样样ok。', 'https://images.zayy.online/images/all.svg');

-- ----------------------------
-- Table structure for say
-- ----------------------------
DROP TABLE IF EXISTS `say`;
CREATE TABLE `say`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `grade` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级-学院-专业',
  `job` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片链接',
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在学校/公司',
  `direction` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座右铭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of say
-- ----------------------------
INSERT INTO `say` VALUES (1, '宁大力', '16级-计算机科学学院-软件工程', 'advance computer science', 'https://images.zayy.online/images/dali.jpg', '英国利兹大学', '当你决定钻捷径的那一刻，看似侥幸省掉一程辛苦，可失去的，是努力时锻造成的能力，坎坷里磨砺出的意志，和拼搏中积攒下的人脉与经验');
INSERT INTO `say` VALUES (2, '李昆洪', '16级-计算机科学学院-软件工程', '智能供应链事业部', 'https://images.zayy.online/images/kunhong.jpg', '阿里巴巴', '人生走过的每一步路都不会白走');
INSERT INTO `say` VALUES (3, '邹长林', '17级-城市规划与市政工程学院-建筑环境与能源应用工程', 'Android开发工程师', 'https://images.zayy.online/images/changlin.png', '好未来', '每个人来到这里都会闪闪发光，加入我们快来做最闪耀的那颗星！');
INSERT INTO `say` VALUES (4, '刘景亮', '17级-计算机科学学院-计算机科学与技术(卓越班)', '软件研发工程师', 'https://images.zayy.online/images/jingliang.jpg', '滴滴', '我们遇到什么困难也不要怕,微笑着面对他,消除恐惧的最好办法就是面对恐惧,坚持才是胜利,加油,奥利给');
INSERT INTO `say` VALUES (5, '张光辉', '17级-计算机科学学院-数字媒体技术', '前端开发', 'https://images.zayy.online/images/guanghui.jpg', '快手', '伸手摘星，即使一无所获，也不至于满身污泥');
INSERT INTO `say` VALUES (6, '姚帅', '17级-计算机科学学院-网络工程', '测试开发', 'https://images.zayy.online/images/yaoshuai.jpg', '字节跳动', '不同的想法与理念在这里碰撞，激励了我追求未来更大的可能性');
INSERT INTO `say` VALUES (7, '张辉', '18级-计算机科学学院-计算机科学与技术', '大数据开发工程师', 'https://images.zayy.online/images/hui.jpg', '猫眼', '既然选择了远方，便只顾风雨兼程');
INSERT INTO `say` VALUES (9, '陆骏凯', '21级-计算机科学学院-软件工程', '研究生', 'https://images.zayy.online/images/lujunkai.jpg', '华东师范大学', '每年新生都有我！');
INSERT INTO `say` VALUES (10, '何浔航', '21级-计算机科学学院-网络空间安全', '研究生', 'https://images.zayy.online/images/hexunhang.jpg', '北京邮电大学', '千里之行始于足下!');
INSERT INTO `say` VALUES (11, '李延亮', '21级-计算机科学学院-网络空间安全', '研究生', 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/images/liyanliang.jpg', '西北工业大学', '积跬步，至千里；积小流，成江海。');
INSERT INTO `say` VALUES (12, '王婧', '21级-计算机科学学院-智能科学与技术', '研究生', 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/images/wangjing.jpg', '中国科学技术大学', '等枝桠，开成花');
INSERT INTO `say` VALUES (13, '周博宇', '21级-计算机科学学院-软件工程', '手机部-测试部', 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/images/zhouboyu.jpeg', '小米', '不困于既有框架，不疏于基础沉淀');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户id',
  `sid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` int(11) NULL DEFAULT 0 COMMENT '性别 0为男 1 为女',
  `pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `college` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学院',
  `major` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '专业',
  `clazz` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '班级',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `qq` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'qq',
  `wechat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'wechat',
  `state` int(11) NULL DEFAULT 0 COMMENT '录取状态',
  `path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '简历地址',
  `isPosted` int(11) NULL DEFAULT 0 COMMENT '是否投递简历',
  `isPerfected` int(11) NULL DEFAULT 0 COMMENT '是否完善信息',
  `role` int(11) NULL DEFAULT 0 COMMENT '角色',
  `direction` int(11) NULL DEFAULT -1 COMMENT '方向',
  `year` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '年级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '42109210508', '陆骏凯', 0, '57b1ad574dc05751c88f1dd715260516', '计算机科学学院', '软件工程', '2102', '2952699675@qq.com', '2952699675', 'ljk', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210508陆骏凯.docx', 1, 1, 1, 2, '2022');
INSERT INTO `user` VALUES ('1588576784010870785', '42009050103', '梁晨兴', 0, 'e65dbcc1a3b4a30f439cc03dbd1e41f1', '计算机科学', '软件工程', '2001', '3094961176@qq.com', '3094961176', '13152022905', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42009050103梁晨兴.docx', 1, 1, 2, 4, '2022');
INSERT INTO `user` VALUES ('1588866354703179778', '42109210725', '崔仓1', 0, 'bd39c04d79bf034e07351cc8b402fd98', '计算机', '软件', '2101', '2026871869@qq.com', '2026871869', '22222222', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210725崔仓1.docx', 1, 1, 2, 4, '2021');
INSERT INTO `user` VALUES ('1588915620255498242', '42009080101', '曾志权', 0, '0fc7a828624cc5e03de269a8b23aa9dd', '计算机科学学院', '智能科学与技术', '2001', '1979635815@qq.com', '1979635815', '456', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42009080101曾志权1.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1596309018467475457', '42109210418', '叶天笑', 0, '04860ac25eeaedc77eec6799150315a0', '计算机科学学院', '智能科学与技术', '2102班', '861945764@qq.com', '861945764', NULL, 0, NULL, 0, 1, 2, -1, '2021');
INSERT INTO `user` VALUES ('1596311828038787074', '41909070107', '王俊', 0, '7100721020917402c45269fd7edcf536', '计算机科学学院', '数据科学与大数据技术', '1901', '2797094441@qq.com', '2797094441', 'wjy_bug', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/41909070107王俊.docx', 1, 1, 1, 3, '2022');
INSERT INTO `user` VALUES ('1596322173876805634', '42009070123', '李修平', 1, '0fc7a828624cc5e03de269a8b23aa9dd', '计算机科学学院', '大数据', '大数据2001', '1269948399@qq.com', '1269948399', 'X110_8', 0, NULL, 0, 1, 2, -1, '2022');
INSERT INTO `user` VALUES ('1596323713911988225', NULL, NULL, 0, 'ef2703bc2fbcd56991e908e27c0b1583', NULL, NULL, NULL, '1476291343@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1596336713913966594', '42005060104', '赵智凯', 0, '6931a408f858ce32ad5f8a4b1c605225', '管理', '信管', '1', '769522974@qq.com', '769522974', 'zk133133', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42005060104赵智凯.docx', 1, 1, 1, 2, '2023');
INSERT INTO `user` VALUES ('1596412678862114817', '42109310104', '叶顾玮豪', 0, '8c49dd8c03b446e3a0e4acb3207b4fe6', '计算机科学学院', '计算机科学与技术（卓越）', '计卓2101班', '2816677369@qq.com', '2816677369', 'ygwh2816677369', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/文淇《计算机网络原理》实验报告3959e2ea6-8bc9-4ae8-a2b1-01e5ad084327.docx', 1, 1, 1, 10, '2024');
INSERT INTO `user` VALUES ('1596427618348011522', '42009010114', '何昊锟', 0, 'bab1a29b5e78417047f510da09e2baf8', '计算机科学学院', '计算机科学与技术', '2001', '1029805801@qq.com', NULL, NULL, 0, NULL, 0, 1, 1, 2, '2023');
INSERT INTO `user` VALUES ('1597963353463033857', NULL, NULL, 0, '0fc7a828624cc5e03de269a8b23aa9dd', NULL, NULL, NULL, '2635845971@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1603372149039534082', '42109210420', '余家春', 1, 'f36e53a479b657da5f42f5622ffd6c01', '计算机科学学院', '软件工程', '一班', '2773063159@qq.com', '2773063159', 'Yu', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210420余家春.docx', 1, 1, 2, 2, '2023');
INSERT INTO `user` VALUES ('1603388419571052545', '306666666', '梅西', 0, '704d21c66040c970f08c8e705285fb69', '阿根廷', '足球大陆学', '梅西一班', 'notre1024@163.com', '3030303030', '3030303030', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/306666666梅西.doc', 1, 1, 2, -1, '2023');
INSERT INTO `user` VALUES ('1604022716074160129', '42109210704', '何浔航', 0, 'a2f341136954d47bc917a1572d063749', '计算机科学学院', '网络空间安全', '网络空间安全2101班', '2965571519@qq.com', '2965571519', 'Hang_and_Bo', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210704何浔航.docx', 1, 1, 0, 5, '2023');
INSERT INTO `user` VALUES ('1604049591588728833', '42209310224', '师慧谛', 1, '101173e14cf2fbab68e02ed56961d131', '计算机科学学院', '计算机科学与技术卓越', '卓越2202班', '996297641@qq.com', '996297641', '996297641', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310224师慧谛.docx', 1, 1, 2, 0, '2023');
INSERT INTO `user` VALUES ('1604049657758068737', '42209210315', '裴子腾', 0, '6278a290286d052cf751c3b8b4ed7678', '计算机科学学院', '计算机类', '2203班', '1095071001@qq.com', '1095071001', 'pei35yao878', 0, NULL, 0, 1, 0, 4, '2023');
INSERT INTO `user` VALUES ('1604050253949022209', '42209211002', '刘兴伟', 0, '07e6821687247681239fb25a6195efd6', '计算机科学学院', '计算机类', '十班', '2052362771@qq.com', '2052362771', '18291622902', 0, NULL, 0, 1, 0, 3, '2023');
INSERT INTO `user` VALUES ('1604050384207327233', NULL, NULL, 0, '9ae150a4408833a0575f9ba69a59f3bb', NULL, NULL, NULL, '3389401153@qq.com', NULL, NULL, 0, 'zhouboyu', 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1604051651197513730', NULL, NULL, 0, 'd0b77c5decae82e5a5a6d5a81330d05c', NULL, NULL, NULL, '2275322328@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1604052302417735682', NULL, NULL, 0, '5d7bc1ecaa5d30de0b4f2d199747ef53', NULL, NULL, NULL, '2856697443@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1604052716680753154', NULL, NULL, 0, 'afaa22f1cb08edb7eacf99d74467134d', NULL, NULL, NULL, '420189219@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1604052766907543553', '42209210917', '余陈志', 0, '86e1505e161341c16fabefdde4e47cad', '计算机科学学院', '计算机类', '计算机类九班', '2095256643@qq.com', '2095256643', '13685690207', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210917余陈志.docx', 1, 1, 0, 2, '2022');
INSERT INTO `user` VALUES ('1604052774553759745', NULL, NULL, 0, '8f919ff8c1747fe0981cace0607689ed', NULL, NULL, NULL, '2193894412@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604052799254016002', '42209310229', '张琳', 1, 'bc689ffafca558e8f11674bc0675b985', '计算机科学学院', '计算机科学与技术（卓越)', '计算机科学与技术卓越2202班', '349705800@qq.com', '349705800', '17398653707', 0, NULL, 0, 1, 0, 0, '2022');
INSERT INTO `user` VALUES ('1604053020977508354', '42209210323', '王博源', 0, 'e09f5f4a07149fe6461ddf8b031d182b', '计算机科学学院', '计算机科学与技术', '计算机3班', '1209921034@qq.com', '1209921034', 'wby17792147877', 0, NULL, 0, 1, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604053135427481602', '42209210304', '李树旺', 0, 'b66903a113394a06b40393e7effb2461', '计算机科学学院', '计算机类', '2203班', '3226681801@qq.com', '3226681801', '17373935435', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210304李树旺.docx', 1, 1, 0, 2, '2022');
INSERT INTO `user` VALUES ('1604054193235144705', NULL, NULL, 0, 'b9d284abf57380690dbff77125ace0ba', NULL, NULL, NULL, '1210049530@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604054789665173506', '42209210633', '蔡子玲', 1, '9e1630333698bc601f4a4bcd914be6ee', '计算机科学学院', '计算机专业', '计算机六班', '3439320498@qq.com', '3439320498', 'czlczl050131', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210633蔡子玲.docx', 1, 1, 0, 0, '2022');
INSERT INTO `user` VALUES ('1604055379807940609', '42209310228', '张忠培', 1, '153ad880a783476f30fcec833f511124', '计算机科学学院', '计算机科学与技术', '计卓二班', 'zp1449478436@qq.com', '1449478436', '', 0, NULL, 0, 1, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604056061759827970', NULL, NULL, 0, 'f9fe6205b78a3f2cf7c2cccbdf2acda2', NULL, NULL, NULL, '2745186905@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604057704769368065', '42209210932', '张苑', 1, 'f000fe638ef35cd36da78eb92b9d5f99', '计算机科学学院', '计算机类', '9', '1524014591@qq.com', '1524014591', 'y1524014591', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210932张苑.docx', 1, 1, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604058088674013185', '42209210207', '杜雨轩', 0, 'c3287ca3fdcf8c2116646359fce9b948', '计算机科学学院', '计算机类', '计算机类二班', '1243040798@qq.com', '1243040798', NULL, 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210207杜雨轩.docx', 1, 1, 0, 2, '2022');
INSERT INTO `user` VALUES ('1604060629914726402', '42209210326', '王诗阳', 1, '83f37ce55c99a7c8c35d4472dff88372', '计算机科学学院', '计算机类', '2203班', '3372153742@qq.com', '3372153742', '', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210326王诗阳.docx', 1, 1, 2, 2, '2022');
INSERT INTO `user` VALUES ('1604061174465409026', '42209310103', '田兴旺', 0, '2dd2c7f4cafbf1511297428f4b6f1914', '计算机科学学院', '计算机科学与技术', '卓越1班', '3029178212@qq.com', '3029178212', 't18192503928', 0, NULL, 0, 1, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604062022704672769', NULL, NULL, 0, '0e9591abcefc85c5bafb74ae6b42d9b7', NULL, NULL, NULL, '2528860561@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2022');
INSERT INTO `user` VALUES ('1604062338825170945', '42209210629', '赵雨艳', 1, '28f4782756a7be84b931f1f2c1a569c9', '计算机科学学院', '计算机专业', '计算机6班', '2467274928@qq.com', '2467274928', 'niwota1007', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210629赵雨艳.docx', 1, 1, 0, 5, '2022');
INSERT INTO `user` VALUES ('1604062925750906881', '42209210316', '马江锟', 0, '66811389384d85a90a1ef4050d122668', '计算机科学学院', '计算机类', '三班', '3222195418@qq.com', '3222165418', '15831969471', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210316马江锟.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1604063324402724866', '42209210413', '李宇航', 0, '0042c125f752f84fe600df2e465c3f0b', '计算机科学学院', '计算机类', '4', '210355262@qq.com', '210355262', NULL, 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210413李宇航.docx', 1, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604066648258621441', NULL, NULL, 0, '993400a0e9870930743d5f15b97d1326', NULL, NULL, NULL, '1429141662@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604068790734270465', '42109210331', '郭艺卿', 1, '9286f870248e23d81ac6237cb750a9cf', '计算机科学学院', '大数据', '大数据2101', '2065252669@qq.com', '2065252669', 'GYQ15191331552', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210331郭艺卿.docx', 1, 1, 0, 6, '2021');
INSERT INTO `user` VALUES ('1604073425381470209', NULL, NULL, 0, '78de136994a5adca845395ff3a67a237', NULL, NULL, NULL, '1460933569@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604091565465251842', '42209210329', '代思玉', 1, '725d3eff316ff37bcd75d120950c8de7', '计算机科学学院', '计算机类', '计算机类2203班', '3522958413@qq.com', '3522958413', 'a18391024424', 0, NULL, 0, 1, 0, 0, '2021');
INSERT INTO `user` VALUES ('1604111107780358146', NULL, NULL, 0, '2937c660c438c2fd69bf619d72e4ae00', NULL, NULL, NULL, '2370404112@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604112314175434754', NULL, NULL, 0, 'ce0eb1de4c6625475c5b79e44f20127b', NULL, NULL, NULL, '237275505@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604114492575297537', '42209210407', '王举乐', 0, 'e596068957ac77129fa6707ce569a533', '计算机科学与技术', '计算机类', '4', '2246970268@qq.com', '2246970268', '17391672906', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210407王举乐.docx', 1, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604116534064689153', '42209310108', '李兵兵', 0, '07be8e4c124ed3a43f9b5eae8ce58b91', '计算机科学与技术学院', '计算机科学与技术', '计卓一班', '3277422176@qq.com', '3277422176', '15293554194', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604122397072535554', '42109210522', '周博宇', 0, 'd88ea9282c55999367ee477f1289ee8c', '计算机科学学院', '软件工程', '软件工程2101班', '2982498969@qq.com', '2982498969', 'yu2982498969', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/个人自传bfe7c0af-d14f-4add-b2fe-fc447e181fa4.docx', 1, 1, 0, 2, '2023');
INSERT INTO `user` VALUES ('1604128803536351233', '42209310230', '吴学月', 1, '08b9f8edbbf5ca69116381ae37223291', '计算机科学学院', '计算机科学与技术', '计算机科学与技术卓越2202班', '1877736657@qq.com', '1877726657', NULL, 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310230吴学月.docx', 1, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604172794004877314', '42109210725', '崔仓2', 0, 'bd39c04d79bf034e07351cc8b402fd98', '计算机科学学院', '网络', '2101', '235655562@qq.com', NULL, NULL, 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210725崔仓2.docx', 1, 1, 2, -1, '2021');
INSERT INTO `user` VALUES ('1604280783256793089', '42109210105', '卓阳阳', 0, '21a7e31f5cde0cd4e62ec476689cfa9e', '计算机科学学院', '计算机科学与技术', '计科2102', '2199698862@qq.com', '2199698862@qq.com', 'scwrj520', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210105卓阳阳.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1604301977183956994', '42209210910', '陈博闻', 0, 'cda95931d9a11436e1cc2f564e2bc3af', '计算机科学学院', '计算机类', '计算机类9班', '1832294366@qq.com', '1832294366', '', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604305102317924354', '42109210318', '朱皖鹏', 0, 'c1df93df2e246bf0d110addd47c82ee2', '计算机科学学院', '计科', '2102', '835315232@qq.com', '835315232', 'wxid_uqrkusih5ebj22', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210318朱皖鹏.docx', 1, 1, 0, 3, '2021');
INSERT INTO `user` VALUES ('1604339089836978178', '42109210403', '孙泽坤', 0, 'b20469df096248b9a06e6a7b1dced7c2', '计算机科学学院', '网络安全', '一班', '2356806508@qq.com', '', '', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604340517959741441', '42209211015', '吴迪', 0, '46d038ca170c5e20c0fecc2e1e4110d7', '计算机科学学院', '计算机类', '2210', '741699112@qq.com', '741699112', 'wd741699112', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209211015吴迪.docx', 1, 1, 0, 3, '2021');
INSERT INTO `user` VALUES ('1604360523011436546', '42209210619', '杨启航', 0, '8e4a1d6c5e61bcfcdaada5766df7ce04', '计算机科学学院', '计算机类', '6班', 'y13992507773@icloud.com', '1341569463', 'ak1341569463', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210619杨启航.docx', 1, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604378074198159362', '42209210324', '赵奇航', 0, '3c2dd08f694c8d0664a84748742f0102', '计算机科学学院', '计算机类', '三班', '3248765689@qq.com', '3248765689', 'ZQH17860501898', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210324赵奇航.docx', 1, 1, 2, 2, '2021');
INSERT INTO `user` VALUES ('1604383321515732993', NULL, NULL, 0, 'bb0c08eb4b65e3887a02e917c65429b5', NULL, NULL, NULL, 'a2180562988@163.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604387223581601793', '42109210103', '卢旭垚', 0, '7aa9a4aeaa1bbf7a41f7e781ef090dd0', '计算机科学学院', '计算机科学与技术', '计算机科学与技术2101班', '2153338619@qq.com', '2153338619', 'lxy2153338619', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210103卢旭垚.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1604390830800482305', '42109210810', '侯赛', 0, '8af071208175655533b0430ab6a1cdfd', '计算机科学学院', '软件工程', '软件工程2102班', '3248728982@qq.com', '3248728982', '18238973546', 0, NULL, 0, 1, 2, 2, '2021');
INSERT INTO `user` VALUES ('1604395835670507521', '42209210607', '徐晗', 0, 'fd8ee1a4295673fd7a19fd3aa22d5416', '计算机科学学院', '计算机类', '六班', 'styl.rxgl@qq.com', '169389850', 'oh-mygodh', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210607徐晗.docx', 1, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604396945974079489', '42209310209', '郝嘉睿', 0, '0fc7a828624cc5e03de269a8b23aa9dd', '计算机科学学院', '计算机科学与技术（卓越班）', '计卓二班', '1426781969@qq.com', '1543266758', 'RESO-L', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310209郝嘉睿.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1604405857687285761', '42209310226', '董博婉', 1, '21ab514d428bd3fb3b585fae622e3e6d', '计算机科学学院', '计算机科学与技术（卓越班）', '计卓2202班', '3141745068@qq.com', '3141745068', 'DBW15029475879', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310226董博婉.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1604434205159297026', '42209210711', '王志涌', 0, '46550d32c5df31f4bb9d43a208d9176a', '计算机科学学院', '计算机类', '计算机类2207班', '2279011806@qq.com', '2279011806', '18099341526', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604445336695312386', '42209210216', '邢云昊', 0, '3ba4b1459850e2224a5b37af09acdd2e', '计算机科学学院', '计算机类', '计算机类2班', '910021141@qq.com', '910021141', '17396830686', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/新建 DOCX 文档836f0475-9588-4ec1-bd51-bbf48c635cd9.docx', 1, 1, 0, 4, '2024');
INSERT INTO `user` VALUES ('1604459088362704898', '42209210710', '杨海涛', 0, '8e19e0116110831cc4b92784cad50271', '计算机科学学院', '计算机类专业', '2207班', '3135989009@qq.com', '3135989009', 'QWE3135989009', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210710杨海涛.docx', 1, 1, 0, 3, '2021');
INSERT INTO `user` VALUES ('1604666598533206017', NULL, NULL, 0, '433d801771c334ec985fdedab1ec0c55', NULL, NULL, NULL, '1474502128@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1604675180003692546', '42209210402', '王章涵', 0, '5e139ecc918c876d600e1d1e67d07e90', '计算机科学学院', '计算机类', '计算机类四班', '2974588561@qq.com', '2974588561', '18891997029', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210402王章涵.docx', 1, 1, 0, 3, '2021');
INSERT INTO `user` VALUES ('1604795400471023618', '42209210827', '周颖', 1, '1e94b56f0d1d96fdca44db97e93704c9', '计算机科学学院', '计算机类', '计算机类2208班', '3265772235@qq.com', '3265772235', 'Zy18367593276', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210827周颖.docx', 1, 1, 2, 2, '2021');
INSERT INTO `user` VALUES ('1604813777222602753', '42209210828', '李芳菲', 1, '50bb9bef77757b8a2d21c0a07472a4d2', '计算机科学学院', '计算机类', '计算机类2208班', '1345119020@qq.com', '1345119020', 'L543264334', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210828李芳菲.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1605048144100429825', '42209210211', '明行', 0, '3dc8f387fa2150e45b3e62455fc24a97', '计算机科学学院', '计算机类', '计算机类二班', '768570257@qq.com', '768570257', '15399380230', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605097403784990722', '42209210602', '肖仁乐', 0, '5856138f946fd2509d9bac4b4daafd69', '计算机科学学院', '计算机类', '计算机类6班', '3037537312@qq.com', '3037537312', NULL, 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210602肖仁乐.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605133198776438786', '42109210117', '王卓石', 0, '8e480a47c9541ac804b2299d521592df', '计算机科学学院', '软件工程', '软件工程2101', '2824084409@qq.com', '2824084409', 'wzs19991458223', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210117王卓石.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1605159832908828673', '42109210312', '孙灵义', 0, 'c793b58db3d53bde9e9b7bc0c6890061', '计算机科学学院', '计算机科学与技术', '2102班', '3418761072@qq.com', '3418761072', '18369139139', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210312孙灵义.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605178998655127553', NULL, NULL, 0, 'c16252a71bc3d991c0291d8cebd10bcf', NULL, NULL, NULL, '2064412752@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605180728088301570', '42109210820', '尹计新', 0, 'ffcefe09e3f17f0074cedfb546010147', '计算机科学学院', '网络空间安全', '网安2班', '874155440@qq.com', '874155440', 'yjx874155440', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210820尹计新.docx', 1, 1, 0, 3, '2021');
INSERT INTO `user` VALUES ('1605418654101508097', '42209210922', '魏嘉乐', 0, 'bcbe14d94b1a044691a3e5fead8a1f3f', '计算机科学学院 ', '计算机类', '计算机类九班', '2982206059@qq.com', '2982206059', '13299195949', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210922魏嘉乐.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605501998164185090', '42109210516', '张云飞', 0, '39b49df3e61d81ed2254c40f9209d584', '计算机科学学院', '软件工程', '软件工程2班', '3142960195@qq.com', '3142960195', NULL, 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210516张云飞.docx', 1, 1, 0, 0, '2021');
INSERT INTO `user` VALUES ('1605520180316835842', '42209310208', '钱自强', 0, 'dc2316b698ba27117512bc22b2ac4f2f', '计算机科学学院', '计算机科学与技术', '计卓二班', 'kddbrm@qq.com', '2500653770', 'Qzq153', 0, NULL, 0, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605524406514323458', '42209210508', '盘亮兵', 0, '4ebfc921c86172d2238205ac46dadeb1', '计算机科学学院', '计算机类', '计算机类2205班', '2487105505@qq.com', '2487105505', 'plb2487105505', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605526659073675266', '42209210310', '李琦', 0, 'ec7725e7d21ac9484c3e6447396d8b7d', '计算机科学学院', '计算机类', '2203', '2628683404@qq.com', '2628683404', 'liqi8888666666', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605527664473509890', NULL, NULL, 0, 'da664d438a94ec4bbcddb668f7d38dc4', NULL, NULL, NULL, '2170667118@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605543189886898178', '42209310227', '焦慧霞', 1, '6fd90de40e5928df679262422551bab3', '计算机科学学院', '计算机科学与技术（卓越）', '2202班', '3105159292@qq.com', '3105159292', 'j15835015545', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310227焦慧霞.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605549007222968321', NULL, NULL, 0, '9b0e3064ef3259296e20f14f3d325077', NULL, NULL, NULL, '852810242@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605564021015154690', '42105070214', '周建慧', 1, 'c420f0311af2784eb856a82db5e02eb9', '计算机科学学院', '软件工程', '2班', '2127778211@qq.com', '2127778211', 'zjh18403507838', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42105070214周建慧.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605573685752729601', '42209210122', '高友', 0, 'c68f621e41085606fef4de9be258f7ea', '计算机科学学院', '计算机类', '22级01班', '2071478913@qq.com', '2071478913', 'G2071478913', 0, NULL, 0, 1, 0, 0, '2021');
INSERT INTO `user` VALUES ('1605580936563494914', '42209211031', '李舒婷', 1, '38aa238f3578dc416f52e606ef394694', '计算机科学学院', '计算机类', '10班', 'fei_yuyu@qq.com', '486581515', 'lst17339932337', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209211031李舒婷.docx', 1, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605745883947831297', NULL, NULL, 0, 'a9cbde8d5d37479ee6276b13cc685ebc', NULL, NULL, NULL, '3216217277@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605747650806779905', NULL, NULL, 0, '9675eaecb1ce451e67b5b891534ab78d', NULL, NULL, NULL, '2660693474@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605785403288293377', '42109210405', '高威', 0, 'a6d332061b90d4b9e6a3260edcf2b7c5', '计算机科学学院', '软件工程', '2102班', '2514390053@qq.com', '2514390053', 'gw2514390053', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210405高威.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605787896260956162', NULL, NULL, 0, 'e5d5b233516fb3c2d9faa8e18bfa4426', NULL, NULL, NULL, '1428585226@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1605798852139520002', '42209210831', '周涵', 1, '28634dc921b28173ba00ae0335c86811', '计算机科学学院', '计算机类', '计算机类8班', '1815828238@qq.com', '1815828238', 'zh13891687613', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210831周涵.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1605808315529531393', '42209210516', '赵伊健', 0, 'd751a30bfc0781132b846e6f88847c1c', '计算机科学学院', '计算机类', '计算机类2205班', '994124926@qq.com', '994124926', '994124926', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210516赵伊健.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1605816455411109889', '42209210610', '黄嘉豪', 0, '7498bf1e60716c9a6a360f3dd6d9790a', '计算机科学学院', '计算机类', '6班', '2421216167@qq.com', '2421216167', 'h2421216167', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210610黄嘉豪.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1605945889258573826', '42209210830', '许亚楠', 1, '0aac849b1090a2aa747894a37c8fdcd6', '计算机科学学院', '计算机类', '2208班', '3317508896@qq.com', '3317508896', 'X19959093763', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210830许亚楠.docx', 1, 1, 0, 5, '2021');
INSERT INTO `user` VALUES ('1606127940238675970', '42209210410', '李雨轩', 0, '85212710dd369fd330dc0444108140d7', '计算机科学学院', '计算机类', '计算机类四班', '2986685912@qq.com', '2986685912', '15386783242', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210410李雨轩.docx', 1, 1, 2, 2, '2021');
INSERT INTO `user` VALUES ('1606203449739939841', '42209310107', '崔驰', 0, 'c873e3d0b32e1e16cc5f86dd8c993bcf', '计算机科学学院', '计算机科学与技术', '计卓2201班', '3213424691@qq.com', '3213424691', 'a3213424691', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310107崔驰.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1606308371735089154', NULL, NULL, 0, '0338e9ad315f5bf847ace03729588def', NULL, NULL, NULL, '495834963@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1606483358819389442', '42109210402', '王盛豪', 0, '690ec57b4c483578e78d3bf8ec2310b9', '计算机科学学院', '软件工程', '软件工程2101', '2534695041@qq.com', '2534695041', '15633121472', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210402王盛豪.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1606987073397559298', '42203090121', '张朴昕', 1, '0b6aaf9fe5c2ca65fb3df7c9536961b3', '电子信息学院', '人工智能', '一班', '755696268@qq.com', '755696268', 'Xin07220730', 0, NULL, 0, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1607589754784714754', '42109210307', '李腾飞', 0, 'a8d352f09ae498caf1c64eee8837e04c', '计算机科学学院', '计算机科学与技术', '计科2101', '3553078646@qq.com', '3553078646', '18802913761', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210307李腾飞.docx', 1, 1, 0, 0, '2021');
INSERT INTO `user` VALUES ('1607990357495123970', '42209210632', '庞香婕', 1, '6df783fc2bf0ddcdf6c50561f0d074bc', '计算机科学学院', '计算机类', '06班', '2590821959@qq.com', '', '', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210632庞香婕.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1608130741151993858', '42109210912', '宋晓东', 0, 'a7bad38e736cd4146850b8c0d76a537d', '计算机科学学院', '计算机科学与技术', '计科1班', '986368629@qq.com', '986368629', '无', 0, NULL, 0, 1, 1, 0, '2021');
INSERT INTO `user` VALUES ('1608419320314990593', '42109210114', '姜胜岩', 0, '968f86be2dd05bfbc5babb2bf87b7a64', '计算机科学学院', '计算机科学与技术', '2021级计科一班', '1873208487@qq.com', '1873208487', 'Yeahhh_Yeahhh', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210114姜胜岩.docx', 1, 1, 0, 5, '2021');
INSERT INTO `user` VALUES ('1608461278882304001', '1', '曾志权2', 0, '0fc7a828624cc5e03de269a8b23aa9dd', '1', '1', '1', 'abraham2002@163.com', '', '', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/1曾志权2.docx', 1, 1, 2, 5, '2021');
INSERT INTO `user` VALUES ('1608669428336037890', '42209210403', '张亦驰', 0, 'ec477120249adf1c0056488694c20091', '计算机科学学院', '计算机类', '四班', '710205603@qq.com', '710205603', '18829025009', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210403张亦驰.docx', 1, 1, 2, 2, '2021');
INSERT INTO `user` VALUES ('1608672242588192770', '42009010130', '陈琳', 1, '43a5cbaf0171084534cd4c3d346f601b', '计算机科学学院', '计算机科学与技术', '2001班', '1482898806@qq.com', '1482898806', 'XN1482898806', 0, NULL, 0, 1, 1, 7, '2021');
INSERT INTO `user` VALUES ('1608681799876087809', '42109211015', '乔浪', 0, '71da569606ca00bcf09e112b13039c4a', '计算机科学学院', '软件工程', '21级软工2班', 'qiaoll12345@qq.com', '1454841464', '18829128821', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109211015乔浪.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1608682877002715138', '42109210419', '汪朔', 0, '97828e8301c33618a039156b2b12f50d', '计算机科学学院', '软件工程', '软件2班', '1748507312@qq.com', '1748507312', '1748507312', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210419汪朔.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1609542280123781121', '42109210102', '卢博斌', 0, '67ab13d8524d8598526bf9a7461d664e', '计算机科学学院', '数据科学与大数据技术', '21级2班', '2820843645@qq.com', '2820843645', '17393442003', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210102卢博斌.docx', 1, 1, 0, 6, '2021');
INSERT INTO `user` VALUES ('1615924392133398529', '42209310112', '王善银', 0, 'd1e86fd78127f52c3b4f90a7d333a4c1', '计算机科学', '计算机科学与技术', '计算机科学与技术卓越1班', '1971018236@qq.com', '1971018236', 'shine15328913629', 0, NULL, 0, 1, 0, 0, '2021');
INSERT INTO `user` VALUES ('1620945264908963841', '42109210716', '程勇智', 0, '9faa1fd16fd011167af7c3e47616fb65', '计算机科学学院', '数据科学与大数据技术', '21级1班', '974607339@qq.com', '974607339', 'Carpe_dime_c', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210716程勇智.docx', 1, 1, 0, 6, '2021');
INSERT INTO `user` VALUES ('1622109123808071681', '42209310221', '刘婷婷', 1, '3a6712875567353673ccffea48395b6b', '计算机科学学院', '计算机科学与技术', '计卓二班', '2336563476@qq.com', '2336563476', 'l18438120734', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310221刘婷婷.docx', 1, 1, 0, 4, '2021');
INSERT INTO `user` VALUES ('1623582993689874434', '42109210619', '李卓文', 0, '8276b04bf09f89dc6f1c4b8c038904e3', '计算机科学学院', '大数据', '21级大数据2班', '1305631563@qq.com', '1305631563', 'li1305631563', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210619李卓文.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1625699444622102530', '42109210227', '李雨行', 1, 'd1c50df741a8ec1c12391433375e4c03', '计算机科学学院', '计算机科学与技术', '2102班', '2455250564@qq.com', '2455250564', '17392289671', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210227李雨行.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1627622582490501121', '42109210109', '郭涛', 0, '8923e5ece961068ff047e8b3687cb3a6', '计算机科学学院', '数据科学与大数据技术', '1班', '1904486728@qq.com', '', '', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210109郭涛.docx', 1, 1, 0, 6, '2021');
INSERT INTO `user` VALUES ('1629116577863438337', '42209210722', '文淇', 0, '6558910fcc5bdd55f0f7ba3e1806f349', '计算机科学学院', '计算机类', '计算机类七班', 'wenqi1288410792022@163.com', '2678365426', 'JDwanzhang', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210722文淇.docx', 1, 1, 1, 2, '2021');
INSERT INTO `user` VALUES ('1629117824398004226', '42109210202', '张学儒', 0, '863e1272ef39c08f9759daa7111a386e', '计算机科学学院', '智能科学与技术', '智科2102班', 'xueru5819@163.com', '2490604886', 'ZZX2490604886', 2, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210202张学儒.docx', 1, 1, 0, 3, '2021');
INSERT INTO `user` VALUES ('1631300890130386945', '41909070110', '刘宇强', 0, 'd6f108dbcc64b144af3b51be63ade380', '计算机科学学院', '计算机类', '一班', '1273055646@qq.com', '1273055646', '13228396187', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/41909070110刘宇强.docx', 1, 1, 0, 0, '2021');
INSERT INTO `user` VALUES ('1634440377870061569', '42216210119', '刘彦辰', 0, '71b338bb21210a26212407fb770df58b', '材料工程学院', '材料类', '材料一班', '3055489027@qq.com', '3055489027', NULL, 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42216210119刘彦辰.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1634514773582286850', '42209210805', '蔡润民', 0, 'd3146910ffa651b920ddcc2d3c0c0211', '计算机科学学院', '计算机大类', '08', '2849997534@qq.com', '2849997534', '15916408327', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209210805蔡润民.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1634760019272536065', '42209310228', '张忠培', 1, '153ad880a783476f30fcec833f511124', '计算机科学学院', '计算机科学与技术', '计卓二班', '1449478436@qq.com', '1449478436', 'zp15332303524', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42209310228张忠培.docx', 1, 1, 0, 2, '2021');
INSERT INTO `user` VALUES ('1634887242893758465', '42102210803', '柴赟', 0, '7edbdcbb71e993f211c1810fae52295d', '计算机科学学院', '智能科学与技术', '智科2班', '2806451031@qq.com', '2806451031', 'CHY15047593083', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42102210803柴赟.docx', 1, 1, 0, -1, '2021');
INSERT INTO `user` VALUES ('1637810308330340353', '42001010105', '邓代鑫', 0, '87fb03e7d62f23309659939dce47278f', '计算机科学学院', '网络工程', '网络工程2002班', '1316561519@qq.com', NULL, NULL, 0, NULL, 0, 1, 1, 5, '2021');
INSERT INTO `user` VALUES ('1638436186638827521', '42109210705', '祝河旭', 0, '0fc7a828624cc5e03de269a8b23aa9dd', '计算机科学学院', '网络空间安全', '网络空间安全2班', '3187028691@qq.com', '3187028691', 'zhx200345', 3, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/42109210705祝河旭.docx', 1, 1, 0, 5, '2021');
INSERT INTO `user` VALUES ('1639932388064641025', NULL, NULL, 0, '6fdf5846bbf9edc5c703d0a7b9c8a708', NULL, NULL, NULL, '1260652615@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2021');
INSERT INTO `user` VALUES ('1880518698881576961', NULL, NULL, 0, '0fc7a828624cc5e03de269a8b23aa9dd', NULL, NULL, NULL, '2889892921@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1880525353388179457', '42109210522', '123', 0, '0fc7a828624cc5e03de269a8b23aa9dd', '1', '软件工程', '1', '1123308695@qq.com', '123213123213', '123123', 1, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/思想汇报1c9df5407-c34d-4d7a-863a-ba3a1cbf7b85.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1880537405880111106', NULL, NULL, 0, 'bb80b96062d175fa493485287ddb8cb6', NULL, NULL, NULL, '2731702604@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2023');
INSERT INTO `user` VALUES ('1880569114390532097', '42109310104', 'tammer', 0, '8c49dd8c03b446e3a0e4acb3207b4fe6', '计算机科学学院', '数据科学与大数据技术', '计卓2101班', 'tammer@163.com', '', '', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/demobcc6eddb-e59e-4893-81aa-85850e800146.docx', 1, 1, 0, 4, '2024');
INSERT INTO `user` VALUES ('1881634054912671745', NULL, NULL, 0, 'bd39c04d79bf034e07351cc8b402fd98', NULL, NULL, NULL, '3330559386@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1881692097247510530', '42409310109', '高振仓', 0, '53e8b812b68cda82e82ff0e75e92c4ee', '计算机科学学院', '计算机科学与技术', '计卓一班', '18829399168@163.com', '1545197823', '18829399168', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历cb257fb3-d69d-4b22-ba57-410a47e24fea.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1881692153870614529', '42409090325', '翟晓娇', 1, '4b88d2c0fe230432b6c7f199c246539a', '计算机科学学院', '网路空间安全', '2403班', '3349561506@qq.com', '3349561506', '', 5, NULL, 0, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1881692477956096002', '42309210125', '宋若涵', 1, 'e82fd365a3e3aab1ef4604e026ba14e2', '计算机科学学院', '计算机类', '2023级一班', '702563993@qq.com', '702563993', 'srh20050224', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历de2d000d-98ec-4b5a-a3a0-3307d250c534.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1881692883100696578', '42409310121', '霍俊彤', 1, '0ca69459cd1928c958e6d5d255611868', '计算机科学学院', '计算机科学与技术（卓越班）', '计卓一班', '1826936332@qq.com', '1826936332', '18391174479', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历df1877ae-36a1-4235-b493-087b5df8a2be.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1881693041590861826', '42409090306', '赵宏琪', 0, '874868340d700ac4494cabb953f1ca09', '计算机科学学院', '网络空间安全', '网安三班', '571303760@qq.com', '571303760', '', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历–赵宏琪cx393c6f13-0547-4c0d-b193-501e8cad9d63.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1881693802152394753', '42409210612', '段茗耀', 0, 'fc1863785c5554ecae8c16cd59977fec', '计算机科学学院', '计算机类', '计算机类6班', 'dmy6662006@qq.com', '2267634479', '18203471146', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/段茗耀的简历12909c16-b401-42ab-b9a4-4b5952bb91a8.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1881694011129397250', '42409090310', '李季航', 0, '1e3b5ebc5cd60ce5a067e5c6ea79cf21', '计算机科学学院', '网络空间安全', '2403班', '702249560@qq.com', '', '', 5, NULL, 0, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1881694193409654786', '42409090301', '陈宗开', 0, '77f9c648b66aa5fa4250fa220f3349f6', '计算机科学学院', '网络空间安全', '网络空间安全24级03班', '1038272809@qq.com', '1938272809', 'czk00100', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历(1)117a8bcf-ca0d-416e-8834-99bae53bb4a1.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1881694377740926977', NULL, NULL, 0, 'f7a1baf1ddcb983a4b57fdeac7697c2f', NULL, NULL, NULL, '2538985709@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1881696593461706753', '42209210722', '文淇', 0, '6558910fcc5bdd55f0f7ba3e1806f349', '计算机科学学院', '软件工程', '软件工程1班', 'Genhashino1020@163.com', '2678365426', 'Genhashino', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/1276156_李兵兵208a4ecd-4d98-460c-8ccf-514c4d4f2702.jpg', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1881697089345880066', '42409210812', '黄嘉顺', 0, '21a7e31f5cde0cd4e62ec476689cfa9e', '计算机科学学院', '计算机类', '计算机类2408班', '1253407813@qq.com', '1253407813', '18779805905', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历——42409210812黄嘉顺48fe6210-784b-4da4-b3fe-82334f4398c7.docx', 1, 1, 1, 2, '2024');
INSERT INTO `user` VALUES ('1881715468395937793', '42409090430', '张琪', 1, 'd15252ae89524c16e50c325458fde2e6', '计算机科学学院', '网络空间安全', '网络空间安全2404班', '2337243715@qq.com', '2337243715', 'sunnyonedayday', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历7dc2d68e-f11d-4fff-9092-a20b5e98404e.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1881989756625682434', '42309210509', '李天宇', 0, '4337d6a0d4090f7ad908a48345efed46', '计算机科学学院', '计算机科学与技术', '2301', '3329086908@qq.com', '1234567', '1234567', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历 (2)295bb93f-457c-4e96-aeba-a56425cb515b.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1882016762109165569', '42409310205', '党泽源', 0, 'ede3671ccd944d53723fefe6cfd20e6f', '计算机科学学院', '计算机科学与技术', '计卓2402班', '2705171451@qq.com', '', '', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历13198509-232e-4352-b16a-1b36efb468fe.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1882056290417049601', '42409310230', '陈润曦', 1, 'aa30e06b13b82b906767d515bdf0e04a', '计算机科学学院', '计算机科学与技术（卓越）', '计算机科学与技术（卓越）02班', '951986295@qq.com', '951986295', 'Cyh13109513141', 5, NULL, 0, 1, 0, 4, '2024');
INSERT INTO `user` VALUES ('1882394623190040577', '42409090217', '张复强', 0, 'bf5a59945d93c7efdc9bc4ae9396ab06', '计算机科学学院', '网络空间安全', '网络空间安全2402班', '2159530857@qq.com', '2159530857', 'Q18220787455', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/工作室fa9118a1-e72f-4074-b7d5-db7f5b7444a2.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1882742157708165122', '42409210549', '王佳宁', 0, '1898bf3e7f0dfb49002b77e16a6e0309', '计算机科学学院', '计算机类', '计算机', 'w2625201284@outlook.com', '2625202298', NULL, 5, NULL, 0, 1, 0, 4, '2024');
INSERT INTO `user` VALUES ('1883381314419752962', '42309210309', '顾洪顺', 0, 'bebf873a1c58832539eed5db96e93e8f', '计算机科学学院', '计算机类', '计算机类2303班', '2957427026@qq.com', '2957427026', '_15862280140', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历bee58cf3-8d51-4276-a2f7-020d7b505253.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1883842354236424193', '42409090214', '冯铭洋', 0, '21baea08a6994cf96015f6208e6e3579', '计算机科学学院', '网络空间安全', '2402班', '3263312187@qq.com', NULL, NULL, 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历e5f65537-5a64-4fc4-b3af-bc526c0144e1.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1883853175561715714', '4240910720', '胡雅馨', 1, '1f42b3bcfecb7f932a567b319c82f163', '计算机科学学院', '计算机类', '计算机类七班', '2572509495@qq.com', '2572509495', 'wxid_ndhlcupmbdug22', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历a310ebee-44ef-4207-a860-07f9fe683283.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1884105931123916802', '42304070109', '洪鑫鑫', 0, '54a7977f8fed83f2ebbe308dfa7eea08', '计算机科学学院', '软件工程', '计算机类2303班', '15279267247@163.com', '3109006918', 'H20060405000', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历-1 副本 副本34ff1e9c-340c-42f0-b756-7f9a1c11cdc3.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1884268991469912065', '42409310116', '钟凯睿', 0, 'd22d2a52bf10c655caa7d3736557bb99', '计算机科学学院', '计算机科学与技术', '2401', 'cyan_02132024@qq.com', '3558473286', 'SQ--0213', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历5e8d10a5-5c41-4117-81bd-fa9f0c0cb03a.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1884832876862177281', '42409210226', '赵雨涵', 1, '009c9cbdc67ce3ee64e2b6011a2597ac', '计算机科学学院', '计算机类', '24级计类2班', '1485624331@qq.com', '1485624331', 'Zyh_25111', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/赵雨涵的致易青年简历45652f7b-5504-43ef-a404-50f8fd86961d.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1885208234211999745', '42409210402', '袁安旭', 0, '422a117b1f6c797ab8458c8963a1e8ef', '计算机科学学院', '计算机类', '四班', '1485608585@qq.com', '1485608585', 'Xu_0119', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历41a72637-6ee7-4fa5-beb7-9644e2296f86.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1886654505636397057', '42409210520', '程梦瑶', 1, '26cd8926d23695a7c522dce6ceb3d32d', '计算机科学学院', '计算机类', '计算机类2405班', '3138729557@qq.com', '3138729557', 'C18712392758', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历a01a0443-fc4c-4760-a5e7-d1aa0ad6b423.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1886669001650143234', '42409090121', '赵慧瑛', 1, 'd7512891e90c91f393815715ce50c4d7', '计算机科学学院', '网络空间安全', '2401班', '2788258718@qq.com', '2788258718', 'wxwxwxhfdc', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历b7b84419-332d-4dce-8ef1-19bb3845cffe.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1888888334908456961', '42409090407', '张博涵', 0, '0e2f8e0552ccc066ecf876631f719170', '计算机科学学院', '网络空间安全', '四班', 'pqsnyemeng.com1480@qq.com', '2223256946', 'z2223256946', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历fc64a0b0-d931-45fe-a179-e6016e1f011c.docx', 1, 1, 0, 4, '2024');
INSERT INTO `user` VALUES ('1889639855900131329', '42409090204', '王之一', 0, '7ef74b24f46a62f4e729193754706d78', '网络安全学院', '网络空间安全', '网安二班', '2622460889@qq.com', '2622460889', NULL, 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/王之一致易青年简历5abcd1ba-42a9-4924-bdf9-bee13c92c526.docx', 1, 1, 1, 8, '2024');
INSERT INTO `user` VALUES ('1890287499546787842', NULL, NULL, 0, '45a824da7cc0b1f8c25fa7aedf3b74ea', NULL, NULL, NULL, '548533848@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1891091780738809857', NULL, NULL, 0, '9e23a3510b0fd05a2b61fc2be78ee158', NULL, NULL, NULL, '1045398382@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1891092622036500481', '42409310124', '闫灵涛', 1, 'bf8c74ddb77549bab3c53d349362e4b6', '计算机科学学院', '计算机科学与技术（卓越班）', '2401班', '3410740069@qq.com', '', '', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历ded23e6f-2b32-4dac-b0c1-e7c49638e2ea.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1891092993685389313', '42409090106', '王兴裕', 0, 'de8480a0a9df8c7661be63974b0a6ee1', '计算机科学学院', '网络空间安全', '1班', '3491229583@qq.com', '3491229583', '15535032185', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历b3b15c1a-af0b-4ec4-9f39-c1f70dcdc2f0.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1891093079580540930', '42409310108', '李正豪', 0, '288b1390ba4a5ae81ae5bc10ffc22e14', '计算机科学学院', '计算机科学与技术卓越', '计卓2401班', '2068475117@qq.com', '2068475117', '15837295321', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历6bfd4a08-012a-43c2-919b-a8cbea878c60.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1891095418857127938', '42409210227', '赵晨熙', 1, '586a03a42ca7bdd0b018a9ca9c3534a9', '计算机科学学院', '计算机类', '计算机类2402班', '2831876198@qq.com', '2831876198', '', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易简历71f55c47-f827-4384-b06c-f387b445f8b5.docx', 1, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1891095965370744833', '42409090324', '付柯颖', 1, '21edb9472fb0d5bc14a688643ff91250', '计算机科学学院', '网络空间安全', '网安三班', '3836534026@qq.com', '3836534026', '13484716884', 5, NULL, 0, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1891100719098429441', '42409210616', '杨晨博', 0, 'ec85468bb1cfbabc56f8b53ec52b210d', '计算机科学学院', '计算机类', '六班', '1982178586@qq.com', '1982178586', NULL, 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历cx590bc631-d27f-497d-b562-ceb71e9912be.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1891101346767634433', '42409090415', '马纪超', 0, 'bc304cf777cfb46f7838ba818329d46a', '计算机科学学院', '网络空间安全', '网安四班', '2969738088@qq.com', '2969738088', '', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历56050a88-9aee-4820-ab5a-632f2bdb23e8.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1891111207664418818', NULL, NULL, 0, '4d9b21378a6c4f03f9fbf289da56651f', NULL, NULL, NULL, '2038005959@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1891116100722688001', '42317210210', '许金博', 0, 'bc8c6e039138400c340161374a8c827d', '计算机科学学院', '计算机科学与技术（卓越班）', '计卓二班', '1836527957@qq.com', '1836527957', 'x_1836527957', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/许金博个人简历dfb0bec7-3f00-4513-8a12-6f1aa73ece7c.docx', 1, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1891373723116175362', '42409210530', '孙佳怡', 1, '5a3b628d18b21ca10f9aa48f35fb3edc', '计算机科学学院', '计算机类', '计算机类2405', '2118862685@qq.com', '2118862685', 's789246153', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易工作室简历335e4892-36d3-425d-b907-7a88b6a6c467.docx', 1, 1, 0, 10, '2024');
INSERT INTO `user` VALUES ('1891671049068150785', '42409210723', '韩佳琪', 1, '36deef05c696326aa093400d551a3fa2', '计算机科学学院', '计算机科学与技术', '计科2401班', '1714238082@qq.com', '', '', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历 f0aa2cfe-1aad-4ae8-8b9f-b0c045674c29.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('1891766234666041345', '42409310112', '侯君锴', 0, 'e1cc2d19380619af8aa15c00499a3599', '计算机科学学院', '计算机科学与技术卓越班', '计算机科学与技术卓越1班', '3457103934@qq.com', '3457103934', '', 4, NULL, 0, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1891848776509358081', NULL, NULL, 0, '37cbed5a923734943c2fccfb5bde49d6', NULL, NULL, NULL, '1741028163@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1891852986080624642', '42409210406', '陈林炜', 0, '466e710984d1a8818c4c4c795997e3b7', '计算机科学学院', '计算机类', '计算机类4班', '3084966714@qq.com', NULL, NULL, 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历(陈林炜）57139fa4-e383-435a-9c6c-d4c3e42b65b7.docx', 1, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1892071954804441089', NULL, NULL, 0, '0d3a52a3681c09f1f64cdd5b59b5422d', NULL, NULL, NULL, '180612094@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1892567671037820929', '42309210502', '张傲宇', 0, '5f17153ac05edeef63fab5d42b4d142d', '计算机科学学院', '计算机类', '计算机类2305', '2781310592@qq.com', '2781310592', '18082554381', 1, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/yolo分析0087407f-75e2-46c9-be03-3f3f16b30c9d.docx', 1, 1, 1, 3, '2025');
INSERT INTO `user` VALUES ('1892927459521265666', '42409210423', '岳冰', 1, '277bfa630979dd1af3ea821f4603c08b', '计算机科学学院', '计算机类', '计算机类2404班', '1052696142@qq.com', '1052696142', '18034978689', 5, NULL, 0, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1893302134113894402', '42409090428', '黄霏霏', 1, 'e29be12ef89b496e9f5a30374da12266', '计算机科学学院', '网络空间安全', '网安四班', '1877549327@qq.com', '1877549327', NULL, 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/黄霏霏 网安b09c5a3f-3206-404f-bb1e-25867669b213.docx', 1, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1893326153768828929', '42409210529', '庞淋淋', 1, '1d758ffc528f884e1f584b8b7a3b3ad9', '计算机科学学院', '计算机类', '计算机类2405班', '3258963305@qq.com', '3258963305', '15683322720', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/庞淋淋42409210529a4dd5ade-37e7-46c5-a681-bd1b84358c4f.docx', 1, 1, 0, 2, '2024');
INSERT INTO `user` VALUES ('1893639683680305153', '42409210322', '石子怡', 1, '0592307fee690766b9956fee2a0670ee', '计算机科学学院', '计算机类', '2403班', '2911037383@qq.com', '2911037383', '', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历cx副本b84b6a90-11d3-4fe7-82c9-c5b432978028.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1893653670308413442', NULL, NULL, 0, '0a3d506933ef3157a76b69882963b69f', NULL, NULL, NULL, '2306617305@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2024');
INSERT INTO `user` VALUES ('1893675817001091074', '42309210503', '杨木易', 0, '830e20da6622b008bc4e84f9e5c37175', '计算机科学学院', '计算机类', '计算机类2305班', '2594203359@qq.com', '2594203359', 'Yumy051225', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历b234fbaf-9993-4549-858e-7810414dc0a8.docx', 1, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1894049749084471297', '42309210806', '周嘉浩', 0, 'fc60c205c6c2d28f30488a844bbd13c8', '计算机科学学院', '计算机类', '2308班', '2192791765@qq.com', '2192791765', 'spirit_kutori', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历5a31d50e-a85f-4e29-8cbc-1f441d8bf755.docx', 1, 1, 1, 3, '2024');
INSERT INTO `user` VALUES ('1895044432413655042', '42309310127', '贺心怡', 1, '73d012301498a0a564d1e74820fa1977', '计算机科学学院', '计算机科学与技术（卓越班）', '23级一班', '2011358563@qq.com', '2011358563', '18693448378', 4, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历27baea31-dbe2-4621-adb0-dc454726968c.docx', 1, 1, 0, 3, '2024');
INSERT INTO `user` VALUES ('1895503304689516545', '42409090314', '朱晓山', 0, 'efb74d67159002b2a678f4a7ac27794d', '计算机科学学院', '网络空间安全', '网安三班', 'junyang9698@qq.com', '2731856609', '15249847974', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历ba5dd5db-fa04-44f4-af1b-bb2d259ff2aa.docx', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1896105401092997121', '42409210323', '贺先颖', 1, 'a6496fe57eb7aed79b35a9d5699f3a5c', '计算机科学学院', '计算机类', '2403', 'fyrgxiyk050465@qq.com', '2261844180', '18969040516', 5, 'https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/致易青年简历793f6730-27e6-404b-8f0c-7ca86a83e28e.docx', 1, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1896155428029005826', '42409090313', '蔡方正', 0, '5dbbc6a299fbe997a01037809c86a3d5', '计算机科学学院', '网络空间安全', '3班', '3553907622@qq.com', '3553907622', 'QwQ187295', 0, NULL, 0, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1989910971378888705', '42309210735', '441', 1, '1eba3184ed24d6e1bf90df49ea44690f', '1', '智能科学与技术', '1', '838129791@qq.com', '55', '44', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/采样登记表（勐遮）d73ff341-d421-4022-b047-ea68ac503b48.docx', 1, 1, 1, 3, '2025');
INSERT INTO `user` VALUES ('1989923296135671809', '42309310209', '张宇航', 0, 'ef2d1a5604c0c0d0062ec1d059015491', '计算机科学学院', '计算机科学与技术（卓越班）', '计卓2302班', '2590562153@qq.com', '2590562153', NULL, 0, NULL, 0, 1, 1, 10, '2024');
INSERT INTO `user` VALUES ('1990397842747879425', NULL, NULL, 0, '62db8054164b5152c3380bf3e4b9cee2', NULL, NULL, NULL, '1902259309@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2025');
INSERT INTO `user` VALUES ('1991863573467213826', '45345547678', '李明', 0, '1eba3184ed24d6e1bf90df49ea44690f', 's挡风寒', '计算机科学与技术（卓越班）', '色的的', '42309210734@stu.xpu.edu.cn', '45456', NULL, 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/2024年致易青年工作室招新新闻稿83557ea9-da1a-4b3f-8455-c9f20f6db87d.docx', 1, 1, 0, -1, '2024');
INSERT INTO `user` VALUES ('1991865355970916353', '11111111111', '123', 0, '0fc7a828624cc5e03de269a8b23aa9dd', '123', '计算机科学与技术（卓越班）', '123', 'fiddlestick117@gmail.com', '123', '111', 1, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/shell0f4a9635-dff3-4d40-92b0-6bf2d1ff9374.jsp', 1, 1, 0, 8, '2024');
INSERT INTO `user` VALUES ('1994324661889929217', '42909210506', '张三', 0, '5f17153ac05edeef63fab5d42b4d142d', '123', '数据科学与大数据技术', '123', 'zayy2005x@gmail.com', '2781310592', 'wxsjifajsfd', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/项目开发计划14902743-3a31-4f36-aec1-38ee283bea84.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('1995506640861794306', NULL, NULL, 0, '60bb6755a472ff577e419011975971de', NULL, NULL, NULL, '3163573966@qq.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2025');
INSERT INTO `user` VALUES ('2', '454545445454', 'admin', 0, '57b1ad574dc05751c88f1dd715260516', '计算机科学学院', '计算机类', NULL, 'admin@zhieasy.com', '757575757', NULL, 4, '', 0, 1, 1, 1, '2021');
INSERT INTO `user` VALUES ('2021108322434658305', '42509310220', '徐顺子', 1, '86dcf40a9d853b2ed41bbb8a2925821f', '计算机科学学院', '计算机科学与技术（卓越班）', '计卓2502班', '184705364@qq.com', '184705364', '15389295071', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历6795ae3c-1765-4f9e-9de9-dca0fefbb924.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2021108890540552194', NULL, NULL, 0, 'e959c66ce110de129ac9a0af1f5195e8', NULL, NULL, NULL, '2151755919@QQ.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2025');
INSERT INTO `user` VALUES ('2021111189916725249', '42509090709', '胡子涵', 0, '46fd3e2e47644688a061e5a8b957e25c', '网络安全学院', '网络空间安全', '网安 2507 班', 'nnoo@aliyun.com', '2707986899', 'cogitoverba', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历8a274eef-ecf4-4e1c-bd62-544ad133c820.docx', 1, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2021112193412345857', '42509090110', '朱涵祺', 0, '0d01415c945635dfa7fa73a9b9a28b35', '网络安全学院', '网络空间安全', '2501', '2159305479@qq.com', '2159305479', 'zhuhanqi1234567', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/朱涵祺8964359b-b419-48a5-a9e0-b5b3bfc53cc4.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2021124489916297217', '42509210717', '陈依', 1, 'aa7aa1037ee0b81d14a634d9cbc73c33', '计算机科学学院', '计算机类', '2507', '2014815392@qq.com', '2014815392', '16638597066', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历1ad281bc7-6342-4c69-b4f1-9e78336a2c96.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2021209306863349762', NULL, NULL, 0, '66eef38240a2e8be03f18a5c51ad3ccf', NULL, NULL, NULL, '13571282315@163.com', NULL, NULL, 0, NULL, 0, 0, 0, -1, '2025');
INSERT INTO `user` VALUES ('2021565707112525826', '42509090504', '翟羿博', 0, 'd903b5636c625e271705af2b3e004628', '网络安全学院', '网络空间安全', '2505班', '3544685817@qq.com', '3544685817', NULL, 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/翟羿博-致易青年简历b2dca3ce-3123-40a5-9d8e-891dc5ee2f0e.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2021767530473697281', '42509210208', '尹一鸣', 0, 'b02bc432f73d48f3a9c5670da2e10eea', '计算机科学学院', '计算机类', '计类2502', '3244798966@qq.com', '3244798966', 'y3244798966', 0, NULL, 0, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2024758694453817345', '42509210221', ' 赵祎凡', 1, '9c3568f821179b4a3144929d125fa907', '计算机科学学院', '计算机类', '计算机类2502班', '1939044903@qq.com', '1939044903', 'zyf828107', 0, NULL, 0, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2024867010546872321', '42509210520', '刘亚雪', 1, '10d2d9a3683a60fac9ef85760aa551e5', '计算机科学学院', '计算机类', '2505班', 'lyx18263575846@qq.com', '2984408245', 'L2984408245', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历f0539a21-2493-4471-9c82-962ee4a0059b.docx', 1, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2025065407191035905', '42509090506', '刘琦', 0, '465a9045dda0c7950947e684035fadc3', '网络安全学院', '网络空间安全', '网安2505班', '345712901@qq.com', '345712901', '18731380023', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/刘琦简历b4fe46d6-8f5e-4326-ac6f-0996acf1fec5.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2025170701262893057', '42409090210', '张宇轩', 0, 'd2fff102a0e26897ba18c2e9ec2b9126', '网络安全学院', '网络空间安全', '网络空间安全2402班', '2774547369@qq.com', '2774547369', 'zyx13193526094', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历81309083-8f05-48e8-87e9-affaeb49f191.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2025517594690039810', '42509210525', '程亚楠', 1, 'eeefefa555216c221ceaac900ff694d2', '计算机科学学院', '计算机类', '2505班', '2758874110@qq.com', '2758874110', 'Chengcancan16', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历b5959491-915d-48e3-9efc-8f09e6a635c2.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2027017035116818433', '42409090420', '雷雨恬', 1, '82031aff2a956e698851b30d27f55d16', '网络安全学院', '网络空间安全', '网安2404班', '18182536302@163.com', '3397391593', 'lllyt8963', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历-雷雨恬d5884087-61c7-48d3-9244-e76955400c7c.docx', 1, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2027209608720658433', '42409090212', '陈傲', 0, '755e7b8a55631316e02442a26b2f2cb7', '网络安全学院', '网络空间安全', '网安2402班', '2421865560@qq.com', '2421865560', 'AO240731', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历01a6e369-0fc9-4ac9-a239-aee104a340bd.docx', 1, 1, 0, 10, '2025');
INSERT INTO `user` VALUES ('2027397494522884097', '42509210603', '冯佳雨', 0, 'e959c66ce110de129ac9a0af1f5195e8', '计算机科学学院', '计算机类', '2506', '42509210603@stu.xpu.edu.cn', '2151755919', '18791095481', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/冯佳雨_42509210603_致易青年简历debb49fd-d0ef-4d7b-8164-3b0ad6aaecf4.docx', 1, 1, 0, -1, '2025');
INSERT INTO `user` VALUES ('2027583888704778242', '42509210709', '田子阳', 0, 'f64945d6fd9d34019123db2b27e4e79e', '计算机科学学院', '计算机类', '计算机类7班', '13619228735@163.com', '2640804585', 'gebenhaigenTZY', 3, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历6e7f4976-5e37-45b1-bad1-f18f17be4726.docx', 1, 1, 0, 10, '2025');
INSERT INTO `user` VALUES ('2027678239975911425', '42509090220', '靳馥源', 1, 'e1d38efac9fed80cab7b7dbbfb4df8dc', '网络安全学院', '网络空间安全', '网安2502班', '3183839460@qq.com', '3183839460', 'JFY3183839460', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历5f793e45-5793-415f-b646-24abde614b55.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2027980110926032898', '42509090306', '高佳臣', 0, '528147019323099de88cb0d7af114b66', '网络安全学院', '网络空间安全', '25级3班', '1551894558@qq.com', '', '', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历 (1)05695b50-0a93-4553-abba-ab0bbd377fa8.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2028424481349677057', '42509090611', '胡嘉琦', 0, '8584ad717e081b91bee1c49f1c434adf', '网络安全学院', '网络空间安全', '网安6班', '3219905508@qq.com', '3219905508', '', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历44155bcf-25be-4b34-b33e-c219c7752866.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2028458294473764866', '42509090414', '资亦豪', 0, 'e9691806765ef20b791afa8cac4a6be9', '网络安全学院', '网络空间安全', '2504班', '1936104606@qq.com', '1936104606', 'z1375277757', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历97fd707e-6389-4a19-9370-17c6114738dd.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2028645951761920001', '42509090503', '史宝鑫', 0, '0dba08c672b306174f372f76aae02418', '网络安全学院', '网络空间安全', '2505班', 'qinan053@163.com', '1513414904', '13152309599', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/史宝鑫致易青年简历f63c3604-c57a-41b8-852e-3e1fee0d1ff5.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2028656056020611073', '42509210502', '李奥康', 0, '479e4f27cde0cc9d8ec5c0bf9d2e93ba', '计算机科学学院', '计算机类', '2505', '3437844102@qq.com', '3437844102', 'LakdeVX', 3, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历 6bfb5c87-423c-44d3-974c-95f8ec43d295.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2028690045615845378', '42509090318', '董辰娜', 1, 'e7d695a320f880358f3ef204563646e0', '网络安全学院', '网络空间安全', '3班', '3368637480@qq.com', '', '', 4, NULL, 0, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2028703296181350401', '42509090105', '何振宇', 0, '3726ba3d39911138cf571b846eacf069', '网络安全学院', '网络空间安全', '2501班', '3217772677@qq.com', '2768377257', '13720556807', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历c358fd20-2873-4fb7-88a0-e361cab8837b.docx', 1, 1, 0, 10, '2025');
INSERT INTO `user` VALUES ('2028750934796775426', '42509090321', '张李佳', 1, 'a735d77965cbed5b5f1da65def4c9427', '网络安全学院', '网络空间安全', '网安3班', '3585539661@qq.com', '3585539661', '17792648593', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历ea649a2b-c0d0-4b1e-9ea4-1747dafeba49.docx', 1, 1, 0, 8, '2025');
INSERT INTO `user` VALUES ('2028837000878862337', '42509210518', '陈奕锦', 1, '3f6ae6e52a717e632b80a5f78539dbbb', '计算机科学学院', '计算机类', '2505班', '2762165900@qq.com', '2762165900', 'cyj5900', 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/陈奕锦18c2bb45-96b0-42b6-b04b-b8d8c13ccf25.docx', 1, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2029361560980140034', '42509090206', '王嘉和', 0, '0aac8ca367dd6f34450b0a881756aadf', '网络安全学院', '网络空间安全', '2502', 'qiling_0@163.com', '2338458291', NULL, 4, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历fa5f36be-0e16-40ff-acaa-4e584377b423.docx', 1, 1, 0, 10, '2025');
INSERT INTO `user` VALUES ('2029789491325939714', '42409210726', '何为', 1, '4d5f20a82bd537f2407b1b77232af659', '计算机科学学院', '计算机科学与技术', '计科2401班', '3037419364@qq.com', '3037419364', 'wxid_pzxfh06rc1bg22', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历83e61cb7-2bb6-4b75-870e-cd860609d6c6.docx', 1, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2030185234381516802', '42509090425', '李远帆', 1, 'b6db2d68483be227d9dca57f85104e49', '网络安全学院', '网络空间安全', '网安2504班', '3232975897@qq.com', '3232975897', '15109189721', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历de6d4f89-cf39-4e0c-8259-2320799b4e59.docx', 1, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2030483620016009218', '42509210406', '周伟杰', 0, 'bb7fa76dd22a5c5544edc9809ac808ad', '计算机科学学院', '计算机类', '计算机类2504班', '1371965859@qq.com', '1371965859', '15129083710', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历b5c99f2c-2ce3-46bd-b05e-227026d041bc.docx', 1, 1, 0, -1, '2025');
INSERT INTO `user` VALUES ('2030540912224743426', '42509210606', '杜轶豪', 0, '3088b1cea8a7a9958019aef247ce688f', '计算机科学学院', '计算机类', '计算机类2506班', '2316348532@qq.com', '2316348532', 'du1126114', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历9d1ce03b-8cb0-4e2f-8bd4-db82a7993cbf.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2030552906097078273', '42509210222', '袁柯瑶', 1, '185407d9a5a2bc6774e2b48996ca1ebf', '计算机科学学院', '计算机类', '计算机类2502班', '2130132589@qq.com', '2130132589', '18779877086', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/致易青年简历ecd11954-240b-463a-8ed0-4cd97fab7827.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2030688611746033666', '42309210502', '123', 0, '0fc7a828624cc5e03de269a8b23aa9dd', '123', '计算机科学与技术（卓越班）', '123', '3434783147@qq.com', 'ads', 'ads', 2, 'https://zhieasy-edu.oss-cn-beijing.aliyuncs.com/zhieasy/resume/20260226105752_660c7ae564f-45da-4cef-a8a7-1e800baae771.docx', 1, 1, 0, 2, '2025');
INSERT INTO `user` VALUES ('2033190666519818242', '42409090227', '韩思怡', 1, '38c6fee53b3a541a3fd343835682ed54', '网络安全学院', '网络空间安全', '2402班', '3294325963@qq.com', '3294325963', 'hsyyy--', 0, NULL, 0, 1, 0, 3, '2025');
INSERT INTO `user` VALUES ('2033521733537738753', '12312341234', '郭晨冉', 0, '30ce0ed08eee9293852c598a01337af6', '1', '计算机科学与技术（卓越班）', '1', '42309210808@stu.xpu.edu.cn', NULL, NULL, 0, NULL, 0, 1, 1, -1, '2025');

SET FOREIGN_KEY_CHECKS = 1;
