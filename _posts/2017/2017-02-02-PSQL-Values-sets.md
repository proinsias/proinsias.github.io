---
layout: single
title: "PSQL: Sets With The Values Command"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - psql
  - sql
  - til
---

You can concisely create sets of values in PostgreSQL using the `values`
command.

```sql
> values (1), (2), (3);
 column1
---------
       1
       2
       3
```

You can even create multiple columns of values.

```sql
> values (1, 'a', true), (2, 'b', false);
 column1 | column2 | column3
---------+---------+---------
       1 | a       | t
       2 | b       | f
```

This is most often used with an insert command, but can be used on its own,
as a subquery, within a CTE, etc.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
