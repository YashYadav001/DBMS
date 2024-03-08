SET SQL_SAFE_UPDATES=0;
-- 1. Create table Student (Rno, Name, DOB, Gender, Class, College,City, Marks) 

CREATE DATABASE assignment1 ;
USE assignment1 ;

CREATE TABLE Student(
rno INT PRIMARY KEY,
name VARCHAR(50),
dob DATE,
gender VARCHAR(10),
class VARCHAR(20),
college VARCHAR(50),
city VARCHAR(20),
marks int
);

-- 2. Insert 5 records in student table
INSERT INTO Student VALUES (102383071, 'YASH YADAV', '2004-06-02', 'Male', '12', 'Thapar', 'Patiala', 99.0);
INSERT INTO Student VALUES (102202202, 'NIKHIL', '2005-11-12', 'Male', '12', 'VIT', 'Vellore', 92.0);
INSERT INTO Student VALUES(102203700, 'AVISEK', '2003-11-24', 'Male', '12', 'IIT', 'Bombay', 85.5);
INSERT INTO Student VALUES (102203100, 'Shivansh', '2002-05-23', 'Male', '12', 'Thapar', 'Patiala', 71.0);
INSERT INTO Student VALUES (102203018, 'Nishnat', '2003-11-12', 'Male', '12', 'Thapar', 'Patiala', 90.5);

-- 3. Display the information of all the students 
SELECT * FROM student ;


-- 5.Display Rno, Name and Class information of ‘Patiala’students.
SELECT rno,name,class from Student where city='Patiala';

-- 6. Display information on ascending order of marks 
SELECT * from Student ORDER BY marks ASC ;

-- 7. Change the marks of Rno 102203100 to 89. 
UPDATE Student SET marks= 89 WHERE rno = 102203100 ; -- retry

 -- 8. Change the name and city of Rno 102202202. 
 UPDATE Student SET name = 'GOLU' , city = 'Patna' WHERE rno= 102202202;
 
 -- 9. Delete the information of ‘BOMBAY’ city records
 DELETE FROM Student WHERE city = 'Bombay';
 
-- 10. Delete the records of student where marks<30. 
DELETE FROM Student WHERE marks<30 ;
