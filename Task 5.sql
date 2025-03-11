SELECT Orders.OrderID, LEFT(Customers.CustomerName, 3) AS CustomerPrefix, 
       Products.ProductName, SUM(Orders.Quantity * Products.Price) AS TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Orders.OrderID, CustomerPrefix, Products.ProductName;
