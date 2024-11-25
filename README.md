# MYSQL
MYSQL hackerRank all questions and answers with Notes


# HackerRank questions and answer

 1. Revising the Select Query I
```
select * 
from city 
where population > 100000 and countrycode = 'USA';
```
2. Revising the Select Query II
```
select name 
from city
where population >120000 and countrycode = 'USA';
```
3. select all
```
select * 
from city ;
```
4. select by ID
```
select *
from city 
where id = 1661;
```
5. Japanese Cities' Attributes
```
select * 
from city 
where countrycode = 'JPN';
```
6. Japanese Cities' name
```
select name 
from city 
where countrycode = 'JPN';
```
7. Weather Observation Station 1
```
select city , state 
from station ;
```
8. Weather Observation Station 3
```
select distinct city 
from station 
where id%2 = 0 
order by city asc;

```
9.  Weather Observation Station 4
```
select  count(city) - count(distinct city) 
from station;
```
10. Weather Observation Station 6
```
SELECT city
FROM station
WHERE city LIKE 'a%' 
   OR city LIKE 'e%' 
   OR city LIKE 'i%' 
   OR city LIKE 'o%' 
   OR city LIKE 'u%' 
   OR city LIKE 'A%' 
   OR city LIKE 'E%' 
   OR city LIKE 'I%' 
   OR city LIKE 'O%' 
   OR city LIKE 'U%';
```
11.  Weather Observation Station 7
```
SELECT distinct city
FROM station
WHERE city LIKE '%a' 
   OR city LIKE '%e' 
   OR city LIKE '%i' 
   OR city LIKE '%o' 
   OR city LIKE '%u' 
   OR city LIKE '%A' 
   OR city LIKE '%E' 
   OR city LIKE '%I' 
   OR city LIKE '%O' 
   OR city LIKE '%U';
```
12.  Weather Observation Station 8 
```
SELECT DISTINCT CITY 
FROM STATION 
WHERE SUBSTR(CITY, 1, 1) IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u') AND 
SUBSTR(CITY, LENGTH(CITY), 1) IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
```
