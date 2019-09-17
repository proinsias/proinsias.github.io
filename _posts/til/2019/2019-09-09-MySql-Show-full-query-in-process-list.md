---
layout: single
title: "(TIL) MySql: Show full query in process list"
date: 2019-09-09 16.28
modified: 2019-09-09 16.28
categories: til
tags:
  - mysql
  - sql
  - til
---

```sql
SHOW PROCESSLIST
```

only shows the first 100 characters of the running SQL query. To get the full SQL query, use:

```sql
SHOW FULL PROCESSLIST
```

Via [SO](https://stackoverflow.com/a/3638697/1257318).
