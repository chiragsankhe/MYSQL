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

### 9.ORDER BY 
+ `ORDER BY`  — it’s used to sort the result of a SELECT query in `ascending`  or`  descending ` order.

🔹 Syntax:
```sh
SELECT column1, column2 
FROM table_name
ORDER BY column1 [ASC|DESC];
```
+ ASC = Ascending (default)

+ DESC = Descending

✅ Sort by age (ascending):
```sh
SELECT * FROM students_info
ORDER BY age;
```
🔽 Sort by age (descending):
```sh
SELECT * FROM students_info
ORDER BY age DESC;
```
🔁 Sort by grade, then age:
```sh
SELECT * FROM students_info
ORDER BY grade ASC, age DESC;
```
This sorts first by grade, and if grades are the same, then by age in descending order.


### 10. What is LIMIT?
+ LIMIT is used to `restrict` the number of rows returned by a SELECT query.

✅ Syntax:
```
SELECT column1, column2
FROM table_name
LIMIT number;
```
🧠 Example:
Assume your table students_info has many records.

🔹 Get only the first 3 students:
```sh
SELECT * FROM students_info
LIMIT 3;
```
🔄 Combine with ORDER BY:
To get the top 2 oldest students:
```sh
SELECT * FROM students_info
ORDER BY age DESC
LIMIT 2;
```
⏩ Pagination-style: LIMIT offset, count
```sh
SELECT * FROM students_info
LIMIT 5, 3;
```
This skips the first 5 rows and returns the next 3.

### 11. MIN() , MAX()

+ 🔹 MIN() → Finds the smallest value
+ 🔸 MAX() → Finds the largest value
✅ Syntax:
```SH
SELECT MIN(column_name) FROM table_name;
SELECT MAX(column_name) FROM table_name;
```
🔽 Get youngest student's age:
```SH
SELECT MIN(age) AS youngest FROM students_info;
```
🔼 Get oldest student's age:
```SH
SELECT MAX(age) AS oldest FROM students_info;
```
🔁 Combined example:
```SH
SELECT 
  MIN(age) AS MinAge, 
  MAX(age) AS MaxAge 
FROM students_info;
```
📌 This will return both in one row.


### 12. SQL aggregate functions: COUNT(), AVG(), and SUM() 🔍

#### 🔢 1. COUNT() — Counts rows
```
SELECT COUNT(*) FROM table_name;
```
🧠 Example:
```
SELECT COUNT(*) AS total_students FROM students_info;
```
👉 Counts all rows (students) in the table.

You can also count specific columns or use conditions:
```SH
SELECT COUNT(grade) FROM students_info WHERE grade = 'A';
```
#### 📊 2. AVG() — Calculates average value
```
SELECT AVG(column_name) FROM table_name;
🧠 Example:
```sh
SELECT AVG(age) AS average_age FROM students_info;
```
👉 Finds the average age of all students.

#### ➕ 3. SUM() — Adds values together
```sh
SELECT SUM(column_name) FROM table_name;
```
🧠 Example:
```sh
SELECT SUM(age) AS total_age FROM students_info;
```
👉 Adds up all the ages of the students.

🔁 All Together:
```sh
SELECT 
  COUNT(*) AS total,
  AVG(age) AS avg_age,
  SUM(age) AS total_age
FROM students_info;
```
### 13. What is LIKE?
LIKE is used with the WHERE clause to filter rows based on pattern matching.

✅ Syntax:
```sh
SELECT * FROM table_name
WHERE column_name LIKE 'pattern';

```
🎯 Wildcards:
+ `% `= any number of characters (including none)

+ `_` = exactly one character

#### 🔹 1. Names starting with 'A':
```sh
SELECT * FROM students_info
WHERE name LIKE 'A%';
```
+ ✔ Matches: Anya, Arman

#### 🔹 2. Names ending with 'g':
```sh
SELECT * FROM students_info
WHERE name LIKE '%g';
```
✔ Matches: Chirag

#### 🔹 3. Names with 'ra' in the middle:
```sg
SELECT * FROM students_info
WHERE name LIKE '%ra%';
```
✔ Matches: Chirag, Arman

#### 🔹 4. Names with 4 letters:
```
SELECT * FROM students_info
WHERE name LIKE '____';
```
✔ Matches: only names with exactly 4 letters


### 14. 🔹 What are Wildcards?
+ Wildcards are special symbols used in the LIKE clause to match characters in a string.

#### ✅ Common Wildcards:

Wildcard	Meaning	Example Pattern	Matches Examples
+  %	Zero or more characters	'`a%`'	amit, akash, a
+ _	Exactly one character	'`a_`'	an, aj, not amit
🧠 Examples:
🔸 1. Name starts with ‘A’:
```sh
SELECT * FROM students_info
WHERE name LIKE 'A%';
```
✔ Matches: Anya, Arman

🔸 2. Name ends with ‘n’:
```sh
SELECT * FROM students_info
WHERE name LIKE '%n';
```
✔ Matches: Arman

🔸 3. Name has 'ra' in the middle:
```sh
SELECT * FROM students_info
WHERE name LIKE '%ra%';
```
✔ Matches: Chirag, Arman

🔸 4. Name with exactly 4 letters:
```
SELECT * FROM students_info
WHERE name LIKE '____';
```
✔ Matches: Only names that have exactly 4 characters (e.g. Anya, Raj would not match because it has 3)

🔸 5. Name starts with ‘A’ and second letter is ‘n’:
```
SELECT * FROM students_info
WHERE name LIKE 'An%';
```
✔ Matches: Anya

#### 15. 🔹 What is IN?
+ The IN operator allows you to match a column against a list of values, like saying:
+ ` "Is this value in this list?"` 

✅ Syntax:
```sh
SELECT * FROM table_name
WHERE column_name IN (value1, value2, value3);
```
🔸 Get students with grade A or C:
```sh
SELECT * FROM students_info
WHERE grade IN ('A', 'C');
```
✔ Matches: Chirag and Raj

#### 16. 🔹 What is BETWEEN?
BETWEEN is used with the WHERE clause to select rows within a range — including the start and end values.

✅ Syntax:
```
SELECT * FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```
+ 🔸 It works for` numbers` ,` dates` , and text (alphabetical order).

🔸 Find students aged between 20 and 22:
```sh
SELECT * FROM students_info
WHERE age BETWEEN 20 AND 22;
```
✔ Matches: Chirag, Anya, Meera

🗓️ Example (dates):
If you have a dob (date of birth) column:

```sh
SELECT * FROM students_info
WHERE dob BETWEEN '2003-01-01' AND '2005-12-31';
```
🆚 NOT BETWEEN:
```sh
SELECT * FROM students_info
WHERE age NOT BETWEEN 20 AND 22;
```
✔ Excludes ages 20, 21, 22 — includes only Raj (age 19)

### 17. 🔢 Most Used Data Types:
|Type|	Description	|Example|
|----|-------------|----------|
|INT	|Integer numbers	|1, 20, 999|
|VARCHAR(n)|	Variable-length string |(text)	'Chirag', 'Hello'|
|DATE|	Date values	|'2024-04-15'|
|DATETIME	|Date + Time	|'2024-04-15 10:30:00'|
|FLOAT  DECIMAL|	Decimal numbers |(with precision)	45.67, 99.99|
|BOOLEAN|	True False| values (0 or 1)	1 (true), 0 (false)|

### ⚙️ Most Used SQL Functions:
🔸 Aggregate Functions:

|Function	|Use|	Example|
|---------|-----|----------|
|COUNT()|	Count| rows	COUNT(*)|
|SUM()	|Total of numeric column|	SUM(price)|
|AVG()	|Average of numeric column|	AVG(age)
|MIN()	|Minimum value|	MIN(score)|
|MAX()	|Maximum value|	MAX(score)|

### 🔸 String Functions:

|Function	|Use|	Example|
|-------|--------|--------|
|CONCAT()|	Combine strings	|CONCAT(first_name, ' ', last_name)|
|LOWER()|	Convert to lowercase|	LOWER(name)|
|UPPER()|	Convert to uppercase|	UPPER(name)|
|LENGTH()|	Get string length|	LENGTH(name)|
### 🔸 Date/Time Functions:

|Function|	Use|	Example|
|-------|---------|--------|
|NOW()|	Current date and time|	NOW()|
|CURDATE()	|Current date only|	CURDATE()|
|YEAR()	|Extract year from date	|YEAR(dob)|

### 🔸 Logical & Comparison:
+ AND, OR, NOT

+ IN, BETWEEN, LIKE

+ IS NULL, IS NOT NULL


