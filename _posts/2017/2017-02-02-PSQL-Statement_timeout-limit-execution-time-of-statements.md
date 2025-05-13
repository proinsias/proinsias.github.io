---
layout: single
title: "PSQL: Limit Execution Time Of Statements"
excerpt: Set a hard timeout
date: 2017-02-02
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - psql
    - sql
    - til
---

You can limit the amount of time that postgres will execute a statement
by setting a hard timeout. By default the timeout is 0 (see `show statement_timeout;`)
which means statements will be given as much time as they need.

If you do want to limit your statements, to say, 1 second, you can set the
execution time like so

```sql
> set statement_timeout = '1s';
SET
> show statement_timeout;
 statement_timeout
-------------------
 1s
(1 row)
```

Any queries taking longer than 1 second will be aborted with the following
message output

```sql
ERROR:  canceling statement due to statement timeout
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
