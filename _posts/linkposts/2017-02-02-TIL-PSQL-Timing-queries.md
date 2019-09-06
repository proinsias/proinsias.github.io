---
layout: single
title: "(TIL) PSQL: Turn Timing On"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
---

When digging around your database and running queries, it is helpful to
have an eye on the speed of those queries. This can give insight into
where there are needs for optimizations.

Turn timing on (and off) within `psql` by running `timing`. With timing
on, the duration of each query will be displayed in milliseconds after the
output of the query.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
