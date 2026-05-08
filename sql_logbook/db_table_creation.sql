
CREATE TABLE products ( 
product_id INT PRIMARY KEY, 
product_name VARCHAR(50), 
category VARCHAR(50), 
price DECIMAL(10,2), 
quantity INT, 
rating DECIMAL(2,1), 
brand VARCHAR(50) 
); 
-- �� 2. Insert Data 
INSERT INTO products VALUES 
(1, 'iPhone 14', 'Electronics', 80000, 10, 4.7, 'Apple'), 
(2, 'Samsung S22', 'Electronics', 70000, 15, 4.5, 'Samsung'), 
(3, 'Redmi Note 12', 'Electronics', 18000, 25, 4.2, 'Xiaomi'), 
(4, 'Dell Laptop', 'Computers', 60000, 8, 4.4, 'Dell'), 
(5, 'HP Laptop', 'Computers', 55000, 12, 4.3, 'HP'), 
(6, 'Boat Headphones', 'Accessories', 2000, 50, 4.1, 'Boat'), 
(7, 'Sony Headphones', 'Accessories', 5000, 30, 4.6, 'Sony'), 
(8, 'Nike Shoes', 'Fashion', 4000, 20, 4.5, 'Nike'), 
(9, 'Adidas Shoes', 'Fashion', 4500, 18, 4.4, 'Adidas'), 
(10, 'Puma T-Shirt', 'Fashion', 1500, 40, 4.2, 'Puma'), 
(11, 'LG TV', 'Electronics', 90000, 5, 4.8, 'LG'), 
(12, 'Mi TV', 'Electronics', 30000, 10, 4.3, 'Xiaomi'), 
(13, 'Keyboard', 'Accessories', 800, 60, 4.0, 'Logitech'), 
(14, 'Mouse', 'Accessories', 500, 70, 3.9, 'Logitech'), 
(15, 'Tablet', 'Electronics', 25000, 9, 4.1, 'Samsung'); 
-- 15 Practice Questions 
-- �� Basic Level 
-- 1. Find all products where price is greater than 50000 
select product_name from products 
Where price>50000; 

-- 2. Get products where rating is greater than 4.5 
select product_name from products 
Where rating>4.5;
 
-- 3. Show products where quantity is less than 10 
select product_name from products 
Where quatity<10; 

-- 4. Find products where category is equal to Electronics 
select product_name from products 
Where category='Electronics'; 

-- 5. Get products where brand is equal to Samsung 
select product_name from products 
Where brand='Samsung'; 

-- ⚡ Medium Level 
-- 6. Find products where price is less than 20000 
select product_name from products 
Where price<20000; 

-- 7. Get products where rating is greater than or equal to 4.3 
select product_name from products 
Where rating>=4.3; 

-- 8. Show products where quantity is greater than 20 
select product_name from products 
Where quantity>20; 

-- 9. Find products where price is less than or equal to 5000 
select product_name from products 
Where price<=5000; 

-- 10. Get products where rating is less than 4.0 
select product_name from products 
Where rating<4.0; 

-- �� Advanced Level (still single condition only) 
-- 11. Find products where price is greater than or equal to 30000 
select product_name from products 
Where price>=30000; 

-- 12. Get products where quantity is less than or equal to 15 
select product_name from products 
Where quantity<=15; 

-- 13. Show products where rating is not equal to 4.5 
select product_name from products 
Where rating!=4.5;
 
-- 14. Find products where category is equal to Accessories 
select product_name from products 
Where category = 'Accessories'; 

-- 15. Get products where brand is not equal to Apple 
select product_name from products 
Where brand != 'Apple'; 
