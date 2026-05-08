CREATE TABLE orders ( 
    id INT PRIMARY KEY, 
     
    customer_name VARCHAR(50) NOT NULL, 
     
    city VARCHAR(50) NOT NULL, 
     
    product_name VARCHAR(50) NOT NULL, 
     
    price INT NOT NULL CHECK (price > 0), 
     
    quantity INT CHECK (quantity > 0), 
     
    order_status VARCHAR(20) DEFAULT 'Pending', 
     
    payment_mode ENUM('UPI', 'Card', 'COD', 'NetBanking') NOT NULL, 
     
    rating FLOAT CHECK (rating BETWEEN 0 AND 5) 
); 
 
 
 
INSERT INTO orders VALUES 
(1, 'Ravi', 'Hyderabad', 'Laptop', 60000, 1, 'Delivered', 'UPI', 4.5), 
(2, 'Sita', 'Chennai', 'Mobile', 20000, 1, 'Delivered', 'Card', 4.2), 
(3, 'Amit', 'Delhi', 'Headphones', 3000, 2, 'Pending', 'COD', NULL), 
(4, 'John', 'Mumbai', 'Shoes', 2500, 1, 'Shipped', 'UPI', 4.0), 
(5, 'Priya', 'Hyderabad', 'Watch', 5000, 1, 'Delivered', 'Card', 4.6), 
(6, 'Kiran', 'Bangalore', 'Tablet', 15000, 1, 'Cancelled', 'NetBanking', NULL), 
(7, 'Anu', 'Pune', 'Bag', 2000, 2, 'Delivered', 'COD', 4.3), 
(8, 'Rahul', 'Delhi', 'Camera', 45000, 1, 'Pending', 'Card', NULL), 
(9, 'Sneha', 'Hyderabad', 'Keyboard', 1500, 1, 'Delivered', 'UPI', 4.1), 
(10, 'Vikram', 'Chennai', 'Monitor', 12000, 1, 'Shipped', 'Card', NULL), 
(11, 'Neha', 'Mumbai', 'Mouse', 800, 2, 'Delivered', 'UPI', 4.4), 
(12, 'Arjun', 'Bangalore', 'TV', 55000, 1, 'Delivered', 'Card', 4.7), 
(13, 'Divya', 'Pune', 'Speaker', 3500, 1, 'Cancelled', 'COD', NULL), 
(14, 'Ramesh', 'Delhi', 'Charger', 700, 3, 'Delivered', 'UPI', 4.2), 
(15, 'Lakshmi', 'Hyderabad', 'Power Bank', 2000, 2, 'Pending', 'Card', NULL), 
(16, 'Manoj', 'Chennai', 'Printer', 8000, 1, 'Delivered', 'UPI', 4.3), 
(17, 'Kavya', 'Mumbai', 'Earbuds', 4000, 1, 'Shipped', 'Card', NULL), 
(18, 'Suresh', 'Pune', 'Router', 2500, 1, 'Delivered', 'UPI', 4.5), 
(19, 'Pooja', 'Bangalore', 'AC', 40000, 1, 'Pending', 'Card', NULL), 
(20, 'Teja', 'Hyderabad', 'Fan', 3000, 2, 'Delivered', 'COD', 4.0); 
 
 

-- Basic Level 
-- 1. Get all orders where price is greater than 10000 
select * from orders 
Where price>10000; 
 
-- 2. Find orders where city is 'Hyderabad' 
select * from orders 
Where city ='Hyderabad'; 
 
-- 3. Select orders where order_status is 'Delivered' 
select * from orders 
Where order_status = 'Delivered'; 
 
-- 4. Get orders where quantity is greater than 1 
select * from orders 
Where quantity>1; 
 
-- 5. Find orders where payment_mode is 'UPI' 
select * from orders 
Where payment_mode = 'UPI'; 
 
-- � Intermediate Level 
-- 6. Get orders where price is between 2000 and 10000 
select * from orders 
WHERE price BETWEEN 2000 AND 10000; 
 
-- 7. Find orders where city is 'Delhi' AND order_status is 'Pending' 
select *from orders 
Where city = 'Delhi' AND order_status = 'Pending'; 
 
 
 
-- 8. Select orders where payment_mode is 'Card' OR payment_mode is 'UPI' 
select * from orders  
Where payment_mode = 'Card' OR payment_mode = 'UPI'; 
 
-- 9. Get orders where rating is not equal to 4.2 
select * from orders 
Where rating != 4.2 OR rating IS NULL; 
 
-- 10. Find orders where quantity > 1 AND price < 5000 
select * from orders 
Where quantity >1 AND price<5000; 
 
 
-- � Advanced Level 
-- 11. Get orders where price > 20000 AND order_status = 'Delivered' 
select * from orders 
where price > 20000 AND order_status = 'Delivered'; 
 
-- 12. Find orders where city is not 'Hyderabad' 
select * from orders 
where city != 'Hyderabad'; 
 
-- 13. Select orders where price between 5000 and 30000 AND payment_mode = 'Card' 
select * from orders 
where price BETWEEN 5000 AND 30000 AND payment_mode = 'Card'; 
 
-- 14. Get orders where quantity > 1 AND rating > 4.3 
select * from orders  
where quantity > 1 AND rating > 4.3; 
 
-- 15. Find orders where order_status = 'Pending' AND price > 10000 
select * from orders 
Where order_status = 'Pending' AND price > 10000; 
 
