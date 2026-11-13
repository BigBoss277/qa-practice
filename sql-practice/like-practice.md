# SQL Practice - Text Matching

Practice: October 12, 2026, in DB Browser for SQLite. This was a guided
follow-up to the [first SQL practice block](README.md).

**Goal:** Check which customer records match a text search pattern.

| Check | Matching customer rows |
| --- | ---: |
| Name starts with a specified letter | 2 |
| Name ends with a specified letter | 2 |
| Name contains a specified text fragment | 2 |
| Name has four characters, with a specified second character | 2 |

**What I practiced:** `%` matches zero or more characters; `_` matches
exactly one character. The position of the wildcard determines whether
the fixed text is required at the start, end, or anywhere in the name.

**QA use:** Compare the results of a name search with records that meet
the stated matching rule. A text filter can return multiple rows with
the same name; it does not check uniqueness. This exercise checked the
SQLite dataset, not an application's search interface.
