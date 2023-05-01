---
layout: single
title: 'Spark: Count number of duplicate rows'
excerpt: Using the groupby function
date: 2018-10-25 12:46
last_modified_at: 2023-05-01 18:10:56
categories:
    - til
tags:
    - spark
    - til
---

To count the number of duplicate rows in a pyspark DataFrame,
you want to `groupBy()` all the columns and `count()`,
then select the sum of the counts for the rows where the count is greater than 1:

```python
import pyspark.sql.functions as funcs
df.groupBy(df.columns)\
    .count()\
    .where(funcs.col('count') > 1)\
    .select(funcs.sum('count'))\
    .show()
```

Via [SO](https://web.archive.org/web/20220818191209/https://stackoverflow.com/questions/48554619/count-number-of-duplicate-rows-in-sparksql/48554666).
