/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t248`;
CREATE DATABASE IF NOT EXISTS `t248` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t248`;

DROP TABLE IF EXISTS `caiwubaoxiao`;
CREATE TABLE IF NOT EXISTS `caiwubaoxiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '员工',
  `caiwubaoxiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '财务报销编号 Search111  ',
  `caiwubaoxiao_name` varchar(200) DEFAULT NULL COMMENT '财务报销名称 Search111  ',
  `caiwubaoxiao_photo` varchar(200) DEFAULT NULL COMMENT '发票图片',
  `caiwubaoxiao_types` int NOT NULL COMMENT '财务报销类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间 ',
  `caiwubaoxiao_content` text COMMENT '财务报销内容',
  `caiwubaoxiao_yesno_types` int NOT NULL COMMENT '财务报销状态 Search111 ',
  `caiwubaoxiao_yesno_text` text COMMENT '审核理由',
  `caiwubaoxiao_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='财务报销';

DELETE FROM `caiwubaoxiao`;
INSERT INTO `caiwubaoxiao` (`id`, `yonghu_id`, `caiwubaoxiao_uuid_number`, `caiwubaoxiao_name`, `caiwubaoxiao_photo`, `caiwubaoxiao_types`, `insert_time`, `caiwubaoxiao_content`, `caiwubaoxiao_yesno_types`, `caiwubaoxiao_yesno_text`, `caiwubaoxiao_shenhe_time`, `create_time`) VALUES
	(1, 1, '165062590788366', '财务报销名称1', 'http://localhost:8080/renshi/upload/yonghu1.jpg', 3, '2022-04-22 11:11:47', '财务报销内容1', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(2, 2, '165062590788382', '财务报销名称2', 'http://localhost:8080/renshi/upload/yonghu2.jpg', 3, '2022-04-22 11:11:47', '财务报销内容2', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(3, 1, '165062590788318', '财务报销名称3', 'http://localhost:8080/renshi/upload/yonghu3.jpg', 1, '2022-04-22 11:11:47', '财务报销内容3', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(4, 2, '16506259078849', '财务报销名称4', 'http://localhost:8080/renshi/upload/yonghu1.jpg', 3, '2022-04-22 11:11:47', '财务报销内容4', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(5, 3, '165062590788444', '财务报销名称5', 'http://localhost:8080/renshi/upload/yonghu2.jpg', 2, '2022-04-22 11:11:47', '财务报销内容5', 3, '金额太大 不予报销', '2022-04-22 11:25:11', '2022-04-22 11:11:47'),
	(6, 1, '1650626856065', '财务报销1111', 'http://localhost:8080/renshi/upload/1650626864472.jpg', 1, '2022-04-22 11:27:48', '<p>飒飒华东和大伙</p>', 1, '', NULL, '2022-04-22 11:27:48');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/renshi/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/renshi/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/renshi/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-22 11:08:22'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-22 11:08:22'),
	(3, 'bumen_types', '部门', 1, '部门1', NULL, NULL, '2022-04-22 11:08:22'),
	(4, 'bumen_types', '部门', 2, '部门2', NULL, NULL, '2022-04-22 11:08:22'),
	(5, 'bumen_types', '部门', 3, '部门3', NULL, NULL, '2022-04-22 11:08:22'),
	(6, 'zhiwu_types', '职务', 1, '职务1', NULL, NULL, '2022-04-22 11:08:22'),
	(7, 'zhiwu_types', '职务', 2, '职务2', NULL, NULL, '2022-04-22 11:08:22'),
	(8, 'zhiwu_types', '职务', 3, '职务3', NULL, NULL, '2022-04-22 11:08:22'),
	(9, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-22 11:08:22'),
	(10, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-22 11:08:22'),
	(11, 'qingjia_types', '请假类型', 1, '病假', NULL, NULL, '2022-04-22 11:08:22'),
	(12, 'qingjia_types', '请假类型', 2, '事假', NULL, NULL, '2022-04-22 11:08:22'),
	(13, 'qingjia_yesno_types', '请假状态', 1, '待审核', NULL, NULL, '2022-04-22 11:08:22'),
	(14, 'qingjia_yesno_types', '请假状态', 2, '同意', NULL, NULL, '2022-04-22 11:08:22'),
	(15, 'qingjia_yesno_types', '请假状态', 2, '拒绝', NULL, NULL, '2022-04-22 11:08:22'),
	(16, 'caiwubaoxiao_types', '财务报销类型', 1, '财务报销类型1', NULL, NULL, '2022-04-22 11:08:22'),
	(17, 'caiwubaoxiao_types', '财务报销类型', 2, '财务报销类型2', NULL, NULL, '2022-04-22 11:08:22'),
	(18, 'caiwubaoxiao_types', '财务报销类型', 3, '财务报销类型3', NULL, NULL, '2022-04-22 11:08:23'),
	(19, 'caiwubaoxiao_yesno_types', '财务报销状态', 1, '待审核', NULL, NULL, '2022-04-22 11:08:23'),
	(20, 'caiwubaoxiao_yesno_types', '财务报销状态', 2, '同意', NULL, NULL, '2022-04-22 11:08:23'),
	(21, 'caiwubaoxiao_yesno_types', '财务报销状态', 2, '拒绝', NULL, NULL, '2022-04-22 11:08:23'),
	(22, 'examquestion_types', '试题类型', 1, '单选题', NULL, NULL, '2022-04-22 11:08:23'),
	(23, 'examquestion_types', '试题类型', 2, '多选题', NULL, NULL, '2022-04-22 11:08:23'),
	(24, 'examquestion_types', '试题类型', 3, '判断题', NULL, NULL, '2022-04-22 11:08:23'),
	(25, 'examquestion_types', '试题类型', 4, '填空题', NULL, NULL, '2022-04-22 11:08:23'),
	(26, 'exampaper_types', '试卷状态', 1, '启用', NULL, NULL, '2022-04-22 11:08:23'),
	(27, 'exampaper_types', '试卷状态', 2, '禁用', NULL, NULL, '2022-04-22 11:08:23'),
	(28, 'zhiwu_types', '职务', 4, '职务4', NULL, '', '2022-04-22 11:24:10');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='试卷表';

DELETE FROM `exampaper`;
INSERT INTO `exampaper` (`id`, `exampaper_name`, `exampaper_date`, `exampaper_myscore`, `exampaper_types`, `exampaper_delete`, `create_time`) VALUES
	(1, '考试试卷1', 100, 100, 1, 1, '2022-04-22 11:08:23'),
	(2, '问卷2', 60, 25, 1, 1, '2022-04-22 11:25:32');

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;
INSERT INTO `examquestion` (`id`, `exampaper_id`, `examquestion_name`, `examquestion_options`, `examquestion_score`, `examquestion_answer`, `examquestion_analysis`, `examquestion_types`, `examquestion_sequence`, `create_time`) VALUES
	(1, 1, '单选题1', '[{"text":"答案A","code":"A"},{"text":"答案B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"答案D","code":"D"}]', 10, 'C', '无', 1, 1, '2022-04-22 11:08:23'),
	(2, 1, '多选题1', '[{"text":"答案A","code":"A"},{"text":"正确答案B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"答案D","code":"D"}]', 34, 'B,C', '无', 2, 2, '2022-04-22 11:08:23'),
	(3, 1, '填空题(正)_____', '[]', 41, '正', '无', 4, 3, '2022-04-22 11:08:23'),
	(4, 1, '判断题1', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 11, 'A', '无', 3, 4, '2022-04-22 11:08:23'),
	(5, 1, '单选题2', '[{"text":"答案A","code":"A"},{"text":"正确答案B","code":"B"},{"text":"答案C","code":"C"},{"text":"答案D","code":"D"}]', 4, 'B', '无', 1, 5, '2022-04-22 11:08:23'),
	(6, 2, '问题2的题目1', '[{"text":"正确A","code":"A"},{"text":"正确B","code":"B"},{"text":"正确C","code":"C"},{"text":"d","code":"D"}]', 20, 'A,B,C', 'Wu', 2, 1, '2022-04-22 11:26:29'),
	(7, 2, '问卷2的试题2', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 5, 'B', '无', 3, 2, '2022-04-22 11:26:53');

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int NOT NULL COMMENT '考试用户',
  `exampaper_id` int NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='考试记录表';

DELETE FROM `examrecord`;
INSERT INTO `examrecord` (`id`, `examrecord_uuid_number`, `yonghu_id`, `exampaper_id`, `total_score`, `insert_time`, `create_time`) VALUES
	(3, '1650626548661', 1, 1, 11, '2022-04-22 11:22:29', '2022-04-22 11:22:29'),
	(4, '1650626591496', 1, 1, 79, '2022-04-22 11:23:11', '2022-04-22 11:23:11'),
	(5, '1720148126989', 1, 2, 0, '2024-07-05 02:55:27', '2024-07-05 02:55:27');

DROP TABLE IF EXISTS `examredetails`;
CREATE TABLE IF NOT EXISTS `examredetails` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='答题详情表';

DELETE FROM `examredetails`;
INSERT INTO `examredetails` (`id`, `examredetails_uuid_number`, `yonghu_id`, `examquestion_id`, `examredetails_myanswer`, `examredetails_myscore`, `create_time`) VALUES
	(1, '1650626414217', 1, 5, 'C', 0, '2022-04-22 11:20:24'),
	(2, '1650626548661', 1, 5, 'A', 0, '2022-04-22 11:22:32'),
	(3, '1650626548661', 1, 4, 'A', 11, '2022-04-22 11:22:45'),
	(4, '1650626548661', 1, 3, 'sag', 0, '2022-04-22 11:22:48'),
	(5, '1650626548661', 1, 2, 'C,B', 0, '2022-04-22 11:22:52'),
	(6, '1650626548661', 1, 1, NULL, 0, '2022-04-22 11:22:54'),
	(7, '1650626591496', 1, 5, 'B', 4, '2022-04-22 11:23:15'),
	(8, '1650626591496', 1, 4, 'B', 0, '2022-04-22 11:23:17'),
	(9, '1650626591496', 1, 3, '正', 41, '2022-04-22 11:23:21'),
	(10, '1650626591496', 1, 2, 'B,C', 34, '2022-04-22 11:23:24'),
	(11, '1650626591496', 1, 1, 'B', 0, '2022-04-22 11:23:27'),
	(12, '1720148126989', 1, 7, 'A', 0, '2024-07-05 02:55:29'),
	(13, '1720148126989', 1, 6, 'A,B', 0, '2024-07-05 02:55:32');

DROP TABLE IF EXISTS `examrewrongquestion`;
CREATE TABLE IF NOT EXISTS `examrewrongquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `exampaper_id` int NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='错题表';

DELETE FROM `examrewrongquestion`;
INSERT INTO `examrewrongquestion` (`id`, `yonghu_id`, `exampaper_id`, `examquestion_id`, `examredetails_myanswer`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 5, 'C', '2022-04-22 11:20:24', '2022-04-22 11:20:24'),
	(2, 1, 1, 5, 'A', '2022-04-22 11:22:32', '2022-04-22 11:22:32'),
	(3, 1, 1, 3, 'sag', '2022-04-22 11:22:48', '2022-04-22 11:22:48'),
	(4, 1, 1, 2, 'C,B', '2022-04-22 11:22:52', '2022-04-22 11:22:52'),
	(5, 1, 1, 1, NULL, '2022-04-22 11:22:54', '2022-04-22 11:22:54'),
	(6, 1, 1, 4, 'B', '2022-04-22 11:23:17', '2022-04-22 11:23:17'),
	(7, 1, 1, 1, 'B', '2022-04-22 11:23:27', '2022-04-22 11:23:27'),
	(8, 1, 2, 7, 'A', '2024-07-05 02:55:29', '2024-07-05 02:55:29'),
	(9, 1, 2, 6, 'A,B', '2024-07-05 02:55:32', '2024-07-05 02:55:32');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/renshi/upload/gonggao1.jpg', 2, '2022-04-22 11:11:47', '公告详情1', '2022-04-22 11:11:47'),
	(2, '公告名称2', 'http://localhost:8080/renshi/upload/gonggao2.jpg', 2, '2022-04-22 11:11:47', '公告详情2', '2022-04-22 11:11:47'),
	(3, '公告名称3', 'http://localhost:8080/renshi/upload/gonggao3.jpg', 1, '2022-04-22 11:11:47', '公告详情3', '2022-04-22 11:11:47'),
	(4, '公告名称4', 'http://localhost:8080/renshi/upload/gonggao4.jpg', 2, '2022-04-22 11:11:47', '公告详情4', '2022-04-22 11:11:47'),
	(5, '公告名称5', 'http://localhost:8080/renshi/upload/gonggao5.jpg', 1, '2022-04-22 11:11:47', '公告详情5', '2022-04-22 11:11:47');

DROP TABLE IF EXISTS `qingjia`;
CREATE TABLE IF NOT EXISTS `qingjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '员工',
  `qingjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '请假编号 Search111  ',
  `qingjia_name` varchar(200) DEFAULT NULL COMMENT '请假名称 Search111  ',
  `qingjia_types` int NOT NULL COMMENT '请假类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间 ',
  `qingjia_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '请假开始时间',
  `qingjia_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间',
  `qingjia_content` text COMMENT '请假内容',
  `qingjia_yesno_types` int NOT NULL COMMENT '请假状态 Search111 ',
  `qingjia_yesno_text` text COMMENT '审核理由',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='请假';

DELETE FROM `qingjia`;
INSERT INTO `qingjia` (`id`, `yonghu_id`, `qingjia_uuid_number`, `qingjia_name`, `qingjia_types`, `insert_time`, `qingjia_kaishi_time`, `qingjia_jieshu_time`, `qingjia_content`, `qingjia_yesno_types`, `qingjia_yesno_text`, `qingjia_shenhe_time`, `create_time`) VALUES
	(1, 3, '165062590789446', '请假名称1', 2, '2022-04-22 11:11:47', '2022-04-22 11:11:47', '2022-04-22 11:11:47', '请假内容1', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(2, 2, '165062590789495', '请假名称2', 1, '2022-04-22 11:11:47', '2022-04-22 11:11:47', '2022-04-22 11:11:47', '请假内容2', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(3, 3, '165062590789476', '请假名称3', 1, '2022-04-22 11:11:47', '2022-04-22 11:11:47', '2022-04-22 11:11:47', '请假内容3', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(4, 1, '165062590789478', '请假名称4', 2, '2022-04-22 11:11:47', '2022-04-22 11:11:47', '2022-04-22 11:11:47', '请假内容4', 1, NULL, NULL, '2022-04-22 11:11:47'),
	(5, 2, '165062590789446', '请假名称5', 1, '2022-04-22 11:11:47', '2022-04-22 11:11:47', '2022-04-22 11:11:47', '请假内容5', 2, '同意了', '2022-04-22 11:24:28', '2022-04-22 11:11:47'),
	(6, 1, '1650626836497', '请假2222', 1, '2022-04-22 11:27:31', '2022-04-22 16:00:00', '2022-04-23 16:00:00', '<p>啥啊哈的回答是</p>', 1, '', NULL, '2022-04-22 11:27:31');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', '9dsx68bt1fo3xitrj0jsxdl3r1x1tmb2', '2022-04-22 11:17:42', '2024-07-05 03:54:03'),
	(2, 1, 'a1', 'yonghu', '员工', 'o7s4eotdvj0imlxgyxsprekd7fr87ucn', '2022-04-22 11:19:00', '2024-07-05 03:55:17');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `bumen_types` int DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwu_types` int DEFAULT NULL COMMENT '职务 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `bumen_types`, `zhiwu_types`, `yonghu_email`, `create_time`) VALUES
	(1, '员工1', '123456', '员工姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/renshi/upload/yonghu1.jpg', 1, 1, 2, '1@qq.com', '2022-04-22 11:11:47'),
	(2, '员工2', '123456', '员工姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/renshi/upload/yonghu2.jpg', 1, 2, 2, '2@qq.com', '2022-04-22 11:11:47'),
	(3, '员工3', '123456', '员工姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/renshi/upload/yonghu3.jpg', 2, 3, 1, '3@qq.com', '2022-04-22 11:11:47');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
