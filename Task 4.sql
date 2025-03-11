SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS OrderCount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON Orders.ProductID = Products.ProductID  -- Ensure Products table is joined
WHERE Orders.OrderDate BETWEEN '2023-12-01' AND '2023-12-31'
GROUP BY Customers.CustomerName
HAVING COUNT(Orders.OrderID) >= 2 
   AND MIN(Orders.Quantity * Products.Price) > 100;

