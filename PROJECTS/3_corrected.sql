SELECT Products.ProductName, ROUND(SUM(Orders.Quantity * Products.Price), 2) AS TotalRevenue
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName;
