---
layout: single
title: "Spark: Orderby Partitioning"
date: 2017-02-27 14:27
modified: 2017-02-27 14:27
categories: til
tags:
  - spark
  - til
---

Remember that `orderBy` uses the number of partitions specified by
`spark.conf.get("spark.sql.shuffle.partitions")`.
The default for this is 200. Can change manually to say 8 by using:

```python
spark.conf.set("spark.sql.shuffle.partitions", "8")`
```
