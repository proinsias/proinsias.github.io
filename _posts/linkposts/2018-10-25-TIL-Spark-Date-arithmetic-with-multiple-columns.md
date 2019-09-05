---
layout: single
title: "(TIL) Spark: Date Arithmetic with Multiple Columns"
date: 2018-10-25 12:54
modified: 2018-10-25 12:54
---

Say you have a timestamp column `created_at`,
and an integer column `number` that represents a number of weeks,
how do you use the `date_add` function to calculate the resulting timestamps?

You need to also use the `expr` function:

```python
from pyspark.sql.functions import expr, date_add
new_df = my_df.withColumn('test', expr('date_add(created_at, number*7)'))
```

Via [SO](https://stackoverflow.com/q/36561435/1257318).
