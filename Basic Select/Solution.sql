/* Revising the Select Query - I */ 
SELECT * 
FROM city 
WHERE population > 100000 AND CountryCode = "USA"; 

/* Revising the Select Query - II */ 
SELECT NAME 
FROM city 
WHERE population > 120000 AND CountryCode = "USA"; 

/* Select All */ 
SELECT * FROM city;

/* Select by ID */ 
SELECT * FROM city WHERE id = 1661; 

/* Japanese Cities Attributes */ 
SELECT * FROM city WHERE CountryCode  = "JPN";

/* Japanese Cities' Names */ 
SELECT NAME FROM city WHERE CountryCode  = "JPN";

/* Weather Observation Station 1 */ 
SELECT city, state FROM station; 

/* Weather Observation Station 3 */
SELECT DISTINCT city FROM station WHERE ID%2 = 0;

/* Weather Observation Station 4*/
SELECT COUNT(city) - COUNT(DISTINCT city) FROM station; 

/* Weather Observation Station 5 */ 
SELECT city, LENGTH(city) AS min_length FROM station ORDER BY min_length ASC, city ASC LIMIT 1;
SELECT city, LENGTH(city) AS max_length FROM station ORDER BY max_length DESC, city ASC LIMIT 1;

