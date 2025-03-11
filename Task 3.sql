SELECT Products.ProductName, SUM(Orders.Total) AS TotalSales, 
       CASE 
           WHEN SUM(Orders.Quantity * Products.Price) > 300 THEN 'High Revenue' 
           ELSE 'Low Revenue' 
       END AS RevenueCategory
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName;
