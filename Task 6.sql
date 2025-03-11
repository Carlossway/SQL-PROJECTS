SELECT LOWER(Products.ProductName) AS ProductName, SUM(Orders.Quantity) AS TotalQuantity
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName
ORDER BY ProductName;
