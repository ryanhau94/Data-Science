/*
Fundamental numeric types
    - Integer
        - INTEGER(precision)
        - DECIMAL(precision, scale)
            - MONEY(precision, scale)
    - Real
        - REAL(precision)
        - FLOAT(precision)
*/

-- TYPEOF function returns the type of expressions
SELECT TYPEOF(1+1);
SELECT TYPEOF(1+1.0);
SELECT TYPEOF('str' + 'ing');
SELECT TYPEOF('str' || 'ing');

SELECT 1/2;
SELECT 1.0/2;
SELECT 17/5, 17%5;

-- CAST converts type
SELECT CAST(1 AS REAL)/2;

-- round
SELECT ROUND(2.5555);
SELECT ROUND(2.55555, 3);