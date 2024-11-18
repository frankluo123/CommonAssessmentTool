/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : fastapi

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 11/11/2024 10:50:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `work_experience` int NULL DEFAULT NULL,
  `canada_workex` int NULL DEFAULT NULL,
  `dep_num` int NULL DEFAULT NULL,
  `canada_born` tinyint(1) NULL DEFAULT NULL,
  `citizen_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `level_of_schooling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fluent_english` tinyint(1) NULL DEFAULT NULL,
  `reading_english_scale` int NULL DEFAULT NULL,
  `speaking_english_scale` int NULL DEFAULT NULL,
  `writing_english_scale` int NULL DEFAULT NULL,
  `numeracy_scale` int NULL DEFAULT NULL,
  `computer_scale` int NULL DEFAULT NULL,
  `transportation_bool` tinyint(1) NULL DEFAULT NULL,
  `caregiver_bool` tinyint(1) NULL DEFAULT NULL,
  `housing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `income_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `felony_bool` tinyint(1) NULL DEFAULT NULL,
  `attending_school` tinyint(1) NULL DEFAULT NULL,
  `currently_employed` tinyint(1) NULL DEFAULT NULL,
  `substance_use` tinyint(1) NULL DEFAULT NULL,
  `time_unemployed` int NULL DEFAULT NULL,
  `need_mental_health_support_bool` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_clients_name`(`name`) USING BTREE,
  INDEX `ix_clients_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES (1, 'John Doe', 20, '1', 1, 1, 3, 0, '0', '1', 0, 1, 8, 2, 3, 4, 0, 1, '1', '1', 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons`  (
  `age` bigint NULL DEFAULT NULL,
  `gender` bigint NULL DEFAULT NULL,
  `work_experience` bigint NULL DEFAULT NULL,
  `canada_workex` bigint NULL DEFAULT NULL,
  `dep_num` bigint NULL DEFAULT NULL,
  `canada_born` bigint NULL DEFAULT NULL,
  `citizen_status` bigint NULL DEFAULT NULL,
  `level_of_schooling` bigint NULL DEFAULT NULL,
  `fluent_english` bigint NULL DEFAULT NULL,
  `reading_english_scale` bigint NULL DEFAULT NULL,
  `speaking_english_scale` bigint NULL DEFAULT NULL,
  `writing_english_scale` bigint NULL DEFAULT NULL,
  `numeracy_scale` bigint NULL DEFAULT NULL,
  `computer_scale` bigint NULL DEFAULT NULL,
  `transportation_bool` bigint NULL DEFAULT NULL,
  `caregiver_bool` bigint NULL DEFAULT NULL,
  `housing` bigint NULL DEFAULT NULL,
  `income_source` bigint NULL DEFAULT NULL,
  `felony_bool` bigint NULL DEFAULT NULL,
  `attending_school` bigint NULL DEFAULT NULL,
  `currently_employed` bigint NULL DEFAULT NULL,
  `substance_use` bigint NULL DEFAULT NULL,
  `time_unemployed` bigint NULL DEFAULT NULL,
  `need_mental_health_support_bool` bigint NULL DEFAULT NULL,
  `employment_assistance` bigint NULL DEFAULT NULL,
  `life_stabilization` bigint NULL DEFAULT NULL,
  `retention_services` bigint NULL DEFAULT NULL,
  `specialized_services` bigint NULL DEFAULT NULL,
  `employment_related_financial_supports` bigint NULL DEFAULT NULL,
  `employer_financial_supports` bigint NULL DEFAULT NULL,
  `enhanced_referrals` bigint NULL DEFAULT NULL,
  `success_rate` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES (20, 1, 1, 1, 3, 0, 0, 1, 0, 1, 8, 2, 3, 4, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 80);
INSERT INTO `persons` VALUES (21, 2, 2, 2, 5, 1, 1, 2, 1, 2, 9, 3, 4, 5, 1, 0, 2, 2, 1, 1, 1, 0, 2, 0, 1, 1, 1, 0, 1, 1, 1, 30);
INSERT INTO `persons` VALUES (22, 1, 3, 3, 1, 0, 0, 3, 0, 3, 10, 4, 5, 6, 0, 1, 3, 3, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (23, 2, 4, 4, 2, 1, 1, 4, 1, 4, 1, 5, 6, 7, 1, 0, 4, 4, 1, 1, 1, 0, 4, 1, 1, 1, 1, 0, 1, 1, 1, 70);
INSERT INTO `persons` VALUES (24, 1, 5, 5, 0, 0, 0, 5, 0, 5, 2, 6, 7, 8, 0, 1, 5, 5, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (25, 2, 6, 6, 2, 1, 1, 6, 1, 6, 3, 7, 8, 9, 1, 0, 6, 6, 0, 1, 1, 0, 2, 0, 0, 1, 1, 0, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (26, 1, 7, 7, 1, 0, 0, 7, 0, 7, 4, 8, 9, 8, 0, 1, 7, 7, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 10);
INSERT INTO `persons` VALUES (27, 2, 8, 8, 0, 1, 1, 8, 1, 8, 5, 9, 8, 9, 1, 0, 8, 8, 0, 1, 1, 1, 4, 0, 0, 1, 1, 1, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (28, 1, 9, 9, 1, 0, 0, 9, 0, 9, 6, 8, 9, 10, 0, 1, 9, 9, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 60);
INSERT INTO `persons` VALUES (29, 2, 10, 10, 0, 1, 1, 10, 1, 10, 7, 9, 10, 1, 1, 0, 10, 10, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 0, 1, 1, 50);
INSERT INTO `persons` VALUES (30, 1, 1, 1, 2, 0, 0, 11, 0, 1, 8, 10, 1, 2, 0, 0, 1, 2, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 100);
INSERT INTO `persons` VALUES (31, 2, 2, 2, 0, 1, 1, 12, 1, 2, 9, 1, 2, 3, 1, 1, 2, 3, 0, 1, 1, 1, 4, 0, 0, 1, 1, 1, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (32, 1, 3, 3, 4, 0, 0, 13, 0, 3, 8, 2, 3, 4, 0, 0, 3, 4, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 70);
INSERT INTO `persons` VALUES (33, 2, 4, 4, 2, 1, 1, 1, 1, 4, 9, 3, 4, 5, 1, 1, 4, 5, 0, 1, 1, 0, 2, 1, 0, 1, 1, 0, 0, 1, 1, 90);
INSERT INTO `persons` VALUES (34, 1, 5, 5, 0, 0, 0, 2, 0, 5, 10, 4, 5, 6, 0, 0, 5, 6, 1, 0, 0, 0, 3, 1, 1, 0, 0, 0, 1, 0, 0, 30);
INSERT INTO `persons` VALUES (35, 2, 6, 6, 3, 0, 0, 3, 0, 6, 1, 5, 6, 7, 0, 1, 6, 7, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (36, 1, 7, 7, 5, 1, 1, 4, 1, 7, 2, 6, 7, 8, 1, 0, 7, 8, 1, 1, 1, 0, 2, 1, 1, 1, 1, 0, 1, 1, 1, 70);
INSERT INTO `persons` VALUES (37, 2, 8, 8, 1, 0, 0, 5, 0, 8, 3, 7, 8, 9, 0, 1, 8, 9, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (38, 1, 9, 9, 2, 1, 1, 6, 1, 9, 4, 8, 9, 8, 1, 0, 9, 10, 1, 1, 1, 0, 4, 1, 1, 1, 1, 0, 1, 1, 1, 30);
INSERT INTO `persons` VALUES (39, 2, 10, 10, 0, 0, 0, 7, 0, 10, 5, 9, 8, 9, 0, 1, 10, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `persons` VALUES (40, 1, 1, 1, 2, 1, 1, 8, 1, 1, 6, 8, 9, 10, 1, 0, 1, 2, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (41, 2, 2, 2, 1, 0, 0, 9, 0, 2, 7, 9, 10, 1, 0, 1, 2, 3, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 30);
INSERT INTO `persons` VALUES (42, 1, 3, 3, 0, 1, 1, 10, 1, 3, 8, 10, 1, 2, 1, 0, 3, 4, 0, 1, 1, 1, 4, 0, 0, 1, 1, 1, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (43, 2, 4, 4, 1, 0, 0, 11, 0, 4, 9, 1, 2, 3, 0, 1, 4, 5, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 60);
INSERT INTO `persons` VALUES (44, 1, 5, 5, 0, 1, 1, 12, 1, 5, 8, 2, 3, 4, 1, 0, 5, 6, 0, 1, 1, 0, 2, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (45, 2, 6, 6, 2, 0, 0, 13, 0, 6, 9, 3, 4, 5, 0, 0, 6, 7, 1, 0, 0, 0, 3, 1, 1, 0, 0, 0, 1, 0, 0, 50);
INSERT INTO `persons` VALUES (46, 1, 7, 7, 0, 1, 1, 1, 1, 7, 10, 4, 5, 6, 1, 1, 7, 8, 0, 1, 1, 0, 4, 1, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (47, 2, 8, 8, 4, 0, 0, 2, 0, 8, 1, 5, 6, 7, 0, 0, 8, 9, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 70);
INSERT INTO `persons` VALUES (48, 1, 9, 9, 2, 1, 1, 3, 1, 9, 2, 6, 7, 8, 1, 1, 9, 10, 0, 1, 1, 0, 2, 1, 0, 1, 1, 0, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (49, 2, 10, 10, 0, 0, 0, 4, 0, 10, 3, 7, 8, 3, 0, 0, 6, 1, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 40);
INSERT INTO `persons` VALUES (50, 1, 1, 1, 3, 0, 0, 5, 0, 1, 4, 8, 9, 4, 0, 1, 7, 2, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (51, 2, 2, 2, 5, 1, 1, 6, 1, 2, 5, 9, 8, 5, 1, 0, 8, 3, 1, 0, 0, 1, 2, 0, 1, 0, 0, 1, 1, 0, 0, 40);
INSERT INTO `persons` VALUES (52, 1, 3, 3, 1, 0, 0, 7, 0, 3, 6, 8, 9, 6, 0, 1, 9, 4, 0, 1, 1, 0, 3, 0, 0, 1, 1, 0, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (53, 2, 4, 4, 2, 1, 1, 8, 1, 4, 7, 9, 10, 7, 1, 0, 10, 5, 1, 0, 0, 0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 50);
INSERT INTO `persons` VALUES (54, 1, 5, 5, 0, 0, 0, 9, 0, 5, 8, 10, 1, 8, 0, 1, 1, 6, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (55, 2, 6, 6, 2, 1, 1, 10, 1, 6, 9, 1, 2, 9, 1, 0, 2, 7, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `persons` VALUES (56, 1, 7, 7, 1, 0, 0, 11, 0, 7, 8, 2, 3, 8, 0, 1, 3, 8, 1, 1, 1, 0, 3, 1, 1, 1, 1, 0, 1, 1, 1, 70);
INSERT INTO `persons` VALUES (57, 2, 8, 8, 0, 1, 1, 12, 1, 8, 9, 3, 4, 9, 1, 0, 4, 9, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (58, 1, 9, 9, 1, 0, 0, 13, 0, 9, 10, 4, 5, 10, 0, 1, 5, 6, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 90);
INSERT INTO `persons` VALUES (59, 2, 10, 10, 0, 1, 1, 1, 1, 10, 1, 5, 6, 1, 1, 0, 6, 7, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 80);
INSERT INTO `persons` VALUES (60, 1, 1, 1, 2, 0, 0, 2, 0, 1, 2, 6, 7, 2, 0, 0, 8, 8, 1, 0, 1, 1, 3, 0, 1, 0, 1, 1, 1, 0, 1, 60);
INSERT INTO `persons` VALUES (61, 2, 2, 2, 0, 1, 1, 3, 1, 2, 3, 7, 8, 3, 1, 1, 9, 9, 0, 1, 0, 1, 4, 0, 0, 1, 0, 1, 0, 1, 0, 100);
INSERT INTO `persons` VALUES (62, 1, 3, 3, 4, 0, 0, 4, 0, 3, 4, 8, 3, 4, 0, 0, 10, 10, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 40);
INSERT INTO `persons` VALUES (63, 2, 4, 4, 2, 1, 1, 5, 1, 4, 5, 9, 4, 5, 1, 1, 1, 1, 0, 1, 0, 0, 2, 0, 0, 1, 0, 0, 0, 1, 0, 80);
INSERT INTO `persons` VALUES (64, 1, 5, 5, 0, 0, 0, 6, 0, 5, 6, 8, 5, 6, 0, 0, 2, 2, 1, 0, 1, 0, 3, 1, 1, 0, 1, 0, 1, 0, 1, 30);
INSERT INTO `persons` VALUES (65, 2, 6, 6, 3, 0, 0, 7, 0, 6, 7, 9, 6, 7, 0, 1, 3, 3, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (66, 1, 7, 7, 5, 1, 1, 8, 1, 7, 8, 10, 7, 8, 1, 0, 4, 4, 1, 0, 1, 0, 2, 1, 1, 0, 1, 0, 1, 0, 1, 70);
INSERT INTO `persons` VALUES (67, 2, 8, 8, 1, 0, 0, 9, 0, 8, 9, 1, 8, 9, 0, 1, 5, 5, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (68, 1, 9, 9, 2, 1, 1, 10, 1, 9, 8, 2, 9, 8, 1, 0, 6, 6, 1, 0, 0, 1, 4, 0, 1, 0, 0, 1, 1, 0, 0, 40);
INSERT INTO `persons` VALUES (69, 2, 10, 10, 0, 0, 0, 11, 0, 10, 9, 3, 8, 9, 0, 1, 7, 8, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 10);
INSERT INTO `persons` VALUES (70, 1, 1, 1, 2, 1, 1, 12, 1, 1, 10, 4, 9, 10, 1, 0, 8, 9, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 20);
INSERT INTO `persons` VALUES (71, 2, 2, 2, 1, 0, 0, 13, 0, 2, 1, 5, 10, 1, 0, 1, 9, 10, 0, 1, 1, 0, 3, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (72, 1, 3, 3, 0, 1, 1, 1, 1, 3, 2, 6, 1, 4, 1, 0, 6, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (73, 2, 4, 4, 1, 0, 0, 2, 0, 4, 3, 7, 2, 5, 0, 1, 7, 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (74, 1, 5, 5, 0, 1, 1, 3, 1, 5, 4, 8, 3, 6, 1, 0, 8, 3, 0, 1, 0, 0, 2, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (75, 2, 6, 6, 2, 0, 0, 4, 0, 6, 5, 9, 4, 7, 0, 0, 9, 4, 0, 0, 1, 0, 3, 1, 0, 0, 1, 0, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (76, 1, 7, 7, 0, 1, 1, 5, 1, 7, 6, 8, 5, 8, 1, 1, 10, 5, 0, 0, 0, 1, 4, 1, 0, 0, 0, 1, 0, 0, 0, 90);
INSERT INTO `persons` VALUES (20, 2, 8, 8, 4, 0, 0, 6, 0, 8, 7, 9, 6, 9, 0, 0, 1, 6, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 30);
INSERT INTO `persons` VALUES (21, 1, 9, 9, 2, 1, 1, 7, 1, 9, 8, 10, 7, 8, 1, 1, 2, 7, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (22, 2, 10, 10, 0, 0, 0, 8, 0, 10, 9, 1, 8, 9, 0, 0, 9, 8, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 70);
INSERT INTO `persons` VALUES (23, 1, 1, 1, 3, 0, 0, 9, 0, 1, 8, 2, 9, 10, 0, 1, 10, 9, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (24, 2, 2, 2, 5, 1, 1, 10, 1, 2, 9, 3, 8, 1, 1, 0, 1, 6, 0, 1, 1, 0, 2, 0, 0, 1, 1, 0, 0, 1, 1, 30);
INSERT INTO `persons` VALUES (25, 1, 3, 3, 1, 0, 0, 11, 0, 3, 10, 4, 9, 2, 0, 1, 2, 7, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `persons` VALUES (26, 2, 4, 4, 2, 1, 1, 12, 1, 4, 1, 5, 10, 3, 1, 0, 3, 8, 0, 1, 1, 0, 4, 1, 0, 1, 1, 0, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (27, 1, 5, 5, 0, 0, 0, 13, 0, 5, 2, 6, 1, 4, 0, 1, 4, 9, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 30);
INSERT INTO `persons` VALUES (28, 2, 6, 6, 2, 1, 1, 1, 1, 6, 3, 7, 2, 5, 1, 0, 5, 10, 0, 1, 1, 0, 2, 1, 0, 1, 1, 0, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (29, 1, 7, 7, 1, 0, 0, 2, 0, 7, 4, 8, 3, 6, 0, 1, 6, 1, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (30, 2, 8, 8, 0, 1, 1, 3, 1, 8, 5, 9, 4, 7, 1, 0, 8, 2, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (31, 1, 9, 9, 1, 0, 0, 4, 0, 9, 6, 8, 5, 8, 0, 1, 9, 9, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 50);
INSERT INTO `persons` VALUES (32, 2, 10, 10, 0, 1, 1, 5, 1, 10, 7, 9, 6, 9, 1, 0, 10, 10, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (33, 1, 1, 1, 2, 0, 0, 6, 0, 1, 8, 10, 7, 8, 0, 0, 1, 1, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 70);
INSERT INTO `persons` VALUES (34, 2, 2, 2, 0, 1, 1, 7, 1, 2, 9, 1, 8, 9, 1, 1, 2, 2, 0, 0, 1, 0, 4, 0, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (35, 1, 3, 3, 4, 0, 0, 8, 0, 3, 8, 2, 9, 10, 0, 0, 3, 3, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (36, 2, 4, 4, 2, 1, 1, 9, 1, 4, 9, 3, 8, 1, 1, 1, 4, 4, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 80);
INSERT INTO `persons` VALUES (37, 1, 5, 5, 0, 0, 0, 10, 0, 5, 10, 4, 9, 2, 0, 0, 5, 5, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (38, 2, 6, 6, 3, 0, 0, 11, 0, 6, 1, 5, 10, 3, 0, 1, 6, 6, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (39, 1, 7, 7, 5, 1, 1, 12, 1, 7, 2, 6, 1, 4, 1, 0, 7, 8, 0, 1, 0, 1, 2, 0, 0, 1, 0, 1, 0, 1, 0, 50);
INSERT INTO `persons` VALUES (40, 2, 8, 8, 1, 0, 0, 13, 0, 8, 3, 7, 2, 5, 0, 1, 8, 9, 0, 0, 1, 1, 3, 0, 0, 0, 1, 1, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (41, 1, 9, 9, 2, 1, 1, 1, 1, 9, 4, 8, 3, 6, 1, 0, 9, 10, 0, 1, 0, 1, 4, 0, 0, 1, 0, 1, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (42, 2, 10, 10, 0, 0, 0, 2, 0, 10, 5, 2, 4, 7, 0, 1, 10, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (43, 1, 1, 1, 2, 1, 1, 3, 1, 1, 6, 3, 5, 8, 1, 0, 1, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (44, 2, 2, 2, 1, 0, 0, 4, 0, 2, 7, 4, 6, 3, 0, 1, 2, 2, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 90);
INSERT INTO `persons` VALUES (45, 1, 3, 3, 0, 1, 1, 5, 1, 3, 8, 5, 7, 4, 1, 0, 3, 3, 0, 0, 1, 0, 4, 1, 0, 0, 1, 0, 0, 0, 1, 80);
INSERT INTO `persons` VALUES (46, 2, 4, 4, 1, 0, 0, 6, 0, 4, 9, 6, 8, 5, 0, 1, 4, 4, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (47, 1, 5, 5, 0, 1, 1, 7, 1, 5, 8, 7, 3, 6, 1, 0, 5, 5, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (48, 2, 6, 6, 2, 0, 0, 8, 0, 6, 9, 8, 4, 7, 0, 0, 6, 6, 0, 1, 0, 1, 3, 0, 0, 1, 0, 1, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (49, 1, 7, 7, 0, 1, 1, 9, 1, 7, 10, 9, 5, 8, 1, 1, 8, 7, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 30);
INSERT INTO `persons` VALUES (50, 2, 8, 8, 4, 0, 0, 10, 0, 8, 1, 8, 6, 9, 0, 0, 9, 8, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (51, 1, 9, 9, 2, 1, 1, 11, 1, 9, 2, 9, 7, 8, 1, 1, 10, 9, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (52, 2, 10, 10, 0, 0, 0, 12, 0, 10, 3, 10, 8, 9, 0, 0, 1, 10, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (53, 1, 1, 1, 3, 0, 0, 13, 0, 1, 4, 1, 9, 10, 0, 1, 2, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 50);
INSERT INTO `persons` VALUES (54, 2, 2, 2, 5, 1, 1, 1, 1, 2, 5, 2, 8, 1, 1, 0, 3, 2, 0, 1, 0, 0, 2, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (55, 1, 3, 3, 1, 0, 0, 2, 0, 3, 6, 3, 9, 2, 0, 1, 4, 3, 0, 0, 1, 0, 3, 1, 0, 0, 1, 0, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (56, 2, 4, 4, 2, 1, 1, 3, 1, 4, 7, 4, 10, 3, 1, 0, 5, 4, 0, 0, 0, 1, 4, 1, 0, 0, 0, 1, 0, 0, 0, 100);
INSERT INTO `persons` VALUES (57, 1, 5, 5, 0, 0, 0, 4, 0, 5, 8, 5, 1, 4, 0, 1, 6, 5, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (58, 2, 6, 6, 2, 1, 1, 5, 1, 6, 9, 6, 2, 5, 1, 0, 7, 6, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 80);
INSERT INTO `persons` VALUES (59, 1, 7, 7, 1, 0, 0, 6, 0, 7, 8, 7, 3, 6, 0, 1, 8, 7, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (60, 2, 8, 8, 0, 1, 1, 7, 1, 8, 9, 8, 4, 7, 1, 0, 9, 8, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100);
INSERT INTO `persons` VALUES (61, 1, 9, 9, 1, 0, 0, 8, 0, 9, 10, 9, 5, 8, 0, 1, 10, 9, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 50);
INSERT INTO `persons` VALUES (62, 2, 1, 10, 0, 1, 1, 9, 1, 10, 1, 8, 6, 9, 1, 1, 1, 10, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (63, 1, 2, 1, 2, 0, 0, 10, 0, 1, 2, 9, 7, 8, 0, 0, 2, 1, 0, 1, 1, 0, 3, 1, 0, 1, 1, 0, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (64, 2, 3, 2, 0, 1, 1, 11, 1, 2, 3, 10, 8, 9, 1, 1, 3, 2, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 70);
INSERT INTO `persons` VALUES (65, 1, 4, 3, 4, 0, 0, 12, 0, 3, 4, 1, 9, 10, 0, 0, 4, 3, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (66, 2, 5, 4, 2, 1, 1, 13, 1, 4, 5, 2, 8, 1, 1, 1, 5, 4, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 90);
INSERT INTO `persons` VALUES (67, 1, 6, 5, 0, 0, 0, 1, 0, 5, 6, 3, 9, 4, 0, 0, 6, 5, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (68, 2, 7, 6, 3, 0, 0, 2, 0, 6, 7, 4, 10, 5, 0, 1, 8, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (69, 1, 8, 7, 5, 1, 1, 3, 1, 7, 8, 5, 1, 6, 1, 0, 9, 7, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (70, 2, 9, 8, 1, 0, 0, 4, 0, 8, 9, 6, 2, 7, 0, 1, 10, 8, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (71, 1, 10, 9, 2, 1, 1, 5, 1, 9, 8, 7, 3, 8, 1, 0, 1, 9, 0, 0, 1, 0, 4, 0, 0, 0, 1, 0, 0, 0, 1, 30);
INSERT INTO `persons` VALUES (72, 2, 1, 10, 0, 0, 0, 6, 0, 10, 9, 8, 4, 9, 0, 0, 2, 6, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (73, 1, 2, 1, 2, 1, 1, 7, 1, 1, 10, 9, 5, 8, 1, 1, 3, 7, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (74, 2, 3, 2, 1, 0, 0, 8, 0, 2, 1, 8, 6, 9, 0, 0, 4, 8, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (75, 1, 4, 3, 0, 1, 1, 9, 1, 3, 2, 9, 7, 10, 1, 1, 5, 9, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 50);
INSERT INTO `persons` VALUES (76, 2, 5, 4, 1, 0, 0, 10, 0, 4, 3, 10, 8, 1, 0, 0, 6, 10, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (21, 2, 6, 5, 0, 1, 1, 11, 1, 5, 4, 1, 9, 2, 1, 1, 7, 1, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 70);
INSERT INTO `persons` VALUES (22, 1, 7, 6, 2, 0, 0, 12, 0, 6, 5, 2, 8, 3, 0, 0, 8, 2, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (23, 2, 8, 7, 0, 1, 1, 13, 1, 7, 6, 3, 9, 4, 1, 1, 9, 3, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (24, 1, 9, 8, 4, 0, 0, 1, 0, 8, 7, 4, 10, 5, 0, 0, 10, 4, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (25, 2, 10, 9, 2, 1, 1, 2, 1, 9, 8, 5, 1, 6, 1, 1, 1, 5, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (26, 1, 1, 10, 0, 0, 0, 3, 0, 10, 9, 6, 2, 7, 0, 0, 2, 6, 0, 0, 1, 0, 3, 1, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (27, 2, 2, 1, 3, 0, 0, 4, 0, 1, 8, 7, 3, 8, 0, 1, 3, 8, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 50);
INSERT INTO `persons` VALUES (28, 1, 3, 2, 5, 1, 1, 5, 1, 2, 9, 8, 4, 9, 1, 0, 4, 9, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (29, 2, 4, 3, 1, 0, 0, 6, 0, 3, 10, 9, 5, 8, 0, 1, 5, 10, 0, 1, 0, 1, 3, 0, 0, 1, 0, 1, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (30, 1, 5, 4, 2, 1, 1, 7, 1, 4, 1, 8, 6, 9, 1, 0, 6, 1, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (31, 2, 6, 5, 0, 0, 0, 8, 0, 5, 2, 9, 7, 10, 0, 0, 8, 2, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (32, 1, 7, 6, 2, 1, 1, 9, 1, 6, 3, 10, 8, 1, 1, 1, 9, 3, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 90);
INSERT INTO `persons` VALUES (33, 2, 8, 7, 1, 0, 0, 10, 0, 7, 4, 1, 3, 2, 0, 0, 10, 4, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 80);
INSERT INTO `persons` VALUES (34, 1, 9, 8, 0, 1, 1, 11, 1, 8, 5, 2, 4, 3, 1, 1, 1, 5, 0, 0, 1, 0, 4, 0, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (35, 2, 10, 9, 1, 0, 0, 12, 0, 9, 6, 3, 5, 4, 0, 0, 2, 6, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 100);
INSERT INTO `persons` VALUES (36, 1, 1, 10, 0, 1, 1, 13, 1, 10, 7, 4, 6, 5, 1, 1, 3, 7, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 40);
INSERT INTO `persons` VALUES (37, 2, 2, 1, 2, 0, 0, 1, 0, 1, 8, 5, 7, 6, 0, 0, 4, 8, 0, 1, 0, 1, 3, 1, 0, 1, 0, 1, 0, 1, 0, 30);
INSERT INTO `persons` VALUES (38, 2, 3, 2, 0, 1, 1, 2, 1, 2, 9, 6, 8, 7, 1, 1, 5, 9, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 20);
INSERT INTO `persons` VALUES (39, 1, 4, 3, 4, 0, 0, 3, 0, 3, 8, 7, 9, 8, 0, 0, 6, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (40, 2, 5, 4, 2, 1, 1, 4, 1, 4, 9, 8, 8, 3, 1, 1, 7, 7, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (41, 1, 1, 5, 0, 0, 0, 5, 0, 5, 10, 9, 9, 4, 0, 0, 8, 8, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (42, 2, 2, 6, 3, 0, 0, 6, 0, 6, 1, 8, 10, 5, 0, 1, 9, 9, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (43, 1, 3, 7, 5, 1, 1, 7, 1, 7, 2, 9, 1, 6, 1, 0, 10, 10, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 70);
INSERT INTO `persons` VALUES (44, 2, 4, 8, 1, 0, 0, 8, 0, 8, 3, 10, 2, 7, 0, 1, 1, 1, 0, 1, 1, 0, 3, 1, 0, 1, 1, 0, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (39, 1, 5, 9, 2, 1, 1, 9, 1, 9, 4, 1, 3, 8, 1, 0, 2, 2, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (40, 2, 6, 10, 0, 0, 0, 10, 0, 10, 5, 2, 4, 9, 0, 0, 3, 9, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (41, 1, 7, 1, 2, 1, 1, 11, 1, 1, 6, 3, 5, 8, 1, 1, 4, 10, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (42, 2, 8, 2, 1, 0, 0, 12, 0, 2, 7, 4, 6, 9, 0, 0, 5, 1, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (43, 1, 9, 3, 0, 1, 1, 13, 1, 3, 8, 5, 7, 10, 1, 1, 6, 2, 0, 0, 0, 1, 4, 0, 0, 0, 0, 1, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (44, 2, 10, 4, 1, 0, 0, 7, 0, 4, 9, 6, 8, 1, 0, 0, 8, 3, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (45, 1, 1, 5, 0, 1, 1, 8, 1, 5, 5, 7, 9, 2, 1, 1, 9, 4, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `persons` VALUES (46, 2, 2, 6, 2, 0, 0, 9, 0, 6, 6, 8, 8, 3, 0, 0, 10, 5, 0, 1, 1, 0, 3, 0, 0, 1, 1, 0, 0, 1, 1, 70);
INSERT INTO `persons` VALUES (47, 1, 3, 7, 0, 1, 1, 10, 1, 7, 7, 9, 9, 4, 1, 1, 1, 6, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (48, 2, 4, 8, 4, 0, 0, 11, 0, 8, 8, 8, 10, 5, 0, 0, 2, 8, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 90);
INSERT INTO `persons` VALUES (49, 1, 5, 9, 2, 1, 1, 12, 1, 9, 9, 9, 1, 6, 1, 1, 3, 9, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 80);
INSERT INTO `persons` VALUES (20, 1, 1, 1, 3, 0, 0, 1, 0, 1, 8, 2, 3, 4, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 80);
INSERT INTO `persons` VALUES (21, 2, 2, 2, 5, 1, 1, 2, 1, 2, 9, 3, 4, 5, 1, 0, 2, 2, 1, 1, 1, 0, 2, 0, 1, 1, 1, 0, 1, 1, 1, 30);
INSERT INTO `persons` VALUES (22, 1, 3, 3, 1, 0, 0, 3, 0, 3, 10, 4, 5, 6, 0, 1, 3, 3, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (23, 2, 4, 4, 2, 1, 1, 4, 1, 4, 1, 5, 6, 7, 1, 0, 4, 4, 1, 1, 1, 0, 4, 1, 1, 1, 1, 0, 1, 1, 1, 70);
INSERT INTO `persons` VALUES (24, 1, 5, 5, 0, 0, 0, 5, 0, 5, 2, 6, 7, 8, 0, 1, 5, 5, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (25, 2, 6, 6, 2, 1, 1, 6, 1, 6, 3, 7, 8, 9, 1, 0, 6, 6, 0, 1, 1, 0, 2, 0, 0, 1, 1, 0, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (26, 1, 7, 7, 1, 0, 0, 7, 0, 7, 4, 8, 9, 8, 0, 1, 7, 7, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 10);
INSERT INTO `persons` VALUES (27, 2, 8, 8, 0, 1, 1, 8, 1, 8, 5, 9, 8, 9, 1, 0, 8, 8, 0, 1, 1, 1, 4, 0, 0, 1, 1, 1, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (28, 1, 9, 9, 1, 0, 0, 9, 0, 9, 6, 8, 9, 10, 0, 1, 9, 9, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 60);
INSERT INTO `persons` VALUES (29, 2, 10, 10, 0, 1, 1, 10, 1, 10, 7, 9, 10, 1, 1, 0, 10, 10, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 0, 1, 1, 50);
INSERT INTO `persons` VALUES (30, 1, 1, 1, 2, 0, 0, 11, 0, 1, 8, 10, 1, 2, 0, 0, 1, 2, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 100);
INSERT INTO `persons` VALUES (31, 2, 2, 2, 0, 1, 1, 12, 1, 2, 9, 1, 2, 3, 1, 1, 2, 3, 0, 1, 1, 1, 4, 0, 0, 1, 1, 1, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (32, 1, 3, 3, 4, 0, 0, 13, 0, 3, 8, 2, 3, 4, 0, 0, 3, 4, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 70);
INSERT INTO `persons` VALUES (33, 2, 4, 4, 2, 1, 1, 1, 1, 4, 9, 3, 4, 5, 1, 1, 4, 5, 0, 1, 1, 0, 2, 1, 0, 1, 1, 0, 0, 1, 1, 90);
INSERT INTO `persons` VALUES (34, 1, 5, 5, 0, 0, 0, 2, 0, 5, 10, 4, 5, 6, 0, 0, 5, 6, 1, 0, 0, 0, 3, 1, 1, 0, 0, 0, 1, 0, 0, 30);
INSERT INTO `persons` VALUES (35, 2, 6, 6, 3, 0, 0, 3, 0, 6, 1, 5, 6, 7, 0, 1, 6, 7, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (36, 1, 7, 7, 5, 1, 1, 4, 1, 7, 2, 6, 7, 8, 1, 0, 7, 8, 1, 1, 1, 0, 2, 1, 1, 1, 1, 0, 1, 1, 1, 70);
INSERT INTO `persons` VALUES (37, 2, 8, 8, 1, 0, 0, 5, 0, 8, 3, 7, 8, 9, 0, 1, 8, 9, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (38, 1, 9, 9, 2, 1, 1, 6, 1, 9, 4, 8, 9, 8, 1, 0, 9, 10, 1, 1, 1, 0, 4, 1, 1, 1, 1, 0, 1, 1, 1, 30);
INSERT INTO `persons` VALUES (39, 2, 10, 10, 0, 0, 0, 7, 0, 10, 5, 9, 8, 9, 0, 1, 10, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `persons` VALUES (40, 1, 1, 1, 2, 1, 1, 8, 1, 1, 6, 8, 9, 10, 1, 0, 1, 2, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (41, 2, 2, 2, 1, 0, 0, 9, 0, 2, 7, 9, 10, 1, 0, 1, 2, 3, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 30);
INSERT INTO `persons` VALUES (42, 1, 3, 3, 0, 1, 1, 10, 1, 3, 8, 10, 1, 2, 1, 0, 3, 4, 0, 1, 1, 1, 4, 0, 0, 1, 1, 1, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (43, 2, 4, 4, 1, 0, 0, 11, 0, 4, 9, 1, 2, 3, 0, 1, 4, 5, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 60);
INSERT INTO `persons` VALUES (44, 1, 5, 5, 0, 1, 1, 12, 1, 5, 8, 2, 3, 4, 1, 0, 5, 6, 0, 1, 1, 0, 2, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (45, 2, 6, 6, 2, 0, 0, 13, 0, 6, 9, 3, 4, 5, 0, 0, 6, 7, 1, 0, 0, 0, 3, 1, 1, 0, 0, 0, 1, 0, 0, 50);
INSERT INTO `persons` VALUES (46, 1, 7, 7, 0, 1, 1, 1, 1, 7, 10, 4, 5, 6, 1, 1, 7, 8, 0, 1, 1, 0, 4, 1, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (47, 2, 8, 8, 4, 0, 0, 2, 0, 8, 1, 5, 6, 7, 0, 0, 8, 9, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 70);
INSERT INTO `persons` VALUES (48, 1, 9, 9, 2, 1, 1, 3, 1, 9, 2, 6, 7, 8, 1, 1, 9, 10, 0, 1, 1, 0, 2, 1, 0, 1, 1, 0, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (49, 2, 10, 10, 0, 0, 0, 4, 0, 10, 3, 7, 8, 3, 0, 0, 6, 1, 1, 0, 0, 1, 3, 0, 1, 0, 0, 1, 1, 0, 0, 40);
INSERT INTO `persons` VALUES (50, 1, 1, 1, 3, 0, 0, 5, 0, 1, 4, 8, 9, 4, 0, 1, 7, 2, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (51, 2, 2, 2, 5, 1, 1, 6, 1, 2, 5, 9, 8, 5, 1, 0, 8, 3, 1, 0, 0, 1, 2, 0, 1, 0, 0, 1, 1, 0, 0, 40);
INSERT INTO `persons` VALUES (52, 1, 3, 3, 1, 0, 0, 7, 0, 3, 6, 8, 9, 6, 0, 1, 9, 4, 0, 1, 1, 0, 3, 0, 0, 1, 1, 0, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (53, 2, 4, 4, 2, 1, 1, 8, 1, 4, 7, 9, 10, 7, 1, 0, 10, 5, 1, 0, 0, 0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 50);
INSERT INTO `persons` VALUES (54, 1, 5, 5, 0, 0, 0, 9, 0, 5, 8, 10, 1, 8, 0, 1, 1, 6, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (55, 2, 6, 6, 2, 1, 1, 10, 1, 6, 9, 1, 2, 9, 1, 0, 2, 7, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `persons` VALUES (56, 1, 7, 7, 1, 0, 0, 11, 0, 7, 8, 2, 3, 8, 0, 1, 3, 8, 1, 1, 1, 0, 3, 1, 1, 1, 1, 0, 1, 1, 1, 70);
INSERT INTO `persons` VALUES (57, 2, 8, 8, 0, 1, 1, 12, 1, 8, 9, 3, 4, 9, 1, 0, 4, 9, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (58, 1, 9, 9, 1, 0, 0, 13, 0, 9, 10, 4, 5, 10, 0, 1, 5, 6, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 90);
INSERT INTO `persons` VALUES (59, 2, 10, 10, 0, 1, 1, 1, 1, 10, 1, 5, 6, 1, 1, 0, 6, 7, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 80);
INSERT INTO `persons` VALUES (60, 1, 1, 1, 2, 0, 0, 2, 0, 1, 2, 6, 7, 2, 0, 0, 8, 8, 1, 0, 1, 1, 3, 0, 1, 0, 1, 1, 1, 0, 1, 60);
INSERT INTO `persons` VALUES (61, 2, 2, 2, 0, 1, 1, 3, 1, 2, 3, 7, 8, 3, 1, 1, 9, 9, 0, 1, 0, 1, 4, 0, 0, 1, 0, 1, 0, 1, 0, 100);
INSERT INTO `persons` VALUES (62, 1, 3, 3, 4, 0, 0, 4, 0, 3, 4, 8, 3, 4, 0, 0, 10, 10, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 40);
INSERT INTO `persons` VALUES (63, 2, 4, 4, 2, 1, 1, 5, 1, 4, 5, 9, 4, 5, 1, 1, 1, 1, 0, 1, 0, 0, 2, 0, 0, 1, 0, 0, 0, 1, 0, 80);
INSERT INTO `persons` VALUES (64, 1, 5, 5, 0, 0, 0, 6, 0, 5, 6, 8, 5, 6, 0, 0, 2, 2, 1, 0, 1, 0, 3, 1, 1, 0, 1, 0, 1, 0, 1, 30);
INSERT INTO `persons` VALUES (65, 2, 6, 6, 3, 0, 0, 7, 0, 6, 7, 9, 6, 7, 0, 1, 3, 3, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (66, 1, 7, 7, 5, 1, 1, 8, 1, 7, 8, 10, 7, 8, 1, 0, 4, 4, 1, 0, 1, 0, 2, 1, 1, 0, 1, 0, 1, 0, 1, 70);
INSERT INTO `persons` VALUES (67, 2, 8, 8, 1, 0, 0, 9, 0, 8, 9, 1, 8, 9, 0, 1, 5, 5, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (68, 1, 9, 9, 2, 1, 1, 10, 1, 9, 8, 2, 9, 8, 1, 0, 6, 6, 1, 0, 0, 1, 4, 0, 1, 0, 0, 1, 1, 0, 0, 40);
INSERT INTO `persons` VALUES (69, 2, 10, 10, 0, 0, 0, 11, 0, 10, 9, 3, 8, 9, 0, 1, 7, 8, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 10);
INSERT INTO `persons` VALUES (70, 1, 1, 1, 2, 1, 1, 12, 1, 1, 10, 4, 9, 10, 1, 0, 8, 9, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 20);
INSERT INTO `persons` VALUES (71, 2, 2, 2, 1, 0, 0, 13, 0, 2, 1, 5, 10, 1, 0, 1, 9, 10, 0, 1, 1, 0, 3, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (72, 1, 3, 3, 0, 1, 1, 1, 1, 3, 2, 6, 1, 4, 1, 0, 6, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (73, 2, 4, 4, 1, 0, 0, 2, 0, 4, 3, 7, 2, 5, 0, 1, 7, 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (74, 1, 5, 5, 0, 1, 1, 3, 1, 5, 4, 8, 3, 6, 1, 0, 8, 3, 0, 1, 0, 0, 2, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (75, 2, 6, 6, 2, 0, 0, 4, 0, 6, 5, 9, 4, 7, 0, 0, 9, 4, 0, 0, 1, 0, 3, 1, 0, 0, 1, 0, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (76, 1, 7, 7, 0, 1, 1, 5, 1, 7, 6, 8, 5, 8, 1, 1, 10, 5, 0, 0, 0, 1, 4, 1, 0, 0, 0, 1, 0, 0, 0, 90);
INSERT INTO `persons` VALUES (20, 2, 8, 8, 4, 0, 0, 6, 0, 8, 7, 9, 6, 9, 0, 0, 1, 6, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 30);
INSERT INTO `persons` VALUES (21, 1, 9, 9, 2, 1, 1, 7, 1, 9, 8, 10, 7, 8, 1, 1, 2, 7, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (22, 2, 10, 10, 0, 0, 0, 8, 0, 10, 9, 1, 8, 9, 0, 0, 9, 8, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 70);
INSERT INTO `persons` VALUES (23, 1, 1, 1, 3, 0, 0, 9, 0, 1, 8, 2, 9, 10, 0, 1, 10, 9, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (24, 2, 2, 2, 5, 1, 1, 10, 1, 2, 9, 3, 8, 1, 1, 0, 1, 6, 0, 1, 1, 0, 2, 0, 0, 1, 1, 0, 0, 1, 1, 30);
INSERT INTO `persons` VALUES (25, 1, 3, 3, 1, 0, 0, 11, 0, 3, 10, 4, 9, 2, 0, 1, 2, 7, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `persons` VALUES (26, 2, 4, 4, 2, 1, 1, 12, 1, 4, 1, 5, 10, 3, 1, 0, 3, 8, 0, 1, 1, 0, 4, 1, 0, 1, 1, 0, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (27, 1, 5, 5, 0, 0, 0, 13, 0, 5, 2, 6, 1, 4, 0, 1, 4, 9, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 30);
INSERT INTO `persons` VALUES (28, 2, 6, 6, 2, 1, 1, 1, 1, 6, 3, 7, 2, 5, 1, 0, 5, 10, 0, 1, 1, 0, 2, 1, 0, 1, 1, 0, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (29, 1, 7, 7, 1, 0, 0, 2, 0, 7, 4, 8, 3, 6, 0, 1, 6, 1, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (30, 2, 8, 8, 0, 1, 1, 3, 1, 8, 5, 9, 4, 7, 1, 0, 8, 2, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (31, 1, 9, 9, 1, 0, 0, 4, 0, 9, 6, 8, 5, 8, 0, 1, 9, 9, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 50);
INSERT INTO `persons` VALUES (32, 2, 10, 10, 0, 1, 1, 5, 1, 10, 7, 9, 6, 9, 1, 0, 10, 10, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (33, 1, 1, 1, 2, 0, 0, 6, 0, 1, 8, 10, 7, 8, 0, 0, 1, 1, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 70);
INSERT INTO `persons` VALUES (34, 2, 2, 2, 0, 1, 1, 7, 1, 2, 9, 1, 8, 9, 1, 1, 2, 2, 0, 0, 1, 0, 4, 0, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (35, 1, 3, 3, 4, 0, 0, 8, 0, 3, 8, 2, 9, 10, 0, 0, 3, 3, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (36, 2, 4, 4, 2, 1, 1, 9, 1, 4, 9, 3, 8, 1, 1, 1, 4, 4, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 80);
INSERT INTO `persons` VALUES (37, 1, 5, 5, 0, 0, 0, 10, 0, 5, 10, 4, 9, 2, 0, 0, 5, 5, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (38, 2, 6, 6, 3, 0, 0, 11, 0, 6, 1, 5, 10, 3, 0, 1, 6, 6, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (39, 1, 7, 7, 5, 1, 1, 12, 1, 7, 2, 6, 1, 4, 1, 0, 7, 8, 0, 1, 0, 1, 2, 0, 0, 1, 0, 1, 0, 1, 0, 50);
INSERT INTO `persons` VALUES (40, 2, 8, 8, 1, 0, 0, 13, 0, 8, 3, 7, 2, 5, 0, 1, 8, 9, 0, 0, 1, 1, 3, 0, 0, 0, 1, 1, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (41, 1, 9, 9, 2, 1, 1, 1, 1, 9, 4, 8, 3, 6, 1, 0, 9, 10, 0, 1, 0, 1, 4, 0, 0, 1, 0, 1, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (42, 2, 10, 10, 0, 0, 0, 2, 0, 10, 5, 2, 4, 7, 0, 1, 10, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (43, 1, 1, 1, 2, 1, 1, 3, 1, 1, 6, 3, 5, 8, 1, 0, 1, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (44, 2, 2, 2, 1, 0, 0, 4, 0, 2, 7, 4, 6, 3, 0, 1, 2, 2, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 90);
INSERT INTO `persons` VALUES (45, 1, 3, 3, 0, 1, 1, 5, 1, 3, 8, 5, 7, 4, 1, 0, 3, 3, 0, 0, 1, 0, 4, 1, 0, 0, 1, 0, 0, 0, 1, 80);
INSERT INTO `persons` VALUES (46, 2, 4, 4, 1, 0, 0, 6, 0, 4, 9, 6, 8, 5, 0, 1, 4, 4, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (47, 1, 5, 5, 0, 1, 1, 7, 1, 5, 8, 7, 3, 6, 1, 0, 5, 5, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (48, 2, 6, 6, 2, 0, 0, 8, 0, 6, 9, 8, 4, 7, 0, 0, 6, 6, 0, 1, 0, 1, 3, 0, 0, 1, 0, 1, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (49, 1, 7, 7, 0, 1, 1, 9, 1, 7, 10, 9, 5, 8, 1, 1, 8, 7, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 30);
INSERT INTO `persons` VALUES (50, 2, 8, 8, 4, 0, 0, 10, 0, 8, 1, 8, 6, 9, 0, 0, 9, 8, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (51, 1, 9, 9, 2, 1, 1, 11, 1, 9, 2, 9, 7, 8, 1, 1, 10, 9, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (52, 2, 10, 10, 0, 0, 0, 12, 0, 10, 3, 10, 8, 9, 0, 0, 1, 10, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (53, 1, 1, 1, 3, 0, 0, 13, 0, 1, 4, 1, 9, 10, 0, 1, 2, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 50);
INSERT INTO `persons` VALUES (54, 2, 2, 2, 5, 1, 1, 1, 1, 2, 5, 2, 8, 1, 1, 0, 3, 2, 0, 1, 0, 0, 2, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (55, 1, 3, 3, 1, 0, 0, 2, 0, 3, 6, 3, 9, 2, 0, 1, 4, 3, 0, 0, 1, 0, 3, 1, 0, 0, 1, 0, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (56, 2, 4, 4, 2, 1, 1, 3, 1, 4, 7, 4, 10, 3, 1, 0, 5, 4, 0, 0, 0, 1, 4, 1, 0, 0, 0, 1, 0, 0, 0, 100);
INSERT INTO `persons` VALUES (57, 1, 5, 5, 0, 0, 0, 4, 0, 5, 8, 5, 1, 4, 0, 1, 6, 5, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (58, 2, 6, 6, 2, 1, 1, 5, 1, 6, 9, 6, 2, 5, 1, 0, 7, 6, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 80);
INSERT INTO `persons` VALUES (59, 1, 7, 7, 1, 0, 0, 6, 0, 7, 8, 7, 3, 6, 0, 1, 8, 7, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 40);
INSERT INTO `persons` VALUES (60, 2, 8, 8, 0, 1, 1, 7, 1, 8, 9, 8, 4, 7, 1, 0, 9, 8, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100);
INSERT INTO `persons` VALUES (61, 1, 9, 9, 1, 0, 0, 8, 0, 9, 10, 9, 5, 8, 0, 1, 10, 9, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 50);
INSERT INTO `persons` VALUES (62, 2, 1, 10, 0, 1, 1, 9, 1, 10, 1, 8, 6, 9, 1, 1, 1, 10, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (63, 1, 2, 1, 2, 0, 0, 10, 0, 1, 2, 9, 7, 8, 0, 0, 2, 1, 0, 1, 1, 0, 3, 1, 0, 1, 1, 0, 0, 1, 1, 20);
INSERT INTO `persons` VALUES (64, 2, 3, 2, 0, 1, 1, 11, 1, 2, 3, 10, 8, 9, 1, 1, 3, 2, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 70);
INSERT INTO `persons` VALUES (65, 1, 4, 3, 4, 0, 0, 12, 0, 3, 4, 1, 9, 10, 0, 0, 4, 3, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (66, 2, 5, 4, 2, 1, 1, 13, 1, 4, 5, 2, 8, 1, 1, 1, 5, 4, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 90);
INSERT INTO `persons` VALUES (67, 1, 6, 5, 0, 0, 0, 1, 0, 5, 6, 3, 9, 4, 0, 0, 6, 5, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (68, 2, 7, 6, 3, 0, 0, 2, 0, 6, 7, 4, 10, 5, 0, 1, 8, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (69, 1, 8, 7, 5, 1, 1, 3, 1, 7, 8, 5, 1, 6, 1, 0, 9, 7, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (70, 2, 9, 8, 1, 0, 0, 4, 0, 8, 9, 6, 2, 7, 0, 1, 10, 8, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 40);
INSERT INTO `persons` VALUES (71, 1, 10, 9, 2, 1, 1, 5, 1, 9, 8, 7, 3, 8, 1, 0, 1, 9, 0, 0, 1, 0, 4, 0, 0, 0, 1, 0, 0, 0, 1, 30);
INSERT INTO `persons` VALUES (72, 2, 1, 10, 0, 0, 0, 6, 0, 10, 9, 8, 4, 9, 0, 0, 2, 6, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (73, 1, 2, 1, 2, 1, 1, 7, 1, 1, 10, 9, 5, 8, 1, 1, 3, 7, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (74, 2, 3, 2, 1, 0, 0, 8, 0, 2, 1, 8, 6, 9, 0, 0, 4, 8, 0, 1, 0, 0, 3, 1, 0, 1, 0, 0, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (75, 1, 4, 3, 0, 1, 1, 9, 1, 3, 2, 9, 7, 10, 1, 1, 5, 9, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 50);
INSERT INTO `persons` VALUES (76, 2, 5, 4, 1, 0, 0, 10, 0, 4, 3, 10, 8, 1, 0, 0, 6, 10, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (21, 2, 6, 5, 0, 1, 1, 11, 1, 5, 4, 1, 9, 2, 1, 1, 7, 1, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 70);
INSERT INTO `persons` VALUES (22, 1, 7, 6, 2, 0, 0, 12, 0, 6, 5, 2, 8, 3, 0, 0, 8, 2, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (23, 2, 8, 7, 0, 1, 1, 13, 1, 7, 6, 3, 9, 4, 1, 1, 9, 3, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (24, 1, 9, 8, 4, 0, 0, 1, 0, 8, 7, 4, 10, 5, 0, 0, 10, 4, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (25, 2, 10, 9, 2, 1, 1, 2, 1, 9, 8, 5, 1, 6, 1, 1, 1, 5, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (26, 1, 1, 10, 0, 0, 0, 3, 0, 10, 9, 6, 2, 7, 0, 0, 2, 6, 0, 0, 1, 0, 3, 1, 0, 0, 1, 0, 0, 0, 1, 100);
INSERT INTO `persons` VALUES (27, 2, 2, 1, 3, 0, 0, 4, 0, 1, 8, 7, 3, 8, 0, 1, 3, 8, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 50);
INSERT INTO `persons` VALUES (28, 1, 3, 2, 5, 1, 1, 5, 1, 2, 9, 8, 4, 9, 1, 0, 4, 9, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (29, 2, 4, 3, 1, 0, 0, 6, 0, 3, 10, 9, 5, 8, 0, 1, 5, 10, 0, 1, 0, 1, 3, 0, 0, 1, 0, 1, 0, 1, 0, 20);
INSERT INTO `persons` VALUES (30, 1, 5, 4, 2, 1, 1, 7, 1, 4, 1, 8, 6, 9, 1, 0, 6, 1, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 70);
INSERT INTO `persons` VALUES (31, 2, 6, 5, 0, 0, 0, 8, 0, 5, 2, 9, 7, 10, 0, 0, 8, 2, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 60);
INSERT INTO `persons` VALUES (32, 1, 7, 6, 2, 1, 1, 9, 1, 6, 3, 10, 8, 1, 1, 1, 9, 3, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 90);
INSERT INTO `persons` VALUES (33, 2, 8, 7, 1, 0, 0, 10, 0, 7, 4, 1, 3, 2, 0, 0, 10, 4, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 80);
INSERT INTO `persons` VALUES (34, 1, 9, 8, 0, 1, 1, 11, 1, 8, 5, 2, 4, 3, 1, 1, 1, 5, 0, 0, 1, 0, 4, 0, 0, 0, 1, 0, 0, 0, 1, 60);
INSERT INTO `persons` VALUES (35, 2, 10, 9, 1, 0, 0, 12, 0, 9, 6, 3, 5, 4, 0, 0, 2, 6, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 100);
INSERT INTO `persons` VALUES (36, 1, 1, 10, 0, 1, 1, 13, 1, 10, 7, 4, 6, 5, 1, 1, 3, 7, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 40);
INSERT INTO `persons` VALUES (37, 2, 2, 1, 2, 0, 0, 1, 0, 1, 8, 5, 7, 6, 0, 0, 4, 8, 0, 1, 0, 1, 3, 1, 0, 1, 0, 1, 0, 1, 0, 30);
INSERT INTO `persons` VALUES (38, 2, 3, 2, 0, 1, 1, 2, 1, 2, 9, 6, 8, 7, 1, 1, 5, 9, 0, 0, 1, 1, 4, 0, 0, 0, 1, 1, 0, 0, 1, 20);
INSERT INTO `persons` VALUES (39, 1, 4, 3, 4, 0, 0, 3, 0, 3, 8, 7, 9, 8, 0, 0, 6, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (40, 2, 5, 4, 2, 1, 1, 4, 1, 4, 9, 8, 8, 3, 1, 1, 7, 7, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (41, 1, 1, 5, 0, 0, 0, 5, 0, 5, 10, 9, 9, 4, 0, 0, 8, 8, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (42, 2, 2, 6, 3, 0, 0, 6, 0, 6, 1, 8, 10, 5, 0, 1, 9, 9, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (43, 1, 3, 7, 5, 1, 1, 7, 1, 7, 2, 9, 1, 6, 1, 0, 10, 10, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 70);
INSERT INTO `persons` VALUES (44, 2, 4, 8, 1, 0, 0, 8, 0, 8, 3, 10, 2, 7, 0, 1, 1, 1, 0, 1, 1, 0, 3, 1, 0, 1, 1, 0, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (39, 1, 5, 9, 2, 1, 1, 9, 1, 9, 4, 1, 3, 8, 1, 0, 2, 2, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (40, 2, 6, 10, 0, 0, 0, 10, 0, 10, 5, 2, 4, 9, 0, 0, 3, 9, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 80);
INSERT INTO `persons` VALUES (41, 1, 7, 1, 2, 1, 1, 11, 1, 1, 6, 3, 5, 8, 1, 1, 4, 10, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 40);
INSERT INTO `persons` VALUES (42, 2, 8, 2, 1, 0, 0, 12, 0, 2, 7, 4, 6, 9, 0, 0, 5, 1, 0, 1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 1, 1, 100);
INSERT INTO `persons` VALUES (43, 1, 9, 3, 0, 1, 1, 13, 1, 3, 8, 5, 7, 10, 1, 1, 6, 2, 0, 0, 0, 1, 4, 0, 0, 0, 0, 1, 0, 0, 0, 50);
INSERT INTO `persons` VALUES (44, 2, 10, 4, 1, 0, 0, 7, 0, 4, 9, 6, 8, 1, 0, 0, 8, 3, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 60);
INSERT INTO `persons` VALUES (45, 1, 1, 5, 0, 1, 1, 8, 1, 5, 5, 7, 9, 2, 1, 1, 9, 4, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `persons` VALUES (46, 2, 2, 6, 2, 0, 0, 9, 0, 6, 6, 8, 8, 3, 0, 0, 10, 5, 0, 1, 1, 0, 3, 0, 0, 1, 1, 0, 0, 1, 1, 70);
INSERT INTO `persons` VALUES (47, 1, 3, 7, 0, 1, 1, 10, 1, 7, 7, 9, 9, 4, 1, 1, 1, 6, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 60);
INSERT INTO `persons` VALUES (48, 2, 4, 8, 4, 0, 0, 11, 0, 8, 8, 8, 10, 5, 0, 0, 2, 8, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 90);
INSERT INTO `persons` VALUES (49, 1, 5, 9, 2, 1, 1, 12, 1, 9, 9, 9, 1, 6, 1, 1, 3, 9, 0, 0, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 1, 80);

SET FOREIGN_KEY_CHECKS = 1;
