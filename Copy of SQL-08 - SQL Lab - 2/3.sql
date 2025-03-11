SELECT Products.ProductName, Sum(orders.Total)AS TotalRevenue
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName;
