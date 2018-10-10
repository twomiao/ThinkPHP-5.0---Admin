SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `snake_rule`;
CREATE TABLE `snake_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rulename` varchar(155) NOT NULL COMMENT '规则标题',
  `baseurl` varchar(155) NOT NULL COMMENT '采集站点的地址',
  `listurl` varchar(155) NOT NULL COMMENT '列表页地址',
  `ismore` tinyint(1) NOT NULL COMMENT '是否批量采集 1 否 2是',
  `start` int(11) DEFAULT '0' COMMENT '列表页开始地址',
  `end` int(11) DEFAULT '0' COMMENT '列表页结束地址',
  `titlediv` varchar(155) NOT NULL COMMENT '标题父层地址',
  `title` varchar(155) NOT NULL COMMENT '文章标题内容规则',
  `titleurl` varchar(155) NOT NULL COMMENT '标题地址规则',
  `body` varchar(155) NOT NULL COMMENT '文章内容规则',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

insert into `snake_rule`(`id`,`rulename`,`baseurl`,`listurl`,`ismore`,`start`,`end`,`titlediv`,`title`,`titleurl`,`body`,`addtime`) values('1','脚本之家php文章采集','http://www.jb51.net','http://www.jb51.net/list/list_15_1.htm','1','0','0','.artlist dl dt a','text','href','#content','1471244221');
insert into `snake_rule`(`id`,`rulename`,`baseurl`,`listurl`,`ismore`,`start`,`end`,`titlediv`,`title`,`titleurl`,`body`,`addtime`) values('2','thinkphp官网文章规则','http://www.thinkphp.cn','http://www.thinkphp.cn/code/system/p/1.html','1','0','0','.extend ul li .hd a','text','href','.wrapper .detail-bd','1471244221');
insert into `snake_rule`(`id`,`rulename`,`baseurl`,`listurl`,`ismore`,`start`,`end`,`titlediv`,`title`,`titleurl`,`body`,`addtime`) values('3','果壳网科学人采集规则','http://www.guokr.com','http://www.guokr.com/scientific/','1','0','0','#waterfall .article h3 a','text','href','.document div:eq(0)','1471247277');
