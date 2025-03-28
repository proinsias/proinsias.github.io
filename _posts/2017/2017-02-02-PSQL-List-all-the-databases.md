---
layout: single
title: "PSQL: List All The Databases"
excerpt: Using the list command
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
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
