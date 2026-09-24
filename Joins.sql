CREATE DATABASE JOIN_QUERY;
USE JOIN_QUERY;
-- INNER JOIN --
-- 1ST TABLE--
CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(30),
    dept_id INT
);

INSERT INTO Employee VALUES
(101, 'Abhi', 1),
(102, 'Rahul', 2),
(103, 'Priya', 1),
(104, 'Amit', 3);

SELECT * FROM Employee;
-- 2ND TABLE--
CREATE TABLE Department (
    dept_id INT,
    dept_name VARCHAR(30)
);

INSERT INTO Department VALUES
(1, 'Computer'),
(2, 'IT'),
(3, 'Mechanical');

SELECT * FROM Department;
-- Apply INNER JOIN --

SELECT Employee.emp_name, Department.dept_name
FROM Employee
INNER JOIN Department
ON Employee.dept_id = Department.dept_id;

-- RIGHT JOIN --
SELECT Employee.emp_name, Department.dept_name
FROM Employee
RIGHT JOIN Department
ON Employee.dept_id = Department.dept_id;

-- LEFT JOIN --
SELECT Employee.emp_name, Department.dept_name
FROM Employee
LEFT JOIN Department
ON Employee.dept_id = Department.dept_id;

-- FULL OUTER JOIN --
SELECT Employee.emp_name, Department.dept_name
FROM Employee
LEFT JOIN Department
ON Employee.dept_id = Department.dept_id

UNION

SELECT Employee.emp_name, Department.dept_name
FROM Employee
RIGHT JOIN Department
ON Employee.dept_id = Department.dept_id;	