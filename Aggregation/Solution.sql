/* Revising Aggregations - The Count Function */ 
SELECT COUNT(ID) FROM city WHERE population > 100000;

/* Revising Aggregations - The Sum Function */
SELECT SUM(population) FROM city WHERE district = 'California';

/* Revising Aggregations - Averages */
SELECT AVG(population) FROM city WHERE district = 'California';

/* Average Population */
SELECT FLOOR(AVG(population)) FROM city;

/* Japan Population */
SELECT SUM(population) FROM city WHERE countrycode = 'JPN';

/* Population Density Difference */
SELECT MAX(population) - MIN(population) FROM city; 

/* The Blunder */
SELECT CEIL(AVG(salary) - AVG(CAST(REPLACE(salary,'0','') AS UNSIGNED))) FROM EMPLOYEES;