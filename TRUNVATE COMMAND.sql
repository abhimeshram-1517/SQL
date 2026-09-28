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

-- TRUNCATE COMMAND 

TRUNCATE TABLE student;
