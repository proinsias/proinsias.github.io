---
layout: single
title: "Spark: Select all and add a new column"
date: 2017-04-07 13:57
last_modified_at: 2017-04-07 13:57
categories: til
tags:
  - spark
  - til
---

Here's how to select all columns and add a new column.

```pyspark
df.select(df['*'], lower(df['text']).alias('lowerText'))
```
