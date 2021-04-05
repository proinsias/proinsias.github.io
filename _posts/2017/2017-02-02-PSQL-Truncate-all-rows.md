---
layout: single
title: "PSQL: Truncate All Rows"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - psql
  - sql
  - til
---

Given a postgres database, if you want to delete all rows in a table, you
can use the `DELETE` query without any conditions.

```sql
> delete from pokemons;
DELETE 151
```

Though `DELETE` can do the job, if you really are deleting all rows to clear
out a table, you are better off using `TRUNCATE`. A `TRUNCATE` query will be
faster than a `DELETE` query because it will just delete the rows without
scanning them as it goes.

```sql
> truncate pokemons;
TRUNCATE TABLE
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
