⌨️ SELECT 

SELECT * FROM person; --selects all columns from person

SELECT first_name FROM person; --selects all values in first_name column from person table

SELECT column1, column2 FROM person; --selects all values from the two columns from person table

SELECT CONCAT (first_name, ' ', last_name) AS fullname, email, country FROM person ORDER BY fullname; --selects


----------------------------------------------
⌨️ Order By

SELECT * FROM person ORDER BY country DESC OFFSET(354) LIMIT(8); --select first 8 records from person table in descending order of 'country' column starting from the 354th value (up to the next 362nd value)


-----------------------------------------------
⌨️ Distinct

SELECT DISTINCT column FROM table ORDER BY column --selects unique values represented in the column (no duplicates)


------------------------------------------------
⌨️ Where Clause and AND ( sort of conditional statement)

SELECT * FROM person WHERE gender = 'MALE' --selcts all records of MALE gender

SELECT * FROM person WHERE gender = 'MALE' AND country = 'Nigeria' --selects all records of male gender who is from Nigeria.

SELECT * FROM person WHERE gender = 'MALE' AND country = 'Nigeria' OR country = 'England' --selects all records of male gender who is either from Nigeria or England

