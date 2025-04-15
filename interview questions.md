### 1. what is SQL? 
+ SQL is a standard language for storing, manipulating and retrieving data in databases.
  
### 2. What is MySQL?
+ MySQL is a very popular open-source relational database management system (RDBMS).


+ MySQL is a relational database management system
+ MySQL is open-source
+ MySQL is free
+ MySQL is ideal for both small and large applications
+ MySQL is very fast, reliable, scalable, and easy to use
+ MySQL is cross-platform
+ MySQL is compliant with the ANSI SQL standard
+ MySQL was first released in 1995
+ MySQL is developed, distributed, and supported by Oracle Corporation
+ MySQL is named after co-founder Ulf Michael "Monty" Widenius's daughter: My
  
### 3. What is RDBMS?
+ RDBMS stands for `Relational Database Management System`.

+ RDBMS is a program used to maintain a relational database.

+ RDBMS is the basis for all modern database systems such as` MySQL`,` Microsoft SQL Server`,` Oracle`, and` Microsoft Access`.

+ RDBMS uses SQL queries to access the data in the database.

### 4. What does SELECT do in MySQL?
+ The `SELECT`  statement is used to retrieve data from one or more tables in a MySQL database.

✅ Basic Syntax:
```sh
SELECT column1, column2 FROM table_name;
```
If you want all columns, use `*`:
```sh
SELECT * FROM table_name;
```
### 5.  What is WHERE in SQL?
+ The `WHERE` clause is used to filter records — it returns only those rows that match a specific condition.
  
📌 Syntax:
```sh
SELECT column1, column2 FROM table_name
WHERE condition;
```
🧠 Example:
Given a table students_info:


|student_id|	name	|age	|grade|
|----------|--------|-----|-----|
|1	|Chirag	|20|	A|
|2	|Anya	|21	|B|
|3	|Raj	|20	|C|

🔍 Example Query:
```sh


SELECT name FROM students_info
WHERE age = 20;
```
🧾 Output:

name
```
Chirag
Raj 
```

### 6. how to create database and table?

Perfect! Here's the SQL statement to create a database named student:
```sh
CREATE DATABASE student;
```
✅ Once the database is created, you can start using it with:
```
USE student;
```
Then you can create tables inside it. For example, a students_info table:
```sh
CREATE TABLE students_info (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(10)
);
```
### 7. Inseert value in table
Now, to insert a student record:
```sh
INSERT INTO students_info (student_id, name, age, grade)
VALUES (1, 'Chirag', 20, 'A');
```
👉 You can add more rows like this:

```sh
INSERT INTO students_info (student_id, name, age, grade)
VALUES 
(2, 'Anya', 21, 'B'),
(3, 'Raj', 19, 'A');
```
🔎 To check the data:
```
SELECT * FROM students_info;
```

### 8. AND,  OR , NOT OPRATER
+ `AND` ,` OR` , and `NOT ` in SQL — they’re logical operators used with the WHERE clause to filter data more precisely.

#### 🔹 1. AND
 +Returns rows only if all conditions are `true`.

🧠 Example:
```sh
SELECT * FROM students_info
WHERE age > 18 AND grade = 'A';
```
✅ Gets students who are older than 18 and have grade A.

#### 🔸 2. OR
Returns rows if at least one condition is `true`.

🧠 Example:
```
SELECT * FROM students_info
WHERE grade = 'A' OR grade = 'B';
```
✅ Gets students with grade A or B.

#### 🔻 3. NOT
Returns rows where the condition is ` false`.

🧠 Example:
```sh
SELECT * FROM students_info
WHERE NOT grade = 'C';
```
✅ Gets all students except those with grade C.

🔄 Combine them:
```sh
SELECT * FROM students_info
WHERE age > 18 AND (grade = 'A' OR grade = 'B');
```
✅ Gets students older than 18 with either grade A or B.

