create database companyDB;
use companyDB;

create table departments(
dept_id int primary key auto_increment,
dept_name varchar(100),
location varchar(100)
);

create table employees(
emp_id int primary key auto_increment,
emp_name varchar(50),
gender enum('M','F'),
salary decimal(10,2),
hire_date date ,
dept_id int ,
foreign key (dept_id) references departments(dept_id)
);

create table projects(
project_id int primary key auto_increment,
project_name varchar(100),
start_date date,
end_date date,
budget decimal(12,2)
);

create table employeeProjects(
emp_id int ,
project_id int ,
role varchar(100),
primary key(emp_id, project_id),
foreign key (emp_id) references employees(emp_id),
foreign key (project_id) references projects(project_id)
);

-- Departments
INSERT INTO Departments (dept_name, location) VALUES
('HR','New York'),
('IT','San Francisco'),
('Finance','Chicago'),
('Marketing','Boston'),
('Sales','Los Angeles');

-- Employees
INSERT INTO employees (emp_name, gender, salary, hire_date, dept_id) VALUES
('Alice','F',60000,'2019-03-15',1),
('Bob','M',75000,'2018-07-01',2),
('Charlie','M',55000,'2020-01-10',3),
('Diana','F',80000,'2017-11-23',2),
('Eva','F',50000,'2021-05-19',4),
('Frank','M',90000,'2016-08-30',2),
('Grace','F',65000,'2019-10-12',5),
('Henry','M',72000,'2018-12-05',3),
('Ivy','F',48000,'2022-01-01',1),
('Jack','M',85000,'2017-03-14',5);

-- Projects
INSERT INTO Projects (project_name, start_date, end_date, budget) VALUES
('Website Redesign','2021-01-01','2021-06-30',100000),
('Mobile App','2020-05-15','2020-12-31',150000),
('Cloud Migration','2019-09-01','2020-03-01',200000),
('Marketing Campaign','2021-03-01','2021-09-30',80000),
('Financial Audit','2022-02-01','2022-04-30',50000);

-- EmployeeProjects
INSERT INTO EmployeeProjects VALUES
(1,1,'HR Consultant'),
(2,1,'Backend Developer'),
(2,2,'Lead Developer'),
(3,5,'Analyst'),
(4,2,'Frontend Developer'),
(5,4,'Marketing Specialist'),
(6,3,'Cloud Engineer'),
(7,4,'Sales Analyst'),
(8,5,'Finance Manager'),
(9,1,'HR Assistant'),
(10,2,'Mobile Architect'),
(10,3,'Cloud Architect');


-- 🔹 Basic (1–20)
-- ----------------------------------------basic 10 to 20 questions -------------------------------------------------------------
-- 1 Show all employees.
   select * from employees;
   
-- 2 Show all departments.
   select dept_name from Departments;
   
-- 3 Show employees with salary > 60000.
   select salary 
   from employees
   where salary > 60000;
   
-- 4 Find all female employees.
   select emp_name
   from employees
   where gender = 'F';
   
-- 5 List employees hired after 2019.
select emp_name , hire_date
from employees
where hire_date >= '2019-01-01';

-- 6 Get employee names and salaries, ordered by salary DESC.
select emp_name , salary
from employees
order by salary desc;

-- 7 Count total employees.
select count(*) from employees;

-- 8 Find the highest salary.
select max(salary) from employees;

select * 
from employees 
order by salary desc
limit 2;


-- 9 Find the lowest salary.

select * 
from employees
order by salary asc
limit 1;

--  10 Find employees with salary between 50k and 80k.
select * from employees
where salary >= 50000 and salary <=80000;

-- 11 Show distinct department IDs.
select distinct(dept_id) 
from employees;

-- 12 Find employees in department "IT".
select * from  departments
where dept_name = "IT";

-- 13 Show employee names starting with 'A'.
select emp_name as name
from employees
where emp_name like "A%"
    or emp_name like "a%";
    
-- 14 Show employees whose name ends with 'a'.

select emp_name as name
from employees
where emp_name like "%A"
    or emp_name like "%A";

--  15 Find employees hired in 2021.
select * 
from employees
where hire_date >= '2021-01-01' ;

-- 16 Count employees in each department.
   select dept_id , count(emp_name) 
   from employees
   group by dept_id;

-- 17 Find the department with maximum employees.
SELECT dept_id, MAX(emp_id) AS max_emp
FROM employees
GROUP BY dept_id
order by dept_id desc;

-- 18 Get average salary of employees.
select avg(salary)
from employees;

-- 19 Get total salary expense.
select sum(salary) 
from employees;
-- 20 Show employee name with length > 4.
select emp_name , length(emp_name)
from employees
where length(emp_name) > 4;


 -- 🔹 Joins (21–40)

-- 21 Show employee name with their department name.
     select E.emp_name , D.dept_name
     from employees E
     join departments D on E.dept_id = D.dept_id;
     
-- 22 List employees with project names.
	  select P.project_name , count(E.emp_id)
      from employees E
	  join EmployeeProjects EP on E.emp_id = EP.emp_id
      join projects P on P.project_id = EP.project_id
      group by P.project_name;
      
 -- 23 Show employees working on "Cloud Migration".
 
      select E.*, p.project_name
      from employees E
	  left join EmployeeProjects EP on E.emp_id = EP.emp_id
      join projects P on P.project_id = EP.project_id
      where  P.project_name = "Cloud Migration";
      
      
 
-- 24 Find employees not assigned to any project.
   SELECT E.*
FROM employees E
LEFT JOIN EmployeeProjects EP 
       ON E.emp_id = EP.emp_id
WHERE EP.emp_id IS NULL;
-- 25 Find projects with no employees.
SELECT P.*
FROM projects P
LEFT JOIN EmployeeProjects EP 
       ON P.project_id = EP.project_id
WHERE EP.emp_id IS NULL;
--  26 Show all employees in "Finance" dept and their projects.
    SELECT D.dept_name, E.emp_name, P.project_name 
FROM departments D 
JOIN employees E  
     ON D.dept_id = E.dept_id
JOIN EmployeeProjects EP 
     ON E.emp_id = EP.emp_id
JOIN projects P 
     ON EP.project_id = P.project_id
WHERE D.dept_name = 'Finance';

-- 27 Show each project and how many employees are working.
  select P.project_name , count(EP.emp_id)
  from projects P
  join EmployeeProjects EP  on P.project_id = EP.project_id
  group by P.project_name;
-- 28 List employees with multiple projects.

  select E.emp_name, count(EP.project_id)
  from employees E
  join EmployeeProjects EP  on E.emp_id = EP.emp_id
  group by E.emp_id
  having count(EP.project_id) >1;
-- 29 Find the employee(s) who work on both "Mobile App" and "Cloud Migration".
SELECT E.emp_name
FROM employees E
JOIN EmployeeProjects EP ON E.emp_id = EP.emp_id
JOIN projects P ON EP.project_id = P.project_id
WHERE P.project_name IN ('Mobile App', 'Cloud Migration')
GROUP BY E.emp_id, E.emp_name
HAVING COUNT(DISTINCT P.project_name) = 2;


-- 30 Show the highest-paid employee in IT dept.

select E.emp_name , E.salary, D.dept_name 
from employees E
join departments D on E.dept_id = D.dept_id
where D.dept_name = "IT"
order by E.salary desc
limit 1;


-- 31 List employees and their roles in projects.
SELECT E.emp_name, EP.role, P.project_name
FROM employees E
JOIN EmployeeProjects EP ON E.emp_id = EP.emp_id
JOIN projects P ON EP.project_id = P.project_id;



-- 32 Show departments with average salary > 70k.

select D.dept_name , avg(E.salary)
from employees E
join departments D on E.dept_id = D.dept_id
group by D.dept_name
having avg(E.salary) > 70000;

-- Find employees who earn more than their department average.
select E.emp_name , E.salary , D.dept_name 
from employees E
join departments D on E.dept_id = D.dept_id
where E.salary > (select  avg(E2.salary)
                 from employees E2
                 where E2.dept_id  = D.dept_id
                 
 );


Show projects with budget > 1,00,000.

Show department name, total salary expense.

Find projects that ended in 2021.

Show all employees with department location.

Show all employees in "Los Angeles".

Find employees not in "HR" dept.

List projects with employee count < 2.


🔹 Intermediate (41–70)

Find top 3 highest salaries.

Find second highest salary.

Show employees hired earliest.

Show employees hired most recently.

Count number of male and female employees.

Show employees with salary > average salary.

Show salary difference between max and min.

Rank employees by salary.

Show cumulative salary by hire_date order.

Find departments with more than 2 employees.

Show projects and their duration (in days).

Find employees whose salary is > 70% of max salary.

Show department with minimum average salary.

Show employees earning same salary.

Find employees with no department (test NULL).

Update Bob’s salary to 80000.

Delete employee Ivy.

Add a new department "R&D" in "Seattle".

Assign Alice to "Financial Audit".

Remove project "Marketing Campaign".

Increase all IT employees’ salary by 10%.

Change "HR Consultant" role to "HR Manager".

Find projects ending this year.

Count employees per project.

Show employees with at least 2 roles.

Find employee with max projects.

Find department with max projects handled.

Find project with highest budget.

Show average project budget.

Show total budget of projects per department.

🔹 Advanced (71–100)

Window function: show salary rank partitioned by department.

Show running total salary within IT dept.

Show percent contribution of each dept to total salary.

Show project with highest duration.

Find employees hired in same year.

Show employees grouped by hire year.

Find departments where all employees earn > 60k.

Find employees who don’t share projects with anyone else.

Find employees who work in more than 1 department (if extended data).

Find employees with role containing "Developer".

Show employees working on both IT and Finance projects.

Show departments with no projects.

Find employees assigned to exactly 1 project.

Show top-paid employee per department.

Find project with maximum employees assigned.

Find overlapping project durations.

Show employees earning above department average using subquery.

Find projects with budget above average.

Show median salary (using window).

Find employees hired before their manager (if manager added later).

Generate employee email as name@company.com.

Find employees whose name is palindrome (like "Bob").

Find departments where employee count equals project count.

Find top 2 employees by salary in each department.

Find projects with budget > all other projects in same year.

Show employees with hire_date = project start_date.

Find total salary by gender and department.

Show difference between max and min project budgets.

Find projects handled by both HR and IT employees.

Delete employees with salary < 50k.