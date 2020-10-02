/*
SOL Essential Training
world.db
*/

-- Capitalize key word helps readability
-- When select column, the orders will be reflected in the results
SELECT Name, LifeExpectancy AS "LE"
FROM Country Where Continent = 'Asia'
ORDER BY LifeExpectancy DESC, Name ASC;

-- The orders of the key words matters
SELECT Name AS "Country", Continent, Region
FROM Country WHERE Continent = 'Europe'
ORDER BY Name LIMIT 5 OFFSET 10;

-- Count rows and it only counts the rows with data
SELECT COUNT(*) FROM Country
WHERE (Population>1000000 OR Population<10000) AND Continent = 'Europe';

-- LIKE keyword helps with string pattern
-- % can be any string
SELECT Name, Continent, Population FROM Country
WHERE Name LIKE '%island%' ORDER BY Population;
-- _ can only be a single character
SELECT Name, Continent, Population FROM Country
WHERE Name LIKE '_h%' ORDER BY Population;

-- IN allows you to match the value from a list
SELECT Name, Continent, Population FROM Country
WHERE Continent IN ('Europe', 'Asia') ORDER BY Population;

-- get only unique values
SELECT DISTINCT Continent  FROM Country;

-- CASE statement allows conditional expressions
SELECT
CASE Continent WHEN 'Asia' THEN 'true' ELSE 'false' END as testA,
CASE WHEN Population>100000 THEN 'larger' ELSE 'small' END as testB
FROM Country;

-- Insert a new row
INSERT INTO Country (Name)
VALUES ('Nowhere');

-- Update a row
UPDATE Country
SET code = 'NWE', SurfaceArea = 0
WHERE Name = 'Nowhere';

-- Delete a row
DELETE FROM Country WHERE Name = 'Nowhere';