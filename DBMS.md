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

