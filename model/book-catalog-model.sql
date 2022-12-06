
--
-- This database stores information about the books and the registered users un the platform
--

CREATE DATABASE IF NOT EXISTS `book_catalog`/*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `book_catalog`;

--
-- Table structure for table `book` 
--

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
book_id int NOT NULL AUTO_INCREMENT,
isbn int NOT NULL,
title varchar(100) NOT NULL,
authors varchar(200) NOT NULL,
publisher varchar(100) NOT NULL,
premiere DATE NOT NULL,
pages int NOT NULL,
plot varchar(2000) NOT NULL,
book_image varchar(1000),
PRIMARY KEY(`book_id`,`isbn`)
);

--
-- Table structure for table `user` 
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user`(
user_id int NOT NULL AUTO_INCREMENT,
category varchar(20) DEFAULT 'flat' NOT NULL,
mail varchar(320) NOT NULL,
username varchar(320) NOT NULL,
user_image varchar(1000),
PRIMARY KEY(`user_id`)
);

--
-- Table structure for table `user_book_collection` 
--

DROP TABLE IF EXISTS `user_book_collection`;

CREATE TABLE `user_book_collection`(
user_id int,
book_id int,
PRIMARY KEY (`user_id`,`book_id`),
CONSTRAINT `FK_user_id` FOREIGN KEY (`user_id`) REFERENCES user(`user_id`), 
CONSTRAINT `FK_book_id` FOREIGN KEY (`book_id`) REFERENCES book(`book_id`)
);

