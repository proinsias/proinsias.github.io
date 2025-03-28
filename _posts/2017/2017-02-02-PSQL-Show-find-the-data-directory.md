---
layout: single
title: "PSQL: Find The Data Directory"
excerpt: Via show data_directory
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

Where does postgres store all of the data for a database cluster? Well, in
its data directory. Where exactly that data directory is can depend on how
the database cluster was setup. Postgres can tell you right where to look,
though. Within `psql`, run

```sql
> show data_directory
```

Postgres will output the absolute path of the data directory.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
