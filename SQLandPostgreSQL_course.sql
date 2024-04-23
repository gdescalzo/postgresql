-- CREATE TABLE
-- keyword (CREATE TABLE)
-- identifiers (cities)
CREATE TABLE cities(
	name VARCHAR(50),
	country VARCHAR(50),
	population INTEGER,
	area INTEGER
)

CREATE TABLE phones(
	name VARCHAR(50),
	manufacturer VARCHAR(50),
	price INTEGER,
	units_sold INTEGER
);

-- DELETE TABLE
DROP TABLE cities;

-- SHOW ALL TABLES CREATED
SELECT * FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog' AND schemaname != 'information_schema';
SELECT tablename FROM pg_catalog.pg_tables WHERE schemaname NOT IN ('pg_catalog','information_schema');

-- SHOW DATA FROM A TABLE
SELECT * FROM cities;

-- SHOW SPECIFIC COLUMS
SELECT name, country FROM cities;

-- INSERT VALUES INTO A TABLE
INSERT INTO cities(name,country,population,area)
VALUES
('Delhi','India',2812533, 2240),
('Shanghai','China',224445,2334);

INSERT INTO phones(name, manufacturer, price, units_sold)
VALUES
('N1280','Nokia',199,1925),
('Iphone 4', 'Apple', 399, 9436),
('Galaxy S', 'Samsung', 299, 2359),
('S5620', 'Samsung', 250, 2385);

-- DATA TRANSFORMATION
SELECT name, population / area AS density FROM cities;

SELECT name, price * units_sold AS revenue FROM phones;

-- OPERATORS (join two strings)
SELECT name || ', ' || country AS location FROM cities;
SELECT CONCAT(name, ', ', country) AS location FROM cities;

-- OPERATORS (upper case)
SELECT UPPER(CONCAT(name, ', ', country)) AS location FROM cities;
