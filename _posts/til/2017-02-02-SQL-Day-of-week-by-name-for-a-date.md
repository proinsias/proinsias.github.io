---
layout: single
title: "(TIL) SQL: Day Of Week By Name For A Date"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - sql
  - til
---

In [Day Of Week For A Date](day-of-week-for-a-date.md), I explained how to
determine what day of the week a date is as an integer with PostgreSQL. This
used the `date_part()` function. By using the `to_char()` function with a
date or timestamp, we can determine the day of the week by name (e.g.
Monday). For instance, to determine what day today is, try a statement like
the following:

```sql
> select to_char(now(), 'Day');
  to_char
-----------
 Sunday
```

The `Day` part of the second argument is just one of many template patterns
that can be used for formatting dates and times.

See [Data Type Formatting
Functions](http://www.postgresql.org/docs/current/static/functions-formatting.html)
in the Postgres docs for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
