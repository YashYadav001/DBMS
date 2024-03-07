CREATE DATABASE college;
USE college ;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student VALUES (101,"ANIL",78,"C","PUNE"),
(102,"BHUMIKA",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","DELHI"),
(105,"emanuel",12,"f","DELHI"),
(106,"FARAH",82,"B","DELHI") ;


-- CHANGES ORDER OF THE LIST
SELECT * from student ORDER BY marks DESC LIMIT 12; -- LIMIT ADDS THE LIMIT TO NO OF ROWS DISPLAYED

-- TO GET MAXIMUM MARKS DISPLAYED
SELECT MAX(marks) from student; 
SELECT MIN(marks) from student;  -- shows the minimum data
SELECT COUNT(name) from student;-- shows the no of name/data/count

SELECT city,count(name) from student GROUP BY city ; -- group the data by the same 


SELECT grade,count(name) from student GROUP BY grade ORDER BY name;


SELECT count(name),city from student GROUP BY city HAVING max(marks)>90;

-- order of using clauses a) select b) from c) WHERE d) GROUP BY e) HAVING f) ORDER BY

-- UPDATE QUERY 
SET SQL_SAFE_UPDATES=0;
UPDATE student SET grade="O" WHERE grade="A" ;
SELECT * from student;
UPDATE student SET grade="N" WHERE grade ="F";

-- DELETE QUERY
INSERT INTO student VALUES (110,"ISHANK",1,"F","DELHI");

DELETE from student where marks<35;