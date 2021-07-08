
-- ⌨️ Limit, Offset & Fetch


SELECT * FROM table LIMIT 5; --selects first 5 records (rows) from table

SELECT column FROM person LIMIT 5; --selects first 5 records (rows) in column from table

SELECT * FROM person OFFSET 5; --selects all records from table starting from 5th record (row 5).

SELECT * FROM person OFFSET 6 LIMIT 5; --selects first 5 records (rows) in table starting from 6th record (row 6)

SELECT * FROM person OFFSET 6 FETCH 5; --selects first 5 records (rows) in table starting from 6th record (row 6)

-- ***FETCH and LIMIT perform the same function, LIMIT is widely used, but FETCH is the official SQL standard


-----------------------------------------------
-- ⌨️ IN

SELECT * FROM person WHERE country IN ('Country1', 'Country2', 'Country3', 'Country4'); --selects all records with countries included in the list passed.


-----------------------------------------------
-- ⌨️ BETWEEN

SELECT * FROM person WHERE date_of_birth BETWEEN '1998-05-29' AND '2021-01-01'; --selects all records with date_of_birth between the range of values passed

-- ***start range must be lower than end range


----------------------------------------------
-- ⌨️ Like And iLike

SELECT * FROM person WHERE email LIKE '%.com';

SELECT * FROM person WHERE email NOT LIKE '%.com';

SELECT * FROM person WHERE email LIKE '%@%.com';

-- ***ILIKE performs the same function as LIKE but without being case sensitive


----------------------------------------------
-- ⌨️ Group By


SELECT country, count(*) FROM person GROUP BY country; --selects all countries in table and counts the number of records in each country represents

SELECT country, count(*) FROM person GROUP BY country ORDER BY country; --selects and orders all countries in table and counts the number of records in each country represents


-----------------------------------------------
-- ⌨️ Group By HAVING

SELECT country, count(*) FROM person GROUP BY country HAVING COUNT(*) > 5 ORDER BY country; --orders all countries in table, counts the number of records in each country represents and selects those with counts > 5

SELECT make, model, price FROM car GROUP BY make, price, model ORDER BY make --selects the make, model and price (in that order), groups records by it's model (model occours more frequent than make, hence overrides), then sorts it by make first then price (as stated in the ORDER statement) 
