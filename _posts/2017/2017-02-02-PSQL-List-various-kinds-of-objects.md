---
layout: single
title: "PSQL: List Various Kinds Of Objects"
excerpt: Useful meta-commands
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

Our PostgreSQL database can end up with all kinds of objects: tables,
sequences, views, etc. We can use a variety of `psql` meta-commands to list
the different types of (user-created) objects in our database.

-   `\dt` will list all the tables
-   `\dE` will list all the foreign tables
-   `\di` will list all the indexes
-   `\ds` will list all the sequences
-   `\dv` will list all the views
-   `\dm` will list all the materialized views

These can also be combined. For instance, to see all the tables and
sequences, we can run `\dts`.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
