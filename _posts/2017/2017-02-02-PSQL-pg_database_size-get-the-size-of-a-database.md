---
layout: single
title: "PSQL: Get The Size Of A Database"
excerpt: Using the pg_database_size function
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

If you have connect access to a PostgreSQL database, you can use the
`pg_database_size()` function to get the size of a database in bytes.

```sql
> select pg_database_size('hr_hotels');
 pg_database_size
------------------
          8249516
```

Just give it the name of the database and it will tell you how much disk
space that database is taking up.

Checkout [the Postgres docs](http://www.postgresql.org/docs/current/static/functions-admin.html)
for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
