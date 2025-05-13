---
layout: single
title: "SQL: List Columns in Table"
excerpt: The ANSI standard
date: 2018-11-06 10:57
last_modified_at: 2025-05-13 00:33:19
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
