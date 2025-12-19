create database wine;


use wine;
CREATE TABLE wine_red (
    fixed_acidity FLOAT,
    volatile_acidity FLOAT,
    citric_acid FLOAT,
    residual_sugar FLOAT,
    chlorides FLOAT,
    free_sulfur_dioxide INT,
    total_sulfur_dioxide INT,
    density FLOAT,
    pH FLOAT,
    sulphates FLOAT,
    alcohol FLOAT,
    quality INT
);


CREATE TABLE wine_white (
    fixed_acidity FLOAT,
    volatile_acidity FLOAT,
    citric_acid FLOAT,
    residual_sugar FLOAT,
    chlorides FLOAT,
    free_sulfur_dioxide INT,
    total_sulfur_dioxide INT,
    density FLOAT,
    pH FLOAT,
    sulphates FLOAT,
    alcohol FLOAT,
    quality INT
);

SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';

SHOW VARIABLES LIKE 'secure_file_priv';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/winequality-red.csv'
INTO TABLE wine_red
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/winequality-white.csv'
INTO TABLE wine_white
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



select count(*) from wine;

Local instance MySQL80;

ALTER USER 'root'@'localhost'
IDENTIFIED BY 'root123';
FLUSH PRIVILEGES;


select * from wine_white;
SELECT
    SUM(CASE WHEN alcohol IS NULL THEN 1 ELSE 0 END) AS alcohol_nulls
FROM wine_white;

SELECT
    SUM(CASE WHEN fixed_acidity IS NULL THEN 1 ELSE 0 END) AS fixed_acidity_nulls,
    SUM(CASE WHEN volatile_acidity IS NULL THEN 1 ELSE 0 END) AS volatile_acidity_nulls,
    SUM(CASE WHEN citric_acid IS NULL THEN 1 ELSE 0 END) AS citric_acid_nulls,
    SUM(CASE WHEN residual_sugar IS NULL THEN 1 ELSE 0 END) AS residual_sugar_nulls,
    SUM(CASE WHEN chlorides IS NULL THEN 1 ELSE 0 END) AS chlorides_nulls,
    SUM(CASE WHEN free_sulfur_dioxide IS NULL THEN 1 ELSE 0 END) AS free_sulfur_dioxide_nulls,
    SUM(CASE WHEN total_sulfur_dioxide IS NULL THEN 1 ELSE 0 END) AS total_sulfur_dioxide_nulls,
    SUM(CASE WHEN density IS NULL THEN 1 ELSE 0 END) AS density_nulls,
    SUM(CASE WHEN pH IS NULL THEN 1 ELSE 0 END) AS pH_nulls,
    SUM(CASE WHEN sulphates IS NULL THEN 1 ELSE 0 END) AS sulphates_nulls,
    SUM(CASE WHEN alcohol IS NULL THEN 1 ELSE 0 END) AS alcohol_nulls,
    SUM(CASE WHEN quality IS NULL THEN 1 ELSE 0 END) AS quality_nulls
FROM wine_white;



select * from wine_red;

select * from wine_white;


