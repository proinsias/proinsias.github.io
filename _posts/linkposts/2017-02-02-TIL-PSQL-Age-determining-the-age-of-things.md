---
layout: single
title: "(TIL) PSQL: Determining The Age Of Things"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
---

In PostgreSQL, we can determine the age of something (or someone) by passing
a timestamp to the `age` function.

For instance, if we want to know how long it has been since y2k, we can run
the following query:

```sql
> select age(timestamp '2000-01-01');
           age
-------------------------
 16 years 4 mons 12 days
```

Additionally, if we want to know the amount of time between two dates, we
can pass two timestamps to the `age` function.

For example, we can find out how old Prince lived to be by passing in the
date of death and then date of birth:

```sql
> select age(timestamp 'April 21, 2016', timestamp 'June 7, 1958');
           age
--------------------------
 57 years 10 mons 14 days
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
