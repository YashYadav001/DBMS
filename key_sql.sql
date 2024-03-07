CREATE DATABASE colleges;
USE colleges ;

CREATE TABLE students (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
grade VARCHAR(1),
city VARCHAR(20)
);

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50));

INSERT INTO dept VALUES (101,"ENGLISH"),(102,"IT");
UPDATE dept SET id=103 WHERE id=102;
SELECT * FROM dept ;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
foreign key (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher VALUES(101,"ADAM",101),(102,"EVE",102);

SELECT * 
 teacher;

INSERT INTO student VALUES (101,"ANIL",78,"C","PUNE"),
(102,"BHUMIKA",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","DELHI"),
(105,"emanuel",12,"f","DELHI"),
(106,"FARAH",82,"B","DELHI") ;