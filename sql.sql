SET SQL_SAFE_UPDATES=0;
CREATE DATABASE data;


USE data ;

CREATE TABLE students (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
grade VARCHAR(1),
city VARCHAR(20)
);


INSERT INTO students VALUES (101,"ANIL",78,"C","PUNE"),
(102,"BHUMIKA",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","DELHI"),
(105,"emanuel",12,"f","DELHI"),
(106,"FARAH",82,"B","DELHI") ;
DROP TABLE students ;

-- ALTER 
ALTER TABLE students ADD COLUMN age int  ;
ALTER TABLE studnets DROP COLUMN age;

-- TRANCATE ( DELETES ALL THE DATA FROM TABLE BUT LEAVES THE TABLE)
TRUNCATE TABLE students;
ALTER TABLE students CHANGE name Full_Name VARCHAR(50); 
SELECT * FROM students ;
DELETE FROM students where marks<80;