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

/* Weather Observation Station 6 */
SELECT DISTINCT city FROM station WHERE city REGEXP '^[aeiouAEIOU].*';

/* Weather Observation Station 7 */ 
SELECT DISTINCT city FROM station WHERE city REGEXP '[aeiou]$';

/* Weather Observation Station 8 */ 
SELECT DISTINCT city FROM station WHERE city REGEXP '^[aeiouAEIOU].*[aeiou]$';

/* Weather Observation Station 9 */
SELECT DISTINCT city FROM station WHERE city NOT REGEXP '^[aeiouAEIOU].*';

/* Weather Observation Station 10 */
SELECT DISTINCT city FROM station WHERE city NOT REGEXP '[aeiou]$';

/* Weather Observation Station 11 */
SELECT DISTINCT city FROM station WHERE city NOT REGEXP '^[aeiouAEIOU].*[aeiou]$';

/* Weather Observation Station 12 */ 
SELECT DISTINCT city FROM station WHERE city NOT REGEXP '^[aeiouAEIOU].*' AND city NOT REGEXP '[aeiou]$';

/* Higher than 75 marks */ 
SELECT NAME FROM students WHERE marks > 75 
ORDER BY RIGHT(NAME, 3), id; 

/* Employee names */
SELECT NAME FROM employee ORDER BY NAME ASC;

/* Employee Salaries */ 
SELECT NAME FROM Employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id; 