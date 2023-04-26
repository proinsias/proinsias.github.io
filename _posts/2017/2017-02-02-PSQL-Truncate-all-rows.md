---
layout: single
title: 'PSQL: Truncate All Rows'
excerpt: Use truncate rather than delete
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

Given a postgres database, if you want to delete all rows in a table, you
can use the `DELETE` query without any conditions.

```sql
> delete from pokemon;
DELETE 151
```

Though `DELETE` can do the job, if you really are deleting all rows to clear
out a table, you are better off using `TRUNCATE`. A `TRUNCATE` query will be
faster than a `DELETE` query because it will just delete the rows without
scanning them as it goes.

```sql
> truncate pokemon;
TRUNCATE TABLE
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
