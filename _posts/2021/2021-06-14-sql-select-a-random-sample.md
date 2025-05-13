---
layout: single
title: "SQL: Select a random sample"
excerpt: Using ordering and limit functions
date: 2021-06-14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - sql
    - til
---

To pick a random subsample of 1,000 rows from a table:

```sql
select t.*
from table t
order by rand()
limit 1000
;
```
