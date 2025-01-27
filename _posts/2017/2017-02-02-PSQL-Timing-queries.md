---
layout: single
title: "PSQL: Turn Timing On"
excerpt: Via the timing command
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

When digging around your database and running queries, it is helpful to
have an eye on the speed of those queries. This can give insight into
where there are needs for optimizations.

Turn timing on (and off) within `psql` by running `timing`. With timing
on, the duration of each query will be displayed in milliseconds after the
output of the query.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
