---
layout: single
title: 'PSQL: A Better Null Display Character'
excerpt: Update the default null
date: 2017-02-02
last_modified_at: 2022-11-11
categories: til
tags:
    - psql
    - sql
    - til
---

By default, `psql` will display null values with whitespace. This makes it
difficult to quickly identify null values when they appear amongst a bunch
of other data. You can pick a better display value for null characters with
`\pset null`. My preference is the following:

```psql
\pset null 'Ø'
```

I have this in my `.psqlrc` file so that it is used by default every time.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
