---
layout: single
title: "PSQL: Generate Series Of Numbers"
excerpt: Using the generate_series function
date: 2017-02-02
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - psql
    - sql
    - til
---

Postgres has a `generate_series` function that can be used to, well,
generate a series of something. The simplest way to use it is by giving it
`start` and `stop` arguments

```sql
> select generate_series(1,5);
 generate_series
-----------------
               1
               2
               3
               4
               5
```

The default step is 1, so if you want to count backwards, you need to
specify a negative step:

```sql
> select generate_series(5,1,-1);
 generate_series
-----------------
               5
               4
               3
               2
               1
```

You can use a larger step value to, for instance, get only multiples of 3

```sql
> select generate_series(3,17,3);
 generate_series
-----------------
               3
               6
               9
              12
              15
```

Trying this out with timestamps is left as an exercise for the reader.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
