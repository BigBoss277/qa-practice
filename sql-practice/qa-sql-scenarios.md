# First SQL Practice Block - QA Scenarios

Original practice: August 27, 2026. Documented and rechecked on October 9,
2026 against the local SQLite database. The first session was guided.

The checks use the schema and sample described in [README.md](README.md).
Results are observations from a practice dataset, not bug claims about a
production application.

## QA-SQL-001 - Inspect Customers And Orders

**Goal:** Identify the tables and inspect the stored records.

**Steps:** Inspect Database Structure, select each table in Browse Data,
and then run each statement separately in Execute SQL.

```sql
SELECT * FROM customers;
SELECT * FROM orders;
```

**Expected behavior:** Each query returns the rows from the named table.

**Actual result:** 6 customer rows and 4 order rows. Customers have `ID`,
`Name`, `Phone`, `Address`, and `City`; orders have `ID`, `customer_id`,
`product`, and `amount`.

**Outcome:** Tables inspected successfully. This establishes the snapshot
used by the following checks.

## QA-SQL-002 - Filter Customers From Los Angeles

**Goal:** Find records belonging to a specific city.

```sql
SELECT * FROM customers
WHERE City = 'Los Angeles';
```

**Expected behavior:** Every returned row has `City = 'Los Angeles'`.
For the documented snapshot, customer IDs 43 and 46 should match.

**Actual result:**

| ID | Name | City |
| --- | --- | --- |
| 43 | Maks | Los Angeles |
| 46 | Maks | Los Angeles |

**Outcome:** Pass. The filter returned the 2 matching rows.

**QA use:** Compare database matches with an application's city-filtered
customer list when such an interface is available. No UI-to-database
integration check was performed in this exercise.

## QA-SQL-003 - Find Orders Linked To A Missing Customer

**Goal:** Check whether each order references an existing customer.

**Practice assumption:** Every `orders.customer_id` should match a
`customers.ID`. The current schema does not enforce this with a foreign key.

```sql
SELECT orders.ID, orders.customer_id, orders.product, orders.amount
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.ID
WHERE customers.ID IS NULL;
```

**Expected valid-data result:** No rows, if every order has an existing
customer.

**Actual result:**

| Order ID | customer_id | product | amount |
| --- | --- | --- | --- |
| 1 | 37 | iPhone | 1 |
| 2 | 37 | Keyboard | 2 |

There is no customer with ID 37 in the documented snapshot.

**Outcome:** The data integrity check fails under the stated assumption.
The query correctly identified 2 orders without matching customers.

**QA conclusion:** Record the missing references and investigate how the
data was created or changed. The absence of a foreign key permits such
references, but this exercise does not establish an application-level cause.

## QA-SQL-004 - Identify Repeated Customer Records

**Goal:** Find groups sharing the same name, phone, address, and city.
`ID` is excluded from grouping because it identifies individual rows.

```sql
SELECT Name, Phone, Address, City, COUNT(*) AS duplicate_count
FROM customers
GROUP BY Name, Phone, Address, City
HAVING COUNT(*) > 1;
```

**Expected query behavior:** Return each matching group that contains more
than one row, together with its row count.

**Actual result:** 3 groups. Phone and address values are omitted from this
summary; both fields were included in the grouping check.

| Name | City | duplicate_count |
| --- | --- | --- |
| Alex | Oregon | 2 |
| John | New-York | 2 |
| Maks | Los Angeles | 2 |

The corresponding customer ID pairs are 44/47, 45/48, and 43/46.

**Outcome:** Repeated-record observation. The query found the expected
groups in this snapshot.

**QA conclusion:** Review customer uniqueness rules before classifying
these records as defects. Matching contact details alone do not prove that
an application violated a requirement.

## Learning Outcome

- Used Database Structure, Browse Data, and Execute SQL for different tasks.
- Used `SELECT` and `WHERE` to inspect and filter data.
- Ran a guided `LEFT JOIN` check to identify missing references.
- Ran a guided `GROUP BY`, `COUNT(*)`, and `HAVING` check for repeated records.
- Distinguished query execution success from the quality of returned data.
- Kept findings tied to the dataset and stated validation assumptions.
