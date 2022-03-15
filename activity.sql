CREATE DATABASE enrollment_db;

CREATE TABLE students (
	id INT NOT NULL AUTO_INCREMENT,
    student_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)  
);

CREATE TABLE teachers (
	id INT NOT NULL AUTO_INCREMENT,
    teacher_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)  
);

