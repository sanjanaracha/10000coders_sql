/* Create a table in your database with the following 
columns: sale_date, product_id, and total_revenue. */

CREATE TABLE sales( 
sale_date DATE, 
product_id INT,  
total_revenue DECIMAL(10,2) 
); 
--  Insert at least 10 rows of sample data into the table. 
INSERT INTO sales VALUES 
('2026-04-01', 101, 500.00), 
('2026-04-01', 102, 750.00), 
('2026-04-02', 101, 300.00), 
('2026-04-02', 103, 900.00), 
('2026-04-03', 102, 650.00), 
('2026-04-03', 104, 1200.00), 
('2026-04-04', 101, 400.00), 
('2026-04-04', 103, 800.00), 
('2026-04-05', 104, 1500.00), 
('2026-04-05', 102, 700.00); 
--  Write SQL queries using aggregate functions 

/* What is the total revenue for all sales? 
(e.g., SUM, AVG, MAX, MIN, COUNT) to answer the following questions: */
select SUM(total_revenue) AS total_revenue_all_sales from sales; 

--  What is the average revenue per sale? 
select AVG(total_revenue) AS average_revenue from sales; 
--  What is the maximum and minimum revenue for a single sale? 
Select max(total_revenue) AS max_revenue, 
min(total_revenue) AS min_revenue from sales; 
--  How many sales were made for each product ID? 
select product_id ,count(*) AS total_sales  
from sales 
group by product_id ;  

/* Save your SQL queries and results in a file 
named aggregate_functions_practice.sql. 
Results: 
 Total Revenue → 7700  
 Average Revenue → 770  
 Max Revenue → 1500  
 Min Revenue → 300 */