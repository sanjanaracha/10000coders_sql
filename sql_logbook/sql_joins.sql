-- Create Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert Departments
INSERT INTO departments (dept_id, dept_name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales');

-- Insert 10 Employees
INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
(1, 'Ravi', 101),
(2, 'Priya', 102),
(3, 'Arjun', NULL),
(4, 'Sneha', 101),
(5, 'Kiran', 103),
(6, 'Meena', 104),
(7, 'Rahul', NULL),
(8, 'Divya', 105),
(9, 'Akhil', 102),
(10, 'Pooja', 103);

-- 1. Write a query to display all employees and their department names.
select emp_name ,dept_name 
from departments d
inner join employees e on e.dept_id=d.dept_id;

-- ✅ 2.Write a query to display all employees along with department names, and show "No Department" if an employee is not assigned to any department.

SELECT e.emp_name, COALESCE(d.dept_name, 'No Department') AS dept_name 
FROM employees e 
LEFT JOIN departments d 
ON e.dept_id = d.dept_id;

-- ✅ 3.Write a query to find employees who do not belong to any department.

select e.emp_name from employees e left join departments d
on e.dept_id = d.dept_id;

-- ✅ 4. Write a query to display all departments and the number of employees in each department.

select dept_name,count(emp_id) from departments d left join employees e
on e.dept_id = d.dept_id group by d.dept_name ;

-- ✅ 5. Write a query to display all employees and only their department name if it is 'IT', otherwise show NULL.

select e.emp_name,case when d.dept_name="IT" then d.dept_name Else NULL end as dept_name
from employees e left join departments d 
on e.dept_id = d.dept_id ;
-- ✅ 6. Write a query to display only employees who belong to the 'HR' department.

select e.emp_name 
from employees e 
left join departments d 
on e.dept_id = d.dept_id  where dept_name="HR";
-- ✅ 7.Write a query to display employee name and department name, but only include departments where dept_id = 101 using LEFT JOIN condition.

select emp_name,dept_name from
employees e 
left join departments d 
on e.dept_id = d.dept_id where d.dept_id = 101;
-- ✅ 8.Write a query to display all departments that do not have any employees.

select d.dept_name from
departments d 
left join employees e 
on e.dept_id = d.dept_id 
where e.emp_id  is null;

-- ✅ 9. Write a query to display employee name and department name, sorted by department name.

select e.emp_name , d.dept_name from  
employees e
left join departments d 
on e.dept_id = d.dept_id order by d.dept_name asc;

-- 10. Write a query to display:
-- employee name
-- department name
-- a new column status
-- "Assigned" if employee has a department
-- "Not Assigned" if no department

select e.emp_name , d.dept_name,
case 
when d.dept_id is not null then 'Assigned'
else 'Not Assigned' end as status
 from  
employees e
left join departments d 
on e.dept_id = d.dept_id 
