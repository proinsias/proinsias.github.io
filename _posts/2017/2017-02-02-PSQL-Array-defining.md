---
layout: single
title: "PSQL: Defining Arrays"
excerpt: With one or two dimensions
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

In postgres, an array can be defined using the `array` syntax like so:

```sql
> select array['a','b','c'];
#  array
#---------
# {a,b,c}
```

If you are inserting into an existing array column, you can use the array
literal syntax.

```sql
> create temp table favorite_numbers(numbers integer[]);
#CREATE TABLE
> insert into favorite_numbers values( '{7,3,9}' );
#INSERT 0 1
> select numbers[2] from favorite_numbers;
# numbers
#---------
#       3
```

Postgres also supports two-dimensional arrays.

```sql
select array[[1,2,3],[4,5,6],[7,8,9]] telephone;
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
