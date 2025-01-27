---
layout: single
title: "PSQL: Get The Size Of A Table"
excerpt: Using the pg_relation_size function
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

With the `pg_relation_size()` function, we can get the size of a given table.
For instance, if we'd like to see the size of the `reservations` table,
we can by executing the following query:

```sql
> select pg_relation_size('reservations');
 pg_relation_size
------------------
          1531904
```

This gives us the size of the `reservations` table in bytes. As you might
expect, the referenced table needs to be part of the connected database and
on the search path.

See [the Postgres docs](http://www.postgresql.org/docs/current/static/functions-admin.html)
for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
