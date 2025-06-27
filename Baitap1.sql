CREATE DATABASE baitap1;

USE baitap1;

CREATE TABLE Students(
	id	int auto_increment,
	full_name VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL,
	gender varchar(255)  CHARACTER SET ascii,
	age int,
	city varchar(255),
	weight float,
	
	primary  key(id)
);

INSERT INTO Students(full_name,gender,age,city,weight)
VALUE ('Nguyen Thanh Nhan','Nam',19,'Can Tho',56.5674);

INSERT INTO Students(full_name,gender,age,city,weight)
VALUE ('Phạm Thu Hương','Nu',20,'Vinh Long',72.456);