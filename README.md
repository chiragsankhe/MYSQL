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
