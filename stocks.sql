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

-- THEN ANSWER THESE WITH JOINS
-- which company had the highest open/close price on set date
-- average volume comparison by name on set date
-- average daily range
-- percentage change im tired ill word this better later

SELECT
    min(date) as min_date,
    max(date) as max_date,
    min(open) as min_open,
    max(open) as max_open,
    min(high) as min_high,
    max(high) as max_high,
    min(low) as min_low,
    max(low) as max_low,
    min(close) as min_close,
    max(close) as max_close,
    min(volume) as min_volume,
    max(volume) as max_volume,
    name
FROM (
    SELECT name, date, open, high, low, close, volume
    FROM gm_aapl
    UNION ALL
    SELECT name, date, open, high, low, close, volume
    FROM gm_amzn
    UNION ALL
    SELECT name, date, open, high, low, close, volume
    FROM gm_goog
    UNION ALL
    SELECT name, date, open, high, low, close, volume
    FROM gm_msft
     ) as outlier_tables
GROUP BY
    name;

-- insightful insights are that yes there do be some outliers there do

-- apple
/* insert amazing(ly average) code here */
-- average daily volume and average volume all time
SELECT
    avg(volume) as average_daily_volume,
    date,
    name
FROM
    gm_aapl
GROUP BY
    date,
    name;

SELECT
    round(avg(volume), 2) as average_volume_all_time,
    name
FROM
    gm_aapl
GROUP BY
    name;

-- highest closing price

SELECT
    max(close) as highest_closing_price,
    name,
    date
FROM
    gm_aapl
GROUP BY
    name,
    date
LIMIT 1;

-- display average closing price where the price is over 150 alongside the date

SELECT
    avg(close) as average_close_price,
    date
FROM
    gm_aapl
GROUP BY
    date
HAVING
    avg(close) > 150
ORDER BY
    average_close_price DESC;

-- amazon
/* insert amazing code here */


-- google
/* insert amazing code here */


-- microsoft
/* insert amazing code here */


-- joins and comparisons
/* insert amazing code here */

SELECT
    date,
    max(high - low) as stock_volatility
FROM (
    SELECT date, high, low
    FROM gm_aapl
    UNION ALL
    SELECT date, high, low
    FROM gm_amzn
    UNION ALL
    SELECT date, high, low
    FROM gm_goog
    UNION ALL
    SELECT date, high, low
    FROM gm_msft
        ) AS stock_data
GROUP BY
    date
ORDER BY
    stock_volatility DESC
LIMIT 5;

SELECT date, name, volume
FROM (
    SELECT date, name, volume,
           ROW_NUMBER() OVER (PARTITION BY date ORDER BY volume DESC) AS row_num
    FROM (
        SELECT date, volume, 'AAPL' AS name FROM gm_aapl
        UNION ALL
        SELECT date, volume, 'AMZN' AS name FROM gm_amzn
        UNION ALL
        SELECT date, volume, 'GOOG' AS name FROM gm_goog
        UNION ALL
        SELECT date, volume, 'MSFT' AS name FROM gm_msft
    ) AS stock_data
) AS ranked_data
WHERE row_num = 1;



