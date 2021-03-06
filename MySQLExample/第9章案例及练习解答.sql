-- 创建数据库
CREATE DATABASE index_test;

-- 在index_test数据库中创建表，必须先选择该数据库
USE index_test;

-- 创建表
CREATE TABLE test_table1
(
id  		INT(11)  PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
name  		CHAR(100) NOT NULL,
address  	CHAR(100) NOT NULL,
description CHAR(100) NOT NULL,
UNIQUE INDEX UniqIdex(id),
INDEX MultiColIdx(name(20), address(30)),
INDEX ComIdx(description(30))
);


-- 创建表test_table2,存储引擎为MyISAM
CREATE TABLE test_table2
(
id  		INT(11) PRIMARY KEY NOT NULL UNIQUE,
firstname 	CHAR(50) NOT NULL,
middlename  CHAR(50) NOT NULL,
lastname  	CHAR(50) NOT NULL,
birth  		DATE NOT NULL,
title  		CHAR(100)
)ENGINE = MyISAM;

-- 使用ALTER TABLE语句在表test_table2的birth字段上，建立名称为ComDateIdx的普通索引
ALTER TABLE test_table2 ADD INDEX ComDataIdx(birth);


-- 使用ALTER TABLE语句在表test_table2的id字段上，添加名称为UniqIdx2的唯一索引，并以降序排列
ALTER TABLE test_table2 ADD UNIQUE INDEX UniqIdx2(id DESC);


-- 使用CREATE INDEX在firstname、middlename、lastname等3个字段上建立名称为MultiColIdx2的组合索引
CREATE INDEX MultiColIdx2 ON test_table2(firstname,middlename,lastname);


-- 使用ALTER TABLE 语句删除表test_table1中的名称为UniqIdx的唯一索引

ALTER TABLE test_table1 DROP INDEX UniqIdex;


-- 使用DROP INDEX语句删除表test_table2中名称为MultiColIdx2的组合索引
DROP INDEX MultiColIdx2 ON test_table2;


-- 创建表writers
CREATE TABLE writers
(
w_id  		SMALLINT(11) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
w_name  	VARCHAR(255) NOT NULL,
w_address  	VARCHAR(255),
w_age  		CHAR(2) NOT NULL,
w_note  	VARCHAR(255),
UNIQUE INDEX UniqIdx(w_id)
)ENGINE = MyISAM;

-- 使用ALTER TABLE语句在w_name字段上建立名称为nameIdx的普通索引
ALTER TABLE writers ADD INDEX nameIdx(w_name);


-- 使用CREATE INDEX语句在w_address和w_age字段上建立名称为MultiIdx的组合索引
CREATE INDEX MultiIdx ON writers(w_address, w_age);


-- 使用CREATE INDEX语句在w_note字段上建立名称为FTIdx的全文索引
CREATE FULLTEXT INDEX FTIdx ON writers(w_note);


-- 删除名称为FTIdx的全文索引
DROP INDEX FTIdx ON writers;


-- 创建名称为sch的数据表
CREATE TABLE sch
(
id  	INT(10) PRIMARY KEY NOT NULL UNIQUE,
name 	VARCHAR(50) NOT NULL,
glass  	VARCHAR(50) NOT NULL
);

INSERT INTO sch VALUES
(1, 'xiaoming', 'glass1'),
(2, 'xiaojun', 'glass2');
































