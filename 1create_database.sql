CREATE USER user WITH PASSWORD '****'; --create  a user
CREATE DATABASE **** WITH OWNER 'user'; --create a database for a user


----------------------------------------------
--⌨️ Creating tables without constraints


-- CREATE TABLE table_name (
-- 	Column name + data type + constraints(if any)
-- )

-- e.g

CREATE TABLE person (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(6),
	date_of_birth DATE )

-- '\d' for table list
-- '\d + table_name' for table description (shema) 


---------------------------------------------------
-- ⌨️ creating tables with constraints

CREATE TABLE person (
 id BIGSERIAL NOT NULL PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 gender VARCHAR(7),
 date_of_birth DATE NOT NULL,
 email VARCHAR(150) );


----------------------------------------------
-- ⌨️ Inserting records into tables


INSERT INTO person (
 	first_name,
 	last_name,
 	gender,
 	date_of_birth)
VALUES ('Anne', 'Smith', 'FEMALE', DATE '1998-01-09');

INSERT INTO person (
 	first_name,
 	last_name,
 	gender,
 	date_of_birth)
VALUES ('Jake', 'Jones', 'MALE', DATE '1991-01-10', 'jake@gmail.com');

-- **P.S: We do not have to specify the record's id, since the data type is SERIAL. It auto increments as records are being added.


----------------------------------------------

-- visit "www.mockaroo.com" to Generate random data

-----------------------------------------------
