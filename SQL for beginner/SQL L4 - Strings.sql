/*
SOL Essential Training
*/

-- 'strings in standard SQL'
    -- 'Here''s a single quote mark.'
    -- Concatenation: 'This' || '&' || 'that'
-- "strings in MySQL"
    -- Concatenation: CONCAT('This', '&', 'that')
/*
Some common string functions:
    SUBSTR(string, start, length);
    LENGTH(string);
    TRIM(string, substr);
    UPPER(string);
    LOWER(string);
Note that, the functions depend on system specifications
*/

-- return the length of an input string
SELECT LENGTH('string');

-- example with world.db
SELECT Name, Length(Name) AS Len
    FROM City
    ORDER BY Len DESC, Name
    ;
    
-- return a substring
SELECT SUBSTR('string', 2, 3);

-- example with album.db
-- unpack data from a text column
SELECT SUBSTR(released, 1, 4) AS Year, SUBSTR(released, 6, 2) AS Month, SUBSTR(released, 9, 2) AS Day
    FROM album
    ORDER BY released
    ;
    
-- trim string
SELECT LTRIM('  string   ');
SELECT RTRIM(' . string.  ..', '.');

--fold case
SELECT LOWER('StRing');
SELECT UPPER('stRINg');