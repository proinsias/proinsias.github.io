---
layout: single
title: "PSQL: Insert Just The Defaults"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - psql
  - sql
  - til
---

If you are constructing an `INSERT` statement for a table whose required
columns all have default values, you may just want to use the defaults. In
this situation, you can break away from the standard:

```sql
> insert into table_name (column1, column2) values (value1, value2);
```

Instead, simply tell Postgres that you want it to use the default values:

```sql
> insert into table_name default values;
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
