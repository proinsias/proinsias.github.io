---
layout: single
title: 'SQL: List Columns in Table'
date: 2018-11-06 10:57
last_modified_at: 2023-04-26 13:22:37
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

Via [SO](https://stackoverflow.com/a/1580495/1257318).
