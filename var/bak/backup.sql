-- Mysql Backup of n2n7_demo
-- Date 2017-02-17T22:43:21+01:00
-- Backup by 

DROP TABLE IF EXISTS `ci_article`;
CREATE TABLE `ci_article` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`title` VARCHAR(128) NULL, 
	`description_html` TEXT NOT NULL, 
	`file_image` VARCHAR(255) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_article` (`id`, `title`, `description_html`, `file_image`) 
VALUES ( '4',  'Ich bin ein Artikel',  '<p>Ich habe hier ganz viel Freitext</p>\r\n',  'ciarticle/10502157_4107437220038_4043497836787587512_n10502157_410.jpg');

DROP TABLE IF EXISTS `ci_attachment`;
CREATE TABLE `ci_attachment` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(64) NULL, 
	`description` VARCHAR(255) NULL, 
	`file` VARCHAR(255) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_attachment` (`id`, `name`, `description`, `file`) 
VALUES ( '5',  'Das ist ein Attachment',  'Mit einer Beschreibung dazu',  'ciattachment/Foto.png');

DROP TABLE IF EXISTS `ci_image`;
CREATE TABLE `ci_image` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`caption` VARCHAR(128) NULL, 
	`file_image` VARCHAR(255) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_image` (`id`, `caption`, `file_image`) 
VALUES ( '3',  'Ein Bild, das ich mag',  'ciimage/0002286914-978x1467.jpg');

DROP TABLE IF EXISTS `ci_wysiwyg`;
CREATE TABLE `ci_wysiwyg` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`content_html` TEXT NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_wysiwyg` (`id`, `content_html`) 
VALUES ( '1',  '<p>Ich bin ein Freitext</p>\r\n'),
( '2', '<p>Ich bin Freitext</p>\r\n'),
( '6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In auctor, sapien vel posuere malesuada, ipsum neque sagittis massa, eu laoreet odio tellus nec ligula. Etiam iaculis velit faucibus quam convallis pretium. In eu enim vitae neque tempor sagittis vitae in nisl. Vivamus fermentum turpis nec enim aliquam venenatis. Cras convallis fermentum condimentum. Morbi vitae tortor a tellus posuere scelerisque. Sed non leo et ante laoreet rutrum ut et risus. Nam mattis rhoncus lectus sit amet porta.</p>\r\n\r\n<p>In molestie vel metus et interdum. Suspendisse nec nulla purus. Aenean vel accumsan purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In facilisis porttitor odio, a condimentum magna. Praesent vitae nisi suscipit, vehicula sapien sit amet, consequat eros. Integer ultrices nisl eu felis elementum ornare. Vestibulum eu elit ut magna blandit sagittis a sed neque. Phasellus nec eros semper, bibendum erat quis, sagittis diam. Donec in diam tortor. Morbi sed elit urna. Mauris sapien ipsum, sodales ut quam at, porta posuere ipsum.</p>\r\n\r\n<p>Praesent iaculis, ante ut auctor consequat, leo massa fringilla ante, eleifend vehicula nisl ipsum sit amet odio. Proin a pellentesque metus, vel semper neque. Pellentesque accumsan gravida odio, eu finibus nibh dapibus ut. Sed ullamcorper sit amet quam eu pulvinar. Suspendisse ac felis purus. Cras ut odio iaculis ipsum vehicula condimentum nec a sapien. Duis non mauris suscipit, semper magna id, tristique augue. Morbi sit amet ex a risus volutpat facilisis. Nunc posuere ante ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra, magna non cursus congue, ante nisl rhoncus turpis, ac tincidunt leo nunc vitae libero. Ut sit amet turpis aliquet, porta lectus at, rutrum nunc. Sed lobortis quam tempus dolor varius gravida. Phasellus vitae velit erat.</p>\r\n\r\n<p>Suspendisse posuere neque a risus ornare semper. Maecenas elementum justo quis ante condimentum, porttitor consequat urna volutpat. Aliquam eget elit sit amet lectus pulvinar fermentum et vel tortor. Nulla ultrices id nunc eu sodales. Pellentesque et convallis nibh, vitae condimentum erat. Sed tristique, nibh non vestibulum pretium, tellus diam porta nisl, eget pretium ipsum ipsum in sem. Vestibulum tempor volutpat metus vitae rutrum. Suspendisse tempus porta erat. Duis quis consequat dolor. Proin sed vehicula metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n'),
( '7', '<h2>Hofmänner New Media</h2>\r\n\r\n<p>Stadthausstrasse 65<br />\r\n8400 Winterthur</p>\r\n\r\n<p><a href=\"mailto:info@hnm.ch\">info@hnm.ch</a></p>\r\n');

DROP TABLE IF EXISTS `contact_page_controller`;
CREATE TABLE `contact_page_controller` ( 
	`id` INT NOT NULL, 
	`recipient` VARCHAR(255) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `contact_page_controller` (`id`, `recipient`) 
VALUES ( '5',  NULL);

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`internal_page_id` INT UNSIGNED NULL, 
	`external_url` VARCHAR(255) NULL, 
	`page_content_id` INT UNSIGNED NULL, 
	`subsystem_name` VARCHAR(255) NULL, 
	`online` TINYINT UNSIGNED NOT NULL DEFAULT '1', 
	`in_path` TINYINT NOT NULL DEFAULT '1', 
	`hook_key` VARCHAR(255) NULL, 
	`in_navigation` TINYINT NOT NULL DEFAULT '1', 
	`nav_target_new_window` TINYINT NOT NULL DEFAULT '0', 
	`lft` INT UNSIGNED NOT NULL, 
	`rgt` INT UNSIGNED NOT NULL, 
	`last_mod` DATETIME NULL, 
	`last_mod_by` INT UNSIGNED NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page` (`id`, `internal_page_id`, `external_url`, `page_content_id`, `subsystem_name`, `online`, `in_path`, `hook_key`, `in_navigation`, `nav_target_new_window`, `lft`, `rgt`, `last_mod`, `last_mod_by`) 
VALUES ( '89',  NULL,  NULL,  '1',  NULL,  '1',  '1',  NULL,  '1',  '0',  '1',  '8',  '2017-02-17 18:00:20',  NULL),
( '90', NULL, NULL, NULL, NULL, '1', '1', NULL, '1', '0', '2', '3', '2016-12-23 10:42:53', NULL),
( '91', NULL, NULL, '3', NULL, '1', '1', NULL, '1', '0', '4', '5', '2017-02-17 21:45:35', NULL),
( '92', NULL, NULL, '2', NULL, '1', '1', NULL, '1', '0', '6', '7', '2017-02-17 18:01:59', NULL);

DROP TABLE IF EXISTS `page_content`;
CREATE TABLE `page_content` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`subsystem_name` VARCHAR(255) NULL, 
	`page_controller_id` INT UNSIGNED NOT NULL, 
	`page_id` INT UNSIGNED NULL, 
	`ssl` TINYINT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_content` (`id`, `subsystem_name`, `page_controller_id`, `page_id`, `ssl`) 
VALUES ( '1',  NULL,  '2',  NULL,  '0'),
( '2', NULL, '3', NULL, '0'),
( '3', NULL, '5', NULL, '0');

DROP TABLE IF EXISTS `page_content_t`;
CREATE TABLE `page_content_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`n2n_locale` VARCHAR(5) NOT NULL, 
	`se_title` VARCHAR(70) NULL, 
	`se_description` VARCHAR(255) NULL, 
	`se_keywords` VARCHAR(128) NULL, 
	`page_content_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `page_controller`;
CREATE TABLE `page_controller` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`method_name` VARCHAR(255) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_controller` (`id`, `method_name`) 
VALUES ( '2',  'startPage'),
( '3', 'standardPage'),
( '5', 'contact');

DROP TABLE IF EXISTS `page_controller_t`;
CREATE TABLE `page_controller_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`n2n_locale` VARCHAR(16) NOT NULL, 
	`page_controller_id` VARCHAR(128) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_controller_t` (`id`, `n2n_locale`, `page_controller_id`) 
VALUES ( '1',  'de_CH',  '2'),
( '2', 'de_CH', '3'),
( '3', 'de_CH', '5');

DROP TABLE IF EXISTS `page_controller_t_content_items`;
CREATE TABLE `page_controller_t_content_items` ( 
	`page_controller_t_id` INT UNSIGNED NOT NULL, 
	`content_item_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`page_controller_t_id`, `content_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_controller_t_content_items` (`page_controller_t_id`, `content_item_id`) 
VALUES ( '1',  '1'),
( '1', '2'),
( '1', '3'),
( '1', '4'),
( '1', '5'),
( '2', '6'),
( '3', '7');

DROP TABLE IF EXISTS `page_t`;
CREATE TABLE `page_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`n2n_locale` VARCHAR(12) NULL, 
	`name` VARCHAR(255) NULL, 
	`title` VARCHAR(255) NULL, 
	`path_part` VARCHAR(255) NULL, 
	`page_id` INT UNSIGNED NULL, 
	`active` TINYINT UNSIGNED NOT NULL DEFAULT '1'
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `page_t` ADD INDEX `path_part` (`path_part`);
ALTER TABLE `page_t` ADD INDEX `page_leaf_t_index_1` (`page_id`);

INSERT INTO `page_t` (`id`, `n2n_locale`, `name`, `title`, `path_part`, `page_id`, `active`) 
VALUES ( '91',  'de_CH',  'Home',  NULL,  NULL,  '89',  '1'),
( '92', 'de_CH', 'News', NULL, 'news', '90', '1'),
( '93', 'de_CH', 'Kontakt', NULL, 'kontakt', '91', '1'),
( '94', 'de_CH', 'Über uns', NULL, 'ueber-uns', '92', '1');

DROP TABLE IF EXISTS `rocket_content_item`;
CREATE TABLE `rocket_content_item` ( 
	`id` INT NOT NULL AUTO_INCREMENT, 
	`panel` VARCHAR(32) NOT NULL, 
	`order_index` INT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;

INSERT INTO `rocket_content_item` (`id`, `panel`, `order_index`) 
VALUES ( '1',  'hero',  '20'),
( '2', 'main', '20'),
( '3', 'main', '30'),
( '4', 'main', '40'),
( '5', 'main', '50'),
( '6', 'main', '20'),
( '7', 'aside', '20');

DROP TABLE IF EXISTS `rocket_critmod_save`;
CREATE TABLE `rocket_critmod_save` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`ei_spec_id` VARCHAR(255) NOT NULL, 
	`ei_mask_id` VARCHAR(255) NULL, 
	`name` VARCHAR(255) NOT NULL, 
	`filter_data_json` TEXT NOT NULL, 
	`sort_data_json` TEXT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_critmod_save` ADD UNIQUE INDEX `name` (`name`);
ALTER TABLE `rocket_critmod_save` ADD INDEX `ei_spec_id` (`ei_spec_id`);


DROP TABLE IF EXISTS `rocket_custom_grant`;
CREATE TABLE `rocket_custom_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`custom_spec_id` VARCHAR(255) NOT NULL, 
	`rocket_user_group_id` INT UNSIGNED NOT NULL, 
	`full` TINYINT UNSIGNED NOT NULL DEFAULT '1', 
	`access_json` TEXT NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_custom_grant` ADD UNIQUE INDEX `script_id_user_group_id` (`custom_spec_id`, `rocket_user_group_id`);


DROP TABLE IF EXISTS `rocket_ei_grant`;
CREATE TABLE `rocket_ei_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`ei_spec_id` VARCHAR(255) NOT NULL, 
	`ei_mask_id` VARCHAR(255) NULL, 
	`rocket_user_group_id` INT UNSIGNED NOT NULL, 
	`full` TINYINT UNSIGNED NOT NULL DEFAULT '1'
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_ei_grant` ADD UNIQUE INDEX `script_id_user_group_id` (`rocket_user_group_id`, `ei_spec_id`, `ei_mask_id`);


DROP TABLE IF EXISTS `rocket_login`;
CREATE TABLE `rocket_login` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`nick` VARCHAR(16) NULL, 
	`wrong_password` VARCHAR(32) NULL, 
	`power` ENUM('superadmin','admin','none') NULL, 
	`successfull` TINYINT UNSIGNED NOT NULL, 
	`ip` VARCHAR(15) NOT NULL DEFAULT '', 
	`date_time` DATETIME NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `rocket_login` (`id`, `nick`, `wrong_password`, `power`, `successfull`, `ip`, `date_time`) 
VALUES ( '64',  'super',  NULL,  'superadmin',  '1',  '127.0.0.1',  '2016-12-23 10:29:59'),
( '65', 'super', NULL, 'superadmin', '1', '127.0.0.1', '2017-02-10 15:28:56'),
( '66', 'super', NULL, 'superadmin', '1', '127.0.0.1', '2017-02-17 17:15:09'),
( '67', 'super', NULL, 'superadmin', '1', '127.0.0.1', '2017-02-17 21:37:03');

DROP TABLE IF EXISTS `rocket_user`;
CREATE TABLE `rocket_user` ( 
	`id` INT NOT NULL AUTO_INCREMENT, 
	`nick` VARCHAR(128) NOT NULL, 
	`firstname` VARCHAR(32) NULL, 
	`lastname` VARCHAR(32) NULL, 
	`email` VARCHAR(128) NULL, 
	`power` ENUM('superadmin','admin','none') NOT NULL DEFAULT 'none', 
	`password` VARCHAR(128) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_user` ADD UNIQUE INDEX `nick` (`nick`);

INSERT INTO `rocket_user` (`id`, `nick`, `firstname`, `lastname`, `email`, `power`, `password`) 
VALUES ( '1',  'super',  'Testerich',  'von Testen',  'testerich@von-testen.com',  'superadmin',  '$2a$07$holeradioundholeradioe5FD29ANtu4PChE8W4mZDg.D1eKkBnwq');

DROP TABLE IF EXISTS `rocket_user_access_grant`;
CREATE TABLE `rocket_user_access_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`script_id` VARCHAR(255) NOT NULL, 
	`restricted` TINYINT NOT NULL, 
	`privileges_json` TEXT NOT NULL, 
	`access_json` TEXT NOT NULL, 
	`restriction_json` TEXT NOT NULL, 
	`user_group_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_user_access_grant` ADD INDEX `user_group_id` (`user_group_id`);


DROP TABLE IF EXISTS `rocket_user_group`;
CREATE TABLE `rocket_user_group` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(64) NOT NULL, 
	`nav_json` TEXT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `rocket_user_privileges_grant`;
CREATE TABLE `rocket_user_privileges_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`ei_grant_id` INT UNSIGNED NOT NULL, 
	`ei_command_privilege_json` TEXT NULL, 
	`ei_field_privilege_json` TEXT NULL, 
	`restricted` TINYINT NOT NULL DEFAULT '0', 
	`restriction_group_json` TEXT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `rocket_user_rocket_user_groups`;
CREATE TABLE `rocket_user_rocket_user_groups` ( 
	`rocket_user_id` INT UNSIGNED NOT NULL, 
	`rocket_user_group_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`rocket_user_id`, `rocket_user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`order_index` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `team` (`id`, `order_index`) 
VALUES ( '1',  '10'),
( '2', '20');

DROP TABLE IF EXISTS `team_member`;
CREATE TABLE `team_member` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`firstname` VARCHAR(32) NOT NULL, 
	`lastname` VARCHAR(32) NOT NULL, 
	`phone` VARCHAR(32) NULL, 
	`email` VARCHAR(128) NULL, 
	`foto` VARCHAR(255) NULL, 
	`order_index` INT UNSIGNED NOT NULL, 
	`team_id` INT NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `team_member_t`;
CREATE TABLE `team_member_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`function` VARCHAR(255) NULL, 
	`team_member_id` INT UNSIGNED NULL, 
	`n2n_locale` VARCHAR(12) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `team_member_t` ADD INDEX `team_member_t_index_1` (`team_member_id`);


DROP TABLE IF EXISTS `team_t`;
CREATE TABLE `team_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(32) NOT NULL, 
	`team_id` INT UNSIGNED NOT NULL, 
	`n2n_locale` VARCHAR(8) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `team_t` (`id`, `name`, `team_id`, `n2n_locale`) 
VALUES ( '1',  'Geschäftsleitung',  '1',  'de_CH'),
( '2', 'Mitarbeiter', '2', 'de_CH');

DROP TABLE IF EXISTS `tmpl_page_controller`;
CREATE TABLE `tmpl_page_controller` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `tmpl_page_controller` (`id`) 
VALUES ( '2'),
( '3');

