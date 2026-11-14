# SQL Practice - Limiting Results

Practice: October 12, 2026, in DB Browser for SQLite. This was a guided
follow-up to [text matching practice](like-practice.md).

**Goal:** Check which customer records are returned when a result is
sorted and limited to a specified number of rows.

| Check | Observed result |
| --- | --- |
| Return the two records with the highest customer IDs | IDs 48 and 47, in that order |
| Return the record with the highest ID among names ending in `s` | ID 46 |
| Remove the limit from the same filtered result | IDs 46 and 43, in that order |

**What I practiced:** `WHERE` restricts which rows qualify. `ORDER BY`
determines their order, and `LIMIT` caps the number of rows returned.
Removing the limit let me check that the single result was the first row
of the matching set in descending ID order. None of these checks changed
the stored data.

**QA use:** Validate a top-N list by checking both the sorting rule and
which records qualify, in addition to the row count. This exercise checked
the SQLite dataset, not an application's list or pagination interface.
