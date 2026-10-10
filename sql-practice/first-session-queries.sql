-- QA-SQL-001: Inspect the tables (6 customer rows and 4 order rows).
SELECT * FROM customers;

SELECT * FROM orders;

-- QA-SQL-002: Customers from Los Angeles (IDs 43 and 46).
SELECT * FROM customers
WHERE City = 'Los Angeles';

-- QA-SQL-003: Orders without a matching customer (order IDs 1 and 2).
SELECT orders.ID, orders.customer_id, orders.product, orders.amount
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.ID
WHERE customers.ID IS NULL;

-- QA-SQL-004: Repeated customer groups (Alex, John, and Maks, 2 rows each).
SELECT Name, Phone, Address, City, COUNT(*) AS duplicate_count
FROM customers
GROUP BY Name, Phone, Address, City
HAVING COUNT(*) > 1;
