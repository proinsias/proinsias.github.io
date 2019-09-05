---
layout: single
title: "(TIL) Spark: Calculating the length of a column with size"
date:
modified:
---

In Spark >= 1.5 you can use the `size` function to calculate the length of a column:

```pyspark
>>> from pyspark.sql.functions import col, size
>>>df = sqlContext.createDataFrame([
    (["L", "S", "Y", "S"],  ),
    (["L", "V", "I", "S"],  ),
    (["I", "A", "N", "A"],  ),
    (["I", "L", "S", "A"],  ),
    (["E", "N", "N", "Y"],  ),
    (["E", "I", "M", "A"],  ),
    (["O", "A", "N", "A"],  ),
    (["S", "U", "S"],  )],
    ("tokens", ))
>>>df.where(size(col("tokens")) <= 3).show()
+---------+
|   tokens|
+---------+
|[S, U, S]|
+---------+
```

Via [StackOverflow](http://stackoverflow.com/a/33695672/1257318)
.
