#1
SELECT name, continent, population FROM world

#2
SELECT name FROM world
WHERE population > 200000000

#3
SELECT name, gdp/population FROM world
WHERE population > 200000000

#4
SELECT name, population/1000000 FROM world
WHERE continent = 'South America'

#5
SELECT name,population FROM world
WHERE name IN ('France','Germany','Italy')

#6
SELECT name FROM world
WHERE name LIKE'%United%'

#7
SELECT name, population, area
FROM world
WHERE population > 250000000 OR area > 3000000

#8
SELECT name, population, area
FROM world 
WHERE population > 250000000 XOR area > 3000000

#9
select name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2) 
FROM world
WHERE continent = 'South America'

#10
select name, ROUND(gdp/population,-3) from world
  where gdp > 1000000000000

#11
SELECT name, LENGTH(name), continent, LENGTH(continent), capital, LENGTH(capital)
  FROM world
 WHERE name LIKE 'G%'

 #12
 SELECT name, LEFT(name,1), capital
FROM world

#13
SELECT name
   FROM world
WHERE name LIKE 'B%'
  AND name NOT LIKE '%a%'