---
layout: single
title: "(TIL) Spark: Select all and add a new column"
date:
modified:
---

Here's how to select all columns and add a new column.

```pyspark
df.select(df['*'], lower(df['text']).alias('lowerText'))
```
