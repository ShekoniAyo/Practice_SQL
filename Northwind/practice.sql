SELECT *
FROM my_practice_table;

-- Total number of orders
SELECT COUNT(*) AS [Total Orders]
FROM my_practice_table;

-- Total number of orders for each product
SELECT DISTINCT [Product Name], COUNT(*) AS [No. of Orders]
FROM my_practice_table
GROUP BY [Product Name]
ORDER BY COUNT(*) DESC;

-- Total sales for each customer(company) along with the number of orders
SELECT DISTINCT [Company Name], COUNT(*) AS [No. of Orders], SUM([Total Price]) AS [Total Sales]
FROM my_practice_table
GROUP BY [Company Name]
ORDER BY COUNT(*) DESC, SUM([Total Price]) DESC;

-- Total number of orders handled by each employee and the amount of sales they generated
SELECT DISTINCT [Employee Name], COUNT(*) AS [No. of Orders], SUM([Total Price]) AS [Total Sales]
FROM my_practice_table
GROUP BY [Employee Name]
ORDER BY COUNT(*) DESC, SUM([Total Price]) DESC;

-- Total number of orders for each category
SELECT DISTINCT [Category], COUNT(*) AS [No. of Orders]
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