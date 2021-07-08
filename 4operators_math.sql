
-- ⌨️ Math Operators

SELECT x > y --checks greater if than, returns t(true) or f(false)

SELECT x < y --checks if greater than, returns t(true) or f(false)

SELECT x >= y --checks if greater than OR equal to, returns t(true) or f(false)

SELECT x <= y --checks if less than OR equal to, returns t(true) or f(false)
 
-- <> --NOT equal operator
SELECT x <> y --checks if NOT equal to, returns t(true) or f(false)

-- ***can be used on any data type.
-- ***it is case sensitive.


-----------------------------------------------
-- ⌨️ Calculating Min, Max & Average


SELECT MIN(column) FROM table;--finds the minimum value of specified column

SELECT MAX(column) FROM table;--finds the maximum value of specified column

SELECT AVG(column) FROM table; --finds the average of specified column

SELECT ROUND(AVG(column)) FROM table; --rounds up resulting average to the nearest whole number

SELECT ROUND(AVG(column), 2) FROM table; --rounds up resulting avereage to the nearest two decimal points

-----------------------------------------------
-- ⌨️ Sum

SELECT SUM(column) FROM car; --sums up entire records in the specified column

SELECT make, SUM(price) FROM car GROUP BY make; --group records into each unique make and sums up the prices of records in each group.


-----------------------------------------------
-- ⌨️ Basics of Arithmetic Operators

SELECT id, make, model, price, ROUND(price * 0.10, 2), price - ROUND(price * 0.10) AS discounted_price FROM car;

