-- 1. How many products were sold in each category?

SELECT products.category , SUM(orders.Quantity) AS total_products_sold
FROM orders
NATURAL JOIN products 
GROUP BY category;

ALTER TABLE orders CHANGE `Total Sales` TotalSales DOUBLE;

-- 2 What is the breakdown of total sales revenue by country?

SELECT c.Country, SUM(TotalSales) AS Total_Revenue
FROM Orders o
JOIN Customers c ON o.`Customer ID` = c.`Customer ID`
GROUP BY c.Country
ORDER BY Total_Revenue DESC
LIMIT 1000;

-- 3 How many products have sold more than 1000 units?

SELECT products.`Product ID`, `Product Name`, SUM(o.Quantity) AS "Total Units"
FROM Orders o  
JOIN products ON o.`Product ID` = products.`Product ID` 
GROUP BY products.`Product ID`, `Product Name`  
HAVING SUM(o.Quantity) > 1000;
