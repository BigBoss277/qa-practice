# SQL For QA - SQLite Practice

This is a learning project for checking store data with SQLite and DB Browser
for SQLite. The first documented block covers inspecting tables, filtering
customers, finding missing customer references, and identifying repeated
customer records.

## Scope And Dates

- Original guided practice: August 27, 2026.
- First block documented and rechecked: October 9, 2026.
- Tables: `customers` and `orders`.
- Role: QA learner running queries and interpreting their results.
- Environment: a local practice database, rather than a production application.

The join and grouped checks in the initial session used guided examples.
They are documented as practice, without claiming independent mastery.

## Artifacts

| File | Contents |
| --- | --- |
| [sql-notes.md](sql-notes.md) | DB Browser workflow, schema overview, queries, and terminology. |
| [qa-sql-scenarios.md](qa-sql-scenarios.md) | First-session checks, expected behavior, actual results, and QA conclusions. |
| [first-session-queries.sql](first-session-queries.sql) | The completed read-only queries from the first practice block. |
| [sample-schema.sql](sample-schema.sql) | Table definitions and a reproducible synthetic dataset. |

## Results

- Inspected 6 customer rows and 4 order rows.
- Found 2 customers from Los Angeles, with IDs 43 and 46.
- Found 2 orders referencing missing customer ID 37.
- Found 3 groups of repeated customer records, with 2 rows in each group.

The missing customer references violate the practice assumption that every
order belongs to an existing customer. Repeated customer records need review
against uniqueness requirements before being classified as application bugs.

## Reproduce The Checks

1. Import `sample-schema.sql` into a new, empty SQLite practice database.
2. Open that database in DB Browser for SQLite and inspect the two tables.
3. Open `first-session-queries.sql` in Execute SQL.
4. Select one complete statement at a time and run it.
5. Compare the result with `qa-sql-scenarios.md`.

The sample uses synthetic phone and address values. Customer IDs, names,
cities, and order references reproduce the patterns observed in the original
practice snapshot. Duplicate customer groups and missing references are
intentional parts of the exercise. The schema omits an order-to-customer
foreign key constraint, matching the local practice database.

The local `.db` and DB Browser project files are not included in this
repository; the text-based sample is sufficient to reproduce the checks.
