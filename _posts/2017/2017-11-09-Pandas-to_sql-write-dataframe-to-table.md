---
layout: single
title: "Pandas: Write DataFrame to table with to_sql"
excerpt: Via sqlalchemy
date: 2017-11-09 12:35
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - pandas
    - sql
    - til
---

You can write DataFrames to a database table via a `sqlalchemy` connection as
follows:

```python
from sqlalchemy import create_engine
engine = create_engine('postgresql://scott:tiger@localhost:5432/database')
df.to_sql('table_name', engine)
```

Via
[Stack Overflow](https://stackoverflow.com/questions/23103962/how-to-write-dataframe-to-postgres-table/23104436).
