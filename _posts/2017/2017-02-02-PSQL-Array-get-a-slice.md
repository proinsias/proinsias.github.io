---
layout: single
title: 'PSQL: Getting A Slice Of An Array'
excerpt: Using brackets
date: 2017-02-02
last_modified_at: 2022-11-11
categories: til
tags:
    - psql
    - sql
    - til
---

Postgres has a very natural syntax for grabbing a slice of an array. You
simply add brackets after the array declaring the lower and upper bounds
of the slice separated by a colon.

```sql
> select (array[4,5,6,7,8,9])[2:4];
  array
---------
 {5,6,7}
```

Notice that the bounds are inclusive, the array index is `1`-based, and the
array declaration above needs to be wrapped in parentheses in order to not
trip up the array slice syntax.

You can also select rectangular slices from two dimensional arrays like so:

```sql
> select (array[[1,2,3],[4,5,6],[7,8,9]])[2:3][1:2];
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
