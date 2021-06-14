---
layout: single
title: "SQL: Select a random sample"
date: 2021-06-14 18:52
modified: 2021-06-14 18:52
categories: til
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
