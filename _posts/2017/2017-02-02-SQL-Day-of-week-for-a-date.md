---
layout: single
title: 'SQL: Day Of Week For A Date'
excerpt: Using date_part
date: 2017-02-02
last_modified_at: 2022-12-16
categories: til
tags:
    - sql
    - til
---

Given a `date` in PostgreSQL

```sql
> select '2050-1-1'::date;
    date
------------
 2050-01-01
```

you can determine the day of the week for that date with the `date_part()`
function

```sql
> select date_part('dow', '2050-1-1'::date);
 date_part
-----------
         6
```

The days of week are `0` through `6`, `0` being Sunday and `6` being
Saturday.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
