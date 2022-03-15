-- sql commands - use uppercase for best practice
-- List down the databases inside the DBMS
SHOW DATABASES;

-- create a database
CREATE DATABASE music_db;

-- delete a database
DROP DATABASE music_db;

-- select a specific database
USE music_db;

-- Create tables
-- table columns have the ff format : [column_name] [data_type] [other_options]
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    pssword VARCHAR(50) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    contact_number INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    PRIMARY KEY (id)
    
);