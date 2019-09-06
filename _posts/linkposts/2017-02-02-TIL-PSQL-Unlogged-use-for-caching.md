---
layout: single
title: "(TIL) PSQL: Use unlogged tables for caches"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
---

Using a Postgres table for caching? You might want to try making it `unlogged`.

`unlogged` tables are not written to the write-ahead log,
which makes them much faster.
This also means they are not crash-safe,
and are truncated when a crash or unclean shutdown occurs.
For caching purposes, that's likely to be an acceptable tradeoff.

[Documentation](http://www.postgresql.org/docs/current/static/sql-createtable.html)

Via [jwworth/til](https://github.com/jwworth/til).
