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

/* Top Earners */ 
SELECT salary * months AS max_salary, COUNT(employee_id)
FROM Employee GROUP BY max_salary 
ORDER BY max_salary DESC LIMIT 1;

/*Weather Observation Station 2*/
SELECT ROUND(SUM(LAT_N),2) AS lat, ROUND(SUM(LONG_W),2) AS lon
FROM station;

/*Weather Observation Station 13 */
SELECT TRUNCATE(SUM(LAT_N),4) FROM station WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

/*Weather Observation Station 14*/
SELECT TRUNCATE(MAX(LAT_N),4) FROM station WHERE LAT_N < 137.2345;

/*Weather Observation Station 15*/
SELECT ROUND(LONG_W,4) FROM station WHERE LAT_N = (SELECT MAX(LAT_N) FROM station WHERE LAT_N < 137.2345);

/*Weather Observatio Station 16*/
SELECT ROUND(LAT_N,4) FROM station WHERE LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1;

/*Weather Observation Station 17*/
SELECT ROUND(LONG_W,4) FROM station WHERE LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1;

/*Weather Observation Station 18*/
SELECT ROUND((ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W))),4) FROM station;

/*Weather Observation Station 19*/
SELECT ROUND(SQRT(POW(MIN(LAT_N) - MAX(LAT_N),2) + POW(MIN(LONG_W) - MAX(LONG_W),2)),4) FROM station;

/*Weather Observation Station 20*/
SELECT ROUND(st.LAT_N,4) FROM station st WHERE 
(SELECT COUNT(LAT_N) FROM station WHERE LAT_N < st.LAT_N) = (SELECT COUNT(LAT_N) FROM station WHERE LAT_N > st.LAT_N); 