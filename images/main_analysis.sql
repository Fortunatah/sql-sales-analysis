-- ====================================================
-- SQL Basic Project to prove basic SQL query knowledge
-- Hayden John Fortunata
-- Description: Analysis of sales reps, customer orders, and inventory
-- ====================================================
USE classicmodels;

-- See customer name, their order number and who there sales rep was

SELECT 
	c.customerName AS 'Customer',
    o.orderNumber AS 'Order #',
    e.firstName AS 'Employee First Name',
    e.lastName AS 'Employee Last Name'
FROM customers c
JOIN orders o
	USING(customerNumber)
JOIN employees e
	ON e.employeeNumber = c.salesRepEmployeeNumber;

-- See if any of the products contain interior or dashboard
SELECT 
	p.productDescription AS 'Product Description'
FROM products p
WHERE p.productDescription REGEXP 'interior|dashboard';

SELECT
	c.customerName
FROM customers c
LEFT JOIN orders o
	USING(customerNumber)
WHERE o.orderNumber IS NULL;