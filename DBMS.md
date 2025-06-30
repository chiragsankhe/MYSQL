##  What is a Database Management System (DBMS)?
+ A Database Management System (DBMS) is software that is used to manage and organize databases.
+  It provides an interface to interact with the data stored in a database.
+  The DBMS is responsible for tasks such as storing, retrieving, and updating data, ensuring data integrity, security, and managing concurrency.
+  Examples include MySQL, PostgreSQL, Oracle, and SQL Server.

##  What are the advantages of using a DBMS?
+ `Data Integrity`: Ensures that the data is accurate and consistent.
+ `Data Security`: Provides controlled access to sensitive data by setting permissions for different users.
+ `Efficient Data Retrieval`: Optimizes queries and indexing, allowing faster data retrieval.
+ `Reduced Redundancy`: Avoids duplicate data by enforcing normalization.
+ `Backup and Recovery`: Offers automatic backup and recovery mechanisms.
+ `Concurrent Access`: Allows multiple users to access the database at the same time without conflicts

## What is the difference between DBMS and RDBMS?
+ `DBMS` (Database Management System): A system that allows users to create, store, modify, and delete data. 
+ It does not require a relational structure for data organization. Examples: Microsoft Access, XML databases.
+ `RDBMS` (Relational Database Management System): A subset of DBMS that stores data in a structured format, using tables (relations), and supports relational operations + like joins. It enforces data integrity through keys and supports SQL for querying. Examples: MySQL, Oracle, SQL Server.


## What are the different types of DBMS?
+ The four types of DBMS are:

+ `Hierarchical DBMS`: Data is organized in a tree-like structure with parent-child relationships. Example: IBM’s IMS.
+ `Network DBMS`: Data is represented as a `graph` with many-to-many relationships. Example: Integrated Data Store (IDS).
+ `Relational DBMS (RDBMS`): Data is organized in tables (relations) and managed through SQL. Example: MySQL, PostgreSQL.
+ `Object-Oriented DBMS`: Data is stored as objects, like in object-oriented programming. Example: ObjectDB.


## What is a relation in DBMS?
+ A relation in DBMS is a table that consists of rows and columns.
+  Each row represents a record, and each column represents an attribute or property of the entity being described.
+   Relations are defined by a schema, which specifies the attributes (columns) of the table

  ##  at is a table in DBMS?
+ A table in DBMS is a collection of data organized in rows and columns.
+  It is the primary structure for storing data in a relational database.
+  Each row represents an entity (record), and each column represents an attribute of that entity.


## What are rows and columns in a DBMS?
+ `Rows` (Tuples): A row represents a single record or entity. Each row contains values for each attribute (column).
Columns (Attributes): A column represents a property or characteristic of the entity. Each column has a data type, such as integer, string, etc

## What is a primary key? Explain with an example.
+ A Primary Key is a unique identifier for each record in a table. It ensures that no two records have the same value for the primary key field.
+ It cannot contain NULL values. Example: In a `STUDENT table`,` ROLL_NO` could be the primary key because each student has a unique roll number.


|ROLL_NO|	NAME	|ADDRESS|
|-------|-------|--------|
|1|	Ram	|Delhi|
|2|	Suresh|	Delhi |
`
## What is a foreign key? Explain with an example.
+ A Foreign Key is an attribute in a table that links to the primary key in another table. 
+ It creates a relationship between two tables, ensuring referential integrity.
+ Example: In a STUDENT table, the BRANCH_CODE could be a foreign key referencing the primary key BRANCH_CODE in the BRANCH table.

Student Table

|ROLL_NO	|NAME |	BRANCH_CODE|
|--------|------|-----------|
|1|	Ram	|CS|
|2|	Suresh	|IT|

|BRANCH Table| BRANCH_CODE|	BRANCH_NAME|
|------------|-------------|---------|
|CS	|Computer| Science|
|IT	|Information| Technology|

Here, BRANCH_CODE in STUDENT is a foreign key referencing BRANCH_CODE in BRANCH.


## The Entity-Relationship (ER) Model is a high-level conceptual data model used to define the structure of a database in terms of:

+ Entities

+ Attributes


🔷 Key Components of ER Model:
## 1. Entity
An entity is an object or thing in the real world that is distinguishable from other objects.

📌 Example: Student, Employee, Book

Types of Entities:

+ Strong Entity – Exists independently (e.g., Student)

+ Weak Entity – Depends on another entity (e.g., Dependent of Employee)

## 2. Attribute
+ Attributes are properties or details of an entity.

📌 Example: A Student entity may have attributes like RollNo, Name, Age.

## Types of Attributes:

|Type	|Description|	Example|
|---------|-----------|-----------|
|Simple	|Cannot be divided further|	Age, Salary|
|Composite	|Can be divided into smaller parts	|Name → First, Last|
|Derived	|Can be derived from other attributes|	Age from DOB|
|Multivalued|	Can have multiple values	|PhoneNumbers|
Key Attribute|	Uniquely identifies an entity|	StudentID|

## 3. Relationship
A relationship represents how two or more entities are related to each other.

📌 Example: A Student enrolls in a Course.

## Types of Relationships:

Type	Description	Example
+ `One-to-One` 	 One entity maps to one only	Employee ↔ ParkingSpot
+ `One-to-Many`	 One maps to many	Teacher → Students
+ `Many-to-One`	 Many maps to one	Orders → Customer
+ `Many-to-Many` 	Many map to many	Student ↔ Course

## What are constraints in DBMS?
+ Constraints in DBMS are rules that limit the type of data that can be inserted into a table to ensure data integrity and consistency.
+  Common types of constraints include: `NOT NULL`,` PRIMARY KEY`,` FOREIGN KEY`,` UNIQUE`,` CHECK`,` DEFAULT`.

## what is diffrenc between unique and null constrains?
###  ` UNIQUE Constraint`:
+ Ensures all values in a column (or combination of columns) are distinct.

+ Allows only one occurrence of each value.

+ ✅ Allows NULL values (but the behavior depends on the database):

+ Most databases (like MySQL, PostgreSQL) allow multiple NULLs in a UNIQUE column.

+ NULL is not considered "equal" to another NULL.

Example:
```
CREATE TABLE users (
    email VARCHAR(100) UNIQUE
);
```
+ ✅ Allows: ('a@example.com'), ('b@example.com'), (NULL), (NULL)
+ ❌ Error if you try to insert another 'a@example.com'.

### 🔹 NOT NULL Constraint:
+ Ensures that a column cannot have NULL values.

+ It does not restrict uniqueness, only that the value must exist.

Example:
```
CREATE TABLE users (
    username VARCHAR(100) NOT NULL
);
```
+ ❌ Cannot insert: (NULL)
+ ✅ Can insert duplicate values like ('chirag'), ('chirag')

## what is degree of relation

### 🔹 Degree of a Relation:
+ The number of attributes (columns) in a relation (table).

🔹 Example:
```
CREATE TABLE Student (
    StudentID INT,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50)
);
```
Here:

+ Attributes (columns): StudentID, Name, Age, Course

+ ✅ Degree = 4

##  Cardinality

### 🔹 Related Term – Cardinality:
+ While degree is the number of columns,
+ cardinality is the number of rows (tuples) in the table.

Example:
```
StudentID	Name	Age	Course
101	Chirag	20	Java
102	Ravi	21	Python
103	Riya	22	Web Dev
```
✅ Degree = 4 (4 columns)

✅ Cardinality = 3 (3 rows)

## DBMS architecture 
## diffrent type of schema 
## explain diffrent schemas like view level , logical , physical 

+ In DBMS architecture, the database is divided into three levels to separate concerns and manage complexity:

### 🔺 1. View Level (External Level)
+ 📌 What it is: The highest level of abstraction.

+ 👀 What users see: It defines what part of the data is visible to individual users or applications.

+ 🔐 Provides security by restricting access to only necessary data.

+ ✅ A user can have multiple views.

Example:

+ A student using an app may only see their name, courses, and grades — not internal IDs or admin data.

```
CREATE VIEW student_view AS
SELECT name, course, grade FROM student;
```
### 🔧 2. Logical Level (Conceptual Level)
+ 📌 What it is: The middle level of abstraction.

+ 🎯 Describes what data is stored in the database and relationships among the data.

+ 💾 Defines tables, attributes, data types, constraints.

+ 🚫 Hides storage and access methods.

Example:

Defines tables like Student, Course, Enrollment and their relationships, primary keys, foreign keys, etc.

### 💽 3. Physical Level (Internal Level)
+ 📌 What it is: The lowest level, closest to the hardware.

+ 🧠 Describes how data is physically stored: files, indexes, block allocation, compression, etc.

+ 🔒 Not visible to end users or developers.

Example:

How rows are stored in blocks, what indexing strategy is used, how tables are organized on disk.

## 4 main types of database languages in DBMS, each serving a different purpose:

### 🔹 1. Data Definition Language (DDL)
+ 📌 Used to define and modify database structure (tables, schemas).

+ ⚙️ It deals with creating, altering, and deleting database objects.

Common DDL Commands:



+ `CREATE`     -- Create a new table or database
+ `ALTER `     -- Modify existing table structure
+ `DROP`       -- Delete table or database
+` TRUNCATE`   -- Remove all records from a table (faster than DELETE)

### 🔹 2. Data Manipulation Language (DML)
+ 📌 Used to insert, update, delete, and retrieve data.

+ 🧑‍💻 It interacts with the data inside the tables.

Common DML Commands:


+ `SELECT `    -- Retrieve data
+ `INSERT`     -- Add new data
+ `UPDATE `    -- Modify existing data
+ `DELETE`     -- Remove data
  
### 🔹 3. Data Control Language (DCL)
📌 Used to control access to data in the database.

+ 🔐 It handles permissions and security.

Common DCL Commands:


+ GRANT      -- Give access to users
+ REVOKE     -- Remove access from users
  
### 🔹 4. Transaction Control Language (TCL)
+ 📌 Used to manage transactions in a database.

+ 🔄 Ensures data consistency and rollback in case of errors.

Common TCL Commands:


+ COMMIT     -- Save changes
+ ROLLBACK   -- Undo changes
+ SAVEPOINT  -- Set a point to rollback to
+ SET TRANSACTION -- Set properties for a transaction
+ 


##  What is Indexing in DBMS?
+ Indexing is a data structure technique used in DBMS to quickly retrieve records from a database without scanning the entire table.

+ It works just like an index in a book — it helps you find data faster, rather than checking every page (row).

### ✅ Why Use Indexing?
+ To speed up SELECT queries.

 =To reduce disk I/O operations.

+ Especially useful on large tables with millions of records.

#### 🏗️ How It Works (Basic Idea):
+ The DBMS creates a separate data structure (like a B-tree or Hash table).

+ This structure stores key values and a pointer to the actual row in the table.

📂 Example:
Suppose you have this table:
```
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50)
);
```
Now you create an index:

```
CREATE INDEX dept_index ON Employee(Department);
```
Now when you run:
```
SELECT * FROM Employee WHERE Department = 'HR';
```
+ 💨 It uses the dept_index instead of scanning the full table.

🧠 Types of Indexes:
|Type|	Description|
|----|-------------|
|Primary Index|	Automatically created on primary key|
|Unique Index|	Ensures all values are unique|
|Clustered Index|	Alters the physical order of rows|
|Non-Clustered Index|	Separate from actual table data|
|Composite Index|	Index on multiple columns|
|Bitmap Index	|Uses bitmaps, efficient in low-cardinality data (used in Data Warehouse)|

### ❗ Disadvantages:
+ Slows down INSERT, UPDATE, and DELETE (because index must be updated).

+ Takes extra disk space.

+ Over-indexing can harm performance.

📌 Summary:
### Feature	Description
+ Purpose	Speed up data retrieval
+ Works on	One or more columns
+ Benefits	Fast SELECT queries
+ Cost	Extra memory and slower write operations

Would you like to see how index data structures (like B-trees) look visually or in code?







## 🔍 Difference Between WHERE and HAVING Clause
|Feature|	WHERE Clause	|HAVING Clause|
|📌 Purpose|	Filters rows before grouping	|Filters groups after GROUP BY|
|🧱 Works On|	Individual rows|	Aggregated groups|
|🧮 Used |With	SELECT, UPDATE, DELETE|	Usually with GROUP BY|
|🔢 Aggregate Functions|	❌ Cannot be used with aggregates directly|	✅ Used to filter with aggregate functions|
|📍 Executes|	Before GROUP BY|	After GROUP BY\


### ✅ WHERE Clause Example:
```
SELECT * FROM Employee
WHERE Department = 'HR';
```
Filters individual rows where Department = 'HR'.


### ✅ HAVING Clause Example:
```
SELECT Department, COUNT(*) AS emp_count
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 5;
```
First groups employees by department.

Then filters only those groups with more than 5 employees.

### 🔄 Both Used Together Example:
```
SELECT Department, AVG(Salary)
FROM Employee
WHERE Salary > 30000
GROUP BY Department
HAVING AVG(Salary) > 50000;
```
+ WHERE filters out low-salary employees before grouping.

+ HAVING filters out departments with low average salaries after grouping.


🔍 Difference Between File System and DBMS

|Feature	|File System|	DBMS (Database Management System)|
|--------|---------------|---------------------------------|
|📁 Definition| Manages files on disk manually|	Software to store, retrieve, and manage data efficiently|
|📦 Data Storage|	Stores data in flat files (e.g., .txt, .csv)|	Stores data in tables with schemas|
|🔍 Querying Data|	No built-in query language|	Uses SQL for powerful querying|
|🧱 Structure|	No strict structure;| programmer-defined	Strict structure using tables, rows, and columns|
|🔁 Redundancy|	High redundancy; hard to control	|DBMS uses normalization to reduce redundancy|
|🔒 Security|	Handled by OS or developer manually|	Built-in user access control and security features|
|🔁 Concurrency| Control	No built-in support for multiple users	|Built-in support for multiple users accessing data|
|🧪 Data Integrity|	Handled manually by programmer	|Enforced automatically by constraints (e.g., PK, FK)|
|🔁 Backup & Recovery|	Manual and difficult|	Automatic, supports backup & recovery features||
|🔄 Transactions (ACID)	|Not supported	|Fully supports ACID properties|
|📊 Performance	|Slower for large datasets|	Optimized for performance and large-scale data|


