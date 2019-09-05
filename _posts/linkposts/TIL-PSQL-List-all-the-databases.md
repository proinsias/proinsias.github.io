---
layout: single
title: "(TIL) PSQL: List All The Databases"
date:
modified:
---

There are two ways to list all the available databases. The first is a
`psql` only command:

```psql
\list
```

with a short form of `\l`.

The second approach is to query the `pg_database` table. Something like the
following will suffice:

```sql
select datname from pg_database;
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
