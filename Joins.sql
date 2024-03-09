-- Create the "employees" table
CREATE DATABASE HEHE;
USE HEHE;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

-- Insert sample data into the "employees" table
INSERT INTO employees VALUES
    (1, 'John', 'Doe', 1, 60000.00),
    (2, 'Jane', 'Smith', 2, 70000.00),
    (3, 'Bob', 'Johnson', 1, 55000.00),
    (4, 'Alice', 'Williams', 3, 80000.00),
    (5, 'Charlie', 'Brown', 2, 65000.00);

-- Create the "departments" table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
-- Insert sample data into the "departments" table
INSERT INTO departments VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');
    
    SELECT * FROM employees ;
    SELECT * FROM departments ;
    
-- Write a query to retrieve the names of employees and their department names.
SELECT first_name ,last_name,department_name  FROM employees INNER JOIN departments ON departments.department_id = employees.department_id ;
-- Display the employee ID, first name, last name, and salary for all employees in the IT department.
SELECT employee_id , first_name , last_name, salary FROM employees INNER JOIN departments ON departments.department_id = employees.department_id WHERE employees.department_id =2 ;


-- Show a list of all employees and their department names, including those who are not assigned to any department.
SELECT * FROM employees LEFT JOIN departments ON employees.department_id = departments.department_id;

-- Retrieve the names of all departments and the total number of employees in each department.
SELECT department_name , count(employee_id) FROM departments LEFT JOIN employees ON departments.department_id= employees.department_id GROUP BY departments.department_name; -- USE GROUPING

-- List all departments and their employees, including departments without any employees.
SELECT * FROM departments RIGHT JOIN employees ON departments.department_id = employees.department_id ;
-- Display the employee ID, first name, last name, and salary for all employees, including those without a department.
SELECT employee_id,first_name, last_name,salary,department_name FROM departments RIGHT JOIN employees ON departments.department_id = employees.department_id ;
-- REMEMBER NOT TO ADD THE SAME THING THAT UR USING TO JOIN TWO TABLES

-- Retrieve a list of all employees and their department names, including unmatched rows from both tables.
-- SELECT employee_id ,first_name ,last_name,department_name,salary FROM employees FULL JOIN departments ON  employees.department_id = departments.department_id;
-- Retrieve a list of all employees and their department names, including unmatched rows from both tables.
SELECT employees.employee_id, employees.first_name, employees.last_name, COALESCE(departments.department_name, 'N/A') AS department_name, employees.salary
FROM employees
FULL JOIN departments ON employees.department_id = departments.department_id;

-- Show the names of all departments and the total number of employees in each department, including departments without employees.
SELECT department_name , count(employees.department_id) FROM employees RIGHT JOIN departments ON departments.department_id = employees.department_id GROUP BY departments.department_name ;
