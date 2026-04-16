# SQL Practice Notes

## Topics covered
- SELECT
- FROM
- WHERE
- ORDER BY
- LIMIT
- COUNT
- LIKE
- JOIN

## Example queries

### 1. Select all customers
```sql
SELECT * FROM customers
WHERE City = 'Los Angeles';

SELECT * FROM customers
ORDER BY Name;

SELECT COUNT(*) FROM customers;

SELECT * FROM customers
WHERE Name LIKE 'M%';

SELECT customers.Name, orders.Product
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;

What I learned
SELECT gets data from a table
WHERE filters rows
ORDER BY sorts results
COUNT counts rows
LIKE helps search by pattern
JOIN connects related tables
Difficulties
SQL felt difficult at first
JOIN was confusing in the beginning
It became clearer after trying real queries
