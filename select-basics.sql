/*
First section of sqlzoo, SELECT basics
*/
--#1
SELECT population
FROM world
WHERE name = 'Germany'

--#2
SELECT name, gdp/population
FROM world
WHERE area > 5000000

--#3
SELECT name , continent
FROM world
WHERE area < 2000
AND gdp > 5000000000

--#4
SELECT name, population
FROM world
WHERE name IN ('Norway', 'Sweden', 'Finland',
                 'Denmark')
--#5
SELECT name
FROM world
WHERE name LIKE 'G%'

--#6
SELECT name, area/1000
FROM world
WHERE area BETWEEN 200000 AND 250000
