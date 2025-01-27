---
layout: single
title: "SQL: Count Records By Type"
excerpt: Using group by
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - sql
    - til
---

If you have a table with some sort of type column on it, you can come up
with a count of the records in that table by type. You just need to take
advantage of `group by`:

```sql
> select type, count(*) from pokemon group by type;

  type   | count
-----------------
 fire    |    10
 water   |     4
 plant   |     7
 psychic |     3
 rock    |    12
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
