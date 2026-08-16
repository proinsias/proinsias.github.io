---
layout: single
title: "MySql: Show full query in process list"
excerpt: Using the show full processlist command
date: 2019-09-09 16.28
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - mysql
    - sql
    - til
---

```sql
SHOW PROCESSLIST
```

only shows the first 100 characters of the running SQL query. To get the full
SQL query, use:

```sql
SHOW FULL PROCESSLIST
```

Via
[SO](https://stackoverflow.com/questions/3638689/how-to-see-full-query-from-show-processlist/3638697).
