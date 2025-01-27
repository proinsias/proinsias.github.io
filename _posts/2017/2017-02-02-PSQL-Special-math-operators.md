---
layout: single
title: "PSQL: Special Math Operators"
excerpt: Factorial, square root, absolute value operators
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

Postgres has all the mathematical operators you might expect in any
programming language (e.g. `+`,`-`,`*`,`/`,`%`). It also has a few extras
that you might not be expecting.

Factorial Operator:

```sql
> select 5!;
 ?column?
----------
      120
(1 row)
```

Square Root Operator:

```sql
> select |/81;
 ?column?
----------
        9
(1 row)
```

Absolute Value Operator:

```sql
> select @ -23.4;
 ?column?
----------
     23.4
(1 row)
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
