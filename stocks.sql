CREATE TABLE student.gm_aapl(
    date DATE,
    open DECIMAL,
    high DECIMAL,
    low DECIMAL,
    close DECIMAL,
    volume BIGINT,
    Name VARCHAR
);

CREATE TABLE student.gm_amzn(
    date DATE,
    open DECIMAL,
    high DECIMAL,
    low DECIMAL,
    close DECIMAL,
    volume BIGINT,
    Name VARCHAR
);

CREATE TABLE student.gm_goog(
    date DATE,
    open DECIMAL,
    high DECIMAL,
    low DECIMAL,
    close DECIMAL,
    volume BIGINT,
    Name VARCHAR
);

CREATE TABLE student.gm_msft(
    date DATE,
    open DECIMAL,
    high DECIMAL,
    low DECIMAL,
    close DECIMAL,
    volume BIGINT,
    Name VARCHAR
);

SELECT
    *
FROM gm_aapl;

SELECT
    *
FROM gm_amzn;

SELECT
    *
FROM gm_goog;

SELECT
    *
FROM gm_msft;

-- ANSWER THESE FOR EACH COMPANY
-- average daily volume?
-- highest closing price?
-- something with some maths
-- something HAVING something CONCAT something SUBSTRING something
-- GROUP BY aggregate something

-- THEN ANSWER THESE WITH JOINS
-- which company had the highest open/close price on set date
-- average volume comparison by name on set date
-- average daily range
-- percentage change im tired ill word this better later


-- apple
/* insert amazing(ly average) code here */


-- amazon
/* insert amazing code here */


-- google
/* insert amazing code here */


-- microsoft
/* insert amazing code here */


-- joins and comparisons
/* insert amazing code here */

