---
layout: single
title: 'PSQL: Get The Size Of An Index'
excerpt: Using the pg_size_pretty and pg_relation_size functions
date: 2017-02-02
last_modified_at: 2022-12-14
categories: til
tags:
    - psql
    - sql
    - til
---

Want to get an idea of how much disk space that additional index is taking
up?

For instance, if I have a table with a `users_key` index and a
`users_unique_lower_email_idx` index, I can check the sizes like so:

```sql
> select pg_size_pretty(pg_relation_size('users_key'));
 pg_size_pretty
----------------
 240 kB

> select pg_size_pretty(pg_relation_size('users_unique_lower_email_idx'));
 pg_size_pretty
----------------
 704 kB
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
