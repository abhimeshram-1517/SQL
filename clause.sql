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

-- select in detail --
select name, marks,grade from student;
select * from student;
SELECT city FROM student; 
SELECT distinct city FROM student; 

select * from student WHERE marks>80;
select * from student WHERE grade>= 'C';

-- Operators--
select * from student WHERE marks>80 AND city= 'mumbai';
select * from student WHERE marks>80 OR city= 'mumbai';
select * from student WHERE marks BETWEEN 80 AND 90;
select * from student WHERE city IN ("Delhi","Mumbai");
select * from student WHERE city NOT IN ("delhi","mumbai");

-- LIMIT CLAUSE --
select * from student LIMIT 3;  -- Limit clause
select * from student WHERE marks> 80 LIMIT 3;  

-- ORDER BY CLAUSE --
select * from student ORDER BY city ASC;
select * from student ORDER BY city DESC;
select * from student ORDER BY marks DESC;
select * from student ORDER BY marks DESC LIMIT 3;

-- Aggregate Function --
select marks from student;
select MAX(marks) from student;
select MIN(marks) from student;
select AVG(marks) from student;
select count(name) from student;
select SUM(marks) from student;

-- Group By Claus --
select city, count(rollno) 
from student 
group by city;

select city,name , count(rollno) 
from student 
group by city,name;

-- Having clause --
select city , count(rollno)
from student 
group by city
having MAX(marks)>90;
