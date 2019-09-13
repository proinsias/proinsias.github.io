---
layout: single
title: "(TIL) PSQL: A Better Null Display Character"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
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
