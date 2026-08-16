---
layout: single
title: "Spark: Date Arithmetic with Multiple Columns"
excerpt: Using the expr function
date: 2018-10-25 12:54
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - spark
    - til
---

Say you have a timestamp column `created_at`, and an integer column `number`
that represents a number of weeks, how do you use the `date_add` function to
calculate the resulting timestamps?

You need to also use the `expr` function:

```python
from pyspark.sql.functions import expr, date_add
new_df = my_df.withColumn('test', expr('date_add(created_at, number*7)'))
```

Via
[SO](https://stackoverflow.com/questions/36561435/date-arithmetic-with-multiple-columns-in-pyspark).
