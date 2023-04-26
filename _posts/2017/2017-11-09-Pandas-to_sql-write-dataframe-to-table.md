---
layout: single
title: 'Pandas: Write DataFrame to table with to_sql'
date: 2017-11-09 12:35
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - pandas
    - sql
    - til
---

You can write DataFrames to a database table via a `sqlalchemy` connection as follows:

```python
from sqlalchemy import create_engine
engine = create_engine('postgresql://scott:tiger@localhost:5432/database')
df.to_sql('table_name', engine)
```

Via [StackOverflow](http://stackoverflow.com/a/23104436/1257318).
