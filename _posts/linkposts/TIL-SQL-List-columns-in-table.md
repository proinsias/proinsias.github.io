---
layout: single
title: "(TIL) SQL: List Columns in Table"
date:
modified:
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
