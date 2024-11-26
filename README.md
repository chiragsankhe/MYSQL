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
13. Weather Observation Station 9
```
SELECT DISTINCT city
FROM station
WHERE city NOT LIKE 'a%' 
  AND city NOT LIKE 'e%' 
  AND city NOT LIKE 'i%' 
  AND city NOT LIKE 'o%' 
  AND city NOT LIKE 'u%' 
  AND city NOT LIKE 'A%' 
  AND city NOT LIKE 'E%' 
  AND city NOT LIKE 'I%' 
  AND city NOT LIKE 'O%' 
  AND city NOT LIKE 'U%';
```
14. Weather Observation Station 10
```
SELECT DISTINCT city
FROM station
WHERE city NOT LIKE '%a' 
  AND city NOT LIKE '%e' 
  AND city NOT LIKE '%i' 
  AND city NOT LIKE '%o' 
  AND city NOT LIKE '%u' 
  AND city NOT LIKE '%A' 
  AND city NOT LIKE '%E' 
  AND city NOT LIKE '%I' 
  AND city NOT LIKE '%O' 
  AND city NOT LIKE '%U';
```
15. Weather Observation Station 11
```
    SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(CITY, 1, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u')
   OR SUBSTR(CITY, LENGTH(CITY), 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
```  
16. Weather Observation Station 12
```
select distinct city 
from station 
where substr(city,1,1) not in ('a','e','i','o','u','A','E','I','O','U')
and substr(city,-1) not in ('a','e','i','o','u','A','E','I','O','U');
```
17. Higher Than 75 Marks
```
SELECT name
FROM students
WHERE marks > 75
ORDER BY SUBSTR(name, -3), id ASC;
```
18. Employee Names
```    
select name 
from employee
order by name asc;
```
19. employees salaries
```
select name 
from employee 
where salary > 2000 and months <10 
order by employee_id asc;
```
20. Type of Triangle
```
SELECT 
CASE 
WHEN A + B <= C OR B + C <= A OR C + A <= B THEN 'Not A Triangle' 
WHEN A = B AND B = C THEN 'Equilateral' 
WHEN A = B OR B = C OR C = A THEN 'Isosceles' 
ELSE 'Scalene' 
END AS TriangleType 
FROM TRIANGLES;
```
21.Revising Aggregations - The Count Function
```
select count(*)
from city 
where population >100000;
```
22. Revising Aggregations - the sum function
```
select sum(population)
from city 
where District = 'California';
```
23. Revising Aggregations - Averages
```
 select avg(population) 
from city 
where District = 'california' ;
```
24. average population
```
select floor(avg(population) )
from city ;
```
25. JAPAN POPULATION
```
select sum(population)
from city 
where countrycode = 'JPN';
```
26. POPULATION DENSITY DEFFRENCE
 ```
    SELECT MAX(POPULATION) - MIN(POPULATION) 
FROM CITY;
```
27. top earns
```
SELECT 
    MAX(salary * months) AS max_total_earnings,
    COUNT(*) AS num_employees_with_max
FROM Employee
WHERE salary * months = (
    SELECT MAX(salary * months) FROM Employee
);
```
28. Weather Observation Station 2
```
select round (sum(lat_n),2) , round(sum(long_w),2)
from station ;
```

New Companies
```
SELECT 
    c.company_code,
    c.founder,
    COUNT(DISTINCT l.lead_manager_code) AS total_lead_manager,
    COUNT(DISTINCT s.senior_manager_code) AS total_senior_manager,
    COUNT(DISTINCT m.manager_code) AS total_manager,
    COUNT(DISTINCT e.employee_code) AS total_employee
FROM 
    company c
LEFT JOIN 
    employee e ON c.company_code = e.company_code
LEFT JOIN 
    lead_manager l ON e.lead_manager_code = l.lead_manager_code
LEFT JOIN 
    senior_manager s ON e.senior_manager_code = s.senior_manager_code
LEFT JOIN 
    manager m ON e.manager_code = m.manager_code
GROUP BY 
    c.company_code, c.founder
ORDER BY 
    c.company_code;
```
