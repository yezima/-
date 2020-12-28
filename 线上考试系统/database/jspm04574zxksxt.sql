/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jspm04574zxksxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-12-17 14:55:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'ADMIN', '2020-12-16 21:52:17');

-- ----------------------------
-- Table structure for `banji`
-- ----------------------------
DROP TABLE IF EXISTS `banji`;
CREATE TABLE `banji` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `banjimingcheng` varchar(255) NOT NULL COMMENT '班级名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banji
-- ----------------------------
INSERT INTO `banji` VALUES ('1', '一班', '2020-12-16 21:56:35');
INSERT INTO `banji` VALUES ('2', '二班', '2020-12-16 21:56:41');
INSERT INTO `banji` VALUES ('3', '三班', '2020-12-16 21:56:54');
INSERT INTO `banji` VALUES ('5', '四班', '2020-12-16 21:57:19');

-- ----------------------------
-- Table structure for `cuoti`
-- ----------------------------
DROP TABLE IF EXISTS `cuoti`;
CREATE TABLE `cuoti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tikuid` int(10) unsigned NOT NULL COMMENT '题库id',
  `tikubianhao` varchar(50) NOT NULL COMMENT '题库编号',
  `tikumingcheng` varchar(255) NOT NULL COMMENT '题库名称',
  `faburen` varchar(50) NOT NULL COMMENT '发布人',
  `shititimu` varchar(255) NOT NULL COMMENT '试题题目',
  `leixing` varchar(50) NOT NULL COMMENT '类型',
  `daan` varchar(255) NOT NULL COMMENT '答案',
  `defen` int(11) NOT NULL COMMENT '得分',
  `zimu` varchar(50) NOT NULL COMMENT '字母',
  `kaoshiren` varchar(50) NOT NULL COMMENT '考试人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `cuoti_tikuid_index` (`tikuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cuoti
-- ----------------------------
INSERT INTO `cuoti` VALUES ('1', '8', '12162202001463', '期中考试', '200', '线性表的逻辑顺序与物理顺序总是一致的，这种说法', '单选题', 'B、错误', '0', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `cuoti` VALUES ('2', '8', '12162202001463', '期中考试', '200', '在非空二叉树中，任一结点均有两颗二叉树，这种说法', '单选题', 'A、正确', '0', 'A', '002', '2020-12-17 14:31:46');
INSERT INTO `cuoti` VALUES ('3', '8', '12162202001463', '期中考试', '200', '对于一个头指针为L的带头结点的单链表，判定链表为空表的条件是', '单选题', 'B、L->next==NULL;', '0', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `cuoti` VALUES ('4', '8', '12162202001463', '期中考试', '200', '在一个有向图中，所有顶点的入度之和等于所有顶点的出度之和，这种说法', '单选题', 'A、正确', '0', 'A', '002', '2020-12-17 14:31:46');
INSERT INTO `cuoti` VALUES ('5', '8', '12162202001463', '期中考试', '200', '以下数据结构中，（）是非线性数据结构', '多选题', 'B、字符串', '0', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `cuoti` VALUES ('6', '8', '12162202001463', '期中考试', '200', '在非空二叉树中，任一结点均有两颗二叉树，这种说法', '单选题', 'A、正确', '0', 'A', '003', '2020-12-17 14:52:20');
INSERT INTO `cuoti` VALUES ('7', '8', '12162202001463', '期中考试', '200', '在一个有向图中，所有顶点的入度之和等于所有顶点的出度之和，这种说法', '单选题', 'A、正确', '0', 'A', '003', '2020-12-17 14:52:20');

-- ----------------------------
-- Table structure for `jiaoshi`
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) NOT NULL COMMENT '工号',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(50) NOT NULL COMMENT '身份证',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES ('1', '100', '001', '李老师', '女', '36533265888', '35@qq.com', '655656563255655', 'upload/1608126912516.jpg', '2020-12-16 21:55:14');
INSERT INTO `jiaoshi` VALUES ('2', '200', '200', '陈老师', '女', '65566562636', '256@qq.com', '323265665626665', 'upload/1608126951654.jpg', '2020-12-16 21:55:52');
INSERT INTO `jiaoshi` VALUES ('3', '300', '300', '小琴', '女', '59565268888', '223@qq.cpm', '215566565665666', 'upload/1608187631393.jpg', '2020-12-17 14:47:12');

-- ----------------------------
-- Table structure for `jieguo`
-- ----------------------------
DROP TABLE IF EXISTS `jieguo`;
CREATE TABLE `jieguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tikuid` int(10) unsigned NOT NULL COMMENT '题库id',
  `tikubianhao` varchar(50) NOT NULL COMMENT '题库编号',
  `tikumingcheng` varchar(255) NOT NULL COMMENT '题库名称',
  `faburen` varchar(50) NOT NULL COMMENT '发布人',
  `kaoshibianhao` varchar(50) NOT NULL COMMENT '考试编号',
  `shititimu` varchar(255) NOT NULL COMMENT '试题题目',
  `leixing` varchar(50) NOT NULL COMMENT '类型',
  `daan` text NOT NULL COMMENT '答案',
  `defen` decimal(18,2) NOT NULL COMMENT '得分',
  `zimu` varchar(50) NOT NULL COMMENT '字母',
  `kaoshiren` varchar(50) NOT NULL COMMENT '考试人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `jieguo_tikuid_index` (`tikuid`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jieguo
-- ----------------------------
INSERT INTO `jieguo` VALUES ('17', '7', '12162201544110', '期中考试', '200', '12171033382975', '分页系统中的逻辑地址是由页号和页内地址组成的，是二维地址结构，这样的说法正确吗？', '单选题', 'A、正确', '5.00', 'A', '001', '2020-12-17 10:33:38');
INSERT INTO `jieguo` VALUES ('18', '7', '12162201544110', '期中考试', '200', '12171033382975', '虚拟存储器是由操作系统提供的一个假想的特大存储器，它并不是实际的内存，其大小可比内存空间大得多，这样的说法正确吗？', '单选题', 'A、正确', '5.00', 'A', '001', '2020-12-17 10:33:38');
INSERT INTO `jieguo` VALUES ('19', '7', '12162201544110', '期中考试', '200', '12171033382975', '进程之间的状态变化，一定在 PCB 中反映出来，这样的说法正确吗？', '单选题', 'A、正确', '0.00', 'A', '001', '2020-12-17 10:33:38');
INSERT INTO `jieguo` VALUES ('20', '7', '12162201544110', '期中考试', '200', '12171033382975', '顺序文件适合建立在顺序存储设备上如磁带，而不适合建立在磁盘上，这样的说法正确吗？', '单选题', 'A、正确', '0.00', 'A', '001', '2020-12-17 10:33:38');
INSERT INTO `jieguo` VALUES ('21', '7', '12162201544110', '期中考试', '200', '12171033382975', '系统调用是操作系统与外界程序之间的接口，它属于核心程序。在层次结构设计中， 它最靠近硬件，这样的说法正确吗？', '单选题', 'A、正确', '5.00', 'A', '001', '2020-12-17 10:33:38');
INSERT INTO `jieguo` VALUES ('31', '4', '12162200221263', '期末考试', '100', '12171053456674', '进程执行时的间断性，决定了进程可能具有多种状态。进程的基本状态有三种，在分时系统中，当一个进程拥有的时间片到时，则该进程由1 ______ 进入2 ______ ；如果出现某种原因使得处理机空闲时，则需要从就绪队列中选择一个进程，并将处理机分配给它，此时该进程进入 3 ______ ，这个过程是由 4 ______ 来完成的', '填空题', '测试', '10.00', '', '002', '2020-12-17 10:53:45');
INSERT INTO `jieguo` VALUES ('32', '8', '12162202001463', '期中考试', '200', '12171107291597', '在一个有向图中，所有顶点的入度之和等于所有顶点的出度之和，这种说法', '单选题', 'B、错误', '5.00', 'B', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('33', '8', '12162202001463', '期中考试', '200', '12171107291597', '一个无序的元素序列可以通过构造一棵二叉排序树而变成一个有序的元素序列，这种说法', '单选题', 'B、错误', '5.00', 'B', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('34', '8', '12162202001463', '期中考试', '200', '12171107291597', '对于一个头指针为L的带头结点的单链表，判定链表为空表的条件是', '单选题', 'A、L=NULL;', '5.00', 'A', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('35', '8', '12162202001463', '期中考试', '200', '12171107291597', '堆排序是不稳定的排序方法，这种说法', '单选题', 'B、错误', '0.00', 'B', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('36', '8', '12162202001463', '期中考试', '200', '12171107291597', '在非空二叉树中，任一结点均有两颗二叉树，这种说法', '单选题', 'A、正确', '0.00', 'A', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('37', '8', '12162202001463', '期中考试', '200', '12171107291597', '线性表的逻辑顺序与物理顺序总是一致的，这种说法', '单选题', 'A、正确', '5.00', 'A', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('38', '8', '12162202001463', '期中考试', '200', '12171107291597', '以下数据结构中，（）是非线性数据结构', '多选题', 'A、树,B、字符串,C、数组', '10.00', 'A,B,C', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('39', '8', '12162202001463', '期中考试', '200', '12171107291597', '在下面的排序方法中，关键字比较的次数与记录的初始排列次序无关的是', '多选题', 'B、冒泡排序,C、插入排序', '10.00', 'B,C', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('40', '8', '12162202001463', '期中考试', '200', '12171107291597', '实现分时系统要解决的两个关键问题是1 和2 。', '填空题', '测试', '1.00', 'B,C', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('41', '8', '12162202001463', '期中考试', '200', '12171107291597', '产生死锁的必要条件是1 、 2 、 3 、 4 。', '填空题', '测试', '5.00', 'B,C', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('42', '8', '12162202001463', '期中考试', '200', '12171107291597', '程序并发执行时的特征有 1 、 2 和 3 。', '填空题', '测试', '0.00', 'B,C', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('43', '8', '12162202001463', '期中考试', '200', '12171107291597', '在首次适应算法中，要求空闲区按1 顺序拉链；在最佳适应算法中， 要求空闲区按2 顺序拉链。', '填空题', '测试', '5.00', 'B,C', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('44', '8', '12162202001463', '期中考试', '200', '12171107291597', '操作系统的五大功能是1 、 2 、 3 、 4 和为用户提供接口。', '填空题', '测试', '0.00', 'B,C', '001', '2020-12-17 11:07:29');
INSERT INTO `jieguo` VALUES ('45', '8', '12162202001463', '期中考试', '200', '12171431461101', '堆排序是不稳定的排序方法，这种说法', '单选题', 'A、正确', '5.00', 'A', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('46', '8', '12162202001463', '期中考试', '200', '12171431461101', '线性表的逻辑顺序与物理顺序总是一致的，这种说法', '单选题', 'B、错误', '0.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('47', '8', '12162202001463', '期中考试', '200', '12171431461101', '在非空二叉树中，任一结点均有两颗二叉树，这种说法', '单选题', 'A、正确', '0.00', 'A', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('48', '8', '12162202001463', '期中考试', '200', '12171431461101', '对于一个头指针为L的带头结点的单链表，判定链表为空表的条件是', '单选题', 'B、L->next==NULL;', '0.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('49', '8', '12162202001463', '期中考试', '200', '12171431461101', '一个无序的元素序列可以通过构造一棵二叉排序树而变成一个有序的元素序列，这种说法', '单选题', 'B、错误', '5.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('50', '8', '12162202001463', '期中考试', '200', '12171431461101', '在一个有向图中，所有顶点的入度之和等于所有顶点的出度之和，这种说法', '单选题', 'A、正确', '0.00', 'A', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('51', '8', '12162202001463', '期中考试', '200', '12171431461101', '在下面的排序方法中，关键字比较的次数与记录的初始排列次序无关的是', '多选题', 'B、冒泡排序', '5.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('52', '8', '12162202001463', '期中考试', '200', '12171431461101', '以下数据结构中，（）是非线性数据结构', '多选题', 'B、字符串', '0.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('53', '8', '12162202001463', '期中考试', '200', '12171431461101', '产生死锁的必要条件是1 、 2 、 3 、 4 。', '填空题', '测试', '-1.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('54', '8', '12162202001463', '期中考试', '200', '12171431461101', '在首次适应算法中，要求空闲区按1 顺序拉链；在最佳适应算法中， 要求空闲区按2 顺序拉链。', '填空题', '测试', '-1.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('55', '8', '12162202001463', '期中考试', '200', '12171431461101', '操作系统的五大功能是1 、 2 、 3 、 4 和为用户提供接口。', '填空题', '暗室逢灯', '-1.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('56', '8', '12162202001463', '期中考试', '200', '12171431461101', '当前主要的高级进程通信机制有1 、 2 和 3 三种。', '填空题', '啊范德萨发', '-1.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('57', '8', '12162202001463', '期中考试', '200', '12171431461101', '程序并发执行时的特征有 1 、 2 和 3 。', '填空题', '阿斯蒂芬', '-1.00', 'B', '002', '2020-12-17 14:31:46');
INSERT INTO `jieguo` VALUES ('58', '1', '12162158491542', '期末考试', '100', '12171443231111', '在操作系统中，对信号量 S 的 P 原语操作后，使进程进入相应阻塞队列等待的条件是（ ）', '多选题', 'B、S=0', '5.00', 'B', '001', '2020-12-17 14:43:23');
INSERT INTO `jieguo` VALUES ('59', '1', '12162158491542', '期末考试', '100', '12171443231111', '设计多道批处理系统时，首先要考虑的是（ ） _______', '多选题', 'A、灵活性和可适应性', '5.00', 'A', '001', '2020-12-17 14:43:23');
INSERT INTO `jieguo` VALUES ('60', '8', '12162202001463', '期中考试', '200', '12171452204998', '一个无序的元素序列可以通过构造一棵二叉排序树而变成一个有序的元素序列，这种说法', '单选题', 'B、错误', '5.00', 'B', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('61', '8', '12162202001463', '期中考试', '200', '12171452204998', '堆排序是不稳定的排序方法，这种说法', '单选题', 'A、正确', '5.00', 'A', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('62', '8', '12162202001463', '期中考试', '200', '12171452204998', '在非空二叉树中，任一结点均有两颗二叉树，这种说法', '单选题', 'A、正确', '0.00', 'A', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('63', '8', '12162202001463', '期中考试', '200', '12171452204998', '在一个有向图中，所有顶点的入度之和等于所有顶点的出度之和，这种说法', '单选题', 'A、正确', '0.00', 'A', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('64', '8', '12162202001463', '期中考试', '200', '12171452204998', '线性表的逻辑顺序与物理顺序总是一致的，这种说法', '单选题', 'A、正确', '5.00', 'A', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('65', '8', '12162202001463', '期中考试', '200', '12171452204998', '对于一个头指针为L的带头结点的单链表，判定链表为空表的条件是', '单选题', 'A、L=NULL;', '5.00', 'A', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('66', '8', '12162202001463', '期中考试', '200', '12171452204998', '在下面的排序方法中，关键字比较的次数与记录的初始排列次序无关的是', '多选题', 'A、希尔排序,B、冒泡排序', '5.00', 'A,B', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('67', '8', '12162202001463', '期中考试', '200', '12171452204998', '以下数据结构中，（）是非线性数据结构', '多选题', 'A、树,B、字符串', '5.00', 'A,B', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('68', '8', '12162202001463', '期中考试', '200', '12171452204998', '实现分时系统要解决的两个关键问题是1 和2 。', '填空题', '测试', '2.00', 'A,B', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('69', '8', '12162202001463', '期中考试', '200', '12171452204998', '当前主要的高级进程通信机制有1 、 2 和 3 三种。', '填空题', '测试', '5.00', 'A,B', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('70', '8', '12162202001463', '期中考试', '200', '12171452204998', '操作系统的五大功能是1 、 2 、 3 、 4 和为用户提供接口。', '填空题', 'c是', '0.00', 'A,B', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('71', '8', '12162202001463', '期中考试', '200', '12171452204998', '在首次适应算法中，要求空闲区按1 顺序拉链；在最佳适应算法中， 要求空闲区按2 顺序拉链。', '填空题', 'c搜索', '10.00', 'A,B', '003', '2020-12-17 14:52:20');
INSERT INTO `jieguo` VALUES ('72', '8', '12162202001463', '期中考试', '200', '12171452204998', '为实现设备分配，应为每个设备配置一张1 ，在系统中配置一张 2 ；为实现设备独立性，系统中应配置一张3 。', '填空题', '测试', '5.00', 'A,B', '003', '2020-12-17 14:52:20');

-- ----------------------------
-- Table structure for `kaoshijieguo`
-- ----------------------------
DROP TABLE IF EXISTS `kaoshijieguo`;
CREATE TABLE `kaoshijieguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tikuid` int(10) unsigned NOT NULL COMMENT '题库id',
  `tikubianhao` varchar(50) NOT NULL COMMENT '题库编号',
  `tikumingcheng` varchar(255) NOT NULL COMMENT '题库名称',
  `faburen` varchar(50) NOT NULL COMMENT '发布人',
  `kaoshibianhao` varchar(50) NOT NULL COMMENT '考试编号',
  `kaoshishichang` varchar(50) NOT NULL COMMENT '考试时长',
  `danxuantidefen` int(11) NOT NULL COMMENT '单选题得分',
  `duoxuantidefen` int(11) NOT NULL COMMENT '多选题得分',
  `tiankongtidefen` int(11) NOT NULL COMMENT '填空题得分',
  `zongdefen` int(11) NOT NULL COMMENT '总得分',
  `kaoshiren` varchar(50) NOT NULL COMMENT '考试人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `kaoshijieguo_tikuid_index` (`tikuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kaoshijieguo
-- ----------------------------
INSERT INTO `kaoshijieguo` VALUES ('5', '4', '12162200221263', '期末考试', '100', '12171041251992', '', '0', '0', '8', '8', '002', '2020-12-17 10:41:25');
INSERT INTO `kaoshijieguo` VALUES ('6', '4', '12162200221263', '期末考试', '100', '12171053456674', '', '0', '0', '10', '10', '002', '2020-12-17 10:53:45');
INSERT INTO `kaoshijieguo` VALUES ('7', '8', '12162202001463', '期中考试', '200', '12171107291597', '', '20', '20', '11', '51', '001', '2020-12-17 11:07:29');
INSERT INTO `kaoshijieguo` VALUES ('8', '8', '12162202001463', '期中考试', '200', '12171431461101', '', '10', '5', '0', '15', '002', '2020-12-17 14:31:46');
INSERT INTO `kaoshijieguo` VALUES ('9', '1', '12162158491542', '期末考试', '100', '12171443231111', '', '0', '10', '0', '10', '001', '2020-12-17 14:43:23');
INSERT INTO `kaoshijieguo` VALUES ('10', '8', '12162202001463', '期中考试', '200', '12171452204998', '', '20', '10', '22', '52', '003', '2020-12-17 14:52:20');

-- ----------------------------
-- Table structure for `shiti`
-- ----------------------------
DROP TABLE IF EXISTS `shiti`;
CREATE TABLE `shiti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tikuid` int(10) unsigned NOT NULL COMMENT '题库id',
  `tikubianhao` varchar(50) NOT NULL COMMENT '题库编号',
  `tikumingcheng` varchar(255) NOT NULL COMMENT '题库名称',
  `shititimu` text NOT NULL COMMENT '试题题目',
  `leixing` varchar(255) NOT NULL COMMENT '类型',
  `daan` text NOT NULL COMMENT '答案',
  `faburen` varchar(50) NOT NULL COMMENT '发布人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `shiti_tikuid_index` (`tikuid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shiti
-- ----------------------------
INSERT INTO `shiti` VALUES ('1', '8', '12162202001463', '期中考试', '线性表的逻辑顺序与物理顺序总是一致的，这种说法', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"错误\",\"point\":\"0\"}]', '200', '2020-12-16 22:08:40');
INSERT INTO `shiti` VALUES ('2', '8', '12162202001463', '期中考试', '堆排序是不稳定的排序方法，这种说法', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"错误\",\"point\":\"0\"}]', '200', '2020-12-16 22:10:14');
INSERT INTO `shiti` VALUES ('3', '8', '12162202001463', '期中考试', '在非空二叉树中，任一结点均有两颗二叉树，这种说法', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"错误\",\"point\":\"5\"}]', '200', '2020-12-16 22:11:30');
INSERT INTO `shiti` VALUES ('4', '8', '12162202001463', '期中考试', '一个无序的元素序列可以通过构造一棵二叉排序树而变成一个有序的元素序列，这种说法', '单选题', '[{\"zimu\":\"B\",\"title\":\"错误\",\"point\":\"5\"}]', '200', '2020-12-16 22:12:16');
INSERT INTO `shiti` VALUES ('5', '8', '12162202001463', '期中考试', '在一个有向图中，所有顶点的入度之和等于所有顶点的出度之和，这种说法', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"错误\",\"point\":\"5\"}]', '200', '2020-12-16 22:13:20');
INSERT INTO `shiti` VALUES ('6', '8', '12162202001463', '期中考试', '对于一个头指针为L的带头结点的单链表，判定链表为空表的条件是', '单选题', '[{\"zimu\":\"A\",\"title\":\"L=NULL;\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"L->next==NULL;\",\"point\":\"0\"},{\"zimu\":\"C\",\"title\":\"L->next=NULL;\",\"point\":\"0\"},{\"zimu\":\"D\",\"title\":\"L!=NULL;\",\"point\":\"0\"}]', '200', '2020-12-16 22:15:44');
INSERT INTO `shiti` VALUES ('7', '8', '12162202001463', '期中考试', '以下数据结构中，（）是非线性数据结构', '多选题', '[{\"zimu\":\"A\",\"title\":\"树\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"字符串\",\"point\":\"0\"},{\"zimu\":\"C\",\"title\":\"数组\",\"point\":\"5\"},{\"zimu\":\"D\",\"title\":\"栈\",\"point\":\"0\"}]', '200', '2020-12-16 22:17:43');
INSERT INTO `shiti` VALUES ('8', '8', '12162202001463', '期中考试', '在下面的排序方法中，关键字比较的次数与记录的初始排列次序无关的是', '多选题', '[{\"zimu\":\"A\",\"title\":\"希尔排序\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"冒泡排序\",\"point\":\"5\"},{\"zimu\":\"C\",\"title\":\"插入排序\",\"point\":\"5\"},{\"zimu\":\"D\",\"title\":\"选择排序\",\"point\":\"0\"}]', '200', '2020-12-16 22:18:40');
INSERT INTO `shiti` VALUES ('9', '7', '12162201544110', '期中考试', '虚拟存储器是由操作系统提供的一个假想的特大存储器，它并不是实际的内存，其大小可比内存空间大得多，这样的说法正确吗？', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"不正确\",\"point\":\"0\"}]', '200', '2020-12-16 22:20:56');
INSERT INTO `shiti` VALUES ('10', '7', '12162201544110', '期中考试', '顺序文件适合建立在顺序存储设备上如磁带，而不适合建立在磁盘上，这样的说法正确吗？', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"不正确\",\"point\":\"5\"}]', '200', '2020-12-16 22:21:47');
INSERT INTO `shiti` VALUES ('11', '7', '12162201544110', '期中考试', '分页系统中的逻辑地址是由页号和页内地址组成的，是二维地址结构，这样的说法正确吗？', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"不正确\",\"point\":\"0\"}]', '200', '2020-12-16 22:22:17');
INSERT INTO `shiti` VALUES ('12', '7', '12162201544110', '期中考试', '进程之间的状态变化，一定在 PCB 中反映出来，这样的说法正确吗？', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"不正确\",\"point\":\"5\"}]', '200', '2020-12-16 22:22:52');
INSERT INTO `shiti` VALUES ('13', '7', '12162201544110', '期中考试', '系统调用是操作系统与外界程序之间的接口，它属于核心程序。在层次结构设计中， 它最靠近硬件，这样的说法正确吗？', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"不正确\",\"point\":\"0\"}]', '200', '2020-12-16 22:23:20');
INSERT INTO `shiti` VALUES ('14', '2', '12162159241207', '期末考试', '打开文件的功能就是将文件复制到主存，这样的说法正确吗？', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"不正确\",\"point\":\"0\"}]', '100', '2020-12-16 22:25:43');
INSERT INTO `shiti` VALUES ('15', '2', '12162159241207', '期末考试', '若系统中存在一个循环等待的进程集合，则必定会死锁，这样的说法正确吗？', '单选题', '[{\"zimu\":\"A\",\"title\":\"正确\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"不正确\",\"point\":\"0\"}]', '100', '2020-12-16 22:26:13');
INSERT INTO `shiti` VALUES ('16', '2', '12162159241207', '期末考试', '用户程序中的输入、输出操作实际上是由 （ ）＿＿＿＿＿ 完成', '单选题', '[{\"zimu\":\"A\",\"title\":\"程序设计语言\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"操作系统\",\"point\":\"0\"},{\"zimu\":\"C\",\"title\":\"编译系统\",\"point\":\"0\"},{\"zimu\":\"D\",\"title\":\"标准库程序\",\"point\":\"0\"}]', '100', '2020-12-16 22:28:16');
INSERT INTO `shiti` VALUES ('17', '1', '12162158491542', '期末考试', '设计多道批处理系统时，首先要考虑的是（ ） _______', '多选题', '[{\"zimu\":\"A\",\"title\":\"灵活性和可适应性\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"系统效率和吞吐量\",\"point\":\"0\"},{\"zimu\":\"C\",\"title\":\"交互性和响应时间\",\"point\":\"5\"},{\"zimu\":\"D\",\"title\":\"实时性和可靠性\",\"point\":\"0\"}]', '100', '2020-12-16 22:29:31');
INSERT INTO `shiti` VALUES ('18', '1', '12162158491542', '期末考试', '在操作系统中，对信号量 S 的 P 原语操作后，使进程进入相应阻塞队列等待的条件是（ ）', '多选题', '[{\"zimu\":\"A\",\"title\":\"S>0\",\"point\":\"5\"},{\"zimu\":\"B\",\"title\":\"S=0\",\"point\":\"5\"},{\"zimu\":\"C\",\"title\":\"S<0\",\"point\":\"0\"},{\"zimu\":\"D\",\"title\":\"S≤0\",\"point\":\"0\"}]', '100', '2020-12-16 22:30:41');
INSERT INTO `shiti` VALUES ('19', '4', '12162200221263', '期末考试', '进程执行时的间断性，决定了进程可能具有多种状态。进程的基本状态有三种，在分时\r\n\r\n系统中，当一个进程拥有的时间片到时，则该进程由1 ______ 进入2 ______ ；如果\r\n\r\n出现某种原因使得处理机空闲时，则需要从就绪队列中选择一个进程，并将处理机分配给\r\n\r\n它，此时该进程进入 3 ______ ，这个过程是由 4 ______ 来完成的', '填空题', '[{\"zimu\":\"A\",\"title\":\"<p>1)running</p><p>2)ready</p><p>3)running</p><p>4)scheduler</p>\",\"point\":\"0\"}]', '100', '2020-12-17 10:39:13');
INSERT INTO `shiti` VALUES ('20', '4', '12162200221263', '期末考试', '操作系统的五大功能是1 、 2 、 3 、 4 和为用户提供接口', '填空题', '[{\"zimu\":\"A\",\"title\":\"处理机管理、存储器管理、设备管理、文件管理\",\"point\":\"0\"}]', '100', '2020-12-17 10:55:42');
INSERT INTO `shiti` VALUES ('21', '4', '12162200221263', '期末考试', '实现分时系统要解决的两个关键问题是1 和2 。', '填空题', '[{\"zimu\":\"A\",\"title\":\"及时接收、及时处理（交互性）\",\"point\":\"0\"}]', '100', '2020-12-17 10:56:07');
INSERT INTO `shiti` VALUES ('22', '4', '12162200221263', '期末考试', '同步机制应遵循的基本准则有1 、 2 、 3 和4 ；整形信号量没有遵循其中的 5 准则。', '填空题', '[{\"zimu\":\"A\",\"title\":\"同步机制应遵循的基本准则：空闲让进、忙则等待、有限等待、让权等待 整形信号量没有遵循其中的让权等待\",\"point\":\"0\"}]', '100', '2020-12-17 10:56:49');
INSERT INTO `shiti` VALUES ('23', '4', '12162200221263', '期末考试', '产生死锁的必要条件是1 、 2 、 3 、 4 。', '单选题', '[]', '100', '2020-12-17 10:57:35');
INSERT INTO `shiti` VALUES ('24', '4', '12162200221263', '期末考试', '当前主要的高级进程通信机制有1 、 2 和 3 三种。', '填空题', '[{\"zimu\":\"A\",\"title\":\"当前主要的高级进程通信机制有共享存储器系统、消息传递系统、管道运输系统\",\"point\":\"0\"}]', '100', '2020-12-17 10:58:09');
INSERT INTO `shiti` VALUES ('25', '4', '12162200221263', '期末考试', '程序并发执行时的特征有 1 、 2 和 3 。', '填空题', '[{\"zimu\":\"A\",\"title\":\"间断性,失去了封闭性,不可再现性,独立性,\",\"point\":\"0\"}]', '100', '2020-12-17 10:58:46');
INSERT INTO `shiti` VALUES ('26', '8', '12162202001463', '期中考试', '程序并发执行时的特征有 1 、 2 和 3 。', '填空题', '[{\"zimu\":\"A\",\"title\":\"间断性,失去了封闭性,不可再现性,独立性,\",\"point\":\"0\"}]', '200', '2020-12-17 11:02:06');
INSERT INTO `shiti` VALUES ('27', '8', '12162202001463', '期中考试', '当前主要的高级进程通信机制有1 、 2 和 3 三种。', '填空题', '[{\"zimu\":\"A\",\"title\":\"当前主要的高级进程通信机制有共享存储器系统、消息传递系统、管道运输系统\",\"point\":\"0\"}]', '200', '2020-12-17 11:02:39');
INSERT INTO `shiti` VALUES ('28', '8', '12162202001463', '期中考试', '在首次适应算法中，要求空闲区按1 顺序拉链；在最佳适应算法中， 要求空闲区按2 顺序拉链。', '填空题', '[{\"zimu\":\"A\",\"title\":\"空闲区地址递增 空闲区大小递增\",\"point\":\"0\"}]', '200', '2020-12-17 11:03:05');
INSERT INTO `shiti` VALUES ('29', '8', '12162202001463', '期中考试', '操作系统的五大功能是1 、 2 、 3 、 4 和为用户提供接口。', '填空题', '[{\"zimu\":\"A\",\"title\":\"处理机管理、存储器管理、设备管理、文件管理\",\"point\":\"0\"}]', '200', '2020-12-17 11:03:40');
INSERT INTO `shiti` VALUES ('30', '8', '12162202001463', '期中考试', '实现分时系统要解决的两个关键问题是1 和2 。', '填空题', '[{\"zimu\":\"A\",\"title\":\"及时接收、及时处理（交互性）\",\"point\":\"0\"}]', '200', '2020-12-17 11:04:02');
INSERT INTO `shiti` VALUES ('31', '8', '12162202001463', '期中考试', '产生死锁的必要条件是1 、 2 、 3 、 4 。', '填空题', '[]', '200', '2020-12-17 11:04:24');
INSERT INTO `shiti` VALUES ('32', '8', '12162202001463', '期中考试', '为实现设备分配，应为每个设备配置一张1 ，在系统中配置一张 2 ；为实现设备独立性，系统中应配置一张3 。', '填空题', '[{\"zimu\":\"A\",\"title\":\"同一资源某时刻只能被一个进程占有； 不可剥夺：一个进程在占用某一资源时，不可被其他进程剥夺，只能等待其使用完毕后自行释放 请求与保持：进程在占有一个或多个资源的同时，去请求另一资源 循环等待：多个进程间形成一个循环等待链，链中进程在占有其他进程请求资源的同时，去请求被其他进程占有的资源。\",\"point\":\"0\"}]', '200', '2020-12-17 11:04:43');

-- ----------------------------
-- Table structure for `tiku`
-- ----------------------------
DROP TABLE IF EXISTS `tiku`;
CREATE TABLE `tiku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tikubianhao` varchar(50) NOT NULL COMMENT '题库编号',
  `tikumingcheng` varchar(255) NOT NULL COMMENT '题库名称',
  `kaoshibanji` int(10) unsigned NOT NULL COMMENT '考试班级',
  `kaoshishizhang` int(11) NOT NULL COMMENT '考试时长',
  `faburen` varchar(50) NOT NULL COMMENT '发布人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `tiku_kaoshibanji_index` (`kaoshibanji`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiku
-- ----------------------------
INSERT INTO `tiku` VALUES ('1', '12162158491542', '期末考试', '5', '40', '100', '2020-12-16 21:59:12');
INSERT INTO `tiku` VALUES ('2', '12162159241207', '期末考试', '3', '40', '100', '2020-12-16 22:00:05');
INSERT INTO `tiku` VALUES ('3', '12162200121457', '期末考试', '2', '40', '100', '2020-12-16 22:00:20');
INSERT INTO `tiku` VALUES ('4', '12162200221263', '期末考试', '1', '30', '100', '2020-12-16 22:00:30');
INSERT INTO `tiku` VALUES ('5', '12162201181981', '期中考试', '5', '40', '200', '2020-12-16 22:01:47');
INSERT INTO `tiku` VALUES ('6', '12162201481684', '期中考试', '3', '40', '200', '2020-12-16 22:01:54');
INSERT INTO `tiku` VALUES ('7', '12162201544110', '期中考试', '2', '40', '200', '2020-12-16 22:02:00');
INSERT INTO `tiku` VALUES ('8', '12162202001463', '期中考试', '1', '40', '200', '2020-12-16 22:02:05');

-- ----------------------------
-- Table structure for `xueke`
-- ----------------------------
DROP TABLE IF EXISTS `xueke`;
CREATE TABLE `xueke` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xuekemingcheng` varchar(255) NOT NULL COMMENT '学科名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xueke
-- ----------------------------
INSERT INTO `xueke` VALUES ('1', '数学', '2020-12-16 21:56:10');
INSERT INTO `xueke` VALUES ('2', '语文', '2020-12-16 21:56:17');
INSERT INTO `xueke` VALUES ('3', '英语', '2020-12-16 21:56:22');

-- ----------------------------
-- Table structure for `xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) NOT NULL COMMENT '学号',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `xueke` int(10) unsigned NOT NULL COMMENT '学科',
  `banji` int(10) unsigned NOT NULL COMMENT '班级',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(50) NOT NULL COMMENT '身份证',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `xuesheng_xueke_index` (`xueke`),
  KEY `xuesheng_banji_index` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('1', '001', '001', ' 小明', '男', '2', '5', '55655656625', '023@qq.com', '225221255120125', 'upload/1608187146727.jpg', '2020-12-16 22:32:33');
INSERT INTO `xuesheng` VALUES ('2', '002', '002', '小清', '女', '3', '1', '56255635326', '151@qq.com', '452523232633223', 'upload/1608129201244.jpg', '2020-12-16 22:33:22');
INSERT INTO `xuesheng` VALUES ('3', '003', '003', '小米', '女', '2', '1', '65623565656', '32623@qq.com', '562623636633563', 'upload/1608187882384.jpg', '2020-12-17 14:51:23');
