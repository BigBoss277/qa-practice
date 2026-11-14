# SQL Practice - Joining Orders And Customers

Practice: October 12 through November 3, 2026, in DB Browser for SQLite.
This follow-up revisited the [first SQL practice block](README.md) with
step-by-step guidance.

**Goal:** Compare which orders appear when matching order records to
customer records by customer ID. The order ID identifies the order itself,
while `orders.customer_id` is matched against `customers.ID`.

| Check | Observed result |
| --- | --- |
| `INNER JOIN`: show orders with a matching customer | Orders 3 and 4 matched customer 46. |
| `LEFT JOIN` starting from orders: keep unmatched orders too | All four orders appeared. The customer name was `NULL` for orders 1 and 2. |
| Filter the left join on a missing customer ID with `IS NULL` | Only orders 1 and 2 remained. Both referenced customer 37, which did not exist in the sample. |

**What I practiced:** The join condition controls how rows match, and the
join type controls whether unmatched orders appear. For an unmatched
order, SQLite returns `NULL` for the selected customer fields; the stored
customer reference in the order is unchanged.

**QA use:** Check whether orders refer to existing customers. If a
requirement says every order must reference an existing customer, the two
unmatched orders are data integrity findings in this sample, not evidence
of a production defect.
