# SQL Practice - Grouping And Filtering Groups

Documented: November 18, 2026. This follow-up revisited grouped checks in
DB Browser for SQLite with step-by-step guidance.

**Goal:** Count order rows by customer reference and identify groups of
customer records with repeated details.

| Check | Observed result |
| --- | --- |
| Group orders by customer reference and count rows | References 37 and 46 each had 2 order rows. |
| Keep order groups with more than 2 rows | No groups remained; each count was exactly 2. |
| Keep order groups with at least 2 rows | Both groups remained, with counts of 2. |
| Group customers by name, phone, city, and address | 3 groups had matching details, with 2 rows in each group. |
| Keep customer groups with exactly 2 rows or at least 2 rows | Both conditions returned the same 3 groups in this dataset. |

**What I practiced:** `GROUP BY` combines rows that share the selected
grouping values. `COUNT(*)` counts rows in each group, and `HAVING` filters
the resulting groups. An empty result can be correct when no group meets
the condition. Counting order rows does not add up the product quantities.

Customer IDs were excluded from the repeated-details grouping because
each customer record had its own ID. Matching name and contact fields
formed the groups instead. The order grouping also included reference 37,
even though no matching customer existed: this check counted order rows
without joining the customer table.

**QA use:** Review repeated customer details and check counts against a
stated rule. Repeated details are duplicate candidates, not automatically
confirmed defects; classification depends on the product's uniqueness
requirements. These were checks on a practice dataset, not production data.
