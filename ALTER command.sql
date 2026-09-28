create database college1;
use college1;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(20),
city varchar (50)
);

insert into student
(rollno, name , marks, grade, city)
values
(101,"anil",78,"C","pune"),
(102,"bhumika",93,"A","mumbai"),
(103,"cheten",85,"B","mumbai"),
(104,"dhruv",96,"A","delhi"),
(105,"emanuel",12,"F","delhi"),
(106,"farah",82,"B","delhi");

SELECT * FROM student;

-- ALTER command
-- ADD COLUMN
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MODIFY COLUMN
ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

insert into student
(rollno,name,marks,stu_age)
values
(107,"abc",68,100);

-- CHANGE COLUMN
ALTER TABLE student 
CHANGE age stu_age INT;

-- DROP COLUMN
ALTER TABLE student
DROP COLUMN stu_age;

-- RNAME COLUM 
ALTER TABLE student 
RENAME TO stu;

ALTER TABLE stu 
RENAME TO student;


