--CREATE OR ALTER VIEW my_order_table AS
SELECT 
o.OrderID AS [Order ID],
p.ProductName AS [Product Name],
cat.CategoryName AS Category,
c.CompanyName AS [Company Name],
e.FirstName + ' ' + e.LastName AS [Employee Name],
s.CompanyName AS [Shipping Company],
od.Quantity,
od.UnitPrice AS [Price per Unit],
CASE WHEN od.Discount > 0 
    THEN 'Yes' 
    ELSE 'No' 
    END AS [Discount Applied],
od.UnitPrice * od.Quantity AS [Total Price],
CAST(o.ShippedDate AS DATE) AS [Delivery Date],
c.Address + ', ' + c.City +  ', ' + c.Country AS [Customer Address],
c.Phone AS [Customer Phone]
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
JOIN Shippers s ON o.ShipVia = s.ShipperID
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories cat ON p.CategoryID = cat.CategoryID