/*
SOL Essential Training
world.db
*/

-- Capitalize key word helps readability
-- When select column, the orders will be reflected in the results
SELECT Name, LifeExpectancy AS "LE"
FROM Country Where Continent = 'Asia'
ORDER BY LifeExpectancy;

-- The orders of the key words matters
SELECT Name AS "Country", Continent, Region
FROM Country WHERE Continent = 'Europe'
ORDER BY Name LIMIT 5 OFFSET 10;

-- Count rows and it only counts the rows with data
SELECT COUNT(*) FROM Country
WHERE Population>1000000 AND Continent = 'Europe';

-- Insert a new row
INSERT INTO Country (Name)
VALUES ('Nowhere');

-- Update a row
UPDATE Country
SET code = 'NWE', SurfaceArea = 0
WHERE Name = 'Nowhere';

-- Delete a row
DELETE FROM Country WHERE Name = 'Nowhere';
