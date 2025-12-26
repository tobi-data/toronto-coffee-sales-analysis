/* Sales for a small coffee shop chain in Toronto, Canada. The client wants to know: Total sales for the month,
Number of orders per customer, Top-selling drink, Customer who spent the most. */

--1. Total Sales
SELECT SUM(amount) AS total_sales
FROM orders;

--2. Orders per Customer
SELECT c.name, COUNT(o.id) AS total_orders
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_orders DESC;

--3. Total Spent
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;

--4. Avg Order
SELECT c.name, AVG(o.amount) AS avg_order
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY avg_order DESC;
