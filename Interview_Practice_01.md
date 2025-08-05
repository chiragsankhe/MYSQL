
This document includes practical MySQL queries using a single `employees` table to help beginners learn SQL commands and database operations.

---

## 📁 Database and Table Setup

```sql
CREATE DATABASE company;

CREATE TABLE employees(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30),
  department VARCHAR(50),
  salary DECIMAL(10,2),
  join_date DATE,
  city VARCHAR(30)
);

INSERT INTO employees(name, department, salary, join_date, city)
VALUES 
  ('Alice', 'HR', 35000.00, '2022-01-15', 'Mumbai'),
  ('Bob', 'IT', 55000.00, '2021-03-12', 'Delhi'),
  ('Charlie', 'Finance', 45000.00, '2020-07-10', 'Bangalore'),
  ('David', 'IT', 60000.00, '2019-09-23', 'Mumbai'),
  ('Eve', 'Marketing', 40000.00, '2023-05-30', 'Chennai');
🔹 Basic Queries
sql
Always show details

Copy
-- 1. Show all the data in the employees table.
SELECT * FROM employees;

-- 2. Select only the names and salaries of all employees.
SELECT name, salary FROM employees;

-- 3. Find the total number of employees.
SELECT COUNT(id) FROM employees;

-- 4. Find the employee with the highest salary.
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

-- 5. Find the employees who joined after 2021.
SELECT * FROM employees WHERE join_date >= '2022-01-01';

-- 6. Find employees who belong to the IT department.
SELECT * FROM employees WHERE department = 'IT';

-- 7. Find employees who live in Mumbai or Delhi.
SELECT * FROM employees WHERE city = 'Mumbai' OR city = 'Delhi';

-- 8. Show all employees whose salary is between 40000 and 60000.
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

-- 9. Sort the employees by salary in descending order.
SELECT * FROM employees ORDER BY salary DESC;

-- 10. Show only distinct department names.
SELECT DISTINCT(department) FROM employees;
🔹 Filtering, Aggregation, and Functions
sql
Always show details

Copy
-- 11. Find the average salary of all employees.
SELECT AVG(salary) FROM employees;

-- 12. Find the minimum and maximum salary.
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;

-- 13. Count the number of employees in each department.
SELECT COUNT(id), department FROM employees GROUP BY department;

-- 14. Find employees whose names start with ‘A’.
SELECT name FROM employees WHERE name LIKE 'A%';

-- 15. Show the names in uppercase.
SELECT UPPER(name) FROM employees;
🔹 Advanced WHERE Clauses
sql
Always show details

Copy
-- 16. Find employees whose city name ends with ‘i’.
SELECT * FROM employees WHERE city LIKE '%i';

-- 17. Show employees who joined in the year 2020.
SELECT * FROM employees WHERE join_date BETWEEN '2020-01-01' AND '2020-12-31';

-- 18. Find all employees whose name has exactly 5 letters.
SELECT name FROM employees WHERE CHAR_LENGTH(name) = 5;

-- 19. Find employees not from the IT department.
SELECT * FROM employees WHERE department != 'IT';

-- 20. Show employees whose name contains the letter 'e'.
SELECT * FROM employees WHERE name LIKE '%e%';
🔹 GROUP BY and HAVING
sql
Always show details

Copy
-- 21. Group employees by department and show total salary in each.
SELECT SUM(salary), department FROM employees GROUP BY department;

-- 22. Find departments having more than 1 employee.
SELECT COUNT(*) AS emp, department FROM employees GROUP BY department HAVING emp > 1;

-- 23. Show the department with the highest total salary.
SELECT SUM(salary) AS sal, department FROM employees GROUP BY department ORDER BY sal DESC;
🔹 UPDATE and DELETE
sql
Always show details

Copy
-- 24. Increase salary by 10% for all employees in the IT department.
UPDATE employees SET salary = salary * 1.10 WHERE department = 'IT';

-- 25. Change the city of employee 'Alice' to 'Pune'.
UPDATE employees SET city = 'Pune' WHERE name = 'Alice';

-- 26. Delete all employees who joined before 2020.
DELETE FROM employees WHERE join_date < '2020-01-01';
🔹 ORDER BY and LIMIT
sql
Always show details

Copy
-- 27. Show the top 3 highest-paid employees.
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- 28. Show the most recently joined employee.
SELECT * FROM employees ORDER BY join_date DESC LIMIT 1;
🔹 Subqueries
sql
Always show details

Copy
-- 29. Find employees whose salary is above the average salary.
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
"""
