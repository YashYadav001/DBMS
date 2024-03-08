SET SQL_SAFE_UPDATES=0;

CREATE DATABASE assignment2 ;
USE assignment2 ;
CREATE TABLE Emp (
    EmpNo INT PRIMARY KEY,
    Ename VARCHAR(50),
    Job VARCHAR(30),
    Salary FLOAT,
    Commission FLOAT,
    DeptNo INT
);

INSERT INTO Emp VALUES (1, 'John', 'Manager', 3000, NULL, 10);
INSERT INTO Emp VALUES (2, 'Alice', 'Clerk', 2500, NULL, 20);
INSERT INTO Emp VALUES (3, 'Bob', 'Salesperson', 2800, 300, 10);
INSERT INTO Emp VALUES (4, 'Sara', 'Clerk', 2200, NULL, 20);
INSERT INTO Emp VALUES (5, 'Mike', 'Salesperson', 3200, 500, 30);

-- Q1) Get employee no and employee name who works in dept no 10 ? 
SELECT EmpNo , Ename FROM Emp WHERE DeptNo = 10 ;

-- Q2) Display the employee names of those clerks whose salary> 2000 ? 
SELECT Ename, Job from Emp WHERE Job ='Clerk' AND Salary >2000 ; -- RECHECK

-- Q3) Display name and job of Salesperson & Clerks ? 
SELECT Ename , Job FROM Emp WHERE Job = 'Salesperson' OR Job='Clerk';

-- Q4) Display all details of employees whose salary between 2000 and 3000 ? 
SELECT * FROM Emp WHERE Salary > 2000 and Salary <3000 ;

-- Q5) Display all details of employees whose dept no is 10,20, or 30 ? 
SELECT * FROM Emp WHERE Deptno IN(10,20,30) ;

-- Q6) Display name of those employees whose commission is NULL ? 
SELECT * FROM Emp WHERE Commission IS NULL ;

-- Q7) Display dept no & salary in ascending order of dept no and with in each dept no salary should be in descending order ? 
SELECT Deptno ,Salary FROM EMP ORDER BY Salary ASC , Deptno DESC ;

-- Q8) Display name of employees having two ‘a’ or ‘A’ chars in the name ? 
SELECT Ename FORM Emp WHERE Ename LIKE '%A%' OR Ename LIKE '%a%' ; 

-- Q9) Display the name of the employees whose second char is ‘b’ or ‘B’ ? 
SELECT Ename FROM Emp WHERE UPPER(SUBSTR(Ename, 2, 1)) = 'B';
