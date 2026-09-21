CREATE DATABASE college;
use college;

create table student(
rollno int primary key,
name varchar(50),
age int
);

insert into student
(rollno,name,age)
values
(101,"Abhi",21),
(102,"Jai",24),
(103,"Aman",22);

insert into student values (104,"arjun",18);     -- short form for inserting values -- 

select * from student;

-- PQ_1 --
create database XYZ;
use XYZ;

CREATE TABLE EMPLOYEE(
ID INT PRIMARY KEY,
NAME VARCHAR(50),
SALARY  INT
);

INSERT INTO EMPLOYEE 
(ID,NAME,SALARY)
VALUES 
(1,"ADAM",25000),
(2,"ABC",30000),
(3,"SDF",40000);

SELECT * FROM EMPLOYEE


















