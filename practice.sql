CREATE DATABASE HEHEHE ;
USE HEHEHE ;

-- Table: students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    birthdate DATE,
    email VARCHAR(100)
);

-- Table: courses
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credit_hours INT
);

-- Table: student_courses (junction table)
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Inserting sample data into students table
INSERT INTO students VALUES
    (1, 'John Doe', '1990-05-15', 'john.doe@email.com'),
    (2, 'Jane Smith', '1992-08-22', 'jane.smith@email.com'),
    (3, 'Bob Johnson', '1988-03-10', 'bob.johnson@email.com');

-- Inserting sample data into courses table
INSERT INTO courses VALUES
    (101, 'Mathematics', 3),
    (102, 'History', 4),
    (103, 'Computer Science', 5);

-- Inserting sample data into student_courses table
INSERT INTO student_courses VALUES
    (1, 101),
    (1, 102),
    (2, 103),
    (3, 101),
    (3, 103);

-- Select all students enrolled in the "Computer Science" course.
SELECT * FROM students LEFT JOIN student_courses ON students.student_id = student_courses.student_id RIGHT JOIN courses on student_courses.course_id = courses.course_id WHERE courses.course_name = 'Computer Science';


-- Update the email address of the student with student_id 2.
UPDATE students SET email ='jane.smith2@email.com' WHERE student_id = 2 ;

-- Add a new course named "Physics" with 4 credit hours.
INSERT INTO courses (course_id,course_name, credit_hours)VALUES (110,'Physics', 4);

-- Delete the enrollment record for student student_id 1 in the "History" course.
DELETE FROM student_courses WHERE student_id =1 and course_id IN (SELECT course_ID from courses WHERE course_name = 'History' );

-- List all students along with the names of the courses they are enrolled in.
SELECT student_name ,course_name from students LEFT JOIN student_courses ON students.student_id = student_courses.student_id RIGHT JOIN courses on student_courses.course_id = courses.course_id
