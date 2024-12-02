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
INSERT INTO `clients` VALUES (1, 'Joe', 25, '1', 6, 2, '1', '1', '1', '5', '1', 7, 6, 5, 4, 6, '1', '1', '3', '4', '1', '1', '1', '1', 12, '1');
INSERT INTO `clients` VALUES (2, 'Mike', 32, '2', 10, 5, '2', '0', '0', '8', '0', 8, 9, 7, 6, 7, '0', '0', '2', '2', '0', '0', '0', '0', 8, '0');
INSERT INTO `clients` VALUES (3, 'Leo', 24, '1', 2, 1, '3', '1', '1', '3', '1', 6, 4, 6, 5, 4, '1', '1', '5', '3', '1', '1', '1', '1', 10, '1');
INSERT INTO `clients` VALUES (4, 'Alice', 29, '2', 7, 3, '0', '0', '0', '4', '0', 7, 8, 5, 7, 9, '0', '0', '6', '5', '0', '0', '0', '0', 6, '0');
INSERT INTO `clients` VALUES (5, 'Clara', 31, '1', 5, 4, '4', '1', '1', '7', '1', 6, 5, 4, 8, 6, '1', '1', '4', '7', '1', '1', '1', '1', 15, '1');
INSERT INTO `clients` VALUES (6, 'Ella', 22, '2', 1, 0, '1', '0', '0', '2', '0', 7, 8, 6, 7, 5, '0', '0', '2', '1', '0', '0', '0', '0', 5, '0');
INSERT INTO `clients` VALUES (7, 'Bella', 34, '1', 12, 6, '3', '1', '1', '10', '1', 9, 8, 10, 9, 9, '1', '1', '7', '6', '1', '1', '1', '1', 0, '1');
INSERT INTO `clients` VALUES (8, 'Diana', 26, '2', 4, 2, '2', '1', '1', '3', '1', 5, 7, 6, 5, 8, '1', '1', '5', '3', '1', '1', '1', '1', 9, '1');
INSERT INTO `clients` VALUES (9, 'Fiona', 30, '1', 8, 3, '0', '0', '0', '6', '0', 10, 9, 8, 6, 7, '0', '0', '3', '2', '0', '0', '0', '0', 3, '0');
INSERT INTO `clients` VALUES (10, 'Grace', 27, '2', 6, 5, '1', '1', '1', '5', '1', 8, 6, 7, 8, 6, '1', '1', '1', '4', '1', '1', '1', '1', 4, '1');
INSERT INTO `clients` VALUES (11, 'India', 25, '1', 3, 1, '2', '0', '0', '4', '0', 6, 5, 4, 6, 5, '0', '0', '3', '3', '0', '0', '0', '0', '0', 7, '0');
INSERT INTO `clients` VALUES (12, 'Karen', 33, '2', 10, 7, '0', '1', '1', '9', '1', 9, 10, 8, 9, 10, '1', '1', '8', '7', '1', '1', '1', '1', 2, '1');
INSERT INTO `clients` VALUES (13, 'Hannah', 20, '1', 1, 0, '1', '0', '0', '1', '0', 5, 3, 5, 4, 3, '0', '0', '2', '1', '0', '0', '0', '0', 14, '0');
INSERT INTO `clients` VALUES (14, 'Julia', 36, '2', 11, 6, '2', '1', '1', '8', '1', 10, 9, 10, 8, 9, '1', '1', '5', '6', '1', '1', '1', '1', 1, '1');
INSERT INTO `clients` VALUES (15, 'Luna', 29, '1', 5, 2, '4', '1', '1', '5', '1', 8, 7, 6, 6, 8, '1', '1', '7', '5', '1', '1', '1', '1', 11, '1');
INSERT INTO `clients` VALUES (16, 'Mia', 23, '2', 2, 1, '1', '0', '0', '3', '0', 7, 6, 7, 5, 6, '0', '0', '4', '2', '0', '0', '0', '0', '0', 10, '0');
INSERT INTO `clients` VALUES (17, 'Olivia', 35, '1', 8, 4, '3', '1', '1', '7', '1', 9, 10, 9, 8, 9, '1', '1', '3', '6', '1', '1', '1', '1', 6, '1');
INSERT INTO `clients` VALUES (18, 'Qiana', 28, '2', 6, 2, '0', '0', '0', '6', '0', 6, 8, 5, 7, 7, '0', '0', '1', '4', '0', '0', '0', '0', 12, '0');
INSERT INTO `clients` VALUES (19, 'Nora', 21, '1', 2, 0, '2', '1', '1', '2', '1', 5, 4, 6, 3, 5, '1', '1', '2', '2', '1', '1', '1', '1', 13, '1');
INSERT INTO `clients` VALUES (20, 'Poppy', 24, '2', 3, 1, '0', '0', '0', '3', '0', 6, 5, 7, 6, 6, '0', '0', '3', '3', '0', '0', '0', '0', 16, '0');
