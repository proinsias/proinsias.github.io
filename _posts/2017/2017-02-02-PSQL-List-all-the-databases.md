---
layout: single
title: 'PSQL: List All The Databases'
excerpt: Using the list command
date: 2017-02-02 20:57
modified: 2022-11-11 20:57
categories: til
tags:
    - psql
    - sql
    - til
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
