create database For_key;
USE for_key;

-- -- 
CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    course_name VARCHAR(50),
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO student_course
VALUES (1, 101, 'Java');

INSERT INTO student_course
VALUES (1, 102, 'Python');

INSERT INTO student_course
VALUES (2, 101, 'Java');

INSERT INTO student_course
VALUES (2, 103, 'SQL');

SELECT * FROM student_course;

