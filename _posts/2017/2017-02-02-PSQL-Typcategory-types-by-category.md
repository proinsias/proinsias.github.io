---
layout: single
title: "PSQL: Types By Category"
excerpt: Array, Boolean, String, Numeric, Composite, etc.
date: 2017-02-02
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - psql
    - sql
    - til
---

Postgres has many types, each of which fall into a particular category.
These categories include Array, Boolean, String, Numeric, Composite, etc.
Each of these categories has a corresponding code. For instance, numeric
types have a code of `N`. Using `N` I can get a list of all the numeric
types:

```sql
> select typname from pg_type where typcategory = 'N';
     typname
-----------------
 int8
 int2
 int4
 regproc
 oid
 float4
 float8
 money
 numeric
 regprocedure
 regoper
 regoperator
 regclass
 regtype
 regconfig
 regdictionary
 cardinal_number
(17 rows)
```

Check out
[`pg_type`](http://www.postgresql.org/docs/current/interactive/catalog-pg-type.html)
in the Postgres docs for a list of all categories and codes.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
