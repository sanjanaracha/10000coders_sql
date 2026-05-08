
/*1. Create a table called employees with the columns:
id


name


salary


department*/

create table if  not exists employees(id int,
name varchar(50),
salary int,
department varchar(50)
);


-- 2. Insert 5 employee records into the employees table.

insert into employees values
(1,'ramu',20000,'CSE'),
(2,'raju',35000,'EEE'),
(3,'divya',40000,'ECE'),
(4,'soumya',30000,'Mech'),
(5,'roja',25000,'CSE');

-- ALTER TABLE
-- 3.Add a new column called age to the employees table.

alter table employees 
add age int;

/* 4️.Add two new columns:
city


joining_date*/
 alter table employees
 add city varchar(50),
 add joining_date date;


select * from employees;
-- 5.Change the datatype of salary column to BIGINT.

alter table employees
modify age bigint;

/*6.Modify two columns:
change age datatype to BIGINT


increase city column size to VARCHAR(100)*/

alter table employees
modify age bigint,
modify city varchar(100);

-- 7️.Rename the column name to full_name.

alter table employees
rename column name to full_name; 


ALTER TABLE employees ADD PRIMARY KEY (id);
-- UPDATE
-- 8.Update the age of the employee whose id is 1.
update employees 
set age=20
where id=1;
-- 9.Update the city of all employees working in the IT department to Hyderabad.
insert into employees values(6,'ramya',30000,'IT',21,'wgl','2026-05-08');
update employees
set city='Hyderabad'
where department='IT';

-- 10.Update the salary and department of the employee whose id is 2.
update employees
set city='Hyderabad',department='IT'
where id=2;


-- 11.Update the salary and city for employees whose salary is less than 50000.

update employees
set salary=60000,city='Hyderabad'
where salary<50000;

-- DELETE
-- 12.Delete the employee whose id is 3.

DELETE FROM employees
WHERE id = 3;

-- 13.Delete all employees working in the HR department.
DELETE FROM employees
WHERE department='HR';

-- 14.Delete all records from the employees table but keep the table structure.

DELETE FROM employees;

-- DROP COLUMN

-- 15.Remove the joining_date column from the table.
alter table employees
Drop column joining_date ;

-- 16.Remove both age and city columns from the table.
alter table employees
Drop column age,
drop column city ;

-- INSERT AGAIN

-- 17.Insert 2 new employee records into the employees table.

insert into employees values
(1,'ramu',20000,'CSE'),
(2,'raju',35000,'EEE');

-- UPDATE PRACTICE

-- 18.Increase the salary by 5000 for all employees working in the IT department.

update employees
set salary=5000
where department='IT';

-- DELETE PRACTICE
-- 19.Delete employees whose salary is less than 50000.
DELETE fROM employees
where salary<50000;

-- DROP TABLE

-- 20.Delete the entire employees table from the database.
drop table employees;
