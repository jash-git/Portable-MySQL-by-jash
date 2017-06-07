DROP DATABASE IF EXISTS v8;
CREATE DATABASE v8;
USE v8;
CREATE TABLE `apb_door` (
  `id` int(11) NOT NULL,
  `door_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `apb_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `apb_mode` (
  `apb_id` int(11) NOT NULL,
  `apb_name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `apb_id` (`apb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT '0',
  `descript` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `area_detail` (
  `area_id` int(11) NOT NULL,
  `door_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `authorization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `action` int(11) NOT NULL,
  `group_id_for_doors` int(11) DEFAULT NULL,
  `group_id_for_users` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `door_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias_name` varchar(255) DEFAULT NULL,
  `pic` binary(1) DEFAULT NULL,
  `administrator_name` varchar(255) DEFAULT NULL,
  `administrator_tel` varchar(255) DEFAULT NULL,
  `m_liter` int(11) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `factory_date` date DEFAULT NULL,
  `put_up_date` date DEFAULT NULL,
  `break_up_date` date DEFAULT NULL,
  `asset_no` varchar(255) DEFAULT NULL,
  `licence` varchar(255) DEFAULT NULL,
  `parking_space_no` varchar(255) DEFAULT NULL,
  `take_care_tel` varchar(255) DEFAULT NULL,
  `take_care_mobile` varchar(255) DEFAULT NULL,
  `take_care_address` varchar(255) DEFAULT NULL,
  `note` text,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(255) NOT NULL,
  `display` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `pin` varchar(255) NOT NULL DEFAULT 'FFFFFFFFFFFFFFFF',
  `type` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '1',
  `block` int(11) NOT NULL DEFAULT '0',
  `vip` int(11) NOT NULL DEFAULT '0',
  `apb_enable` int(11) NOT NULL DEFAULT '1',
  `apb_mode` int(11) NOT NULL DEFAULT '0',
  `available_date_start` date NOT NULL,
  `available_date_end` date NOT NULL,
  `week_plan` varchar(255) NOT NULL DEFAULT '11111111',
  `access_time_1_start` time NOT NULL DEFAULT '00:00:00',
  `access_time_1_end` time NOT NULL DEFAULT '23:59:00',
  `access_time_2_start` time NOT NULL DEFAULT '00:00:00',
  `access_time_2_end` time NOT NULL DEFAULT '00:00:00',
  `access_time_3_start` time NOT NULL DEFAULT '00:00:00',
  `access_time_3_end` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `card_for_user_car` (
  `card_id` int(11) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  UNIQUE KEY `card_id` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `card_type` (
  `type_id` varchar(255) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



CREATE TABLE `controller` (
  `id` int(11) NOT NULL,
  `sn` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `pic` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `descript` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `department_detail` (
  `dep_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `door` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `controller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `door_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `controller_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `param_enable` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `available_date_start` date DEFAULT NULL,
  `available_date_end` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `employee_date` date DEFAULT NULL,
  `unemployee_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias_name` varchar(255) DEFAULT NULL,
  `pic` binary(1) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `emp_no` varchar(255) DEFAULT NULL,
  `security_id` varchar(255) DEFAULT NULL,
  `passport_id` varchar(255) DEFAULT NULL,
  `office_tel` varchar(255) DEFAULT NULL,
  `home_tel` varchar(255) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `family_address` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `emergency_contactor` varchar(255) DEFAULT NULL,
  `emergency_tel` varchar(255) DEFAULT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
