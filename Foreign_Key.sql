use college;

-- FIRST TABLE  Create Parent Table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Department VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');

-- SECOND TABLE  Create Child Table with FOREIGN KEY
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Employee VALUES
(1, 'Rahul', 101),
(2, 'Amit', 102),
(3, 'Priya', 101);

INSERT INTO Employee VALUES (4, 'Neha', 105);   -- ❌ This will give a Foreign Key constraint error, because department 105 does not exist in Department.

SELECT * FROM Department;
SELECT * FROM Employee;