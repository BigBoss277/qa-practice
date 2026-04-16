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
SELECT * FROM customers;
```
### Example 2 — Filter by city
```sql
SELECT * FROM customers
WHERE City = 'Los Angeles';
```
### Example 3 — Sort by name
```sql
SELECT * FROM customers;
ORDER BY Name;
``` 

### Example 4 — Count rows
```sql
SELECT COUNT(*) FROM customers;
```
### Example 5 — Search by pattern
```sql
SELECT * FROM customers
WHERE Name LIKE 'M%';
```
### Example 6 — Simple JOIN
```sql
SELECT customers.Name, orders.Product
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;
```
## What I learned
-SELECT gets data from a table
-WHERE filters rows
-ORDER BY sorts results
-COUNT counts rows
-LIKE helps search by pattern
-JOIN connects related tables

## Difficulties
-SQL felt difficult at first
-JOIN was confusing in the beginning
-It became clearer after trying real queries
