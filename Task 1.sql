SELECT Orders.OrderID, Orders.ProductID, Orders.Quantity, 
       (Orders.Quantity * Products.Price) AS Total
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
WHERE Products.Price > 25;




