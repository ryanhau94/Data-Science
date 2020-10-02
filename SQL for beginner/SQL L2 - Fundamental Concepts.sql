/*
SOL Essential Training
test.db
*/

CREATE TABLE IF NOT EXISTS test (
    a INTEGER, -- each line "name type" is a column declaration
    b TEXT, 
    c TEXT -- no comma for the last item
    -- this is known as "Data/Table schema"
);

INSERT INTO test VALUES (1, 'abc', 'hah');
INSERT INTO test VALUES (3, 'xyz', 'hei');
INSERT INTO test VALUES (9, 'Three square', '3^2');
-- insert incomplete row and the unspecified column will be NULL by default
INSERT INTO test (a, c) VALUES (-1, 'Ha!');
-- insert a rwo without any data
INSERT INTO test DEFAULT VALUES;
-- insert data selected from another table
INSERT INTO test (a, b, c) SELECT id, name, description FROM item;

-- delete all columns where a=3
-- once deleted, the data cannot be easily recovered
DELETE FROM test WHERE a = 3;

-- NULL is lack of value, so it is incorrect to write down the following expression
SELECT * FROM test WHERE b = NULL;
-- the correct way to do this should be
SELECT * FROM test WHERE b IS NULL;

DROP TABLE IF EXISTS test;

CREATE TABLE IF NOT EXISTS test (
    id INTEGER PRIMARY KEY, -- define an id column
    -- note that there is no standard way of defining the id column
    a INTEGER NOT NULL, -- one can use NOT NULL key words to avoid a column being NULL
    b TEXT DEFAULT 'default', -- the DEFAULT keywords assigns the given value to a NULL column when inserted
    c TEXT UNIQUE, -- the unique constraint requires distinct values at different row
    -- note that repeated NULL may be exempt from the unique constraint depending on the system specification
    d TEXT UNIQUE NOT NULL -- different constraints can be combined
);
-- different database may have other constraints available

-- the id column get an integer automatically
INSERT INTO test (a, d) VALUES (555, 'five');
INSERT INTO test (a, d) VALUES (123, 'this');

-- add a new column to table, all rows get NULL
-- all the above column constraints can be applied here
ALTER TABLE test ADD e TEXT;

SELECT * FROM test;