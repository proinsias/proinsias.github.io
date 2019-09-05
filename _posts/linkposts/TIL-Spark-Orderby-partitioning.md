---
layout: single
title: "(TIL) Spark: Orderby Partitioning"
date:
modified:
---

Remember that `orderBy` uses the number of partitions specified by
`spark.conf.get("spark.sql.shuffle.partitions")`.
The default for this is 200. Can change manually to say 8 by using:

```python
spark.conf.set("spark.sql.shuffle.partitions", "8")`
```
