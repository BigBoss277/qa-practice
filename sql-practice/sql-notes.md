# SQL Practice Notes

## Topics Covered

- SELECT
- FROM
- WHERE
- ORDER BY
- LIMIT
- COUNT
- LIKE
- JOIN
- GROUP BY

## Example Queries

### Example 1 - Select all customers

```sql
SELECT * FROM customers;
```

### Example 2 - Filter by city

```sql
SELECT * FROM customers
WHERE city = 'Los Angeles';
```

### Example 3 - Sort by name

```sql
SELECT * FROM customers
ORDER BY name;
```

### Example 4 - Count rows

```sql
SELECT COUNT(*) AS total_customers
FROM customers;
```

### Example 5 - Search by pattern

```sql
SELECT * FROM customers
WHERE name LIKE 'M%';
```

### Example 6 - Simple JOIN

```sql
SELECT customers.name, orders.product
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;
```

### Example 7 - Find orders with a specific status

```sql
SELECT order_id, customer_id, status
FROM orders
WHERE status = 'Pending';
```

### Example 8 - Count orders by status

```sql
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status;
```

## QA Use Cases

- Check whether a test user exists in the database
- Verify that an order was created after checkout
- Find orders with a specific status
- Compare UI data with database data
- Check whether related records are connected correctly with JOIN

## What I Learned

- `SELECT` gets data from a table.
- `WHERE` filters rows.
- `ORDER BY` sorts results.
- `COUNT` counts rows.
- `LIKE` helps search by pattern.
- `JOIN` connects related tables.
- `GROUP BY` helps summarize data by category.

## Difficulties

- SQL felt difficult at first.
- JOIN was confusing in the beginning.
- It became clearer after trying practical QA-style queries.
