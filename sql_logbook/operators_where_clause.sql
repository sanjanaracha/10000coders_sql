CREATE TABLE chocolates ( 
id INT PRIMARY KEY, 
name VARCHAR(50) NOT NULL, 
brand VARCHAR(50) NOT NULL, 
price INT NOT NULL CHECK (price > 0), 
quantity INT DEFAULT 0 CHECK (quantity >= 0), 
rating FLOAT CHECK (rating BETWEEN 0 AND 5), 
in_stock BOOLEAN DEFAULT TRUE 
); 
INSERT INTO chocolates VALUES 
(1, 'Dairy Milk', 'Cadbury', 50, 100, 4.5, TRUE), 
(2, '5 Star', 'Cadbury', 35, 120, 4.2, TRUE), 
(3, 'Perk', 'Cadbury', 20, 180, 4.0, TRUE), 
(4, 'KitKat', 'Nestle', 30, 200, 4.3, TRUE), 
(5, 'Munch', 'Nestle', 25, 160, 4.2, TRUE), 
(6, 'Milkybar', 'Nestle', 50, 130, 4.1, TRUE), 
(7, 'Snickers', 'Mars', 40, 150, 4.4, TRUE), 
(8, 'Mars Bar', 'Mars', 60, 85, 4.3, TRUE), 
(9, 'Galaxy', 'Mars', 70, 90, 4.6, TRUE), 
(10, 'Bounty', 'Mars', 55, 80, 3.9, FALSE), 
(11, 'Ferrero Rocher', 'Ferrero', 100, 50, 4.8, TRUE), 
(12, 'Kinder Joy', 'Ferrero', 110, 65, 4.7, TRUE), 
(13, 'Toblerone', 'Mondelez', 120, 40, 4.7, TRUE), 
(14, 'Silk', 'Cadbury', 85, 95, 4.6, TRUE), 
(15, 'Fuse', 'Cadbury', 45, 140, 4.2, TRUE), 
(16, 'Temptations', 'Cadbury', 90, 70, 4.5, TRUE), 
(17, 'Hershey Bar', 'Hershey', 70, 110, 4.4, TRUE), 
(18, 'Lindt Excellence', 'Lindt', 150, 30, 4.9, TRUE), 
(19, 'Amul Dark', 'Amul', 80, 60, 4.3, TRUE), 
(20, 'KitKat Dark', 'Nestle', 45, 75, 4.4, FALSE); 
/*
� 15 Questions (Operators + WHERE 
Clause Only) 
� Basic */
-- 1. Get chocolates where price is greater than 50 
select name from chocolates  
Where price>50; 
 
-- 2. Find chocolates where quantity is less than 100 
select name from chocolates  
Where quantity<100; 
 
-- 3. Select chocolates where rating is greater than 4.5 
select name from chocolates  
Where rating>4.5; 
 
-- 4. Get chocolates where brand is 'Cadbury' 
select name from chocolates  
Where brand='Cadbury'; 
 
-- 5. Find chocolates where in_stock is TRUE 
select name from chocolates 
Where in_stock=TRUE; 
 
-- � Intermediate 
-- 6. Get chocolates where price is between 40 and 80 
select name from chocolates 
Where price>=40 AND price<=80; 
 
-- 7. Find chocolates where brand is 'Nestle' AND rating is greater than 4.2 
select name from chocolates 
Where brand='Nestle' AND rating>4.2; 
 
-- 8. Select chocolates where brand is 'Mars' OR brand is 'Ferrero' 
select name from chocolates 
Where brand='Mars' OR brand='Ferrero'; 
 
 
 
-- 9. Get chocolates where rating is not equal to 4.3 
select name from chocolates 
Where rating!=4.3; 
 
-- 10. Find chocolates where quantity is greater than 100 AND price is less than 60 
select name from chocolates 
Where quantity>100 AND price<60; 
 
 

-- � Advanced 
-- 11. Get chocolates where price > 80 AND rating > 4.5 
select name from chocolates  
Where  price > 80 AND rating > 4.5; 
 
-- 12. Find chocolates where brand is not 'Cadbury' 
select name from chocolates  
Where brand != 'Cadbury'; 
 
-- 13. Select chocolates where price between 50 and 100 AND in_stock is TRUE 
select name from chocolates 
Where price BETWEEN 50 AND 100 AND in_stock=TRUE; 
 
-- 14. Get chocolates where quantity > 100 AND rating > 4.3 
select name from chocolates  
Where  quantity > 100 AND rating > 4.3; 
 
 
-- 15. Find chocolates where price > 50 AND quantity < 100 
select name from chocolates  
Where  price > 50 AND quantity < 100; 
 
 