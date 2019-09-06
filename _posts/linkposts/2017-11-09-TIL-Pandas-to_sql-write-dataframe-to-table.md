---
layout: single
title: "(TIL) Pandas: Write DataFrame to table with to_sql"
date: 2017-11-09 12:35
modified: 2017-11-09 12:35
---

You can write DataFrames to a database table via a `sqlalchemy` connection as follows:

```python
from sqlalchemy import create_engine
engine = create_engine('postgresql://scott:tiger@localhost:5432/mydatabase')
df.to_sql('table_name', engine)
```

Via [StackOverflow](http://stackoverflow.com/a/23104436/1257318).
