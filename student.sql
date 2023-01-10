/*
 Navicat Premium Data Transfer

 Source Server         : mysql20221209
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 10/01/2023 17:35:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`, `cname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '高三1班');
INSERT INTO `class` VALUES (2, '高三2班');
INSERT INTO `class` VALUES (4, '高三3班');
INSERT INTO `class` VALUES (5, '高三4班');
INSERT INTO `class` VALUES (6, '高三5班');
INSERT INTO `class` VALUES (7, '高三6班');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` int NOT NULL,
  `classid` int NOT NULL,
  `timein` date NOT NULL,
  PRIMARY KEY (`id`, `sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 308 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 20190101, '张三', 0, 1, '2020-10-16');
INSERT INTO `student` VALUES (2, 20190102, '张三', 0, 1, '2010-10-16');
INSERT INTO `student` VALUES (3, 20190103, '张三', 0, 1, '2010-10-16');
INSERT INTO `student` VALUES (4, 19990101, '小编', 0, 2, '2023-01-15');
INSERT INTO `student` VALUES (6, 20220345, '王八', 1, 4, '2022-04-04');
INSERT INTO `student` VALUES (7, 20210302, '测试', 1, 4, '2021-03-02');
INSERT INTO `student` VALUES (8, 20200101, 'Mark Mason', 1, 5, '2022-08-05');
INSERT INTO `student` VALUES (9, 20200102, 'Nishimura Minato', 0, 1, '2022-07-21');
INSERT INTO `student` VALUES (10, 20200103, 'Rachel Watson', 1, 4, '2022-11-15');
INSERT INTO `student` VALUES (11, 20200104, 'Tao Zitao', 1, 5, '2022-01-26');
INSERT INTO `student` VALUES (12, 20200105, 'Kwan Wai Man', 1, 7, '2022-09-29');
INSERT INTO `student` VALUES (13, 20200106, 'Mui Suk Yee', 0, 1, '2022-01-13');
INSERT INTO `student` VALUES (14, 20200107, 'Miyamoto Yota', 0, 6, '2022-02-17');
INSERT INTO `student` VALUES (15, 20200108, 'Steve Gomez', 0, 5, '2022-01-18');
INSERT INTO `student` VALUES (16, 20200109, 'Arai Nanami', 1, 7, '2022-01-24');
INSERT INTO `student` VALUES (17, 20200110, 'Julie Adams', 1, 2, '2022-11-25');
INSERT INTO `student` VALUES (18, 20200111, 'Rodney Nichols', 0, 7, '2022-11-14');
INSERT INTO `student` VALUES (19, 20200112, 'Sun Shihan', 0, 4, '2022-12-06');
INSERT INTO `student` VALUES (20, 20200113, 'Chung Tak Wah', 0, 1, '2022-12-14');
INSERT INTO `student` VALUES (21, 20200114, 'Yokoyama Kasumi', 1, 1, '2022-03-15');
INSERT INTO `student` VALUES (22, 20200115, 'Takagi Itsuki', 1, 2, '2022-09-28');
INSERT INTO `student` VALUES (23, 20200116, 'Nakajima Rin', 1, 7, '2022-09-30');
INSERT INTO `student` VALUES (24, 20200117, 'Hasegawa Ayano', 0, 7, '2022-02-28');
INSERT INTO `student` VALUES (25, 20200118, 'Lam Fu Shing', 1, 7, '2022-09-27');
INSERT INTO `student` VALUES (26, 20200119, 'Peng Rui', 0, 7, '2022-02-17');
INSERT INTO `student` VALUES (27, 20200120, 'Ku Ka Keung', 0, 4, '2022-04-28');
INSERT INTO `student` VALUES (28, 20200121, 'Jiang Xiuying', 0, 4, '2022-01-25');
INSERT INTO `student` VALUES (29, 20200122, 'Wan Tak Wah', 0, 1, '2022-10-31');
INSERT INTO `student` VALUES (30, 20200123, 'Lui Sau Man', 1, 2, '2022-01-17');
INSERT INTO `student` VALUES (31, 20200124, 'Mao Yunxi', 1, 5, '2022-03-28');
INSERT INTO `student` VALUES (32, 20200125, 'Yan Zitao', 0, 6, '2022-04-11');
INSERT INTO `student` VALUES (33, 20200126, 'Du Yuning', 1, 5, '2022-04-12');
INSERT INTO `student` VALUES (34, 20200127, 'Cho Wing Fat', 1, 4, '2022-10-18');
INSERT INTO `student` VALUES (35, 20200128, 'Arai Ayano', 1, 5, '2022-02-24');
INSERT INTO `student` VALUES (36, 20200129, 'Kobayashi Aoi', 1, 7, '2022-12-28');
INSERT INTO `student` VALUES (37, 20200130, 'Xue Shihan', 1, 2, '2022-05-30');
INSERT INTO `student` VALUES (38, 20200131, 'Stephanie Turner', 1, 4, '2022-03-10');
INSERT INTO `student` VALUES (39, 20200132, 'Meng Jiehong', 0, 4, '2022-04-04');
INSERT INTO `student` VALUES (40, 20200133, 'Helen Medina', 1, 7, '2022-12-05');
INSERT INTO `student` VALUES (41, 20200134, 'Kong Ka Fai', 1, 7, '2022-11-11');
INSERT INTO `student` VALUES (42, 20200135, 'Jiang Jialun', 0, 1, '2022-05-16');
INSERT INTO `student` VALUES (43, 20200136, 'Su Lu', 1, 1, '2022-09-14');
INSERT INTO `student` VALUES (44, 20200137, 'Peggy Marshall', 0, 5, '2022-03-11');
INSERT INTO `student` VALUES (45, 20200138, 'Wanda Rice', 1, 2, '2022-04-04');
INSERT INTO `student` VALUES (46, 20200139, 'Hou Shihan', 1, 7, '2022-11-23');
INSERT INTO `student` VALUES (47, 20200140, 'Yin Wai Man', 0, 4, '2022-11-01');
INSERT INTO `student` VALUES (48, 20200141, 'Taniguchi Rena', 0, 2, '2022-01-11');
INSERT INTO `student` VALUES (49, 20200142, 'Pang Wing Fat', 1, 4, '2022-07-01');
INSERT INTO `student` VALUES (50, 20200143, 'Sarah Cole', 0, 5, '2022-09-30');
INSERT INTO `student` VALUES (51, 20200144, 'Du Rui', 1, 5, '2022-06-28');
INSERT INTO `student` VALUES (52, 20200145, 'Koyama Hina', 1, 5, '2022-12-23');
INSERT INTO `student` VALUES (53, 20200146, 'Abe Sakura', 0, 4, '2022-04-26');
INSERT INTO `student` VALUES (54, 20200147, 'Fu Lan', 0, 5, '2022-04-29');
INSERT INTO `student` VALUES (55, 20200148, 'Tian Lan', 1, 7, '2022-05-25');
INSERT INTO `student` VALUES (56, 20200149, 'Zhou Yuning', 0, 1, '2022-05-04');
INSERT INTO `student` VALUES (57, 20200150, 'Zou Xiuying', 1, 6, '2022-07-28');
INSERT INTO `student` VALUES (58, 20200151, 'Keith Ruiz', 1, 2, '2022-07-13');
INSERT INTO `student` VALUES (59, 20200152, 'Sato Hikaru', 1, 6, '2022-02-23');
INSERT INTO `student` VALUES (60, 20200153, 'Fukuda Seiko', 1, 5, '2022-10-10');
INSERT INTO `student` VALUES (61, 20200154, 'Yang Xiuying', 0, 5, '2022-10-17');
INSERT INTO `student` VALUES (62, 20200155, 'Tin Ching Wan', 1, 7, '2022-09-23');
INSERT INTO `student` VALUES (63, 20200156, 'Yu Yunxi', 0, 6, '2022-06-20');
INSERT INTO `student` VALUES (64, 20200157, 'Imai Kaito', 1, 4, '2022-08-23');
INSERT INTO `student` VALUES (65, 20200158, 'Ueda Itsuki', 0, 2, '2022-12-26');
INSERT INTO `student` VALUES (66, 20200159, 'Pauline Harrison', 1, 4, '2022-11-11');
INSERT INTO `student` VALUES (67, 20200160, 'Tin Hui Mei', 0, 5, '2022-12-09');
INSERT INTO `student` VALUES (68, 20200161, 'Ho Tak Wah', 1, 5, '2022-08-22');
INSERT INTO `student` VALUES (69, 20200162, 'Endo Ayano', 1, 4, '2022-06-24');
INSERT INTO `student` VALUES (70, 20200163, 'Sakamoto Momoka', 1, 2, '2022-06-06');
INSERT INTO `student` VALUES (71, 20200164, 'Cao Zhiyuan', 1, 2, '2022-08-12');
INSERT INTO `student` VALUES (72, 20200165, 'Chow Wing Sze', 1, 2, '2022-10-07');
INSERT INTO `student` VALUES (73, 20200166, 'Saito Mitsuki', 1, 1, '2022-07-29');
INSERT INTO `student` VALUES (74, 20200167, 'Loui Wing Fat', 0, 6, '2022-01-26');
INSERT INTO `student` VALUES (75, 20200168, 'Travis Wagner', 1, 4, '2022-03-16');
INSERT INTO `student` VALUES (76, 20200169, 'Joanne Shaw', 1, 6, '2022-04-18');
INSERT INTO `student` VALUES (77, 20200170, 'Ishikawa Mitsuki', 1, 6, '2022-10-17');
INSERT INTO `student` VALUES (78, 20200171, 'Grace Jordan', 0, 2, '2022-11-04');
INSERT INTO `student` VALUES (79, 20200172, 'Hirano Ikki', 0, 4, '2022-05-30');
INSERT INTO `student` VALUES (80, 20200173, 'Shimizu Kazuma', 1, 1, '2022-03-03');
INSERT INTO `student` VALUES (81, 20200174, 'Du Yunxi', 0, 2, '2022-04-06');
INSERT INTO `student` VALUES (82, 20200175, 'Nakano Hikari', 0, 7, '2022-07-07');
INSERT INTO `student` VALUES (83, 20200176, 'Anthony Hicks', 0, 2, '2022-11-09');
INSERT INTO `student` VALUES (84, 20200177, 'Zhong Anqi', 0, 4, '2022-09-02');
INSERT INTO `student` VALUES (85, 20200178, 'Li Jialun', 1, 4, '2022-12-09');
INSERT INTO `student` VALUES (86, 20200179, 'Rodney Edwards', 0, 7, '2022-11-04');
INSERT INTO `student` VALUES (87, 20200180, 'Chu Sau Man', 0, 5, '2022-02-07');
INSERT INTO `student` VALUES (88, 20200181, 'Diana Anderson', 0, 4, '2022-11-16');
INSERT INTO `student` VALUES (89, 20200182, 'Su Jiehong', 0, 5, '2022-09-22');
INSERT INTO `student` VALUES (90, 20200183, 'Tsui Wai Man', 1, 1, '2022-11-11');
INSERT INTO `student` VALUES (91, 20200184, 'Chin Kwok Yin', 1, 2, '2022-06-30');
INSERT INTO `student` VALUES (92, 20200185, 'Choi Hok Yau', 1, 6, '2022-10-31');
INSERT INTO `student` VALUES (93, 20200186, 'Mok Tin Lok', 1, 6, '2022-11-01');
INSERT INTO `student` VALUES (94, 20200187, 'Yung Kwok Yin', 0, 2, '2022-07-13');
INSERT INTO `student` VALUES (95, 20200188, 'Chu On Kay', 0, 7, '2022-11-23');
INSERT INTO `student` VALUES (96, 20200189, 'Wang Jialun', 0, 4, '2022-11-18');
INSERT INTO `student` VALUES (97, 20200190, 'Kondo Hikari', 1, 4, '2022-10-11');
INSERT INTO `student` VALUES (98, 20200191, 'Yue Ka Ling', 1, 6, '2022-01-25');
INSERT INTO `student` VALUES (99, 20200192, 'Rachel Ward', 0, 4, '2022-08-02');
INSERT INTO `student` VALUES (100, 20200193, 'Yuen Siu Wai', 1, 6, '2022-05-18');
INSERT INTO `student` VALUES (101, 20200194, 'Dai Yunxi', 1, 1, '2022-02-11');
INSERT INTO `student` VALUES (102, 20200195, 'Dong Zitao', 1, 5, '2022-10-24');
INSERT INTO `student` VALUES (103, 20200196, 'Jiang Xiuying', 1, 1, '2022-08-04');
INSERT INTO `student` VALUES (104, 20200197, 'Kono Kaito', 0, 6, '2022-06-14');
INSERT INTO `student` VALUES (105, 20200198, 'Ogawa Yuna', 1, 6, '2022-04-25');
INSERT INTO `student` VALUES (106, 20200199, 'Ng Wai Lam', 1, 1, '2022-02-14');
INSERT INTO `student` VALUES (107, 20200200, 'To Chun Yu', 0, 4, '2022-11-18');
INSERT INTO `student` VALUES (108, 20200201, 'Sugawara Hikari', 0, 1, '2022-10-25');
INSERT INTO `student` VALUES (109, 20200202, 'Liao Ziyi', 0, 2, '2023-01-09');
INSERT INTO `student` VALUES (110, 20200203, 'Ito Hikari', 0, 7, '2022-08-16');
INSERT INTO `student` VALUES (111, 20200204, 'Dai Rui', 1, 2, '2022-12-28');
INSERT INTO `student` VALUES (112, 20200205, 'Lin Yunxi', 0, 7, '2022-06-20');
INSERT INTO `student` VALUES (113, 20200206, 'Ronald Soto', 0, 1, '2022-05-10');
INSERT INTO `student` VALUES (114, 20200207, 'Lam Chi Ming', 1, 7, '2022-02-18');
INSERT INTO `student` VALUES (115, 20200208, 'Liu Jialun', 0, 7, '2022-02-22');
INSERT INTO `student` VALUES (116, 20200209, 'Jacob Hill', 0, 6, '2022-03-08');
INSERT INTO `student` VALUES (117, 20200210, 'Ricky Black', 0, 7, '2022-07-13');
INSERT INTO `student` VALUES (118, 20200211, 'Ishikawa Hazuki', 1, 5, '2022-03-15');
INSERT INTO `student` VALUES (119, 20200212, 'Man Sum Wing', 0, 2, '2022-08-10');
INSERT INTO `student` VALUES (120, 20200213, 'Matsumoto Misaki', 0, 1, '2022-11-24');
INSERT INTO `student` VALUES (121, 20200214, 'Kinoshita Mai', 0, 1, '2022-04-22');
INSERT INTO `student` VALUES (122, 20200215, 'Nicholas Hicks', 1, 4, '2022-09-23');
INSERT INTO `student` VALUES (123, 20200216, 'Zhou Lu', 0, 1, '2022-04-07');
INSERT INTO `student` VALUES (124, 20200217, 'Kenneth Thomas', 0, 7, '2022-04-22');
INSERT INTO `student` VALUES (125, 20200218, 'Otsuka Sara', 1, 1, '2023-01-06');
INSERT INTO `student` VALUES (126, 20200219, 'Fung Tak Wah', 1, 5, '2022-11-07');
INSERT INTO `student` VALUES (127, 20200220, 'Yung Chiu Wai', 0, 6, '2022-01-28');
INSERT INTO `student` VALUES (128, 20200221, 'Xiong Yuning', 1, 6, '2022-11-15');
INSERT INTO `student` VALUES (129, 20200222, 'He Xiaoming', 1, 4, '2022-06-24');
INSERT INTO `student` VALUES (130, 20200223, 'Cai Xiaoming', 0, 2, '2022-05-16');
INSERT INTO `student` VALUES (131, 20200224, 'Arimura Rena', 0, 1, '2022-08-19');
INSERT INTO `student` VALUES (132, 20200225, 'Sharon Nichols', 1, 6, '2022-03-09');
INSERT INTO `student` VALUES (133, 20200226, 'To Chiu Wai', 0, 2, '2022-09-16');
INSERT INTO `student` VALUES (134, 20200227, 'Ho Tak Wah', 0, 1, '2022-04-28');
INSERT INTO `student` VALUES (135, 20200228, 'Kam Kwok Yin', 0, 2, '2022-08-09');
INSERT INTO `student` VALUES (136, 20200229, 'Teresa Howard', 1, 1, '2022-02-14');
INSERT INTO `student` VALUES (137, 20200230, 'Saito Ren', 0, 6, '2022-03-03');
INSERT INTO `student` VALUES (138, 20200231, 'Qin Zitao', 1, 4, '2022-07-07');
INSERT INTO `student` VALUES (139, 20200232, 'Tamura Kazuma', 1, 7, '2022-06-13');
INSERT INTO `student` VALUES (140, 20200233, 'Ono Itsuki', 0, 6, '2022-05-03');
INSERT INTO `student` VALUES (141, 20200234, 'Susan Nguyen', 1, 6, '2022-05-23');
INSERT INTO `student` VALUES (142, 20200235, 'Gladys Carter', 0, 4, '2022-09-08');
INSERT INTO `student` VALUES (143, 20200236, 'Luo Anqi', 0, 7, '2022-10-21');
INSERT INTO `student` VALUES (144, 20200237, 'Edward White', 0, 4, '2022-08-19');
INSERT INTO `student` VALUES (145, 20200238, 'Jiang Xiaoming', 0, 6, '2022-06-22');
INSERT INTO `student` VALUES (146, 20200239, 'Mo Wing Sze', 1, 7, '2023-01-05');
INSERT INTO `student` VALUES (147, 20200240, 'Lo Ka Man', 1, 4, '2022-05-23');
INSERT INTO `student` VALUES (148, 20200241, 'Zhao Yuning', 0, 4, '2022-08-10');
INSERT INTO `student` VALUES (149, 20200242, 'Shimada Yuto', 0, 1, '2022-12-26');
INSERT INTO `student` VALUES (150, 20200243, 'Yamada Hazuki', 0, 1, '2022-05-30');
INSERT INTO `student` VALUES (151, 20200244, 'Ma Fu Shing', 0, 7, '2022-04-18');
INSERT INTO `student` VALUES (152, 20200245, 'Ishii Hikaru', 0, 7, '2022-09-22');
INSERT INTO `student` VALUES (153, 20200246, 'Hao Anqi', 0, 6, '2022-03-01');
INSERT INTO `student` VALUES (154, 20200247, 'Shimizu Yota', 0, 7, '2022-09-08');
INSERT INTO `student` VALUES (155, 20200248, 'Qiu Xiaoming', 0, 2, '2022-11-02');
INSERT INTO `student` VALUES (156, 20200249, 'Sheh Tsz Hin', 1, 6, '2022-09-16');
INSERT INTO `student` VALUES (157, 20200250, 'Tong Ming Sze', 0, 5, '2022-12-13');
INSERT INTO `student` VALUES (158, 20200251, 'Hsuan Chi Yuen', 0, 7, '2022-04-11');
INSERT INTO `student` VALUES (159, 20200252, 'Wu Jiehong', 1, 5, '2022-12-28');
INSERT INTO `student` VALUES (160, 20200253, 'Rebecca Cruz', 0, 6, '2022-12-01');
INSERT INTO `student` VALUES (161, 20200254, 'Uchida Hazuki', 1, 1, '2022-02-28');
INSERT INTO `student` VALUES (162, 20200255, 'Anna Hall', 1, 4, '2022-04-11');
INSERT INTO `student` VALUES (163, 20200256, 'Tao Suk Yee', 1, 5, '2022-02-21');
INSERT INTO `student` VALUES (164, 20200257, 'Morita Ren', 0, 5, '2022-01-18');
INSERT INTO `student` VALUES (165, 20200258, 'Dorothy Kelly', 0, 7, '2022-07-22');
INSERT INTO `student` VALUES (166, 20200259, 'Ernest Vargas', 0, 6, '2022-02-10');
INSERT INTO `student` VALUES (167, 20200260, 'Taniguchi Yuna', 1, 2, '2022-01-13');
INSERT INTO `student` VALUES (168, 20200261, 'Shi Xiuying', 1, 4, '2022-12-23');
INSERT INTO `student` VALUES (169, 20200262, 'Monica Robinson', 1, 7, '2022-03-15');
INSERT INTO `student` VALUES (170, 20200263, 'Chen Anqi', 1, 4, '2022-04-04');
INSERT INTO `student` VALUES (171, 20200264, 'Brian Ortiz', 0, 6, '2022-11-04');
INSERT INTO `student` VALUES (172, 20200265, 'Ono Hikari', 0, 4, '2022-06-07');
INSERT INTO `student` VALUES (173, 20200266, 'Choi Kwok Kuen', 0, 2, '2022-06-10');
INSERT INTO `student` VALUES (174, 20200267, 'Qian Zhennan', 1, 1, '2022-07-27');
INSERT INTO `student` VALUES (175, 20200268, 'Guo Anqi', 0, 7, '2022-09-20');
INSERT INTO `student` VALUES (176, 20200269, 'Eva Bennett', 1, 7, '2023-01-03');
INSERT INTO `student` VALUES (177, 20200270, 'Adam Williams', 0, 4, '2022-05-09');
INSERT INTO `student` VALUES (178, 20200271, 'Qiu Xiuying', 0, 1, '2022-12-02');
INSERT INTO `student` VALUES (179, 20200272, 'Hsuan Sai Wing', 0, 5, '2022-01-11');
INSERT INTO `student` VALUES (180, 20200273, 'Koo Ming', 0, 5, '2022-09-21');
INSERT INTO `student` VALUES (181, 20200274, 'Fong Wing Sze', 1, 5, '2022-01-12');
INSERT INTO `student` VALUES (182, 20200275, 'Justin Ramos', 1, 1, '2022-08-09');
INSERT INTO `student` VALUES (183, 20200276, 'Yokoyama Yota', 0, 7, '2022-01-03');
INSERT INTO `student` VALUES (184, 20200277, 'Gu Lu', 1, 6, '2022-03-28');
INSERT INTO `student` VALUES (185, 20200278, 'Cho Ka Keung', 0, 6, '2022-08-30');
INSERT INTO `student` VALUES (186, 20200279, 'Zhu Yuning', 0, 6, '2022-04-11');
INSERT INTO `student` VALUES (187, 20200280, 'Ray Garcia', 0, 7, '2022-06-01');
INSERT INTO `student` VALUES (188, 20200281, 'Sasaki Kasumi', 0, 4, '2022-05-16');
INSERT INTO `student` VALUES (189, 20200282, 'Nakano Hikaru', 0, 6, '2022-12-05');
INSERT INTO `student` VALUES (190, 20200283, 'Leroy Bennett', 0, 5, '2022-03-17');
INSERT INTO `student` VALUES (191, 20200284, 'Jose Gonzalez', 1, 1, '2022-12-16');
INSERT INTO `student` VALUES (192, 20200285, 'Li Shihan', 0, 1, '2022-04-18');
INSERT INTO `student` VALUES (193, 20200286, 'Ma Chi Ming', 0, 2, '2022-01-03');
INSERT INTO `student` VALUES (194, 20200287, 'Takeuchi Yuito', 1, 6, '2022-12-21');
INSERT INTO `student` VALUES (195, 20200288, 'Yuan Ziyi', 0, 2, '2022-06-16');
INSERT INTO `student` VALUES (196, 20200289, 'Fang Xiaoming', 1, 5, '2022-05-02');
INSERT INTO `student` VALUES (197, 20200290, 'Shibata Yamato', 0, 4, '2022-07-04');
INSERT INTO `student` VALUES (198, 20200291, 'Ku Sum Wing', 1, 1, '2022-07-29');
INSERT INTO `student` VALUES (199, 20200292, 'Liang Xiuying', 1, 6, '2022-09-15');
INSERT INTO `student` VALUES (200, 20200293, 'Hui Ka Ling', 0, 2, '2022-08-15');
INSERT INTO `student` VALUES (201, 20200294, 'Murata Miu', 1, 5, '2022-04-18');
INSERT INTO `student` VALUES (202, 20200295, 'Liao Shihan', 0, 5, '2022-07-14');
INSERT INTO `student` VALUES (203, 20200296, 'Koon Hok Yau', 0, 1, '2022-12-28');
INSERT INTO `student` VALUES (204, 20200297, 'Frances Ruiz', 1, 1, '2022-11-04');
INSERT INTO `student` VALUES (205, 20200298, 'Cao Xiaoming', 0, 6, '2023-01-09');
INSERT INTO `student` VALUES (206, 20200299, 'Louis Hayes', 1, 5, '2022-08-15');
INSERT INTO `student` VALUES (207, 20200300, 'Takada Ayano', 1, 7, '2022-09-13');
INSERT INTO `student` VALUES (208, 20200301, 'Thomas Gibson', 1, 7, '2022-05-24');
INSERT INTO `student` VALUES (209, 20200302, 'Yang Anqi', 0, 7, '2022-10-21');
INSERT INTO `student` VALUES (210, 20200303, 'Ng Wai Lam', 0, 1, '2022-01-25');
INSERT INTO `student` VALUES (211, 20200304, 'Hu Ziyi', 1, 1, '2022-05-24');
INSERT INTO `student` VALUES (212, 20200305, 'Ichikawa Shino', 1, 2, '2022-01-24');
INSERT INTO `student` VALUES (213, 20200306, 'Chris Coleman', 1, 1, '2022-12-15');
INSERT INTO `student` VALUES (214, 20200307, 'Kwan Wing Kuen', 0, 5, '2022-10-07');
INSERT INTO `student` VALUES (215, 20200308, 'Nomura Kenta', 0, 1, '2022-02-22');
INSERT INTO `student` VALUES (216, 20200309, 'Lo Wai Yee', 1, 7, '2022-03-28');
INSERT INTO `student` VALUES (217, 20200310, 'Fung Cho Yee', 1, 5, '2022-06-27');
INSERT INTO `student` VALUES (218, 20200311, 'Walter White', 0, 5, '2022-03-22');
INSERT INTO `student` VALUES (219, 20200312, 'Yamashita Momoka', 0, 5, '2022-09-15');
INSERT INTO `student` VALUES (220, 20200313, 'Edna Cole', 0, 4, '2022-03-07');
INSERT INTO `student` VALUES (221, 20200314, 'Heather Kim', 1, 4, '2022-12-09');
INSERT INTO `student` VALUES (222, 20200315, 'Ying Ka Fai', 1, 2, '2022-12-23');
INSERT INTO `student` VALUES (223, 20200316, 'Barry Lee', 0, 5, '2022-06-29');
INSERT INTO `student` VALUES (224, 20200317, 'Sheila Holmes', 0, 7, '2022-01-05');
INSERT INTO `student` VALUES (225, 20200318, 'Cai Shihan', 0, 5, '2022-03-31');
INSERT INTO `student` VALUES (226, 20200319, 'Siu On Kay', 1, 5, '2022-08-04');
INSERT INTO `student` VALUES (227, 20200320, 'Stephanie Ramirez', 0, 5, '2022-01-31');
INSERT INTO `student` VALUES (228, 20200321, 'Tsang Wing Sze', 1, 5, '2022-11-09');
INSERT INTO `student` VALUES (229, 20200322, 'Gu Anqi', 1, 4, '2023-01-03');
INSERT INTO `student` VALUES (230, 20200323, 'Ye Yunxi', 0, 1, '2022-06-10');
INSERT INTO `student` VALUES (231, 20200324, 'Yan Zitao', 1, 1, '2022-04-18');
INSERT INTO `student` VALUES (232, 20200325, 'Fung Ming', 1, 5, '2022-07-22');
INSERT INTO `student` VALUES (233, 20200326, 'Daniel Gibson', 1, 5, '2022-12-29');
INSERT INTO `student` VALUES (234, 20200327, 'Andrea Gomez', 0, 7, '2022-03-16');
INSERT INTO `student` VALUES (235, 20200328, 'Gu Zhennan', 0, 4, '2022-01-10');
INSERT INTO `student` VALUES (236, 20200329, 'Wei Shihan', 0, 7, '2022-04-18');
INSERT INTO `student` VALUES (237, 20200330, 'Ikeda Hikari', 1, 6, '2022-02-22');
INSERT INTO `student` VALUES (238, 20200331, 'Danielle Moreno', 1, 7, '2022-03-11');
INSERT INTO `student` VALUES (239, 20200332, 'Shen Jialun', 0, 7, '2022-02-23');
INSERT INTO `student` VALUES (240, 20200333, 'Choi Sum Wing', 0, 2, '2022-11-11');
INSERT INTO `student` VALUES (241, 20200334, 'Cheung Ka Fai', 1, 6, '2022-02-21');
INSERT INTO `student` VALUES (242, 20200335, 'Guo Xiuying', 1, 5, '2022-02-07');
INSERT INTO `student` VALUES (243, 20200336, 'Cui Jialun', 0, 6, '2022-09-09');
INSERT INTO `student` VALUES (244, 20200337, 'Ono Kasumi', 0, 1, '2022-07-08');
INSERT INTO `student` VALUES (245, 20200338, 'Lo Sze Yu', 1, 6, '2022-10-21');
INSERT INTO `student` VALUES (246, 20200339, 'Zhong Jialun', 0, 2, '2022-10-04');
INSERT INTO `student` VALUES (247, 20200340, 'Lee Chung Yin', 1, 7, '2022-08-19');
INSERT INTO `student` VALUES (248, 20200341, 'Ueno Mai', 0, 1, '2022-02-03');
INSERT INTO `student` VALUES (249, 20200342, 'Xiang Jiehong', 1, 1, '2022-09-14');
INSERT INTO `student` VALUES (250, 20200343, 'Xue Jialun', 1, 5, '2022-07-04');
INSERT INTO `student` VALUES (251, 20200344, 'Keith Warren', 1, 1, '2022-12-09');
INSERT INTO `student` VALUES (252, 20200345, 'Ashley Wright', 1, 4, '2022-03-16');
INSERT INTO `student` VALUES (253, 20200346, 'Harold Scott', 0, 2, '2022-12-30');
INSERT INTO `student` VALUES (254, 20200347, 'Frances Castillo', 1, 2, '2022-01-10');
INSERT INTO `student` VALUES (255, 20200348, 'Liang Lu', 0, 1, '2022-12-22');
INSERT INTO `student` VALUES (256, 20200349, 'Shao Zhennan', 1, 2, '2022-07-28');
INSERT INTO `student` VALUES (257, 20200350, 'Li Zhiyuan', 1, 5, '2022-06-22');
INSERT INTO `student` VALUES (258, 20200351, 'Micheal Nguyen', 0, 6, '2022-06-14');
INSERT INTO `student` VALUES (259, 20200352, 'Nancy Smith', 0, 4, '2022-04-12');
INSERT INTO `student` VALUES (260, 20200353, 'Dong Xiaoming', 0, 7, '2022-09-05');
INSERT INTO `student` VALUES (261, 20200354, 'Kam Kar Yan', 1, 7, '2022-05-12');
INSERT INTO `student` VALUES (262, 20200355, 'Kwok Kwok Yin', 1, 2, '2022-04-18');
INSERT INTO `student` VALUES (263, 20200356, 'Sakai Riku', 0, 1, '2022-02-21');
INSERT INTO `student` VALUES (264, 20200357, 'Kinoshita Tsubasa', 0, 7, '2023-01-10');
INSERT INTO `student` VALUES (265, 20200358, 'Shao Lan', 1, 6, '2022-11-25');
INSERT INTO `student` VALUES (266, 20200359, 'Shannon Schmidt', 1, 7, '2022-09-19');
INSERT INTO `student` VALUES (267, 20200360, 'Ma Jiehong', 0, 2, '2022-07-26');
INSERT INTO `student` VALUES (268, 20200361, 'Matsumoto Hina', 1, 4, '2022-08-19');
INSERT INTO `student` VALUES (269, 20200362, 'Choi Wing Sze', 0, 1, '2023-01-02');
INSERT INTO `student` VALUES (270, 20200363, 'Duan Shihan', 0, 4, '2022-03-28');
INSERT INTO `student` VALUES (271, 20200364, 'Sakurai Hina', 0, 5, '2022-07-12');
INSERT INTO `student` VALUES (272, 20200365, 'Cho Tin Wing', 1, 7, '2022-07-29');
INSERT INTO `student` VALUES (273, 20200366, 'Maruyama Momoe', 0, 4, '2022-09-23');
INSERT INTO `student` VALUES (274, 20200367, 'Tian Jialun', 0, 7, '2022-01-26');
INSERT INTO `student` VALUES (275, 20200368, 'Endo Yota', 1, 6, '2022-05-30');
INSERT INTO `student` VALUES (276, 20200369, 'Lam Ming', 1, 7, '2022-02-03');
INSERT INTO `student` VALUES (277, 20200370, 'Fred Griffin', 0, 7, '2022-11-24');
INSERT INTO `student` VALUES (278, 20200371, 'Nakayama Ayano', 1, 4, '2022-08-11');
INSERT INTO `student` VALUES (279, 20200372, 'Kong Ka Fai', 1, 2, '2022-02-21');
INSERT INTO `student` VALUES (280, 20200373, 'Mori Shino', 0, 2, '2022-11-28');
INSERT INTO `student` VALUES (281, 20200374, 'Nakano Daisuke', 0, 6, '2022-11-29');
INSERT INTO `student` VALUES (282, 20200375, 'Deborah Gomez', 0, 4, '2022-07-12');
INSERT INTO `student` VALUES (283, 20200376, 'Todd Smith', 1, 4, '2022-05-18');
INSERT INTO `student` VALUES (284, 20200377, 'Annie Diaz', 1, 7, '2022-02-21');
INSERT INTO `student` VALUES (285, 20200378, 'Peng Rui', 0, 1, '2022-01-05');
INSERT INTO `student` VALUES (286, 20200379, 'Tse Wing Sze', 0, 1, '2022-04-11');
INSERT INTO `student` VALUES (287, 20200380, 'Lisa Stone', 1, 2, '2022-02-08');
INSERT INTO `student` VALUES (288, 20200381, 'Liao Shihan', 1, 4, '2022-07-04');
INSERT INTO `student` VALUES (289, 20200382, 'Lui Chi Ming', 1, 4, '2022-12-19');
INSERT INTO `student` VALUES (290, 20200383, 'Sakurai Ayano', 1, 6, '2022-04-26');
INSERT INTO `student` VALUES (291, 20200384, 'Matsuda Itsuki', 0, 6, '2022-02-09');
INSERT INTO `student` VALUES (292, 20200385, 'Goto Shino', 0, 1, '2022-03-10');
INSERT INTO `student` VALUES (293, 20200386, 'Chen Xiaoming', 0, 5, '2022-06-28');
INSERT INTO `student` VALUES (294, 20200387, 'Eugene Rivera', 0, 1, '2022-07-15');
INSERT INTO `student` VALUES (295, 20200388, 'Fu Ho Yin', 0, 7, '2022-06-20');
INSERT INTO `student` VALUES (296, 20200389, 'Wang Jialun', 0, 1, '2022-11-18');
INSERT INTO `student` VALUES (297, 20200390, 'Fung Wing Fat', 0, 4, '2022-07-29');
INSERT INTO `student` VALUES (298, 20200391, 'Matsumoto Misaki', 0, 4, '2022-07-21');
INSERT INTO `student` VALUES (299, 20200392, 'Ng Tin Lok', 1, 2, '2022-04-15');
INSERT INTO `student` VALUES (300, 20200393, 'Travis White', 1, 7, '2022-06-24');
INSERT INTO `student` VALUES (301, 20200394, 'Lam Wai Han', 1, 1, '2022-03-07');
INSERT INTO `student` VALUES (302, 20200395, 'Endo Kaito', 0, 4, '2022-09-30');
INSERT INTO `student` VALUES (303, 20200396, 'Qian Shihan', 1, 4, '2022-08-26');
INSERT INTO `student` VALUES (304, 20200397, 'Tse Ka Ling', 0, 4, '2022-01-10');
INSERT INTO `student` VALUES (305, 20200398, 'Yuen Chiu Wai', 0, 5, '2022-12-21');
INSERT INTO `student` VALUES (306, 20200399, 'Gloria Gardner', 0, 7, '2022-07-29');
INSERT INTO `student` VALUES (307, 20200400, 'Tang Wai Man', 0, 6, '2022-07-13');

SET FOREIGN_KEY_CHECKS = 1;
