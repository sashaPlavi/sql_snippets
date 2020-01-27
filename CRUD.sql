'List available databases:'

show databases; 
'The general command for creating a database:'

CREATE DATABASE database_name; 

'A specific example:'

CREATE DATABASE soap_store; 

'To drop a database:'

DROP DATABASE database_name;

USE <database name>;
 
-- example:
USE dog_walking_app;
 
SELECT database();
--creating tables
CREATE TABLE tablename
  (
    column_name data_type,
    column_name data_type
  );
CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );

  --checking
  SHOW TABLES;
 
SHOW COLUMNS FROM tablename;
 
DESC tablename;
--Dropping Tables
DROP TABLE <tablename>; 

--A specific example:

DROP TABLE cats; 

--Inserting Data

--The "formula":

INSERT INTO table_name(column_name) VALUES (data);
-- example:

INSERT INTO cats(name, age) VALUES ('Jetson', 7);

--checking
SELECT * FROM cats; 
--multiple inserts
INSERT INTO table_name 
            (column_name, column_name) 
VALUES      (value, value), 
            (value, value), 
            (value, value)
--when inserting data that is not valid

SHOW WARNINGS; 

 --Define a new  table with NOT NULL constraints:
 CREATE TABLE cats2
  (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
  );
 -- Define a table with a DEFAULT name specified:

CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
 -- Define a table with a PRIMARY KEY constraint:

CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );

  --Various Simple SELECT statements:
SELECT * FROM cats; 

SELECT name FROM cats; 

SELECT age FROM cats; 

SELECT cat_id FROM cats; 

SELECT name, age FROM cats; 

SELECT cat_id, name, age FROM cats; 

--CODE: Introduction to WHERE
Select by age:

SELECT * FROM cats WHERE age=4; 

Select by name:

SELECT * FROM cats WHERE name='Egg'; 

Notice how it deals with case:

SELECT * FROM cats WHERE name='egG'; 

--CODE: Introduction to Aliases

SELECT cat_id AS id, name FROM cats;
 
SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;
 
DESC cats;

--CODE: Updating Data
Change tabby cats to shorthair:

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'; 
Another update:

UPDATE cats SET age=14 WHERE name='Misty'; 

--CODE: DELETING DATA
DELETE FROM cats WHERE name='Egg';
 
SELECT * FROM cats;
 
SELECT * FROM cats WHERE name='egg';
 
DELETE FROM cats WHERE name='egg';
 
SELECT * FROM cats;
 
DELETE FROM cats;