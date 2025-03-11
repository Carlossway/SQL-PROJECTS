SELECT Customers.CustomerName, SUM(Orders.Quantity) AS TotalQuantity
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerName
ORDER BY TotalQuantity DESC;
