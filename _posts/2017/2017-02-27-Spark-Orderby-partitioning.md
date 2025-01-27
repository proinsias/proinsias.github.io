---
layout: single
title: "Spark: Orderby Partitioning"
excerpt: The spark.sql.shuffle.partitions configuration option
date: 2017-02-27
last_modified_at: 2023-04-26 13:22:37
categories:
    - tips
tags:
    - spark
    - tips
redirect_from:
    - /til/Spark-Orderby-partitioning/
---

Remember that `orderBy` uses the number of partitions specified by
`spark.conf.get("spark.sql.shuffle.partitions")`.
The default for this is 200. You can change manually to say 8 by using:

```python
spark.conf.set("spark.sql.shuffle.partitions", "8")`
```
