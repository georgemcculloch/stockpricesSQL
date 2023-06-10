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