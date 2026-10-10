# SQL Practice Notes

## Practice Context

- Tool: DB Browser for SQLite.
- Database: a local store practice database with `customers` and `orders`.
- First guided practice session: August 27, 2026.
- First-session results documented and rechecked: October 9, 2026.

The first session covered reading data, filtering customers, finding orders
without a matching customer, and finding repeated customer records. The
`LEFT JOIN` and grouped checks were guided examples; independent practice
with these techniques is still planned.

## Working In DB Browser

| Tab | Purpose |
| --- | --- |
| Database Structure | Inspect table names, columns, and constraints. |
| Browse Data | Select a table and inspect its rows visually. |
| Execute SQL | Write and run queries, then inspect the result and execution message. |

When working with several statements, select the complete query to run.
Keep the final semicolon at the end of that query. A semicolon separates
statements; it does not belong between `FROM`, `WHERE`, and `ORDER BY`.

The first-session queries are ordinary `SELECT` statements that read data.

## Practice Tables

| Table | Columns |
| --- | --- |
| `customers` | `ID`, `Name`, `Phone`, `Address`, `City` |
| `orders` | `ID`, `customer_id`, `product`, `amount` |

The intended relationship is `orders.customer_id = customers.ID`.
This practice schema does not define a foreign key constraint for that
relationship. It has no `orders.status` or `orders.order_id` columns.

## First-Session Queries

### Inspect The Tables

```sql
SELECT * FROM customers;
SELECT * FROM orders;
```

The local snapshot contains 6 customer rows and 4 order rows.

### Filter Customers By City

```sql
SELECT * FROM customers
WHERE City = 'Los Angeles';
```

Result: 2 rows, both named Maks, with customer IDs 43 and 46.

### Find Orders Without A Matching Customer

```sql
SELECT orders.ID, orders.customer_id, orders.product, orders.amount
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.ID
WHERE customers.ID IS NULL;
```

Result: order IDs 1 and 2 reference customer ID 37, which is missing from
`customers`. This is a data integrity finding under the practice assumption
that every order must belong to an existing customer.

### Find Repeated Customer Records

```sql
SELECT Name, Phone, Address, City, COUNT(*) AS duplicate_count
FROM customers
GROUP BY Name, Phone, Address, City
HAVING COUNT(*) > 1;
```

Result: 3 groups, for Alex, John, and Maks; each group contains 2 rows with
the same name, phone, address, and city. The rows have different IDs.
Whether these repeated records are defects depends on customer uniqueness
requirements.

## Terms From Practice

| Term | Meaning |
| --- | --- |
| `SELECT` | Chooses the columns to return; `*` returns all columns. |
| `FROM` | Identifies the table to read. |
| `WHERE` | Filters rows using a condition. |
| `JOIN` | Combines rows from related tables using a matching condition. |
| `LEFT JOIN` | Keeps every row from the left table; unmatched right-side columns are `NULL`. |
| `COUNT(*)` | Counts rows, including repeated records. |
| `GROUP BY` | Groups rows with the same values in the selected grouping columns. |
| `HAVING` | Filters groups after grouping. |

Terms reinforced during the October 8-9 review:

- `ORDER BY` sorts result rows; the default direction is ascending.
- `DESC` reverses the sort direction.
- `AND` requires both conditions to be true for a row.
- `OR` requires at least one condition to be true for a row.
- `AND` and `OR` combine conditions, rather than automatically comparing
  a column to a list of bare text values.

## QA Interpretation

- A city filter can help validate which customer records should be shown
  by an application filter.
- A missing customer reference is a data integrity finding when the data
  model requires every order to belong to an existing customer.
- Repeated customer records are candidates for investigation; query output
  alone does not establish the application's uniqueness requirements.
- A query can execute successfully and still return the wrong result for
  the intended check, so the returned rows must be reviewed.

## Further Practice

- Search text using `LIKE`.
- Limit results using `LIMIT`.
- Practice `JOIN`, `GROUP BY`, and `HAVING` independently.
- Continue small reviews of filtering, sorting, counting, `AND`, and `OR`.

Detailed first-session scenarios and outcomes:
[QA SQL Scenarios](qa-sql-scenarios.md).
