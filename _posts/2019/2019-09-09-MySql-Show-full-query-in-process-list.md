---
layout: single
title: "MySql: Show full query in process list"
excerpt: Using the show full processlist command
date: 2019-09-09 16.28
last_modified_at: 2025-05-13 00:33:19
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

only shows the first 100 characters of the running SQL query. To get the full SQL query, use:

```sql
SHOW FULL PROCESSLIST
```

Via [SO](https://stackoverflow.com/a/3638697/1257318).
