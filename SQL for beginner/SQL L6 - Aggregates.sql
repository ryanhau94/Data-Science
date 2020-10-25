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