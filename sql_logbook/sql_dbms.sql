
/*What is DBMS? 
DBMS is software used to manage data in an organized way. 
Functions discussed: 
 Store data 
 Update data 
 Delete data 
 Secure data 
 Retrieve data 
Examples: 
MySQL, Oracle, SQL Server, MongoDB */

/*Types of DBMS 

1. Hierarchical DBMS 
o Tree structure 
o Example: Company → Employees 

2. Network DBMS 
o Many-to-many relationships 
o Example: Students ↔ Courses 

3. Relational DBMS (RDBMS)  
o Data in tables 
o Example: Employee database 

4. NoSQL DBMS 
o Non-table format 
o Example: JSON data storage*/ 

/* SQL vs MySQL 
 SQL = Query language 
 MySQL = Database software 
Simply: 
SQL = Language 
MySQL = Tool */

-- Basic Concepts 
/*Database 
Collection of data 
Example: Library database */

/*Table 
Stores data in rows & columns 
Example: Books Table 
*/

/*Columns (Fields) 
 book_id 
 title 
 author 

Rows (Records) 
Each row = one book */


/*Data Types 
 Numeric → INT, DECIMAL 
 String → VARCHAR, TEXT 
 Date → DATE 
 Boolean → TRUE/FALSE */

/*Constraints 
 NOT NULL → must have value 
 UNIQUE → no duplicates 
 PRIMARY KEY → unique identifier 
 FOREIGN KEY → relation between tables 
 CHECK → condition 
 DEFAULT → automatic value */

-- SQL Commands 
-- 1. CREATE 
CREATE DATABASE library; 
CREATE TABLE books ( 
book_id INT PRIMARY KEY, 
title VARCHAR(100), 
author VARCHAR(50), 
price DECIMAL(5,2) 
); 
-- 2. USE 
USE library; 
-- 3. INSERT 
INSERT INTO books VALUES (1, 'Java Basics', 'Arun', 299.99); 
INSERT INTO books VALUES (2, 'SQL Made Easy', 'Neha', 199.50); 
-- 4. SELECT 
SELECT * FROM books; 
SELECT title, price FROM books; 
-- 5. FROM 
SELECT * FROM books; 


-- Example 
CREATE DATABASE library; 
USE library; 
CREATE TABLE books ( 
book_id INT, 
title VARCHAR(100), 
author VARCHAR(50), 
price DECIMAL(5,2) 
); 
INSERT INTO books VALUES (1, 'Java Basics', 'Arun', 299.99); 
INSERT INTO books VALUES (2, 'SQL Made Easy', 'Neha', 199.50); 
SELECT * FROM books; 
/*Output 
book_id 
1 
title 
Java Basics 
2 
author price 
Arun 299.99 
SQL Made Easy Neha 199.50 */