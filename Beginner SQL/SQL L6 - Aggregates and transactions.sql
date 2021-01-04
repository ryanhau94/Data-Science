/*
Aggregates are data drawn from multiple rows.
For example, COUNT() is an example of aggregate function.
*/

-- world.db
SELECT Region, COUNT(*) AS Counts
    FROM Country
    GROUP BY Region
    ORDER BY Counts DESC, Region
    ;

-- count all rows with non-NULL value
SELECT COUNT(Population) FROM Country;

-- return the average value
-- Similarly, we have MIN, MAX and SUM functions
SELECT AVG(Population) FROM Country;
SELECT Region, SUM(Population)
    FROM Country
    GROUP BY Region
    ;

-- the DISTINCT key words can be applied to any aggregate function
-- in Oracle db, there's a similar key word UNIQUE
SELECT COUNT(HeadOfState) FROM Country;
SELECT COUNT(DISTINCT HeadOfState) FROM Country;

-- album.db
--HAVING can be used as a filter. It is similar to WHERE, but it acts on aggregated data
SELECT a.title AS Album, COUNT(t.track_number) as Tracks
    FROM track AS t
    JOIN album AS a
        ON a.id = t.album_id
    WHERE a.artist = 'The Beatles'
    GROUP BY a.id
    HAVING Tracks >= 2
    ORDER BY Tracks DESC, Album

/*
Transaction improves the reliability and performance for larger and complex operations.
A transaction is a group of operation that are handled as one unit of work.
*/

-- test.db
CREATE TABLE widgeInventory (
    id INTEGER PRIMARY KEY,
    description TEXT,
    onhand INTEGER NOT NULL
);

CREATE TABLE widgeSales (
    id INTEGER PRIMARY KEY,
    inv_id INTEGER,
    quan INTEGER,
    price INTEGER
);

INSERT INTO widgeInventory (description, onhand) VALUES ('rock', 25);
INSERT INTO widgeInventory (description, onhand) VALUES ('paper', 25);
INSERT INTO widgeInventory (description, onhand) VALUES ('scissors', 25);

-- MySQL usually uses "START TRANSACTION" and "COMMIT"
BEGIN TRANSACTION;
INSERT INTO widgeSales (inv_id, quan, price) VALUES (1, 5, 500);
UPDATE widgeInventory SET onhand = (onhand-5) WHERE id=1;
END TRANSACTION;
-- One can use ROLLBACK to roll back previous changes

-- TRANSACTION can also improve performance
-- For example, inserting thousands of rows may take seconds. Put if it's done within TRANSACTION, it can be much faster.

-- How triggers are used and implemented vary significantly from system to system.