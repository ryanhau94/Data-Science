/*
SOL Essential Training 
*/

CREATE TABLE IF NOT EXISTS test (
    a INTEGER, -- each line "name type" is a column declaration
    b TEXT -- no comma for the last item
    -- this is known as "Data/Table schema"
);

INSERT INTO test VALUES (1, 'abc');
INSERT INTO test VALUES (3, 'xyz');
INSERT INTO test VALUES (9, 'Three square');
SELECT * FROM test;

DROP TABLE IF EXISTS test;