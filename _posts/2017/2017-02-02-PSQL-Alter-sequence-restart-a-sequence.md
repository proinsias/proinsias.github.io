---
layout: single
title: "PSQL: Restart A Sequence"
excerpt: Using alter sequence
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

In postgres, if you are truncating a table or doing some other sort of
destructive action on a table in a development or testing environment, you
may notice that the id sequence for the primary key just keeps plugging
along from where it last left off. The sequence can be reset to any value
like so:

```sql
> alter sequence my_table_id_seq restart with 1;
ALTER SEQUENCE
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
