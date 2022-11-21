---
layout: single
title: 'PSQL: Use unlogged tables for caches'
excerpt: Trade crash-safety for speed
date: 2017-02-02
modified: 2022-11-11
categories: til
tags:
    - psql
    - sql
    - til
---

Using a Postgres table for caching? You might want to try making it `unlogged`.

`unlogged` tables are not written to the write-ahead log,
which makes them much faster.
This also means they are not crash-safe,
and are truncated when a crash or unclean shutdown occurs.
For caching purposes, that's likely to be an acceptable tradeoff.

[Documentation](http://www.postgresql.org/docs/current/static/sql-createtable.html)

Via [jwworth/til](https://github.com/jwworth/til).
