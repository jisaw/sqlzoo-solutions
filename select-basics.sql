/*
First section of sqlzoo, SELECT basics
*/
--#1
/*
The example shows the population of 'France'. Strings should be in 'single quotes';

Show the population of Germany
*/
SELECT population
FROM world
WHERE name = 'Germany'

--#2
/*
The query shows the population density population/area for each country where the area is over 5,000,000 km2.
Show the name and per capita gdp: gdp/population for each country where the area is over 5,000,000 km2
*/
SELECT name, gdp/population
FROM world
WHERE area > 5000000

--#3
/*
Where to find some very small, very rich countries.
We use AND to ensure that two or more conditions hold true.

The example shows the countries where the population is small and the gdp is high.
Show the name and continent where the area is less than 2000 and the gdp is more than 5000000000
*/
SELECT name , continent
FROM world
WHERE area < 2000
AND gdp > 5000000000

--#4
/*
Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Ireland', 'Iceland' and 'Denmark'

Show the name and the population for 'Denmark', 'Finland', 'Norway', 'Sweden'
*/
SELECT name, population
FROM world
WHERE name IN ('Norway', 'Sweden', 'Finland',
                 'Denmark')
--#5
/*
What are the countries beginning with G? The word LIKE permits pattern matching - % is the wildcard. The examples shows countries beginning with D

Show each country that begins with G
*/
SELECT name
FROM world
WHERE name LIKE 'G%'

--#6
/*
Which countries are not too small and not too big? Show the country and the area for countries with an area between 200000 and 250000. BETWEEN allows range checking - note that it is inclusive.

Show the area in 1000 square km. Show area/1000 instead of area
*/
SELECT name, area/1000
FROM world
WHERE area BETWEEN 200000 AND 250000
