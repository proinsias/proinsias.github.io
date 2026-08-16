---
layout: single
title: "SQL: List Columns in Table"
excerpt: The ANSI standard
date: 2018-11-06 10:57
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - sql
    - til
---

The `ANSI` standard way of listing all columns in a database table is:

```sql
SELECT
    COLUMN_NAME
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_NAME  = 'Table_Name'
```

Via
[SO](https://stackoverflow.com/questions/1580450/how-do-i-list-all-the-columns-in-a-table/1580495).
