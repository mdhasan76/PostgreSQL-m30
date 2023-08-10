CREATE DATABASE module31;

-- ## Create Department table
CREATE TABLE Department(
    deptId SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- ## Drop Dept table;
DROP TABLE Departmen; -- department name mistake


--## insert data in 
insert into department values (1, 'Accountings');

INSERT INTO DEPARTMENT (dept_name) VALUES   ('Human Resources'),
    ('Finance'),
    ('Marketing'),
    ('Engineering'),
    ('Sales'),
    ('Research and Development');

-- ## See Department Data;
SELECT * FROM department;

-- ## Delete a department from department table
DELETE FROM DEPARTMENT WHERE deptid = 1;

-- ## Create Employee table
CREATE TABLE Employee(
    empId SERIAL PRIMARY KEY,
    emp_name VARCHAR(30) NOT NULL,
    dept_id INT,
    CONSTRAINT fk_constraint_dept
        FOREIGN KEY (dept_id)
        REFERENCES Department(deptId)
);


-- ## Insert employee data in Employee table 
INSERT INTO Employee VALUES (2, 'Nayeem' ,1);

-- ## see employee data
SELECT * FROM employee;

-- ## delete a employee from employee table
DELETE FROM EMPLOYEE WHERE EMPID = 2;


-- ___________________________________________________ Courses Table __________________________________________________
CREATE TABLE COURSES(
    coursesId SERIAL PRIMARY KEY,
    courses_name VARCHAR(50),
    description VARCHAR(250),
    publish_date DATE
);

SELECT * FROM courses;

-- insert into courses (courses_name, description, publish_date) VALUES
-- ('Introduction to Programming', 'Learn the basics of programming with this introductory course.', '2023-01-15'),
--     ('Web Development Fundamentals', 'Explore the foundations of web development and create your own websites.', '2023-03-10'),
--     ('Data Science Essentials', 'Discover key concepts in data science and start analyzing data effectively.', '2023-02-28'),
--     ('Graphic Design Masterclass', 'Enhance your graphic design skills and create stunning visual content.', '2023-04-22'),
--     ('Business Management 101', 'Learn the fundamentals of business management and develop your leadership skills.', '2023-05-05');

DELETE FROM courses WHERE coursesid > 8;

UPDATE courses 
SET courses_name = 'P Hero Web Dev',
description = 'and condition'
WHERE coursesId > 7 OR coursesid< 9;



CREATE TABLE Employees_data (
    employee_id SERIAL PRIMARY KEY, 
    name VARCHAR(30),
    email TEXT NOT NULL,
    salary INTEGER not null,
    joining_date DATE not null,
    dept_id INTEGER NOT NULL,
    constraint fk_deptId FOREIGN KEY(dept_id) REFERENCES Department(deptId)
    );


-- INSERT INTO employees_data (name, email, salary, joining_date, dept_id) VALUES 
--      ('Zahid Ahmed', 'zahid.ahmed@example.com', 66000, '2022-01-15', 1);


    SELECT * FROM employees_data 
    WHERE salary > 72000 OR salary = 50000;


-- ## sort data by desc
    SELECT * FROM employees_data ORDER BY salary DESC;

-- ## sort data by asc
    SELECT * from employees_data ORDER BY joining_date ASC;

    --## pagination 
    SELECT employee_id, name, salary from employees_data LIMIT 10 OFFSET 5;


    -- ## Get height salary from a table
    SELECT * from employees_data ORDER BY salary DESC LIMIT 1 OFFSET 2;

    -- ## update employee data 
    UPDATE employees_data SET salary = 87350 WHERE employee_id = 107;


    SELECT * from employees_data WHERE name LIKE '__dia%';

    SELECT * from employees_data  WHERE employee_id IN (77, 89,1, 74);

    select * from employees_data WHERE employee_id BETWEEN 23 AND 30;


    -- ## joinig table 
    SELECT employee_id, name, dept_id, dept_name 
    from employees_data 
    INNER JOIN department on dept_id = department.deptId LIMIT 10;

    SELECT * from department;



