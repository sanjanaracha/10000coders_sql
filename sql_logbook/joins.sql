create database shopping;
use shopping;
create table customers (
customer_id int primary key auto_increment,
name varchar(50),
city varchar(50)
);

-- customer_id
-- name
-- city
create table orders(
order_id int primary key auto_increment,
customer_id int,
product_name varchar(50),
amount int,
order_date date);

-- Insert into customers
INSERT INTO customers (name, city) VALUES
('Sanjana', 'Hyderabad'),
('Ravi', 'Bangalore'),
('Priya', 'Chennai'),
('Arjun', 'Mumbai'),
('Neha', 'Delhi');

-- Insert into orders
INSERT INTO orders (customer_id, product_name, amount, order_date) VALUES
(1, 'Laptop', 55000, '2025-05-01'),
(2, 'Mobile Phone', 25000, '2025-05-03'),
(1, 'Headphones', 3000, '2025-05-05'),
(3, 'Tablet', 18000, '2025-05-06'),
(4, 'Smart Watch', 12000, '2025-05-08'),
(2, 'Keyboard', 1500, '2025-05-10'),
(5, 'Monitor', 14000, '2025-05-12');

INSERT INTO orders (customer_id, product_name, amount, order_date) VALUE
(4, 'tv', 31000, '2025-05-01');
-- 🟡 INTERMEDIATE → ADVANCED INNER JOIN QUESTIONS

-- 1.
-- Get customer names and product names for all orders

select name,product_name from customers c left join orders o
on c.customer_id=o.customer_id;

-- 2.
-- Find customers who placed orders with amount greater than 20000
select name from customers c inner join orders o
on c.customer_id=o.customer_id and amount >20000;

-- 3.
-- Get customer name, city, and product name where city is 'Hyderabad'
select name,city,product_name from customers c inner join orders o
on c.customer_id=o.customer_id and city='Hyderabad';


-- 4.
-- Find all orders where product name starts with 'S' and amount is greater than 10000

select * from  orders
where product_name like 'S%'
and amount>10000 ;

-- 5.
-- Get customers who ordered products between amount 10000 and 50000

select name from customers c inner join orders o
on c.customer_id=o.customer_id and o.amount between 10000 and 50000;

-- 6.
-- Find customer names who ordered either 'Laptop' or 'Mobile'

select c.name from customers c join orders o
on  c.customer_id=o.customer_id 
where o.product_name in ('laptop', 'Mobile');

-- 7.
-- Get top 5 highest order amounts with customer names

select o.amount ,c.name from customers c join orders o
on  c.customer_id=o.customer_id 
order by amount desc
limit 5;

-- 8.
-- Skip first 5 highest orders and get next 5 records with customer name and amount

select name,amount from customers c join orders o
on  c.customer_id=o.customer_id 
order by amount desc
limit 5 offset 5;

-- 9.
-- Find customers whose name starts with 'A' and who placed orders greater than 30000

select name,amount from customers c join orders o
on  c.customer_id=o.customer_id 
where name like 'A%' and amount>30000;

-- 10. 🔥 (Advanced)
-- Get customer name, city, product name where:
-- city is 'Delhi' OR 'Mumbai'
-- amount > 20000
-- product name contains 'Pro'
-- show only 3 records after skipping first 2 records

select name ,city,product_name 
from customers c 
join orders o
on  c.customer_id=o.customer_id 
where city in ('Delhi','Mumbai') 
and amount>20000 
and product_name like '%Pro%'
limit 3 offset 2;

INSERT INTO orders (customer_id, product_name, amount, order_date) VALUES
(4, 'MacBook Pro', 85000, '2025-05-15'),
(5, 'iPhone Pro', 70000, '2025-05-16'),
(4, 'Surface Pro', 65000, '2025-05-17'),
(5, 'GoPro Camera', 30000, '2025-05-18'),
(4, 'Redmi Pro', 25000, '2025-05-19');