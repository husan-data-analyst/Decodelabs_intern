CREATE DATABASE decodelabs;
USE decodelabs;
CREATE TABLE dataset (
OrderID INT,
Date DATE,
CustomerID VARCHAR(20),
Product VARCHAR(50),
Quantity INT,
UnitPrice DECIMAL(10,2),
ShippingAddress VARCHAR(100),
PaymentMethod VARCHAR(30),
OrderStatus VARCHAR(30),
TrackingNumber VARCHAR(30),
ItemsInCart INT,
CouponCode VARCHAR(30),
ReferralSource VARCHAR(30),
TotalPrice DECIMAL(10,2)
);
SELECT *
FROM `dataset for data analytics - sheet1`;
SELECT Product, Quantity, TotalPrice
FROM orders;
SELECT *
FROM orders
WHERE OrderStatus='Delivered';
SELECT *
FROM orders
WHERE OrderStatus='Cancelled';
SELECT *
FROM orders
WHERE TotalPrice >1000;
SELECT *
FROM orders
WHERE TotalPrice<500;
SELECT *
FROM orders
WHERE PaymentMethod='Credit Card';
SELECT *
FROM orders
ORDER BY Quantity DESC;
SELECT *
FROM orders
ORDER BY TotalPrice DESC;
SELECT *
FROM orders
ORDER BY TotalPrice ASC;
SELECT *
FROM orders
ORDER BY TotalPrice ASC;
SELECT Product,
COUNT(*) AS TotalOrders
FROM orders
GROUP BY Product;
SELECT Product,
SUM(TotalPrice) AS TotalSales
FROM orders
GROUP BY Product;
SELECT Product,
AVG(TotalPrice) AS AverageSales
FROM orders
GROUP BY Product;
SELECT Product,
SUM(Quantity) AS QuantitySold
FROM orders
GROUP BY Product;
SELECT PaymentMethod,
COUNT(*) AS Orders
FROM orders
GROUP BY PaymentMethod;
SELECT ReferralSource,
COUNT(*) AS Customers
FROM orders
GROUP BY ReferralSource;
SELECT OrderStatus,
COUNT(*) AS TotalOrders
FROM orders
GROUP BY OrderStatus;
SELECT SUM(TotalPrice) AS Revenue
FROM orders;
SELECT AVG(TotalPrice) AS AverageOrder
FROM orders;
SELECT AVG(TotalPrice) AS AverageOrder
FROM orders;
SELECT MAX(TotalPrice) AS HighestOrder
FROM orders;
SELECT MIN(TotalPrice) AS LowestOrder
FROM orders;
SELECT COUNT(*) AS TotalOrders
FROM orders;
SELECT Product,
SUM(TotalPrice) AS Sales
FROM orders
GROUP BY Product
HAVING SUM(TotalPrice)>100000;
SELECT *
FROM orders
WHERE PaymentMethod='Online'
AND TotalPrice>1000;
SELECT *
FROM orders
WHERE OrderStatus='Delivered'
OR OrderStatus='Shipped';
SELECT *
FROM orders
WHERE ShippingAddress LIKE '%Main%';
SELECT DISTINCT Product
FROM orders;
SELECT *
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;
SELECT Product,
SUM(TotalPrice) AS Sales
FROM orders
GROUP BY Product
ORDER BY Sales DESC
LIMIT 1;
