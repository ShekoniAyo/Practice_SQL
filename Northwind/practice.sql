SELECT *
FROM my_practice_table;

-- Total number of orders
SELECT COUNT(*) AS [Total Orders]
FROM my_practice_table;

-- Total number of orders for each product and its turnover
SELECT DISTINCT [Product Name], COUNT(*) AS [No. of Orders], SUM([Total Price]) AS [Turnover]
FROM my_practice_table
GROUP BY [Product Name]
ORDER BY COUNT(*) DESC, SUM([Total Price]) DESC;

-- Total sales for each customer(company) along with the number of orders
SELECT DISTINCT [Company Name],  COUNT(*) AS [No. of Orders], SUM([Total Price]) AS [Total Sales]
FROM my_practice_table
GROUP BY [Company Name]
ORDER BY COUNT(*) DESC , SUM([Total Price]) DESC;

-- Total number of orders handled by each employee and the amount of sales they generated
SELECT DISTINCT [Employee Name], COUNT(*) AS [No. of Orders], SUM([Total Price]) AS [Total Sales]
FROM my_practice_table
GROUP BY [Employee Name]
ORDER BY COUNT(*) DESC, SUM([Total Price]) DESC;

-- Total number of orders for each category
SELECT DISTINCT [Category], COUNT(*) AS [No. of Orders], SUM([Total Price]) AS [Turnover]
FROM my_practice_table
GROUP BY [Category]
ORDER BY COUNT(*) DESC;

-- Total number of orders shipped by each shipping company
SELECT DISTINCT [Shipping Company], COUNT(*) AS [No. of Orders]
FROM my_practice_table
GROUP BY [Shipping Company]
ORDER BY COUNT(*) DESC;

-- Total number of orders that had discounts applied
SELECT COUNT(*) AS [Total Discounted Orders]
FROM my_practice_table
WHERE [Discount Applied] IN ('Yes');

-- Total number of undelivered orders
SELECT COUNT(*) AS [Total Undelivered Orders]
FROM my_practice_table
WHERE [Delivery Date] IS NULL;

-- Overall turnover from all orders
SELECT SUM([Total Price]) AS [Overall Turnover]
FROM my_practice_table;

-- List of years in which deliveries were made
-- This query can also be used to find the number of deliveries made each year
SELECT DISTINCT YEAR([Delivery Date]) AS [Year], COUNT(*) AS [No. of Deliveries]
FROM my_practice_table
WHERE [Delivery Date] IS NOT NULL
GROUP BY YEAR([Delivery Date])
ORDER BY YEAR([Delivery Date]);