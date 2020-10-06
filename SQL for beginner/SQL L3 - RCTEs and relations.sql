/*
SOL Essential Training
test.db
*/

/*
An example of "for loop" in SQLite
SQLite does not support for loop, but it can alternatively realized through Recursive Common Table Expressions (RCTEs).
Official documentation: https://sqlite.org/lang_with.html#recursivecte
*/
CREATE TABLE setA (id INTEGER);

WITH RECURSIVE 
  for(ii) AS (VALUES(1) UNION ALL SELECT ii+1 FROM for WHERE ii <= 9) 
INSERT INTO setA (id) SELECT ii FROM for; 

SELECT * FROM setA;

DROP TABLE setA;

-- The followings are example of JOIN
CREATE TABLE left ( id INTEGER, description TEXT );
CREATE TABLE right ( id INTEGER, description TEXT );

INSERT INTO left VALUES ( 1, 'left 01' );
INSERT INTO left VALUES ( 2, 'left 02' );
INSERT INTO left VALUES ( 3, 'left 03' );
INSERT INTO left VALUES ( 4, 'left 04' );
INSERT INTO left VALUES ( 5, 'left 05' );
INSERT INTO left VALUES ( 6, 'left 06' );
INSERT INTO left VALUES ( 7, 'left 07' );
INSERT INTO left VALUES ( 8, 'left 08' );
INSERT INTO left VALUES ( 9, 'left 09' );

INSERT INTO right VALUES ( 6, 'right 06' );
INSERT INTO right VALUES ( 7, 'right 07' );
INSERT INTO right VALUES ( 8, 'right 08' );
INSERT INTO right VALUES ( 9, 'right 09' );
INSERT INTO right VALUES ( 10, 'right 10' );
INSERT INTO right VALUES ( 11, 'right 11' );
INSERT INTO right VALUES ( 11, 'right 12' );
INSERT INTO right VALUES ( 11, 'right 13' );
INSERT INTO right VALUES ( 11, 'right 14' );

SELECT * FROM left;
SELECT * FROM right;

SELECT l.description AS left, r.description AS right
  FROM left AS l
  JOIN right AS r ON l.id = r.id
  ;
